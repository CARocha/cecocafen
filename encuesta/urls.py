import os
from django.conf.urls.defaults import *
from django.conf import settings
from models import Encuesta

urlpatterns = patterns('encuesta.views',
    (r'^index/$', 'inicio'),
    (r'^index/ajax/municipio/(?P<departamento>\d+)/$', 'get_municipios'),
    (r'^index/ajax/comunidad/(?P<municipio>\d+)/$', 'get_comunidad'),
    (r'^grafo/vulnerabilidad/(?P<tipo>\w+)/$', 'grafos_vulnerabilidad'),
    (r'^grafo/migrar/(?P<tipo>\w+)/$', 'grafo_migracion'),
    (r'^grafo/fincas/(?P<tipo>\w+)/$', 'fincas_grafos'),
    (r'^grafo/bienes/(?P<tipo>\w+)/$', 'grafos_bienes'),
    (r'^grafo/organizacion/(?P<tipo>\w+)/$', 'organizacion_grafos'),
    (r'^grafo/ingreso/(?P<tipo>\w+)/$', 'grafos_ingreso'),
    (r'^grafo/ahorro-credito/(?P<tipo>\w+)/$', 'ahorro_credito_grafos'),
    (r'^grafo/agua-disponibilidad/(?P<tipo>\d+)/$', 'agua_grafos_disponibilidad'),
    (r'^grafo/agua-calidad/(?P<tipo>\d+)/$', 'agua_grafos_calidad'),
    (r'^grafo/salud/(?P<tipo>\w+)/$', 'salud_grafos'), 
    (r'^grafo/cancer/(?P<id>\d+)/$', 'cancer_grafos'),
    (r'^grafo/mental/(?P<id>\d+)/$', 'mental_grafos'),
    (r'^(?P<vista>\w+)/$', '_get_view'),
   
)
