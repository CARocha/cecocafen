from encuesta.models import *
from django.shortcuts import render_to_response
from django.views.generic.simple import direct_to_template

#empieza la parte divertida
def inicio(request):
    return render_to_response("base.html")
    
#def consulta(request):
#    if request.method = 'POST':
        
