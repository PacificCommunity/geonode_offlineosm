# Offline OSM for Geonode

**THIS IS CURRENT WORK IN PROGRESS, DO NOT USE !!!**

Tested with Geonode 2.6 / Django 1.8 / Python 2 / Postgres 9.6

This is an app to create offline OSM layers for geonode.

## Quickstart

1. Pip install the library

`pip install git+https://github.com/PacificCommunity/geonode_offlineosm@master`

2. Add "geonode_offlineosm" to your INSTALLED_APPS setting like this::
```python
    INSTALLED_APPS = [
        ...
        'geonode_offlineosm',
        ...
    ]
```

3. Run `python manage.py migrate` to pull the data from OpenStreetMaps.

## Settings

```python
# Extents of OSM data to be downloaded
OFFLINE_OSM_BBOX = [
    [176.8, -18.6], # BOTTOMLEFT
    [179.3, -17.1], # TOPRIGHT
]

# Whether Offline OSM should be made available as base layers
OFFLINE_OSM_AS_BASE_LAYER = True

# Update period for the Celery worker (in minutes)
OFFLINE_OSM_UPDATE_INTERVAL = 60*24 # 1 day

# Name of the postgres schema where the OSM data is stored
OFFLINE_OSM_SCHEMA_NAME = "offline_osm"

# Name of the folder where OSM data is downloaded
OFFLINE_OSM_DATA_DIR = "/temp/offline_osm"

# Name of the geoserver datastore name for PostGIS (will be created if it doesn't exist)
OFFLINE_OSM_DATASTORE_NAME = "offline_osm"
```

## Management command

To update the data, run the following management command. Be aware that will download a lot of data and require some heavy queries.  # TODO : describe options

```shell
python manage.py updateofflineosm
```

## Celery tasks

Add this so that Celery runs updateofflineosm on a regular basis

```
CELERY_IMPORTS = CELERY_IMPORTS + ('geonode_offlineosm.tasks',)
CELERY_ALWAYS_EAGER = False # is this needed ?
```
