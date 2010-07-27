from encuesta.models import *
from django.shortcuts import render_to_response
from django.views.generic.simple import direct_to_template
from django.template import RequestContext

#empieza la parte divertida
def inicio(request):
    return render_to_response("base.html", context_instance=RequestContext(request))
    
#def consulta(request):
#    if request.method = 'POST':
        
