# -*- coding: UTF-8 -*-
from django.db import models
from lugar.models import Comunidad
from django.contrib.contenttypes import generic
from django.contrib.contenttypes.models import ContentType


CHOICE_SEX = ((1,'Hombre'),(2,'Mujer'))

class Cooperativa(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
                
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
    tipo1 = models.CharField('Tipo de tecnología productiva en café', max_length=200, null=True, blank=True)
    tipo2 = models.CharField('Tipo de certificación en café', max_length=200, null=True, blank=True)
    def __unicode__(self):
        return self.nombre.nombre
        
#Modelo 2. Indicador de fortalecimiento organizativo (Organización)

class Beneficios(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Organizacion-Beneficios Socios"
    def __unicode__(self):
        return self.nombre
        
class PorqueMiembro(models.Model):
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Organizacion-Porque es Miembro"
    def __unicode__(self):
        return self.nombre
            
CHOICE_OPCION = ((1,"Si"),(2,"No"))
CHOICE_DESDE = ((1,"Menos de 5 año"),(2,"Mas de 5 años"),(3,"Hombres"),(4,"Mujeres"),(5,"Jóvenes"))

class Organizacion(models.Model):
    ''' parte de la Organizacion de la cooperativa de achuapa
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    socio = models.IntegerField('Soy socio o socia', choices=CHOICE_OPCION, null=True, blank=True)
    desde_socio = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE,null=True, blank=True)
    pertenecer = models.CharField('Cooperativa a la que pertenezco', max_length=200, null=True, blank=True)
    socio_cooperativa = models.IntegerField('Mi esposa/esposo es socio(a) de la cooperativa',
                                             choices=CHOICE_OPCION,null=True, blank=True)
    desde_socio_coop = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE, null=True, blank=True)
    hijos_socios = models.IntegerField('Mis Hijos/hijas son socio(as) de la cooperativa', 
                                        choices=CHOICE_OPCION, null=True, blank=True)
    desde_hijo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE, null=True, blank=True)
    beneficio = models.ManyToManyField(Beneficios, verbose_name="Beneficios obtenidos", null=True, blank=True)
    miembro = models.IntegerField('Es miembro del consejo de administracion', 
                                   choices=CHOICE_OPCION, null=True, blank=True)
    desde_miembro = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE, null=True, blank=True)
    conformado = models.IntegerField('El consejo de admón actual esta conformado por', choices=CHOICE_DESDE, null=True, blank=True)
    conformarse = models.IntegerField('Está de acuerdo que el consejo de Admón esté conformado por ', choices=CHOICE_DESDE, null=True, blank=True)
    miembro_trabajo = models.IntegerField('Es miembro/a de las comisiones de trabajo', choices=CHOICE_OPCION, null=True, blank=True)
    desde_trabajo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE, null=True, blank=True)
    cargo = models.IntegerField('He recibido capacitación para desempeñar mi cargo', 
                                 choices=CHOICE_OPCION, null=True, blank=True)
    desde_cargo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE, null=True, blank=True)
    no_miembro = models.IntegerField('Si no es miembro de ninguna estructura, estaria interesado en asumir un cargo', choices=CHOICE_OPCION, null=True, blank=True)
    quiero_miembro_junta = models.ManyToManyField(PorqueMiembro, verbose_name="Por qué queire ser miembro consejo", null=True, blank=True)
    
#Modelo 3. Indicador de fortalecimiento de la identidad socio-cultural y recreativa de socios,socias y sus familias
class RazonesMigracion(models.Model):
    razones = models.CharField(max_length=150)
    def __unicode__(self):
        return self.razones
        
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
    razones = models.ManyToManyField(RazonesMigracion, verbose_name="Razones por la que migra")
    
class Campo(models.Model):
    afirmacion = models.CharField(max_length=200)
    def __unicode__(self):
        return self.afirmacion
        
CHOICE_CAMPO = ((1,'Buena'),(2,'Regular'),(3,'Mala'),(4,'Mejorado'),(6,'Igual'),(7,'empeorado'))

class CondicionesCampo(models.Model):
    ''' Modelo condiciones de campo
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    pregunta = models.ForeignKey(Campo)
    respuesta = models.IntegerField(choices=CHOICE_CAMPO)
    
#class Vision(models.Model):
#    nombre = models.CharField(max_length=200)
#    def __unicode__(self):
#        return self.nombre
        
#class VisionRespuesta(models.Model):
#    repuesta = models.CharField(max_length=200)
#    def __unicode__(self):
#        return self.repuesta
        
#class VisionFuturo(models.Model):
#    '''
#        Modelo vision de futuro para gente grande
#    '''
#    content_type = models.ForeignKey(ContentType)
#    object_id = models.IntegerField(db_index=True)
#    content_object = generic.GenericForeignKey()
#    vision = models.ForeignKey(Vision)
#    respuesta = models.ManyToManyField(VisionRespuesta)

#EDAD_ACTIVIDAD = ((1,'Hombres adultos(18 años y mas)'),(2,'Mujeres adultas(18 y mas)'))
#RESPUESTA_ACTIVDAD = ((1,'Si'),(2,'No'))
    
#class Actividades(models.Model):
#    ''' Modelo actividades recreativas
#    '''
#    content_type = models.ForeignKey(ContentType)
#    object_id = models.IntegerField(db_index=True)
#    content_object = generic.GenericForeignKey()
#    actividad = models.IntegerField(choices=EDAD_ACTIVIDAD)
#    biblioteca = models.IntegerField('Acceso a biblioteca rural',choices=RESPUESTA_ACTIVDAD)
#    deporte = models.IntegerField('Practicar deporte',choices=RESPUESTA_ACTIVDAD)
#    eventos = models.IntegerField('Asistir a eventos recreativos',choices=RESPUESTA_ACTIVDAD)
#    iglesia = models.IntegerField('Asistir a la iglesia',choices=RESPUESTA_ACTIVDAD)
#    tele = models.IntegerField('Ver televisión y películas',choices=RESPUESTA_ACTIVDAD)
#    internet = models.IntegerField('Utilizar Internet', choices=RESPUESTA_ACTIVDAD)
    
#Modelo 4. Indicador de desarrollo economico productivo con enfoque ambiental y empresarial
CHOICE_TENENCIA = ((1,"Propia con escritura pública"),(2,"Propia por herencia"),(3,"Propias con promesa de venta"),(4,"Propias con titulo de reforma agraria"),(5,"Arrendada"),(6,"Sin documento"))
CHOICE_DUENO = ((1,"Hombre"),(2,"Mujer"),(3,"Mancomunado"),(4,"Parientes"),(5,"Colectivo"),(6,"No hay"))
CHOICE_CANTIDAD_TENENCIA = ((1,'1'),(2,'2'),(3,'3'),(4,'4'))

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
    class Meta:
        verbose_name_plural = "Tierra-Tipo de uso de Tierra"
    def __unicode__(self):
        return self.nombre
    
class Tierra(models.Model):
    ''' Modelo uso de tierra 
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    uso_tierra = models.ForeignKey(UsoTierra)
    areas = models.IntegerField('Areas en Mz')
    
    class Meta:
        verbose_name_plural = "Uso de Tierra"
        
class Actividades(models.Model):
    ''' Actividades para la reforestacion
    '''
    nombre = models.CharField(max_length=100)
    class Meta:
        verbose_name_plural = "Reforestación-Actividades"   
    def __unicode__(self):
        return self.nombre

class Reforestacion(models.Model):
    ''' Modelo reforestacion
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    actividad = models.ForeignKey(Actividades)
    cantidad = models.IntegerField('Cantidad de árboles sembrados')
    
#Conservacion de suelo y agua en la finca

class Combustible(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre

class Conservacion(models.Model):
    ''' Modelo conservacion de suelo y agua en la finca
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    cocinar = models.ManyToManyField(Combustible, verbose_name="¿Qué utiliza para cocinar")
    actividad = models.IntegerField('Ha hecho alguna actividad para la conservación de los suelos y agua en su finca?',choices=((1,'Si'),(2,'No')))
    cuales = models.TextField('¿Cuáles y cuanto?')
    
#Sobre uso de abono
CHOICE_ABONO = ((1,'Si'),(2,'No'))
CHOICE_PROD_ABONO = ((1,'Café'),(2,'Granos básicos'),(3,'Huerto y patio'))

class Abono(models.Model):
    ''' Modelo conservacion de suelo y agua en la finca
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    producto = models.IntegerField(choices=CHOICE_PROD_ABONO)
    respuesta = models.IntegerField(choices=CHOICE_ABONO)
    pulpa = models.IntegerField(choices=CHOICE_ABONO)
    estiercol = models.IntegerField(choices=CHOICE_ABONO)
    gallinaza = models.IntegerField(choices=CHOICE_ABONO)
    composta = models.IntegerField(choices=CHOICE_ABONO)
    lombrices = models.IntegerField(choices=CHOICE_ABONO)
    bocachi = models.IntegerField(choices=CHOICE_ABONO)
    foliar = models.IntegerField(choices=CHOICE_ABONO)
    verde = models.IntegerField('Abo. Verde', choices=CHOICE_ABONO)
    hojas = models.IntegerField('Hojas y rastrajos', choices=CHOICE_ABONO)
    quince = models.IntegerField('15-15-15', choices=CHOICE_ABONO)
    veinte = models.IntegerField('20-20-20', choices=CHOICE_ABONO)
    seis = models.IntegerField('18-6-12-4', choices=CHOICE_ABONO)
    urea = models.IntegerField('Urea-Nitrato', choices=CHOICE_ABONO)
    otros = models.TextField()
    
#Compra y aplicaciones de abonos
CHOICE_ANO = ((1,'¿Cuánto hace?'),(2,'¿Cuánto compra?'),(3,'¿Cuánto aplica?'))

class Compra(models.Model):
    ''' Modelo compra y aplicaciones de abonos
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    cuanto = models.IntegerField('Al año', choices=CHOICE_ANO)
    pulpa = models.IntegerField(choices=CHOICE_ABONO)
    estiercol = models.IntegerField(choices=CHOICE_ABONO)
    gallinaza = models.IntegerField(choices=CHOICE_ABONO)
    composta = models.IntegerField(choices=CHOICE_ABONO)
    lombrices = models.IntegerField(choices=CHOICE_ABONO)
    bocachi = models.IntegerField(choices=CHOICE_ABONO)
    foliar = models.IntegerField(choices=CHOICE_ABONO)
    verde = models.IntegerField('Abono Verde qq', choices=CHOICE_ABONO)
    quince = models.IntegerField('15-15-15', choices=CHOICE_ABONO)
    veinte = models.IntegerField('20-20-20', choices=CHOICE_ABONO)
    seis = models.IntegerField('18-6-12-4', choices=CHOICE_ABONO)
    urea = models.IntegerField('Urea-Nitrato', choices=CHOICE_ABONO)
    otros = models.TextField()
       
    

#produccion de la finca    
class Cultivos(models.Model):
    nombre = models.CharField(max_length=50)
    unidad = models.CharField(max_length=50)
    class Meta:
        verbose_name_plural = "CultivosFinca-Cultivos"
    def __unicode__(self):
        return self.nombre
    
class CultivosFinca(models.Model):
    ''' 
        indicador facil XD
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    cultivos = models.ForeignKey(Cultivos)
    total =  models.IntegerField('Producción')
    consumo = models.IntegerField('Consumo')
    venta_libre = models.IntegerField('Venta libre')
    venta_organizada = models.IntegerField('Venta organizada')
    class Meta:
        verbose_name_plural = "Cultivos de la Finca"

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

class FincaAnimales(models.Model):
    ''' 
        Modelo animales en la finca
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    animales = models.ForeignKey(Animales)
    cantidad = models.IntegerField()
    produccion = models.ForeignKey(ProductoAnimal)
    consumo = models.IntegerField('Consumo')
    venta_libre = models.IntegerField('Venta libre')
    venta_organizada = models.IntegerField('Venta organizada')
    
    class Meta:
        verbose_name_plural = "Finca y produccion"
        
#post cosecha, de los alimentos que produce cuanto almacena, como lo almacena, quien es el responsable

class Postcosecha(models.Model):
    ''' 
        Modelo post cosecha
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    producto = models.ForeignKey(Cultivos)
    responsable = models.CharField(max_length=200, null=True, blank=True)
    cantidad = models.IntegerField('Cantidad almacenada qq/und')
    tipo = models.CharField('Tipo de almacenaje', max_length=200, null=True, blank=True)

class Problema(models.Model):
    ''' 
        Modelo principales problemas en el almacenamiento y como lo solucionan
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    problema = models.CharField(max_length=200)
    solucion = models.CharField(max_length=200)
       
        
#Ingreso familiar
CHOICE_VENDIO = ((1,"Comunidad"),(2,"Intermediario"),(3,"Ferias"),(4,"Cooperativa"))
CHOICE_MANEJA = ((1,"Hombre"),(2,"Mujer"),(3,"Ambos"),(4,"Hijos/as"))
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
    cantidad = models.IntegerField('Cantidad vendida')
    precio = models.IntegerField('Precio de venta por unidad')
    quien_vendio = models.IntegerField(choices=CHOICE_VENDIO)
    maneja_negocio = models.IntegerField(choices=CHOICE_MANEJA)
    
    class Meta:
        verbose_name_plural = "Ingreso Familiar"
        
class Fuentes(models.Model):
    nombre = models.CharField(max_length=50)
    class Meta:
        verbose_name_plural = "OtrosIngresoFamiliar-Fuentes"
    def __unicode__(self):
        return self.nombre
    
class OtrosIngresos(models.Model):
    '''
        Otros ingresos
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    fuente = models.ForeignKey(Fuentes)
    tipo = models.CharField('Tipo de trabajo', max_length=100)
    meses = models.IntegerField('Meses')
    ingreso = models.IntegerField('Ingreso por mes')
    tiene_ingreso = models.IntegerField(choices=CHOICE_MANEJA)
    
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

#De los ingresos obtenidos por usted. ¿Cuánto destina a  servicios básicos?
CHOICE_DESTINAR = ((1,'Alimentos de consumo'),(2,'Producción de café'),(3,'Producción de (maíz,frijol...)'),(4,'Servicios basicos(agua,luz...)'),(5,'Educación'),(6,'Salud'))
class Destinar(models.Model):
    '''
        modelos otro mas de esos
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    servicios = models.IntegerField(choices=CHOICE_DESTINAR)
    cuanto = models.IntegerField('Del 100% que percibe cuanto destina')
        
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
    tamano = models.IntegerField('Tamaño en mt cuadrado')
    ambientes = models.IntegerField(choices=CHOICE_AMBIENTE)
    letrina = models.IntegerField(choices=CHOICE_OPCION)
    lavadero = models.IntegerField(choices=CHOICE_OPCION)
    
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
    numero = models.IntegerField()
    
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
    numero = models.IntegerField()
    
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
        
#otra gracias nueva hp
CHOICE_PREG1 = ((1,'Todos'),(2,'Más de la mitad'),(3,'Menos de la mitad'),(4,'Nada'))
CHOICE_PREG2 = ((1,'Si'),(2,'No'))
class Meses(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
CHOICE_PREG5 = ((1,'Busca alternativas de solución'),(2,'nada'),(3,'Espera que alguien busque una solución'))
CHOICE_PREG7 = ((1,'1-2 semanas'),(2,'3-4 semanas'),(3,'2 meses'),(4,'mas de 2 meses'))

class Consume(models.Model):
    ''' 
        Modelo preguntas de consumo
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    preg1 = models.IntegerField('¿Qué porcentaje de alimentos básicos que consume compra?', choices=CHOICE_PREG1, null=True, blank=True)
    preg2 = models.IntegerField('¿Siente que en alguna ocasión no ha podido Cubrir sus necesidades básicas de alimentación?', choices=CHOICE_PREG2, null=True, blank=True)
    preg3 = models.CharField('Si la respuesta es si porque motivo', max_length=200, null=True, blank=True)
    preg4 = models.ManyToManyField(Meses, verbose_name="¿Cuáles son los meses más difíciles para la familia?",null=True, blank=True)
    preg5 = models.IntegerField('¿Qué hace cuando los precios del café bajan?', choices=CHOICE_PREG5, null=True, blank=True)
    preg6 = models.CharField('¿Donde Consigue alimentos en la época de escasez? ', max_length=200, null=True, blank=True)
    preg7 = models.IntegerField('¿Por cuánto tiempo puede conseguir alimentos en ese sitio mientras dura la escasez? ', choices=CHOICE_PREG7, null=True, blank=True)
    preg8 = models.IntegerField('¿Utiliza riego en sus parcelas o huerto familiar?', choices=CHOICE_PREG2, null=True, blank=True)

class Escasez(models.Model):
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    preg1 = models.CharField('¿Qué soluciones y practicas implementa en los tiempos de escasez?', max_length=200)
    

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
    siete = models.IntegerField('2007')
    ocho = models.IntegerField('2008')
    nueve = models.IntegerField('2009')
    diez = models.IntegerField('2010')

CHOICE_RIEGO = ((1,'Huerta'),(2,'Patio'))    
class Riego(models.Model):
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    lugar = models.IntegerField(choices=CHOICE_RIEGO)
    inundacion = models.IntegerField(choices=CHOICE_PREG2)
    aspersion = models.IntegerField(choices=CHOICE_PREG2)
    goteo = models.IntegerField(choices=CHOICE_PREG2)
    regadera = models.IntegerField(choices=CHOICE_PREG2)
    panada = models.IntegerField(choices=CHOICE_PREG2)
    otro = models.CharField(max_length=200)
    

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
    distancia = models.IntegerField('La distancia de la fuente de la casa en VARAS')
    diponibilidad = models.IntegerField('Disponibilidad de agua en tiempo', choices=CHOICE_DISPONIBILIDAD)
    calidad = models.IntegerField('Calidad del agua', choices= CHOICE_CALIDAD_AGUA)
    
    class Meta:
        verbose_name_plural = "Agua"
        
# Indicador de ahorro
CHOICE_AHORRO = ((1,"Si"),(2,"No"),(3,"Menos de 5 años"),(4,"Mas de 5 años"),(5,"Hombre"),(6,"Mujer"),(7,"Ambos"))
        
class DondeAhorro(models.Model):
    nombre = models.CharField(max_length=150)
    def __unicode__(self):
        return nombre
    
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
CHOICE_DESHACER = ((1,'Quema'),(2,'Entierra'),(3,'recolección comunitaria'),(4,'basurero clandestino'),(5,'otros'))
CHOICE_AGROQUIMICO = ((1,'Para uso del hogar'),(2,'Quema'),(3,'Entierra'))

class Salud(models.Model):
    '''
        Modelos salud e higiene del hogar
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    donde = models.IntegerField('Donde realiza sus necesidades usted y su familia?', choices=CHOICE_LETRINA)
    tratamiento = models.CharField('Le da un tratamiento a los desechos humanos?', max_length=200, null=True, blank=True)
    limpieza = models.IntegerField('Cada cuanto hace limpieza alredor de su vivienda?', choices=CHOICE_LIMPIEZA)
    deshacer = models.IntegerField('De que manera se deshacen de la basura?', choices=CHOICE_DESHACER)
    agroquimico = models.IntegerField('Que hace con los envases de agroquímicos?', choices=CHOICE_AGROQUIMICO)

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
    
        
#Modelo salud fisica
#CHOICE_SALUD = ((1,"Semanal"),(2,"Quinsenal"),(3,"Mensual"),(4,"Semestral"),(5,"Trimestral"),(6,"Anual"))
#CHOICE_VISITA = ((1,'Si'),(2,'No')) 
#SEXO_CHOICES=((1,'Hombre mas de 15 años'),(2,'Mujeres mas de 15 años'),(3,'Hombres de 7 a 15 años'),(4,'Mujeres de 7 a 15 años'),(5,'Niños menos de 6 años'),(6,'Niñas menos de 6 años'))
#       
#class Salud(models.Model):
#    ''' Modelo de salud fisica
#    '''
#    content_type = models.ForeignKey(ContentType)
#    object_id = models.IntegerField(db_index=True)
#    content_object = generic.GenericForeignKey()
#    edad = models.IntegerField(choices=SEXO_CHOICES)
#    buena_salud = models.IntegerField('# Tiene buena salud', null=True, blank=True)
#    delicada_salud = models.IntegerField('# Tiene salud delicada', null=True, blank=True)
#    cronica = models.IntegerField('# Tiene enfermedad cronica', null=True, blank=True)
#    centro = models.IntegerField('Visita centro de salud', choices=CHOICE_VISITA, null=True, blank=True)
#    medico = models.IntegerField('Visita medico privado', choices=CHOICE_VISITA, null=True, blank=True)
#    clinica = models.IntegerField('Visita clinica de cooperativa', choices=CHOICE_VISITA, null=True, blank=True)
#    nologra = models.IntegerField('# veces en año necesitaban algun servicio de salud y no lograron obtenerlo', null=True, blank=True)
#    frecuencia = models.IntegerField('Con que frecuencia vista la medico', choices= CHOICE_SALUD, null=True ,blank=True)
#    
#    class Meta:
#        verbose_name_plural = "Salud"
#        
##Modelo Salud reproductiva

#CHOICE_REPRO = ((1,'Hombre más de 15 años'), (2,'Hombre de 7 a 15 años'),(3,'Mujeres más de 15 años'), (4,'Mujeres de 7 a 15 años'))

#class Reproduccion(models.Model):
#    '''
#        Modelo salud reproductiva hombres y mujeres
#    '''
#    content_type = models.ForeignKey(ContentType)
#    object_id = models.IntegerField(db_index=True)
#    content_object = generic.GenericForeignKey()
#    persona = models.IntegerField(choices=CHOICE_REPRO)
#    buena_salud = models.IntegerField('# Tiene buena salud', null=True, blank=True)
#    tuvo_ets = models.IntegerField('# que tuvo alguna enfermedad de trasmision sexual', null=True, blank=True)
#    sufre_ets = models.IntegerField('# que actualmente sufre de alguna enfermedad de trasmision sexual', null=True, blank=True)
#    centro = models.IntegerField('Visita centro de salud o Hospital', choices=CHOICE_VISITA, null=True, blank=True)
#    medico = models.IntegerField('Visita medico privado', choices=CHOICE_VISITA, null=True, blank=True)
#    automedica = models.IntegerField('Se medica solo con apoyo de farmacia o familiar', choices=CHOICE_VISITA, null=True, blank=True)
    
#Modelo Información para cáncer cervicouterino
class PreguntaCancer(models.Model):
    pregunta = models.CharField(max_length=200)
    def __unicode__(self):
        return self.pregunta
        
class RespuestasCancer(models.Model):
    respuesta = models.CharField(max_length=200)
    def __unicode__(self):
        return self.respuesta
        
class Cancer(models.Model):
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    preguntas = models.ForeignKey(PreguntaCancer)
    resp = models.ForeignKey(RespuestasCancer)
    
#CANCER_MUJERES = ((1,'Mujeres de 15 a 30 años'),(2,'Mujeres de 31 a 55 años'))
#TRATA_CANCER = ((1,'Hospital'),(2,'Clinica privada'))

#class Cancer(models.Model):
#    '''
#        Modelo cancer
#    '''
#    content_type = models.ForeignKey(ContentType)
#    object_id = models.IntegerField(db_index=True)
#    content_object = generic.GenericForeignKey()
#    personas = models.IntegerField(choices= CANCER_MUJERES)
#    buena_salud = models.IntegerField('# Tiene buena salud', null=True, blank=True)
#    menstrual = models.IntegerField('# que tiene transtorno en ciclo menstrual sufriendo hemorragia y dolor',  null=True, blank=True)
#    sospecha_cancer = models.IntegerField('# sospecha algun tipo de cancer(pecho o uterino)', null=True, blank=True)
#    diagnotiscado = models.IntegerField('# Tiene diagnosticado algún tipo de cancer', null=True, blank=True)
#    tratamiento = models.IntegerField('# Recibe tratamiento para algun tipo de cáncer', null=True, blank=True)
#    donde_tratamiento = models.IntegerField('A donde esta recibiendo el tratamiento',choices=TRATA_CANCER, null=True, blank=True)
    
#Modelo salud mental para las mujeres
class PreguntaMental(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
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
    
#Indicador de desarrollo educativo, particpativo e incidencia y comunicacion de las y los jovenes
CHOICE_JOVEN_EDUCACION = ((1,'Hombre adultos más de 15 años'),(2,'Mujeres adultas más de 15 años'),(3,'Hombres jóvenes de 7 a 15 años'),(4,'Mujeres jóvenes más de quince años'),(5,'Niños de 1 a 6 años'),(6,'Niñas de 1 a 6 años'))

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
class PreguntaJoven(models.Model):
    pregunta = models.CharField(max_length=200)
    def __unicode__(self):
        return self.pregunta
        
class BeneficioJoven(models.Model):
    beneficio = models.CharField(max_length=200)
    def __unicode__(self):
        return self.beneficio
        
class MiembroJoven(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre
        
class Jovenes(models.Model):
    '''
        Modelo sobre preguntas dirijidas a los y las jovenes de la familia
    '''
    content_type = models.ForeignKey(ContentType)
    object_id = models.IntegerField(db_index=True)
    content_object = generic.GenericForeignKey()
    socio = models.IntegerField('Soy socio o socia', choices=CHOICE_OPCION)
    desde_socio = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE,null=True, blank=True)
    promotor = models.IntegerField('Es promotor de su cooperativa?', choices=CHOICE_OPCION)
    beneficio = models.ManyToManyField(BeneficioJoven, verbose_name="Beneficios obtenidos", null=True, blank=True)
    miembro = models.IntegerField('Es miembro del consejo de administracion', 
                                   choices=CHOICE_OPCION, null=True, blank=True)
    desde_miembro = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE,null=True, blank=True)
    conformado = models.IntegerField('El consejo de admón actual esta conformado por', choices=CHOICE_DESDE, null=True, blank=True)
    conformarse = models.IntegerField('El consejo de admón debe conformarse por', choices=CHOICE_DESDE, null=True, blank=True)
    miembro_trabajo = models.IntegerField('Es miembro/a de las comisiones de trabajo', choices=CHOICE_OPCION, null=True, blank=True)
    desde_miembro = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE, null=True, blank=True)
    cargo = models.IntegerField('He recibido capacitación para desempeñar mi cargo', 
                                 choices=CHOICE_OPCION, null=True, blank=True)
    desde_cargo = models.IntegerField('Desde Cuando', choices=CHOICE_DESDE, null=True, blank=True)
    no_miembro = models.IntegerField('Si no es miembro de ninguna estructura, estaria interesado en asumir un cargo', choices=CHOICE_OPCION, null=True, blank=True)
    quiero_miembro_junta = models.ManyToManyField(MiembroJoven, verbose_name="Quiero ser miembro del consejo admin o comisión", null=True, blank=True)
    
#Vision del futuro
#class Quedar(models.Model):
#    nombre = models.CharField(max_length=200)
#    def __unicode__(self):
#        return self.nombre
#        
#class NoQuedar(models.Model):
#    nombre = models.CharField(max_length=200)
#    def __unicode__(self):
#        return self.nombre
#CHOICE_FUTURO = ((1,'Si'),(2,'No'),(3,'No estoy seguro'))

#class VisionFuturoJovenes(models.Model):
#    '''
#        Modelo visión del futuro
#    '''
#    content_type = models.ForeignKey(ContentType)
#    object_id = models.IntegerField(db_index=True)
#    content_object = generic.GenericForeignKey()
#    viviendo = models.IntegerField('De aqui a 5 años los y las jóvenes de la familia todavia estarían viviendo en la finca', choices=CHOICE_FUTURO, null=True, blank=True)
#    quedar = models.ManyToManyField(Quedar, verbose_name="Porque se van a quedar", null=True, blank=True)
#    no_quedar = models.ManyToManyField(NoQuedar, verbose_name="Porque no se van a quedar", null=True, blank=True)
#    
##Actividades recreativas
#CHOICE_JOVEN_ACTIVIDAD = ((1,'Adolecentes hombres(12 a 17 años)'),(2,'Adolecentes mujeres(12 a 17 años)'),(3,'Niños(menos de 12 años)'),(4,'Niñas(menos de 12 años)'))
#ACTI_CHOICE =((1,'Si'),(2,'No'))
#class ActividadesJovenes(models.Model):
#    '''
#        Modelo actividades recreativas 
#    '''
#    content_type = models.ForeignKey(ContentType)
#    object_id = models.IntegerField(db_index=True)
#    content_object = generic.GenericForeignKey()
#    actividades = models.IntegerField(choices=CHOICE_JOVEN_ACTIVIDAD)
#    biblioteca = models.IntegerField('Acceso a biblioteca rural',choices=ACTI_CHOICE, null=True, blank=True)
#    deporte = models.IntegerField('Practicar deportes',choices=ACTI_CHOICE, null=True, blank=True)
#    eventos = models.IntegerField('Asistir a eventos recreativos',choices=ACTI_CHOICE, null=True, blank=True)
#    iglesia = models.IntegerField('Asistir a la iglesia',choices=ACTI_CHOICE, null=True, blank=True)
#    television = models.IntegerField('Ver televisión y peliculas',choices=ACTI_CHOICE, null=True, blank=True)
#    internet = models.IntegerField('Utilizar Internet',choices=ACTI_CHOICE, null=True, blank=True)
    
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
    consevacion = generic.GenericRelation(Conservacion)
    abono = generic.GenericRelation(Abono)
    compra = generic.GenericRelation(Compra)
#    vision = generic.GenericRelation(VisionFuturo)
    actividades = generic.GenericRelation(Actividades)
    tenencia = generic.GenericRelation(Tenencia)
    tierra = generic.GenericRelation(Tierra)
    reforestacion = generic.GenericRelation(Reforestacion)
    conservacion = generic.GenericRelation(Conservacion,related_name='nombre')
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
#    reproduccion = generic.GenericRelation(Reproduccion)
    enfermedad = generic.GenericRelation(Enfermedades)
    cancer = generic.GenericRelation(Cancer)
    mental = generic.GenericRelation(Mental)
    educacion_jovenes = generic.GenericRelation(EducacionJovenes)
    jovenes = generic.GenericRelation(Jovenes)
#    vision_jovenes = generic.GenericRelation(VisionFuturoJovenes)
#    actividades_jovenes = generic.GenericRelation(ActividadesJovenes)
    
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
    
