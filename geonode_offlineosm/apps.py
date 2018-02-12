from django.apps import AppConfig
from django.core.management import call_command
from django.db.models.signals import post_migrate
from .app_settings import settings


class MyAppConfig(AppConfig):
    name = 'geonode_offlineosm'
    verbose_name = "Offline OSM"
