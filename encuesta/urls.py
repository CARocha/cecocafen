from django.conf.urls.defaults import *
from django.conf import settings

urlpatterns = patterns('encuesta.views',
    (r'^index/$', 'index'),
   
)
