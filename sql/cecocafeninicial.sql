-- MySQL dump 10.13  Distrib 5.1.47, for redhat-linux-gnu (i386)
--
-- Host: localhost    Database: cecocafen
-- ------------------------------------------------------
-- Server version	5.1.47

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add cooperativa',9,'add_cooperativa'),(26,'Can change cooperativa',9,'change_cooperativa'),(27,'Can delete cooperativa',9,'delete_cooperativa'),(28,'Can add tecnologia',10,'add_tecnologia'),(29,'Can change tecnologia',10,'change_tecnologia'),(30,'Can delete tecnologia',10,'delete_tecnologia'),(31,'Can add certificacion',11,'add_certificacion'),(32,'Can change certificacion',11,'change_certificacion'),(33,'Can delete certificacion',11,'delete_certificacion'),(34,'Can add datos generales',12,'add_datosgenerales'),(35,'Can change datos generales',12,'change_datosgenerales'),(36,'Can delete datos generales',12,'delete_datosgenerales'),(37,'Can add beneficios',13,'add_beneficios'),(38,'Can change beneficios',13,'change_beneficios'),(39,'Can delete beneficios',13,'delete_beneficios'),(40,'Can add porque miembro',14,'add_porquemiembro'),(41,'Can change porque miembro',14,'change_porquemiembro'),(42,'Can delete porque miembro',14,'delete_porquemiembro'),(43,'Can add admon actual',15,'add_admonactual'),(44,'Can change admon actual',15,'change_admonactual'),(45,'Can delete admon actual',15,'delete_admonactual'),(46,'Can add organizacion',16,'add_organizacion'),(47,'Can change organizacion',16,'change_organizacion'),(48,'Can delete organizacion',16,'delete_organizacion'),(49,'Can add razones migracion',17,'add_razonesmigracion'),(50,'Can change razones migracion',17,'change_razonesmigracion'),(51,'Can delete razones migracion',17,'delete_razonesmigracion'),(52,'Can add migracion',18,'add_migracion'),(53,'Can change migracion',18,'change_migracion'),(54,'Can delete migracion',18,'delete_migracion'),(55,'Can add campo',19,'add_campo'),(56,'Can change campo',19,'change_campo'),(57,'Can delete campo',19,'delete_campo'),(58,'Can add condiciones campo',20,'add_condicionescampo'),(59,'Can change condiciones campo',20,'change_condicionescampo'),(60,'Can delete condiciones campo',20,'delete_condicionescampo'),(61,'Can add tenencia',21,'add_tenencia'),(62,'Can change tenencia',21,'change_tenencia'),(63,'Can delete tenencia',21,'delete_tenencia'),(64,'Can add uso tierra',22,'add_usotierra'),(65,'Can change uso tierra',22,'change_usotierra'),(66,'Can delete uso tierra',22,'delete_usotierra'),(67,'Can add tierra',23,'add_tierra'),(68,'Can change tierra',23,'change_tierra'),(69,'Can delete tierra',23,'delete_tierra'),(70,'Can add actividades',24,'add_actividades'),(71,'Can change actividades',24,'change_actividades'),(72,'Can delete actividades',24,'delete_actividades'),(73,'Can add reforestacion',25,'add_reforestacion'),(74,'Can change reforestacion',25,'change_reforestacion'),(75,'Can delete reforestacion',25,'delete_reforestacion'),(76,'Can add combustible',26,'add_combustible'),(77,'Can change combustible',26,'change_combustible'),(78,'Can delete combustible',26,'delete_combustible'),(79,'Can add actividad conservacion',27,'add_actividadconservacion'),(80,'Can change actividad conservacion',27,'change_actividadconservacion'),(81,'Can delete actividad conservacion',27,'delete_actividadconservacion'),(82,'Can add conservacion',28,'add_conservacion'),(83,'Can change conservacion',28,'change_conservacion'),(84,'Can delete conservacion',28,'delete_conservacion'),(85,'Can add abono',29,'add_abono'),(86,'Can change abono',29,'change_abono'),(87,'Can delete abono',29,'delete_abono'),(88,'Can add compra',30,'add_compra'),(89,'Can change compra',30,'change_compra'),(90,'Can delete compra',30,'delete_compra'),(91,'Can add cultivos',31,'add_cultivos'),(92,'Can change cultivos',31,'change_cultivos'),(93,'Can delete cultivos',31,'delete_cultivos'),(94,'Can add cultivos finca',32,'add_cultivosfinca'),(95,'Can change cultivos finca',32,'change_cultivosfinca'),(96,'Can delete cultivos finca',32,'delete_cultivosfinca'),(97,'Can add animales',33,'add_animales'),(98,'Can change animales',33,'change_animales'),(99,'Can delete animales',33,'delete_animales'),(100,'Can add producto animal',34,'add_productoanimal'),(101,'Can change producto animal',34,'change_productoanimal'),(102,'Can delete producto animal',34,'delete_productoanimal'),(103,'Can add finca animales',35,'add_fincaanimales'),(104,'Can change finca animales',35,'change_fincaanimales'),(105,'Can delete finca animales',35,'delete_fincaanimales'),(106,'Can add tipo almacenaje',36,'add_tipoalmacenaje'),(107,'Can change tipo almacenaje',36,'change_tipoalmacenaje'),(108,'Can delete tipo almacenaje',36,'delete_tipoalmacenaje'),(109,'Can add postcosecha',37,'add_postcosecha'),(110,'Can change postcosecha',37,'change_postcosecha'),(111,'Can delete postcosecha',37,'delete_postcosecha'),(112,'Can add tipo problema',38,'add_tipoproblema'),(113,'Can change tipo problema',38,'change_tipoproblema'),(114,'Can delete tipo problema',38,'delete_tipoproblema'),(115,'Can add solucion',39,'add_solucion'),(116,'Can change solucion',39,'change_solucion'),(117,'Can delete solucion',39,'delete_solucion'),(118,'Can add problema',40,'add_problema'),(119,'Can change problema',40,'change_problema'),(120,'Can delete problema',40,'delete_problema'),(121,'Can add rubros',41,'add_rubros'),(122,'Can change rubros',41,'change_rubros'),(123,'Can delete rubros',41,'delete_rubros'),(124,'Can add ingreso familiar',42,'add_ingresofamiliar'),(125,'Can change ingreso familiar',42,'change_ingresofamiliar'),(126,'Can delete ingreso familiar',42,'delete_ingresofamiliar'),(127,'Can add fuentes',43,'add_fuentes'),(128,'Can change fuentes',43,'change_fuentes'),(129,'Can delete fuentes',43,'delete_fuentes'),(130,'Can add tipo trabajo',44,'add_tipotrabajo'),(131,'Can change tipo trabajo',44,'change_tipotrabajo'),(132,'Can delete tipo trabajo',44,'delete_tipotrabajo'),(133,'Can add otros ingresos',45,'add_otrosingresos'),(134,'Can change otros ingresos',45,'change_otrosingresos'),(135,'Can delete otros ingresos',45,'delete_otrosingresos'),(136,'Can add aportar',46,'add_aportar'),(137,'Can change aportar',46,'change_aportar'),(138,'Can delete aportar',46,'delete_aportar'),(139,'Can add destinar',47,'add_destinar'),(140,'Can change destinar',47,'change_destinar'),(141,'Can delete destinar',47,'delete_destinar'),(142,'Can add piso',48,'add_piso'),(143,'Can change piso',48,'change_piso'),(144,'Can delete piso',48,'delete_piso'),(145,'Can add techo',49,'add_techo'),(146,'Can change techo',49,'change_techo'),(147,'Can delete techo',49,'delete_techo'),(148,'Can add tipo casa',50,'add_tipocasa'),(149,'Can change tipo casa',50,'change_tipocasa'),(150,'Can delete tipo casa',50,'delete_tipocasa'),(151,'Can add detalle casa',51,'add_detallecasa'),(152,'Can change detalle casa',51,'change_detallecasa'),(153,'Can delete detalle casa',51,'delete_detallecasa'),(154,'Can add equipos',52,'add_equipos'),(155,'Can change equipos',52,'change_equipos'),(156,'Can delete equipos',52,'delete_equipos'),(157,'Can add infraestructuras',53,'add_infraestructuras'),(158,'Can change infraestructuras',53,'change_infraestructuras'),(159,'Can delete infraestructuras',53,'delete_infraestructuras'),(160,'Can add propiedades',54,'add_propiedades'),(161,'Can change propiedades',54,'change_propiedades'),(162,'Can delete propiedades',54,'delete_propiedades'),(163,'Can add nombre herramienta',55,'add_nombreherramienta'),(164,'Can change nombre herramienta',55,'change_nombreherramienta'),(165,'Can delete nombre herramienta',55,'delete_nombreherramienta'),(166,'Can add herramientas',56,'add_herramientas'),(167,'Can change herramientas',56,'change_herramientas'),(168,'Can delete herramientas',56,'delete_herramientas'),(169,'Can add nombre transporte',57,'add_nombretransporte'),(170,'Can change nombre transporte',57,'change_nombretransporte'),(171,'Can delete nombre transporte',57,'delete_nombretransporte'),(172,'Can add transporte',58,'add_transporte'),(173,'Can change transporte',58,'change_transporte'),(174,'Can delete transporte',58,'delete_transporte'),(175,'Can add alimentos',59,'add_alimentos'),(176,'Can change alimentos',59,'change_alimentos'),(177,'Can delete alimentos',59,'delete_alimentos'),(178,'Can add seguridad',60,'add_seguridad'),(179,'Can change seguridad',60,'change_seguridad'),(180,'Can delete seguridad',60,'delete_seguridad'),(181,'Can add meses',61,'add_meses'),(182,'Can change meses',61,'change_meses'),(183,'Can delete meses',61,'delete_meses'),(184,'Can add consume',62,'add_consume'),(185,'Can change consume',62,'change_consume'),(186,'Can delete consume',62,'delete_consume'),(187,'Can add solucion escasez',63,'add_solucionescasez'),(188,'Can change solucion escasez',63,'change_solucionescasez'),(189,'Can delete solucion escasez',63,'delete_solucionescasez'),(190,'Can add escasez',64,'add_escasez'),(191,'Can change escasez',64,'change_escasez'),(192,'Can delete escasez',64,'delete_escasez'),(193,'Can add produccion maiz',65,'add_produccionmaiz'),(194,'Can change produccion maiz',65,'change_produccionmaiz'),(195,'Can delete produccion maiz',65,'delete_produccionmaiz'),(196,'Can add riego',66,'add_riego'),(197,'Can change riego',66,'change_riego'),(198,'Can delete riego',66,'delete_riego'),(199,'Can add agua',67,'add_agua'),(200,'Can change agua',67,'change_agua'),(201,'Can delete agua',67,'delete_agua'),(202,'Can add donde ahorro',68,'add_dondeahorro'),(203,'Can change donde ahorro',68,'change_dondeahorro'),(204,'Can delete donde ahorro',68,'delete_dondeahorro'),(205,'Can add ahorra porque',69,'add_ahorraporque'),(206,'Can change ahorra porque',69,'change_ahorraporque'),(207,'Can delete ahorra porque',69,'delete_ahorraporque'),(208,'Can add ahorro',70,'add_ahorro'),(209,'Can change ahorro',70,'change_ahorro'),(210,'Can delete ahorro',70,'delete_ahorro'),(211,'Can add da credito',71,'add_dacredito'),(212,'Can change da credito',71,'change_dacredito'),(213,'Can delete da credito',71,'delete_dacredito'),(214,'Can add ocupa credito',72,'add_ocupacredito'),(215,'Can change ocupa credito',72,'change_ocupacredito'),(216,'Can delete ocupa credito',72,'delete_ocupacredito'),(217,'Can add credito',73,'add_credito'),(218,'Can change credito',73,'change_credito'),(219,'Can delete credito',73,'delete_credito'),(220,'Can add tratamiento',74,'add_tratamiento'),(221,'Can change tratamiento',74,'change_tratamiento'),(222,'Can delete tratamiento',74,'delete_tratamiento'),(223,'Can add salud',75,'add_salud'),(224,'Can change salud',75,'change_salud'),(225,'Can delete salud',75,'delete_salud'),(226,'Can add enfermedades',76,'add_enfermedades'),(227,'Can change enfermedades',76,'change_enfermedades'),(228,'Can delete enfermedades',76,'delete_enfermedades'),(229,'Can add pregunta cancer',77,'add_preguntacancer'),(230,'Can change pregunta cancer',77,'change_preguntacancer'),(231,'Can delete pregunta cancer',77,'delete_preguntacancer'),(232,'Can add respuestas cancer',78,'add_respuestascancer'),(233,'Can change respuestas cancer',78,'change_respuestascancer'),(234,'Can delete respuestas cancer',78,'delete_respuestascancer'),(235,'Can add cancer',79,'add_cancer'),(236,'Can change cancer',79,'change_cancer'),(237,'Can delete cancer',79,'delete_cancer'),(238,'Can add pregunta mental',80,'add_preguntamental'),(239,'Can change pregunta mental',80,'change_preguntamental'),(240,'Can delete pregunta mental',80,'delete_preguntamental'),(241,'Can add mental',81,'add_mental'),(242,'Can change mental',81,'change_mental'),(243,'Can delete mental',81,'delete_mental'),(244,'Can add educacion jovenes',82,'add_educacionjovenes'),(245,'Can change educacion jovenes',82,'change_educacionjovenes'),(246,'Can delete educacion jovenes',82,'delete_educacionjovenes'),(247,'Can add pregunta joven',83,'add_preguntajoven'),(248,'Can change pregunta joven',83,'change_preguntajoven'),(249,'Can delete pregunta joven',83,'delete_preguntajoven'),(250,'Can add beneficio joven',84,'add_beneficiojoven'),(251,'Can change beneficio joven',84,'change_beneficiojoven'),(252,'Can delete beneficio joven',84,'delete_beneficiojoven'),(253,'Can add miembro joven',85,'add_miembrojoven'),(254,'Can change miembro joven',85,'change_miembrojoven'),(255,'Can delete miembro joven',85,'delete_miembrojoven'),(256,'Can add jovenes',86,'add_jovenes'),(257,'Can change jovenes',86,'change_jovenes'),(258,'Can delete jovenes',86,'delete_jovenes'),(259,'Can add recolector',87,'add_recolector'),(260,'Can change recolector',87,'change_recolector'),(261,'Can delete recolector',87,'delete_recolector'),(262,'Can add encuesta',88,'add_encuesta'),(263,'Can change encuesta',88,'change_encuesta'),(264,'Can delete encuesta',88,'delete_encuesta'),(265,'Can add departamento',89,'add_departamento'),(266,'Can change departamento',89,'change_departamento'),(267,'Can delete departamento',89,'delete_departamento'),(268,'Can add municipio',90,'add_municipio'),(269,'Can change municipio',90,'change_municipio'),(270,'Can delete municipio',90,'delete_municipio'),(271,'Can add comunidad',91,'add_comunidad'),(272,'Can change comunidad',91,'change_comunidad'),(273,'Can delete comunidad',91,'delete_comunidad');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'crocha','','','carlos@simas.org.ni','sha1$54e34$f033ababe4c011f2326a058ff34e703be4995a88',1,1,1,'2010-08-05 20:27:53','2010-08-05 20:27:11');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2010-08-05 20:37:48',1,13,'1','Obtener crédito para la producción',1,''),(2,'2010-08-05 20:37:58',1,13,'2','Suministro de equipos',1,''),(3,'2010-08-05 20:38:11',1,13,'3','Tener servicio de asistencia técnica y/o de capacitaciones',1,''),(4,'2010-08-05 20:38:20',1,13,'4','Fondos para retención de cosecha',1,''),(5,'2010-08-05 20:38:29',1,13,'5','Comercializar mejor y obtener mejor precio',1,''),(6,'2010-08-05 20:38:38',1,13,'6','Obtener mejores beneficios familiares',1,''),(7,'2010-08-05 20:38:46',1,13,'7','Proyectos sociales',1,''),(8,'2010-08-05 20:38:55',1,13,'8','Proyectos productivos',1,''),(9,'2010-08-05 20:40:26',1,15,'1','Hombres',1,''),(10,'2010-08-05 20:40:31',1,15,'2','Mujeres',1,''),(11,'2010-08-05 20:40:37',1,15,'3','Jovenes',1,''),(12,'2010-08-05 20:41:15',1,14,'1','Para apoyar a la cooperativa',1,''),(13,'2010-08-05 20:41:25',1,14,'2','Para asegurar que todo marche bien',1,''),(14,'2010-08-05 20:41:34',1,14,'3','Para asegurar la participación de las mujeres',1,''),(15,'2010-08-05 20:41:45',1,14,'4','Para defender derechos de las mujeres y jóvenes',1,''),(16,'2010-08-05 20:42:34',1,17,'1','Tiene trabajo afuera',1,''),(17,'2010-08-05 20:42:42',1,17,'2','Huyendo de alguna persona',1,''),(18,'2010-08-05 20:42:52',1,17,'3','Acompañando un familiar',1,''),(19,'2010-08-05 20:43:04',1,17,'4','Estudio',1,''),(20,'2010-08-05 20:43:40',1,17,'5','Estudian afuera',1,''),(21,'2010-08-05 20:44:02',1,17,'6','Viven con otro familiar',1,''),(22,'2010-08-05 20:45:01',1,19,'1','Actualmente la Seguridad de tierra y propiedad es',1,''),(23,'2010-08-05 20:45:11',1,19,'2','Actualmente la posibilidad de tener ingreso',1,''),(24,'2010-08-05 20:45:21',1,19,'3','Actualmente el acceso de educación de niños y niñas es',1,''),(25,'2010-08-05 20:45:32',1,19,'4','Actualmente el acceso de servicio de salud es',1,''),(26,'2010-08-05 20:45:41',1,19,'5','Actualmente el transporte para acceso a la comunidad es',1,''),(27,'2010-08-05 20:45:51',1,19,'6','Actualmente el servicio de la luz es',1,''),(28,'2010-08-05 20:46:00',1,19,'7','Actualmente el acceso a agua potable es',1,''),(29,'2010-08-05 20:46:09',1,19,'8','Actualmente el servicio de telefonía y TV es',1,''),(30,'2010-08-05 20:46:20',1,19,'9','Actualmente la situación de la seguridad personal es',1,''),(31,'2010-08-05 20:47:28',1,22,'1','Área de Café Productivo',1,''),(32,'2010-08-05 20:47:42',1,22,'2','Área de Café Desarrollo',1,''),(33,'2010-08-05 20:47:49',1,22,'3','Otros Cultivos agrícolas',1,''),(34,'2010-08-05 20:47:58',1,22,'4','Huerto de patio',1,''),(35,'2010-08-05 20:48:06',1,22,'5','Infraestructura',1,''),(36,'2010-08-05 20:49:10',1,22,'6','Bosque',1,''),(37,'2010-08-05 20:49:28',1,22,'7','Tacotales',1,''),(38,'2010-08-05 20:49:37',1,22,'8','Plantaciones  forestal',1,''),(39,'2010-08-05 20:49:46',1,22,'9','Áreas de pastos abierto',1,''),(40,'2010-08-05 20:49:57',1,22,'10','Áreas de pastos con árboles',1,''),(41,'2010-08-05 20:50:53',1,24,'1','Enriquecimiento de los bosques',1,''),(42,'2010-08-05 20:51:02',1,24,'2','Protección de fuentes de agua',1,''),(43,'2010-08-05 20:51:11',1,24,'3','Establecimiento de cercas viva',1,''),(44,'2010-08-05 20:51:20',1,24,'4','Plantaciones forestales',1,''),(45,'2010-08-05 20:51:27',1,24,'5','Siembra de árboles en potrero',1,''),(46,'2010-08-05 20:51:36',1,24,'6','Siembra de árboles en cafetales',1,''),(47,'2010-08-05 20:51:45',1,24,'7','Establecimiento de viveros',1,''),(48,'2010-08-05 20:51:53',1,24,'8','Parcelas frutales',1,''),(49,'2010-08-05 20:52:08',1,24,'9','En Huerto de Patio',1,''),(50,'2010-08-05 20:55:28',1,27,'1','Barreras vivas',1,''),(51,'2010-08-05 20:55:38',1,27,'2','Barreras muertas',1,''),(52,'2010-08-05 20:55:47',1,27,'3','Diques de contencion',1,''),(53,'2010-08-05 20:55:56',1,27,'4','Azequias',1,''),(54,'2010-08-05 20:56:06',1,27,'5','cercas vivas',1,''),(55,'2010-08-05 20:56:20',1,27,'6','Temazos',1,''),(56,'2010-08-05 20:57:36',1,26,'1','Gas',1,''),(57,'2010-08-05 20:57:44',1,26,'2','Carbón',1,''),(58,'2010-08-05 20:57:52',1,26,'3','Leña',1,''),(59,'2010-08-05 20:58:03',1,26,'4','Biodigestor',1,''),(60,'2010-08-05 21:00:05',1,31,'1','Maíz',1,''),(61,'2010-08-05 21:00:16',1,31,'2','Frijol',1,''),(62,'2010-08-05 21:00:32',1,31,'3','Cítricos',1,''),(63,'2010-08-05 21:00:49',1,31,'4','Café',1,''),(64,'2010-08-05 21:01:01',1,31,'5','Sorgo',1,''),(65,'2010-08-05 21:01:11',1,31,'6','Millón',1,''),(66,'2010-08-05 21:01:25',1,31,'7','Tubérculos',1,''),(67,'2010-08-05 21:01:39',1,31,'8','Hortalizas',1,''),(68,'2010-08-05 21:01:50',1,31,'9','Parras',1,''),(69,'2010-08-05 21:02:02',1,31,'10','Guineo',1,''),(70,'2010-08-05 21:02:17',1,31,'11','Plátano',1,''),(71,'2010-08-05 21:03:42',1,33,'1','Vacas',1,''),(72,'2010-08-05 21:03:50',1,33,'2','Vaquillas',1,''),(73,'2010-08-05 21:04:00',1,33,'3','Toros',1,''),(74,'2010-08-05 21:04:09',1,33,'4','Novillo',1,''),(75,'2010-08-05 21:04:20',1,33,'5','Bueyes',1,''),(76,'2010-08-05 21:04:30',1,33,'6','Bestias',1,''),(77,'2010-08-05 21:04:38',1,33,'7','Pelibuey',1,''),(78,'2010-08-05 21:04:46',1,33,'8','Cerdos',1,''),(79,'2010-08-05 21:04:56',1,33,'9','Aves de Corral',1,''),(80,'2010-08-05 21:05:04',1,33,'10','Colmenas',1,''),(81,'2010-08-05 21:05:49',1,34,'1','Venta de Vacas en pie',1,''),(82,'2010-08-05 21:06:07',1,34,'2','Leche',1,''),(83,'2010-08-05 21:06:21',1,34,'3','Cuajada ',1,''),(84,'2010-08-05 21:06:36',1,34,'4','Queso',1,''),(85,'2010-08-05 21:06:51',1,34,'5','Crema',1,''),(86,'2010-08-05 21:07:06',1,34,'6','Carne',1,''),(87,'2010-08-05 21:07:35',1,34,'7','Carne de cerdo',1,''),(88,'2010-08-05 21:07:56',1,34,'8','Huevo',1,''),(89,'2010-08-05 21:08:17',1,34,'9','Carne de ave',1,''),(90,'2010-08-05 21:08:30',1,34,'10','Miel',1,''),(91,'2010-08-05 21:11:52',1,36,'1','SM',1,''),(92,'2010-08-05 21:12:03',1,36,'2','TM',1,''),(93,'2010-08-05 21:12:12',1,36,'3','TR',1,''),(94,'2010-08-05 21:12:22',1,36,'4','S',1,''),(95,'2010-08-05 21:12:31',1,36,'5','BP',1,''),(96,'2010-08-05 21:12:50',1,36,'6','B',1,''),(97,'2010-08-05 21:14:27',1,38,'1','Humedad',1,''),(98,'2010-08-05 21:14:36',1,38,'2','Insectos',1,''),(99,'2010-08-05 21:14:44',1,38,'3','Roedores',1,''),(100,'2010-08-05 21:15:10',1,39,'1','BS',1,''),(101,'2010-08-05 21:15:17',1,39,'2','CG',1,''),(102,'2010-08-05 21:15:24',1,39,'3','UC',1,''),(103,'2010-08-05 21:15:32',1,39,'4','UT',1,''),(104,'2010-08-05 21:15:40',1,39,'5','AA',1,''),(105,'2010-08-05 21:18:47',1,41,'1','Café',1,''),(106,'2010-08-05 21:18:59',1,41,'2','Guineo',1,''),(107,'2010-08-05 21:19:10',1,41,'3','Plátano',1,''),(108,'2010-08-05 21:19:21',1,41,'4','Maíz',1,''),(109,'2010-08-05 21:19:30',1,41,'5','Frijol',1,''),(110,'2010-08-05 21:19:40',1,41,'6','Sorgo ',1,''),(111,'2010-08-05 21:19:52',1,41,'7','Tuberculos',1,''),(112,'2010-08-05 21:20:06',1,41,'8','Aves de corral',1,''),(113,'2010-08-05 21:20:17',1,41,'9','Naranja',1,''),(114,'2010-08-05 21:20:28',1,41,'10','Tomate',1,''),(115,'2010-08-05 21:20:39',1,41,'11','Limones',1,''),(116,'2010-08-05 21:20:50',1,41,'12','Repollo',1,''),(117,'2010-08-05 21:21:01',1,41,'13','Huevos',1,''),(118,'2010-08-05 21:21:12',1,41,'14','Maracuya',1,''),(119,'2010-08-05 21:21:23',1,41,'15','Queso',1,''),(120,'2010-08-05 21:21:33',1,41,'16','Leche',1,''),(121,'2010-08-05 21:21:47',1,41,'17','Cuajada',1,''),(122,'2010-08-05 21:21:57',1,41,'18','Vaca',1,''),(123,'2010-08-05 21:22:09',1,41,'19','Pelibuey',1,''),(124,'2010-08-05 21:22:20',1,41,'20','Cerdo',1,''),(125,'2010-08-05 21:22:35',1,41,'21','Madera',1,''),(126,'2010-08-05 21:22:51',1,41,'22','Leña',1,''),(127,'2010-08-05 21:23:08',1,41,'23','Miel de abeja',1,''),(128,'2010-08-05 21:25:10',1,43,'1','Salarios',1,''),(129,'2010-08-05 21:25:17',1,43,'2','Negocios',1,''),(130,'2010-08-05 21:25:24',1,43,'3','Remesas',1,''),(131,'2010-08-05 21:25:33',1,43,'4','Alquiler',1,''),(132,'2010-08-05 21:26:40',1,44,'1','MO',1,''),(133,'2010-08-05 21:26:51',1,44,'2','M',1,''),(134,'2010-08-05 21:27:04',1,44,'3','C',1,''),(135,'2010-08-05 21:27:12',1,44,'4','I',1,''),(136,'2010-08-05 21:27:25',1,44,'5','P',1,''),(137,'2010-08-05 21:27:34',1,44,'6','Pan',1,''),(138,'2010-08-05 21:27:43',1,44,'7','Cos',1,''),(139,'2010-08-05 21:27:51',1,44,'8','Com',1,''),(140,'2010-08-05 21:28:01',1,44,'9','Nacional y Extranjero',1,''),(141,'2010-08-05 21:28:17',1,44,'10','T',1,''),(142,'2010-08-05 21:28:27',1,44,'11','E',1,''),(143,'2010-08-05 21:28:35',1,44,'12','B',1,''),(144,'2010-08-05 21:28:45',1,44,'13','H',1,''),(145,'2010-08-05 21:31:23',1,48,'1','Tierra',1,''),(146,'2010-08-05 21:31:37',1,48,'2','Ladrillo de barro',1,''),(147,'2010-08-05 21:31:46',1,48,'3','Embaldosado',1,''),(148,'2010-08-05 21:31:54',1,48,'4','Cemento fino',1,''),(149,'2010-08-05 21:32:01',1,48,'5','Cerámica',1,''),(150,'2010-08-05 21:32:27',1,49,'1','Plástico',1,''),(151,'2010-08-05 21:32:35',1,49,'2','Paja',1,''),(152,'2010-08-05 21:32:44',1,49,'3','Teja de madera',1,''),(153,'2010-08-05 21:32:52',1,49,'4','Teja de barro',1,''),(154,'2010-08-05 21:32:59',1,49,'5','Zinc',1,''),(155,'2010-08-05 21:34:32',1,52,'1','Despulpadora',1,''),(156,'2010-08-05 21:34:45',1,52,'2','Cajillas secadoras de café',1,''),(157,'2010-08-05 21:34:56',1,52,'3','Manguera riego',1,''),(158,'2010-08-05 21:35:06',1,52,'4','Sistema de riego',1,''),(159,'2010-08-05 21:35:14',1,52,'5','Picadora',1,''),(160,'2010-08-05 21:35:21',1,52,'6','Motor de riego',1,''),(161,'2010-08-05 21:35:28',1,52,'7','Carreta',1,''),(162,'2010-08-05 21:35:36',1,52,'8','Arado',1,''),(163,'2010-08-05 21:35:43',1,52,'9','Motosierra',1,''),(164,'2010-08-05 21:35:52',1,52,'10','Panel solar',1,''),(165,'2010-08-05 21:35:59',1,52,'11','Bomba de asperjar',1,''),(166,'2010-08-05 21:36:07',1,52,'12','Bomba de Motor',1,''),(167,'2010-08-05 21:36:15',1,52,'13','Motor',1,''),(168,'2010-08-05 21:36:35',1,52,'14','Plancha',1,''),(169,'2010-08-05 21:36:43',1,52,'15','Radio',1,''),(170,'2010-08-05 21:36:52',1,52,'16','TV',1,''),(171,'2010-08-05 21:36:59',1,52,'17','DVD',1,''),(172,'2010-08-05 21:37:06',1,52,'18','Celular',1,''),(173,'2010-08-05 21:37:13',1,52,'19','Liquadora',1,''),(174,'2010-08-05 21:37:22',1,52,'20','Refrigeradora',1,''),(175,'2010-08-05 21:37:33',1,52,'21','Muebles',1,''),(176,'2010-08-05 21:38:05',1,53,'1','Beneficio Húmedo',1,''),(177,'2010-08-05 21:38:15',1,53,'2','Sistema de secado artesanal',1,''),(178,'2010-08-05 21:39:59',1,53,'3','Pilas',1,''),(179,'2010-08-05 21:40:07',1,53,'4','Corrales de vacas',1,''),(180,'2010-08-05 21:40:15',1,53,'5','Corrales de cerdo',1,''),(181,'2010-08-05 21:40:24',1,53,'6','Caseta de ternero',1,''),(182,'2010-08-05 21:40:32',1,53,'7','Caseta de aves',1,''),(183,'2010-08-05 21:40:41',1,53,'8','Comederos',1,''),(184,'2010-08-05 21:40:49',1,53,'9','Silo forrajero',1,''),(185,'2010-08-05 21:40:58',1,53,'10','Tanque de plástico',1,''),(186,'2010-08-05 21:41:05',1,53,'11','Tanque de cemento',1,''),(187,'2010-08-05 21:41:13',1,53,'12','Silos Metálicos',1,''),(188,'2010-08-05 21:41:20',1,53,'13','Posos',1,''),(189,'2010-08-05 21:41:28',1,53,'14','Biodigestor',1,''),(190,'2010-08-05 21:42:17',1,55,'1','Machete',1,''),(191,'2010-08-05 21:42:24',1,55,'2','Coba',1,''),(192,'2010-08-05 21:42:31',1,55,'3','Piocha',1,''),(193,'2010-08-05 21:42:40',1,55,'4','Pala',1,''),(194,'2010-08-05 21:42:48',1,55,'5','Rastrillo',1,''),(195,'2010-08-05 21:42:56',1,55,'6','Herramienta para poda',1,''),(196,'2010-08-05 21:43:07',1,55,'7','Hacha',1,''),(197,'2010-08-05 21:43:15',1,55,'8','Barra',1,''),(198,'2010-08-05 21:43:23',1,55,'9','palines',1,''),(199,'2010-08-05 21:43:48',1,57,'1','Caballos o mula',1,''),(200,'2010-08-05 21:43:56',1,57,'2','Carreta de bueyes o caballo',1,''),(201,'2010-08-05 21:44:04',1,57,'3','Bicicleta',1,''),(202,'2010-08-05 21:44:10',1,57,'4','Motocicleta',1,''),(203,'2010-08-05 21:44:18',1,57,'5','Camioneta o Carro',1,''),(204,'2010-08-05 21:44:25',1,57,'6','Tractor',1,''),(205,'2010-08-05 21:46:29',1,59,'1','Maíz',1,''),(206,'2010-08-05 21:46:36',1,59,'2','Frijol',1,''),(207,'2010-08-05 21:46:43',1,59,'3','Arroz',1,''),(208,'2010-08-05 21:46:50',1,59,'4','Aceite',1,''),(209,'2010-08-05 21:46:58',1,59,'5','Azúcar',1,''),(210,'2010-08-05 21:47:06',1,59,'6','Leche',1,''),(211,'2010-08-05 21:47:13',1,59,'7','Queso',1,''),(212,'2010-08-05 21:47:22',1,59,'8','Carne de res',1,''),(213,'2010-08-05 21:47:30',1,59,'9','Carne de cerdo',1,''),(214,'2010-08-05 21:47:38',1,59,'10','Pollo',1,''),(215,'2010-08-05 21:47:48',1,59,'11','Huevos',1,''),(216,'2010-08-05 21:47:55',1,59,'12','Verduras',1,''),(217,'2010-08-05 21:48:01',1,59,'13','Frutas',1,''),(218,'2010-08-05 21:48:08',1,59,'14','Guineo',1,''),(219,'2010-08-05 21:48:16',1,59,'15','Plátano',1,''),(220,'2010-08-05 21:48:22',1,59,'16','Yuca',1,''),(221,'2010-08-05 21:48:28',1,59,'17','Papa',1,''),(222,'2010-08-05 21:48:35',1,59,'18','Quequisque',1,''),(223,'2010-08-05 21:48:41',1,59,'19','Avena',1,''),(224,'2010-08-05 21:48:47',1,59,'20','Soya',1,''),(225,'2010-08-05 21:48:58',1,59,'21','Manteca',1,''),(226,'2010-08-05 21:49:06',1,59,'22','Margarina',1,''),(227,'2010-08-05 21:49:13',1,59,'23','Crema',1,''),(228,'2010-08-05 21:49:21',1,59,'24','Mantequilla',1,''),(229,'2010-08-05 21:49:32',1,59,'25','Aguacate',1,''),(230,'2010-08-05 21:49:42',1,59,'26','Chicharrones',1,''),(231,'2010-08-05 21:49:51',1,59,'27','Pellejo de Chancho',1,''),(232,'2010-08-05 21:50:00',1,59,'28','Dulce en atado',1,''),(233,'2010-08-05 21:50:09',1,59,'29','Cuajada',1,''),(234,'2010-08-05 21:50:16',1,59,'30','Miel',1,''),(235,'2010-08-05 21:51:33',1,61,'1','Ene',1,''),(236,'2010-08-05 21:51:41',1,61,'2','Feb',1,''),(237,'2010-08-05 21:51:46',1,61,'3','Mar',1,''),(238,'2010-08-05 21:51:52',1,61,'4','Abr',1,''),(239,'2010-08-05 21:51:56',1,61,'5','may',1,''),(240,'2010-08-05 21:52:01',1,61,'6','Jun',1,''),(241,'2010-08-05 21:52:08',1,61,'7','Jul',1,''),(242,'2010-08-05 21:52:13',1,61,'8','Ago',1,''),(243,'2010-08-05 21:52:17',1,61,'9','Sep',1,''),(244,'2010-08-05 21:52:25',1,61,'10','Oct',1,''),(245,'2010-08-05 21:52:34',1,61,'11','Nov',1,''),(246,'2010-08-05 21:52:39',1,61,'12','Dic',1,''),(247,'2010-08-05 22:03:29',1,63,'1','Venta de Mano de obra',1,''),(248,'2010-08-05 22:03:41',1,63,'2','Venta de Ganado mayor',1,''),(249,'2010-08-05 22:03:51',1,63,'3','Venta de Ganado menor',1,''),(250,'2010-08-05 22:03:59',1,63,'4','Venta de equipo y herramienta',1,''),(251,'2010-08-05 22:04:08',1,63,'5','Venta de la tierra',1,''),(252,'2010-08-05 22:04:16',1,63,'6','Prestamo',1,''),(253,'2010-08-05 22:04:36',1,63,'7','Prenda el café',1,''),(254,'2010-08-05 22:07:33',1,68,'1','A través de la Cooperativa',1,''),(255,'2010-08-05 22:07:42',1,68,'2','A través del  Banco',1,''),(256,'2010-08-05 22:07:58',1,69,'1','Confiabilidad',1,''),(257,'2010-08-05 22:08:05',1,69,'2','Cercania',1,''),(258,'2010-08-05 22:08:13',1,69,'3','Agilidad de tramite',1,''),(259,'2010-08-05 22:08:22',1,69,'4','Riesgo en tramite de gestión',1,''),(260,'2010-08-05 22:09:31',1,71,'1','Cooperativa',1,''),(261,'2010-08-05 22:09:40',1,71,'2','Micro financieras',1,''),(262,'2010-08-05 22:09:53',1,71,'3','Bancos',1,''),(263,'2010-08-05 22:10:01',1,71,'4','Proyectos',1,''),(264,'2010-08-05 22:10:10',1,71,'5','Familiares',1,''),(265,'2010-08-05 22:10:21',1,71,'6','Prestamistas',1,''),(266,'2010-08-05 22:10:41',1,72,'1','Inversión agrícola',1,''),(267,'2010-08-05 22:10:53',1,72,'2','Inversión ganadera',1,''),(268,'2010-08-05 22:11:02',1,72,'3','Cultivo agrícolas',1,''),(269,'2010-08-05 22:11:10',1,72,'4','Tierra y vivienda',1,''),(270,'2010-08-05 22:11:20',1,72,'5','Mejora la infraestructura productiva',1,''),(271,'2010-08-05 22:11:31',1,72,'6','Consumo',1,''),(272,'2010-08-05 22:11:40',1,72,'7','Educación y salud',1,''),(273,'2010-08-05 22:11:48',1,72,'8','Para pagar deuda',1,''),(274,'2010-08-05 22:15:39',1,74,'1','aceite negro',1,''),(275,'2010-08-05 22:15:47',1,74,'2','Ceniza',1,''),(276,'2010-08-05 22:15:55',1,74,'3','Cal',1,''),(277,'2010-08-05 22:16:04',1,74,'4','Gazolina',1,''),(278,'2010-08-05 22:21:05',1,77,'1','¿Su pareja espera que le pida permiso antes de buscar atención medica para usted misma?',1,''),(279,'2010-08-05 22:21:25',1,77,'2','Se ha realizado chequeos ginecológicos',1,''),(280,'2010-08-05 22:21:35',1,77,'3','Se ha realizado el PAP alguna vez',1,''),(281,'2010-08-05 22:21:46',1,77,'4','Como han sido los resultados de su PAP',1,''),(282,'2010-08-05 22:22:08',1,77,'5','Como ha hecho para tratarse los problemas que le han resultado del PAP',1,''),(283,'2010-08-05 22:22:18',1,77,'6','Actualmente tiene usted algún problema de salud reproductiva que le preocupe?',1,''),(284,'2010-08-05 22:22:53',1,78,'1','Si',1,''),(285,'2010-08-05 22:23:01',1,78,'2','No',1,''),(286,'2010-08-05 22:23:16',1,78,'3','No se',1,''),(287,'2010-08-05 22:23:40',1,78,'4','No, con que frecuencia',1,''),(288,'2010-08-05 22:23:48',1,78,'5','Dos vez al año',1,''),(289,'2010-08-05 22:23:55',1,78,'6','una vez al año',1,''),(290,'2010-08-05 22:24:05',1,78,'7','cada 2 años',1,''),(291,'2010-08-05 22:24:12',1,78,'8','nunca',1,''),(292,'2010-08-05 22:24:24',1,78,'9','Negativos',1,''),(293,'2010-08-05 22:24:33',1,78,'10','Inflamación',1,''),(294,'2010-08-05 22:24:42',1,78,'11','Infección',1,''),(295,'2010-08-05 22:24:52',1,78,'12','Pre Cáncer',1,''),(296,'2010-08-05 22:25:08',1,78,'13','Por cuenta propia',1,''),(297,'2010-08-05 22:25:16',1,78,'14','Clínica privada',1,''),(298,'2010-08-05 22:25:25',1,78,'15','Centro de salud más cercano',1,''),(299,'2010-08-05 22:25:36',1,78,'16','Apoyo económico de la cooperativa',1,''),(300,'2010-08-05 22:25:44',1,78,'17','Apoyo de Cecocafen',1,''),(301,'2010-08-05 22:26:48',1,78,'18','Por cuenta propia (Automedicado, con apoyo de farmacia)',1,''),(302,'2010-08-05 22:26:59',1,78,'19','Con apoyo y/o asesoría de su esposa',1,''),(303,'2010-08-05 22:27:39',1,77,'7','Hombre-Se ha realizado chequeos Médicos alguna vez en su vida',1,''),(304,'2010-08-05 22:27:50',1,77,'8','Actualmente tiene usted algún problema de salud reproductiva o de transmisión sexual que le preocupe?',1,''),(305,'2010-08-05 22:28:05',1,77,'9','Si la repuesta es sí, como ha hecho para tratarse su problema de salud reproductiva y/o transmisión sexual?',1,''),(306,'2010-08-05 22:30:31',1,80,'1','Estado civil',1,''),(307,'2010-08-05 22:30:42',1,80,'2','¿Trata de impedirle que vea a sus amistades?',1,''),(308,'2010-08-05 22:30:49',1,80,'3','¿Intenta que usted no tenga contacto con su familia?',1,''),(309,'2010-08-05 22:31:00',1,80,'4','A recibido maltrato de alguna persona en su hogar',1,''),(310,'2010-08-05 22:31:09',1,80,'5','¿Cómo pareja, se pelean constantemente, hasta ponerse violentos?',1,''),(311,'2010-08-05 22:31:18',1,80,'6','¿Si en algunas ocasiones los niños y niñas sufren violencia por parte de una persona adulta?',1,''),(312,'2010-08-05 22:37:04',1,84,'1','Obtener crédito para proyectos productivos',1,''),(313,'2010-08-05 22:37:15',1,84,'2','Tener acceso a capacitaciones',1,''),(314,'2010-08-05 22:37:34',1,84,'3','Tener acceso a beca',1,''),(315,'2010-08-05 22:37:43',1,84,'4','Obtener mejores beneficios familiares',1,''),(316,'2010-08-05 22:37:51',1,84,'5','Proyectos sociales',1,''),(317,'2010-08-05 22:38:00',1,84,'6','Proyectos recreativos',1,''),(318,'2010-08-05 22:38:22',1,85,'1','Para apoyar a la cooperativa',1,''),(319,'2010-08-05 22:38:30',1,85,'2','Para asegurar que todo marche bien',1,''),(320,'2010-08-05 22:38:42',1,85,'3','Para asegurar la participación de los y las jóvenes',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'cooperativa','encuesta','cooperativa'),(10,'tecnologia','encuesta','tecnologia'),(11,'certificacion','encuesta','certificacion'),(12,'datos generales','encuesta','datosgenerales'),(13,'beneficios','encuesta','beneficios'),(14,'porque miembro','encuesta','porquemiembro'),(15,'admon actual','encuesta','admonactual'),(16,'organizacion','encuesta','organizacion'),(17,'razones migracion','encuesta','razonesmigracion'),(18,'migracion','encuesta','migracion'),(19,'campo','encuesta','campo'),(20,'condiciones campo','encuesta','condicionescampo'),(21,'tenencia','encuesta','tenencia'),(22,'uso tierra','encuesta','usotierra'),(23,'tierra','encuesta','tierra'),(24,'actividades','encuesta','actividades'),(25,'reforestacion','encuesta','reforestacion'),(26,'combustible','encuesta','combustible'),(27,'actividad conservacion','encuesta','actividadconservacion'),(28,'conservacion','encuesta','conservacion'),(29,'abono','encuesta','abono'),(30,'compra','encuesta','compra'),(31,'cultivos','encuesta','cultivos'),(32,'cultivos finca','encuesta','cultivosfinca'),(33,'animales','encuesta','animales'),(34,'producto animal','encuesta','productoanimal'),(35,'finca animales','encuesta','fincaanimales'),(36,'tipo almacenaje','encuesta','tipoalmacenaje'),(37,'postcosecha','encuesta','postcosecha'),(38,'tipo problema','encuesta','tipoproblema'),(39,'solucion','encuesta','solucion'),(40,'problema','encuesta','problema'),(41,'rubros','encuesta','rubros'),(42,'ingreso familiar','encuesta','ingresofamiliar'),(43,'fuentes','encuesta','fuentes'),(44,'tipo trabajo','encuesta','tipotrabajo'),(45,'otros ingresos','encuesta','otrosingresos'),(46,'aportar','encuesta','aportar'),(47,'destinar','encuesta','destinar'),(48,'piso','encuesta','piso'),(49,'techo','encuesta','techo'),(50,'tipo casa','encuesta','tipocasa'),(51,'detalle casa','encuesta','detallecasa'),(52,'equipos','encuesta','equipos'),(53,'infraestructuras','encuesta','infraestructuras'),(54,'propiedades','encuesta','propiedades'),(55,'nombre herramienta','encuesta','nombreherramienta'),(56,'herramientas','encuesta','herramientas'),(57,'nombre transporte','encuesta','nombretransporte'),(58,'transporte','encuesta','transporte'),(59,'alimentos','encuesta','alimentos'),(60,'seguridad','encuesta','seguridad'),(61,'meses','encuesta','meses'),(62,'consume','encuesta','consume'),(63,'solucion escasez','encuesta','solucionescasez'),(64,'escasez','encuesta','escasez'),(65,'produccion maiz','encuesta','produccionmaiz'),(66,'riego','encuesta','riego'),(67,'agua','encuesta','agua'),(68,'donde ahorro','encuesta','dondeahorro'),(69,'ahorra porque','encuesta','ahorraporque'),(70,'ahorro','encuesta','ahorro'),(71,'da credito','encuesta','dacredito'),(72,'ocupa credito','encuesta','ocupacredito'),(73,'credito','encuesta','credito'),(74,'tratamiento','encuesta','tratamiento'),(75,'salud','encuesta','salud'),(76,'enfermedades','encuesta','enfermedades'),(77,'pregunta cancer','encuesta','preguntacancer'),(78,'respuestas cancer','encuesta','respuestascancer'),(79,'cancer','encuesta','cancer'),(80,'pregunta mental','encuesta','preguntamental'),(81,'mental','encuesta','mental'),(82,'educacion jovenes','encuesta','educacionjovenes'),(83,'pregunta joven','encuesta','preguntajoven'),(84,'beneficio joven','encuesta','beneficiojoven'),(85,'miembro joven','encuesta','miembrojoven'),(86,'jovenes','encuesta','jovenes'),(87,'recolector','encuesta','recolector'),(88,'encuesta','encuesta','encuesta'),(89,'departamento','lugar','departamento'),(90,'municipio','lugar','municipio'),(91,'comunidad','lugar','comunidad');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('d8bbf695be9f55043a554b1f0ef6aea8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5hODJjMjU1MzBiYzE3NWQ1MmQy\nYTFjMzAzNTJlYjYyNw==\n','2010-08-19 20:27:53');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_abono`
--

DROP TABLE IF EXISTS `encuesta_abono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_abono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  `pulpa` int(11) NOT NULL,
  `estiercol` int(11) NOT NULL,
  `gallinaza` int(11) NOT NULL,
  `composta` int(11) NOT NULL,
  `lombrices` int(11) NOT NULL,
  `bocachi` int(11) NOT NULL,
  `foliar` int(11) NOT NULL,
  `verde` int(11) NOT NULL,
  `hojas` int(11) NOT NULL,
  `quince` int(11) NOT NULL,
  `veinte` int(11) NOT NULL,
  `seis` int(11) NOT NULL,
  `urea` int(11) NOT NULL,
  `otros` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_abono_1bb8f392` (`content_type_id`),
  KEY `encuesta_abono_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_abono`
--

LOCK TABLES `encuesta_abono` WRITE;
/*!40000 ALTER TABLE `encuesta_abono` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_abono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_actividadconservacion`
--

DROP TABLE IF EXISTS `encuesta_actividadconservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_actividadconservacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_actividadconservacion`
--

LOCK TABLES `encuesta_actividadconservacion` WRITE;
/*!40000 ALTER TABLE `encuesta_actividadconservacion` DISABLE KEYS */;
INSERT INTO `encuesta_actividadconservacion` VALUES (1,'Barreras vivas'),(2,'Barreras muertas'),(3,'Diques de contencion'),(4,'Azequias'),(5,'cercas vivas'),(6,'Temazos');
/*!40000 ALTER TABLE `encuesta_actividadconservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_actividades`
--

DROP TABLE IF EXISTS `encuesta_actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_actividades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_actividades`
--

LOCK TABLES `encuesta_actividades` WRITE;
/*!40000 ALTER TABLE `encuesta_actividades` DISABLE KEYS */;
INSERT INTO `encuesta_actividades` VALUES (1,'Enriquecimiento de los bosques'),(2,'Protección de fuentes de agua'),(3,'Establecimiento de cercas viva'),(4,'Plantaciones forestales'),(5,'Siembra de árboles en potrero'),(6,'Siembra de árboles en cafetales'),(7,'Establecimiento de viveros'),(8,'Parcelas frutales'),(9,'En Huerto de Patio');
/*!40000 ALTER TABLE `encuesta_actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_admonactual`
--

DROP TABLE IF EXISTS `encuesta_admonactual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_admonactual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_admonactual`
--

LOCK TABLES `encuesta_admonactual` WRITE;
/*!40000 ALTER TABLE `encuesta_admonactual` DISABLE KEYS */;
INSERT INTO `encuesta_admonactual` VALUES (1,'Hombres'),(2,'Mujeres'),(3,'Jovenes');
/*!40000 ALTER TABLE `encuesta_admonactual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_agua`
--

DROP TABLE IF EXISTS `encuesta_agua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_agua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `fuente` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `distancia` int(11) NOT NULL,
  `diponibilidad` int(11) NOT NULL,
  `calidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_agua_1bb8f392` (`content_type_id`),
  KEY `encuesta_agua_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_agua`
--

LOCK TABLES `encuesta_agua` WRITE;
/*!40000 ALTER TABLE `encuesta_agua` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_agua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ahorraporque`
--

DROP TABLE IF EXISTS `encuesta_ahorraporque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_ahorraporque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_ahorraporque`
--

LOCK TABLES `encuesta_ahorraporque` WRITE;
/*!40000 ALTER TABLE `encuesta_ahorraporque` DISABLE KEYS */;
INSERT INTO `encuesta_ahorraporque` VALUES (1,'Confiabilidad'),(2,'Cercania'),(3,'Agilidad de tramite'),(4,'Riesgo en tramite de gestión');
/*!40000 ALTER TABLE `encuesta_ahorraporque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ahorro`
--

DROP TABLE IF EXISTS `encuesta_ahorro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_ahorro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `tiene_efectivo` int(11) DEFAULT NULL,
  `tiene_joya` int(11) DEFAULT NULL,
  `desde_ahorra` int(11) DEFAULT NULL,
  `nombre_ahorro` int(11) DEFAULT NULL,
  `posee_ahorro` int(11) DEFAULT NULL,
  `interes_ahorro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_ahorro_1bb8f392` (`content_type_id`),
  KEY `encuesta_ahorro_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_ahorro`
--

LOCK TABLES `encuesta_ahorro` WRITE;
/*!40000 ALTER TABLE `encuesta_ahorro` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_ahorro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ahorro_donde`
--

DROP TABLE IF EXISTS `encuesta_ahorro_donde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_ahorro_donde` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ahorro_id` int(11) NOT NULL,
  `dondeahorro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ahorro_id` (`ahorro_id`,`dondeahorro_id`),
  KEY `encuesta_ahorro_donde_15d5b4df` (`ahorro_id`),
  KEY `encuesta_ahorro_donde_7ee2b4d8` (`dondeahorro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_ahorro_donde`
--

LOCK TABLES `encuesta_ahorro_donde` WRITE;
/*!40000 ALTER TABLE `encuesta_ahorro_donde` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_ahorro_donde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ahorro_porque`
--

DROP TABLE IF EXISTS `encuesta_ahorro_porque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_ahorro_porque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ahorro_id` int(11) NOT NULL,
  `ahorraporque_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ahorro_id` (`ahorro_id`,`ahorraporque_id`),
  KEY `encuesta_ahorro_porque_15d5b4df` (`ahorro_id`),
  KEY `encuesta_ahorro_porque_2aa162a5` (`ahorraporque_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_ahorro_porque`
--

LOCK TABLES `encuesta_ahorro_porque` WRITE;
/*!40000 ALTER TABLE `encuesta_ahorro_porque` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_ahorro_porque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_alimentos`
--

DROP TABLE IF EXISTS `encuesta_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_alimentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_alimentos`
--

LOCK TABLES `encuesta_alimentos` WRITE;
/*!40000 ALTER TABLE `encuesta_alimentos` DISABLE KEYS */;
INSERT INTO `encuesta_alimentos` VALUES (1,'Maíz'),(2,'Frijol'),(3,'Arroz'),(4,'Aceite'),(5,'Azúcar'),(6,'Leche'),(7,'Queso'),(8,'Carne de res'),(9,'Carne de cerdo'),(10,'Pollo'),(11,'Huevos'),(12,'Verduras'),(13,'Frutas'),(14,'Guineo'),(15,'Plátano'),(16,'Yuca'),(17,'Papa'),(18,'Quequisque'),(19,'Avena'),(20,'Soya'),(21,'Manteca'),(22,'Margarina'),(23,'Crema'),(24,'Mantequilla'),(25,'Aguacate'),(26,'Chicharrones'),(27,'Pellejo de Chancho'),(28,'Dulce en atado'),(29,'Cuajada'),(30,'Miel');
/*!40000 ALTER TABLE `encuesta_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_animales`
--

DROP TABLE IF EXISTS `encuesta_animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_animales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_animales`
--

LOCK TABLES `encuesta_animales` WRITE;
/*!40000 ALTER TABLE `encuesta_animales` DISABLE KEYS */;
INSERT INTO `encuesta_animales` VALUES (1,'Vacas'),(2,'Vaquillas'),(3,'Toros'),(4,'Novillo'),(5,'Bueyes'),(6,'Bestias'),(7,'Pelibuey'),(8,'Cerdos'),(9,'Aves de Corral'),(10,'Colmenas');
/*!40000 ALTER TABLE `encuesta_animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_aportar`
--

DROP TABLE IF EXISTS `encuesta_aportar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_aportar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `persona` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_aportar_1bb8f392` (`content_type_id`),
  KEY `encuesta_aportar_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_aportar`
--

LOCK TABLES `encuesta_aportar` WRITE;
/*!40000 ALTER TABLE `encuesta_aportar` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_aportar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_beneficiojoven`
--

DROP TABLE IF EXISTS `encuesta_beneficiojoven`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_beneficiojoven` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beneficio` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_beneficiojoven`
--

LOCK TABLES `encuesta_beneficiojoven` WRITE;
/*!40000 ALTER TABLE `encuesta_beneficiojoven` DISABLE KEYS */;
INSERT INTO `encuesta_beneficiojoven` VALUES (1,'Obtener crédito para proyectos productivos'),(2,'Tener acceso a capacitaciones'),(3,'Tener acceso a beca'),(4,'Obtener mejores beneficios familiares'),(5,'Proyectos sociales'),(6,'Proyectos recreativos');
/*!40000 ALTER TABLE `encuesta_beneficiojoven` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_beneficios`
--

DROP TABLE IF EXISTS `encuesta_beneficios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_beneficios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_beneficios`
--

LOCK TABLES `encuesta_beneficios` WRITE;
/*!40000 ALTER TABLE `encuesta_beneficios` DISABLE KEYS */;
INSERT INTO `encuesta_beneficios` VALUES (1,'Obtener crédito para la producción'),(2,'Suministro de equipos'),(3,'Tener servicio de asistencia técnica y/o de capacitaciones'),(4,'Fondos para retención de cosecha'),(5,'Comercializar mejor y obtener mejor precio'),(6,'Obtener mejores beneficios familiares'),(7,'Proyectos sociales'),(8,'Proyectos productivos');
/*!40000 ALTER TABLE `encuesta_beneficios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_campo`
--

DROP TABLE IF EXISTS `encuesta_campo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_campo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `afirmacion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_campo`
--

LOCK TABLES `encuesta_campo` WRITE;
/*!40000 ALTER TABLE `encuesta_campo` DISABLE KEYS */;
INSERT INTO `encuesta_campo` VALUES (1,'Actualmente la Seguridad de tierra y propiedad es'),(2,'Actualmente la posibilidad de tener ingreso'),(3,'Actualmente el acceso de educación de niños y niñas es'),(4,'Actualmente el acceso de servicio de salud es'),(5,'Actualmente el transporte para acceso a la comunidad es'),(6,'Actualmente el servicio de la luz es'),(7,'Actualmente el acceso a agua potable es'),(8,'Actualmente el servicio de telefonía y TV es'),(9,'Actualmente la situación de la seguridad personal es');
/*!40000 ALTER TABLE `encuesta_campo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_cancer`
--

DROP TABLE IF EXISTS `encuesta_cancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_cancer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `preguntas_id` int(11) NOT NULL,
  `resp_id` int(11) NOT NULL,
  `cual` longtext,
  PRIMARY KEY (`id`),
  KEY `encuesta_cancer_1bb8f392` (`content_type_id`),
  KEY `encuesta_cancer_7d61c803` (`object_id`),
  KEY `encuesta_cancer_308415b0` (`preguntas_id`),
  KEY `encuesta_cancer_7806dd26` (`resp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_cancer`
--

LOCK TABLES `encuesta_cancer` WRITE;
/*!40000 ALTER TABLE `encuesta_cancer` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_cancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_certificacion`
--

DROP TABLE IF EXISTS `encuesta_certificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_certificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_certificacion`
--

LOCK TABLES `encuesta_certificacion` WRITE;
/*!40000 ALTER TABLE `encuesta_certificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_certificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_combustible`
--

DROP TABLE IF EXISTS `encuesta_combustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_combustible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_combustible`
--

LOCK TABLES `encuesta_combustible` WRITE;
/*!40000 ALTER TABLE `encuesta_combustible` DISABLE KEYS */;
INSERT INTO `encuesta_combustible` VALUES (1,'Gas'),(2,'Carbón'),(3,'Leña'),(4,'Biodigestor');
/*!40000 ALTER TABLE `encuesta_combustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_compra`
--

DROP TABLE IF EXISTS `encuesta_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `cuanto` int(11) NOT NULL,
  `pulpa` int(11) NOT NULL,
  `estiercol` int(11) NOT NULL,
  `gallinaza` int(11) NOT NULL,
  `composta` int(11) NOT NULL,
  `lombrices` int(11) NOT NULL,
  `bocachi` int(11) NOT NULL,
  `foliar_org` int(11) NOT NULL,
  `unidad_org` int(11) NOT NULL,
  `foliar_qui` int(11) NOT NULL,
  `unidad_qui` int(11) NOT NULL,
  `verde` int(11) NOT NULL,
  `quince` int(11) NOT NULL,
  `veinte` int(11) NOT NULL,
  `seis` int(11) NOT NULL,
  `urea` int(11) NOT NULL,
  `otros` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_compra_1bb8f392` (`content_type_id`),
  KEY `encuesta_compra_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_compra`
--

LOCK TABLES `encuesta_compra` WRITE;
/*!40000 ALTER TABLE `encuesta_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_condicionescampo`
--

DROP TABLE IF EXISTS `encuesta_condicionescampo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_condicionescampo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_condicionescampo_1bb8f392` (`content_type_id`),
  KEY `encuesta_condicionescampo_7d61c803` (`object_id`),
  KEY `encuesta_condicionescampo_37c55af2` (`pregunta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_condicionescampo`
--

LOCK TABLES `encuesta_condicionescampo` WRITE;
/*!40000 ALTER TABLE `encuesta_condicionescampo` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_condicionescampo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_conservacion`
--

DROP TABLE IF EXISTS `encuesta_conservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_conservacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `actividad` int(11) NOT NULL,
  `cuales_id` int(11) NOT NULL,
  `cuanto` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_conservacion_1bb8f392` (`content_type_id`),
  KEY `encuesta_conservacion_7d61c803` (`object_id`),
  KEY `encuesta_conservacion_b996135` (`cuales_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_conservacion`
--

LOCK TABLES `encuesta_conservacion` WRITE;
/*!40000 ALTER TABLE `encuesta_conservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_conservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_conservacion_cocinar`
--

DROP TABLE IF EXISTS `encuesta_conservacion_cocinar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_conservacion_cocinar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conservacion_id` int(11) NOT NULL,
  `combustible_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `conservacion_id` (`conservacion_id`,`combustible_id`),
  KEY `encuesta_conservacion_cocinar_36336b1a` (`conservacion_id`),
  KEY `encuesta_conservacion_cocinar_276e6b2a` (`combustible_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_conservacion_cocinar`
--

LOCK TABLES `encuesta_conservacion_cocinar` WRITE;
/*!40000 ALTER TABLE `encuesta_conservacion_cocinar` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_conservacion_cocinar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_consume`
--

DROP TABLE IF EXISTS `encuesta_consume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_consume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `preg1` int(11) DEFAULT NULL,
  `preg2` int(11) DEFAULT NULL,
  `preg3` int(11) DEFAULT NULL,
  `preg5` int(11) DEFAULT NULL,
  `preg7` int(11) DEFAULT NULL,
  `preg8` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_consume_1bb8f392` (`content_type_id`),
  KEY `encuesta_consume_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_consume`
--

LOCK TABLES `encuesta_consume` WRITE;
/*!40000 ALTER TABLE `encuesta_consume` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_consume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_consume_preg4`
--

DROP TABLE IF EXISTS `encuesta_consume_preg4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_consume_preg4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consume_id` int(11) NOT NULL,
  `meses_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `consume_id` (`consume_id`,`meses_id`),
  KEY `encuesta_consume_preg4_3bcc92b5` (`consume_id`),
  KEY `encuesta_consume_preg4_1b70c950` (`meses_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_consume_preg4`
--

LOCK TABLES `encuesta_consume_preg4` WRITE;
/*!40000 ALTER TABLE `encuesta_consume_preg4` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_consume_preg4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_cooperativa`
--

DROP TABLE IF EXISTS `encuesta_cooperativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_cooperativa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_cooperativa`
--

LOCK TABLES `encuesta_cooperativa` WRITE;
/*!40000 ALTER TABLE `encuesta_cooperativa` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_cooperativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_credito`
--

DROP TABLE IF EXISTS `encuesta_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `recibe` int(11) DEFAULT NULL,
  `desde` int(11) DEFAULT NULL,
  `satisfaccion` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_credito_1bb8f392` (`content_type_id`),
  KEY `encuesta_credito_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_credito`
--

LOCK TABLES `encuesta_credito` WRITE;
/*!40000 ALTER TABLE `encuesta_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_credito_ocupa_credito`
--

DROP TABLE IF EXISTS `encuesta_credito_ocupa_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_credito_ocupa_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credito_id` int(11) NOT NULL,
  `ocupacredito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `credito_id` (`credito_id`,`ocupacredito_id`),
  KEY `encuesta_credito_ocupa_credito_a3100cd` (`credito_id`),
  KEY `encuesta_credito_ocupa_credito_227cc9f8` (`ocupacredito_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_credito_ocupa_credito`
--

LOCK TABLES `encuesta_credito_ocupa_credito` WRITE;
/*!40000 ALTER TABLE `encuesta_credito_ocupa_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_credito_ocupa_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_credito_quien_credito`
--

DROP TABLE IF EXISTS `encuesta_credito_quien_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_credito_quien_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credito_id` int(11) NOT NULL,
  `dacredito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `credito_id` (`credito_id`,`dacredito_id`),
  KEY `encuesta_credito_quien_credito_a3100cd` (`credito_id`),
  KEY `encuesta_credito_quien_credito_6361b2e8` (`dacredito_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_credito_quien_credito`
--

LOCK TABLES `encuesta_credito_quien_credito` WRITE;
/*!40000 ALTER TABLE `encuesta_credito_quien_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_credito_quien_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_cultivos`
--

DROP TABLE IF EXISTS `encuesta_cultivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_cultivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_cultivos`
--

LOCK TABLES `encuesta_cultivos` WRITE;
/*!40000 ALTER TABLE `encuesta_cultivos` DISABLE KEYS */;
INSERT INTO `encuesta_cultivos` VALUES (1,'Maíz','qq'),(2,'Frijol','qq'),(3,'Cítricos','cien'),(4,'Café','qq pergamino'),(5,'Sorgo','qq'),(6,'Millón','qq'),(7,'Tubérculos','qq'),(8,'Hortalizas','Und'),(9,'Parras','cien'),(10,'Guineo','cien'),(11,'Plátano','cien');
/*!40000 ALTER TABLE `encuesta_cultivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_cultivosfinca`
--

DROP TABLE IF EXISTS `encuesta_cultivosfinca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_cultivosfinca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `cultivos_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `consumo` int(11) NOT NULL,
  `venta_libre` int(11) NOT NULL,
  `venta_organizada` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_cultivosfinca_1bb8f392` (`content_type_id`),
  KEY `encuesta_cultivosfinca_7d61c803` (`object_id`),
  KEY `encuesta_cultivosfinca_168c2801` (`cultivos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_cultivosfinca`
--

LOCK TABLES `encuesta_cultivosfinca` WRITE;
/*!40000 ALTER TABLE `encuesta_cultivosfinca` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_cultivosfinca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_dacredito`
--

DROP TABLE IF EXISTS `encuesta_dacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_dacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_dacredito`
--

LOCK TABLES `encuesta_dacredito` WRITE;
/*!40000 ALTER TABLE `encuesta_dacredito` DISABLE KEYS */;
INSERT INTO `encuesta_dacredito` VALUES (1,'Cooperativa'),(2,'Micro financieras'),(3,'Bancos'),(4,'Proyectos'),(5,'Familiares'),(6,'Prestamistas');
/*!40000 ALTER TABLE `encuesta_dacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_datosgenerales`
--

DROP TABLE IF EXISTS `encuesta_datosgenerales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_datosgenerales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `cedula` varchar(200) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `cooperativa_id` int(11) DEFAULT NULL,
  `nombre_conyugue` varchar(200) DEFAULT NULL,
  `cedula_conyugue` varchar(200) DEFAULT NULL,
  `nombre_finca` varchar(200) DEFAULT NULL,
  `comunidad_id` int(11) NOT NULL,
  `coor_lt` decimal(24,16) DEFAULT NULL,
  `coor_lg` decimal(24,16) DEFAULT NULL,
  `tecnologia_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_datosgenerales_1bb8f392` (`content_type_id`),
  KEY `encuesta_datosgenerales_7d61c803` (`object_id`),
  KEY `encuesta_datosgenerales_7c401982` (`cooperativa_id`),
  KEY `encuesta_datosgenerales_62329ccf` (`comunidad_id`),
  KEY `encuesta_datosgenerales_1fb09b8d` (`tecnologia_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_datosgenerales`
--

LOCK TABLES `encuesta_datosgenerales` WRITE;
/*!40000 ALTER TABLE `encuesta_datosgenerales` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_datosgenerales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_datosgenerales_certificacion`
--

DROP TABLE IF EXISTS `encuesta_datosgenerales_certificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_datosgenerales_certificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datosgenerales_id` int(11) NOT NULL,
  `certificacion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datosgenerales_id` (`datosgenerales_id`,`certificacion_id`),
  KEY `encuesta_datosgenerales_certificacion_1c95f2a3` (`datosgenerales_id`),
  KEY `encuesta_datosgenerales_certificacion_7d07cab6` (`certificacion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_datosgenerales_certificacion`
--

LOCK TABLES `encuesta_datosgenerales_certificacion` WRITE;
/*!40000 ALTER TABLE `encuesta_datosgenerales_certificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_datosgenerales_certificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_destinar`
--

DROP TABLE IF EXISTS `encuesta_destinar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_destinar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `servicios` int(11) NOT NULL,
  `cuanto` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_destinar_1bb8f392` (`content_type_id`),
  KEY `encuesta_destinar_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_destinar`
--

LOCK TABLES `encuesta_destinar` WRITE;
/*!40000 ALTER TABLE `encuesta_destinar` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_destinar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_detallecasa`
--

DROP TABLE IF EXISTS `encuesta_detallecasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_detallecasa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `tamano` int(11) NOT NULL,
  `ambientes` int(11) NOT NULL,
  `letrina` int(11) NOT NULL,
  `lavadero` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_detallecasa_1bb8f392` (`content_type_id`),
  KEY `encuesta_detallecasa_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_detallecasa`
--

LOCK TABLES `encuesta_detallecasa` WRITE;
/*!40000 ALTER TABLE `encuesta_detallecasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_detallecasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_dondeahorro`
--

DROP TABLE IF EXISTS `encuesta_dondeahorro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_dondeahorro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_dondeahorro`
--

LOCK TABLES `encuesta_dondeahorro` WRITE;
/*!40000 ALTER TABLE `encuesta_dondeahorro` DISABLE KEYS */;
INSERT INTO `encuesta_dondeahorro` VALUES (1,'A través de la Cooperativa'),(2,'A través del  Banco');
/*!40000 ALTER TABLE `encuesta_dondeahorro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_educacionjovenes`
--

DROP TABLE IF EXISTS `encuesta_educacionjovenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_educacionjovenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `persona` int(11) NOT NULL,
  `n_total` int(11) DEFAULT NULL,
  `no_leer` int(11) DEFAULT NULL,
  `pri_incompleta` int(11) DEFAULT NULL,
  `pri_completa` int(11) DEFAULT NULL,
  `secu_incompleta` int(11) DEFAULT NULL,
  `secu_completa` int(11) DEFAULT NULL,
  `tecnico` int(11) DEFAULT NULL,
  `actualmente` int(11) DEFAULT NULL,
  `beca` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_educacionjovenes_1bb8f392` (`content_type_id`),
  KEY `encuesta_educacionjovenes_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_educacionjovenes`
--

LOCK TABLES `encuesta_educacionjovenes` WRITE;
/*!40000 ALTER TABLE `encuesta_educacionjovenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_educacionjovenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_encuesta`
--

DROP TABLE IF EXISTS `encuesta_encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_encuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `recolector_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_encuesta_656033f0` (`recolector_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_encuesta`
--

LOCK TABLES `encuesta_encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta_encuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_enfermedades`
--

DROP TABLE IF EXISTS `encuesta_enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_enfermedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `enfermedad` int(11) NOT NULL,
  `socia` int(11) DEFAULT NULL,
  `hijo` int(11) DEFAULT NULL,
  `companero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_enfermedades_1bb8f392` (`content_type_id`),
  KEY `encuesta_enfermedades_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_enfermedades`
--

LOCK TABLES `encuesta_enfermedades` WRITE;
/*!40000 ALTER TABLE `encuesta_enfermedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_equipos`
--

DROP TABLE IF EXISTS `encuesta_equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_equipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_equipos`
--

LOCK TABLES `encuesta_equipos` WRITE;
/*!40000 ALTER TABLE `encuesta_equipos` DISABLE KEYS */;
INSERT INTO `encuesta_equipos` VALUES (1,'Despulpadora'),(2,'Cajillas secadoras de café'),(3,'Manguera riego'),(4,'Sistema de riego'),(5,'Picadora'),(6,'Motor de riego'),(7,'Carreta'),(8,'Arado'),(9,'Motosierra'),(10,'Panel solar'),(11,'Bomba de asperjar'),(12,'Bomba de Motor'),(13,'Motor'),(14,'Plancha'),(15,'Radio'),(16,'TV'),(17,'DVD'),(18,'Celular'),(19,'Liquadora'),(20,'Refrigeradora'),(21,'Muebles');
/*!40000 ALTER TABLE `encuesta_equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_escasez`
--

DROP TABLE IF EXISTS `encuesta_escasez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_escasez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `preg2` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_escasez_1bb8f392` (`content_type_id`),
  KEY `encuesta_escasez_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_escasez`
--

LOCK TABLES `encuesta_escasez` WRITE;
/*!40000 ALTER TABLE `encuesta_escasez` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_escasez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_escasez_preg1`
--

DROP TABLE IF EXISTS `encuesta_escasez_preg1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_escasez_preg1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escasez_id` int(11) NOT NULL,
  `solucionescasez_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `escasez_id` (`escasez_id`,`solucionescasez_id`),
  KEY `encuesta_escasez_preg1_40235dfb` (`escasez_id`),
  KEY `encuesta_escasez_preg1_7fca2667` (`solucionescasez_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_escasez_preg1`
--

LOCK TABLES `encuesta_escasez_preg1` WRITE;
/*!40000 ALTER TABLE `encuesta_escasez_preg1` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_escasez_preg1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_fincaanimales`
--

DROP TABLE IF EXISTS `encuesta_fincaanimales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_fincaanimales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `animales_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `produccion_id` int(11) NOT NULL,
  `consumo` int(11) NOT NULL,
  `venta_libre` int(11) NOT NULL,
  `venta_organizada` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_fincaanimales_1bb8f392` (`content_type_id`),
  KEY `encuesta_fincaanimales_7d61c803` (`object_id`),
  KEY `encuesta_fincaanimales_528f57b8` (`animales_id`),
  KEY `encuesta_fincaanimales_4153c39a` (`produccion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_fincaanimales`
--

LOCK TABLES `encuesta_fincaanimales` WRITE;
/*!40000 ALTER TABLE `encuesta_fincaanimales` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_fincaanimales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_fuentes`
--

DROP TABLE IF EXISTS `encuesta_fuentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_fuentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_fuentes`
--

LOCK TABLES `encuesta_fuentes` WRITE;
/*!40000 ALTER TABLE `encuesta_fuentes` DISABLE KEYS */;
INSERT INTO `encuesta_fuentes` VALUES (1,'Salarios'),(2,'Negocios'),(3,'Remesas'),(4,'Alquiler');
/*!40000 ALTER TABLE `encuesta_fuentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_herramientas`
--

DROP TABLE IF EXISTS `encuesta_herramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_herramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `herramienta_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_herramientas_1bb8f392` (`content_type_id`),
  KEY `encuesta_herramientas_7d61c803` (`object_id`),
  KEY `encuesta_herramientas_18dc765` (`herramienta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_herramientas`
--

LOCK TABLES `encuesta_herramientas` WRITE;
/*!40000 ALTER TABLE `encuesta_herramientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_herramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_infraestructuras`
--

DROP TABLE IF EXISTS `encuesta_infraestructuras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_infraestructuras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_infraestructuras`
--

LOCK TABLES `encuesta_infraestructuras` WRITE;
/*!40000 ALTER TABLE `encuesta_infraestructuras` DISABLE KEYS */;
INSERT INTO `encuesta_infraestructuras` VALUES (1,'Beneficio Húmedo'),(2,'Sistema de secado artesanal'),(3,'Pilas'),(4,'Corrales de vacas'),(5,'Corrales de cerdo'),(6,'Caseta de ternero'),(7,'Caseta de aves'),(8,'Comederos'),(9,'Silo forrajero'),(10,'Tanque de plástico'),(11,'Tanque de cemento'),(12,'Silos Metálicos'),(13,'Posos'),(14,'Biodigestor');
/*!40000 ALTER TABLE `encuesta_infraestructuras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ingresofamiliar`
--

DROP TABLE IF EXISTS `encuesta_ingresofamiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_ingresofamiliar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `rubro_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `quien_vendio` int(11) NOT NULL,
  `maneja_negocio` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_ingresofamiliar_1bb8f392` (`content_type_id`),
  KEY `encuesta_ingresofamiliar_7d61c803` (`object_id`),
  KEY `encuesta_ingresofamiliar_3d65a305` (`rubro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_ingresofamiliar`
--

LOCK TABLES `encuesta_ingresofamiliar` WRITE;
/*!40000 ALTER TABLE `encuesta_ingresofamiliar` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_ingresofamiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes`
--

DROP TABLE IF EXISTS `encuesta_jovenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_jovenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `socio` int(11) NOT NULL,
  `desde_socio` int(11) DEFAULT NULL,
  `promotor` int(11) NOT NULL,
  `miembro` int(11) DEFAULT NULL,
  `conformado` int(11) DEFAULT NULL,
  `conformarse` int(11) DEFAULT NULL,
  `miembro_trabajo` int(11) DEFAULT NULL,
  `desde_miembro` int(11) DEFAULT NULL,
  `cargo` int(11) DEFAULT NULL,
  `desde_cargo` int(11) DEFAULT NULL,
  `no_miembro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_jovenes_1bb8f392` (`content_type_id`),
  KEY `encuesta_jovenes_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_jovenes`
--

LOCK TABLES `encuesta_jovenes` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_jovenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes_beneficio`
--

DROP TABLE IF EXISTS `encuesta_jovenes_beneficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_jovenes_beneficio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jovenes_id` int(11) NOT NULL,
  `beneficiojoven_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jovenes_id` (`jovenes_id`,`beneficiojoven_id`),
  KEY `encuesta_jovenes_beneficio_5a8ed0ab` (`jovenes_id`),
  KEY `encuesta_jovenes_beneficio_685f4398` (`beneficiojoven_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_jovenes_beneficio`
--

LOCK TABLES `encuesta_jovenes_beneficio` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes_beneficio` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_jovenes_beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes_quiero_miembro_junta`
--

DROP TABLE IF EXISTS `encuesta_jovenes_quiero_miembro_junta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_jovenes_quiero_miembro_junta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jovenes_id` int(11) NOT NULL,
  `miembrojoven_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jovenes_id` (`jovenes_id`,`miembrojoven_id`),
  KEY `encuesta_jovenes_quiero_miembro_junta_5a8ed0ab` (`jovenes_id`),
  KEY `encuesta_jovenes_quiero_miembro_junta_4e137ca3` (`miembrojoven_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_jovenes_quiero_miembro_junta`
--

LOCK TABLES `encuesta_jovenes_quiero_miembro_junta` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes_quiero_miembro_junta` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_jovenes_quiero_miembro_junta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_mental`
--

DROP TABLE IF EXISTS `encuesta_mental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_mental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_mental_1bb8f392` (`content_type_id`),
  KEY `encuesta_mental_7d61c803` (`object_id`),
  KEY `encuesta_mental_37c55af2` (`pregunta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_mental`
--

LOCK TABLES `encuesta_mental` WRITE;
/*!40000 ALTER TABLE `encuesta_mental` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_mental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_meses`
--

DROP TABLE IF EXISTS `encuesta_meses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_meses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_meses`
--

LOCK TABLES `encuesta_meses` WRITE;
/*!40000 ALTER TABLE `encuesta_meses` DISABLE KEYS */;
INSERT INTO `encuesta_meses` VALUES (1,'Ene'),(2,'Feb'),(3,'Mar'),(4,'Abr'),(5,'may'),(6,'Jun'),(7,'Jul'),(8,'Ago'),(9,'Sep'),(10,'Oct'),(11,'Nov'),(12,'Dic');
/*!40000 ALTER TABLE `encuesta_meses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_miembrojoven`
--

DROP TABLE IF EXISTS `encuesta_miembrojoven`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_miembrojoven` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_miembrojoven`
--

LOCK TABLES `encuesta_miembrojoven` WRITE;
/*!40000 ALTER TABLE `encuesta_miembrojoven` DISABLE KEYS */;
INSERT INTO `encuesta_miembrojoven` VALUES (1,'Para apoyar a la cooperativa'),(2,'Para asegurar que todo marche bien'),(3,'Para asegurar la participación de los y las jóvenes');
/*!40000 ALTER TABLE `encuesta_miembrojoven` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_migracion`
--

DROP TABLE IF EXISTS `encuesta_migracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_migracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `edades` int(11) NOT NULL,
  `n_total` int(11) NOT NULL,
  `viven_casa` int(11) NOT NULL,
  `viven_comu` int(11) NOT NULL,
  `viven_fuera` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_migracion_1bb8f392` (`content_type_id`),
  KEY `encuesta_migracion_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_migracion`
--

LOCK TABLES `encuesta_migracion` WRITE;
/*!40000 ALTER TABLE `encuesta_migracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_migracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_migracion_razones`
--

DROP TABLE IF EXISTS `encuesta_migracion_razones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_migracion_razones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `migracion_id` int(11) NOT NULL,
  `razonesmigracion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `migracion_id` (`migracion_id`,`razonesmigracion_id`),
  KEY `encuesta_migracion_razones_776b8c7c` (`migracion_id`),
  KEY `encuesta_migracion_razones_4ce3477d` (`razonesmigracion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_migracion_razones`
--

LOCK TABLES `encuesta_migracion_razones` WRITE;
/*!40000 ALTER TABLE `encuesta_migracion_razones` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_migracion_razones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_nombreherramienta`
--

DROP TABLE IF EXISTS `encuesta_nombreherramienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_nombreherramienta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_nombreherramienta`
--

LOCK TABLES `encuesta_nombreherramienta` WRITE;
/*!40000 ALTER TABLE `encuesta_nombreherramienta` DISABLE KEYS */;
INSERT INTO `encuesta_nombreherramienta` VALUES (1,'Machete'),(2,'Coba'),(3,'Piocha'),(4,'Pala'),(5,'Rastrillo'),(6,'Herramienta para poda'),(7,'Hacha'),(8,'Barra'),(9,'palines');
/*!40000 ALTER TABLE `encuesta_nombreherramienta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_nombretransporte`
--

DROP TABLE IF EXISTS `encuesta_nombretransporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_nombretransporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_nombretransporte`
--

LOCK TABLES `encuesta_nombretransporte` WRITE;
/*!40000 ALTER TABLE `encuesta_nombretransporte` DISABLE KEYS */;
INSERT INTO `encuesta_nombretransporte` VALUES (1,'Caballos o mula'),(2,'Carreta de bueyes o caballo'),(3,'Bicicleta'),(4,'Motocicleta'),(5,'Camioneta o Carro'),(6,'Tractor');
/*!40000 ALTER TABLE `encuesta_nombretransporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ocupacredito`
--

DROP TABLE IF EXISTS `encuesta_ocupacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_ocupacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_ocupacredito`
--

LOCK TABLES `encuesta_ocupacredito` WRITE;
/*!40000 ALTER TABLE `encuesta_ocupacredito` DISABLE KEYS */;
INSERT INTO `encuesta_ocupacredito` VALUES (1,'Inversión agrícola'),(2,'Inversión ganadera'),(3,'Cultivo agrícolas'),(4,'Tierra y vivienda'),(5,'Mejora la infraestructura productiva'),(6,'Consumo'),(7,'Educación y salud'),(8,'Para pagar deuda');
/*!40000 ALTER TABLE `encuesta_ocupacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion`
--

DROP TABLE IF EXISTS `encuesta_organizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_organizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `socio` int(11) DEFAULT NULL,
  `desde_socio` int(11) DEFAULT NULL,
  `socio_cooperativa` int(11) DEFAULT NULL,
  `desde_socio_coop` int(11) DEFAULT NULL,
  `hijos_socios` int(11) DEFAULT NULL,
  `desde_hijo` int(11) DEFAULT NULL,
  `miembro` int(11) DEFAULT NULL,
  `desde_miembro` int(11) DEFAULT NULL,
  `miembro_trabajo` int(11) DEFAULT NULL,
  `desde_trabajo` int(11) DEFAULT NULL,
  `cargo` int(11) DEFAULT NULL,
  `desde_cargo` int(11) DEFAULT NULL,
  `no_miembro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_organizacion_1bb8f392` (`content_type_id`),
  KEY `encuesta_organizacion_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_organizacion`
--

LOCK TABLES `encuesta_organizacion` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_organizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_beneficio`
--

DROP TABLE IF EXISTS `encuesta_organizacion_beneficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_organizacion_beneficio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacion_id` int(11) NOT NULL,
  `beneficios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`beneficios_id`),
  KEY `encuesta_organizacion_beneficio_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_beneficio_d284039` (`beneficios_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_organizacion_beneficio`
--

LOCK TABLES `encuesta_organizacion_beneficio` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_beneficio` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_organizacion_beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_conformado`
--

DROP TABLE IF EXISTS `encuesta_organizacion_conformado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_organizacion_conformado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacion_id` int(11) NOT NULL,
  `admonactual_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`admonactual_id`),
  KEY `encuesta_organizacion_conformado_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_conformado_103d94ee` (`admonactual_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_organizacion_conformado`
--

LOCK TABLES `encuesta_organizacion_conformado` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_conformado` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_organizacion_conformado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_conformarse`
--

DROP TABLE IF EXISTS `encuesta_organizacion_conformarse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_organizacion_conformarse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacion_id` int(11) NOT NULL,
  `admonactual_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`admonactual_id`),
  KEY `encuesta_organizacion_conformarse_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_conformarse_103d94ee` (`admonactual_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_organizacion_conformarse`
--

LOCK TABLES `encuesta_organizacion_conformarse` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_conformarse` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_organizacion_conformarse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_quiero_miembro_junta`
--

DROP TABLE IF EXISTS `encuesta_organizacion_quiero_miembro_junta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_organizacion_quiero_miembro_junta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacion_id` int(11) NOT NULL,
  `porquemiembro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`porquemiembro_id`),
  KEY `encuesta_organizacion_quiero_miembro_junta_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_quiero_miembro_junta_cf4903c` (`porquemiembro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_organizacion_quiero_miembro_junta`
--

LOCK TABLES `encuesta_organizacion_quiero_miembro_junta` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_quiero_miembro_junta` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_organizacion_quiero_miembro_junta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_otrosingresos`
--

DROP TABLE IF EXISTS `encuesta_otrosingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_otrosingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `meses` int(11) NOT NULL,
  `ingreso` int(11) NOT NULL,
  `tiene_ingreso` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_otrosingresos_1bb8f392` (`content_type_id`),
  KEY `encuesta_otrosingresos_7d61c803` (`object_id`),
  KEY `encuesta_otrosingresos_7592e3f3` (`fuente_id`),
  KEY `encuesta_otrosingresos_27e4f492` (`tipo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_otrosingresos`
--

LOCK TABLES `encuesta_otrosingresos` WRITE;
/*!40000 ALTER TABLE `encuesta_otrosingresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_otrosingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_piso`
--

DROP TABLE IF EXISTS `encuesta_piso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_piso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_piso`
--

LOCK TABLES `encuesta_piso` WRITE;
/*!40000 ALTER TABLE `encuesta_piso` DISABLE KEYS */;
INSERT INTO `encuesta_piso` VALUES (1,'Tierra'),(2,'Ladrillo de barro'),(3,'Embaldosado'),(4,'Cemento fino'),(5,'Cerámica');
/*!40000 ALTER TABLE `encuesta_piso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_porquemiembro`
--

DROP TABLE IF EXISTS `encuesta_porquemiembro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_porquemiembro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_porquemiembro`
--

LOCK TABLES `encuesta_porquemiembro` WRITE;
/*!40000 ALTER TABLE `encuesta_porquemiembro` DISABLE KEYS */;
INSERT INTO `encuesta_porquemiembro` VALUES (1,'Para apoyar a la cooperativa'),(2,'Para asegurar que todo marche bien'),(3,'Para asegurar la participación de las mujeres'),(4,'Para defender derechos de las mujeres y jóvenes');
/*!40000 ALTER TABLE `encuesta_porquemiembro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_postcosecha`
--

DROP TABLE IF EXISTS `encuesta_postcosecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_postcosecha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `responsable` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_postcosecha_1bb8f392` (`content_type_id`),
  KEY `encuesta_postcosecha_7d61c803` (`object_id`),
  KEY `encuesta_postcosecha_2d3cc3fc` (`producto_id`),
  KEY `encuesta_postcosecha_27e4f492` (`tipo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_postcosecha`
--

LOCK TABLES `encuesta_postcosecha` WRITE;
/*!40000 ALTER TABLE `encuesta_postcosecha` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_postcosecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_preguntacancer`
--

DROP TABLE IF EXISTS `encuesta_preguntacancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_preguntacancer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_preguntacancer`
--

LOCK TABLES `encuesta_preguntacancer` WRITE;
/*!40000 ALTER TABLE `encuesta_preguntacancer` DISABLE KEYS */;
INSERT INTO `encuesta_preguntacancer` VALUES (1,'¿Su pareja espera que le pida permiso antes de buscar atención medica para usted misma?'),(2,'Se ha realizado chequeos ginecológicos'),(3,'Se ha realizado el PAP alguna vez'),(4,'Como han sido los resultados de su PAP'),(5,'Como ha hecho para tratarse los problemas que le han resultado del PAP'),(6,'Actualmente tiene usted algún problema de salud reproductiva que le preocupe?'),(7,'Hombre-Se ha realizado chequeos Médicos alguna vez en su vida'),(8,'Actualmente tiene usted algún problema de salud reproductiva o de transmisión sexual que le preocupe?'),(9,'Si la repuesta es sí, como ha hecho para tratarse su problema de salud reproductiva y/o transmisión sexual?');
/*!40000 ALTER TABLE `encuesta_preguntacancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_preguntajoven`
--

DROP TABLE IF EXISTS `encuesta_preguntajoven`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_preguntajoven` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_preguntajoven`
--

LOCK TABLES `encuesta_preguntajoven` WRITE;
/*!40000 ALTER TABLE `encuesta_preguntajoven` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_preguntajoven` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_preguntamental`
--

DROP TABLE IF EXISTS `encuesta_preguntamental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_preguntamental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_preguntamental`
--

LOCK TABLES `encuesta_preguntamental` WRITE;
/*!40000 ALTER TABLE `encuesta_preguntamental` DISABLE KEYS */;
INSERT INTO `encuesta_preguntamental` VALUES (1,'Estado civil'),(2,'¿Trata de impedirle que vea a sus amistades?'),(3,'¿Intenta que usted no tenga contacto con su familia?'),(4,'A recibido maltrato de alguna persona en su hogar'),(5,'¿Cómo pareja, se pelean constantemente, hasta ponerse violentos?'),(6,'¿Si en algunas ocasiones los niños y niñas sufren violencia por parte de una persona adulta?');
/*!40000 ALTER TABLE `encuesta_preguntamental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_problema`
--

DROP TABLE IF EXISTS `encuesta_problema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_problema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `problema_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_problema_1bb8f392` (`content_type_id`),
  KEY `encuesta_problema_7d61c803` (`object_id`),
  KEY `encuesta_problema_449131c2` (`problema_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_problema`
--

LOCK TABLES `encuesta_problema` WRITE;
/*!40000 ALTER TABLE `encuesta_problema` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_problema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_problema_solucion`
--

DROP TABLE IF EXISTS `encuesta_problema_solucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_problema_solucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problema_id` int(11) NOT NULL,
  `solucion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `problema_id` (`problema_id`,`solucion_id`),
  KEY `encuesta_problema_solucion_449131c2` (`problema_id`),
  KEY `encuesta_problema_solucion_3c3c1938` (`solucion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_problema_solucion`
--

LOCK TABLES `encuesta_problema_solucion` WRITE;
/*!40000 ALTER TABLE `encuesta_problema_solucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_problema_solucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_produccionmaiz`
--

DROP TABLE IF EXISTS `encuesta_produccionmaiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_produccionmaiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `siete` int(11) NOT NULL,
  `ocho` int(11) NOT NULL,
  `nueve` int(11) NOT NULL,
  `diez` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_produccionmaiz_1bb8f392` (`content_type_id`),
  KEY `encuesta_produccionmaiz_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_produccionmaiz`
--

LOCK TABLES `encuesta_produccionmaiz` WRITE;
/*!40000 ALTER TABLE `encuesta_produccionmaiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_produccionmaiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_productoanimal`
--

DROP TABLE IF EXISTS `encuesta_productoanimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_productoanimal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `unidad` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_productoanimal`
--

LOCK TABLES `encuesta_productoanimal` WRITE;
/*!40000 ALTER TABLE `encuesta_productoanimal` DISABLE KEYS */;
INSERT INTO `encuesta_productoanimal` VALUES (1,'Venta de Vacas en pie','Und'),(2,'Leche','Lt'),(3,'Cuajada ','Lb'),(4,'Queso','Lb'),(5,'Crema','Lb'),(6,'Carne','Lb'),(7,'Carne de cerdo','Lb'),(8,'Huevo','Docena'),(9,'Carne de ave','Lb'),(10,'Miel','Lt');
/*!40000 ALTER TABLE `encuesta_productoanimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_propiedades`
--

DROP TABLE IF EXISTS `encuesta_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_propiedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `equipo_id` int(11) DEFAULT NULL,
  `cantidad_equipo` int(11) DEFAULT NULL,
  `infraestructura_id` int(11) DEFAULT NULL,
  `cantidad_infra` int(11) DEFAULT NULL,
  `tipo_equipo` int(11) DEFAULT NULL,
  `respuesta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_propiedades_1bb8f392` (`content_type_id`),
  KEY `encuesta_propiedades_7d61c803` (`object_id`),
  KEY `encuesta_propiedades_7f4dba11` (`equipo_id`),
  KEY `encuesta_propiedades_7b190813` (`infraestructura_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_propiedades`
--

LOCK TABLES `encuesta_propiedades` WRITE;
/*!40000 ALTER TABLE `encuesta_propiedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_razonesmigracion`
--

DROP TABLE IF EXISTS `encuesta_razonesmigracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_razonesmigracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razones` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_razonesmigracion`
--

LOCK TABLES `encuesta_razonesmigracion` WRITE;
/*!40000 ALTER TABLE `encuesta_razonesmigracion` DISABLE KEYS */;
INSERT INTO `encuesta_razonesmigracion` VALUES (1,'Tiene trabajo afuera'),(2,'Huyendo de alguna persona'),(3,'Acompañando un familiar'),(4,'Estudio'),(5,'Estudian afuera'),(6,'Viven con otro familiar');
/*!40000 ALTER TABLE `encuesta_razonesmigracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_recolector`
--

DROP TABLE IF EXISTS `encuesta_recolector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_recolector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_recolector`
--

LOCK TABLES `encuesta_recolector` WRITE;
/*!40000 ALTER TABLE `encuesta_recolector` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_recolector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_reforestacion`
--

DROP TABLE IF EXISTS `encuesta_reforestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_reforestacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_reforestacion_1bb8f392` (`content_type_id`),
  KEY `encuesta_reforestacion_7d61c803` (`object_id`),
  KEY `encuesta_reforestacion_761ba4b0` (`actividad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_reforestacion`
--

LOCK TABLES `encuesta_reforestacion` WRITE;
/*!40000 ALTER TABLE `encuesta_reforestacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_reforestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_respuestascancer`
--

DROP TABLE IF EXISTS `encuesta_respuestascancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_respuestascancer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_respuestascancer`
--

LOCK TABLES `encuesta_respuestascancer` WRITE;
/*!40000 ALTER TABLE `encuesta_respuestascancer` DISABLE KEYS */;
INSERT INTO `encuesta_respuestascancer` VALUES (1,'Si'),(2,'No'),(3,'No se'),(4,'No, con que frecuencia'),(5,'Dos vez al año'),(6,'una vez al año'),(7,'cada 2 años'),(8,'nunca'),(9,'Negativos'),(10,'Inflamación'),(11,'Infección'),(12,'Pre Cáncer'),(13,'Por cuenta propia'),(14,'Clínica privada'),(15,'Centro de salud más cercano'),(16,'Apoyo económico de la cooperativa'),(17,'Apoyo de Cecocafen'),(18,'Por cuenta propia (Automedicado, con apoyo de farmacia)'),(19,'Con apoyo y/o asesoría de su esposa');
/*!40000 ALTER TABLE `encuesta_respuestascancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_riego`
--

DROP TABLE IF EXISTS `encuesta_riego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_riego` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `lugar` int(11) NOT NULL,
  `inundacion` int(11) NOT NULL,
  `aspersion` int(11) NOT NULL,
  `goteo` int(11) NOT NULL,
  `regadera` int(11) NOT NULL,
  `panada` int(11) NOT NULL,
  `manguera` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_riego_1bb8f392` (`content_type_id`),
  KEY `encuesta_riego_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_riego`
--

LOCK TABLES `encuesta_riego` WRITE;
/*!40000 ALTER TABLE `encuesta_riego` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_riego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_rubros`
--

DROP TABLE IF EXISTS `encuesta_rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_rubros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_rubros`
--

LOCK TABLES `encuesta_rubros` WRITE;
/*!40000 ALTER TABLE `encuesta_rubros` DISABLE KEYS */;
INSERT INTO `encuesta_rubros` VALUES (1,'Café','qq pergamino'),(2,'Guineo','cien'),(3,'Plátano','cien'),(4,'Maíz','qq'),(5,'Frijol','qq'),(6,'Sorgo ','qq'),(7,'Tuberculos','qq'),(8,'Aves de corral','Und'),(9,'Naranja','cien'),(10,'Tomate','Lb'),(11,'Limones','cien'),(12,'Repollo','cien'),(13,'Huevos','Docena'),(14,'Maracuya','Docena'),(15,'Queso','Lb'),(16,'Leche','Lt'),(17,'Cuajada','Lb'),(18,'Vaca','Und'),(19,'Pelibuey','Und'),(20,'Cerdo','Und'),(21,'Madera','pulgada'),(22,'Leña','manojo'),(23,'Miel de abeja','Lt');
/*!40000 ALTER TABLE `encuesta_rubros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_salud`
--

DROP TABLE IF EXISTS `encuesta_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_salud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `donde` int(11) NOT NULL,
  `limpieza` int(11) NOT NULL,
  `deshacer` int(11) NOT NULL,
  `agroquimico` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_salud_1bb8f392` (`content_type_id`),
  KEY `encuesta_salud_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_salud`
--

LOCK TABLES `encuesta_salud` WRITE;
/*!40000 ALTER TABLE `encuesta_salud` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_salud_tratamiento`
--

DROP TABLE IF EXISTS `encuesta_salud_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_salud_tratamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salud_id` int(11) NOT NULL,
  `tratamiento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salud_id` (`salud_id`,`tratamiento_id`),
  KEY `encuesta_salud_tratamiento_40388c8a` (`salud_id`),
  KEY `encuesta_salud_tratamiento_1bbf3ef3` (`tratamiento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_salud_tratamiento`
--

LOCK TABLES `encuesta_salud_tratamiento` WRITE;
/*!40000 ALTER TABLE `encuesta_salud_tratamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_salud_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_seguridad`
--

DROP TABLE IF EXISTS `encuesta_seguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_seguridad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `alimento_id` int(11) NOT NULL,
  `producen` int(11) NOT NULL,
  `compran` int(11) NOT NULL,
  `consumen` int(11) NOT NULL,
  `consumen_invierno` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_seguridad_1bb8f392` (`content_type_id`),
  KEY `encuesta_seguridad_7d61c803` (`object_id`),
  KEY `encuesta_seguridad_7daf7119` (`alimento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_seguridad`
--

LOCK TABLES `encuesta_seguridad` WRITE;
/*!40000 ALTER TABLE `encuesta_seguridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_seguridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_solucion`
--

DROP TABLE IF EXISTS `encuesta_solucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_solucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_solucion`
--

LOCK TABLES `encuesta_solucion` WRITE;
/*!40000 ALTER TABLE `encuesta_solucion` DISABLE KEYS */;
INSERT INTO `encuesta_solucion` VALUES (1,'BS'),(2,'CG'),(3,'UC'),(4,'UT'),(5,'AA');
/*!40000 ALTER TABLE `encuesta_solucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_solucionescasez`
--

DROP TABLE IF EXISTS `encuesta_solucionescasez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_solucionescasez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_solucionescasez`
--

LOCK TABLES `encuesta_solucionescasez` WRITE;
/*!40000 ALTER TABLE `encuesta_solucionescasez` DISABLE KEYS */;
INSERT INTO `encuesta_solucionescasez` VALUES (1,'Venta de Mano de obra'),(2,'Venta de Ganado mayor'),(3,'Venta de Ganado menor'),(4,'Venta de equipo y herramienta'),(5,'Venta de la tierra'),(6,'Prestamo'),(7,'Prenda el café');
/*!40000 ALTER TABLE `encuesta_solucionescasez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_techo`
--

DROP TABLE IF EXISTS `encuesta_techo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_techo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_techo`
--

LOCK TABLES `encuesta_techo` WRITE;
/*!40000 ALTER TABLE `encuesta_techo` DISABLE KEYS */;
INSERT INTO `encuesta_techo` VALUES (1,'Plástico'),(2,'Paja'),(3,'Teja de madera'),(4,'Teja de barro'),(5,'Zinc');
/*!40000 ALTER TABLE `encuesta_techo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tecnologia`
--

DROP TABLE IF EXISTS `encuesta_tecnologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tecnologia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tecnologia`
--

LOCK TABLES `encuesta_tecnologia` WRITE;
/*!40000 ALTER TABLE `encuesta_tecnologia` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tenencia`
--

DROP TABLE IF EXISTS `encuesta_tenencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tenencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `parcela` int(11) NOT NULL,
  `cantidad_parcela` int(11) NOT NULL,
  `solar` int(11) NOT NULL,
  `cantidad_solar` int(11) NOT NULL,
  `dueno` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_tenencia_1bb8f392` (`content_type_id`),
  KEY `encuesta_tenencia_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tenencia`
--

LOCK TABLES `encuesta_tenencia` WRITE;
/*!40000 ALTER TABLE `encuesta_tenencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_tenencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tierra`
--

DROP TABLE IF EXISTS `encuesta_tierra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tierra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `uso_tierra_id` int(11) NOT NULL,
  `areas` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_tierra_1bb8f392` (`content_type_id`),
  KEY `encuesta_tierra_7d61c803` (`object_id`),
  KEY `encuesta_tierra_5fe6b21d` (`uso_tierra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tierra`
--

LOCK TABLES `encuesta_tierra` WRITE;
/*!40000 ALTER TABLE `encuesta_tierra` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_tierra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipoalmacenaje`
--

DROP TABLE IF EXISTS `encuesta_tipoalmacenaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tipoalmacenaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tipoalmacenaje`
--

LOCK TABLES `encuesta_tipoalmacenaje` WRITE;
/*!40000 ALTER TABLE `encuesta_tipoalmacenaje` DISABLE KEYS */;
INSERT INTO `encuesta_tipoalmacenaje` VALUES (1,'SM'),(2,'TM'),(3,'TR'),(4,'S'),(5,'BP'),(6,'B');
/*!40000 ALTER TABLE `encuesta_tipoalmacenaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipocasa`
--

DROP TABLE IF EXISTS `encuesta_tipocasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tipocasa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_tipocasa_1bb8f392` (`content_type_id`),
  KEY `encuesta_tipocasa_7d61c803` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tipocasa`
--

LOCK TABLES `encuesta_tipocasa` WRITE;
/*!40000 ALTER TABLE `encuesta_tipocasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_tipocasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipocasa_piso`
--

DROP TABLE IF EXISTS `encuesta_tipocasa_piso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tipocasa_piso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipocasa_id` int(11) NOT NULL,
  `piso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipocasa_id` (`tipocasa_id`,`piso_id`),
  KEY `encuesta_tipocasa_piso_3ea3b976` (`tipocasa_id`),
  KEY `encuesta_tipocasa_piso_6e78a6eb` (`piso_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tipocasa_piso`
--

LOCK TABLES `encuesta_tipocasa_piso` WRITE;
/*!40000 ALTER TABLE `encuesta_tipocasa_piso` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_tipocasa_piso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipocasa_techo`
--

DROP TABLE IF EXISTS `encuesta_tipocasa_techo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tipocasa_techo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipocasa_id` int(11) NOT NULL,
  `techo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipocasa_id` (`tipocasa_id`,`techo_id`),
  KEY `encuesta_tipocasa_techo_3ea3b976` (`tipocasa_id`),
  KEY `encuesta_tipocasa_techo_373c9b26` (`techo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tipocasa_techo`
--

LOCK TABLES `encuesta_tipocasa_techo` WRITE;
/*!40000 ALTER TABLE `encuesta_tipocasa_techo` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_tipocasa_techo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipoproblema`
--

DROP TABLE IF EXISTS `encuesta_tipoproblema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tipoproblema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tipoproblema`
--

LOCK TABLES `encuesta_tipoproblema` WRITE;
/*!40000 ALTER TABLE `encuesta_tipoproblema` DISABLE KEYS */;
INSERT INTO `encuesta_tipoproblema` VALUES (1,'Humedad'),(2,'Insectos'),(3,'Roedores');
/*!40000 ALTER TABLE `encuesta_tipoproblema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipotrabajo`
--

DROP TABLE IF EXISTS `encuesta_tipotrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tipotrabajo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tipotrabajo`
--

LOCK TABLES `encuesta_tipotrabajo` WRITE;
/*!40000 ALTER TABLE `encuesta_tipotrabajo` DISABLE KEYS */;
INSERT INTO `encuesta_tipotrabajo` VALUES (1,'MO'),(2,'M'),(3,'C'),(4,'I'),(5,'P'),(6,'Pan'),(7,'Cos'),(8,'Com'),(9,'Nacional y Extranjero'),(10,'T'),(11,'E'),(12,'B'),(13,'H');
/*!40000 ALTER TABLE `encuesta_tipotrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_transporte`
--

DROP TABLE IF EXISTS `encuesta_transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_transporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `transporte_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_transporte_1bb8f392` (`content_type_id`),
  KEY `encuesta_transporte_7d61c803` (`object_id`),
  KEY `encuesta_transporte_4de90b82` (`transporte_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_transporte`
--

LOCK TABLES `encuesta_transporte` WRITE;
/*!40000 ALTER TABLE `encuesta_transporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta_transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tratamiento`
--

DROP TABLE IF EXISTS `encuesta_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_tratamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tratamiento`
--

LOCK TABLES `encuesta_tratamiento` WRITE;
/*!40000 ALTER TABLE `encuesta_tratamiento` DISABLE KEYS */;
INSERT INTO `encuesta_tratamiento` VALUES (1,'aceite negro'),(2,'Ceniza'),(3,'Cal'),(4,'Gazolina');
/*!40000 ALTER TABLE `encuesta_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_usotierra`
--

DROP TABLE IF EXISTS `encuesta_usotierra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_usotierra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_usotierra`
--

LOCK TABLES `encuesta_usotierra` WRITE;
/*!40000 ALTER TABLE `encuesta_usotierra` DISABLE KEYS */;
INSERT INTO `encuesta_usotierra` VALUES (1,'Área de Café Productivo'),(2,'Área de Café Desarrollo'),(3,'Otros Cultivos agrícolas'),(4,'Huerto de patio'),(5,'Infraestructura'),(6,'Bosque'),(7,'Tacotales'),(8,'Plantaciones  forestal'),(9,'Áreas de pastos abierto'),(10,'Áreas de pastos con árboles');
/*!40000 ALTER TABLE `encuesta_usotierra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_comunidad`
--

DROP TABLE IF EXISTS `lugar_comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_comunidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lugar_comunidad_cebc556` (`municipio_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_comunidad`
--

LOCK TABLES `lugar_comunidad` WRITE;
/*!40000 ALTER TABLE `lugar_comunidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugar_comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_departamento`
--

DROP TABLE IF EXISTS `lugar_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_departamento`
--

LOCK TABLES `lugar_departamento` WRITE;
/*!40000 ALTER TABLE `lugar_departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugar_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_municipio`
--

DROP TABLE IF EXISTS `lugar_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`),
  KEY `lugar_municipio_779a4ea6` (`departamento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_municipio`
--

LOCK TABLES `lugar_municipio` WRITE;
/*!40000 ALTER TABLE `lugar_municipio` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugar_municipio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-05 22:43:07
