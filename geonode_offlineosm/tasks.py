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

from celery.task import periodic_task
from django.core.management import call_command
import time, random
from cStringIO import StringIO
from datetime import timedelta
from .app_settings import settings


@periodic_task(run_every=timedelta(seconds=30))
def test_task():
    if random.choice([True,False]):
        print('Task succeeded !')
    else:
        raise Exception("simulated failure")

@periodic_task(run_every=timedelta(minutes=settings.OFFLINE_OSM_UPDATE_INTERVAL))
def update_offline_osm():
    my_stdout = StringIO()
    call_command("updateofflineosm", stdout=my_stdout)
    return my_stdout.read()
