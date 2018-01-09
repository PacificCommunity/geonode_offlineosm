# -*- coding: utf-8 -*-
#########################################################################
#
# Copyright (C) 2016 OSGeo
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
#########################################################################

from celery.schedules import crontab
from celery.task import task, periodic_task

from celery.utils.log import get_task_logger
from celery.signals import celeryd_init
from django.core.management import call_command
import time

from datetime import timedelta

from .app_settings import settings

from geonode.celery_app import app

logger = get_task_logger(__name__)
        

@periodic_task(run_every=timedelta(minutes=settings.OFFLINE_OSM_UPDATE_INTERVAL))
def update_offline_osm():
    logger.info("Start task")
    call_command("updateofflineosm")
    logger.info("Task finished")
