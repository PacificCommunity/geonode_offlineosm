from django.apps import AppConfig
from django.core.management import call_command
from django.db.models.signals import post_migrate
from .app_settings import settings


def updateofflineosm_callback(sender, **kwargs):
    call_command("updateofflineosm", "--no_overwrite", "--no_fail")

class MyAppConfig(AppConfig):
    name = 'geonode_offlineosm'
    verbose_name = "Offline OSM"
    def ready(self):        
        # Import our custom settings

        if settings.OFFLINE_OSM_UPDATE_AFTER_MIGRATE:
            post_migrate.connect(updateofflineosm_callback, sender=self)
