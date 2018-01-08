# Offline OSM for Geonode

**THIS IS CURRENT WORK IN PROGRESS, DO NOT USE !!!**

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
# (when true, data will be downloaded after migrations (once))
OFFLINE_OSM_AS_BASE_LAYER = True
```

## Management command

To update the data, run the following management command. Be aware that will download a lot of data and require some heavy queries.  # TODO : describe options

```shell
python manage.py updateofflineosm
```
