import os
from django.conf.urls.defaults import *
from django.conf import settings
from models import Encuesta

urlpatterns = patterns('encuesta.views',
    (r'^index/$', 'index'),
   
)
