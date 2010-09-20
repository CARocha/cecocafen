from django.contrib import admin
from lugar.models import Municipio
from encuesta.models import *
from django.contrib.contenttypes import generic

class DatosInline(generic.GenericStackedInline):
	model = DatosGenerales
	max_num = 1
	
class OrganizacionInline(generic.GenericStackedInline):
    model = Organizacion
    max_num = 1
    
class MigracionInline(generic.GenericTabularInline):
    model = Migracion
    extra = 1
    max_num = 6
    
class CampoInline(generic.GenericTabularInline):
    model = CondicionesCampo
    extra = 1
    max_num = None
    
class ConservacionInline(generic.GenericStackedInline):
    model = Conservacion
    max_num = 8

class AbonoInline(generic.GenericTabularInline):
    model = Abono
    extra = 1
    max_num = None
    
class CompraInline(generic.GenericTabularInline):
    model = Compra
    extra = 1
    max_num = None

#class VisioInline(generic.GenericTabularInline):
#    model = VisionFuturo
#    extra = 1
#    max_num = 3
#    
#class ActividadesInline(generic.GenericTabularInline):
#    model = Actividades
#    extra = 1
#    max_num = 2

class TenenciaInline(generic.GenericTabularInline):
    model = Tenencia
    extra = 1
    max_num = 1
    
class TierraInline(generic.GenericTabularInline):
    model = Tierra
    extra = 1
    max_num = 9
    
class ReforestacionInline(generic.GenericTabularInline):
    model = Reforestacion
    extra = 1
    max_num = 9
    
class ConservacionInline(generic.GenericTabularInline):
    model = Conservacion
    max_num = 1
    
class CultivosFincaInline(generic.GenericTabularInline):
    model = CultivosFinca
    extra = 1
    max_num = None
    
class FincaInline(generic.GenericTabularInline):
    model = FincaAnimales
    extra = 1
    max_num = None
    
class PostcosechaInline(generic.GenericTabularInline):
    model = Postcosecha
    extra = 1
    max_num = None
    
class ProblemaInline(generic.GenericTabularInline):
    model = Problema
    extra = 1
    max_num = None

class IngresoFamiliarInline(generic.GenericTabularInline):
    model = IngresoFamiliar
    extra = 1
    max_num = None

class OtrosIngresosInline(generic.GenericTabularInline):
    model = OtrosIngresos
    extra = 1
    max_num = 4
    
class AporteInline(generic.GenericStackedInline):
    model = Aportar
    extra = 1
    
class DestinarInline(generic.GenericTabularInline):
    model = Destinar
    extra = 1
    max_num = None
    
class TipoCasaInline(generic.GenericTabularInline):
    model = TipoCasa
    extra = 1
    max_num = 1
    
class DetalleCasaInline(generic.GenericTabularInline):
    model = DetalleCasa
    extra = 1
    max_num = 1
    
class PropiedadesInline(generic.GenericTabularInline):
    model = Propiedades
    extra = 1
    max_num = None
    
class HerramientasInline(generic.GenericTabularInline):
    model = Herramientas
    extra = 1
    max_num = 9
    
class TransporteInline(generic.GenericTabularInline):
    model = Transporte
    extra = 1
    max_num = 6
    
class SeguridadInline(generic.GenericTabularInline):
    model = Seguridad
    extra = 1
    max_num = None
    
class ConsumeInline(generic.GenericTabularInline):
    model = Consume
    max_num = 1
    
class EscasezInline(generic.GenericTabularInline):
    model = Escasez
    extra = 1
    max_num = 4
    
class ProduccionMaizInline(generic.GenericTabularInline):
    model = ProduccionMaiz
    extra = 1
    max_num = 3
    
class RiegoInline(generic.GenericTabularInline):
    model = Riego
    extra = 1
    max_num = 2
    
class AguaInline(generic.GenericTabularInline):
    model = Agua
    extra = 1
    max_num = 6
    
class AhorroInline(generic.GenericTabularInline):
    model = Ahorro
    extra = 1
    max_num = 6
    
class CreditoInline(generic.GenericTabularInline):
    model = Credito
    extra = 1
    max_num = 1
    
class SaludInline(generic.GenericTabularInline):
    model = Salud
    extra = 1
    max_num = 6
    
#class ReproduccionInline(generic.GenericTabularInline):
#    model = Reproduccion
#    extra = 1
#    max_num = 6
class EnfermedadInline(generic.GenericTabularInline):
    model = Enfermedades
    extra = 1
    max_num = 6
    
class CancerInline(generic.GenericTabularInline):
    model = Cancer
    extra = 1
    max_num = None
    
class MentalInline(generic.GenericTabularInline):
    model = Mental
    extra = 1
    max_num = None
    
class EducacionInline(generic.GenericTabularInline):
    model = EducacionJovenes
    extra = 1
    max_num = 6
    
class JovenesInlines(generic.GenericStackedInline):
    model = Jovenes
    max_num = 1
    
#class VisioJInline(generic.GenericTabularInline):
#    model = VisionFuturoJovenes
#    extra = 1
#    max_num = 1
    
#class ActividadesJInline(generic.GenericTabularInline):
#    model = ActividadesJovenes
#    extra = 1
#    max_num = 4   
#*****************************************************
    
class EncuestaAdmin(admin.ModelAdmin):
    save_on_top = True
    actions_on_top = True
    inlines =[DatosInline,OrganizacionInline,MigracionInline,CampoInline,
            TenenciaInline,TierraInline,
            ReforestacionInline,ConservacionInline,AbonoInline,CompraInline,CultivosFincaInline,
            FincaInline,PostcosechaInline,ProblemaInline,IngresoFamiliarInline,OtrosIngresosInline,
            AporteInline,DestinarInline,TipoCasaInline,DetalleCasaInline,PropiedadesInline,
            HerramientasInline,TransporteInline,SeguridadInline,ConsumeInline,ProduccionMaizInline,EscasezInline,
            RiegoInline,AguaInline,AhorroInline,CreditoInline,SaludInline,EnfermedadInline,CancerInline,
            MentalInline,EducacionInline,JovenesInlines
            ]
    list_display = ['nombre_socios', 'comunidades', 'municipios','recolector','departamento']
    list_filter = ['fecha']
    date_hierarchy = 'fecha'
    search_fields = ['datos__nombre','datos__comunidad__nombre']



admin.site.register(Encuesta, EncuestaAdmin)
admin.site.register(Recolector)
admin.site.register(Beneficios)
admin.site.register(PorqueMiembro)
admin.site.register(UsoTierra)
#admin.site.register(Socio)
#admin.site.register(PreguntaSocio)
#admin.site.register(RepuestaSocio)
admin.site.register(RazonesMigracion)
admin.site.register(Campo)
#admin.site.register(Vision)
#admin.site.register(VisionRespuesta)
admin.site.register(Actividades)
admin.site.register(Reforestacion)
admin.site.register(Combustible)
admin.site.register(Animales)
admin.site.register(ProductoAnimal)
admin.site.register(Cultivos)
admin.site.register(Rubros)
admin.site.register(Fuentes)
admin.site.register(Equipos)
admin.site.register(Infraestructuras)
admin.site.register(NombreHerramienta)
admin.site.register(NombreTransporte)
#admin.site.register(AhorroPregunta)
admin.site.register(PreguntaCancer)
admin.site.register(RespuestasCancer)
admin.site.register(DaCredito)
admin.site.register(OcupaCredito)
admin.site.register(Alimentos)
admin.site.register(Piso)
admin.site.register(Techo)
admin.site.register(DondeAhorro)
admin.site.register(PreguntaMental)
#admin.site.register(PreguntaJoven)
admin.site.register(BeneficioJoven)
admin.site.register(MiembroJoven)
#admin.site.register(Quedar)
#admin.site.register(NoQuedar)
admin.site.register(Cooperativa)
admin.site.register(Tecnologia)
admin.site.register(Certificacion)
admin.site.register(Meses)
admin.site.register(AhorraPorque)
admin.site.register(AdmonActual)
admin.site.register(ActividadConservacion)
admin.site.register(TipoAlmacenaje)
admin.site.register(TipoProblema)
admin.site.register(Solucion)
admin.site.register(TipoTrabajo)
admin.site.register(SolucionEscasez)
admin.site.register(Tratamiento)
admin.site.register(Quimico)
