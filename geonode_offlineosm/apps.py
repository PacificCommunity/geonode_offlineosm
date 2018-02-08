from django.apps import AppConfig
from django.core.management import call_command
from django.db.models.signals import post_migrate
from .app_settings import settings


def updateofflineosm_callback(sender, **kwargs):
    print("Calling post-migrate management command : updateofflineosm --no_overwrite --no_fail")
    call_command("updateofflineosm", "--no_overwrite", "--no_fail")

print('DEBUG - APPS.PY')

class MyAppConfig(AppConfig):
    name = 'geonode_offlineosm'
    verbose_name = "Offline OSM"

    print('DEBUG - MyAppConfig')

    def ready(self):
        print('DEBUG - ready')
        # Import our custom settings
        if settings.OFFLINE_OSM_UPDATE_AFTER_MIGRATE:
            print('DEBUG - installing post_migrate')
            post_migrate.connect(updateofflineosm_callback, sender=self)
