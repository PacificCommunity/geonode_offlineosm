from django.conf import settings

# This sets defaults settings

if not hasattr(settings, 'OFFLINE_OSM_AS_BASE_LAYER'):
    settings.OFFLINE_OSM_AS_BASE_LAYER = True

if not hasattr(settings, 'OFFLINE_OSM_BBX'):
    settings.OFFLINE_OSM_BBOX = [
        [176.8, -18.6], # BOTTOMLEFT
        [179.3, -17.1], # TOPRIGHT
    ];

if not hasattr(settings, 'OFFLINE_OSM_UPDATE_INTERVAL'):
    settings.OFFLINE_OSM_UPDATE_INTERVAL = 60*24 # 1 day

if not hasattr(settings, 'OFFLINE_OSM_SCHEMA_NAME'):
    settings.OFFLINE_OSM_SCHEMA_NAME = "offline_osm"

if not hasattr(settings, 'OFFLINE_OSM_DATA_DIR'):
    settings.OFFLINE_OSM_DATA_DIR = "/temp/offline_osm"

if not hasattr(settings, 'OFFLINE_OSM_DATASTORE_NAME'):
    # TODO : see if can't use settings.OGC_SERVER['default']['DATASTORE']
    settings.OFFLINE_OSM_DATASTORE_NAME = "offline_osm"

if settings.OFFLINE_OSM_AS_BASE_LAYER:
    settings.MAP_BASELAYERS.append(
        {
            "source": {"ptype": "gxp_olsource"},
            "type":"OpenLayers.Layer.WMS",
            "name": "offline_osm",
            "group":"background",
            "visibility": False,
            "fixed": True,
            "args":[
                "offline_osm",
                settings.GEOSERVER_PUBLIC_LOCATION+"wms",
                {
                    "layers":["geonode:offline_osm"],
                    "format":"image/png",
                    "bgcolor":"0xb5d0d0",
                    "tiled": True
                }
            ]
        }
    )