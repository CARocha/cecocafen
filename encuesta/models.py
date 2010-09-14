# -*- coding: UTF-8 -*-
from django.db import models
from django.conf import settings
from lugar.models import Comunidad
from django.contrib.contenttypes import generic
from django.contrib.contenttypes.models import ContentType


CHOICE_SEX = ((1,'Hombre'),(2,'Mujer'))

class Cooperativa(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "DatosGenerales-cooperativa"
        
class Tecnologia(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "DatosGenerales-Tipo-Tecnologia"
            
class Certificacion(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "DatosGenerales-Tipo-Certificacion"
    
                
#Modelo 1. Datos Generales        
class DatosGenerales(models.Model):
    ''' Modelo Datos Generales
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    nombre = models.CharField('Nombre de Socio o Socia',max_length=200)
    cedula = models.CharField('Cédula de Sócio o Sócia',max_length=200, help_text="Introduzca la cedula del Sócio o Sócia", null=True, blank=True)
    sexo = models.IntegerField('Sexo del Socio/a',choices=CHOICE_SEX, null=True, blank=True)
    cooperativa = models.ForeignKey(Cooperativa, null=True, blank=True)
    nombre_conyugue = models.CharField('Nombre del conyugue del socio/a',max_length=200, null=True, blank=True)
    cedula_conyugue = models.CharField('Cédula del conyugue del  Sócio/a',max_length=200, help_text="Introduzca la cedula del Conyugue", null=True, blank=True)    
    nombre_finca = models.CharField('Nombre de la Finca',max_length=200, null=True, blank=True)
    comunidad = models.ForeignKey(Comunidad)
    coor_lt = models.DecimalField('Coordenadas Latitud',max_digits=24,decimal_places=16, null=True, blank=True)
    coor_lg = models.DecimalField('Coordenadas Longitud',max_digits=24,decimal_places=16, null=True, blank=True)
    tecnologia = models.ManyToManyField(Tecnologia,verbose_name="Tecnología productiva en café", null=True, blank=True)
    certificacion = models.ManyToManyField(Certificacion,verbose_name="Tipo de certificación en café", null=True, blank=True)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "DatosGenerales"
        
#Modelo 2. Indicador de fortalecimiento organizativo (Organización)

class Beneficios(models.Model):
    nombre = models.CharField(max_length=100)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Organizacion-Beneficios-Socios"
    
        
class PorqueMiembro(models.Model):
    nombre = models.CharField(max_length=100)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Organizacion-Porque-Miembro"
    
class AdmonActual(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Organizacion-Consejo-Actual"
     
CHOICE_OPCION = ((1,"Si"),(2,"No"))
CHOICE_DESDE = ((1,"Menos de 5 año"),(2,"Mas de 5 años"),(3,"Hombres"),(4,"Mujeres"),(5,"Jóvenes"))
CHOICE_DESDE_ORGA = ((1,"Menos de 5 año"),(2,"Mas de 5 años"))

class Organizacion(models.Model):
    ''' parte de la Organizacion de la cooperativa de achuapa
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    socio = models.IntegerField('Soy socio o socia', choices=CHOICE_OPCION, default=2, blank=True)
    desde_socio = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA,null=True, blank=True)
    #pertenecer = models.CharField('Cooperativa a la que pertenezco', max_length=200, null=True, blank=True)
    socio_cooperativa = models.IntegerField('Mi esposa/esposo es socio(a) de la cooperativa',
                                             choices=CHOICE_OPCION, default = 2, blank=True)
    desde_socio_coop = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA, null=True, blank=True)
    hijos_socios = models.IntegerField('Mis Hijos/hijas son socio(as) de la cooperativa', 
                                        choices=CHOICE_OPCION, default = 2, blank=True)
    desde_hijo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA, null=True, blank=True)
    beneficio = models.ManyToManyField(Beneficios, verbose_name="Beneficios obtenidos", null=True, blank=True)
    miembro = models.IntegerField('Es miembro del consejo de administracion', 
                                   choices=CHOICE_OPCION, default=2, blank=True)
    desde_miembro = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA, null=True, blank=True)
    conformado = models.ManyToManyField(AdmonActual, verbose_name="El consejo Admon actual esta conformado por", null=True, blank=True, related_name='conformado')
    conformarse = models.ManyToManyField(AdmonActual, verbose_name="Está de acuerdo que el consejo de Admón esté conformado por", null=True, blank=True)
    miembro_trabajo = models.IntegerField('Es miembro/a de las comisiones de trabajo', choices=CHOICE_OPCION, default=2, blank=True)
    desde_trabajo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA, null=True, blank=True)
    cargo = models.IntegerField('He recibido capacitación para desempeñar mi cargo', 
                                 choices=CHOICE_OPCION, default=2, blank=True)
    desde_cargo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA, null=True, blank=True)
    no_miembro = models.IntegerField('Si no es miembro de ninguna estructura, estaria interesado en asumir un cargo', choices=CHOICE_OPCION, default=2, blank=True)
    quiero_miembro_junta = models.ManyToManyField(PorqueMiembro, verbose_name="Por qué queire ser miembro consejo", null=True, blank=True)
    class Meta:
        verbose_name_plural = "Organizacion"
    
#Modelo 3. Indicador de fortalecimiento de la identidad socio-cultural y recreativa de socios,socias y sus familias
class RazonesMigracion(models.Model):
    razones = models.CharField(max_length=150)
    def __unicode__(self):
        return self.razones
    class Meta:
        verbose_name_plural = "Migracion-RazonesMigracion"
        
CHOICE_MIGRACION = ((1,"Hombres adultos (18 años y más)"),(2,"Mujeres adultas (18 años y más)"),(3,"Adolecentes hombres (12 a 17 años)"), (4,"Adolecentes mujeres (12 a 17 años)"),(5,"Niños (menos de 12 años)"),(6,"Niñas (menos de 12 años)"))

class Migracion(models.Model):
    ''' Modelo sobre migracion de personas fuera de la nacion
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    edades = models.IntegerField(choices=CHOICE_MIGRACION)
    n_total = models.IntegerField('No. total en la familia')
    viven_casa = models.IntegerField('No. viven en la casa')
    viven_comu = models.IntegerField('No. viven en la comunidad')
    viven_fuera = models.IntegerField('No. viven fuera de la comunidad')
    razones = models.ManyToManyField(RazonesMigracion, verbose_name="Razones por la que migra",null=True, blank=True)
    class Meta:
        verbose_name_plural = "Migracion"
    
class Campo(models.Model):
    afirmacion = models.CharField(max_length=200)
    def __unicode__(self):
        return self.afirmacion
    class Meta:
        verbose_name_plural = "CondicionCampo-Campo"
        
CHOICE_CAMPO = ((1,'Buena'),(2,'Regular'),(3,'Mala'),(4,'Mejorado'),(6,'Igual'),(7,'empeorado'))

class CondicionesCampo(models.Model):
    ''' Modelo condiciones de campo
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    pregunta = models.ForeignKey(Campo)
    respuesta = models.IntegerField(choices=CHOICE_CAMPO)
    
#Modelo 4. Indicador de desarrollo economico productivo con enfoque ambiental y empresarial
CHOICE_TENENCIA = ((1,"Propia con escritura pública"),(2,"Propia por herencia"),(3,"Propias con promesa de venta"),(4,"Propias con titulo de reforma agraria"),(5,"Arrendada"),(6,"Sin documento"))
CHOICE_DUENO = ((1,"Hombre"),(2,"Mujer"),(3,"Mancomunado"),(4,"Parientes"),(5,"Colectivo"),(6,"No hay"))
CHOICE_CANTIDAD_TENENCIA = ((1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'0'))

class Tenencia(models.Model):
    ''' Modelo tipo de tenencia de la propiedad
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    parcela = models.IntegerField('Parcela (tierra)', choices=CHOICE_TENENCIA)
    cantidad_parcela = models.IntegerField(choices=CHOICE_CANTIDAD_TENENCIA)
    solar = models.IntegerField('Solar (dónde está la vivienda)', choices=CHOICE_TENENCIA)
    cantidad_solar = models.IntegerField(choices=CHOICE_CANTIDAD_TENENCIA)   
    dueno = models.IntegerField('Documento legal de la propiedad, a nombre de quien', choices=CHOICE_DUENO)
    
    class Meta:
        verbose_name_plural = "Tenencia"
    
class UsoTierra(models.Model):
    nombre = models.CharField(max_length=50, unique=True)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Tierra-Uso-de-Tierra"
   
    
class Tierra(models.Model):
    ''' Modelo uso de tierra 
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    uso_tierra = models.ForeignKey(UsoTierra)
    areas = models.DecimalField('Areas en Mz',max_digits=10,decimal_places=2,null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Tierra"
        
class Actividades(models.Model):
    ''' Actividades para la reforestacion
    '''
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Reforestacion-Actividades"   
    def __unicode__(self):
        return self.nombre

class Reforestacion(models.Model):
    ''' Modelo reforestacion
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    actividad = models.ForeignKey(Actividades)
    cantidad = models.DecimalField('Cantidad de árboles sembrados',max_digits=10,decimal_places=2,null=True, blank=True)
    class Meta:
        verbose_name_plural="Reforestacion"
    
#Conservacion de suelo y agua en la finca

class Combustible(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Conservacion-combustible"
        
class ActividadConservacion(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Conservacion-ActividadConservacion"

CHOICE_CONSER = (((1,'Si'),(2,'No')))
class Conservacion(models.Model):
    ''' Modelo conservacion de suelo y agua en la finca
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    cocinar = models.ManyToManyField(Combustible, verbose_name="¿Qué utiliza para cocinar",null=True, blank=True )
    actividad = models.IntegerField('Ha hecho alguna actividad para la conservación de los suelos y agua en su finca?',choices=CHOICE_CONSER,null=True, blank=True)
    cuales = models.ManyToManyField(ActividadConservacion, verbose_name="Cuales?",null=True, blank=True)
    cuanto = models.DecimalField('Cuanto',max_digits=10,decimal_places=2, help_text="En Metros",null=True, blank=True)
    class Meta:
        verbose_name_plural = "Conservacion"
    
    
#Sobre uso de abono
CHOICE_ABONO = ((1,'Si'),(2,'No'))
CHOICE_PROD_ABONO = ((1,'Café'),(2,'Granos básicos'),(3,'Huerto y patio'))

class Abono(models.Model):
    ''' Modelo conservacion de suelo y agua en la finca
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    producto = models.IntegerField(choices=CHOICE_PROD_ABONO,null=True, blank=True)
    respuesta = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    pulpa = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    estiercol = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    gallinaza = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    composta = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    lombrices = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    bocachi = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    foliar = models.IntegerField(choices=CHOICE_ABONO,null=True, blank=True)
    verde = models.IntegerField('Abo. Verde', choices=CHOICE_ABONO,null=True, blank=True)
    hojas = models.IntegerField('Hojas y rastrajos', choices=CHOICE_ABONO,null=True, blank=True)
    quince = models.IntegerField('15-15-15', choices=CHOICE_ABONO,null=True, blank=True)
    veinte = models.IntegerField('20-20-20', choices=CHOICE_ABONO,null=True, blank=True)
    seis = models.IntegerField('18-6-12-4', choices=CHOICE_ABONO,null=True, blank=True)
    urea = models.IntegerField('Urea-Nitrato', choices=CHOICE_ABONO,null=True, blank=True)
    otros = models.TextField(null=True, blank=True)
    class Meta:
        verbose_name_plural = "Sobre uso del abono"
    
#Compra y aplicaciones de abonos
CHOICE_ANO = ((1,'¿Cuánto hace?'),(2,'¿Cuánto compra?'),(3,'¿Cuánto aplica?'))

class Compra(models.Model):
    ''' Modelo compra y aplicaciones de abonos
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    cuanto = models.IntegerField('Al año', choices=CHOICE_ANO,null=True, blank=True)
    pulpa = models.DecimalField(max_digits=10,decimal_places=2,null=True, blank=True)
    estiercol = models.DecimalField(max_digits=10,decimal_places=2,null=True, blank=True)
    gallinaza = models.DecimalField(max_digits=10,decimal_places=2,null=True, blank=True)
    composta = models.DecimalField(max_digits=10,decimal_places=2,null=True, blank=True)
    lombrices = models.DecimalField(max_digits=10,decimal_places=2,null=True, blank=True)
    bocachi = models.DecimalField(max_digits=10,decimal_places=2,null=True, blank=True)
    foliar_org = models.DecimalField('Foliar Organico',max_digits=10,decimal_places=2,null=True, blank=True)
    unidad_org = models.IntegerField('Unidad Organico',choices=((1,'Litro'),(2,'Kg')),null=True, blank=True)
    foliar_qui = models.DecimalField('Foliar Quimico',max_digits=10,decimal_places=2,null=True, blank=True)
    unidad_qui = models.IntegerField('Unidad Quimico',choices=((1,'Litro'),(2,'Kg')),null=True, blank=True)
    verde = models.DecimalField('Abono Verde qq',max_digits=10,decimal_places=2,null=True, blank=True)
    quince = models.DecimalField('15-15-15',max_digits=10,decimal_places=2,null=True, blank=True)
    veinte = models.DecimalField('20-20-20',max_digits=10,decimal_places=2,null=True, blank=True)
    seis = models.DecimalField('18-6-12-4',max_digits=10,decimal_places=2,null=True, blank=True)
    urea = models.DecimalField('Urea-Nitrato',max_digits=10,decimal_places=2,null=True, blank=True)
    otros = models.TextField(null=True, blank=True)
    class Meta:
        verbose_name_plural = "Compra y aplicacion de abono"
    

#produccion de la finca    
class Cultivos(models.Model):
    nombre = models.CharField(max_length=50)
    unidad = models.CharField(max_length=50)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "CultivosFinca-Cultivos"
    
    
class CultivosFinca(models.Model):
    ''' 
        indicador cultivos en la finca
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    cultivos = models.ForeignKey(Cultivos)
    total =  models.DecimalField('Producción',max_digits=10,decimal_places=2,null=True, blank=True)
    consumo = models.DecimalField('Consumo',max_digits=10,decimal_places=2,null=True, blank=True)
    venta_libre = models.DecimalField('Venta libre',max_digits=10,decimal_places=2,null=True, blank=True)
    venta_organizada = models.DecimalField('Venta organizada',max_digits=10,decimal_places=2,null=True, blank=True)
    class Meta:
        verbose_name_plural = "Cultivos en la Finca"

#Animales en la finca
class Animales(models.Model):
    nombre = models.CharField(max_length=50)
    class Meta:
        verbose_name_plural = "FincaAnimal-Animales"
    def __unicode__(self):
        return self.nombre
        
class ProductoAnimal(models.Model):
    nombre = models.CharField(max_length=100)
    unidad = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "FincaProducto-Animal"
    def __unicode__(self):
        return self.nombre

class FincaAnimales(models.Model):
    ''' 
        Modelo animales en la finca
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    animales = models.ForeignKey(Animales)
    cantidad = models.DecimalField(max_digits=10,decimal_places=2,null=True, blank=True)
    produccion = models.ForeignKey(ProductoAnimal)
    consumo = models.DecimalField('Consumo',max_digits=10,decimal_places=2,null=True, blank=True)
    venta_libre = models.DecimalField('Venta libre',max_digits=10,decimal_places=2,null=True, blank=True)
    venta_organizada = models.DecimalField('Venta organizada',max_digits=10,decimal_places=2,null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Finca y produccion"
        
#post cosecha, de los alimentos que produce cuanto almacena, como lo almacena, quien es el responsable

CHOICE_COSECHA = ((1,'Hombre'),(2,'Mujer'),(3,'Hijos'),(4,'Hombre-Hijos'),(5,'Mujer-Hijos'),(6,'Hombre-Mujer'),(7,'Todos'))

class TipoAlmacenaje(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Postcosecha-tipoAlmacenaje"

class Postcosecha(models.Model):
    ''' 
        Modelo post cosecha
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    producto = models.ForeignKey(Cultivos)
    responsable = models.IntegerField(choices=CHOICE_COSECHA, null=True, blank=True)
    cantidad = models.IntegerField('Cantidad almacenada qq/und',null=True, blank=True)
    tipo = models.ManyToManyField(TipoAlmacenaje, related_name='Tipo de almacenaje', null=True, blank=True)
    class Meta:
        verbose_name_plural = "Postcosecha"
        
#modelo caules son los principales problemas del almacenamiento
class TipoProblema(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Problema-TipoProblema"
        
class Solucion(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Problema-Solucion"

class Problema(models.Model):
    ''' 
        Modelo principales problemas en el almacenamiento y como lo solucionan
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    problema = models.ForeignKey(TipoProblema)
    solucion = models.ManyToManyField(Solucion)
       
        
#Ingreso familiar
CHOICE_VENDIO = ((1,"Comunidad"),(2,"Intermediario"),(3,"Ferias"),(4,"Cooperativa"),(5,'C-I'),(6,'I-F'),(7,'F-Coop'),(8,'Todos'),(9,'C-Coop'),(10,'Coop-Interm'))
CHOICE_MANEJA = ((1,"Hombre"),(2,"Mujer"),(3,"Ambos"),(4,"Hijos/as"),(5,'Hombre-Hijos'),(6,'Mujer-Hijos'),(7,'Todos'))
class Rubros(models.Model):
    nombre = models.CharField(max_length=50)
    unidad = models.CharField(max_length=50)
    class Meta:
        verbose_name_plural = "IngresoFamiliar-Rubros"
    def __unicode__(self):
        return self.nombre
    
class IngresoFamiliar(models.Model):
    ''' 
        Modelo Ingreso familiar
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    rubro = models.ForeignKey(Rubros)
    cantidad = models.IntegerField('Cantidad vendida',null=True, blank=True)
    precio = models.IntegerField('Precio de venta por unidad',null=True, blank=True)
    quien_vendio = models.IntegerField(choices=CHOICE_VENDIO,null=True, blank=True)
    maneja_negocio = models.IntegerField(choices=CHOICE_MANEJA,null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Ingreso Familiar"
        
class Fuentes(models.Model):
    nombre = models.CharField(max_length=50)
    class Meta:
        verbose_name_plural = "OtrosIngresoFamiliar-Fuentes"
    def __unicode__(self):
        return self.nombre
        
class TipoTrabajo(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "OtroIngreso-TipoTrabajo"
           
class OtrosIngresos(models.Model):
    '''
        Otros ingresos
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    fuente = models.ForeignKey(Fuentes)
    tipo = models.ForeignKey(TipoTrabajo)
    meses = models.IntegerField('Meses',null=True, blank=True)
    ingreso = models.IntegerField('Ingreso por mes',null=True, blank=True)
    tiene_ingreso = models.IntegerField(choices=CHOICE_MANEJA,null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Otros Ingresos"
        
#otra cosa mas absurdas
CHOICE_APORTE = ((1,'2-3'),(2,'4-5'),(3,'6-7'),(4,'Más de 8'))
class Aportar(models.Model):
    '''
        modelos tonto
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    persona = models.IntegerField('¿Cuántas persona aportan con trabajo en la finca o económicamente?', choices=CHOICE_APORTE)
    class Meta:
        verbose_name_plural = "Aportar"

#De los ingresos obtenidos por usted. ¿Cuánto destina a  servicios básicos?
CHOICE_DESTINAR = ((1,'Alimentos de consumo'),(2,'Producción de café'),(3,'Producción de (maíz,frijol...)'),(4,'Servicios basicos(agua,luz...)'),(5,'Educación'),(6,'Salud'))
class Destinar(models.Model):
    '''
        modelos otro mas de esos
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    servicios = models.IntegerField(choices=CHOICE_DESTINAR,null=True, blank=True)
    cuanto = models.DecimalField('Del 100% que percibe cuanto destina',max_digits=10,decimal_places=2,null=True, blank=True)
    class Meta:
        verbose_name_plural = "Destinar"
        
#Modelo propiedades y bienes
CHOICE_AMBIENTE = ((1,"1"),(2,"2"),(3,"3"),(4,"4"),(5,"5"))
CHOICE_TIPO_CASA = ((1,"Madera rolliza"),(2,"Adobe"),(3,"Tabla"),(4,"Minifalda"),(5,"Ladrillo o Bloque"))
class Piso(models.Model):
    nombre = models.CharField(max_length=100)
    def __unicode__(self):
        return self.nombre
        
class Techo(models.Model):
    nombre = models.CharField(max_length=100)
    def __unicode__(self):
        return self.nombre

class TipoCasa(models.Model):
    '''
        Modelo tipos de casa
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    tipo = models.IntegerField('Tipo de la casa', choices=CHOICE_TIPO_CASA)
    piso = models.ManyToManyField(Piso, verbose_name="Piso")
    techo = models.ManyToManyField(Techo, verbose_name="Techo")
    
    class Meta:
        verbose_name_plural = "Tipos de Casas"

CHOICE_AMBIENTE = ((1,"1"),(2,"2"),(3,"3"),(4,"4"),(5,"5"))
CHOICE_OPCION = ((1,"Si"),(2,"No"))
    
class DetalleCasa(models.Model):
    '''
        Modelo detalle de casa
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    tamano = models.IntegerField('Tamaño en mt cuadrado',null=True, blank=True)
    ambientes = models.IntegerField(choices=CHOICE_AMBIENTE,null=True, blank=True)
    letrina = models.IntegerField(choices=CHOICE_OPCION,null=True, blank=True)
    lavadero = models.IntegerField(choices=CHOICE_OPCION,null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Detalles de la Casa"

class Equipos(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Propiedades-Equipos"    
    def __unicode__(self):
        return self.nombre

class Infraestructuras(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Propiedades-Infraestructura"
    def __unicode__(self):
        return self.nombre
        
CHOICE_EQUIPO = ((1,"Tiene Luz"),(2,"Con medidor UF"),(3,"Con planta"),(4,"Con panel solar o aeromotor"))
        
class Propiedades(models.Model):
    '''
        Modelo propiedades
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    equipo = models.ForeignKey(Equipos, null=True, blank=True)
    cantidad_equipo = models.IntegerField(null=True, blank=True)
    infraestructura = models.ForeignKey(Infraestructuras, null=True, blank=True) 
    cantidad_infra = models.IntegerField('Cantidad', null=True, blank=True)
    tipo_equipo = models.IntegerField(choices=CHOICE_EQUIPO, null=True, blank=True)
    respuesta = models.IntegerField(choices=CHOICE_OPCION, null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Equipos"
        
class NombreHerramienta(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Herramientas-Nombres"
    def __unicode__(self):
        return self.nombre
    
class Herramientas(models.Model):
    '''
        Modelo herramientas
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    herramienta = models.ForeignKey(NombreHerramienta)
    numero = models.IntegerField(null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Herramientas"
    def __unicode__(self):
        return self.herramienta.nombre
        
class NombreTransporte(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Transporte-Nombre"
    def __unicode__(self):
        return self.nombre
        
class Transporte(models.Model):
    '''
        Modelo transporte
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    transporte = models.ForeignKey(NombreTransporte)
    numero = models.IntegerField(null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Transporte"
        
#Modelo seguridad alimentaria
class Alimentos(models.Model):
    nombre = models.CharField(max_length=80)
    class Meta:
        verbose_name_plural = "Seguridad-Alimento"
    def __unicode__(self):
        return self.nombre
        
CHOICE_OPCION = ((1,'Si'),(2,'No'))       
class Seguridad(models.Model):
    ''' 
        Modelo Seguridad alimentaria
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    alimento = models.ForeignKey(Alimentos)
    producen = models.IntegerField('Producen en la finca',choices=CHOICE_OPCION)
    compran = models.IntegerField('Compran para completar la necesidad',choices=CHOICE_OPCION)
    consumen = models.IntegerField('Consumen lo necesario en los meses de verano', choices=CHOICE_OPCION)
    consumen_invierno = models.IntegerField('Consumen lo necesario en los meses de invierno', choices=CHOICE_OPCION)
    
    class Meta:
        verbose_name_plural = "Seguridad alimentaria"
        
#otra gracia nueva hp
CHOICE_PREG1 = ((1,'Todos'),(2,'Más de la mitad'),(3,'Menos de la mitad'),(4,'Nada'))
CHOICE_PREG2 = ((1,'Si'),(2,'No'))
class Meses(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Consume-Meses"
        
CHOICE_PREG5 = ((1,'Busca alternativas de solución'),(2,'nada'),(3,'Espera que alguien busque una solución'))
CHOICE_PREG7 = ((1,'1-2 semanas'),(2,'3-4 semanas'),(3,'2 meses'),(4,'mas de 2 meses'))
CHOICE_MOTIVO = ((1,'Poca tierra para producir'),(2,'Falta de empleo'),(3,'Famailia numerosa'),(4,'Rendimientos productivos bajos'))

class Consume(models.Model):
    ''' 
        Modelo preguntas de consumo
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    preg1 = models.IntegerField('¿Qué porcentaje de alimentos básicos que consume compra?', choices=CHOICE_PREG1, null=True, blank=True)
    preg2 = models.IntegerField('¿Siente que en alguna ocasión no ha podido Cubrir sus necesidades básicas de alimentación?', choices=CHOICE_PREG2, null=True, blank=True)
    preg3 = models.IntegerField('Si la respuesta es si porque motivo', choices=CHOICE_MOTIVO, null=True, blank=True)
    preg4 = models.ManyToManyField(Meses, verbose_name="¿Cuáles son los meses más difíciles para la familia?",null=True, blank=True)
    preg5 = models.IntegerField('¿Qué hace cuando los precios del café bajan?', choices=CHOICE_PREG5, null=True, blank=True)
    preg7 = models.IntegerField('¿Por cuánto tiempo puede conseguir alimentos en ese sitio mientras dura la escasez? ', choices=CHOICE_PREG7, null=True, blank=True)
    preg8 = models.IntegerField('¿Utiliza riego en sus parcelas o huerto familiar?', choices=CHOICE_PREG2, null=True, blank=True)
    class Meta: 
        verbose_name_plural = "Consume"

#**********************************************************************
class SolucionEscasez(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Escasez-SolucionEscasez"
CHOICE_ESCASEZ = ((1,'credito en la pulperia mas cercana'),(2,'Donde un familiar'),(3,'Mercado local mas cercano'))
class Escasez(models.Model):
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    preg1 = models.ManyToManyField(SolucionEscasez, verbose_name="¿Qué soluciones y practicas implementa en los tiempos de escasez?", null=True, blank=True)
    preg2 = models.IntegerField('Si consigue alimentos en la epoca de escasez ¿Donde consigue alimentos en la epoca de escasez', choices=CHOICE_ESCASEZ)
    class Meta:
        verbose_name_plural = "Escasez"
    

#produccion maiz, frijol, sorgo
CHOICE_MAIZ = ((1,'Maíz'),(2,'Frijol'),(3,'Sorgo'))    
class ProduccionMaiz(models.Model):
    ''' 
        Modelo tabla de maiz, frijol, sorgo
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    producto = models.IntegerField(choices=CHOICE_MAIZ)
    siete = models.IntegerField('2007 en meses',null=True, blank=True)
    ocho = models.IntegerField('2008 en meses',null=True, blank=True)
    nueve = models.IntegerField('2009 en meses',null=True, blank=True)
    diez = models.IntegerField('2010 en meses',null=True, blank=True)
    class Meta:
        verbose_name_plural = "¿Cuántos meses duraba lo que producia?"

CHOICE_RIEGO = ((1,'Huerta'),(2,'Patio'),(3,'Vivero de café'))    
class Riego(models.Model):
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    lugar = models.IntegerField(choices=CHOICE_RIEGO,null=True, blank=True)
    inundacion = models.IntegerField(choices=CHOICE_PREG2,null=True, blank=True)
    aspersion = models.IntegerField(choices=CHOICE_PREG2,null=True, blank=True)
    goteo = models.IntegerField(choices=CHOICE_PREG2,null=True, blank=True)
    regadera = models.IntegerField(choices=CHOICE_PREG2,null=True, blank=True)
    panada = models.IntegerField(choices=CHOICE_PREG2,null=True, blank=True)
    manguera = models.IntegerField(choices=CHOICE_PREG2,null=True, blank=True)
    class Meta:
        verbose_name_plural = "Tecnica de Riego"
    

#Modelo de agua
CHOICE_FUENTE_AGUA = ((1,"Quebrada"),(2,"Ojo de agua"),(3,"Pozo comunitario"),(4,"Pozo propio"),(5,"Agua entubada llave comunitaria"),(6,"Agua entubada llave de la casa"))
CHOICE_DISPONIBILIDAD = ((1,"TDTH"),(2,"TDAH"),(3,"ADAH"),(4,"NOCO"))
CHOICE_CALIDAD_AGUA = ((1,"NOP"),(2,"POHF"),(3,"POT"))
          
class Agua(models.Model):
    ''' 
    Modelo agua
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    fuente = models.IntegerField(choices= CHOICE_FUENTE_AGUA)
    cantidad = models.IntegerField(null=True, blank=True)
    distancia = models.IntegerField('La distancia de la fuente de la casa en VARAS',null=True, blank=True)
    diponibilidad = models.IntegerField('Disponibilidad de agua en tiempo', choices=CHOICE_DISPONIBILIDAD,null=True, blank=True)
    calidad = models.IntegerField('Calidad del agua', choices= CHOICE_CALIDAD_AGUA,null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Agua"
        
# Indicador de ahorro
CHOICE_AHORRO = ((1,"Si"),(2,"No"),(3,"Menos de 5 años"),(4,"Mas de 5 años"),(5,"Hombre"),(6,"Mujer"),(7,"Ambos"))
        
class DondeAhorro(models.Model):
    nombre = models.CharField(max_length=150)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Ahorro-DondeAhorro"
        
class AhorraPorque(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Ahorro-Porque"
    
class Ahorro(models.Model):
    '''
        Modelo ahorro
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    tiene_efectivo = models.IntegerField('Tiene ahorro en efectivo', choices=CHOICE_AHORRO, null=True, blank=True)
    tiene_joya = models.IntegerField('Tiene ahorro en joyeria', choices=CHOICE_AHORRO, null=True, blank=True)
    desde_ahorra = models.IntegerField('Desde cuando ahorra', choices=CHOICE_AHORRO, null=True, blank=True)
    nombre_ahorro = models.IntegerField('Ahorra a nombre de quien', choices=CHOICE_AHORRO, null=True, blank=True)
    posee_ahorro = models.IntegerField('Posee una cuenta de ahorro', choices=CHOICE_AHORRO, null=True, blank=True)
    interes_ahorro = models.IntegerField('¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro', choices=CHOICE_AHORRO, null=True, blank=True)
    donde = models.ManyToManyField(DondeAhorro, verbose_name="Donde prefereria hacer su ahorro", null=True,blank=True)
    porque = models.ManyToManyField(AhorraPorque, verbose_name="Porque?", null=True,blank=True)
    
    class Meta:
        verbose_name_plural = "Ahorro"

#Modelo Credito
class DaCredito(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Credito-Dacredito"
    def __unicode__(self):
        return self.nombre
        
class OcupaCredito(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Credito-Ocupa"
    def __unicode__(self):
        return self.nombre
CHOICE_SATISFACCION = ((1,"Menos de 25 % de las necesidades"),(2,"Entre 25 y 50 % de las necesidades"),(3,"Entre 50 y 100 % de las necesidades"))

DIA_OPCION = ((1,'Si'),(2,'No'))
DIA_CHOICE = ((1,"Menos de 5 años"),(2,"Mas de 5 años"))
        
class Credito(models.Model):
    ''' 
        Modelo de credito
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    recibe = models.IntegerField('Recibe Crédito', choices= DIA_OPCION,  null=True, blank=True)
    desde = models.IntegerField('Desde cuando', choices= DIA_CHOICE,  null=True, blank=True)
    quien_credito = models.ManyToManyField(DaCredito, verbose_name="De quien recibe credito",  null=True, blank=True)
    ocupa_credito = models.ManyToManyField(OcupaCredito, verbose_name="Para que ocupa el credito",  null=True, blank=True)
    satisfaccion = models.IntegerField('Satisfacción de la demanda de crédito', choices= CHOICE_SATISFACCION, blank=True, null=True)
    dia = models.IntegerField('Esta al dia con su Crédito', choices=DIA_OPCION, null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Crédito"

#Indicador de salud fisica y psicologica de los socios, socias y sus familiares
CHOICE_LETRINA = ((1,'Letrina'),(2,'Campo Libre'),(3,'Otros'))
CHOICE_LIMPIEZA = ((1,'Diario'),(2,'Semanal'),(3,'quincenal'),(4,'al mes'),(5,'semestral'),(6,'anual'))
CHOICE_DESHACER = ((1,'Quema'),(2,'Entierra'),(3,'recolección comunitaria'),(4,'basurero clandestino'),(5,'La hecha en hoyos'))
#CHOICE_AGROQUIMICO = ((1,'Para uso del hogar'),(2,'Quema'),(3,'Entierra'),(4,'Triple lavado'),(5,'Perfora y almacena'),(6,'Lo tira en la parcela'))

class Tratamiento(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Salud-Tratamiento"

class Quimico(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Salud-Quimico"
class Salud(models.Model):
    '''
        Modelos salud e higiene del hogar
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    donde = models.IntegerField('Donde realiza sus necesidades usted y su familia?', choices=CHOICE_LETRINA)
    tratamiento = models.ManyToManyField(Tratamiento,verbose_name="Le da un tratamiento a los desechos humanos?",
    null=True, blank=True)
    limpieza = models.IntegerField('Cada cuanto hace limpieza alredor de su vivienda?', choices=CHOICE_LIMPIEZA,null=True, blank=True)
    deshacer = models.IntegerField('De que manera se deshacen de la basura?', choices=CHOICE_DESHACER,null=True, blank=True)
    agroquimico = models.ManyToManyField(Quimico,verbose_name="Que hace con los envases de agroquímicos?", null=True, blank=True)
    class Meta:
        verbose_name_plural = "Salud"

#modelo de enfermedades
CHOICE_ENFERMEDADES = ((1,'Hipertensión'),(2,'Diabetes'),(3,'Enfermedades cardíacas'),(4,'Artritis'),(5,'Asma'),(6,'Enf. Reproductivas o Trasmisión sexual'))   
class Enfermedades(models.Model):
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    enfermedad = models.IntegerField('Qué enfermedades crónicas padece usted o los miembros de su núcleo familiar?', choices=CHOICE_ENFERMEDADES)
    socia = models.IntegerField('Socio ó socias', choices=((1,'Si'),(2,'No')), null=True, blank=True)
    hijo = models.IntegerField('Hijos ó Hijas', choices=((1,'Si'),(2,'No')), null=True, blank=True)
    companero = models.IntegerField('Compañero ó compañera', choices=((1,'Si'),(2,'No')), null=True, blank=True)
    
#Modelo Información para cáncer cervicouterino
class PreguntaCancer(models.Model):
    pregunta = models.CharField(max_length=200)
    def __unicode__(self):
        return self.pregunta
    class Meta:
        verbose_name_plural = "Cancer-Pregunta"
        
class RespuestasCancer(models.Model):
    respuesta = models.CharField(max_length=200)
    def __unicode__(self):
        return self.respuesta
    class Meta:
        verbose_name_plural = "Cancer-Respuesta"
        
class Cancer(models.Model):
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    preguntas = models.ForeignKey(PreguntaCancer)
    resp = models.ForeignKey(RespuestasCancer)
    cual = models.TextField('Cual?', null=True, blank=True)
    class Meta:
        verbose_name_plural = "Cancer"
    
#Modelo salud mental para las mujeres
class PreguntaMental(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Mental"
        
REPUESTA_MENTAL = ((1,'Soltera'),(2,'Juntada'),(3,'Casada'),(4,'Viudad'),(5,'Juntada o casada luego separada'),(6,'Menos de 5 años'),(7,'Más de 5 años'),(8,'Más de 10 años'),(9,'Si'),(10,'No'),(11,'No se'))

class Mental(models.Model):
    '''
        Modelo salud mental para mujeres!!
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    pregunta = models.ForeignKey(PreguntaMental)
    respuesta = models.IntegerField(choices=REPUESTA_MENTAL)
    class Meta:
        verbose_name_plural = "Salud Mental mujeres"
    
#Indicador de desarrollo educativo, particpativo e incidencia y comunicacion de las y los jovenes
CHOICE_JOVEN_EDUCACION = ((1,'Hombre adultos más de 15 años'),(2,'Mujeres adultas más de 15 años'),(3,'Hombres jóvenes de 7 a 15 años'),(4,'Mujeres jóvenes de 7 a 15 años'),(5,'Niños de 1 a 6 años'),(6,'Niñas de 1 a 6 años'))

class EducacionJovenes(models.Model):   
    '''
        Modelo salud mental mujeres XD!!!
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    persona = models.IntegerField(choices=CHOICE_JOVEN_EDUCACION)
    n_total = models.IntegerField('Numero total', null=True, blank=True)
    no_leer = models.IntegerField('# No sabe leer', null=True, blank=True)
    pri_incompleta = models.IntegerField('# primaria incompleta', null=True, blank=True)
    pri_completa = models.IntegerField('# primaria completa', null=True, blank=True)
    secu_incompleta = models.IntegerField('# secundaria incompleta', null=True, blank=True)
    secu_completa = models.IntegerField('# secundaria completa', null=True, blank=True)
    tecnico = models.IntegerField('# Técnica o universitaria', null=True, blank=True)
    actualmente = models.IntegerField('# estudiando actualmente', null=True, blank=True)
    beca = models.IntegerField('# estudiando actualmente con beca', null=True, blank=True)
    
    class Meta:
        verbose_name_plural = "Educación"
    
#Modelo pregunta dirigidas a los y las jovenes de la familia

class BeneficioJoven(models.Model):
    beneficio = models.CharField(max_length=200)
    def __unicode__(self):
        return self.beneficio
    class Meta:
        verbose_name_plural = "Jovenes-Beneficios"
        
class MiembroJoven(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
    class Meta:
        verbose_name_plural = "Jovenes-Miembro"
        
class Jovenes(models.Model):
    '''
        Modelo sobre preguntas dirijidas a los y las jovenes de la familia
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    socio = models.IntegerField('Soy socio o socia', choices=CHOICE_OPCION, default = 2, blank=True)
    desde_socio = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA,null=True, blank=True)
    promotor = models.IntegerField('Es promotor de su cooperativa?', choices=CHOICE_OPCION, default=2, blank=True)
    beneficio = models.ManyToManyField(BeneficioJoven, verbose_name="Beneficios obtenidos", null=True, blank=True)
    miembro = models.IntegerField('Es miembro del consejo de administracion', 
                                   choices=CHOICE_OPCION, default = 2, blank=True)
    desde_miembro = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA,null=True, blank=True)
    conformado = models.ManyToManyField(AdmonActual, verbose_name="El consejo Admon actual esta conformado por", null=True, blank=True, related_name='conformados')
    conformarse = models.ManyToManyField(AdmonActual, verbose_name="El consejo de admón debe conformarse por", null=True, blank=True,related_name='conformarse')
    miembro_trabajo = models.IntegerField('Es miembro/a de las comisiones de trabajo', choices=CHOICE_OPCION, default = 2, blank=True)
    desde_miembro_trabajo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA, null=True, blank=True)
    cargo = models.IntegerField('He recibido capacitación para desempeñar mi cargo', 
                                 choices=CHOICE_OPCION, null=True, blank=True)
    desde_cargo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE_ORGA, null=True, blank=True)
    no_miembro = models.IntegerField('Si no es miembro de ninguna estructura, estaria interesado en asumir un cargo', choices=CHOICE_OPCION, default=2, blank=True)
    quiero_miembro_junta = models.ManyToManyField(MiembroJoven, verbose_name="Quiero ser miembro del consejo admin o comisión", null=True, blank=True)

    class Meta:
        verbose_name_plural = "Jovenes"
    

    
# Inicio de la tabla que controla todos los indicadores

class Recolector(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Recolector"
    def __unicode__(self):
        return self.nombre

class Encuesta(models.Model):
    fecha = models.DateField()
    recolector = models.ForeignKey(Recolector)
    datos = generic.GenericRelation(DatosGenerales)
    organizacion = generic.GenericRelation(Organizacion)
    migracion = generic.GenericRelation(Migracion)
    campo = generic.GenericRelation(CondicionesCampo)
    conservacion = generic.GenericRelation(Conservacion)
    abono = generic.GenericRelation(Abono)
    compra = generic.GenericRelation(Compra)
    tenencia = generic.GenericRelation(Tenencia)
    tierra = generic.GenericRelation(Tierra)
    reforestacion = generic.GenericRelation(Reforestacion)
    cultivos = generic.GenericRelation(CultivosFinca)
    finca = generic.GenericRelation(FincaAnimales)
    postcosecha = generic.GenericRelation(Postcosecha)
    problema = generic.GenericRelation(Problema)
    ingreso = generic.GenericRelation(IngresoFamiliar)
    otrosingresos= generic.GenericRelation(OtrosIngresos)
    aporte = generic.GenericRelation(Aportar)
    destinar = generic.GenericRelation(Destinar)
    tipo = generic.GenericRelation(TipoCasa)
    detalle = generic.GenericRelation(DetalleCasa)
    propiedades = generic.GenericRelation(Propiedades)
    herramientas = generic.GenericRelation(Herramientas)
    transporte = generic.GenericRelation(Transporte)
    seguridad = generic.GenericRelation(Seguridad)
    consume = generic.GenericRelation(Consume)
    escasez = generic.GenericRelation(Escasez)
    produccion_maiz = generic.GenericRelation(ProduccionMaiz)
    riego = generic.GenericRelation(Riego)
    agua = generic.GenericRelation(Agua)
    ahorro = generic.GenericRelation(Ahorro)
    credito = generic.GenericRelation(Credito)
    salud = generic.GenericRelation(Salud)
    enfermedad = generic.GenericRelation(Enfermedades)
    cancer = generic.GenericRelation(Cancer)
    mental = generic.GenericRelation(Mental)
    educacion_jovenes = generic.GenericRelation(EducacionJovenes)
    jovenes = generic.GenericRelation(Jovenes)
    
    def __unicode__(self):
        return self.datos.all()[0].nombre
        
    def nombre_datos(self):
        return self.datos.all()[0].datos
    def nombre_socios(self):
        return self.datos.all()[0].nombre
    def comunidades(self):
        return self.datos.all()[0].comunidad
    def municipios(self):
        return self.datos.all()[0].comunidad.municipio

