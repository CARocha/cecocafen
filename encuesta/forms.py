# -*- coding: UTF-8 -*-
from django import forms
from django.forms import ModelForm
from encuesta.models import *
from lugar.models import *

ANOS_CHOICES = ((2010,'2010'),(2011,'2011'),(2012,'2012'),(2013,'2013'),(2014,'2014'))
CHOICE_OPCION_F = (('','----'),(1,'Si'),(2,'No'))
CHOICE_DESDE_F = (('','----'),(1,"Menos de 5 año"),(2,"Mas de 5 años"))
CHOICE_DUENO_F = (('','----'),(1,"Hombre"),(2,"Mujer"),(3,"Mancomunado"),(4,"Parientes"),(5,"Colectivo"),(6,"No hay"))

def fecha_choice():
    years = []
    for en in Encuesta.objects.order_by('year').values_list('year', flat=True):
        years.append((en,en))
    return list(set(years))

class CecocafenForm(forms.Form):
    fecha = forms.MultipleChoiceField(choices=fecha_choice())
    departamento = forms.ModelChoiceField(queryset=Departamento.objects.all(), 
            required=False, empty_label="Todos los Departamentos")
    municipio = forms.CharField(widget = forms.Select, required=False)
    comunidad = forms.CharField(widget = forms.Select, required=False)
    cooperativa = forms.ModelChoiceField(required = False, 
                                         queryset=Cooperativa.objects.all())
    socio = forms.ChoiceField(choices = CHOICE_OPCION_F , required=False)
    desde = forms.ChoiceField(choices = CHOICE_DESDE_F , required=False)
    dueno = forms.ChoiceField(label = 'Dueño', choices = CHOICE_DUENO_F , required=False)
    tecnologia = forms.ModelChoiceField(queryset=Tecnologia.objects.all(),
                                        required = False)
    certificacion = forms.ModelChoiceField(queryset=Certificacion.objects.all(),
                                           required = False)
