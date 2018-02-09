from django.apps import AppConfig
from django.core.management import call_command
from django.db.models.signals import post_migrate
from .app_settings import settings


def updateofflineosm_nofail_callback(sender, **kwargs):
    print("Calling post-migrate management command : updateofflineosm --no_overwrite --no_fail")
    call_command("updateofflineosm", "--no_overwrite", "--no_fail")
def updateofflineosm_callback(sender, **kwargs):
    print("Calling post-migrate management command : updateofflineosm --no_overwrite")
    call_command("updateofflineosm", "--no_overwrite")

class MyAppConfig(AppConfig):
    name = 'geonode_offlineosm'
    verbose_name = "Offline OSM"
    def ready(self):        
        # Import our custom settings
        if settings.OFFLINE_OSM_UPDATE_AFTER_MIGRATE:            
            if settings.OFFLINE_OSM_UPDATE_AFTER_MIGRATE_EXCEPTION_ON_FAIL:
                post_migrate.connect(updateofflineosm_callback, sender=self)
            else:
                post_migrate.connect(updateofflineosm_nofail_callback, sender=self)
