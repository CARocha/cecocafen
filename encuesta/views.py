# -*- coding: UTF-8 -*-
from django.http import Http404, HttpResponse
from django.template.defaultfilters import slugify
from django.template import RequestContext
from django.shortcuts import render_to_response, get_object_or_404, get_list_or_404
from django.views.generic.simple import direct_to_template
from django.utils import simplejson
from django.db.models import Sum, Count, Avg
from django.core.exceptions import ViewDoesNotExist

from encuesta.models import *
from decorators import session_required
from datetime import date
from forms import *
from lugar.models import *
from decimal import Decimal
from utils import grafos
from utils import *

def _get_view(request, vista):
    if vista in VALID_VIEWS:
        return VALID_VIEWS[vista](request)
    else:
        raise ViewDoesNotExist("Tried %s in module %s Error: View not defined in VALID_VIEWS." % (vista, 'encuesta.views'))
        
def _queryset_filtrado(request):
    '''metodo para obtener el queryset de encuesta 
    segun los filtros del formulario que son pasados
    por la variable de sesion'''
    anio = int(request.session['fecha'])
    #diccionario de parametros del queryset
    params = {}
    if 'fecha' in request.session:
        params['fecha__year'] = anio

        if 'departamento' in request.session:
            #incluye municipio y comunidad
            if request.session['municipio']:
                if 'comunidad' in request.session:
                    params['datos__comunidad'] = request.session['comunidad']
                else:
                    params['datos__comunidad__municipio'] = request.session['municipio']
            else:
                params['datos__comunidad__municipio__departamento'] = request.session['departamento']

        if 'cooperativa' in request.session:
            params['datos__cooperativa'] = request.session['cooperativa']

        if 'socio' in request.session:
            params['organizacion__socio'] = request.session['socio']
            
        if 'desde' in request.session:
            params['organizacion__desde_socio'] = request.session['desde']

        if 'duenio' in  request.session:
            params['tenencia__dueno'] = request.session['duenio']
        if 'tecnologia' in request.session:
            params['datos__tecnologia'] = request.session['tecnologia']
            
        if 'cetificacion' in request.session:
            params['datos__certificacion'] = request.session['cetificacion']
        
        unvalid_keys = []
        for key in params:
            if not params[key]:
                unvalid_keys.append(key)
        
        for key in unvalid_keys:
            del params[key]

        return Encuesta.objects.filter(**params)

#empieza la parte divertida
def index(request):
    encuestas = Encuesta.objects.all()
    conteo_total = encuestas.all().count()
    conteo_hombre = DatosGenerales.objects.filter(sexo=1).count()
    conteo_mujer = DatosGenerales.objects.filter(sexo=2).count()
    #tipo de tecnologia
   
    #personas es la suma de personas en la familia/encuesta
    personas = encuestas.aggregate(num=Sum('migracion__n_total'))['num'] / conteo_total
    manzanas = encuestas.aggregate(num=Sum('tierra__areas'))['num'] / conteo_total
    dicc = {'conteo_total': conteo_total, 
            'conteo_hombre': conteo_hombre, 
            'conteo_mujer': conteo_mujer,
            'personas': personas,
            'manzanas': manzanas,
            'valores': []}

    for beneficio in Beneficios.objects.all():
        conteo = Encuesta.objects.filter(organizacion__beneficio = beneficio).aggregate(num=Count('organizacion__beneficio'))
        dicc['valores'].append([beneficio.nombre, conteo['num']])

    return direct_to_template(request, 'index.html', dicc)

def inicio(request): 
    if request.method == 'POST':
        mensaje = None
        form = CecocafenForm(request.POST)
        if form.is_valid():
            try:
                cooperativa = Datosgenerales.objects.get(id=form.cleaned_data['cooperativa'])
            except:
                cooperativa = None
            request.session['cooperativa'] = cooperativa
            request.session['fecha'] = form.cleaned_data['fecha']
            request.session['departamento'] = form.cleaned_data['departamento']
            try:
                municipio = Municipio.objects.get(id=form.cleaned_data['municipio']) 
            except:
                municipio = None
            try:
                comunidad = Comunidad.objects.get(id=form.cleaned_data['comunidad'])
                
            except:
                comunidad = None

            request.session['municipio'] = municipio 
            request.session['comunidad'] = comunidad
            if form.cleaned_data['socio'] == 'nada':
                request.session['socio'] = None
            else:
                request.session['socio'] = form.cleaned_data['socio']
            if form.cleaned_data['desde'] == 'nada':
                request.session['desde'] = None
            else:
                request.session['desde'] = form.cleaned_data['desde']
            if form.cleaned_data['dueno'] == 'nada':
                request.session['duenio'] = None
            else:
                request.session['duenio'] = form.cleaned_data['dueno']   
            mensaje = "Todas las variables estan correctamente :)"
            request.session['activo'] = True
            centinela = 1 #Variable para aparecer el menu de indicadores a lado del formulario
    else:
        form = CecocafenForm()
        mensaje = ":P"
        centinela = 0
    dict = {'form': form,'user': request.user,'centinela':centinela}
    return render_to_response('encuesta/inicio.html', dict,
                              context_instance=RequestContext(request))
                              

#--------- indicador familia migracion -----------------
@session_required
def familia(request):
    '''Tabla de familias(migracion)'''
    #*******Variables globales**********
    a = _queryset_filtrado(request)
    num_familias = a.count()
    #**********************************
    tabla = {}
    totales = {}
    totales['numero'] = a.aggregate(numero=Count('migracion__n_total'))['numero'] 
    totales['porcentaje_num'] = 100
    totales['viven'] = a.aggregate(viven=Sum('migracion__viven_casa'))['viven']
    totales['porcentaje_viven'] = 100
    totales['fuera'] = a.aggregate(fuera=Sum('migracion__viven_fuera'))['fuera']
    totales['porcentaje_fuera'] = 100


    for opcion in CHOICE_MIGRACION:
        key = (opcion[1]).replace('-','_')
        query = a.filter(migracion__edades = opcion[0])
        numero = query.count()
        porcentaje_num = saca_porcentajes(numero, totales['numero'])
        totalv = query.aggregate(totalv=Sum('migracion__n_total'))['totalv']
        vive = totalv / num_familias if totalv != None and num_familias != None else 0
        vive_casa = query.aggregate(vive_casa = Sum('migracion__viven_casa'))['vive_casa']
        porcentaje_viven = saca_porcentajes(vive_casa, totalv)
        comunidad = query.aggregate(comunidad = Sum('migracion__viven_comu'))['comunidad']
        porcentaje_comu = saca_porcentajes(comunidad, totalv)
        fuera = query.aggregate(fuera = Sum('migracion__viven_fuera'))['fuera']
        porcentaje_fuera = saca_porcentajes(fuera, totalv)
        tabla[key] = {'numero': numero, 'porcentaje_num': porcentaje_num,
                      'totalv':totalv,'vive': vive, 'porcentaje_viven': porcentaje_viven,
                      'fuera':fuera,'porcentaje_comu':porcentaje_comu,'porcentaje_fuera':porcentaje_fuera}
    
    return render_to_response('encuesta/familia.html',locals(),
                              context_instance=RequestContext(request))
#------------------------graficos para la razon de migrar--------------------
@session_required
def grafo_migracion(request, tipo):
    '''
        graficos de los tipos de migraciones en las familias
    '''
    consulta = _queryset_filtrado(request)
    data = [] 
    legends = []
    
    if tipo == 'razones':
        for opcion in RazonesMigracion.objects.all():
            data.append(consulta.filter(migracion__razones=opcion).count())
            legends.append(opcion.razones)
        return grafos.make_graph(data, legends, 
                'Razones de las Migraciones', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'cocina':
        for opcion in Combustible.objects.all():
            data.append(consulta.filter(conservacion__cocinar=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
                'Que utiliza para cocinar', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'actividad':
        for opcion in Conservacion.objects.all():
            data.append(consulta.filter(conservacion__actividad=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Hacen Actividades para conservacion?', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'conservacion':
        for opcion in ActividadConservacion.objects.all():
            data.append(consulta.filter(consevacion__cuales=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
                                 'Actividades para conservacion', return_json = True,
                                 type = grafos.PIE_CHART_3D)
    elif tipo == 'tipoproblema':
        for opcion in TipoProblema.objects.all():
            data.append(consulta.filter(problema__problema=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
                    'Tipos de Problemas', return_json = True,
                    type = grafos.PIE_CHART_3D)
    elif tipo == 'tiposolucion':
        for opcion in Solucion.objects.all():
            data.append(consulta.filter(problema__solucion=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
                'Tipos de soluciones', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'otrosingresos':
        for opcion in Fuentes.objects.all():
            data.append(consulta.filter(otrosingresos__fuente=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
                'Fuentes de Otros Salarios', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'aportar':
        for opcion in CHOICE_APORTE:
            data.append(consulta.filter(aporte__persona=opcion[0]).count())
            legends.append(opcion[1])
            message = "Aporte en la finca"
        return grafos.make_graph(data, legends, message, multiline = True,
                return_json = True, type = grafos.GROUPED_BAR_CHART_V)
    else:
        raise Http404

@session_required
def organizacion(request):
    '''tabla de organizacion'''
    tabla_socio = {}
    tabla_beneficio = {'hombres': [], 'mujeres': []}
    consulta = _queryset_filtrado(request)

    #fila si % no % <5 % >5 %
    hombres = consulta.filter(datos__sexo = 1).aggregate(socio = Sum('organizacion__socio'),
                                                         conyugue = Sum('organizacion__socio_cooperativa'),
                                                         hijo = Sum('organizacion__hijos_socios'),
                                                         num = Count('organizacion__socio'),
                                                         miembro = Sum('organizacion__miembro'),
                                                         comision = Sum('organizacion__miembro_trabajo'),
                                                         capacitacion = Sum('organizacion__cargo'))

    hombres_tiempo = consulta.filter(datos__sexo=1, 
                                      organizacion__desde_socio__isnull = False,
                                      organizacion__desde_socio_coop__isnull = False,
                                      organizacion__desde_hijo__isnull = False).aggregate(
                                                         tiempo_hijo = Sum('organizacion__desde_hijo'),

                                                         tiempo_conyugue = Sum('organizacion__desde_socio_coop'),
                                                         num = Count('organizacion__socio'),
                                                         tiempo_socio = Sum('organizacion__desde_socio'))


    mujeres = consulta.filter(datos__sexo = 2).aggregate(socio = Sum('organizacion__socio'),
                                                         conyugue = Sum('organizacion__socio_cooperativa'),
                                                         hijo = Sum('organizacion__hijos_socios'),
                                                         num = Count('organizacion__socio'),
                                                         miembro = Sum('organizacion__miembro'),
                                                         comision = Sum('organizacion__miembro_trabajo'),
                                                         capacitacion = Sum('organizacion__cargo'))

    mujeres_tiempo = consulta.filter(datos__sexo=2, 
                                      organizacion__desde_socio__isnull = False,
                                      organizacion__desde_socio_coop__isnull = False,
                                      organizacion__desde_hijo__isnull = False).aggregate(
                                                         tiempo_hijo = Sum('organizacion__desde_hijo'),
                                                         num = Count('organizacion__socio'),
                                                         tiempo_conyugue = Sum('organizacion__desde_socio_coop'),
                                                         tiempo_socio = Sum('organizacion__desde_socio'))

    
    lista_llaves = [('socio', 'tiempo_socio'), 
                    ('conyugue', 'tiempo_conyugue'), 
                    ('hijo', 'tiempo_hijo')]

    for valor, tiempo in lista_llaves: 
        tabla_socio['hombres_' + valor] = [calcular_positivos(hombres[valor], hombres['num'], False),
                                          calcular_positivos(hombres[valor], hombres['num'], True),
                                          calcular_negativos(hombres[valor], hombres['num'], False),
                                          calcular_negativos(hombres[valor], hombres['num'], True),
                                          calcular_positivos(hombres_tiempo[tiempo], hombres_tiempo['num'], False),
                                          calcular_positivos(hombres_tiempo[tiempo], hombres_tiempo['num'], True),
                                          calcular_negativos(hombres_tiempo[tiempo], hombres_tiempo['num'], False),
                                          calcular_negativos(hombres_tiempo[tiempo], hombres_tiempo['num'], True)]

        tabla_socio['mujeres_' + valor] = [calcular_positivos(mujeres[valor], mujeres['num'], False),
                                          calcular_positivos(mujeres[valor], mujeres['num'], True),
                                          calcular_negativos(mujeres[valor], mujeres['num'], False),
                                          calcular_negativos(mujeres[valor], mujeres['num'], True),
                                          calcular_positivos(mujeres_tiempo[tiempo], mujeres_tiempo['num'], False),
                                          calcular_positivos(mujeres_tiempo[tiempo], mujeres_tiempo['num'], True),
                                          calcular_negativos(mujeres_tiempo[tiempo], mujeres_tiempo['num'], False),
                                          calcular_negativos(mujeres_tiempo[tiempo], mujeres_tiempo['num'], True)]

    for llave in ('miembro', 'comision', 'capacitacion'):
        for sexo in ('hombres', 'mujeres'):
            tabla_beneficio[sexo].append(calcular_positivos(hombres[llave], hombres['num'], False))
            tabla_beneficio[sexo].append(calcular_positivos(hombres[llave], hombres['num']))
            tabla_beneficio[sexo].append(calcular_negativos(hombres[llave], hombres['num'], False))
            tabla_beneficio[sexo].append(calcular_negativos(hombres[llave], hombres['num']))
    
    return render_to_response('encuesta/organizacion.html', 
                              {'tabla_socio': tabla_socio, 'num_familias': consulta.count(),
                               'tabla_beneficio': tabla_beneficio},
                              context_instance=RequestContext(request))

@session_required
def organizacion_grafos(request, tipo):
    '''grafos de organizacion
       tipo puede ser: beneficio, miembro'''
    consulta = _queryset_filtrado(request)
    
    data = [] 
    legends = []
    if tipo == 'beneficio':
        for opcion in Beneficios.objects.all():
            data.append(consulta.filter(organizacion__beneficio=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends, 
                'Beneficios de ser socios/socias', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'miembro':
        for opcion in PorqueMiembro.objects.all():
            data.append(consulta.filter(organizacion__beneficio=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends, 
                'Por que soy miembro de la cooperativa', return_json = True,
                type = grafos.PIE_CHART_3D)
    else:
        raise Http404
                         
@session_required
def fincas(request):
    '''Tabla de fincas'''

    tabla = {}
    totales = {}
    consulta = _queryset_filtrado(request)

    totales['numero'] = consulta.count() 
    totales['porcentaje_num'] = 100
    totales['manzanas'] = consulta.aggregate(area=Sum('tierra__areas'))['area']
    totales['porcentaje_mz'] = 100

    for uso in UsoTierra.objects.exclude(id=1):
        key = slugify(uso.nombre).replace('-', '_')
        query = consulta.filter(tierra__uso_tierra = uso)
        numero = query.count()
        porcentaje_num = saca_porcentajes(numero, totales['numero'])
        manzanas = query.aggregate(area = Sum('tierra__areas'))['area']
        porcentaje_mz = saca_porcentajes(manzanas, totales['manzanas'])
        tabla[key] = {'numero': numero, 'porcentaje_num': porcentaje_num,
                      'manzanas': manzanas, 'porcentaje_mz': porcentaje_mz}

    
    return render_to_response('encuesta/fincas.html', 
                              {'tabla':tabla, 'totales': totales},
                              context_instance=RequestContext(request))

@session_required
def fincas_grafos(request, tipo):
    '''Tipo puede ser: tenencia, solares, propietario'''
    consulta = _queryset_filtrado(request)
    #CHOICE_TENENCIA, CHOICE_DUENO
    data = [] 
    legends = []
    if tipo == 'tenencia':
        for opcion in CHOICE_TENENCIA:
            data.append(consulta.filter(tenencia__parcela=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends, 
                'Tenencia de las parcelas', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'solares':
        for opcion in CHOICE_TENENCIA:
            data.append(consulta.filter(tenencia__solar=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends, 
                'Tenencia de los solares', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'propietario':
        for opcion in CHOICE_DUENO:
            data.append(consulta.filter(tenencia__dueno=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends, 
                'Dueño de propiedad', return_json = True,
                type = grafos.PIE_CHART_3D)
    else:
        raise Http404

@session_required
def arboles(request):
    '''Tabla de arboles'''
    #******Variables***************
    a = _queryset_filtrado(request)
    num_familias = a.count()
    #******************************
    
    #********Existencia de arboles sumatorias*****************
    maderable = a.aggregate(Sum('existenciarboles__cant_maderable'))['existenciarboles__cant_maderable__sum']
    forrajero = a.aggregate(Sum('existenciarboles__cant_forrajero'))['existenciarboles__cant_forrajero__sum']
    energetico = a.aggregate(Sum('existenciarboles__cant_energetico'))['existenciarboles__cant_energetico__sum']
    frutal = a.aggregate(Sum('existenciarboles__cant_frutal'))['existenciarboles__cant_frutal__sum']
    #*********************************************
    
    #*******promedios de arboles por familia*********
    pro_maderable = maderable / num_familias if maderable != None else 0
    pro_forrajero = forrajero / num_familias if forrajero != None else 0
    pro_energetico = energetico / num_familias if energetico != None else 0
    pro_frutal = frutal / num_familias if frutal != None else 0
    #***********************************************
    
    #******conteo de arboles********************
    maderablect = a.aggregate(Count('existenciarboles__cant_maderable'))['existenciarboles__cant_maderable__count']
    forrajeroct = a.aggregate(Count('existenciarboles__cant_forrajero'))['existenciarboles__cant_forrajero__count']
    energeticoct = a.aggregate(Count('existenciarboles__cant_energetico'))['existenciarboles__cant_energetico__count']
    frutalct = a.aggregate(Count('existenciarboles__cant_frutal'))['existenciarboles__cant_frutal__count']
    
    #**********Reforestacion************************
    tabla = {}
    totales = {}
    totales['numero'] = a.aggregate(numero = Count('reforestacion__reforestacion'))['numero']
    totales['porcentaje_nativos'] = 100
    totales['nativos'] = a.aggregate(nativo=Sum('reforestacion__cantidad_nativos'))['nativo']
#    print totales['nativos']
    totales['nonativos'] = a.aggregate(nonativos=Sum('reforestacion__cantidad_nonativos'))['nonativos']
    totales['porcentaje_nonativos'] = 100
    
    for activ in Actividades.objects.all():
        key = slugify(activ.nombre).replace('-', '_')
        query = a.filter(reforestacion__reforestacion = activ)
        numero = query.count()
        porcentaje_num = saca_porcentajes(numero, num_familias)
        nativos = query.aggregate( cantidad = Sum('reforestacion__cantidad_nativos'))['cantidad']
        nonativos = query.aggregate( cantidadno = Sum('reforestacion__cantidad_nonativos'))['cantidadno']
        totalnn = nativos + nonativos if nativos != None and nonativos != None else 0 
        porcentaje_nativos = saca_porcentajes(nativos, totalnn)
        porcentaje_nonativos = saca_porcentajes(nonativos, totalnn)
        tabla[key] = {'numero': numero, 'porcentaje_num':porcentaje_num, 
                      'porcentaje_nativos': porcentaje_nativos,'nativos': nativos,
                      'porcentaje_nonativos': porcentaje_nonativos,'nonativos':nonativos }
        
    
    return  render_to_response('encuesta/arboles.html',
                              {'num_familias':num_familias,'maderable':maderable,
                               'forrajero':forrajero,'energetico':energetico,'frutal':frutal,
                               'pro_maderable':pro_maderable,'pro_forrajero':pro_forrajero,
                               'pro_energetico':pro_energetico,'pro_frutal':pro_frutal,
                               'maderablect':maderablect,'forrajeroct':forrajeroct,
                               'energeticoct':energeticoct,'frutalct':frutalct,
                               'tabla':tabla,'totales':totales},
                                context_instance=RequestContext(request))

@session_required
def arboles_grafos(request, tipo):
    ''' graficos para los distintos tipos de arboles en las fincas
        Maderables, Forrajero, Energetico y Frutal
    '''
    #--- variables ---
    consulta = _queryset_filtrado(request)
    data = [] 
    legends = []
    #-----------------
    if tipo == 'maderable':
        for opcion in Maderable.objects.all():
            data.append(consulta.filter(existenciarboles__maderable=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends, 
                'Tipo Maderable', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'forrajero': 
        for opcion in Forrajero.objects.all():
            data.append(consulta.filter(existenciarboles__forrajero=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends, 
                'Tipo Forrajero', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'energetico':
        for opcion in Energetico.objects.all():
            data.append(consulta.filter(existenciarboles__energetico=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
               'Tipo Energetico', return_json = True,
               type = grafos.PIE_CHART_3D)
    elif tipo == 'frutal':
        for opcion in Frutal.objects.all():
            data.append(consulta.filter(existenciarboles__energetico=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
               'Tipo Frutal', return_json = True,
               type = grafos.PIE_CHART_3D)
    elif tipo == 'nativos':
        nativo = consulta.aggregate(nati=Count('reforestacion__nativos'))['nati']
        nonativo = consulta.aggregate(noti=Count('reforestacion__nonativos'))['noti']
        data = [[nativo], [nonativo]]
        legends = ['Nativos','NoNativos']
        message = "Especie de arboles"
        return grafos.make_graph(data, legends, message, multiline=True,
                                 return_json = True, type=grafos.GROUPED_BAR_CHART_V)
    else:
        raise Http404
    

@session_required
def cultivos(request):
    '''tabla los cultivos y produccion'''
    #******Variables***************
    a = _queryset_filtrado(request)
    num_familias = a.count()
    #******************************
    #**********calculosdelasvariables*****
    tabla = {} 
    for i in Cultivos.objects.all():
        key = slugify(i.nombre).replace('-', '_')
        key2 = slugify(i.unidad).replace('-', '_')
        query = a.filter(cultivosfinca__cultivos = i)
        totales = query.aggregate(total=Sum('cultivosfinca__total'))['total']
        consumo = query.aggregate(consumo=Sum('cultivosfinca__consumo'))['consumo']
        libre = query.aggregate(libre=Sum('cultivosfinca__venta_libre'))['libre']
        organizada =query.aggregate(organizada=Sum('cultivosfinca__venta_organizada'))['organizada']
        tabla[key] = {'key2':key2,'totales':totales,'consumo':consumo,'libre':libre,'organizada':organizada}
    #*******************************************
    return render_to_response('encuesta/cultivos.html',
                             {'tabla':tabla,'num_familias':num_familias},
                             context_instance=RequestContext(request))        

@session_required
def animales(request):
    '''Los animales y la produccion'''
    consulta = _queryset_filtrado(request)
    tabla = []
    tabla_produccion = []
    totales = {}

    totales['numero'] = consulta.count() 
    totales['porcentaje_num'] = 100
    totales['animales'] = consulta.aggregate(cantidad=Sum('finca__cantidad'))['cantidad']
    totales['porcentaje_animal'] = 100

    for animal in Animales.objects.all():
        query = consulta.filter(finca__animales = animal)
        numero = query.distinct().count()
        try:
            producto = FincaAnimales.objects.filter(animales = animal)[0].produccion
        except:
            #el animal no tiene producto aún
            continue

        porcentaje_num = saca_porcentajes(numero, totales['numero'], False)
        animales = query.aggregate(cantidad = Sum('finca__cantidad'),
                                   venta_libre = Sum('finca__venta_libre'),
                                   venta_organizada = Sum('finca__venta_organizada'),
                                   consumo = Sum('finca__consumo'))
        try:
            animal_familia = animales['cantidad']/float(numero) 
        except:
            animal_familia = 0
        animal_familia = "%.2f" % animal_familia
        tabla.append([animal.nombre, numero, porcentaje_num,
                      animales['cantidad'], animal_familia])
        tabla_produccion.append([animal.nombre, animales['cantidad'], 
                                 producto.nombre, producto.unidad, 
                                 animales['consumo'], 
                                 animales['venta_libre'], animales['venta_organizada']])

    return render_to_response('encuesta/animales.html', 
                              {'tabla':tabla, 'totales': totales, 
                               'num_familias': consulta.count(),
                               'tabla_produccion': tabla_produccion},
                              context_instance=RequestContext(request))

@session_required
def ingresos(request):
    '''tabla de ingresos'''
    #******Variables***************
    a = _queryset_filtrado(request)
    num_familias = a.count()
    #******************************
    #*******calculos de las variables ingreso************
    tabla = {}
    respuesta = {}
    respuesta['bruto']=[]
    respuesta['ingreso']=0
    respuesta['ingreso_total']=0
    respuesta['ingreso_otro']=0
    respuesta['brutoo'] = 0
    respuesta['total_neto'] = 0
    for i in Rubros.objects.all():
        key = slugify(i.nombre).replace('-','_')
        key2 = slugify(i.unidad).replace('-','_')
        query = a.filter(ingreso__rubro = i)
        numero = query.count()
        cantidad = query.aggregate(cantidad=Sum('ingreso__cantidad'))['cantidad']
        precio = query.aggregate(precio=Avg('ingreso__precio'))['precio']
        ingreso = cantidad * precio if cantidad != None and precio != None else 0
        respuesta['ingreso']= query.aggregate(cantidad=Sum('ingreso__cantidad'))['cantidad'] * query.aggregate(precio=Avg('ingreso__precio'))['precio'] if cantidad != None and precio != None else 0
        respuesta['ingreso_total'] +=  respuesta['ingreso']
        
        tabla[key] = {'key2':key2,'numero':numero,'cantidad':cantidad,
                      'precio':precio,'ingreso':ingreso}
        
    #********* calculos de las variables de otros ingresos******
    matriz = {}
    for j in Fuentes.objects.all():
        key = slugify(j.nombre).replace('-','_')
        consulta = a.filter(otrosingresos__fuente = j)
        frecuencia = consulta.count()
        meses = consulta.aggregate(meses=Avg('otrosingresos__meses'))['meses']
        ingreso = consulta.aggregate(ingreso=Avg('otrosingresos__ingreso'))['ingreso']
        ingresototal = consulta.aggregate(meses=Avg('otrosingresos__meses'))['meses'] * consulta.aggregate(ingreso=Avg('otrosingresos__ingreso'))['ingreso'] if meses != None and ingreso != None else 0
        respuesta['ingreso_otro'] +=  ingresototal
        #ingresototal = consulta.aggregate(total=Avg('otrosingresos__ingreso_total'))['total']
        matriz[key] = {'frecuencia':frecuencia,'meses':meses,
                       'ingreso':ingreso,'ingresototal':ingresototal}
                       
    respuesta['brutoo'] = round((respuesta['ingreso_total'] + respuesta['ingreso_otro']) / num_familias,2)
    respuesta['total_neto'] = round(respuesta['brutoo'] * 0.6,2)
        
    return render_to_response('encuesta/ingreso.html',
                              {'tabla':tabla,'num_familias':num_familias,'matriz':matriz,
                              'respuesta':respuesta},
                              context_instance=RequestContext(request))
                              
@session_required
def grafos_ingreso(request, tipo):
    ''' tabla sobre los ingresos familiares
    '''
    #------ varaibles ------
    consulta = _queryset_filtrado(request)
    data = []
    legends = []
    #-----------------------
    if tipo == 'vendio':
        for opcion in CHOICE_VENDIO:
            data.append(consulta.filter(ingreso__quien_vendio=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'A quien venden', return_json=True,
                type=grafos.PIE_CHART_3D)
    elif tipo == 'maneja':
        for opcion in CHOICE_MANEJA:
            data.append(consulta.filter(ingreso__maneja_negocio=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Quien maneja negocio', return_json=True,
                type=grafos.PIE_CHART_3D)
    elif tipo == 'ingreso':
        for opcion in CHOICE_MANEJA:
            data.append(consulta.filter(otrosingresos__tiene_ingreso=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Quien tiene los ingresos', return_json=True,
                type=grafos.PIE_CHART_3D)
    else:
        raise Http404
    pass
            

@session_required
def grafos_bienes(request, tipo):
    '''tabla de bienes'''
    #----- variables ------
    consulta = _queryset_filtrado(request)
    data = [] 
    legends = []
    #----------------------
    if tipo == 'tipocasa':
        for opcion in CHOICE_TIPO_CASA:
            data.append(consulta.filter(tipo__tipo=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends, 
                'Tipos de casas', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'tipopiso': 
        for opcion in Piso.objects.all():
            data.append(consulta.filter(tipo__piso=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends, 
                'Tipo de pisos', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'tipotecho':
        for opcion in Techo.objects.all():
            data.append(consulta.filter(tipo__techo=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends, 
                'Tipos de Techos', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'ambiente':
        for opcion in CHOICE_AMBIENTE:
            data.append(consulta.filter(detalle__ambientes=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
               'Numeros de ambientes', return_json = True,
               type = grafos.PIE_CHART_3D)
    elif tipo == 'letrina':
        for opcion in CHOICE_OPCION:
            data.append(consulta.filter(detalle__letrina=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Tiene letrina', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'lavadero':
        for opcion in CHOICE_OPCION:
            data.append(consulta.filter(detalle__lavadero=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
               'Tiene lavadero', return_json = True,
               type = grafos.PIE_CHART_3D)
            
    else:
        raise Http404
    pass

@session_required
def equipos(request):
    '''tabla de equipos'''
    #******** variables globales***********
    a = _queryset_filtrado(request)
    num_familia = a.count()
    #*************************************
    
    #********** tabla de equipos *************
    tabla = {}
    totales = {}
    
    totales['numero'] = a.aggregate(numero=Count('propiedades__equipo'))['numero']
    totales['porciento_equipo'] = 100
    totales['cantidad_equipo'] = a.aggregate(cantidad=Sum('propiedades__cantidad_equipo'))['cantidad']
    totales['porciento_cantidad'] = 100
    
    for i in Equipos.objects.all():
        key = slugify(i.nombre).replace('-','_')
        query = a.filter(propiedades__equipo = i)
        frecuencia = query.count()
        por_equipo = saca_porcentajes(frecuencia, num_familia)
        equipo = query.aggregate(equipo=Sum('propiedades__cantidad_equipo'))['equipo']
        cantidad_pro = query.aggregate(cantidad_pro=Avg('propiedades__cantidad_equipo'))['cantidad_pro']
        tabla[key] = {'frecuencia':frecuencia, 'por_equipo':por_equipo,
                      'equipo':equipo,'cantidad_pro':cantidad_pro}
    
    #******** tabla de infraestructura *************
    tabla_infra = {}
    totales_infra = {}
    
    totales_infra['numero'] = a.aggregate(numero=Count('propiedades__infraestructura'))['numero']
    totales_infra['porciento_infra'] = 100
    totales_infra['cantidad_infra'] = a.aggregate(cantidad_infra=Sum('propiedades__cantidad_infra'))['cantidad_infra']
    totales_infra['por_cantidad_infra'] = 100
       
    for j in Infraestructuras.objects.all():
        key = slugify(j.nombre).replace('-','_')
        query = a.filter(propiedades__infraestructura = j)
        frecuencia = query.count()
        por_frecuencia = saca_porcentajes(frecuencia, num_familia)
        infraestructura = query.aggregate(infraestructura=Sum('propiedades__cantidad_infra'))['infraestructura']
        infraestructura_pro = query.aggregate(infraestructura_pro=Avg('propiedades__cantidad_infra'))['infraestructura_pro']
        tabla_infra[key] = {'frecuencia':frecuencia, 'por_frecuencia':por_frecuencia,
                             'infraestructura':infraestructura,
                             'infraestructura_pro':infraestructura_pro}
                             
    #******************* tabla de herramientas ***************************
    herramienta = {}
    totales_herramientas = {}
    
    totales_herramientas['numero'] = a.aggregate(numero=Count('herramientas__herramienta'))['numero']
    totales_herramientas['porciento_herra'] = 100
    totales_herramientas['cantidad_herra'] = a.aggregate(cantidad=Sum('herramientas__numero'))['cantidad']
    totales_herramientas['porciento_herra'] = 100
    
    for k in NombreHerramienta.objects.all():
        key = slugify(k.nombre).replace('-','_')
        query = a.filter(herramientas__herramienta = k)
        frecuencia = query.count()
        por_frecuencia = saca_porcentajes(frecuencia, num_familia)
        herra = query.aggregate(herramientas=Sum('herramientas__numero'))['herramientas']
        por_herra = query.aggregate(por_herra=Avg('herramientas__numero'))['por_herra']
        herramienta[key] = {'frecuencia':frecuencia, 'por_frecuencia':por_frecuencia,
                            'herra':herra,'por_herra':por_herra}
                            
    #*************** tabla de transporte ***********************
    transporte = {}
    totales_transporte = {}
    
    totales_transporte['numero'] = a.aggregate(numero=Count('transporte__transporte'))['numero']
    totales_transporte['porciento_trans'] = 100
    totales_transporte['cantidad_trans'] = a.aggregate(cantidad=Sum('transporte__numero'))['cantidad']
    totales_transporte['porciento_trans'] = 100
    
    for m in NombreTransporte.objects.all():
        key = slugify(m.nombre).replace('-','_')
        query = a.filter(transporte__transporte = m)
        frecuencia = query.count()
        por_frecuencia = saca_porcentajes(frecuencia, num_familia)
        trans = query.aggregate(transporte=Sum('transporte__numero'))['transporte']
        por_trans = query.aggregate(por_trans=Avg('transporte__numero'))['por_trans']
        transporte[key] = {'frecuencia':frecuencia,'por_frecuencia':por_frecuencia,
                           'trans':trans,'por_trans':por_trans}
           
    return render_to_response('encuesta/equipos.html', {'tabla':tabla,'totales':totales,
                              'num_familias':num_familia,'tabla_infra':tabla_infra,
                              'herramienta':herramienta,'transporte':transporte},
                               context_instance=RequestContext(request))

@session_required
def ahorro_credito(request):
    ''' ahorro y credito'''
    #ahorro
    consulta = _queryset_filtrado(request)
    #tabla_ahorro = []
    #totales_ahorro = {}

    #columnas_ahorro = ['Si', '%']

    #for pregunta in AhorroPregunta.objects.exclude(id__in=[3, 5]):
    #    #opciones solo si
    #    subquery = consulta.filter(ahorro__ahorro = pregunta, ahorro__respuesta = 1).count()
    #    tabla_ahorro.append([pregunta.nombre, subquery, saca_porcentajes(subquery, consulta.count(), False)])

    #credito
    tabla_credito= {}
    totales_credito= {}

    totales_credito['numero'] = consulta.count()
    totales_credito['porcentaje_num'] = 100

    recibe = consulta.filter(credito__recibe = 1).count()
    menos = consulta.filter(credito__desde = 1).count()
    mas = consulta.filter(credito__desde = 2).count()
    al_dia = consulta.filter(credito__dia= 1).count()
              
    tabla_credito['recibe'] = [recibe, saca_porcentajes(recibe, totales_credito['numero'])]
    tabla_credito['menos'] = [menos, saca_porcentajes(menos, totales_credito['numero'])] 
    tabla_credito['mas'] = [mas, saca_porcentajes(mas, totales_credito['numero'])] 
    tabla_credito['al_dia'] = [al_dia, saca_porcentajes(al_dia, totales_credito['numero'])] 

    dicc = {'tabla_credito': tabla_credito,
            'num_familias': consulta.count()}

    return render_to_response('encuesta/ahorro_credito.html', dicc,
                              context_instance=RequestContext(request))

@session_required
def ahorro_credito_grafos(request, tipo):
    '''Tipo puede ser: ahorro, uso, origen, satisfaccion'''
    #TODO: origen y uso
    consulta = _queryset_filtrado(request)
    data = [] 
    legends = []
    if tipo == 'ahorro': #ahorra a nombre de quien
        #choice_ahorro (5, hombre), (6, mujeres), (7,ambos)
        for numero in (5, 6, 7):
            #FIX: numero de la pregunta hardcored
            dato = consulta.filter(ahorro__ahorro=5, ahorro__respuesta = numero).count()
            data.append(dato)
            legends.append(CHOICE_AHORRO[numero - 1][1])
        return grafos.make_graph(data, legends, 
                'A nombre de quien ahorra', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'origen': #de donde viene el credito
        for origen in DaCredito.objects.all():
            data.append(consulta.filter(credito__quien_credito= origen).count())
            legends.append(origen.nombre)
        return grafos.make_graph(data, legends, 
                'Origen del Crédito', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'satisfaccion':
        for opcion in CHOICE_SATISFACCION:
            data.append(consulta.filter(credito__satisfaccion=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends, 
                'Nivel de satisfacción con el crédito', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'uso':
        for uso in OcupaCredito.objects.all():
            data.append(consulta.filter(credito__ocupa_credito = uso).count())
            legends.append(uso.nombre)
        return grafos.make_graph(data, legends, 
                'Uso del Crédito', return_json = True,
                type = grafos.PIE_CHART_3D)
    else:
        raise Http404

@session_required
def servicios(request):
    '''servicios: educacion, salud, agua, luz'''
    familias = _queryset_filtrado(request).count()
    return render_to_response('encuesta/servicios.html',
                              {'num_familias': familias}, 
                              context_instance=RequestContext(request))
    
@session_required
def educacion(request):
    '''Modelo educacion y noeducacion'''
    #Educacion
    consulta = _queryset_filtrado(request)
    tabla_educacion = []
    tabla_no= []
    totales_educacion = {}
    totales_no = {}

    totales_educacion['numero'] = consulta.aggregate(numero=Sum('educacion_jovenes__n_total'))['numero'] 
    totales_educacion['porcentaje_num'] = 100
    #totales_no['numero'] = consulta.aggregate(numero=Sum('noeducacion__numero'))['numero'] 
    #totales_no['porcentaje_num'] = 100
    
    #for choice in CHOICE_NINOS_EDUCACION:
    #    fila = [] #etiqueta, razon, porcentaje
    #    fila.append(choice[1])
    #    numero = consulta.filter(noeducacion__no_asisten=choice[0]).aggregate(numero=Sum('noeducacion__numero'))['numero']
    #    fila.append(numero)
    #    fila.append(saca_porcentajes(numero, totales_no['numero']))
    #    tabla_no.append(fila)

    for choice in CHOICE_JOVEN_EDUCACION:
        objeto = consulta.filter(educacion_jovenes__persona = choice[0]).aggregate(num_total = Sum('educacion_jovenes__n_total'),
                no_lee = Sum('educacion_jovenes__no_leer'), pri_incompleta = Sum('educacion_jovenes__pri_incompleta'), 
                pri_completa = Sum('educacion_jovenes__pri_completa'), 
                secun_incompleta = Sum('educacion_jovenes__secu_incompleta'),
                secun_completa = Sum('educacion_jovenes__secu_completa'), 
                universitario = Sum('educacion_jovenes__actualmente'),
                tecnico_graduado = Sum('educacion_jovenes__tecnico'))
        fila = [choice[1], objeto['num_total'],
                saca_porcentajes(objeto['no_lee'], objeto['num_total'], False),
                saca_porcentajes(objeto['pri_incompleta'], objeto['num_total'], False),
                saca_porcentajes(objeto['pri_completa'], objeto['num_total'], False),
                saca_porcentajes(objeto['secun_incompleta'], objeto['num_total'], False),
                saca_porcentajes(objeto['secun_completa'], objeto['num_total'], False),
                saca_porcentajes(objeto['universitario'], objeto['num_total'], False),
                saca_porcentajes(objeto['tecnico_graduado'], objeto['num_total'], False)]
        tabla_educacion.append(fila)
    
    return render_to_response('encuesta/educacion.html', 
                              {#'tabla_no':tabla_no, 'totales_no': totales_no,
                               'tabla_educacion':tabla_educacion, 
                               'totales_educacion': totales_educacion,
                               'num_familias': consulta.count()},
                              context_instance=RequestContext(request))

@session_required
def salud(request):
    '''salud'''
    consulta = _queryset_filtrado(request)
    num_familias = consulta.count()
    tabla = [] 

    for enfermedad in CHOICE_ENFERMEDADES:
        hijo = consulta.filter(enfermedad__enfermedad=enfermedad[0], enfermedad__hijo=1).count()
        socia  = consulta.filter(enfermedad__enfermedad=enfermedad[0], enfermedad__socia=1).count()
        companero = consulta.filter(enfermedad__enfermedad=enfermedad[0], enfermedad__companero=1).count()
        fila = [enfermedad[1], 
                saca_porcentajes(socia, num_familias, False), 
                saca_porcentajes(hijo, num_familias, False),
                saca_porcentajes(companero, num_familias, False)]
        tabla.append(fila)

    dicc = {'tabla': tabla, 'num_familias': num_familias}
    return render_to_response('encuesta/salud.html', dicc,  
                              context_instance=RequestContext(request))

@session_required
def salud_grafos(request, tipo):
    '''Graficos de salud'''
    consulta = _queryset_filtrado(request)
    data = []
    legends = []
    titulo = ''

    if tipo == 'donde':
        titulo = 'Donde reliza sus necesidades'
        for choice in CHOICE_LETRINA:
            data.append(consulta.filter(salud__donde=choice[0]).count())
            legends.append(choice[1])
    elif tipo == 'tratamiento':
        pass
    elif tipo == 'frecuencia':
        titulo = 'Frecuencia de la limpieza'
        for choice in CHOICE_LIMPIEZA:
            data.append(consulta.filter(salud__limpieza=choice[0]).count())
            legends.append(choice[1])
    elif tipo == 'basura':
        titulo = 'Forma de disponer la basura'
        for choice in CHOICE_DESHACER:
            data.append(consulta.filter(salud__deshacer=choice[0]).count())
            legends.append(choice[1])
    elif tipo == 'envases':
        #envases de agroquimicos
        pass
    else:
        raise Http404

    return grafos.make_graph(data, legends, 
                titulo, return_json = True,
                type = grafos.PIE_CHART_3D)

@session_required
def cancer_grafos(request, id):
    '''Grafos de la tabla cancer'''
    #id van de
    consulta = _queryset_filtrado(request)
    data = []
    legends = []
    id = int(id)
    pregunta = get_object_or_404(PreguntaCancer, id=id)
    titulo = pregunta.pregunta 

    if id == 1:
        #su pareja pide permiso
        #resp: si, no, no se
        for i in [1, 2, 3]:
            resp = RespuestasCancer.objects.get(id=i)
            data.append(consulta.filter(cancer__preguntas = pregunta, 
                                                   cancer__resp = resp).count())
            legends.append(resp.respuesta)
    elif id == 2:
        #se ha realizado examen ginecológico
        #resp: si, no 
        for i in [1, 2]:
            resp = RespuestasCancer.objects.get(id=i)
            data.append(consulta.filter(cancer__preguntas = pregunta, 
                                                   cancer__resp = resp).count())
            legends.append(resp.respuesta)
    elif id == 3:
        #frecuencia de chequeos
        #resp: una vez, dos veces, cada 2 años, nunca
        for i in [5, 6, 7, 8]:
            resp = RespuestasCancer.objects.get(id=i)
            data.append(consulta.filter(cancer__preguntas = pregunta, 
                                                   cancer__resp = resp).count())
            legends.append(resp.respuesta)
    elif id == 4:
        #como han sido los resultados de su pap
        #resp: negativos, inflamacion, infeccion, precancer
        for i in [9, 10, 11, 12]:
            resp = RespuestasCancer.objects.get(id=i)
            data.append(consulta.filter(cancer__preguntas = pregunta, 
                                                   cancer__resp = resp).count())
            legends.append(resp.respuesta)
    elif id == 5:
        #Como ha hecho para tratarse los problemas que le han resultado del PAP
        #resp: negativos, inflamacion, infeccion, precancer
        for i in [13, 14, 15, 16, 17, 18, 19]:
            resp = RespuestasCancer.objects.get(id=i)
            data.append(consulta.filter(cancer__preguntas = pregunta, 
                                                   cancer__resp = resp).count())
            legends.append(resp.respuesta)
    elif id == 6:
        #Tiene algun problema de salud que le preocupe?
        #resp: negativos, inflamacion, infeccion, precancer
        for i in [1, 2]:
            resp = RespuestasCancer.objects.get(id=i)
            data.append(consulta.filter(cancer__preguntas = pregunta, 
                                                   cancer__resp = resp).count())
            legends.append(resp.respuesta)
    else:
        raise Http404

    return grafos.make_graph(data, legends, 
                titulo, return_json = True,
                type = grafos.PIE_CHART_3D)


@session_required
def agua(request):
    '''Agua'''
    consulta = _queryset_filtrado(request)
    tabla = []
    total = consulta.aggregate(total=Count('agua__fuente'), cantidad=Sum('agua__cantidad'))

    for choice in CHOICE_FUENTE_AGUA:
        query = consulta.filter(agua__fuente=choice[0])
        numero = query.count()
        resultados = query.aggregate(cantidad=Sum('agua__cantidad'))
#        try:
#            prom = resultados['cantidad']/float(numero)
#        except:
#            prom = 0
        distancia = query.aggregate(distancia=Sum('agua__distancia'))['distancia']
        pro_distancia = saca_porcentajes(distancia,numero)
        fila = [choice[1], numero,
                #saca_porcentajes(numero, total['total'], False),
                saca_porcentajes(numero, consulta.count(), False),
#                resultados['cantidad'],
                #saca_porcentajes(resultados['cantidad'], total['cantidad'], False),
#                "%.2f" % prom,
                "%.2f" % pro_distancia]
        tabla.append(fila)

    #totales = [total['total'], 100, total['cantidad'], 100]
    totales = [consulta.count(), 100, total['cantidad'], 100]
    return render_to_response('encuesta/agua.html', 
                              #{'tabla':tabla, 'totales':totales},
                              {'tabla':tabla, 'num_familias': consulta.count()},
                              context_instance=RequestContext(request))

@session_required
def agua_grafos_disponibilidad(request, tipo):
    '''Tipo: numero del 1 al 6 en CHOICE_FUENTE_AGUA'''
    consulta = _queryset_filtrado(request)
    data = [] 
    legends = []
    tipo = int(tipo)
    if tipo in [numero[0] for numero in CHOICE_FUENTE_AGUA]:
        if tipo in [1, 2]:
            choices = CHOICE_DISPONIBILIDAD[:2]  
        else:
            choices = CHOICE_DISPONIBILIDAD[2:]

        for opcion in choices:
            data.append(consulta.filter(agua__diponibilidad=opcion[0], agua__fuente = tipo).count())
            legends.append(opcion[1])
        titulo = 'Disponibilidad del agua en %s' % CHOICE_FUENTE_AGUA[tipo - 1][1]
        return grafos.make_graph(data, legends, 
                titulo, return_json = True,
                type = grafos.PIE_CHART_3D)
    else:
        raise Http404

@session_required
def agua_grafos_calidad(request, tipo):
    '''Tipo: numero del 1 al 6 en CHOICE_FUENTE_AGUA'''
    consulta = _queryset_filtrado(request)
    data = [] 
    legends = []
    if int(tipo) in [numero[0] for numero in CHOICE_FUENTE_AGUA]:
        for opcion in CHOICE_CALIDAD_AGUA:
            data.append(consulta.filter(agua__calidad=opcion[0], agua__fuente = tipo).count())
            legends.append(opcion[1])
        titulo = 'Disponibilidad del agua en %s' % CHOICE_FUENTE_AGUA[int(tipo) - 1][1]
        return grafos.make_graph(data, legends, 
                titulo, return_json = True,
                type = grafos.PIE_CHART_3D)
    else:
        raise Http404

@session_required
def luz(request):
    '''Tabla de acceso a energia electrica'''
    consulta = _queryset_filtrado(request)
    tabla = []
    total_tiene_luz = 0            

    for choice in CHOICE_EQUIPO:
        query = consulta.filter(propiedades__tipo_equipo=choice[0], propiedades__respuesta=1).distinct()
        resultados = query.count() 
        if choice[0] == 1:
            total_tiene_luz = resultados 
            fila = [choice[1], 
                    resultados,
                    saca_porcentajes(resultados, consulta.count(), False)]
            tabla.append(fila)
        else:
            fila = [choice[1], 
                    resultados,
                    saca_porcentajes(resultados, total_tiene_luz, False)]
            tabla.append(fila)

    return render_to_response('encuesta/luz.html', 
                              {'tabla':tabla, 'num_familias': consulta.count()},
                              context_instance=RequestContext(request))

@session_required
def seguridad_alimentaria(request):
    '''Seguridad Alimentaria'''
    #********variables globales****************
    a = _queryset_filtrado(request)
    num_familia = a.count()
    #******************************************
    tabla = {}
    
    for u in Alimentos.objects.all():
        key = slugify(u.nombre).replace('-','_')
        query = a.filter(seguridad__alimento = u)
        frecuencia = query.count()
        producen = query.filter(seguridad__alimento=u,seguridad__producen=1).aggregate(producen=Count('seguridad__producen'))['producen']
        por_producen = saca_porcentajes(producen, num_familia)
        compran = query.filter(seguridad__alimento=u,seguridad__compran=1).aggregate(compran=Count('seguridad__compran'))['compran']
        por_compran = saca_porcentajes(compran, num_familia)
        consumen = query.filter(seguridad__alimento=u,seguridad__consumen=1).aggregate(consumen=Count('seguridad__consumen'))['consumen']
        por_consumen = saca_porcentajes(consumen, num_familia)
        invierno = query.filter(seguridad__alimento=u,seguridad__consumen_invierno=1).aggregate(invierno=Count('seguridad__consumen_invierno'))['invierno']
        por_invierno = saca_porcentajes(invierno, num_familia)
        tabla[key] = {'frecuencia':frecuencia, 'producen':producen, 'por_producen':por_producen,
                      'compran':compran,'por_compran':por_compran,'consumen':consumen, 
                      'por_consumen':por_consumen, 'invierno':invierno,
                      'por_invierno':por_invierno}
                     
                      
    return render_to_response('encuesta/seguridad.html',{'tabla':tabla,
                              'num_familias':num_familia},
                               context_instance=RequestContext(request))    
def riego(request):
    consulta = _queryset_filtrado(request)
    num_familias = consulta.count()
    tabla = []
    #fila: lugar, si, %si, no, %no

    for lugar in CHOICE_RIEGO:
        query = consulta.filter(riego__lugar = lugar[0])
        sumas = query.aggregate(inundacion = Sum('riego__inundacion'),
                                aspersion = Sum('riego__aspersion'),
                                goteo = Sum('riego__goteo'),
                                regadera = Sum('riego__regadera'),
                                panada = Sum('riego__panada'),
                                manguera = Sum('riego__manguera'))
        total_si = query.count()
        total_no = num_familias - total_si
        fila = [ lugar[1], total_si,
                saca_porcentajes(total_si, num_familias, False),
                total_no,
                saca_porcentajes(total_no, num_familias, False),
                calcular_positivos(sumas['inundacion'], total_si),
                calcular_positivos(sumas['aspersion'], total_si),
                calcular_positivos(sumas['goteo'], total_si),
                calcular_positivos(sumas['regadera'], total_si),
                calcular_positivos(sumas['panada'], total_si),
                calcular_positivos(sumas['manguera'], total_si)]
        tabla.append(fila)
    #Nota: el calculo de valores se realiza con base a los que contestaron
    #Si en el tipo de lugar de riego
    dicc = {'tabla': tabla, 'num_familias': num_familias}
    print dicc
    return render_to_response('encuesta/riego.html', dicc, 
                              context_instance=RequestContext(request))

def suelo(request):
    '''Vista de manejo de suelo'''
    pass

def abono(request):
    '''Vista del uso del abono'''
    consulta = _queryset_filtrado(request)
    familias = consulta.count()
    tabla_abono = []

    for abono in CHOICE_PROD_ABONO:
        total_si = consulta.filter(abono__respuesta=1, abono__producto = abono[0]).count()
        porcentaje_si  = saca_porcentajes(total_si, familias, False) 
        total_no = familias - total_si  
        porcentaje_no = 100 - float(porcentaje_si)
        porcentaje_no = '%.2f' % porcentaje_no
        query = consulta.aggregate(pulpa = Sum('abono__pulpa'),
                                   estiercol = Sum('abono__estiercol'),
                                   gallinaza = Sum('abono__gallinaza'),
                                   composta = Sum('abono__composta'),
                                   lombrices = Sum('abono__lombrices'),
                                   bocachi = Sum('abono__bocachi'),
                                   foliar = Sum('abono__foliar'),
                                   verde = Sum('abono__verde'),
                                   hojas = Sum('abono__hojas'),
                                   quince = Sum('abono__quince'),
                                   veinte = Sum('abono__veinte'),
                                   urea = Sum('abono__urea'))

        resultado = [abono[1], total_si, porcentaje_si, total_no, porcentaje_no,
                     calcular_positivos(query['pulpa'], familias),
                     calcular_positivos(query['estiercol'], familias),
                     calcular_positivos(query['gallinaza'], familias),
                     calcular_positivos(query['composta'], familias),
                     calcular_positivos(query['lombrices'], familias),
                     calcular_positivos(query['bocachi'], familias),
                     calcular_positivos(query['foliar'], familias),
                     calcular_positivos(query['verde'], familias),
                     calcular_positivos(query['hojas'], familias),
                     calcular_positivos(query['quince'], familias),
                     calcular_positivos(query['veinte'], familias),
                     calcular_positivos(query['urea'], familias)]
        tabla_abono.append(resultado)

    dicc = {'tabla': tabla_abono, 'num_familias': familias}
    return render_to_response('encuesta/abono.html', dicc, 
                              context_instance=RequestContext(request))
def jovenes(request):
    pass

def organizacion_jovenes(request):
    '''tabla de organizacion jovenes'''
    consulta = _queryset_filtrado(request)
    num_familias = consulta.count()
    #num_casos = num_familias 
    num_casos = consulta.filter(jovenes__isnull=False).count()
    tabla = []
    fila_miembro = ['Es miembro del consejo']
    fila_comision= ['Es parte de la comisiones']
    fila_capacitaciones = ['Ha recibido capacitaciones']
    #fila_interesado = ['Esta interesado en asumir cargo']
    lista_id  = [id[0] for id in consulta.values_list('id')]
    sumas = Jovenes.objects.filter(encuesta__id__in=lista_id).aggregate(miembro = Sum('miembro'),
                               comision = Sum('miembro_trabajo'),
                               capacitacion = Sum('cargo'))

    sumas['desde_miembro_menor'] = consulta.filter(jovenes__desde_miembro=1).count() 
    sumas['desde_miembro_mayor'] = consulta.filter(jovenes__desde_miembro=2).count() 
    sumas['desde_comision_menor'] = consulta.filter(jovenes__desde_miembro_trabajo=1).count() 
    sumas['desde_comision_mayor'] = consulta.filter(jovenes__desde_miembro_trabajo=2).count() 
    sumas['desde_capacitacion_menor'] = consulta.filter(jovenes__desde_cargo=1).count() 
    sumas['desde_capacitacion_mayor'] = consulta.filter(jovenes__desde_cargo=2).count() 

    print sumas, num_casos
    #limpiando none
    for key in sumas:
        if sumas[key] == None:
            sumas[key] = 0
    
    fila_miembro.append(calcular_positivos(sumas['miembro'], num_casos, False))
    fila_miembro.append(calcular_positivos(sumas['miembro'], num_casos, True))
    fila_miembro.append(calcular_negativos(sumas['miembro'], num_casos, False))
    fila_miembro.append(calcular_negativos(sumas['miembro'], num_casos, True))
    fila_miembro.append(sumas['desde_miembro_menor'])
    fila_miembro.append(saca_porcentajes(sumas['desde_miembro_menor'], num_casos, False))
    fila_miembro.append(sumas['desde_miembro_mayor'])
    fila_miembro.append(saca_porcentajes(sumas['desde_miembro_mayor'], num_casos, False))


    fila_comision.append(calcular_positivos(sumas['comision'], num_casos, False))
    fila_comision.append(calcular_positivos(sumas['comision'], num_casos, True))
    fila_comision.append(calcular_negativos(sumas['comision'], num_casos, False))
    fila_comision.append(calcular_negativos(sumas['comision'], num_casos, True))
    fila_comision.append(sumas['desde_comision_menor'])
    fila_comision.append(saca_porcentajes(sumas['desde_comision_menor'], num_casos, False))
    fila_comision.append(sumas['desde_comision_mayor'])
    fila_comision.append(saca_porcentajes(sumas['desde_comision_mayor'], num_casos, False))


    fila_capacitaciones.append(calcular_positivos(sumas['capacitacion'], num_casos, False))
    fila_capacitaciones.append(calcular_positivos(sumas['capacitacion'], num_casos, True))
    fila_capacitaciones.append(calcular_negativos(sumas['capacitacion'], num_casos, False))
    fila_capacitaciones.append(calcular_negativos(sumas['capacitacion'], num_casos, True))
    fila_capacitaciones.append(sumas['desde_capacitacion_menor'])
    fila_capacitaciones.append(saca_porcentajes(sumas['desde_capacitacion_menor'], num_casos, False))
    fila_capacitaciones.append(sumas['desde_capacitacion_mayor'])
    fila_capacitaciones.append(saca_porcentajes(sumas['desde_capacitacion_mayor'], num_casos, False))
                               

    #fila_interesado.append(calcular_positivos(sumas['interesado'], num_casos, False))
    #fila_interesado.append(calcular_positivos(sumas['interesado'], num_casos, True))
    #fila_interesado.append(calcular_negativos(sumas['interesado'], num_casos, False))
    #fila_interesado.append(calcular_negativos(sumas['interesado'], num_casos, True))

    tabla = [fila_miembro, fila_comision, fila_capacitaciones]
    return render_to_response('encuesta/organizacion_jovenes.html', 
                              {'tabla': tabla, 'num_familias': num_familias},
                              context_instance=RequestContext(request))

def suelo(request):
    pass

def compra(request):
    ''' sobre compra y aplicacion de abono
    '''
    #--------- variables globales ----
    a = _queryset_filtrado(request)
    num_familias = a.count()
    #---------------------------------
    tabla = {}
    
    for k in CHOICE_ANO:
        key = (k[1]).replace('-','_')
        query = a.filter(compra__cuanto = k[0])
        frecuencia = query.count()
        pulpa = query.aggregate(pulpa=Sum('compra__pulpa'))['pulpa']
        estiercol = query.aggregate(estiercol=Sum('compra__estiercol'))['estiercol']
        gallinaza = query.aggregate(gallinaza=Sum('compra__gallinaza'))['gallinaza']
        composta = query.aggregate(composta=Sum('compra__composta'))['composta']
        lombrices = query.aggregate(lombrices=Sum('compra__lombrices'))['lombrices']
        bocachi = query.aggregate(bocachi=Sum('compra__bocachi'))['bocachi']
        foliar_org = query.aggregate(foliar_org=Sum('compra__foliar_org'))['foliar_org']
        foliar_qui = query.aggregate(foliar_qui=Sum('compra__foliar_qui'))['foliar_qui']
        verde = query.aggregate(verde=Sum('compra__verde'))['verde']
        quince = query.aggregate(quince=Sum('compra__quince'))['quince']
        veinte = query.aggregate(veinte=Sum('compra__veinte'))['veinte']
        seis = query.aggregate(seis=Sum('compra__seis'))['seis']
        urea = query.aggregate(urea=Sum('compra__urea'))['urea']
        tabla[key] = {'frecuencia':frecuencia,
                      'pulpa':pulpa, 
                      'estiercol':estiercol,
                      'gallinaza':gallinaza,
                      'composta':composta,
                      'lombrices':lombrices,
                      'bocachi':bocachi,
                      'foliar_org':foliar_org,
                      'foliar_qui':foliar_qui,
                      'verde':verde,
                      'quince':quince,
                      'veinte':veinte,
                      'seis':seis,'urea':urea}                   
    return render_to_response('encuesta/compra.html',{'tabla':tabla,
                              'num_familias':num_familias},
                               context_instance=RequestContext(request))
                    
def postcosecha(request):   
    ''' sobre el modelo de post cosecha
    '''
    #--------- variables globales ----
    a = _queryset_filtrado(request)
    num_familias = a.count()
    #---------------------------------
    tabla = {}
    
    for u in Cultivos.objects.all():
        key = slugify(u.nombre).replace('-','_')
        key2 = slugify(u.unidad).replace('-','_')
        query = a.filter(postcosecha__producto = u)
        frecuencia = query.count()
        cantidad = query.aggregate(cantidad=Sum('postcosecha__cantidad'))['cantidad']
        hombres = query.filter(postcosecha__responsable=1).count()
        mujeres = query.filter(postcosecha__responsable=2).count()
        hijos = query.filter(postcosecha__responsable=3).count()
        sumas = hombres + mujeres + hijos
        porcentaje_hombres = saca_porcentajes(hombres,sumas)
        porcentaje_mujeres = saca_porcentajes(mujeres,sumas)
        porcentaje_hijos = saca_porcentajes(hijos,sumas)
        sm = query.filter(postcosecha__tipo__id__exact=1).count()
        tm = query.filter(postcosecha__tipo__id__exact=2).count()
        tr = query.filter(postcosecha__tipo__id__exact=3).count()
        s = query.filter(postcosecha__tipo__id__exact=4).count()
        bp = query.filter(postcosecha__tipo__id__exact=5).count()
        b = query.filter(postcosecha__tipo__id__exact=6).count()
        casa = query.filter(postcosecha__tipo__id__exact=7).count()
        suma_tipo = sm + tm + tr + s + bp + b + casa
        porcentaje_sm = saca_porcentajes(sm,suma_tipo)
        porcentaje_tm = saca_porcentajes(tm, suma_tipo)
        porcentaje_tr = saca_porcentajes(tr,suma_tipo)
        porcentaje_s = saca_porcentajes(s,suma_tipo)
        porcentaje_bp = saca_porcentajes(bp,suma_tipo)
        porcentaje_b = saca_porcentajes(b,suma_tipo)
        porcentaje_casa = saca_porcentajes(casa,suma_tipo)
        tabla[key] = {'key2':key2,'frecuencia':frecuencia,'porcentaje_hombres':porcentaje_hombres,
                       'porcentaje_mujeres':porcentaje_mujeres,'porcentaje_hijos':porcentaje_hijos,
                       'porcentaje_sm':porcentaje_sm,'porcentaje_tm':porcentaje_tm,
                       'porcentaje_tr':porcentaje_tr,'porcentaje_s':porcentaje_s,'porcentaje_bp':porcentaje_bp,
                       'porcentaje_b':porcentaje_b,'porcentaje_casa':porcentaje_casa,
                       'cantidad':cantidad}
    return render_to_response('encuesta/postcosecha.html',{'tabla':tabla,
                              'num_familias':num_familias},
                               context_instance=RequestContext(request))

@session_required    
def grafos_vulnerabilidad(request, tipo):
    ''' sobre el modelo de vulnerabilidad
    '''
    #--------- variables globales ----
    consulta = _queryset_filtrado(request)
    num_familias = consulta.count()
    #--------------------------------- 
    data = [] 
    legends = []
    
    if tipo == 'alimentosbasico':
        for opcion in CHOICE_PREG1:
            data.append(consulta.filter(consume__preg1=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends, 
                'Alimentos basicos consume compra', return_json = True,
                type = grafos.PIE_CHART_3D)
    elif tipo == 'necesidadbasica':
        for opcion in CHOICE_PREG2:
            data.append(consulta.filter(consume__preg2=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
               'Cubre necesidades de alimentos basico', return_json = True,
               type = grafos.PIE_CHART_3D)
    elif tipo == 'razonesfalta':
        for opcion in CHOICE_MOTIVO:
            data.append(consulta.filter(consume__preg3=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Razones de falta de alimentos', return_json = True,
                type=grafos.PIE_CHART_3D)
    elif tipo == 'mesesdificil':
        for opcion in Meses.objects.all():
            data.append(consulta.filter(consume__preg4=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
                'Meses dificiles para conseguir alimentos', return_json = True,
                type=grafos.PIE_CHART_3D)
    elif tipo == 'cafeprecio':
        for opcion in CHOICE_PREG5:
            data.append(consulta.filter(consume__preg5=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Acciones cuando baja precio de cafe', return_json = True,
                type=grafos.PIE_CHART_3D)
    elif tipo == 'accionesescazes':
        for opcion in SolucionesEscazes.objects.all():
            data.append(consulta.filter(escasez__preg1=opcion).count())
            legends.append(opcion.nombre)
        return grafos.make_graph(data, legends,
                'Acciones en tiempo de escazes', return_json = True,
                type=grafos.PIE_CHART_3D)
    elif tipo == 'conseguir':
        for opcion in CHOICE_ESCASEZ:
            data.append(consulta.filter(escasez__preg2=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Donde consigue alimento en la epoca de escazes', return_json = True,
                type=grafos.PIE_CHART_3D)
    elif tipo == 'portiempo':
        for opcion in CHOICE_PREG7:
            data.append(consulta.filter(consume__preg7=opcion[0]).count())
            legends.append(opcion[1])
        return grafos.make_graph(data, legends,
                'Por cuánto tiempo puede conseguir alimentos', return_json = True,
                type=grafos.PIE_CHART_3D)
    else:
        raise Http404
    pass

def produccion(request):
    ''' sobre el modelo de produccion
    '''
    #--------- variables globales ----
    a = _queryset_filtrado(request)
    num_familias = a.count()
    #---------------------------------
    tabla = {}
    
    for e in CHOICE_MAIZ:
        key = slugify(e[1]).replace('-','_')
        query = a.filter(produccion_maiz__producto = e[0])
        frecuencia = query.count()
        siete = query.aggregate(siete=Avg('produccion_maiz__siete'))['siete']
        ocho = query.aggregate(ocho=Avg('produccion_maiz__ocho'))['ocho']
        nueve = query.aggregate(nueve=Avg('produccion_maiz__nueve'))['nueve']
        diez = query.aggregate(diez=Avg('produccion_maiz__diez'))['diez']
        tabla[key] = {'frecuencia':frecuencia,'ocho':ocho,'nueve':nueve,
                      'diez':diez}
                      
    return render_to_response('encuesta/produccion.html',{'tabla':tabla,
                              'num_familias':num_familias},
                               context_instance=RequestContext(request))

def condiciones(request):
    '''Condiciones del campo'''
    consulta = _queryset_filtrado(request)
    num_familias = consulta.count()
    tabla = []

    for pregunta in Campo.objects.all():
        fila = [pregunta.afirmacion]
        for condicion in CHOICE_CAMPO:
            conteo = consulta.filter(campo__pregunta = pregunta, campo__respuesta = condicion[0]).count()
            porcentaje = saca_porcentajes(conteo, num_familias, False)
            fila.append(porcentaje)
        tabla.append(fila)

    dicc = {'tabla': tabla, 'num_familias': num_familias, 'columnas': CHOICE_CAMPO}
    return render_to_response('encuesta/condiciones.html', dicc,
                               context_instance=RequestContext(request))
        
#TODO: completar esto
VALID_VIEWS = {
        'familia': familia,
        'luz': luz,
        'fincas': fincas,
        'arboles': arboles,
        'cultivos': cultivos,
        'ingresos': ingresos,
        'animales': animales,
        'ahorro_credito': ahorro_credito,
        'servicios': servicios,
        'educacion': educacion,
        'equipos': equipos,
        'seguridad_alimentaria': seguridad_alimentaria,
        'salud': salud,
        'agua': agua,
        'luz': luz,
        'organizacion': organizacion,
        'abono': abono,
        'compra': compra,
        'postcosecha': postcosecha,
        'produccion': produccion,
        'condiciones': condiciones,
        'riego': riego,
        'jovenes': organizacion_jovenes,
        }    
    
# Vistas para obtener los municipios, comunidades, etc..

def get_municipios(request, departamento):
    municipios = Municipio.objects.filter(departamento = departamento)
    lista = [(municipio.id, municipio.nombre) for municipio in municipios]
    return HttpResponse(simplejson.dumps(lista), mimetype='application/javascript')

def get_comunidad(request, municipio):
    comunidades = Comunidad.objects.filter(municipio = municipio )
    lista = [(comunidad.id, comunidad.nombre) for comunidad in comunidades]
    return HttpResponse(simplejson.dumps(lista), mimetype='application/javascript')
