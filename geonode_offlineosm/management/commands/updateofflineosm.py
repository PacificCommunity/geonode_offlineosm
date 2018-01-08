from django.core.management.base import BaseCommand
import urllib
import os
import base64
import zipfile
import sys
import ogr, osr
import dj_database_url
from django.db import connection
from django.conf import settings
from ...models import Log
from django.core.management import call_command
import requests
from geoserver.catalog import Catalog
from geonode.layers.models import Layer
from datetime import datetime
import traceback

class Command(BaseCommand):
    """
    This command creates or updates local offline OSM data.
    """

    help = 'Updates the local offline OSM data. This will download around 1 GB so ensure to have good connection.'

    def __init__(self, *args, **kwargs):

        self.schema_name = settings.OFFLINE_OSM_SCHEMA_NAME
        self.download_dir = settings.OFFLINE_OSM_DATA_DIR
        self.datastore_name = settings.OFFLINE_OSM_DATASTORE_NAME

        # We create the downloaddir
        if not os.path.isdir(self.download_dir):
            os.mkdir(self.download_dir)

        # This will keep track of timestamp of download
        self.import_timestamp = None
        self.options = None

        self.cursor = connection.cursor()
        
        super(Command, self).__init__(*args, **kwargs)

    def add_arguments(self, parser):
        parser.add_argument('--source', default='overpass', choices=['overpass','pbf_and_shp'], help='Whether to get the data from an overpass query or from pbf/shp archives. Overpass should consume much less data as only required extent will be downloaded, but could fail for big extents..')
        parser.add_argument('--no_overwrite', default=False, action='store_true', help='If this flag in enabled, downloads and importation steps will only be done if no data already exists. You can use this during app initialization to make sure data is present without forcing a redownload each time.')
        parser.add_argument('--no_fail', default=False, action='store_true', help='If this flag in enabled, exceptions will be catched and exit code will always be 0')
        
        # TODO : add parameters to load from local data

    def handle(self, *args, **options):

        self.options = options
        
        if options['no_fail']:
            try:
                self._handle()
            except Exception as e:
                print('WARNING : updateofflineosm command failed with --no_fail because of following exception')
                repr(e)
                exit(0)
        else:
            self._handle()

    def _handle(self):

        print('[UpdateOfflineOSM] Command called')

        Log.objects.create( message="Started updateofflineosm from source {}".format(self.options['source']), success=True )
        
        print('[Step 1] Downloading data')
        if self.options['source'] == 'overpass':
            self.download_overpass()
        else:
            self.download_shapefile()
            self.download_osmxml()

        self.import_timestamp = datetime.now() # TODO : set this only if data was really downloaded, as it is used for metadata

        print('[Step 2] Importing data in postgis')
        # if self.options['source'] == 'overpass':
        #     self.import_overpass()
        # else:
        #     self.import_shapefile()
        #     self.import_osmxml()
        self.update_views()

        print('[Step 3] Adding the layers to Geoserver')
        self.add_to_geoserver([
            'offline_osm_lines','offline_osm_multipolygons','offline_osm_points',
            'roads','waterways',
            'buildings','landuse','leisure','natural'])

        # print('[Step 4] Updating Geonode layers')
        # call_command('updatelayers', interactive=True)

        print('[Done !]')

        Log.objects.create( message="Finished updateofflineosm", success=True )
    
    def download_shapefile(self):
        # self._download("http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip")
        self._download("http://data.openstreetmapdata.com/land-polygons-split-3857.zip")
    def import_shapefile(self):
        # self._import('simplified-land-polygons-complete-3857/simplified_land_polygons.shp')
        self._import('land-polygons-split-3857/land_polygons.shp', crop=True)

    def download_osmxml(self):
        self._download("http://download.geofabrik.de/australia-oceania-latest.osm.pbf")
    def import_osmxml(self):
        self._import('australia-oceania-latest.osm.pbf', crop=True)

    def download_overpass(self):
        bbox = settings.OFFLINE_OSM_BBOX
        overpass_endpoint = 'https://overpass.kumi.systems/api/interpreter'
        # overpass_endpoint = 'https://lz4.overpass-api.de/api/interpreter'
        # overpass_q = '( node({y1},{x1},{y2},{x2}); <; ); out meta;'
        overpass_q = '( node({y1},{x1},{y2},{x2}); <; >; ); out meta;' # TODO : test this (does recusre up <; then down >; work ?)
        overpass_q = overpass_q.format(x1=bbox[0][0],y1=bbox[0][1],x2=bbox[1][0],y2=bbox[1][1])
        url = overpass_endpoint+'?'+urllib.urlencode({'data':overpass_q})
        self._download(url, 'overpass_results.osm')
    def import_overpass(self):
        self._import('overpass_results.osm', crop=True)

    def _download(self,url,filename=None):
        print('Downloading '+url)
        
        def urlretrieve_output(a,b,c):
            if c==-1:
                sys.stdout.write("\r{:0.2f} MB (total size unknown)".format(a*b/1000000.0))
            else:
                sys.stdout.write("\r{:0.2f} MB out of {:0.2f} MB ({:0f}%)".format(a*b/1000000.0,c/1000000.0, (a*b)/float(c)*100.0))

        if not filename:
            filename = url.split('/')[-1]
        filepath = os.path.join(self.download_dir,filename)

        print('Downloading...')
        if not os.path.exists(filepath) or not self.options['no_overwrite']:
            print('File does not exist or no_overwrite unset, we download it...')
            urllib.urlretrieve(url, filepath, urlretrieve_output)
        else:
            # TODO : THIS IS ONLY FOR DEV, FILE SHOULD BE REDOWNLOADED BECAUSE IT IS AN UPDATE FUNCTION
            print('File already exists, we skip.')

        print('Unzipping...')
        if filename[-4:] == '.zip':
            if not os.path.isdir(os.path.join(self.download_dir,filename[:-4])) or not self.options['no_overwrite']:
                print('File is zipped or no_overwrite unset, we unzip it...')
                # TODO : REMOVE ZIPS TO SAVE HARD DRIVE SPACE
                zip_ref = zipfile.ZipFile(filepath, 'r')
                zip_ref.extractall(self.download_dir)
                zip_ref.close()
            else:
                # TODO : THIS IS ONLY FOR DEV, FILE SHOULD BE REUNZIPPED BECAUSE IT IS AN UPDATE FUNCTION
                print('File already unzipped, we skip.')
        else:
            print("Not a zip file, we skip.")
    def _import(self, filename, crop=False):
        print('Importing {} to postgresql... This can take some time (over 10 minutes for large layers)'.format(filename))

        self.cursor.execute('CREATE SCHEMA IF NOT EXISTS '+self.schema_name)
        self.cursor.execute('CREATE EXTENSION IF NOT EXISTS postgis')
        self.cursor.execute('CREATE EXTENSION IF NOT EXISTS hstore')
        
        db = settings.DATABASES['default']
        connectionString = "PG:dbname='%s' host='%s' port='%s' user='%s' password='%s'" % (db['NAME'],db['HOST'],db['PORT'],db['USER'],db['PASSWORD'])
        ogrds = ogr.Open(connectionString)

        wgs84 = osr.SpatialReference()
        wgs84.ImportFromEPSG(4326)

        # table_name = filename.split('/')[-1][:-4]
        table_name = 'offline_osm'
        ogr_source = ogr.Open(os.path.join(self.download_dir,filename))

        for ogr_layer in ogr_source:
            print('importing sublayer {}'.format(ogr_layer.GetName()))

            if len(ogr_source)==1:
                full_table_name = table_name
                full_table_name = self.schema_name+'.'+table_name
            else:
                full_table_name = table_name+'_'+ogr_layer.GetName()

            qulfd_table_name = self.schema_name+'.'+full_table_name

            cursor = self.cursor
            sql = 'SELECT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema=%s AND table_name=%s)'
            cursor.execute(sql, [self.schema_name,full_table_name])
            layer_exists = cursor.fetchall()[0][0]       

            if not layer_exists or not self.options['no_overwrite']:
                print('Layer does not exists or no_overwrite unset, we import...')    

                if crop:
                    bbox = settings.OFFLINE_OSM_BBOX
                    wkt_string = 'POLYGON(({x1} {y1},{x2} {y1},{x2} {y2},{x1} {y2},{x1} {y1}))'.format(x1=bbox[0][0],y1=bbox[0][1],x2=bbox[1][0],y2=bbox[1][1])
                    bbox_geom = ogr.CreateGeometryFromWkt(wkt_string)

                    ogr_layer_ref = int(ogr_layer.GetSpatialRef().GetAuthorityCode("PROJCS") or 4326)
                    if ogr_layer_ref != 4326:
                        source, target = osr.SpatialReference(), osr.SpatialReference()
                        source.ImportFromEPSG(4326)
                        target.ImportFromEPSG(ogr_layer_ref)
                        transform = osr.CoordinateTransformation(source, target)
                        bbox_geom.Transform(transform)

                    ogr_layer.SetSpatialFilter(bbox_geom)

                    ogr_postgres_layer = ogrds.CopyLayer(ogr_layer,qulfd_table_name,['OGR_INTERLEAVED_READING=YES','OVERWRITE=YES','COLUMN_TYPES=other_tags=hstore'])
                
            else:
                print('Layer already exists, we skip...')   



    def update_views(self):
        self._update_view('roads', 'offline_osm_lines', '"highway" IS NOT NULL')
        self._update_view('waterways', 'offline_osm_lines', '"waterway" IS NOT NULL')
        self._update_view('buildings', 'offline_osm_multipolygons', '"building" IS NOT NULL')
        self._update_view('landuse', 'offline_osm_multipolygons', '"landuse" IS NOT NULL')
        self._update_view('leisure', 'offline_osm_multipolygons', '"leisure" IS NOT NULL')
        self._update_view('natural', 'offline_osm_multipolygons', '"natural" IS NOT NULL')

    def _update_view(self,viewname,sourcename,conditions):
        # TODO : THIS SHOULD USE VIEWS BUT DOESNT SEEM TO BE SUPPORTED BY GEONODE (bug when downloading files)

        viewname = self.schema_name+'.'+viewname
        sourcename = self.schema_name+'.'+sourcename

        # Delte view if exists
        roads_drop = 'DROP TABLE IF EXISTS {viewname}'
        self.cursor.execute(roads_drop.format(viewname=viewname))

        # Get the hstore keys list to select as columns
        roads_hstore_keys = 'SELECT DISTINCT lower(key) FROM {sourcename}, skeys(other_tags) key WHERE {conditions} ORDER BY lower(key)'
        self.cursor.execute(roads_hstore_keys.format(sourcename=sourcename, conditions=conditions))

        # Create the view
        select_other_tags = ','.join(["other_tags->'{t}' AS \"oth_{t}\"".format(t=r[0]) for r in self.cursor.fetchall()])
        roads_sql = """CREATE TABLE {viewname} AS
        SELECT *, {othertags} FROM {sourcename} WHERE {conditions}"""

        # Create the view
        self.cursor.execute(roads_sql.format(viewname=viewname, sourcename=sourcename, conditions=conditions, othertags=select_other_tags))
        # Register the view as geometric
        roads_reg = """SELECT Populate_Geometry_Columns('{viewname}'::regclass);"""        
        self.cursor.execute(roads_reg.format(viewname=viewname))

        

    def add_to_geoserver(self, layernames):
        # Inspired (copied :) ) from https://groups.google.com/forum/#!msg/geonode-users/R-u57r8aECw/AuEpydZayfIJ # TODO : check license
        
        Log.objects.create( message="Started createbaselayers", success=True )

        # We connect to the catalog
        gsUrl = settings.OGC_SERVER['default']['LOCATION'] + "rest"
        gsUser = settings.OGC_SERVER['default']['USER']
        gsPassword = settings.OGC_SERVER['default']['PASSWORD']
        cat = Catalog(gsUrl, gsUser, gsPassword)   
        if cat is None:
            raise Exception('unable to instantiate geoserver catalog')

        # We get the workspace
        ws = cat.get_workspace(settings.DEFAULT_WORKSPACE)
        if ws is None:
            raise Exception('workspace %s not found in geoserver'%settings.DEFAULT_WORKSPACE)

        # We get or create the datastore
        store = cat.get_store(self.datastore_name, ws)
        if store is None:
            store = cat.create_datastore(self.datastore_name, ws)
            store.connection_parameters.update(host="postgres",port="5432",database="postgres",user="postgres",passwd="postgres",schema='offline_osm',dbtype="postgis")
            cat.save(store)
        if store is None:
            raise Exception('datastore %s not found in geoserver'%self.datastore_name)

        # We get or create each layer then register it into geonode
        for layername in layernames:
            print('adding {} to geoserver'.format(layername))
            ft = cat.publish_featuretype(layername, store, 'EPSG:4326', srs='EPSG:4326')
            if ft is None:
                raise Exception('unable to publish layer %s'%layername)
            ft.title = 'OpenStreetMap Offline - '+layername.split('_')[-1]
            ft.abstract = 'This is an automated extract of the OpenStreetMap database. It is available offline. It is intended to be used as a background layer, but the data can also server analysis purposes.'
            cat.save(ft)

            print('adding the style for {}'.format(layername))
            # We get or create the workspace
            style_path = os.path.join(os.path.dirname(__file__),'..','..','styles',layername+'.sld')
            if not os.path.exists(style_path):
                print('The file {} does not exist. No style will be applied for {}.'.format(style_path, layername))
            else:
                cat.create_style(layername+'_style', open(style_path,'r').read(), overwrite=True, workspace=settings.DEFAULT_WORKSPACE, raw=True)
                
                style = cat.get_style(layername+'_style', ws)
                if style is None:
                    raise Exception('style not found (%s)'%(layername+'_style'))

                publishing = cat.get_layer(layername)
                if publishing is None:
                    raise Exception('layer not found (%s)'%layerName)
                    
                publishing.default_style = style
                cat.save(publishing)
                
            print('registering {} into geonode'.format(layername))        
            resource = cat.get_resource(layername, store, ws)
            if resource is None:
                raise Exception('resource not found (%s)'%layername)
        
            layer, created = Layer.objects.get_or_create(name=layername)
            layer.workspace = ws.name
            layer.store = store.name
            layer.storeType = store.resource_type
            layer.typename = "%s:%s" % (ws.name.encode('utf-8'), resource.name.encode('utf-8'))
            layer.title = resource.title
            layer.abstract = resource.abstract
            layer.temporal_extent_start = self.import_timestamp
            layer.temporal_extent_end = self.import_timestamp
            layer.save()        
            if created:
                layer.set_default_permissions()

        # We get or create the laygroup
        print('adding layergroup to geoserver')
        layername = 'offline_osm'
        layergroup = cat.get_layergroup(layername, workspace=settings.DEFAULT_WORKSPACE)
        if layergroup is None:
            layergroup = cat.create_layergroup(layername, layers=layernames, workspace=settings.DEFAULT_WORKSPACE)
            if layergroup is None:
                raise Exception('unable to publish layer %s'%layername)
        layergroup.title = 'OpenStreetMap Offline'
        layergroup.abstract = 'This is an automated extract of the OpenStreetMap database. It is available offline. It is intended to be used as a background layer, but the data can also server analysis purposes.'
        cat.save(layergroup)


        # TODO : can we add layergroups to Geonode ?
        print("laygroup won't be added to geonode (not supported yet)")
        # resource = layergroup

        # print('registering {} into geonode'.format(layername))          
        # resource = cat.get_resource(layername, store, ws)
        # if resource is None:
        #     raise Exception('resource not found (%s)'%layername)
    
        # layer, created = Layer.objects.get_or_create(name=layername)
        # layer.workspace = ws.name
        # layer.store = store.name
        # layer.storeType = store.resource_type
        # layer.typename = "%s:%s" % (ws.name.encode('utf-8'), resource.name.encode('utf-8'))
        # layer.title = resource.title
        # layer.abstract = resource.abstract
        # layer.temporal_extent_start = self.import_timestamp
        # layer.temporal_extent_end = self.import_timestamp
        # layer.save()        
        # if created:
        #     layer.set_default_permissions()

