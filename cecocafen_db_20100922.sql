-- MySQL dump 10.11
--
-- Host: localhost    Database: simas1_cecocafen
-- ------------------------------------------------------
-- Server version	5.0.77

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'cecocafen1');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,259),(2,1,260),(3,1,261),(4,1,262),(5,1,263),(6,1,264),(7,1,265),(8,1,266),(9,1,267),(10,1,268),(11,1,269),(12,1,270),(13,1,271),(14,1,272),(15,1,273),(16,1,25),(17,1,26),(18,1,27);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add cooperativa',9,'add_cooperativa'),(26,'Can change cooperativa',9,'change_cooperativa'),(27,'Can delete cooperativa',9,'delete_cooperativa'),(28,'Can add tecnologia',10,'add_tecnologia'),(29,'Can change tecnologia',10,'change_tecnologia'),(30,'Can delete tecnologia',10,'delete_tecnologia'),(31,'Can add certificacion',11,'add_certificacion'),(32,'Can change certificacion',11,'change_certificacion'),(33,'Can delete certificacion',11,'delete_certificacion'),(34,'Can add datos generales',12,'add_datosgenerales'),(35,'Can change datos generales',12,'change_datosgenerales'),(36,'Can delete datos generales',12,'delete_datosgenerales'),(37,'Can add beneficios',13,'add_beneficios'),(38,'Can change beneficios',13,'change_beneficios'),(39,'Can delete beneficios',13,'delete_beneficios'),(40,'Can add porque miembro',14,'add_porquemiembro'),(41,'Can change porque miembro',14,'change_porquemiembro'),(42,'Can delete porque miembro',14,'delete_porquemiembro'),(43,'Can add admon actual',15,'add_admonactual'),(44,'Can change admon actual',15,'change_admonactual'),(45,'Can delete admon actual',15,'delete_admonactual'),(46,'Can add organizacion',16,'add_organizacion'),(47,'Can change organizacion',16,'change_organizacion'),(48,'Can delete organizacion',16,'delete_organizacion'),(49,'Can add razones migracion',17,'add_razonesmigracion'),(50,'Can change razones migracion',17,'change_razonesmigracion'),(51,'Can delete razones migracion',17,'delete_razonesmigracion'),(52,'Can add migracion',18,'add_migracion'),(53,'Can change migracion',18,'change_migracion'),(54,'Can delete migracion',18,'delete_migracion'),(55,'Can add campo',19,'add_campo'),(56,'Can change campo',19,'change_campo'),(57,'Can delete campo',19,'delete_campo'),(58,'Can add condiciones campo',20,'add_condicionescampo'),(59,'Can change condiciones campo',20,'change_condicionescampo'),(60,'Can delete condiciones campo',20,'delete_condicionescampo'),(61,'Can add tenencia',21,'add_tenencia'),(62,'Can change tenencia',21,'change_tenencia'),(63,'Can delete tenencia',21,'delete_tenencia'),(64,'Can add uso tierra',22,'add_usotierra'),(65,'Can change uso tierra',22,'change_usotierra'),(66,'Can delete uso tierra',22,'delete_usotierra'),(67,'Can add tierra',23,'add_tierra'),(68,'Can change tierra',23,'change_tierra'),(69,'Can delete tierra',23,'delete_tierra'),(70,'Can add actividades',24,'add_actividades'),(71,'Can change actividades',24,'change_actividades'),(72,'Can delete actividades',24,'delete_actividades'),(73,'Can add reforestacion',25,'add_reforestacion'),(74,'Can change reforestacion',25,'change_reforestacion'),(75,'Can delete reforestacion',25,'delete_reforestacion'),(76,'Can add combustible',26,'add_combustible'),(77,'Can change combustible',26,'change_combustible'),(78,'Can delete combustible',26,'delete_combustible'),(79,'Can add actividad conservacion',27,'add_actividadconservacion'),(80,'Can change actividad conservacion',27,'change_actividadconservacion'),(81,'Can delete actividad conservacion',27,'delete_actividadconservacion'),(82,'Can add conservacion',28,'add_conservacion'),(83,'Can change conservacion',28,'change_conservacion'),(84,'Can delete conservacion',28,'delete_conservacion'),(85,'Can add abono',29,'add_abono'),(86,'Can change abono',29,'change_abono'),(87,'Can delete abono',29,'delete_abono'),(88,'Can add compra',30,'add_compra'),(89,'Can change compra',30,'change_compra'),(90,'Can delete compra',30,'delete_compra'),(91,'Can add cultivos',31,'add_cultivos'),(92,'Can change cultivos',31,'change_cultivos'),(93,'Can delete cultivos',31,'delete_cultivos'),(94,'Can add cultivos finca',32,'add_cultivosfinca'),(95,'Can change cultivos finca',32,'change_cultivosfinca'),(96,'Can delete cultivos finca',32,'delete_cultivosfinca'),(97,'Can add animales',33,'add_animales'),(98,'Can change animales',33,'change_animales'),(99,'Can delete animales',33,'delete_animales'),(100,'Can add producto animal',34,'add_productoanimal'),(101,'Can change producto animal',34,'change_productoanimal'),(102,'Can delete producto animal',34,'delete_productoanimal'),(103,'Can add finca animales',35,'add_fincaanimales'),(104,'Can change finca animales',35,'change_fincaanimales'),(105,'Can delete finca animales',35,'delete_fincaanimales'),(106,'Can add tipo almacenaje',36,'add_tipoalmacenaje'),(107,'Can change tipo almacenaje',36,'change_tipoalmacenaje'),(108,'Can delete tipo almacenaje',36,'delete_tipoalmacenaje'),(109,'Can add postcosecha',37,'add_postcosecha'),(110,'Can change postcosecha',37,'change_postcosecha'),(111,'Can delete postcosecha',37,'delete_postcosecha'),(112,'Can add tipo problema',38,'add_tipoproblema'),(113,'Can change tipo problema',38,'change_tipoproblema'),(114,'Can delete tipo problema',38,'delete_tipoproblema'),(115,'Can add solucion',39,'add_solucion'),(116,'Can change solucion',39,'change_solucion'),(117,'Can delete solucion',39,'delete_solucion'),(118,'Can add problema',40,'add_problema'),(119,'Can change problema',40,'change_problema'),(120,'Can delete problema',40,'delete_problema'),(121,'Can add rubros',41,'add_rubros'),(122,'Can change rubros',41,'change_rubros'),(123,'Can delete rubros',41,'delete_rubros'),(124,'Can add ingreso familiar',42,'add_ingresofamiliar'),(125,'Can change ingreso familiar',42,'change_ingresofamiliar'),(126,'Can delete ingreso familiar',42,'delete_ingresofamiliar'),(127,'Can add fuentes',43,'add_fuentes'),(128,'Can change fuentes',43,'change_fuentes'),(129,'Can delete fuentes',43,'delete_fuentes'),(130,'Can add tipo trabajo',44,'add_tipotrabajo'),(131,'Can change tipo trabajo',44,'change_tipotrabajo'),(132,'Can delete tipo trabajo',44,'delete_tipotrabajo'),(133,'Can add otros ingresos',45,'add_otrosingresos'),(134,'Can change otros ingresos',45,'change_otrosingresos'),(135,'Can delete otros ingresos',45,'delete_otrosingresos'),(136,'Can add aportar',46,'add_aportar'),(137,'Can change aportar',46,'change_aportar'),(138,'Can delete aportar',46,'delete_aportar'),(139,'Can add destinar',47,'add_destinar'),(140,'Can change destinar',47,'change_destinar'),(141,'Can delete destinar',47,'delete_destinar'),(142,'Can add piso',48,'add_piso'),(143,'Can change piso',48,'change_piso'),(144,'Can delete piso',48,'delete_piso'),(145,'Can add techo',49,'add_techo'),(146,'Can change techo',49,'change_techo'),(147,'Can delete techo',49,'delete_techo'),(148,'Can add tipo casa',50,'add_tipocasa'),(149,'Can change tipo casa',50,'change_tipocasa'),(150,'Can delete tipo casa',50,'delete_tipocasa'),(151,'Can add detalle casa',51,'add_detallecasa'),(152,'Can change detalle casa',51,'change_detallecasa'),(153,'Can delete detalle casa',51,'delete_detallecasa'),(154,'Can add equipos',52,'add_equipos'),(155,'Can change equipos',52,'change_equipos'),(156,'Can delete equipos',52,'delete_equipos'),(157,'Can add infraestructuras',53,'add_infraestructuras'),(158,'Can change infraestructuras',53,'change_infraestructuras'),(159,'Can delete infraestructuras',53,'delete_infraestructuras'),(160,'Can add propiedades',54,'add_propiedades'),(161,'Can change propiedades',54,'change_propiedades'),(162,'Can delete propiedades',54,'delete_propiedades'),(163,'Can add nombre herramienta',55,'add_nombreherramienta'),(164,'Can change nombre herramienta',55,'change_nombreherramienta'),(165,'Can delete nombre herramienta',55,'delete_nombreherramienta'),(166,'Can add herramientas',56,'add_herramientas'),(167,'Can change herramientas',56,'change_herramientas'),(168,'Can delete herramientas',56,'delete_herramientas'),(169,'Can add nombre transporte',57,'add_nombretransporte'),(170,'Can change nombre transporte',57,'change_nombretransporte'),(171,'Can delete nombre transporte',57,'delete_nombretransporte'),(172,'Can add transporte',58,'add_transporte'),(173,'Can change transporte',58,'change_transporte'),(174,'Can delete transporte',58,'delete_transporte'),(175,'Can add alimentos',59,'add_alimentos'),(176,'Can change alimentos',59,'change_alimentos'),(177,'Can delete alimentos',59,'delete_alimentos'),(178,'Can add seguridad',60,'add_seguridad'),(179,'Can change seguridad',60,'change_seguridad'),(180,'Can delete seguridad',60,'delete_seguridad'),(181,'Can add meses',61,'add_meses'),(182,'Can change meses',61,'change_meses'),(183,'Can delete meses',61,'delete_meses'),(184,'Can add consume',62,'add_consume'),(185,'Can change consume',62,'change_consume'),(186,'Can delete consume',62,'delete_consume'),(187,'Can add solucion escasez',63,'add_solucionescasez'),(188,'Can change solucion escasez',63,'change_solucionescasez'),(189,'Can delete solucion escasez',63,'delete_solucionescasez'),(190,'Can add escasez',64,'add_escasez'),(191,'Can change escasez',64,'change_escasez'),(192,'Can delete escasez',64,'delete_escasez'),(193,'Can add produccion maiz',65,'add_produccionmaiz'),(194,'Can change produccion maiz',65,'change_produccionmaiz'),(195,'Can delete produccion maiz',65,'delete_produccionmaiz'),(196,'Can add riego',66,'add_riego'),(197,'Can change riego',66,'change_riego'),(198,'Can delete riego',66,'delete_riego'),(199,'Can add agua',67,'add_agua'),(200,'Can change agua',67,'change_agua'),(201,'Can delete agua',67,'delete_agua'),(202,'Can add donde ahorro',68,'add_dondeahorro'),(203,'Can change donde ahorro',68,'change_dondeahorro'),(204,'Can delete donde ahorro',68,'delete_dondeahorro'),(205,'Can add ahorra porque',69,'add_ahorraporque'),(206,'Can change ahorra porque',69,'change_ahorraporque'),(207,'Can delete ahorra porque',69,'delete_ahorraporque'),(208,'Can add ahorro',70,'add_ahorro'),(209,'Can change ahorro',70,'change_ahorro'),(210,'Can delete ahorro',70,'delete_ahorro'),(211,'Can add da credito',71,'add_dacredito'),(212,'Can change da credito',71,'change_dacredito'),(213,'Can delete da credito',71,'delete_dacredito'),(214,'Can add ocupa credito',72,'add_ocupacredito'),(215,'Can change ocupa credito',72,'change_ocupacredito'),(216,'Can delete ocupa credito',72,'delete_ocupacredito'),(217,'Can add credito',73,'add_credito'),(218,'Can change credito',73,'change_credito'),(219,'Can delete credito',73,'delete_credito'),(220,'Can add tratamiento',74,'add_tratamiento'),(221,'Can change tratamiento',74,'change_tratamiento'),(222,'Can delete tratamiento',74,'delete_tratamiento'),(223,'Can add quimico',75,'add_quimico'),(224,'Can change quimico',75,'change_quimico'),(225,'Can delete quimico',75,'delete_quimico'),(226,'Can add salud',76,'add_salud'),(227,'Can change salud',76,'change_salud'),(228,'Can delete salud',76,'delete_salud'),(229,'Can add enfermedades',77,'add_enfermedades'),(230,'Can change enfermedades',77,'change_enfermedades'),(231,'Can delete enfermedades',77,'delete_enfermedades'),(232,'Can add pregunta cancer',78,'add_preguntacancer'),(233,'Can change pregunta cancer',78,'change_preguntacancer'),(234,'Can delete pregunta cancer',78,'delete_preguntacancer'),(235,'Can add respuestas cancer',79,'add_respuestascancer'),(236,'Can change respuestas cancer',79,'change_respuestascancer'),(237,'Can delete respuestas cancer',79,'delete_respuestascancer'),(238,'Can add cancer',80,'add_cancer'),(239,'Can change cancer',80,'change_cancer'),(240,'Can delete cancer',80,'delete_cancer'),(241,'Can add pregunta mental',81,'add_preguntamental'),(242,'Can change pregunta mental',81,'change_preguntamental'),(243,'Can delete pregunta mental',81,'delete_preguntamental'),(244,'Can add mental',82,'add_mental'),(245,'Can change mental',82,'change_mental'),(246,'Can delete mental',82,'delete_mental'),(247,'Can add educacion jovenes',83,'add_educacionjovenes'),(248,'Can change educacion jovenes',83,'change_educacionjovenes'),(249,'Can delete educacion jovenes',83,'delete_educacionjovenes'),(250,'Can add beneficio joven',84,'add_beneficiojoven'),(251,'Can change beneficio joven',84,'change_beneficiojoven'),(252,'Can delete beneficio joven',84,'delete_beneficiojoven'),(253,'Can add miembro joven',85,'add_miembrojoven'),(254,'Can change miembro joven',85,'change_miembrojoven'),(255,'Can delete miembro joven',85,'delete_miembrojoven'),(256,'Can add jovenes',86,'add_jovenes'),(257,'Can change jovenes',86,'change_jovenes'),(258,'Can delete jovenes',86,'delete_jovenes'),(259,'Can add recolector',87,'add_recolector'),(260,'Can change recolector',87,'change_recolector'),(261,'Can delete recolector',87,'delete_recolector'),(262,'Can add encuesta',88,'add_encuesta'),(263,'Can change encuesta',88,'change_encuesta'),(264,'Can delete encuesta',88,'delete_encuesta'),(265,'Can add departamento',89,'add_departamento'),(266,'Can change departamento',89,'change_departamento'),(267,'Can delete departamento',89,'delete_departamento'),(268,'Can add municipio',90,'add_municipio'),(269,'Can change municipio',90,'change_municipio'),(270,'Can delete municipio',90,'delete_municipio'),(271,'Can add comunidad',91,'add_comunidad'),(272,'Can change comunidad',91,'change_comunidad'),(273,'Can delete comunidad',91,'delete_comunidad');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
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
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'crocha','','','carlos@simas.org.ni','sha1$f9fa4$33a84c63f532f39e8f14e164f36f11f2d2016dfc',1,1,1,'2010-09-21 21:54:40','2010-08-08 17:39:17'),(2,'yuritt','Yuritt','','','sha1$e5f35$f2fbc73391f30ea6ffa48480ed3aa8f61f8e8476',1,1,0,'2010-09-18 16:51:49','2010-08-08 20:16:24'),(3,'iprado','Idania','Prado','','sha1$a4cf0$1729fb978c7318cc4fdefe0452dbe4342147bc46',1,1,0,'2010-09-09 07:56:58','2010-08-08 20:17:19'),(4,'ymercedes','','Mercedes','','sha1$7caa9$64610e66b88d3495fa28354dd854e9c5e6b541bc',1,1,0,'2010-08-08 20:45:04','2010-08-08 20:19:30');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1),(2,3,1),(3,4,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2010-08-08 20:13:26',1,2,'1','cecocafen1',1,''),(2,'2010-08-08 20:16:24',1,3,'2','yuritt',1,''),(3,'2010-08-08 20:16:43',1,3,'2','yuritt',2,'Modificado/a first_name, is_staff y groups.'),(4,'2010-08-08 20:17:19',1,3,'3','iprado',1,''),(5,'2010-08-08 20:18:27',1,3,'3','iprado',2,'Modificado/a first_name, last_name, is_staff y groups.'),(6,'2010-08-08 20:19:30',1,3,'4','ymercedes',1,''),(7,'2010-08-08 20:20:45',1,3,'4','ymercedes',2,'Modificado/a last_name, is_staff y groups.'),(8,'2010-08-08 20:39:58',2,89,'1','Matagalpa',1,''),(9,'2010-08-08 20:40:14',2,89,'2','Jinotega',1,''),(10,'2010-08-08 20:40:31',2,89,'3','Nueva Segovia',1,''),(11,'2010-08-08 20:40:45',2,89,'4','RAAN',1,''),(12,'2010-08-08 20:41:21',2,90,'1','Matagalpa',1,''),(13,'2010-08-08 20:41:34',2,90,'2','Jinotega',1,''),(14,'2010-08-08 20:42:21',2,91,'1','La parrando arriba',1,''),(15,'2010-08-08 20:43:06',2,87,'1','Derling Sánchez',1,''),(16,'2010-08-08 20:43:25',2,87,'2','Faustino Laguna Gamez',1,''),(17,'2010-08-08 20:44:12',2,9,'1','Juan Ramon Corea',1,''),(18,'2010-08-08 20:47:00',1,24,'7','Establecimiento de viveros forestal',2,'Modificado/a nombre.'),(19,'2010-08-08 20:48:36',1,34,'11','No tiene',1,''),(20,'2010-08-08 20:49:21',1,34,'12','carne de pelibuey',1,''),(21,'2010-08-08 20:49:40',1,34,'6','Carne de res',2,'Modificado/a nombre.'),(22,'2010-08-08 20:50:16',1,36,'7','casa',1,''),(23,'2010-08-08 20:53:46',1,10,'1','Tecnificada',1,''),(24,'2010-08-08 20:53:57',1,10,'2','Semitecnificada',1,''),(25,'2010-08-08 20:54:09',1,10,'3','Convencional',1,''),(26,'2010-08-08 20:54:18',1,10,'4','Tradicional',1,''),(27,'2010-08-08 20:54:41',1,11,'1','Organica',1,''),(28,'2010-08-08 20:54:57',1,11,'2','Café practice',1,''),(29,'2010-08-08 20:55:05',1,11,'3','UTZ',1,''),(30,'2010-08-08 20:55:30',1,11,'4','FLO',1,''),(31,'2010-08-09 16:44:48',3,87,'3','Aurelio González',1,''),(32,'2010-08-19 14:40:13',3,87,'4','Mario Montano',1,''),(33,'2010-08-19 14:41:10',3,87,'5','Mario Montano',1,''),(34,'2010-08-19 14:41:18',3,87,'5','Mario Montano',2,'No ha cambiado ningún campo.'),(35,'2010-08-19 14:45:03',3,9,'2','Las Brumas',1,''),(36,'2010-08-19 14:49:47',3,91,'2','Las Mercedes',1,''),(37,'2010-08-19 14:50:31',3,87,'5','Mario Montano',3,''),(38,'2010-08-19 14:59:36',3,88,'1','Fermín Hernández Gutiérrez',1,''),(39,'2010-08-19 15:16:03',3,88,'1','Fermín Hernández Gutiérrez',2,'Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion.'),(40,'2010-08-20 08:39:52',3,88,'1','Fermín Hernández Gutiérrez',2,'Añadido/a \"Conservacion object\" conservacion. Añadido/a \"Abono object\" abono. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra.'),(41,'2010-08-20 09:04:22',3,88,'1','Fermín Hernández Gutiérrez',2,'Modificados pulpa para \"Compra object\" compra. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad.'),(42,'2010-08-20 10:24:00',3,88,'1','Fermín Hernández Gutiérrez',2,'Añadido/a \"Consume object\" consume. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(43,'2010-08-20 10:24:53',3,88,'1','Fermín Hernández Gutiérrez',2,'No ha cambiado ningún campo.'),(44,'2010-08-25 18:06:10',3,88,'2','José Andrés Palacios Hernández',1,''),(45,'2010-08-26 08:07:20',1,75,'1','para uso del hogar',1,''),(46,'2010-08-26 08:07:28',1,75,'2','Quema',1,''),(47,'2010-08-26 08:07:34',1,75,'3','Entierra',1,''),(48,'2010-08-26 08:07:48',1,75,'4','Triple lavado',1,''),(49,'2010-08-26 08:08:00',1,75,'5','Perfora y almacena',1,''),(50,'2010-08-27 10:58:56',3,88,'1','Fermín Hernández Gutiérrez',2,'Modificados agroquimico para \"Salud object\" salud.'),(51,'2010-08-27 11:14:19',3,88,'2','José Andrés Palacios Hernández',2,'Modificados solucion para \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar.'),(52,'2010-08-27 11:57:26',3,88,'2','José Andrés Palacios Hernández',2,'Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(53,'2010-08-27 12:02:58',3,91,'3','Parranda Arriba',1,''),(54,'2010-08-27 12:03:12',3,91,'3','Parranda Arriba',2,'No ha cambiado ningún campo.'),(55,'2010-08-27 12:49:16',3,88,'3','Apolinar de Jesús Rizo',1,''),(56,'2010-08-27 13:22:54',3,88,'3','Apolinar de Jesús Rizo',2,'Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Riego object\" riego. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(57,'2010-08-27 14:11:20',3,88,'4','Julio César Chavarría Cruz',1,''),(58,'2010-08-27 14:18:31',3,91,'4','El Paraisito',1,''),(59,'2010-08-27 15:15:56',3,88,'5','Julio César Vanegas Osejo',1,''),(60,'2010-08-27 15:21:26',3,91,'5','La Esmeralda',1,''),(61,'2010-08-27 15:21:51',3,88,'6','Baltazar Solorzano Osejo',1,''),(62,'2010-08-27 15:57:44',3,88,'6','Baltazar Solorzano Osejo',2,'Añadido/a \"Organizacion object\" organizacion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"Abono object\" abono. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"palines\" herramientas. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad.'),(63,'2010-08-30 11:33:06',3,88,'6','Baltazar Solorzano Osejo',2,'Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"Escasez object\" escasez. Añadido/a \"Riego object\" riego. Añadido/a \"Riego object\" riego. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(64,'2010-08-30 12:31:16',3,88,'7','José Luis Palacios',1,''),(65,'2010-08-30 12:44:03',3,88,'7','José Luis Palacios',2,'Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(66,'2010-08-30 12:48:03',3,87,'6','Yader Aguilar',1,''),(67,'2010-08-30 12:48:26',3,87,'7','Yader Aguilar',1,''),(68,'2010-08-30 12:48:56',3,87,'6','Yader Aguilar',3,''),(69,'2010-08-30 13:24:00',3,88,'8','Julio Cesar Chavarría Cantarero',1,''),(70,'2010-08-30 14:28:49',3,88,'8','Julio Cesar Chavarría Cantarero',2,'Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(71,'2010-08-30 14:30:15',3,9,'3','La Esperanza ',1,''),(72,'2010-08-30 14:32:35',3,88,'9','Mercedes Mairena Zelaya',1,''),(73,'2010-08-30 14:33:07',3,91,'6','La Pita',1,''),(74,'2010-08-30 15:14:32',3,88,'9','Mercedes Mairena Zelaya',2,'Modificados comunidad, tecnologia y certificacion para \"Mercedes Mairena Zelaya\" datos generales. Añadido/a \"Organizacion object\" organizacion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"Abono object\" abono. Añadido/a \"Abono object\" abono. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Riego object\" riego. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(75,'2010-08-30 15:16:32',3,9,'4','Augusto César Sandino',1,''),(76,'2010-08-30 15:18:26',3,88,'10','Reynaldo Rivera Ramos',1,''),(77,'2010-08-30 15:19:20',3,90,'3','Tuma La Dalia',1,''),(78,'2010-08-30 15:19:31',3,91,'7','Aguas Amarillas',1,''),(79,'2010-08-30 16:06:02',3,88,'10','Reynaldo Rivera Ramos',2,'Modificados comunidad, tecnologia y certificacion para \"Reynaldo Rivera Ramos\" datos generales. Añadido/a \"Organizacion object\" organizacion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"Abono object\" abono. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Riego object\" riego. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(80,'2010-08-30 16:48:58',3,88,'11','Francisco Dávila Fuentes',1,''),(81,'2010-08-30 17:28:04',3,88,'12','María Ignacia Rugama Flores',1,''),(82,'2010-08-30 17:28:47',3,87,'8','Jamileth Ruiz Mejía',1,''),(83,'2010-08-30 17:29:27',3,9,'5','Uca San Ramon La Hermandad',1,''),(84,'2010-08-30 17:30:07',3,90,'4','San Ramon',1,''),(85,'2010-08-30 17:30:18',3,91,'8','Los Andes',1,''),(86,'2010-08-30 17:44:11',3,88,'13','Sebastian Mairena ',1,''),(87,'2010-08-31 16:07:48',3,88,'13','Sebastian Mairena ',2,'Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades.'),(88,'2010-08-31 16:51:20',3,88,'13','Sebastian Mairena ',2,'Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Modificados infraestructura, cantidad_infra, tipo_equipo y respuesta para \"Propiedades object\" propiedades. Modificados infraestructura, cantidad_infra, tipo_equipo y respuesta para \"Propiedades object\" propiedades. Modificados cantidad_equipo, infraestructura, cantidad_infra, tipo_equipo y respuesta para \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Riego object\" riego. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(89,'2010-08-31 16:54:52',3,87,'9','Marcela Pino',1,''),(90,'2010-08-31 16:55:33',3,87,'9','Marcela Pino',2,'No ha cambiado ningún campo.'),(91,'2010-08-31 17:10:06',3,9,'6','Uca San Ramon Denis Gutiérrez',1,''),(92,'2010-09-01 08:48:03',2,91,'9','El Jobo',1,''),(93,'2010-09-01 10:23:12',2,88,'14','Auxiliadora Mairena',1,''),(94,'2010-09-01 10:39:38',2,88,'14','Auxiliadora Mairena',2,'Modificados cantidad_solar para \"Tenencia object\" tenencia.'),(95,'2010-09-01 10:40:45',2,87,'10','Marcos Zeledón',1,''),(96,'2010-09-01 10:44:27',2,9,'7','UCA San Ramón Daniel Teller',1,''),(97,'2010-09-01 10:46:10',2,91,'10','Yasica Sur',1,''),(98,'2010-09-01 11:51:42',2,88,'15','Valentín Rodríguez',1,''),(99,'2010-09-01 11:56:02',2,9,'8','UCA San Ramón El Privilegio',1,''),(100,'2010-09-01 11:57:12',2,91,'11','El Roblar',1,''),(101,'2010-09-01 14:15:05',2,88,'16','Mayra del Carmen Gámez Hernández',1,''),(102,'2010-09-01 14:18:16',2,91,'12','Ilapo #2',1,''),(103,'2010-09-01 14:20:24',2,9,'9','UCA San Ramón Francisco Javier Sáez',1,''),(104,'2010-09-01 15:03:31',2,88,'17','Ricardo José Castillo Weimer',1,''),(105,'2010-09-01 15:07:13',2,91,'13','El Paraíso',1,''),(106,'2010-09-01 15:39:07',2,88,'18','Vicenta de Jesús Sánchez Villagra',1,''),(107,'2010-09-01 16:11:18',2,88,'19','Julián Erasmo Castro Morales',1,''),(108,'2010-09-02 07:33:44',2,91,'14','Las Vegas',1,''),(109,'2010-09-02 07:34:12',2,9,'10','Lázaro Talavera',1,''),(110,'2010-09-02 08:09:23',2,88,'20','Esmerita Urbina Rayo',1,''),(111,'2010-09-02 08:41:40',2,88,'21','José Francisco García',1,''),(112,'2010-09-02 08:58:13',2,88,'22','Antonio García Polanco',1,''),(113,'2010-09-02 09:24:52',2,88,'22','Antonio García Polanco',2,'Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Modificados consumo, venta_libre y venta_organizada para \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Riego object\" riego. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(114,'2010-09-02 10:02:31',2,88,'23','David Valdivia',1,''),(115,'2010-09-02 10:29:22',2,88,'24','Marcial García Gutiérrez',1,''),(116,'2010-09-02 11:01:39',2,88,'25','Rupert Duarte',1,''),(117,'2010-09-02 11:04:14',2,91,'15','La Salvadora',1,''),(118,'2010-09-02 11:41:12',2,88,'26','Pilar Pastora',1,''),(119,'2010-09-02 11:41:35',2,88,'26','Pilar Pastora',2,'No ha cambiado ningún campo.'),(120,'2010-09-02 11:42:35',2,87,'11','Marvin Molina Zamora',1,''),(121,'2010-09-02 11:47:49',2,9,'11','CORWAS',1,''),(122,'2010-09-02 11:50:42',2,90,'5','Waslala',1,''),(123,'2010-09-02 11:50:49',2,91,'16','Posolera',1,''),(124,'2010-09-02 12:26:55',2,88,'27','Fausto de Jesús Manzanares ',1,''),(125,'2010-09-02 13:20:13',2,88,'28','Seberiano Granados Hernández',1,''),(126,'2010-09-02 13:58:29',2,88,'29','Paulina Gámez Reyes',1,''),(127,'2010-09-02 15:35:06',3,88,'30','Bsmark Enrique Díaz Avilez',1,''),(128,'2010-09-02 15:36:30',3,88,'30','Bismark Enrique Díaz Avilez',2,'Modificados nombre para \"Bismark Enrique Díaz Avilez\" datos generales. Añadido/a \"Compra object\" compra.'),(129,'2010-09-02 15:44:09',3,88,'30','Bismark Enrique Díaz Avilez',2,'Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha.'),(130,'2010-09-02 17:30:30',3,88,'30','Candelario Díaz Hernández',2,'Modificados nombre para \"Candelario Díaz Hernández\" datos generales. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(131,'2010-09-02 23:03:44',1,27,'7','Ninguna',1,''),(132,'2010-09-02 23:10:21',1,38,'4','Falta Infract Almac',1,''),(133,'2010-09-02 23:13:36',1,44,'14','Téc',1,''),(134,'2010-09-02 23:13:43',1,44,'15','Prof',1,''),(135,'2010-09-02 23:15:50',1,74,'5','Ninguno',1,''),(136,'2010-09-03 07:26:59',3,88,'3','Apolonio de Jesús Rizo',2,'Modificados nombre para \"Apolonio de Jesús Rizo\" datos generales. Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha. Modificados maneja_negocio para \"IngresoFamiliar object\" ingreso familiar. Modificados donde para \"Salud object\" salud.'),(137,'2010-09-03 07:34:23',3,88,'4','Julio César Chavarría Cruz',2,'Modificados tipo para \"Postcosecha object\" postcosecha.'),(138,'2010-09-03 07:38:04',3,88,'5','Julio César Vanegas Osejo',2,'No ha cambiado ningún campo.'),(139,'2010-09-03 07:41:54',3,88,'6','Baltazar Solorzano Osejo',2,'Modificados tipo para \"Postcosecha object\" postcosecha. Modificados quien_vendio para \"IngresoFamiliar object\" ingreso familiar.'),(140,'2010-09-03 07:48:04',3,88,'7','José Luis Palacios',2,'Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha.'),(141,'2010-09-03 07:55:08',3,88,'8','Julio Cesar Chavarría Cantarero',2,'Modificados tipo para \"Postcosecha object\" postcosecha.'),(142,'2010-09-03 07:58:01',3,88,'9','Mercedes Mairena Zelaya',2,'Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha. Modificados maneja_negocio para \"IngresoFamiliar object\" ingreso familiar. Modificados maneja_negocio para \"IngresoFamiliar object\" ingreso familiar. Modificados maneja_negocio para \"IngresoFamiliar object\" ingreso familiar.'),(143,'2010-09-03 08:01:33',3,88,'10','Reynaldo Rivera Ramos',2,'Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha.'),(144,'2010-09-03 08:04:08',3,88,'11','Francisco Dávila Fuentes',2,'Modificados tipo para \"Postcosecha object\" postcosecha.'),(145,'2010-09-03 08:06:32',3,88,'12','María Ignacia Rugama Flores',2,'Modificados quien_vendio para \"IngresoFamiliar object\" ingreso familiar.'),(146,'2010-09-03 08:08:42',3,88,'13','Sebastian Mairena ',2,'Modificados tipo para \"Postcosecha object\" postcosecha.'),(147,'2010-09-03 08:09:50',2,88,'29','Paulina Gámez Reyes',2,'Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Modificados n_total, no_leer, secu_completa y tecnico para \"EducacionJovenes object\" educacion jovenes. Modificados n_total, pri_incompleta y secu_incompleta para \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(148,'2010-09-03 08:11:22',3,88,'30','Candelario Díaz Hernández',2,'Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Modificados quien_vendio para \"IngresoFamiliar object\" ingreso familiar. Modificados tipo para \"OtrosIngresos object\" otros ingresos.'),(149,'2010-09-03 08:17:50',2,88,'14','Auxiliadora Mairena',2,'Modificados cuales para \"Conservacion object\" conservacion. Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha.'),(150,'2010-09-03 08:24:28',2,88,'15','Valentín Rodríguez',2,'Modificados conformarse para \"Organizacion object\" organizacion. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Modificados persona para \"EducacionJovenes object\" educacion jovenes.'),(151,'2010-09-03 08:29:20',2,88,'16','Mayra del Carmen Gámez Hernández',2,'Modificados tipo para \"Postcosecha object\" postcosecha. Modificados tipo para \"Postcosecha object\" postcosecha.'),(152,'2010-09-03 08:31:26',2,88,'17','Ricardo José Castillo Weimer',2,'No ha cambiado ningún campo.'),(153,'2010-09-03 08:33:20',2,88,'18','Vicenta de Jesús Sánchez Villagra',2,'No ha cambiado ningún campo.'),(154,'2010-09-03 08:34:43',2,88,'19','Julián Erasmo Castro Morales',2,'Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(155,'2010-09-03 08:36:11',2,88,'18','Vicenta de Jesús Sánchez Villagra',2,'No ha cambiado ningún campo.'),(156,'2010-09-03 08:37:01',2,88,'17','Ricardo José Castillo Weimer',2,'No ha cambiado ningún campo.'),(157,'2010-09-03 08:38:33',2,88,'16','Mayra del Carmen Gámez Hernández',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados n_total para \"EducacionJovenes object\" educacion jovenes.'),(158,'2010-09-03 08:40:15',2,88,'15','Valentín Rodríguez',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(159,'2010-09-03 08:41:09',2,88,'14','Auxiliadora Mairena',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados n_total para \"EducacionJovenes object\" educacion jovenes.'),(160,'2010-09-03 08:43:00',2,88,'20','Esmerita Urbina Rayo',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_casa y viven_comu para \"Migracion object\" migracion. Modificados persona para \"EducacionJovenes object\" educacion jovenes.'),(161,'2010-09-03 08:44:26',2,88,'21','José Francisco García',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(162,'2010-09-03 08:46:35',2,88,'22','Antolin García Polanco',2,'Modificados nombre para \"Antolin García Polanco\" datos generales. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_casa y viven_comu para \"Migracion object\" migracion.'),(163,'2010-09-03 08:48:01',2,88,'23','David Valdivia',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(164,'2010-09-03 08:49:20',2,88,'24','Marcial García Gutiérrez',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(165,'2010-09-03 08:50:46',2,88,'25','Ruperto Duarte',2,'Modificados nombre para \"Ruperto Duarte\" datos generales. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(166,'2010-09-03 08:52:11',2,88,'26','Pilar Pastora',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(167,'2010-09-03 08:54:26',2,88,'28','Seberiano Granados Hernández',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(168,'2010-09-03 08:56:08',2,88,'27','Fausto de Jesús Manzanares ',2,'Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Añadido/a \"EducacionJovenes object\" educacion jovenes. Modificados pri_completa y secu_incompleta para \"EducacionJovenes object\" educacion jovenes.'),(169,'2010-09-03 08:57:47',2,88,'29','Paulina Gámez Reyes',2,'Modificados viven_casa y viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion. Modificados viven_comu para \"Migracion object\" migracion.'),(170,'2010-09-03 09:44:12',2,88,'31','Róger Jacinto Granado',1,''),(171,'2010-09-03 10:10:52',2,88,'31','Róger Jacinto Granado',2,'Modificados cuanto para \"Destinar object\" destinar. Modificados cuanto para \"Destinar object\" destinar.'),(172,'2010-09-03 10:55:04',2,88,'32','Fabiana López Aráuz',1,''),(173,'2010-09-03 10:57:29',2,88,'26','Pilar Pastora',2,'Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(174,'2010-09-03 10:57:47',2,88,'26','Pilar Pastora',2,'No ha cambiado ningún campo.'),(175,'2010-09-03 11:31:32',2,88,'33','Fermín Gutiérrez Hernández',1,''),(176,'2010-09-03 12:15:37',2,88,'34','José Andrés Palacio Hernández',1,''),(177,'2010-09-03 12:18:23',2,91,'17','Aguas Amarillas',1,''),(178,'2010-09-03 13:48:55',2,9,'12','Carlos Fonseca Amador',1,''),(179,'2010-09-03 13:50:53',2,91,'18','La Escalera #1',1,''),(180,'2010-09-03 14:23:39',2,88,'35','Róger Blandón Sáenz',1,''),(181,'2010-09-03 14:26:10',2,91,'19','Guapotal',1,''),(182,'2010-09-03 14:56:08',2,88,'36','Juan Arceda Centeno',1,''),(183,'2010-09-03 15:25:56',2,88,'37','Cresencio Hernández',1,''),(184,'2010-09-03 15:27:13',3,9,'13','COMANUR',1,''),(185,'2010-09-03 15:27:54',3,9,'14','PROCOCER',1,''),(186,'2010-09-03 15:28:16',3,9,'15','COAPANTE',1,''),(187,'2010-09-03 15:28:47',2,91,'20','La Pita',1,''),(188,'2010-09-03 15:31:15',3,90,'6','El Cuá',1,''),(189,'2010-09-03 15:31:28',3,91,'21','Bocaysito El Venado',1,''),(190,'2010-09-03 15:33:52',3,88,'38','Alvaro Meza Siles',1,''),(191,'2010-09-03 16:00:10',2,88,'39','Fernando Villareyna Sobalvarro',1,''),(192,'2010-09-03 16:02:56',2,91,'22','San José de las Vegas',1,''),(193,'2010-09-03 16:07:11',3,88,'38','Alvaro Meza Siles',2,'Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"Abono object\" abono. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar.'),(194,'2010-09-03 16:34:29',2,88,'40','Horacio Ruíz Cruz',1,''),(195,'2010-09-03 16:39:22',2,9,'16','La Fundadora',1,''),(196,'2010-09-03 16:42:19',2,91,'23','La Fundadora',1,''),(197,'2010-09-03 17:17:18',2,88,'41','Janeth del Carmen Gutiérrez',1,''),(198,'2010-09-03 17:19:04',3,88,'38','Alvaro Meza Siles',2,'Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Transporte object\" transporte. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(199,'2010-09-03 17:21:37',3,9,'17','Uca San Ramon Ramón García',1,''),(200,'2010-09-03 17:22:20',3,91,'24','El Trentino',1,''),(201,'2010-09-03 18:00:51',3,88,'42','Cándida Osorio Pérez',1,''),(202,'2010-09-06 07:41:27',2,9,'18','Nuevo Amanecer',1,''),(203,'2010-09-06 08:27:31',2,88,'43','Genaro Aráuz García',1,''),(204,'2010-09-06 08:59:26',2,88,'44','María Nicolás Urbina Rayo',1,''),(205,'2010-09-06 09:02:13',2,91,'25','Santa Ana',1,''),(206,'2010-09-06 09:29:22',2,88,'45','Valentín López Rivera',1,''),(207,'2010-09-06 09:33:28',2,91,'26','La Chata, Bocaysito',1,''),(208,'2010-09-06 10:08:36',2,88,'46','María del Rosario Díaz Peralta',1,''),(209,'2010-09-06 10:11:23',2,91,'27','Coyollar ',1,''),(210,'2010-09-06 10:11:43',2,91,'28','Coyolar #1',1,''),(211,'2010-09-06 10:54:11',2,88,'47','Ivett Aráuz',1,''),(212,'2010-09-06 10:56:56',2,91,'29','Tabaco',1,''),(213,'2010-09-06 11:25:03',2,88,'48','Miguel Ángel Chavarría Montenegro',1,''),(214,'2010-09-06 13:56:23',2,88,'50','Magdaleno Avilés Gonzáles',1,''),(215,'2010-09-06 13:57:22',2,88,'49','Sixto Sáenz Chavarría',2,'Añadido/a \"Conservacion object\" conservacion.'),(216,'2010-09-08 07:42:14',2,88,'50','Magdaleno Avilés Gonzáles',3,''),(217,'2010-09-08 08:46:22',2,88,'51','Magdaleno Avilés González',1,''),(218,'2010-09-08 08:49:30',2,91,'30','El Coyolar',1,''),(219,'2010-09-08 09:22:19',2,88,'52','Richard Arauz Rivas',1,''),(220,'2010-09-08 09:24:49',2,91,'31','San Antonio',1,''),(221,'2010-09-08 09:41:09',3,88,'53','VICTORIANO RIVAS ORTIZ',1,''),(222,'2010-09-08 09:58:22',2,88,'54','Andrés Páez Mairena',1,''),(223,'2010-09-08 10:12:39',3,88,'53','VICTORIANO RIVAS ORTIZ',2,'Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(224,'2010-09-08 10:13:04',3,88,'53','VICTORIANO RIVAS ORTIZ',2,'No ha cambiado ningún campo.'),(225,'2010-09-08 10:15:31',3,91,'32','Coyolar El Quebradón',1,''),(226,'2010-09-08 10:28:58',3,88,'55','José Manuel Picado González',1,''),(227,'2010-09-08 10:40:09',2,88,'56','Benjamín Herrera Estrada',1,''),(228,'2010-09-08 10:49:49',2,91,'33','Aguas Amarillas 2',1,''),(229,'2010-09-08 11:19:24',3,88,'55','José Manuel Picado González',2,'Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(230,'2010-09-08 11:22:35',2,88,'57','Teresa de Jesús Martínez',1,''),(231,'2010-09-08 11:27:48',2,91,'34','La Escalera',1,''),(232,'2010-09-08 12:02:17',3,88,'58','SANTIAGO SÁNCHEZ',1,''),(233,'2010-09-08 12:04:45',3,88,'58','SANTIAGO SÁNCHEZ',2,'Modificados preg4 para \"Consume object\" consume. Modificados n_total, no_leer, pri_incompleta, pri_completa, secu_incompleta, secu_completa, tecnico, actualmente y beca para \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(234,'2010-09-08 12:07:39',2,88,'59','Julio Adán Urbina Palacios',1,''),(235,'2010-09-08 12:08:48',3,88,'60','Fermin Gutiérrez Hernández',1,''),(236,'2010-09-08 12:11:06',2,88,'61','José Andrés Palacios Hernández',1,''),(237,'2010-09-08 12:11:43',2,88,'61','José Andrés Palacios Hernández',3,''),(238,'2010-09-08 12:13:08',3,88,'60','Anastacio Herrera Flores',2,'Modificado/a recolector. Modificados nombre, cooperativa, nombre_conyugue, nombre_finca y comunidad para \"Anastacio Herrera Flores\" datos generales.'),(239,'2010-09-08 12:21:00',3,88,'33','Fermín Gutiérrez Hernández',2,'Modificados nombre_conyugue para \"Fermín Gutiérrez Hernández\" datos generales.'),(240,'2010-09-08 12:35:06',3,88,'60','Anastacio Herrera Flores',2,'Añadido/a \"Organizacion object\" organizacion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"Abono object\" abono. Añadido/a \"Abono object\" abono. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca.'),(241,'2010-09-08 12:41:51',3,88,'60','Anastacio Herrera Flores',2,'Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas.'),(242,'2010-09-08 12:52:42',2,88,'62','Juana Ramírez Pérez',1,''),(243,'2010-09-08 13:04:39',3,88,'60','Anastacio Herrera Flores',2,'Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(244,'2010-09-08 14:48:28',1,88,'1','Fermín Hernández Gutiérrez',3,''),(245,'2010-09-08 14:55:15',2,88,'62','Juana Ramírez Pérez',2,'Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(246,'2010-09-08 14:59:18',2,9,'19','Uca San Ramón - Ramón García',1,''),(247,'2010-09-08 15:48:46',2,88,'63','Genara Pérez Osorio',1,''),(248,'2010-09-08 15:53:51',3,88,'64','Virgilio Rizo Castillo',1,''),(249,'2010-09-08 16:07:54',2,88,'65','Medardo Atonio Mendoza',1,''),(250,'2010-09-08 16:45:08',3,88,'66','Pedro Briones Picado',1,''),(251,'2010-09-08 17:24:17',3,88,'67','Angela Herrera Flores',1,''),(252,'2010-09-09 07:45:40',2,88,'65','Medardo Atonio Mendoza',2,'Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(253,'2010-09-09 07:49:36',2,88,'68','José Ramón Medal Sotelo',1,''),(254,'2010-09-09 08:43:16',2,88,'68','José Ramón Medal Sotelo',2,'Modificados desde_socio, hijos_socios, miembro_trabajo, cargo, beneficio, conformado y conformarse para \"Organizacion object\" organizacion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Reforestacion object\" reforestacion. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"Abono object\" abono. Añadido/a \"Abono object\" abono. Añadido/a \"Compra object\" compra. Añadido/a \"Compra object\" compra. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(255,'2010-09-09 09:38:03',2,88,'69','Ricardo Fonseca Gutiérrez',1,''),(256,'2010-09-09 09:40:39',2,9,'20','Amigo de Bonn',1,''),(257,'2010-09-09 09:43:01',2,91,'35','Santa Lucía',1,''),(258,'2010-09-09 09:43:29',3,88,'70','Francisco Herrera Mairena',1,''),(259,'2010-09-09 09:53:26',3,88,'70','Francisco Herrera Mairena',2,'Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(260,'2010-09-09 09:55:36',1,75,'6','Los bota en la parcela',1,''),(261,'2010-09-09 09:57:42',3,88,'71','Leoncio Talavera',1,''),(262,'2010-09-09 09:58:56',3,88,'70','Francisco Herrera Mairena',2,'Modificados agroquimico para \"Salud object\" salud.'),(263,'2010-09-09 10:16:18',2,88,'72','Francisco Hernández',1,''),(264,'2010-09-09 10:21:02',2,88,'69','Ricardo Fonseca Gutiérrez',2,'Añadido/a \"Salud object\" salud.'),(265,'2010-09-09 10:24:29',2,9,'21','Uca San Ramón Silvio Mayorga',1,''),(266,'2010-09-09 10:25:17',2,91,'36','Horno No 4',1,''),(267,'2010-09-09 11:05:04',3,88,'71','Leoncio Talavera',2,'Añadido/a \"Organizacion object\" organizacion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(268,'2010-09-09 11:12:36',2,88,'73','Juana Díaz Hernández',1,''),(269,'2010-09-09 11:15:04',2,9,'22','Uca San Ramón Danilo Gonzáles',1,''),(270,'2010-09-09 11:16:45',2,91,'37','La Reyna',1,''),(271,'2010-09-09 11:50:53',2,88,'74','Gabino Sánchez S.',1,''),(272,'2010-09-09 12:02:14',2,91,'38','Monte Grande',1,''),(273,'2010-09-09 12:06:46',3,88,'75','Miguel Angel Ramos',1,''),(274,'2010-09-09 12:18:58',3,88,'76','Faustina Díaz Hernández',1,''),(275,'2010-09-09 12:31:14',2,88,'77','Alejandro Rafael Gonzáles',1,''),(276,'2010-09-09 12:31:37',2,88,'78','Alejandro Rafael Gonzáles',1,''),(277,'2010-09-09 14:49:43',3,88,'76','Faustina Díaz Hernández',2,'Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(278,'2010-09-09 14:52:34',3,91,'39','La Reyna',1,''),(279,'2010-09-09 14:59:59',3,88,'79','Emilia Ochoa Barrera',1,''),(280,'2010-09-09 15:23:20',3,88,'79','Emilia Ochoa Barrera',2,'Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Problema object\" problema. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Transporte object\" transporte. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad.'),(281,'2010-09-09 15:31:47',3,88,'79','Emilia Ochoa Barrera',2,'Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(282,'2010-09-09 17:23:06',3,88,'80','EMELSIADES MESA RIZO',1,''),(283,'2010-09-10 08:16:08',3,88,'80','EMELSIADES MESA RIZO',2,'Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(284,'2010-09-10 08:22:22',3,91,'40','La Lima',1,''),(285,'2010-09-10 11:14:23',2,88,'81','Erick Pao',1,''),(286,'2010-09-10 11:27:31',2,88,'81','Erick Pao',2,'Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(287,'2010-09-10 11:33:48',3,88,'82','Paula María Icabalzeta',1,''),(288,'2010-09-10 11:34:57',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"Organizacion object\" organizacion.'),(289,'2010-09-10 11:37:33',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia.'),(290,'2010-09-10 11:42:09',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"Tierra object\" tierra. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"Postcosecha object\" postcosecha. Añadido/a \"Postcosecha object\" postcosecha.'),(291,'2010-09-10 11:43:26',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar.'),(292,'2010-09-10 11:44:48',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar.'),(293,'2010-09-10 11:46:26',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa.'),(294,'2010-09-10 11:48:28',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Transporte object\" transporte.'),(295,'2010-09-10 11:57:23',2,91,'41','Teosintal',1,''),(296,'2010-09-10 12:14:49',2,88,'83','Esperanza de Jesús Jarquín Siles',1,''),(297,'2010-09-10 12:33:49',2,88,'83','Esperanza de Jesús Jarquín Siles',2,'Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(298,'2010-09-10 13:40:38',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"ProduccionMaiz object\" produccion maiz. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua.'),(299,'2010-09-10 13:46:29',3,88,'82','Paula María Icabalzeta',2,'Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(300,'2010-09-10 13:46:51',3,88,'82','Paula María Icabalzeta',2,'No ha cambiado ningún campo.'),(301,'2010-09-10 14:00:07',2,88,'84','Celina del Socorro Jarquín Rodríguez',1,''),(302,'2010-09-10 14:45:59',2,88,'85','José Luis Pérez',1,''),(303,'2010-09-10 14:56:02',3,88,'86','PASTORA AGUILAR PASTRAN',1,''),(304,'2010-09-10 14:58:49',1,78,'10','No sabe que es PAP?',1,''),(305,'2010-09-16 07:39:06',2,88,'85','José Luis Pérez',2,'No ha cambiado ningún campo.'),(306,'2010-09-16 07:40:08',2,88,'81','Erick Pao',2,'No ha cambiado ningún campo.'),(307,'2010-09-16 07:41:08',2,88,'83','Esperanza de Jesús Jarquín Siles',2,'No ha cambiado ningún campo.'),(308,'2010-09-16 07:41:55',2,88,'84','Celina del Socorro Jarquín Rodríguez',2,'No ha cambiado ningún campo.'),(309,'2010-09-16 08:12:51',2,88,'86','PASTORA AGUILAR PASTRAN',2,'Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"Migracion object\" migracion. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"CondicionesCampo object\" condiciones campo. Añadido/a \"Tenencia object\" tenencia. Añadido/a \"Tierra object\" tierra. Añadido/a \"Tierra object\" tierra. Añadido/a \"Conservacion object\" conservacion. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"CultivosFinca object\" cultivos finca. Añadido/a \"FincaAnimales object\" finca animales. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"IngresoFamiliar object\" ingreso familiar. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"OtrosIngresos object\" otros ingresos. Añadido/a \"Aportar object\" aportar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"Destinar object\" destinar. Añadido/a \"TipoCasa object\" tipo casa. Añadido/a \"DetalleCasa object\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"palines\" herramientas. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Seguridad object\" seguridad. Añadido/a \"Consume object\" consume. Añadido/a \"Escasez object\" escasez. Añadido/a \"Agua object\" agua. Añadido/a \"Agua object\" agua. Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Enfermedades object\" enfermedades. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"Jovenes object\" jovenes.'),(310,'2010-09-16 14:03:06',2,88,'87','Celina Mendiola Jarquín',1,''),(311,'2010-09-16 14:06:59',2,91,'42','Santa Rosa',1,''),(312,'2010-09-16 14:40:12',2,88,'88','Dionisio Espino Hernández',1,''),(313,'2010-09-16 15:11:59',2,88,'89','Feliciana Matute Talavera',1,''),(314,'2010-09-16 15:43:51',2,88,'90','José Miguel Meza Martínez',1,''),(315,'2010-09-16 16:03:24',2,88,'91','Rigoberto Meza Cruz',1,''),(316,'2010-09-16 16:07:26',2,88,'91','Rigoberto Meza Cruz',2,'Añadido/a \"Ahorro object\" ahorro. Añadido/a \"Credito object\" credito. Añadido/a \"Salud object\" salud. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Cancer object\" cancer. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"Mental object\" mental. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes. Añadido/a \"EducacionJovenes object\" educacion jovenes.'),(317,'2010-09-16 16:10:29',2,91,'43','Frank Tijerino No 2',1,''),(318,'2010-09-16 16:45:20',2,88,'92','Andrés Porfirio Gurdián Morán',1,''),(319,'2010-09-16 16:47:18',2,91,'44','Ernesto Gutiérrez',1,''),(320,'2010-09-16 17:27:58',2,88,'93','Reyna Vílchez Blandón',1,''),(321,'2010-09-16 17:53:48',2,88,'94','María Vallecillo',1,''),(322,'2010-09-17 08:48:45',2,88,'95','Oscar José Blandón Dávila',3,''),(323,'2010-09-17 08:49:16',2,88,'96','Oscar José Blandón Dávila',3,''),(324,'2010-09-21 21:55:44',1,44,'9','Extranjera',2,'Modificado/a nombre.'),(325,'2010-09-21 21:55:51',1,44,'16','Nacional',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'cooperativa','encuesta','cooperativa'),(10,'tecnologia','encuesta','tecnologia'),(11,'certificacion','encuesta','certificacion'),(12,'datos generales','encuesta','datosgenerales'),(13,'beneficios','encuesta','beneficios'),(14,'porque miembro','encuesta','porquemiembro'),(15,'admon actual','encuesta','admonactual'),(16,'organizacion','encuesta','organizacion'),(17,'razones migracion','encuesta','razonesmigracion'),(18,'migracion','encuesta','migracion'),(19,'campo','encuesta','campo'),(20,'condiciones campo','encuesta','condicionescampo'),(21,'tenencia','encuesta','tenencia'),(22,'uso tierra','encuesta','usotierra'),(23,'tierra','encuesta','tierra'),(24,'actividades','encuesta','actividades'),(25,'reforestacion','encuesta','reforestacion'),(26,'combustible','encuesta','combustible'),(27,'actividad conservacion','encuesta','actividadconservacion'),(28,'conservacion','encuesta','conservacion'),(29,'abono','encuesta','abono'),(30,'compra','encuesta','compra'),(31,'cultivos','encuesta','cultivos'),(32,'cultivos finca','encuesta','cultivosfinca'),(33,'animales','encuesta','animales'),(34,'producto animal','encuesta','productoanimal'),(35,'finca animales','encuesta','fincaanimales'),(36,'tipo almacenaje','encuesta','tipoalmacenaje'),(37,'postcosecha','encuesta','postcosecha'),(38,'tipo problema','encuesta','tipoproblema'),(39,'solucion','encuesta','solucion'),(40,'problema','encuesta','problema'),(41,'rubros','encuesta','rubros'),(42,'ingreso familiar','encuesta','ingresofamiliar'),(43,'fuentes','encuesta','fuentes'),(44,'tipo trabajo','encuesta','tipotrabajo'),(45,'otros ingresos','encuesta','otrosingresos'),(46,'aportar','encuesta','aportar'),(47,'destinar','encuesta','destinar'),(48,'piso','encuesta','piso'),(49,'techo','encuesta','techo'),(50,'tipo casa','encuesta','tipocasa'),(51,'detalle casa','encuesta','detallecasa'),(52,'equipos','encuesta','equipos'),(53,'infraestructuras','encuesta','infraestructuras'),(54,'propiedades','encuesta','propiedades'),(55,'nombre herramienta','encuesta','nombreherramienta'),(56,'herramientas','encuesta','herramientas'),(57,'nombre transporte','encuesta','nombretransporte'),(58,'transporte','encuesta','transporte'),(59,'alimentos','encuesta','alimentos'),(60,'seguridad','encuesta','seguridad'),(61,'meses','encuesta','meses'),(62,'consume','encuesta','consume'),(63,'solucion escasez','encuesta','solucionescasez'),(64,'escasez','encuesta','escasez'),(65,'produccion maiz','encuesta','produccionmaiz'),(66,'riego','encuesta','riego'),(67,'agua','encuesta','agua'),(68,'donde ahorro','encuesta','dondeahorro'),(69,'ahorra porque','encuesta','ahorraporque'),(70,'ahorro','encuesta','ahorro'),(71,'da credito','encuesta','dacredito'),(72,'ocupa credito','encuesta','ocupacredito'),(73,'credito','encuesta','credito'),(74,'tratamiento','encuesta','tratamiento'),(75,'quimico','encuesta','quimico'),(76,'salud','encuesta','salud'),(77,'enfermedades','encuesta','enfermedades'),(78,'pregunta cancer','encuesta','preguntacancer'),(79,'respuestas cancer','encuesta','respuestascancer'),(80,'cancer','encuesta','cancer'),(81,'pregunta mental','encuesta','preguntamental'),(82,'mental','encuesta','mental'),(83,'educacion jovenes','encuesta','educacionjovenes'),(84,'beneficio joven','encuesta','beneficiojoven'),(85,'miembro joven','encuesta','miembrojoven'),(86,'jovenes','encuesta','jovenes'),(87,'recolector','encuesta','recolector'),(88,'encuesta','encuesta','encuesta'),(89,'departamento','lugar','departamento'),(90,'municipio','lugar','municipio'),(91,'comunidad','lugar','comunidad');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7c873e275b58fa6a9efb07e254aa477a','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-08-23 17:24:38'),('097be3c1f2366472944d729ed342fdc2','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5hODJjMjU1MzBiYzE3NWQ1MmQy\nYTFjMzAzNTJlYjYyNw==\n','2010-08-22 18:11:27'),('4bc8487bbd507d69f071f67f71d377c4','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-08-23 17:09:11'),('03265be3d53751efbbdb508a8001a2e2','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5hODJjMjU1MzBiYzE3NWQ1MmQy\nYTFjMzAzNTJlYjYyNw==\n','2010-08-24 20:35:35'),('5ef905bd6f5650f685ae5787fa77f839','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-08-22 20:56:08'),('558ef928505489562ca1dac8bf3ed8f6','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjI0MmU0MGM5OWE5ZTZmNTRhNTZmMWEwY2M2\nMTAzY2Uy\n','2010-09-23 14:15:03'),('95a20c1f445abb88ae520dfcb30aefa4','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjI0MmU0MGM5OWE5ZTZmNTRhNTZmMWEwY2M2\nMTAzY2Uy\n','2010-09-12 09:42:15'),('ed6e97316c6a874db68d6fe71d8869e0','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-09-22 12:52:50'),('8b2f55d707cd23fe37b1d5b62bdce46e','gAJ9cQEoVQZkdWVuaW9xAk5VDV9hdXRoX3VzZXJfaWRxA4oBAVUJY29tdW5pZGFkcQROVQVmZWNo\nYXEFWAQAAAAyMDEwcQZVBmFjdGl2b3EHiFUMZGVwYXJ0YW1lbnRvcQhOVQtjb29wZXJhdGl2YXEJ\nTlUFc29jaW9xCk5VEl9hdXRoX3VzZXJfYmFja2VuZHELVSlkamFuZ28uY29udHJpYi5hdXRoLmJh\nY2tlbmRzLk1vZGVsQmFja2VuZHEMVQVkZXNkZXENTlUJbXVuaWNpcGlvcQ5OdS4yNTg4ZThmNDQ3\nOTViMWU1OTNmZDI2MTZiZDBmMjFjOQ==\n','2010-09-22 14:57:34'),('b3d954891484f5b8967cb7832d0d087e','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS4yMDRiY2Y0NWM1ZjE4ZGE1ZmNl\nMGI5NGU2Y2U0MzYzMw==\n','2010-09-20 13:47:35'),('f9e21ff028793ce13dc05fecf0dd9289','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEDdS4yN2RkMzBlMzcyNTU1MTliZjli\nNmU2ZDRmNWYzZTk0Mw==\n','2010-09-23 07:56:58'),('294d514f9493bfc9e29a8faaf68aa131','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5hODJjMjU1MzBiYzE3NWQ1MmQy\nYTFjMzAzNTJlYjYyNw==\n','2010-09-22 14:34:25'),('4300c68e5064b60b34f49f94da23495e','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-09-22 16:08:20'),('2aa73060d64bd5826226fbf7f265945d','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS4yMDRiY2Y0NWM1ZjE4ZGE1ZmNl\nMGI5NGU2Y2U0MzYzMw==\n','2010-09-23 07:56:11'),('3214d8f0a9f6f3bfe6f0fac2fd9abe44','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-09-23 07:50:04'),('e65c2271de1f75ad9901ac7228727030','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS4yMDRiY2Y0NWM1ZjE4ZGE1ZmNl\nMGI5NGU2Y2U0MzYzMw==\n','2010-09-24 07:34:24'),('02feb8ffafb4046926d0a8e2a2130075','gAJ9cQEoVQZkdWVuaW9xAk5VCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMHEFVQZhY3Rp\ndm9xBohVDGRlcGFydGFtZW50b3EHTlULY29vcGVyYXRpdmFxCE5VBXNvY2lvcQlOVQVkZXNkZXEK\nTlUJbXVuaWNpcGlvcQtOdS4yOTllNzQzNTc3MGUyNTJkNzFiOTI0MGRlOWU3NjRmZQ==\n','2010-09-24 23:55:28'),('c2b962ca5ccf4b9e302eee982100c83c','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjI0MmU0MGM5OWE5ZTZmNTRhNTZmMWEwY2M2\nMTAzY2Uy\n','2010-09-30 07:35:45'),('1729f687dc09b4f9d180e9e998f44b09','gAJ9cQEoVQZkdWVuaW9xAk5VCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMHEFVQZhY3Rp\ndm9xBohVDGRlcGFydGFtZW50b3EHTlULY29vcGVyYXRpdmFxCE5VBXNvY2lvcQlOVQVkZXNkZXEK\nTlUJbXVuaWNpcGlvcQtOdS4yOTllNzQzNTc3MGUyNTJkNzFiOTI0MGRlOWU3NjRmZQ==\n','2010-10-03 07:21:56'),('60d7a7bc34f53a459fd10e6fff9c675f','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-09-30 18:04:10'),('a17c42d14d70e44d058cca6d646b7635','gAJ9cQEuNzVhNjIwZDUzM2Q0N2E3MThmOThkMjczOTU3NjJlZmI=\n','2010-10-01 08:49:21'),('f8f79be614be7574804ba4aba71410fd','gAJ9cQEoVQZkdWVuaW9xAk5VCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMHEFVQZhY3Rp\ndm9xBohVDGRlcGFydGFtZW50b3EHY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2ts\nZQpxCGNsdWdhci5tb2RlbHMKRGVwYXJ0YW1lbnRvCnEJXWNkamFuZ28uZGIubW9kZWxzLmJhc2UK\nc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQqHUnELfXEMKFUGbm9tYnJlcQ1YCQAAAE1hdGFnYWxwYXEO\nVQZfc3RhdGVxD2NkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxECmBcRF9cRJVAmRi\ncRNVB2RlZmF1bHRxFHNiVQJpZHEVigEBVQRzbHVncRZYCQAAAG1hdGFnYWxwYXEXdWJVC2Nvb3Bl\ncmF0aXZhcRhOVQVzb2Npb3EZTlUFZGVzZGVxGk5VCW11bmljaXBpb3EbTnUuMTUxMTY3YmMyMmM2\nZDUzMWQyYjgyYjhlNjMwYTFjNDU=\n','2010-10-01 10:45:49'),('19dadd0391afef58fe3b35f335ceff43','gAJ9cQEoVQZkdWVuaW9xAk5VCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMHEFVQZhY3Rp\ndm9xBohVDGRlcGFydGFtZW50b3EHTlULY29vcGVyYXRpdmFxCE5VBXNvY2lvcQlOVQVkZXNkZXEK\nTlUJbXVuaWNpcGlvcQtOdS4yOTllNzQzNTc3MGUyNTJkNzFiOTI0MGRlOWU3NjRmZQ==\n','2010-10-01 11:26:39'),('22ef77028271504a621ec5e10753dcbb','gAJ9cQEoVQZkdWVuaW9xAk5VCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMHEFVQZhY3Rp\ndm9xBohVDGRlcGFydGFtZW50b3EHTlULY29vcGVyYXRpdmFxCE5VBXNvY2lvcQlOVQVkZXNkZXEK\nTlUJbXVuaWNpcGlvcQtOdS4yOTllNzQzNTc3MGUyNTJkNzFiOTI0MGRlOWU3NjRmZQ==\n','2010-10-01 21:22:09'),('0f9678a022af6ed39beb026c4f145738','gAJ9cQEoVQZkdWVuaW9xAk5VCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMHEFVQZhY3Rp\ndm9xBohVDGRlcGFydGFtZW50b3EHTlULY29vcGVyYXRpdmFxCE5VBXNvY2lvcQlOVQVkZXNkZXEK\nTlUJbXVuaWNpcGlvcQtOdS4yOTllNzQzNTc3MGUyNTJkNzFiOTI0MGRlOWU3NjRmZQ==\n','2010-10-02 11:57:23'),('020e748196e5470140831c9daaee9f02','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjI0MmU0MGM5OWE5ZTZmNTRhNTZmMWEwY2M2\nMTAzY2Uy\n','2010-10-02 16:55:16'),('0b388f3279c41828224159b9ebfd02af','gAJ9cQEoVQZkdWVuaW9xAk5VCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMHEFVQZhY3Rp\ndm9xBohVDGRlcGFydGFtZW50b3EHTlULY29vcGVyYXRpdmFxCE5VBXNvY2lvcQlOVQVkZXNkZXEK\nTlUJbXVuaWNpcGlvcQtOdS4yOTllNzQzNTc3MGUyNTJkNzFiOTI0MGRlOWU3NjRmZQ==\n','2010-10-04 16:14:52'),('7e5238c0fde989d53c1611366b8010a1','gAJ9cQEoVQZkdWVuaW9xAlgAAAAAVQljb211bmlkYWRxA05VBWZlY2hhcQRYBAAAADIwMTBxBVUG\nYWN0aXZvcQaIVQxkZXBhcnRhbWVudG9xB05VC2Nvb3BlcmF0aXZhcQhOVQVzb2Npb3EJWAAAAABV\nBWRlc2RlcQpYAAAAAFUJbXVuaWNpcGlvcQtOdS4yYTg4YTE4YmU0MDFiMWE4NWRiYTZkZWEyNzQ2\nNzFiZQ==\n','2010-10-06 14:25:06'),('2857b436feae50d288265d885c6c88c5','gAJ9cQEoVQ1fYXV0aF91c2VyX2lkcQKKAQFVBmR1ZW5pb3EDWAAAAABVCWNvbXVuaWRhZHEETlUF\nZmVjaGFxBVgEAAAAMjAxMHEGVQtjb29wZXJhdGl2YXEHTlUMZGVwYXJ0YW1lbnRvcQhOVQZhY3Rp\ndm9xCYhVBXNvY2lvcQpYAAAAAFUSX2F1dGhfdXNlcl9iYWNrZW5kcQtVKWRqYW5nby5jb250cmli\nLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kcQxVBWRlc2RlcQ1YAAAAAFUJbXVuaWNpcGlvcQ5O\ndS40NmQzODM4ODEyMDBlYzRhNGZjNDZmNzUzMzY4Y2E3Mg==\n','2010-10-06 20:13:44'),('8dfadd52126e831790c36d8c8bb15772','gAJ9cQEoVQZkdWVuaW9xAlgAAAAAVQljb211bmlkYWRxA05VBWZlY2hhcQRYBAAAADIwMTBxBVUG\nYWN0aXZvcQaIVQxkZXBhcnRhbWVudG9xB05VC2Nvb3BlcmF0aXZhcQhOVQVzb2Npb3EJWAAAAABV\nBWRlc2RlcQpYAAAAAFUJbXVuaWNpcGlvcQtOdS4yYTg4YTE4YmU0MDFiMWE4NWRiYTZkZWEyNzQ2\nNzFiZQ==\n','2010-10-06 20:14:45');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_abono` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `producto` int(11) default NULL,
  `respuesta` int(11) default NULL,
  `pulpa` int(11) default NULL,
  `estiercol` int(11) default NULL,
  `gallinaza` int(11) default NULL,
  `composta` int(11) default NULL,
  `lombrices` int(11) default NULL,
  `bocachi` int(11) default NULL,
  `foliar` int(11) default NULL,
  `verde` int(11) default NULL,
  `hojas` int(11) default NULL,
  `quince` int(11) default NULL,
  `veinte` int(11) default NULL,
  `seis` int(11) default NULL,
  `urea` int(11) default NULL,
  `otros` longtext,
  PRIMARY KEY  (`id`),
  KEY `encuesta_abono_1bb8f392` (`content_type_id`),
  KEY `encuesta_abono_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_abono`
--

LOCK TABLES `encuesta_abono` WRITE;
/*!40000 ALTER TABLE `encuesta_abono` DISABLE KEYS */;
INSERT INTO `encuesta_abono` VALUES (64,88,63,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,''),(2,88,2,1,1,1,1,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(3,88,3,1,1,1,2,2,2,2,2,1,2,2,1,2,1,1,''),(4,88,3,2,1,2,2,2,2,2,2,2,2,2,1,NULL,NULL,1,''),(5,88,3,3,1,1,2,2,2,2,2,2,2,2,2,2,2,2,''),(6,88,4,1,1,1,2,2,2,2,2,1,1,1,2,1,2,1,''),(7,88,5,1,1,1,2,2,2,2,2,1,2,2,2,2,2,2,''),(8,88,6,1,1,1,2,2,2,2,2,1,2,1,2,2,1,1,''),(9,88,7,1,1,1,2,2,2,2,2,2,2,1,NULL,NULL,1,1,''),(10,88,7,2,1,2,2,2,2,2,2,2,2,2,2,2,1,1,''),(11,88,8,1,1,1,2,2,2,2,2,1,2,2,2,2,1,1,''),(12,88,9,1,1,1,2,2,2,2,2,2,2,2,2,1,2,2,''),(13,88,9,2,1,2,2,2,2,2,2,2,2,1,2,2,2,1,''),(14,88,10,1,1,1,1,2,2,2,2,2,1,1,2,2,2,1,''),(15,88,11,1,1,1,2,2,2,2,NULL,1,2,2,2,2,1,1,''),(16,88,12,1,1,2,2,2,2,2,2,2,2,2,2,1,2,2,''),(17,88,13,1,1,1,2,2,2,2,2,1,1,2,2,2,1,2,''),(18,88,13,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(19,88,13,3,1,2,1,2,2,2,2,2,2,2,2,2,2,2,'12-30-10'),(20,88,14,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'12-30-10'),(21,88,15,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,''),(22,88,16,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,''),(23,88,20,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,''),(24,88,21,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,''),(25,88,22,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(26,88,23,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,''),(27,88,25,1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(28,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(29,88,28,1,1,1,NULL,NULL,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(30,88,29,1,1,1,NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,''),(31,88,30,1,2,2,2,2,2,2,2,2,2,2,1,2,2,2,''),(32,88,30,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(33,88,31,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(34,88,31,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(35,88,32,1,1,1,NULL,NULL,1,1,NULL,1,NULL,1,NULL,NULL,NULL,NULL,''),(36,88,33,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,1,''),(37,88,34,1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(38,88,34,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(39,88,35,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,''),(40,88,35,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,''),(41,88,36,1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,1,NULL,NULL,''),(42,88,36,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(43,88,37,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,''),(44,88,38,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(45,88,42,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(46,88,43,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,''),(47,88,44,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,''),(48,88,46,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'18-46-0'),(49,88,47,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,''),(50,88,48,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(51,88,51,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(52,88,51,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(53,88,52,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(54,88,53,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(55,88,53,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(56,88,54,1,1,1,1,1,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(57,88,56,1,1,1,1,NULL,1,1,NULL,1,1,NULL,NULL,NULL,NULL,NULL,''),(58,88,57,1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Minerales'),(59,88,58,1,1,1,2,2,2,2,2,2,2,2,2,1,2,1,''),(60,88,59,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,'Ferticafé\r\n20-5-20'),(61,88,60,1,1,1,1,2,2,2,2,1,2,2,2,2,2,1,''),(62,88,60,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(63,88,62,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(65,88,63,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,''),(66,88,64,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(67,88,64,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(68,88,65,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(69,88,66,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,'Abono Vivero'),(70,88,67,1,1,2,2,2,2,2,2,1,2,2,2,2,2,2,''),(71,88,67,2,1,2,2,2,2,2,2,1,2,2,2,2,2,NULL,''),(72,88,68,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'18-5-18'),(73,88,68,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(74,88,70,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,''),(75,88,72,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(76,88,72,2,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(77,88,73,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(78,88,73,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(79,88,74,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(80,88,74,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(81,88,75,1,1,2,2,2,2,2,2,1,2,2,2,2,2,1,''),(82,88,75,2,1,2,2,2,2,2,2,2,2,2,1,2,2,1,'Herbicidas'),(83,88,76,1,1,2,2,2,2,2,2,1,2,2,2,2,2,1,''),(84,88,76,2,1,2,2,2,2,2,2,1,2,2,2,2,2,1,''),(85,88,77,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,1,''),(86,88,77,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(87,88,78,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,1,''),(88,88,78,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(89,88,79,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(90,88,79,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(91,88,80,1,1,2,2,2,2,2,2,2,2,2,2,2,1,1,''),(92,88,81,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,''),(93,88,83,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(94,88,84,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(95,88,84,2,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(96,88,85,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,''),(97,88,88,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,''),(98,88,89,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,''),(99,88,89,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(100,88,90,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,''),(101,88,90,2,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,''),(102,88,91,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,''),(103,88,92,2,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'Completo');
/*!40000 ALTER TABLE `encuesta_abono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_actividadconservacion`
--

DROP TABLE IF EXISTS `encuesta_actividadconservacion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_actividadconservacion` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_actividadconservacion`
--

LOCK TABLES `encuesta_actividadconservacion` WRITE;
/*!40000 ALTER TABLE `encuesta_actividadconservacion` DISABLE KEYS */;
INSERT INTO `encuesta_actividadconservacion` VALUES (1,'Barreras vivas'),(2,'Barreras muertas'),(3,'Diques de contencion'),(4,'Azequias'),(5,'cercas vivas'),(6,'Temazos'),(7,'Ninguna');
/*!40000 ALTER TABLE `encuesta_actividadconservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_actividades`
--

DROP TABLE IF EXISTS `encuesta_actividades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_actividades` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_actividades`
--

LOCK TABLES `encuesta_actividades` WRITE;
/*!40000 ALTER TABLE `encuesta_actividades` DISABLE KEYS */;
INSERT INTO `encuesta_actividades` VALUES (1,'Enriquecimiento de los bosques'),(2,'Protección de fuentes de agua'),(3,'Establecimiento de cercas viva'),(4,'Plantaciones forestales'),(5,'Siembra de árboles en potrero'),(6,'Siembra de árboles en cafetales'),(7,'Establecimiento de viveros forestal'),(8,'Parcelas frutales'),(9,'En Huerto de Patio');
/*!40000 ALTER TABLE `encuesta_actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_admonactual`
--

DROP TABLE IF EXISTS `encuesta_admonactual`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_admonactual` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_agua` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `fuente` int(11) NOT NULL,
  `cantidad` int(11) default NULL,
  `distancia` int(11) default NULL,
  `diponibilidad` int(11) default NULL,
  `calidad` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_agua_1bb8f392` (`content_type_id`),
  KEY `encuesta_agua_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_agua`
--

LOCK TABLES `encuesta_agua` WRITE;
/*!40000 ALTER TABLE `encuesta_agua` DISABLE KEYS */;
INSERT INTO `encuesta_agua` VALUES (121,88,63,2,1,1000,1,NULL),(120,88,62,4,1,200,1,3),(119,88,62,2,1,150,3,2),(4,88,2,1,1,80,1,2),(5,88,2,2,1,100,1,2),(6,88,3,1,1,150,1,1),(7,88,3,2,4,700,1,1),(8,88,3,6,1,700,1,3),(9,88,4,6,1,0,1,3),(10,88,5,1,1,15,1,1),(11,88,6,1,1,100,1,1),(12,88,6,6,1,10,4,3),(13,88,7,1,1,60,1,1),(14,88,7,2,3,70,1,1),(15,88,7,4,2,50,1,2),(16,88,7,6,2,0,1,3),(17,88,8,1,2,200,1,1),(18,88,8,2,2,300,1,1),(19,88,8,6,1,0,1,3),(20,88,9,2,1,150,2,1),(21,88,10,1,3,100,1,1),(22,88,10,2,2,30,1,1),(23,88,11,1,1,150,1,1),(24,88,11,2,1,140,1,1),(25,88,11,5,1,100,1,2),(26,88,11,6,1,0,1,3),(27,88,12,5,1,4,1,3),(28,88,13,2,6,100,1,1),(29,88,14,1,1,200,1,NULL),(30,88,14,2,2,300,1,1),(31,88,15,2,1,400,1,1),(32,88,16,1,1,1,1,1),(33,88,16,2,1,4,1,1),(34,88,16,3,1,1,1,1),(35,88,16,6,1,1,1,1),(36,88,17,3,1,250,1,2),(37,88,17,4,1,100,2,2),(38,88,18,2,1,25,1,1),(39,88,18,6,1,500,1,3),(40,88,19,1,1,50,1,1),(41,88,19,5,1,500,1,3),(42,88,20,1,1,0,1,1),(43,88,20,5,1,1500,1,3),(44,88,21,6,1,300,1,3),(45,88,22,1,1,200,1,1),(46,88,22,2,1,700,1,1),(47,88,22,6,1,460,1,3),(48,88,23,1,1,100,1,1),(49,88,23,2,1,50,1,1),(50,88,23,6,1,3000,1,3),(51,88,24,1,1,200,1,1),(52,88,24,2,1,700,1,1),(53,88,24,6,1,460,1,1),(54,88,25,2,2,50,1,1),(55,88,26,1,2,50,1,1),(56,88,27,2,1,150,4,3),(57,88,27,6,1,3,1,3),(58,88,28,1,1,50,1,3),(59,88,28,6,1,4,1,3),(60,88,29,2,1,500,1,3),(61,88,29,6,1,10,1,3),(62,88,30,3,1,400,1,2),(63,88,31,1,1,10,1,3),(64,88,31,2,1,10,1,3),(65,88,31,6,1,3,1,3),(66,88,32,1,2,40,1,1),(67,88,32,6,1,3,1,3),(68,88,33,1,1,500,2,2),(69,88,33,2,1,200,2,2),(70,88,33,5,1,0,1,2),(71,88,34,1,80,80,1,2),(72,88,34,2,1,100,1,2),(73,88,35,1,1,500,1,1),(74,88,35,6,1,10,1,3),(75,88,36,1,1,150,1,1),(76,88,36,2,1,100,1,3),(77,88,36,6,1,1,1,3),(78,88,37,1,1,100,1,1),(79,88,37,5,1,3,3,3),(80,88,39,6,1,1000,3,3),(81,88,40,1,1,NULL,4,1),(82,88,40,6,1,500,2,3),(83,88,41,1,1,2000,1,1),(84,88,41,2,2,2000,1,1),(85,88,41,6,1,NULL,1,1),(86,88,38,1,1,15,1,2),(87,88,42,1,1,30,1,1),(88,88,42,2,1,200,1,1),(89,88,42,4,1,20,1,2),(90,88,43,1,1,140,1,1),(91,88,43,3,1,80,1,1),(92,88,44,1,1,80,1,1),(93,88,44,6,1,1000,2,3),(94,88,45,6,NULL,NULL,1,3),(95,88,46,6,1,NULL,1,3),(96,88,47,6,1,NULL,1,3),(97,88,48,3,1,1000,1,1),(98,88,51,6,1,NULL,1,3),(99,88,52,1,1,800,4,NULL),(100,88,52,3,1,NULL,NULL,NULL),(101,88,52,5,1,70,1,3),(102,88,52,6,1,NULL,1,3),(103,88,54,1,1,300,1,1),(104,88,53,4,1,150,1,3),(105,88,53,6,1,500,3,3),(106,88,56,2,1,200,1,3),(107,88,56,3,1,500,1,3),(108,88,56,6,1,NULL,2,NULL),(109,88,55,6,1,800,1,3),(110,88,57,2,3,300,1,3),(111,88,57,3,1,200,1,3),(112,88,57,6,1,NULL,3,3),(113,88,58,4,1,100,1,3),(114,88,59,1,1,100,1,3),(115,88,59,2,1,500,4,3),(116,88,59,3,1,50,2,3),(117,88,60,1,1,200,4,1),(118,88,60,6,1,0,2,3),(122,88,64,2,1,100,1,3),(123,88,64,5,1,0,3,3),(124,88,66,2,1,300,1,3),(125,88,66,6,1,0,1,3),(126,88,67,1,1,500,1,3),(127,88,65,1,1,20,1,NULL),(128,88,65,3,1,100,1,NULL),(129,88,68,1,1,4,1,2),(130,88,68,6,1,NULL,1,3),(131,88,69,2,2,100,1,2),(132,88,69,6,1,NULL,1,2),(133,88,70,3,1,4,3,3),(134,88,70,4,1,150,1,2),(135,88,70,6,1,0,3,3),(136,88,72,1,1,50,1,NULL),(137,88,72,6,1,4,1,NULL),(138,88,71,1,1,40,4,2),(139,88,71,5,1,2538,3,3),(140,88,73,1,1,150,1,NULL),(141,88,73,2,1,150,1,NULL),(142,88,73,6,1,3,1,NULL),(143,88,74,1,1,2000,1,2),(144,88,75,6,1,0,2,3),(145,88,77,1,1,30,1,NULL),(146,88,77,6,1,3,1,NULL),(147,88,78,1,1,30,1,NULL),(148,88,78,6,1,3,1,NULL),(149,88,76,6,1,0,1,3),(150,88,79,6,1,0,1,3),(151,88,80,1,1,59,1,1),(152,88,80,2,1,150,1,1),(153,88,80,6,1,0,1,3),(154,88,81,5,1,1,NULL,NULL),(155,88,83,1,1,600,1,1),(156,88,83,6,1,NULL,1,3),(157,88,82,6,1,0,1,3),(158,88,84,1,1,50,1,1),(159,88,84,6,1,3,1,3),(160,88,85,2,1,150,2,1),(161,88,85,6,1,2,1,3),(162,88,86,1,1,50,1,1),(163,88,86,5,1,50,1,3),(164,88,88,1,1,40,1,1),(165,88,88,6,1,40,1,3),(166,88,89,1,1,150,1,1),(167,88,89,2,1,10,1,1),(168,88,89,6,1,1,1,3),(169,88,90,6,1,3,1,3),(170,88,91,5,1,1,1,3),(171,88,92,4,1,100,1,3),(172,88,92,6,1,NULL,1,3),(173,88,93,1,1,300,1,1),(174,88,93,6,1,NULL,1,3),(175,88,94,5,1,NULL,1,3);
/*!40000 ALTER TABLE `encuesta_agua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ahorraporque`
--

DROP TABLE IF EXISTS `encuesta_ahorraporque`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_ahorraporque` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_ahorro` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `tiene_efectivo` int(11) default NULL,
  `tiene_joya` int(11) default NULL,
  `desde_ahorra` int(11) default NULL,
  `nombre_ahorro` int(11) default NULL,
  `posee_ahorro` int(11) default NULL,
  `interes_ahorro` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_ahorro_1bb8f392` (`content_type_id`),
  KEY `encuesta_ahorro_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_ahorro`
--

LOCK TABLES `encuesta_ahorro` WRITE;
/*!40000 ALTER TABLE `encuesta_ahorro` DISABLE KEYS */;
INSERT INTO `encuesta_ahorro` VALUES (59,88,62,2,NULL,NULL,NULL,2,1),(2,88,2,1,2,4,5,2,1),(3,88,3,2,2,NULL,5,1,NULL),(4,88,4,2,2,NULL,NULL,NULL,1),(5,88,5,2,2,NULL,NULL,NULL,1),(6,88,6,2,2,NULL,NULL,2,2),(7,88,7,1,1,4,5,1,NULL),(8,88,8,2,2,NULL,NULL,1,NULL),(9,88,9,2,2,NULL,NULL,2,1),(10,88,10,2,2,NULL,NULL,2,1),(11,88,11,1,2,3,7,2,NULL),(12,88,12,2,2,NULL,NULL,1,2),(13,88,13,2,2,NULL,NULL,2,1),(14,88,14,2,NULL,NULL,NULL,NULL,NULL),(15,88,15,2,2,NULL,NULL,NULL,1),(16,88,16,2,NULL,NULL,NULL,NULL,1),(17,88,17,2,NULL,NULL,NULL,NULL,1),(18,88,18,NULL,NULL,NULL,NULL,1,NULL),(19,88,19,2,2,NULL,NULL,1,NULL),(20,88,20,2,NULL,NULL,NULL,2,1),(21,88,21,2,NULL,NULL,NULL,NULL,1),(22,88,22,1,NULL,NULL,NULL,1,NULL),(23,88,23,1,NULL,NULL,NULL,1,NULL),(24,88,24,1,NULL,NULL,NULL,1,NULL),(25,88,25,1,NULL,NULL,NULL,1,NULL),(26,88,26,1,NULL,NULL,NULL,2,1),(27,88,27,2,NULL,NULL,NULL,NULL,1),(28,88,28,2,2,NULL,NULL,2,2),(29,88,29,2,2,NULL,NULL,NULL,1),(30,88,30,1,2,4,5,2,1),(31,88,31,2,2,NULL,NULL,2,2),(32,88,32,2,2,NULL,NULL,NULL,1),(33,88,33,2,NULL,NULL,NULL,1,NULL),(34,88,34,2,2,4,5,2,1),(35,88,35,2,1,4,7,2,1),(36,88,36,2,2,NULL,NULL,2,2),(37,88,37,2,2,NULL,NULL,NULL,2),(38,88,39,2,NULL,NULL,NULL,1,NULL),(39,88,40,2,NULL,NULL,NULL,1,NULL),(40,88,41,2,NULL,NULL,NULL,NULL,NULL),(41,88,38,2,2,NULL,5,1,NULL),(42,88,42,2,2,NULL,NULL,2,1),(43,88,43,2,NULL,NULL,NULL,2,1),(44,88,44,2,NULL,NULL,NULL,NULL,NULL),(45,88,45,2,NULL,NULL,NULL,2,1),(46,88,46,2,NULL,3,6,NULL,1),(47,88,47,1,NULL,4,6,1,NULL),(48,88,48,1,NULL,NULL,5,1,NULL),(49,88,51,2,NULL,NULL,NULL,2,1),(50,88,52,2,2,NULL,NULL,2,1),(51,88,54,2,2,NULL,NULL,2,1),(52,88,53,2,2,NULL,NULL,2,1),(53,88,56,2,2,NULL,NULL,2,1),(54,88,55,2,2,NULL,NULL,2,1),(55,88,57,2,2,NULL,NULL,2,1),(56,88,58,2,2,NULL,NULL,2,1),(57,88,59,1,2,4,7,2,1),(58,88,60,1,2,NULL,NULL,2,1),(60,88,63,1,NULL,NULL,6,2,NULL),(61,88,64,1,2,3,6,2,1),(62,88,66,2,2,NULL,NULL,2,2),(63,88,67,2,2,NULL,NULL,2,1),(64,88,65,2,2,NULL,NULL,2,1),(65,88,68,2,NULL,NULL,NULL,NULL,1),(66,88,69,2,NULL,NULL,NULL,NULL,1),(67,88,70,2,2,NULL,NULL,2,1),(68,88,72,2,2,NULL,NULL,2,1),(69,88,71,2,2,NULL,NULL,2,1),(70,88,73,2,2,NULL,NULL,2,2),(71,88,74,2,NULL,NULL,NULL,2,1),(72,88,75,2,2,NULL,NULL,2,1),(73,88,77,2,2,NULL,NULL,NULL,1),(74,88,78,2,2,NULL,NULL,NULL,1),(75,88,76,2,2,NULL,NULL,2,1),(76,88,79,1,2,4,6,2,NULL),(77,88,80,2,2,NULL,NULL,2,1),(78,88,81,2,2,NULL,NULL,2,NULL),(79,88,83,2,2,NULL,NULL,2,2),(80,88,82,2,2,NULL,NULL,2,1),(81,88,84,2,2,NULL,NULL,1,NULL),(82,88,85,2,2,NULL,NULL,NULL,NULL),(83,88,86,2,2,NULL,NULL,2,2),(84,88,88,1,2,3,5,1,NULL),(85,88,89,2,2,NULL,NULL,NULL,1),(86,88,90,2,2,NULL,NULL,2,1),(87,88,91,2,2,NULL,NULL,2,2),(88,88,92,2,NULL,NULL,NULL,NULL,NULL),(89,88,93,2,NULL,NULL,NULL,2,1),(90,88,94,1,2,NULL,NULL,2,NULL);
/*!40000 ALTER TABLE `encuesta_ahorro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ahorro_donde`
--

DROP TABLE IF EXISTS `encuesta_ahorro_donde`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_ahorro_donde` (
  `id` int(11) NOT NULL auto_increment,
  `ahorro_id` int(11) NOT NULL,
  `dondeahorro_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ahorro_id` (`ahorro_id`,`dondeahorro_id`),
  KEY `encuesta_ahorro_donde_15d5b4df` (`ahorro_id`),
  KEY `encuesta_ahorro_donde_7ee2b4d8` (`dondeahorro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_ahorro_donde`
--

LOCK TABLES `encuesta_ahorro_donde` WRITE;
/*!40000 ALTER TABLE `encuesta_ahorro_donde` DISABLE KEYS */;
INSERT INTO `encuesta_ahorro_donde` VALUES (35,59,1),(2,2,2),(3,4,1),(4,5,1),(5,9,1),(6,10,1),(7,11,1),(8,12,1),(9,13,2),(10,15,1),(11,16,1),(12,17,2),(13,26,1),(14,27,1),(15,29,1),(16,30,2),(17,32,1),(18,33,1),(19,34,2),(20,35,1),(21,42,1),(22,43,2),(23,45,1),(24,49,2),(25,50,1),(26,51,2),(27,52,2),(28,53,1),(29,54,2),(30,55,1),(31,55,2),(32,56,1),(33,57,2),(34,58,1),(36,60,1),(37,61,2),(38,63,2),(39,64,2),(40,65,1),(41,65,2),(42,66,2),(43,67,1),(44,68,1),(45,69,1),(46,71,2),(47,72,1),(48,73,2),(49,74,2),(50,75,1),(51,77,1),(52,80,1),(53,85,1),(54,86,1),(55,89,1);
/*!40000 ALTER TABLE `encuesta_ahorro_donde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_ahorro_porque`
--

DROP TABLE IF EXISTS `encuesta_ahorro_porque`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_ahorro_porque` (
  `id` int(11) NOT NULL auto_increment,
  `ahorro_id` int(11) NOT NULL,
  `ahorraporque_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ahorro_id` (`ahorro_id`,`ahorraporque_id`),
  KEY `encuesta_ahorro_porque_15d5b4df` (`ahorro_id`),
  KEY `encuesta_ahorro_porque_2aa162a5` (`ahorraporque_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_ahorro_porque`
--

LOCK TABLES `encuesta_ahorro_porque` WRITE;
/*!40000 ALTER TABLE `encuesta_ahorro_porque` DISABLE KEYS */;
INSERT INTO `encuesta_ahorro_porque` VALUES (32,59,1),(2,2,1),(3,4,1),(4,4,2),(5,5,1),(6,10,1),(7,11,2),(8,13,1),(9,16,1),(10,17,3),(11,26,1),(12,26,3),(13,27,1),(14,29,1),(15,29,2),(16,30,1),(17,32,1),(18,33,2),(19,35,1),(20,42,1),(21,43,1),(22,43,3),(23,50,3),(24,51,1),(25,52,1),(26,54,1),(27,56,1),(28,56,2),(29,58,1),(30,58,2),(31,58,3),(33,61,3),(34,63,4),(35,66,2),(36,66,3),(37,67,1),(38,68,4),(39,69,1),(40,69,2),(41,72,1),(42,73,1),(43,74,1),(44,75,1),(45,77,3),(46,80,3),(47,85,1),(48,86,1),(49,89,1);
/*!40000 ALTER TABLE `encuesta_ahorro_porque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_alimentos`
--

DROP TABLE IF EXISTS `encuesta_alimentos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_alimentos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_animales` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_aportar` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `persona` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_aportar_1bb8f392` (`content_type_id`),
  KEY `encuesta_aportar_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_aportar`
--

LOCK TABLES `encuesta_aportar` WRITE;
/*!40000 ALTER TABLE `encuesta_aportar` DISABLE KEYS */;
INSERT INTO `encuesta_aportar` VALUES (59,88,63,2),(2,88,2,1),(3,88,3,3),(4,88,4,1),(5,88,5,1),(6,88,6,2),(7,88,7,1),(8,88,8,1),(9,88,9,1),(10,88,10,1),(11,88,11,1),(12,88,12,1),(13,88,13,1),(14,88,14,1),(15,88,15,2),(16,88,16,1),(17,88,17,1),(18,88,18,1),(19,88,19,1),(20,88,20,2),(21,88,21,1),(22,88,22,2),(23,88,23,2),(24,88,25,2),(25,88,26,2),(26,88,27,1),(27,88,28,1),(28,88,29,1),(29,88,30,1),(30,88,31,1),(31,88,32,1),(32,88,33,1),(33,88,34,1),(34,88,35,1),(35,88,36,1),(36,88,37,1),(37,88,39,2),(38,88,38,2),(39,88,40,1),(40,88,41,2),(41,88,42,1),(42,88,43,1),(43,88,44,1),(44,88,45,2),(45,88,46,2),(46,88,47,2),(47,88,48,1),(48,88,51,2),(49,88,52,1),(50,88,54,2),(51,88,53,2),(52,88,55,1),(53,88,56,2),(54,88,57,1),(55,88,58,1),(56,88,59,2),(57,88,60,1),(58,88,62,1),(60,88,64,2),(61,88,66,2),(62,88,67,2),(63,88,68,2),(64,88,69,2),(65,88,70,1),(66,88,72,2),(67,88,71,1),(68,88,74,1),(69,88,75,2),(70,88,77,1),(71,88,78,1),(72,88,76,2),(73,88,79,1),(74,88,80,1),(75,88,82,1),(76,88,83,2),(77,88,84,1),(78,88,85,1),(79,88,86,1),(80,88,88,1),(81,88,89,1),(82,88,90,1),(83,88,91,1),(84,88,92,1),(85,88,93,1),(86,88,94,1);
/*!40000 ALTER TABLE `encuesta_aportar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_beneficiojoven`
--

DROP TABLE IF EXISTS `encuesta_beneficiojoven`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_beneficiojoven` (
  `id` int(11) NOT NULL auto_increment,
  `beneficio` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_beneficios` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_campo` (
  `id` int(11) NOT NULL auto_increment,
  `afirmacion` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_cancer` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `preguntas_id` int(11) NOT NULL,
  `resp_id` int(11) NOT NULL,
  `cual` longtext,
  PRIMARY KEY  (`id`),
  KEY `encuesta_cancer_1bb8f392` (`content_type_id`),
  KEY `encuesta_cancer_7d61c803` (`object_id`),
  KEY `encuesta_cancer_308415b0` (`preguntas_id`),
  KEY `encuesta_cancer_7806dd26` (`resp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=545 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_cancer`
--

LOCK TABLES `encuesta_cancer` WRITE;
/*!40000 ALTER TABLE `encuesta_cancer` DISABLE KEYS */;
INSERT INTO `encuesta_cancer` VALUES (355,88,62,8,2,''),(354,88,62,7,2,''),(353,88,62,6,1,''),(352,88,62,5,15,''),(351,88,62,4,10,''),(350,88,62,3,1,''),(349,88,62,2,1,''),(348,88,62,1,2,''),(9,88,2,1,2,''),(10,88,2,2,1,''),(11,88,2,3,1,''),(12,88,2,5,9,''),(13,88,2,6,2,''),(14,88,2,7,1,''),(15,88,2,8,2,''),(16,88,3,1,2,''),(17,88,3,2,7,''),(18,88,3,3,1,''),(19,88,3,4,10,''),(20,88,3,7,1,''),(21,88,3,8,2,''),(22,88,4,7,7,''),(23,88,4,8,3,''),(24,88,4,9,14,''),(25,88,5,1,2,''),(26,88,5,2,7,''),(27,88,5,3,2,''),(28,88,5,6,2,''),(29,88,5,7,2,''),(30,88,5,8,2,''),(31,88,6,1,1,''),(32,88,6,2,2,''),(33,88,6,3,2,''),(34,88,6,6,2,''),(35,88,6,7,2,''),(36,88,6,8,2,''),(37,88,7,1,2,''),(38,88,7,2,1,''),(39,88,7,4,5,''),(40,88,7,5,11,''),(41,88,7,5,13,''),(42,88,7,6,3,''),(43,88,7,7,6,''),(44,88,7,8,3,''),(45,88,8,1,1,''),(46,88,8,2,5,''),(47,88,8,3,1,''),(48,88,8,4,3,''),(49,88,8,7,8,''),(50,88,9,1,2,''),(51,88,9,2,5,''),(52,88,9,3,1,''),(53,88,9,5,9,''),(54,88,9,6,2,''),(55,88,9,7,5,''),(56,88,9,8,2,''),(57,88,10,1,1,''),(58,88,10,2,7,''),(59,88,10,4,1,''),(60,88,10,5,11,''),(61,88,10,5,13,''),(62,88,10,6,2,''),(63,88,10,7,8,''),(64,88,10,8,2,''),(65,88,11,1,3,''),(66,88,11,2,7,''),(67,88,11,3,1,''),(68,88,11,4,9,''),(69,88,11,6,2,''),(70,88,11,7,8,''),(71,88,11,8,2,''),(72,88,12,1,2,''),(73,88,12,2,5,''),(74,88,12,3,1,''),(75,88,12,4,9,''),(76,88,12,5,13,''),(77,88,12,6,2,''),(78,88,12,7,2,''),(79,88,12,8,2,''),(80,88,13,1,2,''),(81,88,13,2,1,''),(82,88,13,3,1,''),(83,88,13,5,10,''),(84,88,13,5,14,''),(85,88,13,6,2,''),(86,88,13,7,1,''),(87,88,13,8,2,''),(88,88,14,1,2,''),(89,88,14,2,1,'Cada año'),(90,88,14,3,1,'Cada año'),(91,88,14,4,9,''),(92,88,14,8,2,''),(93,88,15,1,1,''),(94,88,15,2,6,''),(95,88,15,3,1,''),(96,88,15,4,9,''),(97,88,15,8,2,''),(98,88,16,2,6,''),(99,88,16,3,1,''),(100,88,16,4,9,''),(101,88,17,7,5,''),(102,88,17,8,2,''),(103,88,18,1,2,''),(104,88,18,2,6,''),(105,88,18,3,1,''),(106,88,18,4,9,''),(107,88,18,6,1,'Infertilidad'),(108,88,18,7,6,''),(109,88,18,6,2,''),(110,88,19,1,2,''),(111,88,19,2,1,''),(112,88,19,3,1,''),(113,88,19,7,1,''),(114,88,19,8,2,''),(115,88,20,2,1,''),(116,88,20,3,2,''),(117,88,20,8,2,''),(118,88,21,1,2,''),(119,88,21,2,6,''),(120,88,21,3,1,''),(121,88,21,4,9,''),(122,88,21,7,6,''),(123,88,21,6,2,''),(124,88,22,1,1,''),(125,88,22,2,6,''),(126,88,22,3,1,''),(127,88,22,4,9,''),(128,88,22,8,2,''),(129,88,22,7,8,''),(130,88,22,8,2,''),(131,88,23,1,2,''),(132,88,23,2,5,''),(133,88,23,3,1,''),(134,88,23,4,9,''),(135,88,23,7,5,''),(136,88,23,8,2,''),(137,88,24,1,2,''),(138,88,24,2,6,''),(139,88,24,3,1,''),(140,88,24,4,9,''),(141,88,24,7,8,''),(142,88,24,8,2,''),(143,88,25,1,1,''),(144,88,25,2,6,''),(145,88,25,3,1,''),(146,88,25,4,9,''),(147,88,25,6,2,''),(148,88,25,7,7,''),(149,88,25,8,2,''),(150,88,26,1,2,''),(151,88,26,2,6,''),(152,88,26,3,1,''),(153,88,26,4,9,''),(154,88,26,6,2,''),(155,88,26,7,1,''),(156,88,26,8,2,''),(157,88,27,1,2,''),(158,88,27,2,1,''),(159,88,27,3,2,''),(160,88,27,3,2,''),(161,88,27,6,2,''),(162,88,27,7,1,''),(163,88,27,8,2,''),(164,88,28,1,2,''),(165,88,28,2,1,''),(166,88,28,3,1,''),(167,88,28,4,9,''),(168,88,28,6,2,''),(169,88,28,7,1,''),(170,88,28,8,2,''),(171,88,29,1,2,''),(172,88,29,2,1,''),(173,88,29,3,1,''),(174,88,29,4,9,''),(175,88,30,1,2,''),(176,88,30,2,6,''),(177,88,30,3,1,''),(178,88,30,4,10,''),(179,88,30,5,15,''),(180,88,31,1,2,''),(181,88,31,2,1,''),(182,88,31,3,2,''),(183,88,31,4,9,''),(184,88,31,6,2,''),(185,88,31,7,2,''),(186,88,31,8,2,''),(187,88,32,1,2,''),(188,88,32,2,1,''),(189,88,32,2,1,''),(190,88,32,3,1,''),(191,88,32,4,12,''),(192,88,32,5,14,''),(193,88,32,7,2,''),(194,88,32,6,2,''),(195,88,33,1,1,''),(196,88,33,2,1,''),(197,88,33,4,12,''),(198,88,33,5,13,''),(199,88,33,6,2,''),(200,88,33,7,1,''),(201,88,33,8,2,''),(202,88,34,1,2,''),(203,88,34,2,1,''),(204,88,34,3,1,''),(205,88,34,4,9,''),(206,88,34,6,2,''),(207,88,34,7,1,''),(208,88,34,8,2,''),(209,88,35,1,2,''),(210,88,35,2,2,''),(211,88,35,3,2,''),(212,88,35,6,2,''),(213,88,35,7,1,''),(214,88,35,8,2,''),(215,88,36,1,2,''),(216,88,36,2,1,''),(217,88,36,3,1,''),(218,88,36,4,9,''),(219,88,36,6,1,''),(220,88,36,7,2,''),(221,88,36,8,2,''),(222,88,37,1,2,''),(223,88,37,2,2,''),(224,88,37,3,2,''),(225,88,37,6,2,''),(226,88,37,7,1,''),(227,88,37,8,2,''),(228,88,39,1,2,''),(229,88,39,2,5,''),(230,88,39,3,1,''),(231,88,39,4,12,''),(232,88,39,5,17,''),(233,88,39,6,1,''),(234,88,39,7,2,''),(235,88,39,6,2,''),(236,88,40,1,2,''),(237,88,40,2,1,''),(238,88,40,3,1,''),(239,88,40,7,1,''),(240,88,40,8,2,''),(241,88,41,1,2,''),(242,88,41,2,2,''),(243,88,41,3,1,''),(244,88,41,4,9,''),(245,88,41,6,2,''),(246,88,41,7,8,''),(247,88,41,8,2,''),(248,88,38,1,2,''),(249,88,38,2,2,''),(250,88,38,6,2,''),(251,88,38,7,2,''),(252,88,38,8,2,''),(253,88,42,2,1,''),(254,88,42,3,1,''),(255,88,42,4,10,''),(256,88,42,5,16,''),(257,88,43,7,1,''),(258,88,43,8,2,''),(259,88,44,1,2,''),(260,88,44,2,5,''),(261,88,44,3,1,''),(262,88,44,4,9,''),(263,88,44,6,2,''),(264,88,45,1,2,''),(265,88,45,2,2,''),(266,88,45,3,2,''),(267,88,45,7,2,''),(268,88,45,8,2,''),(269,88,46,1,2,''),(270,88,46,2,1,''),(271,88,46,3,1,''),(272,88,46,4,9,''),(273,88,46,1,2,''),(274,88,46,6,2,''),(275,88,47,1,2,''),(276,88,47,2,6,''),(277,88,47,3,1,''),(278,88,47,4,9,''),(279,88,47,6,2,''),(280,88,47,7,2,''),(281,88,48,1,1,''),(282,88,48,2,5,''),(283,88,48,3,1,''),(284,88,48,4,11,''),(285,88,48,5,14,''),(286,88,48,7,5,''),(287,88,48,8,2,''),(288,88,51,1,1,''),(289,88,51,2,2,''),(290,88,51,3,2,''),(291,88,51,7,2,''),(292,88,51,8,3,''),(293,88,52,1,2,''),(294,88,52,2,1,''),(295,88,52,3,6,''),(296,88,52,4,9,''),(297,88,52,7,2,''),(298,88,52,7,2,''),(299,88,54,1,2,''),(300,88,54,2,5,''),(301,88,54,3,1,''),(302,88,54,4,9,''),(303,88,54,6,2,''),(304,88,54,7,5,''),(305,88,54,8,2,''),(306,88,53,1,2,''),(307,88,53,2,7,''),(308,88,53,3,1,''),(309,88,53,4,11,''),(310,88,53,5,15,''),(311,88,53,6,2,''),(312,88,53,7,8,''),(313,88,53,8,2,''),(314,88,56,1,2,''),(315,88,56,2,6,''),(316,88,56,3,1,''),(317,88,56,4,9,''),(318,88,56,6,2,''),(319,88,56,7,6,''),(320,88,56,8,2,''),(321,88,55,1,2,''),(322,88,55,2,6,''),(323,88,55,3,1,''),(324,88,55,4,9,''),(325,88,55,7,8,''),(326,88,55,8,2,''),(327,88,57,1,2,''),(328,88,57,2,6,''),(329,88,57,3,2,''),(330,88,57,6,2,''),(331,88,57,7,6,''),(332,88,57,8,2,''),(333,88,58,1,2,''),(334,88,58,2,1,''),(335,88,58,3,1,''),(336,88,58,4,9,''),(337,88,58,7,5,''),(338,88,58,8,2,''),(339,88,59,1,2,''),(340,88,59,2,6,''),(341,88,59,3,1,''),(342,88,59,4,9,''),(343,88,59,6,2,''),(344,88,59,7,6,''),(345,88,59,8,2,''),(346,88,60,7,1,''),(347,88,60,8,2,''),(356,88,63,1,2,''),(357,88,63,2,6,''),(358,88,63,3,1,''),(359,88,63,4,11,''),(360,88,63,5,17,''),(361,88,63,7,7,''),(362,88,63,8,2,''),(363,88,64,1,2,''),(364,88,64,2,6,''),(365,88,64,3,1,''),(366,88,64,4,9,''),(367,88,64,7,8,''),(368,88,64,8,2,''),(369,88,66,1,1,''),(370,88,66,2,6,''),(371,88,66,3,1,''),(372,88,66,4,9,''),(373,88,66,6,1,''),(374,88,66,7,2,''),(375,88,66,8,2,''),(376,88,67,1,2,''),(377,88,67,2,6,''),(378,88,67,3,1,''),(379,88,67,5,9,''),(380,88,67,6,2,''),(381,88,67,7,1,''),(382,88,67,8,3,''),(383,88,65,1,1,''),(384,88,65,2,1,''),(385,88,65,3,1,''),(386,88,65,4,9,''),(387,88,65,6,2,''),(388,88,65,7,2,''),(389,88,65,8,2,''),(390,88,68,1,2,''),(391,88,68,2,1,''),(392,88,68,3,1,''),(393,88,68,4,9,''),(394,88,68,5,14,''),(395,88,68,7,7,''),(396,88,69,1,1,''),(397,88,69,2,7,''),(398,88,69,3,1,''),(399,88,69,4,9,''),(400,88,69,7,1,''),(401,88,69,8,2,''),(402,88,70,1,2,''),(403,88,70,2,6,''),(404,88,70,3,1,''),(405,88,70,4,9,''),(406,88,70,7,8,''),(407,88,70,8,2,''),(408,88,72,1,2,''),(409,88,72,2,7,''),(410,88,72,3,1,''),(411,88,72,4,9,''),(412,88,72,6,2,''),(413,88,72,7,2,''),(414,88,72,8,2,''),(415,88,71,1,2,''),(416,88,71,2,6,''),(417,88,71,3,1,''),(418,88,71,4,9,''),(419,88,71,7,8,''),(420,88,71,8,2,''),(421,88,73,1,2,''),(422,88,73,2,1,''),(423,88,73,3,1,''),(424,88,73,4,9,''),(425,88,73,6,2,''),(426,88,73,7,2,''),(427,88,73,7,2,''),(428,88,74,1,1,''),(429,88,74,2,6,''),(430,88,74,3,1,''),(431,88,74,4,9,''),(432,88,74,7,8,''),(433,88,75,1,1,''),(434,88,75,2,1,''),(435,88,75,3,1,''),(436,88,75,4,9,''),(437,88,75,5,14,''),(438,88,75,7,8,''),(439,88,75,8,2,''),(440,88,77,1,2,''),(441,88,77,2,2,''),(442,88,77,3,3,''),(443,88,77,6,2,''),(444,88,77,7,2,''),(445,88,77,8,2,''),(446,88,78,1,2,''),(447,88,78,2,2,''),(448,88,78,3,3,''),(449,88,78,6,2,''),(450,88,78,7,2,''),(451,88,78,8,2,''),(452,88,76,1,2,''),(453,88,76,2,2,''),(454,88,76,3,2,''),(455,88,76,7,2,''),(456,88,76,8,2,''),(457,88,79,1,2,''),(458,88,79,2,6,''),(459,88,79,3,1,''),(460,88,79,4,10,''),(461,88,79,5,16,''),(462,88,79,8,1,''),(463,88,80,1,1,''),(464,88,80,2,2,''),(465,88,80,3,2,''),(466,88,80,6,2,''),(467,88,80,7,1,''),(468,88,80,8,2,''),(469,88,81,1,1,''),(470,88,81,2,1,''),(471,88,81,3,1,''),(472,88,81,4,9,''),(473,88,81,6,2,''),(474,88,83,1,1,''),(475,88,83,2,6,''),(476,88,83,3,1,''),(477,88,83,6,2,''),(478,88,83,7,1,''),(479,88,83,8,2,''),(480,88,82,1,2,''),(481,88,82,2,6,''),(482,88,82,3,1,''),(483,88,82,4,10,''),(484,88,82,5,13,''),(485,88,82,6,2,''),(486,88,82,7,6,''),(487,88,82,8,2,''),(488,88,84,1,1,''),(489,88,84,2,8,''),(490,88,84,3,3,''),(491,88,84,6,2,''),(492,88,84,7,2,''),(493,88,84,8,2,''),(494,88,85,1,2,''),(495,88,85,2,5,''),(496,88,85,3,1,''),(497,88,85,4,9,''),(498,88,85,6,3,''),(499,88,85,7,1,''),(500,88,85,8,2,''),(501,88,86,1,2,''),(502,88,86,2,1,''),(503,88,86,3,2,''),(504,88,86,6,2,''),(505,88,86,7,2,''),(506,88,86,8,2,''),(507,88,88,1,1,''),(508,88,88,2,7,''),(509,88,88,3,1,''),(510,88,88,4,9,''),(511,88,88,6,2,''),(512,88,88,7,1,''),(513,88,88,8,2,''),(514,88,89,2,2,''),(515,88,89,3,2,''),(516,88,89,5,2,''),(517,88,90,1,1,''),(518,88,90,2,6,''),(519,88,90,3,1,''),(520,88,90,4,9,''),(521,88,90,6,2,''),(522,88,90,7,2,''),(523,88,90,8,2,''),(524,88,91,1,1,''),(525,88,91,2,5,''),(526,88,91,3,1,''),(527,88,91,4,9,''),(528,88,91,6,2,''),(529,88,91,7,1,''),(530,88,91,8,2,''),(531,88,92,1,2,''),(532,88,92,2,6,''),(533,88,92,3,1,''),(534,88,92,4,10,''),(535,88,92,5,15,''),(536,88,92,7,8,''),(537,88,92,9,2,''),(538,88,93,2,7,''),(539,88,93,3,1,''),(540,88,93,4,9,''),(541,88,94,2,2,''),(542,88,94,3,2,''),(543,88,94,7,8,''),(544,88,94,8,2,'');
/*!40000 ALTER TABLE `encuesta_cancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_certificacion`
--

DROP TABLE IF EXISTS `encuesta_certificacion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_certificacion` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_certificacion`
--

LOCK TABLES `encuesta_certificacion` WRITE;
/*!40000 ALTER TABLE `encuesta_certificacion` DISABLE KEYS */;
INSERT INTO `encuesta_certificacion` VALUES (1,'Organica'),(2,'Café practice'),(3,'UTZ'),(4,'FLO');
/*!40000 ALTER TABLE `encuesta_certificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_combustible`
--

DROP TABLE IF EXISTS `encuesta_combustible`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_combustible` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_compra` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `cuanto` int(11) default NULL,
  `pulpa` decimal(10,2) default NULL,
  `estiercol` decimal(10,2) default NULL,
  `gallinaza` decimal(10,2) default NULL,
  `composta` decimal(10,2) default NULL,
  `lombrices` decimal(10,2) default NULL,
  `bocachi` decimal(10,2) default NULL,
  `foliar_org` decimal(10,2) default NULL,
  `unidad_org` int(11) default NULL,
  `foliar_qui` decimal(10,2) default NULL,
  `unidad_qui` int(11) default NULL,
  `verde` decimal(10,2) default NULL,
  `quince` decimal(10,2) default NULL,
  `veinte` decimal(10,2) default NULL,
  `seis` decimal(10,2) default NULL,
  `urea` decimal(10,2) default NULL,
  `otros` longtext,
  PRIMARY KEY  (`id`),
  KEY `encuesta_compra_1bb8f392` (`content_type_id`),
  KEY `encuesta_compra_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_compra`
--

LOCK TABLES `encuesta_compra` WRITE;
/*!40000 ALTER TABLE `encuesta_compra` DISABLE KEYS */;
INSERT INTO `encuesta_compra` VALUES (106,88,63,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.00',''),(105,88,63,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.00',NULL,NULL,NULL,NULL,''),(3,88,2,1,'40.00',NULL,'6.00',NULL,NULL,NULL,'100.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(4,88,2,3,'40.00',NULL,'6.00',NULL,NULL,NULL,'100.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(5,88,3,1,'20.00',NULL,NULL,NULL,NULL,NULL,'40.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(6,88,3,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12.00','12.00',''),(7,88,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.50','1.50',''),(8,88,4,1,'6.00','0.00','0.00','0.00','0.00','0.00','20.00',1,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(9,88,4,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','4.00','0.00','2.00',''),(10,88,4,3,'6.00','0.00','0.00','0.00','0.00','0.00','20.00',1,'0.00',NULL,'0.00','0.00','4.00','0.00','2.00',''),(11,88,5,1,'10.00','0.00','0.00','0.00','0.00','0.00','20.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00','6 litros '),(12,88,5,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00','20-5-20    8 quintales'),(13,88,5,3,'10.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(14,88,6,1,'6.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(15,88,6,2,'0.00','0.00','0.00','0.00','0.00','0.00','3.00',1,'0.00',NULL,'0.00','0.00','2.00','2.00','2.00',''),(16,88,6,3,'0.50','0.00','0.00','0.00','0.00','0.00','2.00',1,'0.00',NULL,'0.00','0.00','0.00','0.00','0.50',''),(17,88,7,1,'100.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','1100.00','126.00',''),(18,88,7,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','500.00','120.00',''),(19,88,7,3,'100.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','1100.00','126.00',''),(20,88,8,1,'100.00','0.00','0.00','0.00','0.00','0.00','40.00',1,'0.00',NULL,'0.00','0.00','0.00','1.00','1.00',''),(21,88,8,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','8.00','4.00',''),(22,88,8,3,'100.00','0.00','0.00','0.00','0.00','0.00','40.00',1,'0.00',NULL,'0.00','0.00','0.00','2.00','1.00',''),(23,88,9,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','4.00',''),(24,88,9,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','4.00',''),(25,88,10,1,'80.00','30.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'8.00','0.00','0.00','0.00','0.00',''),(26,88,10,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','12.00',''),(27,88,10,3,'8.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(28,88,11,1,'30.00','0.00','0.00','0.00','0.00','0.00','40.00',1,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(29,88,11,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','9.00','8.00',''),(30,88,11,3,'30.00','0.00','0.00','0.00','0.00','0.00','40.00',1,'0.00',NULL,'0.00','0.00','0.00','9.00','8.00',''),(31,88,12,1,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','4.00','0.00','0.00',''),(32,88,12,1,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','4.00','0.00','0.00',''),(33,88,12,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','20.00','0.00','0.00',''),(34,88,13,1,'5.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(35,88,13,2,'0.00','0.00','0.00','0.00','0.00','0.00','50.00',2,'0.00',NULL,'0.00','0.00','0.00','5.00','5.00',''),(36,88,13,3,'5.00','0.00','0.00','0.00','0.00','0.00','50.00',2,'0.00',NULL,'0.00','0.00','0.00','5.00','5.00',''),(37,88,14,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.00','5'),(38,88,15,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00','2.00',''),(39,88,15,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38.00','35.00',''),(40,88,15,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.00','3.00',''),(41,88,16,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'40.00','40.00',NULL,NULL,''),(42,88,19,1,'3.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(43,88,19,3,'2.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(44,88,20,1,'10.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8.00',NULL,''),(45,88,20,3,'10.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',NULL,''),(46,88,22,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'16.00',''),(47,88,22,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'16.00',''),(48,88,23,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,NULL,'1.00',''),(49,88,23,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18.00',NULL,NULL,'12.00',''),(50,88,23,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.50',NULL,NULL,'1.00',''),(51,88,25,1,'30.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',NULL,NULL,NULL,NULL,NULL,NULL,''),(52,88,25,3,'4.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',NULL,NULL,NULL,NULL,NULL,NULL,''),(53,88,27,1,'10.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.00',''),(54,88,27,3,'10.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.00',''),(55,88,28,1,'15.00',NULL,NULL,'15.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(56,88,28,2,'15.00',NULL,NULL,'15.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(57,88,29,1,'15.00',NULL,NULL,'15.00',NULL,NULL,'200.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ceniza'),(58,88,29,3,'15.00',NULL,NULL,'15.00',NULL,NULL,'200.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5'),(59,88,30,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','90.00','0.00','0.00','0.00',''),(60,88,31,1,'15.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20.00',NULL,NULL,NULL,NULL,NULL,'10.00',''),(61,88,31,3,'15.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20.00',NULL,NULL,NULL,NULL,NULL,'10.00',''),(62,88,32,1,'20.00',NULL,NULL,'30.00','2.00',NULL,'90.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(63,88,32,3,'15.00',NULL,NULL,'30.00','2.00',NULL,'90.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(64,88,33,1,'45.00','100.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.00','2.00',NULL,NULL,''),(65,88,34,1,'40.00',NULL,NULL,NULL,NULL,NULL,'100.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(66,88,34,3,'40.00',NULL,NULL,NULL,NULL,NULL,'100.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(67,88,35,1,'80.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(68,88,35,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.00','8.00',''),(69,88,35,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.00','4.00',''),(70,88,36,1,'150.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(71,88,36,3,'150.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(72,88,37,1,'4.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(73,88,37,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',NULL,NULL,NULL,''),(74,88,37,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',NULL,NULL,NULL,''),(75,88,38,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','4.00',''),(76,88,38,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','4.00',''),(77,88,42,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','4.00',''),(78,88,42,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','4.00',''),(79,88,43,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.00',NULL,NULL,NULL,''),(80,88,44,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.50',NULL,NULL,'0.50',''),(81,88,44,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,NULL,'1.00',''),(82,88,46,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20.00','1'),(83,88,46,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20.00','1'),(84,88,47,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'26.00','25.00',''),(85,88,48,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18.00',''),(86,88,48,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18.00',''),(87,88,52,1,'100.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24.00',''),(88,88,52,1,'100.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24.00',''),(89,88,53,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','15.00',''),(90,88,53,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','15.00',''),(91,88,54,1,'75.00','100.00','75.00',NULL,NULL,'200.00','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(92,88,54,3,'75.00',NULL,'75.00',NULL,NULL,'200.00','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(93,88,56,1,'50.00','8.00',NULL,'30.00','25.00',NULL,'25.00',NULL,NULL,NULL,'5.00',NULL,NULL,NULL,NULL,''),(94,88,56,3,'50.00','8.00',NULL,'30.00','25.00',NULL,'25.00',NULL,NULL,NULL,'5.00',NULL,NULL,NULL,NULL,''),(95,88,57,1,'38.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(96,88,57,3,'38.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'50'),(97,88,58,1,'50.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','30.00','0.00','20.00',''),(98,88,58,3,'50.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','30.00','0.00','20.00',''),(99,88,59,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00','8.00',NULL,NULL,NULL,'30\r\n30\r\n2\r\n2'),(100,88,59,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00','8.00',NULL,NULL,NULL,''),(101,88,60,1,'1.50','15.00','0.00','0.00','0.00','0.00','80.00',1,'0.00',NULL,'0.00','0.00','0.00','0.00','2.00',''),(102,88,60,3,'1.50','15.00','0.00','0.00','0.00','0.00','80.00',1,'0.00',NULL,'0.00','0.00','0.00','0.00','2.00',''),(103,88,62,1,'10.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(104,88,62,3,'10.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(107,88,63,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.00',''),(108,88,64,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','7.00',''),(109,88,64,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','6.00',''),(110,88,66,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00','Abono vivero 2'),(111,88,66,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00','Abono vivero 2'),(112,88,67,2,'0.00','0.00','0.00','0.00','0.00','0.00','8.00',1,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(113,88,67,3,'0.00','0.00','0.00','0.00','0.00','0.00','8.00',1,'0.00',NULL,'0.00','0.00','0.00','0.00','0.00',''),(114,88,68,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00','8'),(115,88,68,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00','8'),(116,88,70,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','6.00',''),(117,88,70,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','0.00','6.00',''),(118,88,73,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',2,NULL,NULL,NULL,NULL,NULL,''),(119,88,73,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.00',2,NULL,NULL,NULL,NULL,NULL,''),(120,88,73,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.00',2,NULL,NULL,NULL,NULL,NULL,''),(121,88,75,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'20.00',1,'0.00','20.00','0.00','0.00','0.00','15'),(122,88,75,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'20.00',1,'0.00','20.00','0.00','0.00','0.00','15'),(123,88,76,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'3.00',2,'0.00','0.00','0.00','0.00','15.00',''),(124,88,76,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'3.00',2,'0.00','0.00','0.00','0.00','15.00',''),(125,88,77,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,NULL,'1.00',''),(126,88,77,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8.00',NULL,NULL,'8.00',''),(127,88,77,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.00',NULL,NULL,'4.00',''),(128,88,78,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,NULL,'1.00',''),(129,88,78,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8.00',NULL,NULL,'8.00',''),(130,88,78,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.00',NULL,NULL,'4.00',''),(131,88,80,2,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','150.00','150.00',''),(132,88,80,3,'0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,'0.00',NULL,'0.00','0.00','0.00','150.00','150.00',''),(133,88,81,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.00','2.00',''),(134,88,81,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.00','2.00',''),(135,88,83,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.00',''),(136,88,84,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15.00',NULL,NULL,NULL,NULL,NULL,NULL,''),(137,88,84,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30.00',NULL,NULL,NULL,NULL,NULL,NULL,''),(138,88,85,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15.00','10.00',''),(139,88,85,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15.00','10.00',''),(140,88,88,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30.00','10.00',''),(141,88,88,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30.00','10.00',''),(142,88,89,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13.00',NULL,''),(143,88,89,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',''),(144,88,90,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.00',1,NULL,NULL,NULL,NULL,'25.00',''),(145,88,90,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'25.00',''),(146,88,91,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20.00',''),(147,88,91,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20.00',''),(148,88,92,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',1,NULL,NULL,NULL,NULL,NULL,'1'),(149,88,92,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',1,NULL,NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `encuesta_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_condicionescampo`
--

DROP TABLE IF EXISTS `encuesta_condicionescampo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_condicionescampo` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_condicionescampo_1bb8f392` (`content_type_id`),
  KEY `encuesta_condicionescampo_7d61c803` (`object_id`),
  KEY `encuesta_condicionescampo_37c55af2` (`pregunta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=817 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_condicionescampo`
--

LOCK TABLES `encuesta_condicionescampo` WRITE;
/*!40000 ALTER TABLE `encuesta_condicionescampo` DISABLE KEYS */;
INSERT INTO `encuesta_condicionescampo` VALUES (547,88,63,9,1),(546,88,63,8,1),(545,88,63,7,3),(544,88,63,6,1),(543,88,63,5,1),(542,88,63,4,2),(541,88,63,3,1),(540,88,63,2,2),(539,88,63,1,1),(10,88,2,1,1),(11,88,2,2,1),(12,88,2,3,2),(13,88,2,4,2),(14,88,2,5,3),(15,88,2,6,3),(16,88,2,7,3),(17,88,2,8,3),(18,88,2,9,2),(19,88,3,1,1),(20,88,3,2,1),(21,88,3,3,1),(22,88,3,4,1),(23,88,3,5,2),(24,88,3,6,3),(25,88,3,7,1),(26,88,3,8,3),(27,88,3,9,2),(28,88,4,1,1),(29,88,4,2,2),(30,88,4,3,1),(31,88,4,4,2),(32,88,4,5,2),(33,88,4,6,3),(34,88,4,7,1),(35,88,4,8,3),(36,88,4,9,2),(37,88,5,1,1),(38,88,5,2,2),(39,88,5,3,1),(40,88,5,4,2),(41,88,5,5,1),(42,88,5,6,3),(43,88,5,7,2),(44,88,5,8,3),(45,88,5,9,1),(46,88,6,1,1),(47,88,6,2,1),(48,88,6,3,1),(49,88,6,4,2),(50,88,6,5,2),(51,88,6,6,3),(52,88,6,7,3),(53,88,6,8,3),(54,88,6,9,1),(55,88,7,1,1),(56,88,7,2,1),(57,88,7,3,1),(58,88,7,4,3),(59,88,7,5,3),(60,88,7,6,1),(61,88,7,7,1),(62,88,7,8,2),(63,88,7,9,2),(64,88,8,1,1),(65,88,8,2,2),(66,88,8,3,1),(67,88,8,4,2),(68,88,8,5,2),(69,88,8,6,3),(70,88,8,7,2),(71,88,8,8,3),(72,88,8,9,2),(73,88,9,1,1),(74,88,9,2,2),(75,88,9,3,2),(76,88,9,5,3),(77,88,9,6,3),(78,88,9,7,3),(79,88,9,8,1),(80,88,9,9,3),(81,88,10,1,1),(82,88,10,2,2),(83,88,10,3,1),(84,88,10,4,2),(85,88,10,5,2),(86,88,10,6,3),(87,88,10,7,2),(88,88,10,8,3),(89,88,10,9,2),(90,88,11,1,1),(91,88,11,2,2),(92,88,11,3,1),(93,88,11,4,3),(94,88,11,4,3),(95,88,11,6,3),(96,88,11,7,1),(97,88,11,8,3),(98,88,11,9,2),(99,88,12,1,2),(100,88,12,2,2),(101,88,12,3,1),(102,88,12,4,1),(103,88,12,5,2),(104,88,12,6,3),(105,88,12,7,1),(106,88,12,8,3),(107,88,12,9,1),(108,88,13,1,1),(109,88,13,2,2),(110,88,13,3,1),(111,88,13,4,2),(112,88,13,5,3),(113,88,13,6,1),(114,88,13,7,1),(115,88,13,8,1),(116,88,13,9,3),(117,88,14,1,3),(118,88,14,2,1),(119,88,14,3,2),(120,88,14,6,3),(121,88,14,5,2),(122,88,14,8,3),(123,88,14,9,2),(124,88,15,1,1),(125,88,15,2,2),(126,88,15,3,1),(127,88,15,4,2),(128,88,15,5,1),(129,88,15,6,2),(130,88,15,7,3),(131,88,15,8,3),(132,88,15,9,1),(133,88,16,1,1),(134,88,16,2,2),(135,88,16,3,2),(136,88,16,4,2),(137,88,16,5,1),(138,88,16,6,1),(139,88,16,7,1),(140,88,16,8,2),(141,88,16,9,1),(142,88,17,1,2),(143,88,17,2,1),(144,88,17,3,1),(145,88,17,4,2),(146,88,17,5,2),(147,88,17,6,2),(148,88,17,7,3),(149,88,17,8,3),(150,88,17,9,2),(151,88,18,1,1),(152,88,18,2,1),(153,88,18,3,1),(154,88,18,4,1),(155,88,18,5,2),(156,88,18,6,3),(157,88,18,7,1),(158,88,18,8,3),(159,88,18,9,1),(160,88,19,1,1),(161,88,19,2,1),(162,88,19,3,1),(163,88,19,4,1),(164,88,19,5,3),(165,88,19,6,3),(166,88,19,7,1),(167,88,19,8,3),(168,88,19,9,3),(169,88,20,1,1),(170,88,20,2,1),(171,88,20,3,1),(172,88,20,4,2),(173,88,20,5,1),(174,88,20,6,3),(175,88,20,7,1),(176,88,20,8,3),(177,88,20,9,2),(178,88,21,1,2),(179,88,21,2,1),(180,88,21,3,1),(181,88,21,4,1),(182,88,21,5,1),(183,88,21,6,3),(184,88,21,7,1),(185,88,21,8,3),(186,88,21,9,1),(187,88,22,1,1),(188,88,22,2,1),(189,88,22,3,1),(190,88,22,4,2),(191,88,22,5,2),(192,88,22,6,3),(193,88,22,7,1),(194,88,22,8,3),(195,88,22,9,2),(196,88,23,1,1),(197,88,23,2,1),(198,88,23,3,1),(199,88,23,4,1),(200,88,23,5,2),(201,88,23,6,3),(202,88,23,7,1),(203,88,23,8,3),(204,88,23,9,2),(205,88,24,1,1),(206,88,24,2,1),(207,88,24,3,1),(208,88,24,4,2),(209,88,24,5,2),(210,88,24,6,3),(211,88,24,7,1),(212,88,24,8,3),(213,88,24,9,2),(214,88,25,1,1),(215,88,25,2,2),(216,88,25,3,1),(217,88,25,4,2),(218,88,25,5,2),(219,88,25,6,3),(220,88,25,7,1),(221,88,25,8,3),(222,88,25,9,2),(223,88,26,1,1),(224,88,26,2,1),(225,88,26,3,1),(226,88,26,4,1),(227,88,26,5,1),(228,88,26,6,3),(229,88,26,7,1),(230,88,26,8,3),(231,88,26,9,1),(232,88,27,1,1),(233,88,27,2,2),(234,88,27,3,2),(235,88,27,4,2),(236,88,27,5,1),(237,88,27,6,3),(238,88,27,7,3),(239,88,27,8,3),(240,88,27,9,2),(241,88,28,1,1),(242,88,28,2,1),(243,88,28,3,1),(244,88,28,4,1),(245,88,28,5,1),(246,88,28,6,2),(247,88,28,7,2),(248,88,28,8,2),(249,88,28,9,2),(250,88,29,1,1),(251,88,29,2,2),(252,88,29,3,1),(253,88,29,4,2),(254,88,29,5,2),(255,88,29,6,2),(256,88,29,7,3),(257,88,29,8,3),(258,88,29,9,2),(259,88,30,1,1),(260,88,30,2,2),(261,88,30,3,1),(262,88,30,4,2),(263,88,30,5,3),(264,88,30,6,1),(265,88,30,7,1),(266,88,30,8,3),(267,88,30,9,1),(268,88,31,1,1),(269,88,31,2,2),(270,88,31,3,1),(271,88,31,4,2),(272,88,31,5,2),(273,88,31,6,2),(274,88,31,7,1),(275,88,31,8,3),(276,88,31,9,1),(277,88,32,1,1),(278,88,32,2,2),(279,88,32,3,1),(280,88,32,4,1),(281,88,32,5,1),(282,88,32,6,3),(283,88,32,7,1),(284,88,32,8,3),(285,88,32,9,1),(286,88,33,1,1),(287,88,33,2,2),(288,88,33,3,3),(289,88,33,4,3),(290,88,33,5,3),(291,88,33,6,3),(292,88,33,7,2),(293,88,33,8,3),(294,88,33,9,2),(295,88,34,1,1),(296,88,34,2,1),(297,88,34,3,2),(298,88,34,4,2),(299,88,34,4,3),(300,88,34,6,3),(301,88,34,7,3),(302,88,34,8,3),(303,88,34,9,2),(304,88,35,1,1),(305,88,35,2,1),(306,88,35,3,1),(307,88,35,4,2),(308,88,35,5,2),(309,88,35,6,3),(310,88,35,7,3),(311,88,35,8,3),(312,88,35,9,2),(313,88,36,1,1),(314,88,36,2,1),(315,88,36,3,2),(316,88,36,4,2),(317,88,36,5,1),(318,88,36,6,2),(319,88,36,7,1),(320,88,36,8,2),(321,88,36,9,2),(322,88,37,1,1),(323,88,37,2,2),(324,88,37,3,1),(325,88,37,4,2),(326,88,37,5,2),(327,88,37,6,2),(328,88,37,7,3),(329,88,37,7,2),(330,88,37,8,3),(331,88,37,9,2),(332,88,39,1,1),(333,88,39,1,3),(334,88,39,3,1),(335,88,39,4,2),(336,88,39,5,2),(337,88,39,6,2),(338,88,39,7,3),(339,88,39,8,2),(340,88,39,9,1),(341,88,38,1,2),(342,88,38,2,2),(343,88,38,3,2),(344,88,38,4,1),(345,88,38,5,2),(346,88,38,6,3),(347,88,38,7,3),(348,88,38,8,3),(349,88,38,9,3),(350,88,40,1,1),(351,88,40,2,1),(352,88,40,3,1),(353,88,40,4,2),(354,88,40,5,2),(355,88,40,6,1),(356,88,40,7,3),(357,88,40,8,3),(358,88,40,9,2),(359,88,41,1,3),(360,88,41,2,1),(361,88,41,3,1),(362,88,41,4,1),(363,88,41,5,3),(364,88,41,6,1),(365,88,41,7,3),(366,88,41,8,3),(367,88,41,9,3),(368,88,42,1,1),(369,88,42,2,3),(370,88,42,3,2),(371,88,42,4,2),(372,88,42,5,1),(373,88,42,6,1),(374,88,42,7,3),(375,88,42,8,1),(376,88,42,9,1),(377,88,43,1,2),(378,88,43,2,1),(379,88,43,3,2),(380,88,43,4,2),(381,88,43,5,3),(382,88,43,6,3),(383,88,43,7,3),(384,88,43,8,3),(385,88,43,9,3),(386,88,44,1,1),(387,88,44,2,1),(388,88,44,3,1),(389,88,44,4,3),(390,88,44,5,3),(391,88,44,6,3),(392,88,44,7,3),(393,88,44,8,3),(394,88,44,9,3),(395,88,45,1,1),(396,88,45,2,3),(397,88,45,3,2),(398,88,45,4,2),(399,88,45,5,3),(400,88,45,6,2),(401,88,45,7,1),(402,88,45,8,2),(403,88,45,9,3),(404,88,46,1,1),(405,88,46,2,2),(406,88,46,3,1),(407,88,46,4,2),(408,88,46,5,2),(409,88,46,6,3),(410,88,46,7,3),(411,88,46,8,3),(412,88,46,9,1),(413,88,47,1,1),(414,88,47,2,1),(415,88,47,3,1),(416,88,47,4,2),(417,88,47,5,1),(418,88,47,6,1),(419,88,47,7,1),(420,88,47,8,1),(421,88,47,9,2),(422,88,48,1,1),(423,88,48,2,2),(424,88,48,3,1),(425,88,48,4,3),(426,88,48,5,1),(427,88,48,6,3),(428,88,48,7,3),(429,88,48,8,3),(430,88,48,9,1),(431,88,49,1,1),(432,88,49,2,3),(433,88,49,3,1),(434,88,49,4,2),(435,88,49,5,3),(436,88,49,6,2),(437,88,49,7,2),(438,88,49,8,1),(439,88,49,9,3),(440,88,51,1,1),(441,88,51,2,1),(442,88,51,3,2),(443,88,51,4,2),(444,88,51,5,1),(445,88,51,6,3),(446,88,51,7,1),(447,88,51,8,3),(448,88,51,9,1),(449,88,52,1,2),(450,88,52,2,1),(451,88,52,3,1),(452,88,52,4,2),(453,88,52,5,1),(454,88,52,6,1),(455,88,52,7,1),(456,88,52,8,1),(457,88,52,9,1),(458,88,53,1,1),(459,88,53,2,2),(460,88,53,3,1),(461,88,53,4,2),(462,88,53,5,3),(463,88,53,6,1),(464,88,53,7,2),(465,88,53,8,1),(466,88,53,9,1),(467,88,54,1,1),(468,88,54,2,1),(469,88,54,3,2),(470,88,54,4,3),(471,88,54,5,1),(472,88,54,6,3),(473,88,54,7,3),(474,88,54,8,3),(475,88,54,9,3),(476,88,55,1,1),(477,88,55,2,2),(478,88,55,3,1),(479,88,55,4,2),(480,88,55,5,1),(481,88,55,6,1),(482,88,55,7,1),(483,88,55,8,3),(484,88,55,9,1),(485,88,56,1,2),(486,88,56,2,3),(487,88,56,3,1),(488,88,56,4,3),(489,88,56,5,3),(490,88,56,6,3),(491,88,56,7,2),(492,88,56,8,3),(493,88,56,9,2),(494,88,57,1,1),(495,88,57,2,3),(496,88,57,3,2),(497,88,57,4,3),(498,88,57,5,1),(499,88,57,6,1),(500,88,57,7,3),(501,88,57,8,2),(502,88,57,9,1),(503,88,58,1,1),(504,88,58,2,2),(505,88,58,3,1),(506,88,58,4,1),(507,88,58,5,1),(508,88,58,6,3),(509,88,58,7,3),(510,88,58,8,3),(511,88,58,9,3),(512,88,59,1,1),(513,88,59,2,1),(514,88,59,3,1),(515,88,59,4,1),(516,88,59,5,2),(517,88,59,6,3),(518,88,59,7,2),(519,88,59,8,3),(520,88,59,9,1),(521,88,60,1,1),(522,88,60,2,2),(523,88,60,3,1),(524,88,60,4,2),(525,88,60,5,2),(526,88,60,6,1),(527,88,60,7,2),(528,88,60,8,1),(529,88,60,9,2),(530,88,62,1,1),(531,88,62,2,2),(532,88,62,3,2),(533,88,62,4,2),(534,88,62,5,1),(535,88,62,6,3),(536,88,62,7,3),(537,88,62,8,3),(538,88,62,9,3),(548,88,64,1,1),(549,88,64,2,2),(550,88,64,3,2),(551,88,64,4,2),(552,88,64,5,1),(553,88,64,6,1),(554,88,64,7,1),(555,88,64,8,3),(556,88,64,9,1),(557,88,65,1,1),(558,88,65,2,3),(559,88,65,3,1),(560,88,65,4,3),(561,88,65,5,2),(562,88,65,6,1),(563,88,65,7,1),(564,88,65,8,2),(565,88,65,9,1),(566,88,66,1,1),(567,88,66,2,3),(568,88,66,3,2),(569,88,66,4,3),(570,88,66,5,1),(571,88,66,6,3),(572,88,66,7,1),(573,88,66,8,2),(574,88,66,9,1),(575,88,67,1,1),(576,88,67,2,3),(577,88,67,3,1),(578,88,67,4,1),(579,88,67,5,1),(580,88,67,6,1),(581,88,67,7,2),(582,88,67,8,1),(583,88,67,9,1),(584,88,68,1,1),(585,88,68,2,1),(586,88,68,3,1),(587,88,68,4,2),(588,88,68,5,2),(589,88,68,6,2),(590,88,68,7,2),(591,88,68,8,3),(592,88,68,9,2),(593,88,69,1,1),(594,88,69,2,2),(595,88,69,3,1),(596,88,69,4,1),(597,88,69,5,1),(598,88,69,6,1),(599,88,69,7,1),(600,88,69,8,1),(601,88,69,9,2),(602,88,70,1,1),(603,88,70,2,3),(604,88,70,3,1),(605,88,70,4,2),(606,88,70,5,2),(607,88,70,6,1),(608,88,70,7,3),(609,88,70,8,1),(610,88,70,9,1),(611,88,72,1,1),(612,88,72,2,2),(613,88,72,3,1),(614,88,72,4,3),(615,88,72,5,3),(616,88,72,6,3),(617,88,72,7,3),(618,88,72,8,3),(619,88,72,9,2),(620,88,71,1,1),(621,88,71,2,3),(622,88,71,3,1),(623,88,71,4,2),(624,88,71,5,1),(625,88,71,6,1),(626,88,71,7,2),(627,88,71,8,2),(628,88,73,1,1),(629,88,73,2,2),(630,88,73,3,1),(631,88,73,4,3),(632,88,73,5,3),(633,88,73,6,3),(634,88,73,7,2),(635,88,73,8,3),(636,88,73,9,1),(637,88,74,1,2),(638,88,74,2,3),(639,88,74,3,2),(640,88,74,4,2),(641,88,74,5,2),(642,88,74,6,3),(643,88,74,7,3),(644,88,74,8,2),(645,88,74,9,1),(646,88,75,1,1),(647,88,75,2,2),(648,88,75,3,1),(649,88,75,4,3),(650,88,75,5,3),(651,88,75,6,3),(652,88,75,7,2),(653,88,75,8,3),(654,88,75,9,1),(655,88,76,1,1),(656,88,76,2,2),(657,88,76,3,1),(658,88,76,4,3),(659,88,76,5,3),(660,88,76,6,3),(661,88,76,7,2),(662,88,76,8,3),(663,88,76,9,1),(664,88,77,1,1),(665,88,77,2,2),(666,88,77,3,1),(667,88,77,4,2),(668,88,77,5,1),(669,88,77,6,3),(670,88,77,7,1),(671,88,77,8,3),(672,88,77,9,2),(673,88,78,1,1),(674,88,78,2,2),(675,88,78,3,1),(676,88,78,4,2),(677,88,78,5,1),(678,88,78,6,3),(679,88,78,7,1),(680,88,78,8,3),(681,88,78,9,2),(682,88,79,1,1),(683,88,79,2,3),(684,88,79,3,1),(685,88,79,4,3),(686,88,79,5,2),(687,88,79,5,3),(688,88,79,7,1),(689,88,79,8,2),(690,88,79,9,1),(691,88,80,1,1),(692,88,80,2,1),(693,88,80,3,1),(694,88,80,4,3),(695,88,80,5,4),(696,88,80,6,3),(697,88,80,7,1),(698,88,80,8,3),(699,88,80,9,1),(700,88,81,1,1),(701,88,81,2,3),(702,88,81,3,1),(703,88,81,4,3),(704,88,81,5,1),(705,88,81,6,1),(706,88,81,7,3),(707,88,81,8,2),(708,88,81,9,3),(709,88,82,1,1),(710,88,82,2,2),(711,88,82,3,1),(712,88,82,4,1),(713,88,82,5,1),(714,88,82,6,1),(715,88,82,7,1),(716,88,82,8,3),(717,88,82,9,1),(718,88,83,1,1),(719,88,83,2,2),(720,88,83,3,2),(721,88,83,4,3),(722,88,83,5,3),(723,88,83,6,3),(724,88,83,7,1),(725,88,83,8,3),(726,88,83,9,2),(727,88,84,1,2),(728,88,84,2,1),(729,88,84,3,3),(730,88,84,4,3),(731,88,84,5,2),(732,88,84,6,3),(733,88,84,7,1),(734,88,84,8,3),(735,88,84,8,3),(736,88,85,1,1),(737,88,85,2,1),(738,88,85,3,1),(739,88,85,4,1),(740,88,85,5,1),(741,88,85,6,1),(742,88,85,7,1),(743,88,85,8,1),(744,88,85,9,2),(745,88,86,1,1),(746,88,86,2,1),(747,88,86,3,1),(748,88,86,4,3),(749,88,86,5,3),(750,88,86,6,3),(751,88,86,7,3),(752,88,86,8,1),(753,88,86,9,3),(754,88,88,1,1),(755,88,88,2,2),(756,88,88,3,1),(757,88,88,4,1),(758,88,88,5,1),(759,88,88,6,1),(760,88,88,7,1),(761,88,88,8,2),(762,88,88,9,3),(763,88,89,1,1),(764,88,89,2,1),(765,88,89,3,1),(766,88,89,4,1),(767,88,89,5,2),(768,88,89,6,3),(769,88,89,7,1),(770,88,89,8,1),(771,88,89,9,2),(772,88,90,1,2),(773,88,90,2,2),(774,88,90,3,1),(775,88,90,4,1),(776,88,90,5,2),(777,88,90,6,3),(778,88,90,7,2),(779,88,90,8,3),(780,88,90,9,1),(781,88,91,1,1),(782,88,91,2,1),(783,88,91,3,1),(784,88,91,4,3),(785,88,91,5,2),(786,88,91,6,3),(787,88,91,7,1),(788,88,91,8,3),(789,88,91,9,1),(790,88,92,1,2),(791,88,92,2,2),(792,88,92,3,1),(793,88,92,4,1),(794,88,92,5,1),(795,88,92,6,2),(796,88,92,7,3),(797,88,92,8,1),(798,88,92,9,3),(799,88,93,1,1),(800,88,93,2,2),(801,88,93,3,1),(802,88,93,4,1),(803,88,93,5,1),(804,88,93,6,1),(805,88,93,7,1),(806,88,93,8,1),(807,88,93,9,2),(808,88,94,1,1),(809,88,94,2,2),(810,88,94,3,1),(811,88,94,4,3),(812,88,94,5,1),(813,88,94,6,3),(814,88,94,7,1),(815,88,94,8,2),(816,88,94,9,1);
/*!40000 ALTER TABLE `encuesta_condicionescampo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_conservacion`
--

DROP TABLE IF EXISTS `encuesta_conservacion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_conservacion` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `actividad` int(11) NOT NULL,
  `cuanto` decimal(10,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_conservacion_1bb8f392` (`content_type_id`),
  KEY `encuesta_conservacion_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_conservacion`
--

LOCK TABLES `encuesta_conservacion` WRITE;
/*!40000 ALTER TABLE `encuesta_conservacion` DISABLE KEYS */;
INSERT INTO `encuesta_conservacion` VALUES (60,88,63,1,NULL),(2,88,2,1,'400.00'),(3,88,3,1,'100.00'),(4,88,4,1,'200.00'),(5,88,5,1,'270.00'),(6,88,6,1,'40.00'),(7,88,7,1,'2900.00'),(8,88,8,1,'800.00'),(9,88,9,1,'1301.00'),(10,88,10,1,'700.00'),(11,88,11,1,'120.00'),(12,88,12,1,'200.00'),(13,88,13,1,'400.00'),(14,88,14,1,'2000.00'),(15,88,15,1,'250.00'),(16,88,16,2,'0.00'),(17,88,17,2,'0.00'),(18,88,18,1,'0.00'),(19,88,19,1,'250.00'),(20,88,20,1,'100.00'),(21,88,21,1,'400.00'),(22,88,22,1,'570.00'),(23,88,23,1,'100.00'),(24,88,24,2,'0.00'),(25,88,25,1,'100.00'),(26,88,26,1,'300.00'),(27,88,27,2,'0.00'),(28,88,29,1,'100.00'),(29,88,30,1,'0.50'),(30,88,31,1,NULL),(31,88,32,2,NULL),(32,88,33,1,'400.00'),(33,88,34,1,'900.00'),(34,88,35,1,NULL),(35,88,36,1,NULL),(36,88,37,1,NULL),(37,88,39,1,NULL),(38,88,38,1,'100.00'),(39,88,40,1,'250.00'),(40,88,41,1,'200.00'),(41,88,42,2,'0.00'),(42,88,43,1,'200.00'),(43,88,44,1,'200.00'),(44,88,45,1,'100.00'),(45,88,46,1,NULL),(46,88,47,1,NULL),(47,88,48,1,'400.00'),(48,88,49,2,NULL),(49,88,51,2,NULL),(50,88,52,1,'600.00'),(51,88,53,1,'200.00'),(52,88,54,1,NULL),(53,88,55,2,'0.00'),(54,88,56,1,NULL),(55,88,57,1,NULL),(56,88,58,1,'130.00'),(57,88,59,1,NULL),(58,88,60,1,'700.00'),(59,88,62,1,NULL),(61,88,64,1,'200.00'),(62,88,65,1,NULL),(63,88,66,1,'200.00'),(64,88,67,2,'0.00'),(65,88,68,1,'800.00'),(66,88,69,1,'5000.00'),(67,88,70,2,'0.00'),(68,88,72,1,'500.00'),(69,88,71,1,'100.00'),(70,88,73,1,'400.00'),(71,88,74,1,NULL),(72,88,75,1,'200.00'),(73,88,76,2,'0.00'),(74,88,77,2,NULL),(75,88,78,2,NULL),(76,88,79,2,'0.00'),(77,88,80,1,'100.00'),(78,88,81,1,'300.00'),(79,88,82,2,'0.00'),(80,88,83,2,NULL),(81,88,84,1,'150.00'),(82,88,85,1,NULL),(83,88,86,1,'600.00'),(84,88,88,1,'50.00'),(85,88,89,1,NULL),(86,88,90,1,'150.00'),(87,88,91,2,NULL),(88,88,92,1,NULL),(89,88,93,2,NULL),(90,88,94,2,NULL);
/*!40000 ALTER TABLE `encuesta_conservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_conservacion_cocinar`
--

DROP TABLE IF EXISTS `encuesta_conservacion_cocinar`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_conservacion_cocinar` (
  `id` int(11) NOT NULL auto_increment,
  `conservacion_id` int(11) NOT NULL,
  `combustible_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `conservacion_id` (`conservacion_id`,`combustible_id`),
  KEY `encuesta_conservacion_cocinar_36336b1a` (`conservacion_id`),
  KEY `encuesta_conservacion_cocinar_276e6b2a` (`combustible_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_conservacion_cocinar`
--

LOCK TABLES `encuesta_conservacion_cocinar` WRITE;
/*!40000 ALTER TABLE `encuesta_conservacion_cocinar` DISABLE KEYS */;
INSERT INTO `encuesta_conservacion_cocinar` VALUES (62,60,3),(2,2,3),(3,3,4),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,3),(9,8,4),(10,9,3),(11,10,3),(12,11,3),(13,12,3),(14,13,3),(31,14,3),(16,15,3),(17,16,1),(18,17,3),(19,18,3),(20,19,3),(21,20,3),(22,21,3),(23,22,3),(24,23,3),(25,24,3),(26,25,3),(27,26,3),(28,27,3),(29,28,3),(30,29,3),(32,30,1),(33,30,3),(34,31,3),(35,32,3),(36,33,3),(37,34,1),(38,34,3),(39,35,3),(40,36,3),(41,37,3),(42,38,3),(43,39,1),(44,40,3),(45,41,3),(46,43,3),(47,44,3),(48,45,3),(49,46,3),(50,47,3),(51,48,3),(52,49,3),(53,50,3),(54,51,3),(55,53,3),(56,54,3),(57,55,3),(58,56,3),(59,57,3),(60,58,3),(61,59,3),(63,61,3),(64,62,3),(65,63,3),(66,64,4),(67,65,3),(68,66,3),(69,67,3),(70,68,3),(71,69,3),(72,70,3),(73,71,3),(74,72,3),(75,73,3),(76,74,3),(77,75,3),(78,76,3),(79,77,3),(80,78,3),(81,79,3),(82,80,3),(83,81,3),(84,82,3),(85,83,3),(86,84,3),(87,85,3),(88,86,3),(89,87,3),(90,88,3),(91,89,1),(92,89,3),(93,90,3);
/*!40000 ALTER TABLE `encuesta_conservacion_cocinar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_conservacion_cuales`
--

DROP TABLE IF EXISTS `encuesta_conservacion_cuales`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_conservacion_cuales` (
  `id` int(11) NOT NULL auto_increment,
  `conservacion_id` int(11) NOT NULL,
  `actividadconservacion_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `conservacion_id` (`conservacion_id`,`actividadconservacion_id`),
  KEY `encuesta_conservacion_cuales_36336b1a` (`conservacion_id`),
  KEY `encuesta_conservacion_cuales_5b4a08aa` (`actividadconservacion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_conservacion_cuales`
--

LOCK TABLES `encuesta_conservacion_cuales` WRITE;
/*!40000 ALTER TABLE `encuesta_conservacion_cuales` DISABLE KEYS */;
INSERT INTO `encuesta_conservacion_cuales` VALUES (97,60,2),(96,60,1),(3,2,1),(4,2,2),(5,2,4),(6,3,1),(7,3,4),(8,4,1),(9,4,4),(10,5,1),(11,6,1),(12,6,4),(13,7,1),(14,7,3),(15,7,4),(16,8,1),(17,8,4),(18,9,1),(19,9,2),(20,9,4),(21,10,1),(22,10,2),(23,10,4),(24,11,1),(25,11,4),(26,12,1),(27,13,1),(51,14,1),(29,15,1),(30,16,5),(31,17,1),(32,18,1),(33,18,4),(34,19,1),(35,19,4),(36,20,1),(37,21,1),(38,21,4),(39,22,1),(40,22,4),(41,23,1),(42,23,4),(43,24,5),(44,25,1),(45,25,3),(46,25,4),(47,26,4),(48,27,1),(49,28,4),(50,29,2),(52,32,4),(53,33,1),(54,33,2),(55,33,4),(56,34,1),(57,36,1),(58,36,3),(59,37,1),(60,37,2),(61,38,5),(62,39,4),(63,40,1),(64,40,4),(65,41,7),(66,42,3),(67,43,1),(68,43,4),(69,44,1),(70,46,1),(71,46,2),(72,46,4),(73,47,5),(74,50,1),(75,50,2),(76,50,3),(77,51,5),(78,52,1),(79,52,2),(80,52,3),(81,52,4),(82,54,1),(83,54,2),(84,54,4),(85,55,1),(86,55,2),(87,55,3),(88,56,1),(89,56,3),(90,57,1),(91,57,3),(92,58,1),(93,58,2),(94,59,1),(95,59,2),(98,61,5),(99,63,5),(100,64,7),(101,65,5),(102,66,1),(103,66,5),(104,67,7),(105,68,1),(106,69,1),(107,70,1),(108,71,1),(109,71,2),(110,72,1),(111,72,2),(112,72,5),(113,73,7),(114,76,7),(115,77,6),(116,78,4),(117,79,7),(118,81,1),(119,81,2),(120,82,1),(121,83,1),(122,84,1),(123,86,1);
/*!40000 ALTER TABLE `encuesta_conservacion_cuales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_consume`
--

DROP TABLE IF EXISTS `encuesta_consume`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_consume` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `preg1` int(11) default NULL,
  `preg2` int(11) default NULL,
  `preg3` int(11) default NULL,
  `preg5` int(11) default NULL,
  `preg7` int(11) default NULL,
  `preg8` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_consume_1bb8f392` (`content_type_id`),
  KEY `encuesta_consume_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_consume`
--

LOCK TABLES `encuesta_consume` WRITE;
/*!40000 ALTER TABLE `encuesta_consume` DISABLE KEYS */;
INSERT INTO `encuesta_consume` VALUES (59,88,62,2,1,4,1,NULL,2),(2,88,2,3,1,1,1,1,2),(3,88,3,2,2,NULL,1,4,1),(4,88,4,2,1,1,1,4,2),(5,88,5,1,1,3,1,2,2),(6,88,6,1,1,2,3,2,1),(7,88,7,2,2,NULL,1,NULL,2),(8,88,8,2,1,4,1,4,1),(9,88,9,3,1,2,1,3,1),(10,88,10,2,1,4,3,2,1),(11,88,11,1,1,4,1,2,2),(12,88,12,2,1,2,1,4,2),(13,88,13,2,1,2,1,4,1),(14,88,14,3,2,NULL,NULL,NULL,2),(15,88,15,1,1,4,2,4,2),(16,88,16,2,1,4,1,NULL,2),(17,88,17,1,1,2,1,NULL,2),(18,88,18,2,1,4,1,4,2),(19,88,19,2,1,4,1,3,1),(20,88,20,2,1,2,1,3,2),(21,88,21,2,1,4,1,4,1),(22,88,22,2,2,NULL,1,1,1),(23,88,23,2,2,NULL,1,3,1),(24,88,24,2,2,NULL,NULL,NULL,1),(25,88,25,2,1,4,1,2,1),(26,88,26,2,1,4,1,3,1),(27,88,27,2,1,2,1,2,2),(28,88,28,2,1,4,1,2,1),(29,88,29,1,1,4,3,2,1),(30,88,30,3,1,4,1,2,2),(31,88,31,2,1,1,3,2,2),(32,88,32,1,1,2,3,1,2),(33,88,33,1,1,2,2,3,2),(34,88,34,3,1,NULL,1,NULL,2),(35,88,35,2,2,NULL,1,NULL,2),(36,88,36,2,1,2,1,2,2),(37,88,37,2,1,2,1,2,2),(38,88,39,2,1,4,NULL,2,2),(39,88,40,2,1,2,1,3,2),(40,88,41,2,2,NULL,NULL,NULL,2),(41,88,38,2,2,NULL,1,NULL,2),(42,88,42,2,1,4,1,1,2),(43,88,43,2,1,2,3,3,1),(44,88,44,2,2,NULL,NULL,NULL,2),(45,88,45,1,1,4,1,3,2),(46,88,46,2,1,2,1,NULL,2),(47,88,47,3,2,NULL,1,NULL,1),(48,88,48,1,1,4,1,NULL,2),(49,88,51,3,1,2,1,NULL,2),(50,88,52,2,1,2,2,4,2),(51,88,54,2,1,2,3,4,2),(52,88,53,2,1,4,1,2,2),(53,88,56,3,1,4,2,1,2),(54,88,55,1,1,4,2,2,2),(55,88,57,3,1,4,2,NULL,2),(56,88,58,2,1,2,2,2,2),(57,88,59,3,1,NULL,1,2,1),(58,88,60,3,1,1,3,4,2),(60,88,63,2,1,4,2,NULL,2),(61,88,64,3,1,4,1,2,2),(62,88,66,1,1,1,1,1,2),(63,88,67,1,1,4,1,2,2),(64,88,65,2,1,2,NULL,NULL,2),(65,88,68,3,1,4,1,NULL,2),(66,88,69,2,1,4,1,NULL,2),(67,88,70,3,1,2,2,3,1),(68,88,72,2,1,4,1,4,2),(69,88,71,2,1,2,2,2,2),(70,88,73,2,1,4,3,4,2),(71,88,74,2,1,4,1,NULL,2),(72,88,75,2,1,1,1,2,2),(73,88,77,2,1,4,2,1,2),(74,88,78,2,1,4,2,1,2),(75,88,76,3,1,1,2,1,2),(76,88,79,2,1,2,1,4,2),(77,88,80,1,2,NULL,2,4,2),(78,88,81,2,1,1,1,4,2),(79,88,83,2,1,4,2,4,2),(80,88,82,2,1,2,2,1,2),(81,88,84,2,1,2,1,4,2),(82,88,85,2,2,NULL,1,NULL,2),(83,88,86,2,1,2,1,1,2),(84,88,88,2,1,1,2,4,2),(85,88,89,2,1,4,2,1,2),(86,88,90,2,2,NULL,1,3,2),(87,88,91,2,1,4,1,4,2),(88,88,92,2,1,2,1,NULL,2),(89,88,93,2,1,4,1,NULL,2),(90,88,94,2,1,2,1,NULL,2);
/*!40000 ALTER TABLE `encuesta_consume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_consume_preg4`
--

DROP TABLE IF EXISTS `encuesta_consume_preg4`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_consume_preg4` (
  `id` int(11) NOT NULL auto_increment,
  `consume_id` int(11) NOT NULL,
  `meses_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `consume_id` (`consume_id`,`meses_id`),
  KEY `encuesta_consume_preg4_3bcc92b5` (`consume_id`),
  KEY `encuesta_consume_preg4_1b70c950` (`meses_id`)
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_consume_preg4`
--

LOCK TABLES `encuesta_consume_preg4` WRITE;
/*!40000 ALTER TABLE `encuesta_consume_preg4` DISABLE KEYS */;
INSERT INTO `encuesta_consume_preg4` VALUES (187,59,5),(186,59,9),(185,59,8),(4,2,8),(5,2,9),(6,2,7),(7,4,3),(8,4,4),(9,4,5),(10,4,6),(11,4,7),(12,4,8),(13,4,9),(14,5,8),(15,5,9),(16,5,6),(17,5,7),(18,6,4),(19,6,5),(20,6,6),(21,6,7),(22,8,8),(23,8,9),(24,8,6),(25,8,7),(26,9,8),(27,9,6),(28,9,7),(29,10,8),(30,10,9),(31,10,6),(32,10,7),(33,11,8),(34,11,6),(35,11,7),(36,12,8),(37,12,9),(38,12,10),(39,12,6),(40,12,7),(41,13,8),(42,13,9),(43,13,5),(44,13,6),(45,13,7),(46,15,8),(47,15,9),(48,15,6),(49,15,7),(50,16,8),(51,16,6),(52,16,7),(53,17,4),(54,17,5),(55,17,6),(56,17,7),(57,17,8),(58,17,9),(59,17,10),(60,18,4),(61,18,5),(62,18,6),(63,18,7),(64,19,8),(65,19,6),(66,19,7),(67,20,6),(68,20,7),(69,21,3),(70,21,4),(71,21,5),(72,21,6),(73,21,7),(74,22,8),(75,22,6),(76,22,7),(77,23,6),(78,23,7),(79,24,8),(80,24,6),(81,24,7),(82,25,8),(83,25,9),(84,26,8),(85,26,7),(86,27,8),(87,27,6),(88,27,7),(89,28,8),(90,28,5),(91,28,6),(92,28,7),(93,29,8),(94,29,6),(95,29,7),(96,30,4),(97,30,5),(98,30,6),(99,30,7),(100,31,8),(101,31,9),(102,31,6),(103,31,7),(104,32,8),(105,32,9),(106,32,5),(107,32,6),(108,32,7),(109,33,9),(110,33,10),(111,33,11),(112,34,8),(113,34,9),(114,34,7),(115,35,8),(116,35,5),(117,35,6),(118,35,7),(119,36,8),(120,36,5),(121,36,6),(122,36,7),(123,37,3),(124,37,4),(125,37,5),(126,37,6),(127,38,8),(128,38,9),(129,38,6),(130,38,7),(131,39,8),(132,39,7),(133,40,6),(134,40,7),(135,42,6),(136,42,7),(137,43,8),(138,43,9),(139,43,10),(140,43,7),(141,44,8),(142,44,7),(143,46,8),(144,46,9),(145,46,7),(146,47,8),(147,47,6),(148,47,7),(149,48,8),(150,48,9),(151,48,6),(152,48,7),(153,49,8),(154,49,9),(155,49,6),(156,49,7),(157,50,8),(158,50,6),(159,50,7),(160,51,8),(161,51,6),(162,51,7),(163,52,6),(164,52,7),(165,53,8),(166,53,7),(167,54,8),(168,54,4),(169,54,5),(170,54,6),(171,54,7),(172,55,8),(173,55,6),(174,55,7),(178,56,7),(177,56,8),(179,57,4),(180,57,5),(181,57,6),(182,57,7),(183,58,8),(184,58,7),(188,59,6),(189,59,7),(190,60,3),(191,60,4),(192,60,5),(193,61,8),(194,61,4),(195,61,6),(196,61,7),(197,62,3),(198,62,4),(199,62,5),(200,62,6),(201,62,7),(202,62,8),(203,62,9),(204,63,5),(205,63,6),(206,63,7),(207,63,8),(208,63,9),(209,63,10),(210,63,11),(211,64,8),(212,64,4),(213,64,5),(214,64,6),(215,64,7),(216,65,8),(217,65,6),(218,65,7),(219,66,6),(220,66,7),(221,67,8),(222,67,6),(223,67,7),(224,68,8),(225,68,4),(226,68,5),(227,68,6),(228,68,7),(229,69,8),(230,69,6),(231,69,7),(232,70,8),(233,70,5),(234,70,6),(235,70,7),(236,71,8),(237,71,5),(238,71,6),(239,71,7),(240,72,5),(241,72,6),(242,72,7),(243,73,6),(244,73,7),(245,74,6),(246,74,7),(247,75,6),(248,75,7),(249,77,8),(250,77,9),(251,77,6),(252,77,7),(253,78,8),(254,78,5),(255,78,6),(256,78,7),(257,79,8),(258,79,5),(259,79,6),(260,79,7),(261,81,8),(262,81,6),(263,81,7),(264,82,5),(265,82,6),(266,82,7),(267,83,8),(268,83,6),(269,83,7),(270,84,8),(271,84,5),(272,84,6),(273,84,7),(274,85,8),(275,85,6),(276,85,7),(277,86,8),(278,86,9),(279,86,10),(280,87,8),(281,87,9),(282,87,5),(283,87,6),(284,87,7),(285,88,8),(286,88,1),(287,88,5),(288,88,6),(289,88,7),(290,90,8),(291,90,4),(292,90,5),(293,90,6),(294,90,7);
/*!40000 ALTER TABLE `encuesta_consume_preg4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_cooperativa`
--

DROP TABLE IF EXISTS `encuesta_cooperativa`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_cooperativa` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_cooperativa`
--

LOCK TABLES `encuesta_cooperativa` WRITE;
/*!40000 ALTER TABLE `encuesta_cooperativa` DISABLE KEYS */;
INSERT INTO `encuesta_cooperativa` VALUES (1,'Juan Ramon Corea'),(2,'Las Brumas'),(3,'La Esperanza '),(4,'Augusto César Sandino'),(5,'Uca San Ramon La Hermandad'),(6,'Uca San Ramon Denis Gutiérrez'),(7,'UCA San Ramón Daniel Teller'),(8,'UCA San Ramón El Privilegio'),(9,'UCA San Ramón Francisco Javier Sáez'),(10,'Lázaro Talavera'),(11,'CORWAS'),(12,'Carlos Fonseca Amador'),(13,'COMANUR'),(14,'PROCOCER'),(15,'COAPANTE'),(16,'La Fundadora'),(17,'Uca San Ramon Ramón García'),(18,'Nuevo Amanecer'),(19,'Uca San Ramón - Ramón García'),(20,'Amigo de Bonn'),(21,'Uca San Ramón Silvio Mayorga'),(22,'Uca San Ramón Danilo Gonzáles');
/*!40000 ALTER TABLE `encuesta_cooperativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_credito`
--

DROP TABLE IF EXISTS `encuesta_credito`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_credito` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `recibe` int(11) default NULL,
  `desde` int(11) default NULL,
  `satisfaccion` int(11) default NULL,
  `dia` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_credito_1bb8f392` (`content_type_id`),
  KEY `encuesta_credito_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_credito`
--

LOCK TABLES `encuesta_credito` WRITE;
/*!40000 ALTER TABLE `encuesta_credito` DISABLE KEYS */;
INSERT INTO `encuesta_credito` VALUES (59,88,62,1,1,3,1),(2,88,2,1,2,2,1),(3,88,3,1,1,1,1),(4,88,4,1,1,1,1),(5,88,5,1,2,2,1),(6,88,6,1,1,2,1),(7,88,7,1,2,2,1),(8,88,8,1,2,1,1),(9,88,9,1,2,1,2),(10,88,10,1,2,3,1),(11,88,11,1,1,1,1),(12,88,12,1,1,2,1),(13,88,13,1,2,3,1),(14,88,14,1,NULL,1,1),(15,88,15,1,2,3,1),(16,88,16,1,2,3,1),(17,88,17,1,2,3,1),(18,88,18,1,1,1,2),(19,88,19,1,1,1,NULL),(20,88,20,1,1,2,NULL),(21,88,21,1,1,2,1),(22,88,22,1,2,2,2),(23,88,23,1,1,3,1),(24,88,24,1,1,2,1),(25,88,25,1,1,2,1),(26,88,26,1,1,2,2),(27,88,27,1,1,2,NULL),(28,88,28,1,1,2,1),(29,88,29,1,2,1,1),(30,88,30,1,2,3,1),(31,88,31,1,1,2,1),(32,88,32,1,1,2,1),(33,88,33,1,1,3,1),(34,88,34,1,2,2,1),(35,88,35,2,NULL,NULL,NULL),(36,88,36,1,2,NULL,NULL),(37,88,37,1,2,2,1),(38,88,39,1,2,3,1),(39,88,40,1,1,1,1),(40,88,41,1,1,NULL,1),(41,88,38,1,2,3,1),(42,88,42,1,2,3,2),(43,88,43,2,NULL,NULL,NULL),(44,88,44,1,1,1,1),(45,88,45,1,2,3,1),(46,88,46,1,2,3,1),(47,88,47,1,2,3,1),(48,88,48,1,2,3,1),(49,88,51,1,2,3,1),(50,88,52,1,2,1,1),(51,88,54,1,2,1,1),(52,88,53,1,1,2,1),(53,88,56,1,2,1,1),(54,88,55,1,1,3,2),(55,88,57,1,2,2,1),(56,88,58,1,2,2,1),(57,88,59,1,2,1,1),(58,88,60,1,2,3,2),(60,88,63,1,1,2,1),(61,88,64,1,1,3,1),(62,88,66,1,1,3,1),(63,88,67,1,1,2,1),(64,88,65,1,2,3,1),(65,88,68,1,1,3,1),(66,88,69,1,1,3,1),(67,88,70,1,1,3,2),(68,88,72,1,2,3,1),(69,88,71,1,1,3,2),(70,88,73,1,2,3,NULL),(71,88,74,1,2,3,1),(72,88,75,1,2,3,2),(73,88,77,1,2,3,1),(74,88,78,1,2,3,1),(75,88,76,1,2,3,1),(76,88,79,1,2,3,1),(77,88,80,1,2,3,1),(78,88,81,1,2,1,1),(79,88,83,1,2,1,1),(80,88,82,1,2,3,2),(81,88,84,1,2,2,1),(82,88,85,1,2,2,1),(83,88,86,1,2,3,1),(84,88,88,1,NULL,1,1),(85,88,90,1,2,1,1),(86,88,91,1,2,NULL,2),(87,88,92,1,2,3,2),(88,88,93,1,2,3,1),(89,88,94,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `encuesta_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_credito_ocupa_credito`
--

DROP TABLE IF EXISTS `encuesta_credito_ocupa_credito`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_credito_ocupa_credito` (
  `id` int(11) NOT NULL auto_increment,
  `credito_id` int(11) NOT NULL,
  `ocupacredito_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `credito_id` (`credito_id`,`ocupacredito_id`),
  KEY `encuesta_credito_ocupa_credito_a3100cd` (`credito_id`),
  KEY `encuesta_credito_ocupa_credito_227cc9f8` (`ocupacredito_id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_credito_ocupa_credito`
--

LOCK TABLES `encuesta_credito_ocupa_credito` WRITE;
/*!40000 ALTER TABLE `encuesta_credito_ocupa_credito` DISABLE KEYS */;
INSERT INTO `encuesta_credito_ocupa_credito` VALUES (153,59,3),(152,59,1),(151,59,8),(4,2,1),(5,2,5),(6,2,6),(7,2,7),(8,3,1),(9,3,5),(10,4,1),(11,5,8),(12,5,3),(13,5,6),(14,5,7),(15,6,1),(16,6,3),(17,6,6),(18,7,1),(19,7,5),(20,8,1),(21,9,1),(22,9,3),(23,10,1),(24,10,3),(25,10,5),(26,10,7),(27,11,1),(28,11,5),(29,12,1),(30,13,1),(31,13,3),(32,13,5),(33,14,3),(34,15,1),(35,16,1),(36,17,1),(37,17,2),(38,18,1),(39,20,1),(40,20,3),(41,21,1),(42,22,1),(43,22,5),(44,23,1),(45,24,1),(46,25,1),(47,26,1),(48,27,1),(49,27,3),(50,28,1),(51,28,3),(52,28,6),(53,28,7),(54,29,1),(55,29,2),(56,29,3),(57,29,4),(58,29,5),(59,29,6),(60,29,7),(61,29,8),(62,30,1),(63,31,1),(64,31,2),(65,31,3),(66,31,5),(67,31,6),(68,31,7),(69,31,8),(70,32,1),(71,32,4),(72,33,1),(73,33,6),(74,33,7),(75,34,1),(76,34,6),(77,34,7),(78,36,1),(79,36,3),(80,36,4),(81,36,5),(82,36,6),(83,37,1),(84,37,3),(85,37,6),(86,38,1),(87,38,3),(88,38,4),(89,38,5),(90,38,6),(91,38,7),(92,39,1),(93,40,1),(94,40,3),(95,41,2),(96,41,3),(97,41,7),(98,42,8),(99,42,1),(100,42,3),(101,42,5),(102,42,6),(103,44,1),(104,45,3),(105,45,6),(106,46,8),(107,46,1),(108,46,2),(109,46,3),(110,47,1),(111,47,2),(112,47,3),(113,48,1),(114,48,3),(115,48,5),(116,48,6),(117,49,1),(118,49,5),(119,49,6),(120,50,8),(121,50,1),(122,50,4),(123,50,5),(124,50,7),(125,51,8),(126,51,1),(127,51,6),(128,51,7),(129,52,1),(130,52,2),(131,52,3),(132,53,1),(133,54,1),(134,54,6),(135,55,1),(136,55,4),(137,55,5),(138,55,6),(139,55,7),(140,55,8),(141,56,3),(142,57,1),(143,57,3),(144,57,5),(145,57,7),(146,58,8),(147,58,1),(148,58,5),(149,58,6),(150,58,7),(154,59,6),(155,60,1),(156,60,3),(157,61,1),(158,61,3),(159,62,1),(160,62,6),(161,63,3),(162,64,1),(163,64,3),(164,65,8),(165,65,1),(166,65,3),(167,65,6),(168,66,8),(169,66,1),(170,66,3),(171,66,4),(172,66,6),(173,67,3),(174,68,1),(175,68,3),(176,68,6),(177,69,8),(178,69,1),(179,70,1),(180,70,3),(181,70,4),(182,71,8),(183,71,1),(184,71,3),(185,71,6),(186,71,7),(187,72,1),(188,72,6),(189,72,7),(190,73,3),(191,74,3),(192,75,1),(193,76,8),(194,76,1),(195,76,3),(196,76,6),(197,76,7),(198,77,1),(199,77,5),(200,78,1),(201,79,3),(202,80,8),(203,80,1),(204,80,3),(205,80,6),(206,80,7),(207,81,1),(208,81,5),(209,82,3),(210,83,5),(211,84,5),(212,85,8),(213,85,1),(214,85,7),(215,86,5),(216,87,1),(217,87,6),(218,88,1),(219,88,3),(220,88,6),(221,88,7);
/*!40000 ALTER TABLE `encuesta_credito_ocupa_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_credito_quien_credito`
--

DROP TABLE IF EXISTS `encuesta_credito_quien_credito`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_credito_quien_credito` (
  `id` int(11) NOT NULL auto_increment,
  `credito_id` int(11) NOT NULL,
  `dacredito_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `credito_id` (`credito_id`,`dacredito_id`),
  KEY `encuesta_credito_quien_credito_a3100cd` (`credito_id`),
  KEY `encuesta_credito_quien_credito_6361b2e8` (`dacredito_id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_credito_quien_credito`
--

LOCK TABLES `encuesta_credito_quien_credito` WRITE;
/*!40000 ALTER TABLE `encuesta_credito_quien_credito` DISABLE KEYS */;
INSERT INTO `encuesta_credito_quien_credito` VALUES (113,59,3),(112,59,1),(3,2,1),(4,2,4),(5,3,1),(6,4,4),(7,5,1),(8,6,1),(9,6,4),(10,6,5),(11,6,6),(12,7,1),(13,7,3),(14,7,4),(15,8,4),(16,9,2),(17,9,4),(18,10,1),(19,10,4),(20,11,1),(21,11,4),(22,12,1),(23,13,1),(24,14,1),(25,15,1),(26,16,1),(27,17,1),(28,17,5),(29,18,1),(30,18,4),(31,19,1),(32,19,4),(33,20,1),(34,20,4),(35,20,6),(36,21,1),(37,22,1),(38,22,3),(39,22,6),(40,23,1),(41,23,4),(42,24,1),(43,24,4),(44,25,1),(45,25,4),(46,26,1),(47,26,4),(48,27,1),(49,27,2),(50,28,1),(51,28,2),(52,29,1),(53,29,4),(54,30,1),(55,30,4),(56,31,1),(57,32,1),(58,32,2),(59,32,4),(60,33,1),(61,33,4),(62,34,1),(63,34,4),(64,36,1),(65,36,2),(66,36,3),(67,36,4),(68,37,1),(69,37,4),(70,37,6),(71,38,1),(72,39,1),(73,39,4),(74,40,1),(75,40,4),(76,41,1),(77,41,2),(78,42,1),(79,42,4),(80,44,1),(81,44,4),(82,45,1),(83,46,2),(84,47,1),(85,47,3),(86,47,4),(87,47,6),(88,48,1),(89,48,2),(90,48,4),(91,48,6),(92,49,1),(93,49,3),(94,50,1),(95,50,2),(96,50,4),(97,51,1),(98,51,4),(99,52,1),(100,53,1),(101,53,4),(102,54,1),(103,55,1),(104,55,4),(105,56,1),(106,56,3),(107,56,4),(108,57,1),(109,57,4),(110,58,1),(111,58,4),(114,60,1),(115,61,1),(116,61,2),(117,62,1),(118,62,2),(119,63,1),(120,64,1),(121,64,2),(122,65,1),(123,66,1),(124,66,4),(125,67,4),(126,68,1),(127,69,1),(128,69,4),(129,70,1),(130,71,1),(131,71,2),(132,72,1),(133,73,1),(134,74,1),(135,75,1),(136,75,4),(137,76,1),(138,76,5),(139,77,1),(140,77,2),(141,78,1),(142,79,1),(143,80,1),(144,80,4),(145,81,1),(146,82,1),(147,82,2),(148,83,1),(149,83,2),(150,84,1),(151,85,1),(152,85,2),(153,86,1),(154,86,2),(155,87,1),(156,88,1),(157,88,2),(158,88,3),(159,88,6);
/*!40000 ALTER TABLE `encuesta_credito_quien_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_cultivos`
--

DROP TABLE IF EXISTS `encuesta_cultivos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_cultivos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_cultivosfinca` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `cultivos_id` int(11) NOT NULL,
  `total` decimal(10,2) default NULL,
  `consumo` decimal(10,2) default NULL,
  `venta_libre` decimal(10,2) default NULL,
  `venta_organizada` decimal(10,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_cultivosfinca_1bb8f392` (`content_type_id`),
  KEY `encuesta_cultivosfinca_7d61c803` (`object_id`),
  KEY `encuesta_cultivosfinca_168c2801` (`cultivos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_cultivosfinca`
--

LOCK TABLES `encuesta_cultivosfinca` WRITE;
/*!40000 ALTER TABLE `encuesta_cultivosfinca` DISABLE KEYS */;
INSERT INTO `encuesta_cultivosfinca` VALUES (245,88,63,2,'10.00','5.00','5.00',NULL),(244,88,63,1,'30.00','20.00','10.00',NULL),(3,88,2,1,'10.00','10.00',NULL,NULL),(4,88,2,2,'15.00','15.00',NULL,NULL),(5,88,2,4,'64.00','2.00',NULL,'62.00'),(6,88,2,10,'1000.00','1000.00',NULL,NULL),(7,88,2,11,'200.00','200.00',NULL,NULL),(8,88,3,1,'3.00','3.00','0.00','0.00'),(9,88,3,2,'2.00','2.00','0.00','0.00'),(10,88,3,3,'30.00','2.00','28.00','0.00'),(11,88,3,4,'104.50','1.00','0.00','103.50'),(12,88,3,10,'200.00','100.00','100.00','0.00'),(13,88,4,4,'9.00','0.00','0.00','9.00'),(14,88,4,10,'50.00','50.00','0.00','0.00'),(15,88,5,4,'21.00','1.00','0.00','20.00'),(16,88,5,10,'100.00','100.00','0.00','0.00'),(17,88,6,3,'400.00','400.00','0.00','0.00'),(18,88,6,4,'19.00','1.00','1.00','17.00'),(19,88,6,10,'25.00','25.00','0.00','0.00'),(20,88,6,11,'3.00','3.00','0.00','0.00'),(21,88,7,1,'60.00','60.00','0.00','0.00'),(22,88,7,2,'25.00','25.00','0.00','0.00'),(23,88,7,3,'4000.00','4000.00','0.00','0.00'),(24,88,7,4,'1600.00','14.00','286.00','1300.00'),(25,88,7,10,'90000.00','90000.00','0.00','0.00'),(26,88,8,1,'5.00','5.00','0.00','0.00'),(27,88,8,3,'20.00','20.00','0.00','0.00'),(28,88,8,4,'60.00','1.00','0.00','59.00'),(29,88,8,10,'100.00','100.00','0.00','0.00'),(30,88,9,1,'30.00','30.00','0.00','0.00'),(31,88,9,2,'30.00','10.00','20.00','0.00'),(32,88,9,4,'10.00','0.00','0.00','10.00'),(33,88,9,7,'3.00','3.00','0.00','0.00'),(34,88,9,8,'10.00','2.00','8.00','0.00'),(35,88,9,9,'3.00','3.00','0.00','0.00'),(36,88,9,10,'100.00','100.00','0.00','0.00'),(37,88,9,11,'1.50','1.50','0.00','0.00'),(38,88,10,1,'30.00','20.00','10.00','0.00'),(39,88,10,2,'30.00','15.00','15.00','0.00'),(40,88,10,3,'1500.00','1500.00','0.00','0.00'),(41,88,10,4,'80.00','4.00','0.00','76.00'),(42,88,10,10,'12000.00','12000.00','0.00','0.00'),(43,88,11,4,'60.00','1.00','0.00','59.00'),(44,88,11,10,'40.00','40.00','0.00','0.00'),(45,88,12,4,'25.00','0.00','0.00','25.00'),(46,88,12,10,'60.00','30.00','30.00','0.00'),(47,88,13,3,'1000.00','1000.00','0.00','0.00'),(48,88,13,4,'707.00','7.00','0.00','700.00'),(49,88,13,7,'5.00','5.00','0.00','0.00'),(50,88,13,8,'5.00','0.00','5.00','0.00'),(51,88,13,9,'1.00','1.00','0.00','0.00'),(52,88,13,10,'20.00','10.00','10.00','0.00'),(53,88,14,1,'50.00','50.00',NULL,NULL),(54,88,14,2,'50.00','50.00',NULL,NULL),(55,88,15,4,'340.00','1.00','49.00','290.00'),(56,88,15,10,'600.00','10.00','590.00','0.00'),(57,88,16,1,'50.00','20.00','30.00',NULL),(58,88,16,2,'48.00','13.00','35.00',NULL),(59,88,16,3,'200.00','200.00',NULL,NULL),(60,88,16,4,'300.00','2.00',NULL,'298.00'),(61,88,16,7,'10.00','10.00',NULL,NULL),(62,88,16,10,'2400.00','50.00','2350.00',NULL),(63,88,17,3,'1000.00','1000.00','0.00','0.00'),(64,88,17,4,'202.00','0.00','120.00','82.00'),(65,88,17,7,'5.00','0.00','5.00','0.00'),(66,88,18,1,'2.00','2.00','0.00','0.00'),(67,88,18,2,'1.00','1.00','0.00','0.00'),(68,88,18,4,'8.00','0.00','0.00','8.00'),(69,88,18,10,'100.00','100.00','0.00','0.00'),(70,88,19,3,'30.00','1.00','29.00','0.00'),(71,88,19,4,'7.50','0.50','0.00','7.00'),(72,88,19,10,'20.00','20.00','0.00','0.00'),(73,88,20,2,'40.00','6.00','34.00','0.00'),(74,88,20,4,'30.10','6.00','24.00','6.00'),(75,88,20,10,'50.00','50.00','0.00','0.00'),(76,88,21,1,'7.00','7.00','0.00','0.00'),(77,88,21,4,'22.50','0.50','0.00','22.00'),(78,88,21,10,'20.00','20.00','0.00','0.00'),(79,88,22,1,'50.00','20.00','30.00','0.00'),(80,88,22,4,'152.00','2.00','0.00','150.00'),(81,88,22,10,'500.00','500.00','0.00','0.00'),(82,88,23,4,'238.00','4.00','0.00','234.00'),(83,88,23,10,'100.00','100.00','0.00','0.00'),(84,88,25,4,'33.50','2.00','0.00','31.50'),(85,88,25,10,'60.00','60.00','0.00','0.00'),(86,88,26,1,'15.00','15.00','0.00','0.00'),(87,88,26,2,'5.00','15.00','0.00','0.00'),(88,88,26,4,'42.00','1.00','0.00','41.00'),(89,88,26,10,'200.00','200.00','0.00','0.00'),(90,88,27,4,'30.00',NULL,NULL,'30.00'),(91,88,27,10,'60.00','60.00',NULL,NULL),(92,88,29,3,'20.00','10.00','10.00','0.00'),(93,88,29,4,'28.00','2.00','0.00','26.00'),(94,88,29,10,'168.00','168.00','0.00','0.00'),(95,88,29,11,'2.00','2.00','0.00','0.00'),(96,88,30,1,'24.00','24.00','16.00','0.00'),(97,88,30,2,'10.00','10.00','0.00','0.00'),(98,88,30,3,'200.00','200.00','0.00','0.00'),(99,88,30,4,'10.00','0.00','0.00','10.00'),(100,88,30,7,'5600.00','520.00','5080.00','0.00'),(101,88,30,10,'2000.00','2000.00','0.00','0.00'),(102,88,30,11,'1080.00','1080.00','0.00','0.00'),(103,88,31,1,'20.00','10.00','10.00','0.00'),(104,88,31,2,'20.00','6.00','14.00','0.00'),(105,88,31,4,'43.00','2.00','11.00','30.00'),(106,88,31,10,'70.00','70.00','0.00','0.00'),(107,88,31,11,'10.00','10.00','0.00','0.00'),(108,88,32,3,'5.00','5.00',NULL,NULL),(109,88,32,4,'35.00','1.00','4.00','30.00'),(110,88,32,9,'1.00','1.00',NULL,NULL),(111,88,32,10,'105.00','91.00','14.00',NULL),(112,88,33,4,'45.00','2.00','13.00','30.00'),(113,88,33,10,'5.00','0.00','5.00','0.00'),(114,88,34,1,'10.00','10.00',NULL,NULL),(115,88,34,2,'15.00','15.00',NULL,NULL),(116,88,34,4,'64.00','2.00',NULL,'62.00'),(117,88,34,10,'1000.00','1000.00',NULL,NULL),(118,88,34,11,'200.00','200.00',NULL,NULL),(119,88,35,1,'140.00','40.00','100.00',NULL),(120,88,35,2,'18.00','18.00',NULL,NULL),(121,88,35,4,'50.00','1.00','29.00','20.00'),(122,88,35,10,'150.00','150.00',NULL,NULL),(123,88,35,11,'50.00','50.00',NULL,NULL),(124,88,36,1,'60.00','25.00','35.00',NULL),(125,88,36,2,'50.00','20.00','30.00',NULL),(126,88,36,3,'7.20','7.20',NULL,NULL),(127,88,36,4,'317.00','5.00','287.00','30.00'),(128,88,36,10,'40.00','40.00',NULL,NULL),(129,88,36,10,'145.00','25.00','125.00',NULL),(130,88,37,1,'6.00','6.00',NULL,NULL),(131,88,37,2,'1.00','1.00',NULL,NULL),(132,88,37,4,'12.00','1.00','5.00','6.00'),(133,88,39,1,'20.00','20.00',NULL,NULL),(134,88,39,2,'25.00','20.00','5.00',NULL),(135,88,39,3,'50.00','20.00','30.00',NULL),(136,88,39,4,'40.00','2.00',NULL,'38.00'),(137,88,39,9,'48.00','48.00',NULL,NULL),(138,88,38,1,'50.00','50.00','0.00','0.00'),(139,88,38,2,'15.00','15.00','0.00','0.00'),(140,88,38,3,'510.00','10.00','500.00','0.00'),(141,88,38,4,'15.00','0.00','2.00','13.00'),(142,88,38,10,'576.00','216.00','360.00','0.00'),(143,88,40,1,'8.00','8.00',NULL,NULL),(144,88,40,2,'105.00','2.00',NULL,'107.00'),(145,88,40,10,'30.00','30.00',NULL,NULL),(146,88,41,1,'6.00','6.00',NULL,NULL),(147,88,41,2,'5.00','5.00',NULL,NULL),(148,88,41,4,'50.00','1.00','3.00','46.00'),(149,88,42,1,'20.00','15.00','5.00','0.00'),(150,88,42,2,'20.00','5.00','15.00','0.00'),(151,88,42,4,'6.00','4.00','20.00','0.00'),(152,88,42,5,'10.00','5.00','5.00','0.00'),(153,88,42,7,'2.00','1.00','1.00','0.00'),(154,88,42,9,'1.00','1.00','0.00','0.00'),(155,88,42,10,'48.00','24.00','24.00','0.00'),(156,88,42,11,'6.00','3.00','3.00','0.00'),(157,88,43,1,'8.00','8.00','0.00','0.00'),(158,88,43,2,'7.00','1.00','0.00','6.00'),(159,88,44,4,'10.00','0.50','0.00','9.50'),(160,88,44,10,'30.00','30.00',NULL,NULL),(161,88,44,11,'10.00','10.00',NULL,NULL),(162,88,45,2,'6.00','6.00','0.00','0.00'),(163,88,45,3,'60.00','0.00','30.00','30.00'),(164,88,45,10,'720.00','720.00','0.00','0.00'),(165,88,46,1,'20.00','20.00',NULL,NULL),(166,88,46,2,'50.00','10.00','40.00',NULL),(167,88,46,3,'20.00','20.00',NULL,NULL),(168,88,46,4,'32.00','2.00','27.00','3.00'),(169,88,46,7,'2.00','2.00',NULL,NULL),(170,88,46,9,'6.00','6.00',NULL,NULL),(171,88,46,9,'2772.00','72.00','2700.00',NULL),(172,88,47,1,'100.00','50.00','50.00',NULL),(173,88,47,2,'35.00','15.00','20.00',NULL),(174,88,47,3,'20.00','15.00','5.00',NULL),(175,88,47,4,'40.00','2.00','38.00',NULL),(176,88,47,7,'2.00','2.00',NULL,NULL),(177,88,47,8,'50000.00','1000.00','49000.00',NULL),(178,88,47,9,'500.00','500.00',NULL,NULL),(179,88,47,10,'300.00','100.00','200.00',NULL),(180,88,47,10,'5.00','3.00','2.00',NULL),(181,88,48,3,'65.00','15.00','50.00',NULL),(182,88,48,4,'200.00',NULL,'150.00','50.00'),(183,88,48,7,'2.00','2.00',NULL,NULL),(184,88,48,10,'2916.00','216.00','2700.00',NULL),(185,88,48,11,'10.00','10.00',NULL,NULL),(186,88,51,1,'30.00','30.00',NULL,NULL),(187,88,51,2,'30.00','20.00','10.00',NULL),(188,88,51,3,'20.00','20.00',NULL,NULL),(189,88,51,4,'120.00',NULL,NULL,NULL),(190,88,51,7,'2.00','2.00',NULL,NULL),(191,88,51,10,'1944.00','144.00','1800.00',NULL),(192,88,52,1,'180.00',NULL,'180.00',NULL),(193,88,52,3,'10.00','10.00',NULL,NULL),(194,88,52,10,'20.00','20.00',NULL,NULL),(195,88,53,1,'67.00','67.00','0.00','0.00'),(196,88,53,2,'12.00','4.00','8.00','0.00'),(197,88,53,3,'15.00','5.00','10.00','0.00'),(198,88,53,4,'14.00','3.00','0.00','11.00'),(199,88,53,7,'4.00','2.00','2.00','0.00'),(200,88,53,9,'48.00','48.00','0.00','0.00'),(201,88,53,10,'18.00','18.00','0.00','0.00'),(202,88,54,1,'50.00','30.00','20.00',NULL),(203,88,54,2,'18.00','10.00','8.00',NULL),(204,88,54,3,'80.00','50.00','30.00',NULL),(205,88,54,4,'150.00','3.00','27.00','120.00'),(206,88,54,7,'39.00',NULL,'39.00',NULL),(207,88,55,3,'5.00','5.00','0.00','0.00'),(208,88,55,4,'50.00','2.00','23.00','25.00'),(209,88,55,9,'3.60','3.60','0.00','0.00'),(210,88,55,10,'900.00','144.00','756.00','0.00'),(211,88,56,1,'20.00','12.00','8.00',NULL),(212,88,56,2,'8.00','6.00','2.00',NULL),(213,88,56,3,'50.00','50.00',NULL,NULL),(214,88,56,4,'30.00','2.00','5.00','25.00'),(215,88,56,10,'10.00','10.00',NULL,NULL),(216,88,57,3,'60.00','30.00','30.00',NULL),(217,88,57,4,'87.00','2.00',NULL,'85.00'),(218,88,57,10,'100.00','100.00',NULL,NULL),(219,88,58,1,'120.00','40.00','80.00','0.00'),(220,88,58,2,'30.00','10.00','20.00','0.00'),(221,88,58,3,'500.00','0.00','500.00','0.00'),(222,88,58,4,'160.00','0.00','60.00','100.00'),(223,88,58,10,'10.00','0.00','10.00','0.00'),(224,88,58,11,'5.00','0.00','5.00','0.00'),(225,88,59,1,'5.00','5.00',NULL,NULL),(226,88,59,2,'2.00','2.00',NULL,NULL),(227,88,59,3,'10.00',NULL,'10.00',NULL),(228,88,59,4,'130.00',NULL,'30.00','100.00'),(229,88,59,9,'1.00','1.00',NULL,NULL),(230,88,59,10,'20.00',NULL,'20.00',NULL),(231,88,60,1,'20.00','20.00','0.00','0.00'),(232,88,60,2,'3.00','3.00','0.00','0.00'),(233,88,60,3,'30.00','0.00','30.00','0.00'),(234,88,60,4,'3.00','1.00','1.00','1.00'),(235,88,60,9,'1.50','1.50','0.00','0.00'),(236,88,60,10,'50.00','50.00','0.00','0.00'),(237,88,60,11,'5.00','5.00','0.00','0.00'),(238,88,62,1,'8.00','8.00',NULL,NULL),(239,88,62,2,'11.00','5.00','6.00',NULL),(240,88,62,3,'25.00','5.00','20.00',NULL),(241,88,62,4,'7.50','1.50','3.00','3.00'),(242,88,62,7,'13.00','5.00','8.00',NULL),(243,88,62,10,'936.00','576.00','360.00',NULL),(246,88,63,3,'1.00','1.00',NULL,NULL),(247,88,63,4,'5.00','2.00','3.00',NULL),(248,88,63,5,'30.00','15.00','15.00',NULL),(249,88,63,7,'500.00','200.00','300.00',NULL),(250,88,63,10,'10.00','10.00','5.00',NULL),(251,88,63,11,'6.00','2.00','4.00',NULL),(252,88,64,1,'60.00','20.00','40.00','0.00'),(253,88,64,2,'34.00','8.00','26.00','0.00'),(254,88,64,3,'40.00','10.00','30.00','0.00'),(255,88,64,4,'35.00','5.00','0.00','33.00'),(256,88,64,10,'252.00','72.00','180.00','0.00'),(257,88,65,1,'15.00','15.00',NULL,NULL),(258,88,65,2,'24.00','20.00','4.00',NULL),(259,88,65,5,'9.00','9.00',NULL,NULL),(260,88,65,7,'3.00','9.00',NULL,NULL),(261,88,66,3,'2000.00','2000.00','0.00','0.00'),(262,88,66,4,'31.00','1.00','30.00','0.00'),(263,88,66,7,'5.00','5.00','0.00','0.00'),(264,88,66,9,'11.00','11.00','0.00','0.00'),(265,88,66,10,'1620.00','180.00','1440.00','0.00'),(266,88,66,11,'13.00','13.00','0.00','0.00'),(267,88,67,2,'3.50','3.50','0.00','0.00'),(268,88,67,4,'4.00','1.00','3.00','0.00'),(269,88,67,7,'10.00','10.00','0.00','0.00'),(270,88,67,9,'120.00','120.00','0.00','0.00'),(271,88,67,10,'30.00','30.00','0.00','0.00'),(272,88,68,1,'12.00','12.00',NULL,NULL),(273,88,68,2,'8.00','8.00',NULL,NULL),(274,88,68,3,'100.00','100.00',NULL,NULL),(275,88,68,4,'18.00',NULL,NULL,'18.00'),(276,88,68,7,'36.00','6.00','30.00',NULL),(277,88,68,9,'8.50','7.00','1.50',NULL),(278,88,68,10,'288.00','288.00',NULL,NULL),(279,88,69,1,'80.00','20.00','60.00',NULL),(280,88,69,2,'12.00',NULL,'12.00',NULL),(281,88,69,4,'80.00',NULL,'34.00','46.00'),(282,88,69,7,'2.00','2.00',NULL,NULL),(283,88,69,10,'600.00','575.00','25.00',NULL),(284,88,70,1,'40.00','15.00','30.00','0.00'),(285,88,70,2,'30.00','12.00','17.00','0.00'),(286,88,70,3,'50.00','50.00','0.00','0.00'),(287,88,70,4,'12.00','2.00','0.00','10.00'),(288,88,70,7,'10.00','10.00','0.00','0.00'),(289,88,70,9,'1.00','1.00','0.00','0.00'),(290,88,70,10,'873.00','873.00','0.00','0.00'),(291,88,70,11,'6.00','6.00','0.00','0.00'),(292,88,72,1,'7.00','7.00',NULL,NULL),(293,88,72,2,'1.00','1.00',NULL,'75.00'),(294,88,72,4,'75.00',NULL,NULL,NULL),(295,88,72,10,'40.00','20.00','20.00',NULL),(296,88,71,1,'12.00','12.00','0.00','0.00'),(297,88,71,2,'10.00','4.00','6.00','0.00'),(298,88,71,3,'6.00','1.00','5.00','0.00'),(299,88,71,4,'6.00','1.00','3.00','3.00'),(300,88,71,8,'60.00','60.00','0.00','0.00'),(301,88,71,10,'16.00','16.00','0.00','0.00'),(302,88,71,11,'2.50','2.50','0.00','0.00'),(303,88,73,1,'15.00','10.00','5.00',NULL),(304,88,73,2,'10.00','3.00','7.00',NULL),(305,88,73,4,'15.00',NULL,NULL,'15.00'),(306,88,73,10,'50.00','30.00','20.00',NULL),(307,88,74,1,'9.00','9.00',NULL,NULL),(308,88,74,2,'7.00','7.00',NULL,NULL),(309,88,74,3,'20.00','10.00',NULL,NULL),(310,88,74,4,'9.00',NULL,NULL,'9.00'),(311,88,74,10,'120.00','60.00',NULL,NULL),(312,88,75,1,'20.00','20.00','0.00','0.00'),(313,88,75,2,'20.00','20.00','0.00','0.00'),(314,88,75,3,'30.00','30.00','0.00','0.00'),(315,88,75,3,'60.00','0.00','20.00','40.00'),(316,88,75,6,'8.00','8.00','0.00','0.00'),(317,88,75,7,'3.00','3.00','0.00','0.00'),(318,88,75,10,'660.00','180.00','480.00','0.00'),(319,88,75,11,'12.00','12.00','0.00','0.00'),(320,88,76,1,'48.00','38.00','10.00','0.00'),(321,88,76,2,'13.00','6.00','7.00','0.00'),(322,88,76,3,'21.00','20.00','1.00','0.00'),(323,88,76,4,'60.00','0.00','0.00','60.00'),(324,88,76,10,'648.00','43.00','605.00',NULL),(325,88,77,1,'15.00','15.00',NULL,NULL),(326,88,77,2,'10.00','10.00',NULL,NULL),(327,88,77,4,'25.00',NULL,NULL,'25.00'),(328,88,78,1,'15.00','15.00',NULL,NULL),(329,88,78,2,'10.00','10.00',NULL,NULL),(330,88,78,4,'25.00',NULL,NULL,'25.00'),(331,88,79,2,'8.00','8.00','0.00','0.00'),(332,88,79,2,'20.00','8.00','12.00','0.00'),(333,88,79,4,'7.00','0.00','0.00','7.00'),(334,88,79,9,'7.00','3.50','3.50','0.00'),(335,88,79,10,'120.00','120.00','0.00','0.00'),(336,88,80,4,'3800.00','8.00','1142.00','800.00'),(337,88,80,10,'15960.00','360.00','15600.00',NULL),(338,88,81,1,'14.00','14.00',NULL,NULL),(339,88,81,10,'48.00','48.00',NULL,NULL),(340,88,82,1,'15.00','10.00','5.00','0.00'),(341,88,83,1,'100.00','50.00','50.00',NULL),(342,88,83,2,'110.00','20.00','90.00',NULL),(343,88,83,4,'58.00',NULL,'20.00','38.00'),(344,88,83,10,'780.00','180.00','600.00',NULL),(345,88,83,11,NULL,'12.00',NULL,NULL),(346,88,84,1,'40.00','40.00',NULL,NULL),(347,88,84,2,'30.00','30.00',NULL,NULL),(348,88,84,4,'70.00',NULL,'56.00','14.00'),(349,88,84,10,'56.00',NULL,NULL,NULL),(350,88,85,1,'25.00','25.00',NULL,NULL),(351,88,85,2,'8.00','8.00',NULL,NULL),(352,88,85,4,'100.00',NULL,'100.00',NULL),(353,88,85,7,'51.00','50.00','1.00',NULL),(354,88,85,10,'1000.00','20.00','980.00',NULL),(355,88,85,10,'10.00','10.00',NULL,NULL),(356,88,86,3,'5.00','5.00',NULL,NULL),(357,88,86,10,'175.00','65.00','105.00',NULL),(358,88,88,3,'1002.00','2.00','1000.00',NULL),(359,88,88,4,'200.00',NULL,'160.00','40.00'),(360,88,88,10,'1260.00','60.00','1200.00',NULL),(361,88,89,1,'16.00','16.00',NULL,NULL),(362,88,89,2,'18.00','18.00',NULL,NULL),(363,88,89,4,'20.00',NULL,NULL,'20.00'),(364,88,89,10,'50.00','15.00',NULL,NULL),(365,88,90,1,'12.00','12.00',NULL,NULL),(366,88,90,2,'30.00','12.00','18.00',NULL),(367,88,90,3,'1.00','1.00',NULL,NULL),(368,88,90,4,'150.00',NULL,'45.00','105.00'),(369,88,90,10,'1920.00','120.00','1800.00',NULL),(370,88,91,4,'80.00',NULL,'40.00','40.00'),(371,88,91,10,'536.00','36.00','600.00',NULL),(372,88,92,2,'16.00','16.00',NULL,NULL),(373,88,92,3,'20.00','20.00',NULL,NULL),(374,88,92,4,'8.00',NULL,NULL,'8.00'),(375,88,92,10,'420.00','420.00',NULL,NULL),(376,88,93,1,'15.00','15.00',NULL,NULL),(377,88,93,2,'40.00','10.00','30.00',NULL),(378,88,93,3,'50.00','50.00',NULL,NULL),(379,88,93,4,'40.00',NULL,'40.00',NULL),(380,88,93,9,'12.00','12.00',NULL,NULL),(381,88,93,10,'720.00','180.00','540.00',NULL),(382,88,94,4,'13.00',NULL,NULL,'13.00'),(383,88,94,9,'2.00','2.00',NULL,NULL),(384,88,94,10,'96.00','96.00',NULL,NULL);
/*!40000 ALTER TABLE `encuesta_cultivosfinca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_dacredito`
--

DROP TABLE IF EXISTS `encuesta_dacredito`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_dacredito` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_datosgenerales` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `cedula` varchar(200) default NULL,
  `sexo` int(11) default NULL,
  `cooperativa_id` int(11) default NULL,
  `nombre_conyugue` varchar(200) default NULL,
  `cedula_conyugue` varchar(200) default NULL,
  `nombre_finca` varchar(200) default NULL,
  `comunidad_id` int(11) NOT NULL,
  `coor_lt` decimal(24,16) default NULL,
  `coor_lg` decimal(24,16) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_datosgenerales_1bb8f392` (`content_type_id`),
  KEY `encuesta_datosgenerales_7d61c803` (`object_id`),
  KEY `encuesta_datosgenerales_7c401982` (`cooperativa_id`),
  KEY `encuesta_datosgenerales_62329ccf` (`comunidad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_datosgenerales`
--

LOCK TABLES `encuesta_datosgenerales` WRITE;
/*!40000 ALTER TABLE `encuesta_datosgenerales` DISABLE KEYS */;
INSERT INTO `encuesta_datosgenerales` VALUES (63,88,63,'Genara Pérez Osorio','',2,19,'Santos Rivera García','','El ojo de agua',24,NULL,NULL),(2,88,2,'José Andrés Palacios Hernández','',1,2,'María Margarita altamirano González','241-171072-0003F','Divino Niño',2,NULL,NULL),(3,88,3,'Apolonio de Jesús Rizo','441-060557-0000C',1,1,'Ana Azucena Figueroa Palacios','441-260770-0022Q','Los Placeres',3,NULL,NULL),(4,88,4,'Julio César Chavarría Cruz','441-120179-0014N',1,1,'','','Guayabal',3,NULL,NULL),(5,88,5,'Julio César Vanegas Osejo','441-180753-0003U',1,1,'Juana López Rayo','','Los Pinos',4,NULL,NULL),(6,88,6,'Baltazar Solorzano Osejo','441-060135-0003C',1,1,'Domitila Sánchez López','','El Cypre',5,NULL,NULL),(7,88,7,'José Luis Palacios','241-111058-0005B',1,1,'Francisca Lanzas Urbina','241-141075-0013Q','La Galaxia -Indirita ',3,NULL,NULL),(8,88,8,'Julio Cesar Chavarría Cantarero','441-190852-0010R',1,1,'Petrona Paula Cruz Martínez','441-290645-0011P','La Curva',3,NULL,NULL),(9,88,9,'Mercedes Mairena Zelaya','241-240950-0001G',1,3,'Juana Antonia Guzmán','','Santa Martha',6,NULL,NULL),(10,88,10,'Reynaldo Rivera Ramos','',1,4,'Marcia Suárez Martínez','','Las Vegas',7,NULL,NULL),(11,88,11,'Francisco Dávila Fuentes','165-031243-0000V',1,1,'Alejandra SOmoza López','442-120156-0002S','El Cacique',4,NULL,NULL),(12,88,12,'María Ignacia Rugama Flores','241-300760-00006C',2,1,'José Daniel Tórrez','165-210749-0002W','El Espejo',5,NULL,NULL),(13,88,13,'Sebastian Mairena ','243-200173-0001F',1,5,'Sarahí Pastran Orozco','441-010886-0002J','La Hermandad',8,NULL,NULL),(14,88,14,'Auxiliadora Mairena','243-030377-0001K',2,5,'','','El Jobo',9,NULL,NULL),(15,88,15,'Valentín Rodríguez','442-201269-0000J',1,7,'Ruth del Carmen Cantarero Arceda','442-160472-0001H','La Perla',10,NULL,NULL),(16,88,16,'Mayra del Carmen Gámez Hernández','161-160768-0009Y',2,8,'','','El Jardín',11,NULL,NULL),(17,88,17,'Ricardo José Castillo Weimer','442-110237-0001Y',1,9,'','','La Sombra',12,NULL,NULL),(18,88,18,'Vicenta de Jesús Sánchez Villagra','241-090471-006H',2,1,'Martín Blandón Flores','','La Flor',13,NULL,NULL),(19,88,19,'Julián Erasmo Castro Morales','441-08245-0007D',1,1,'Rosa Alicia Velásquez Velásquez','','',13,NULL,NULL),(20,88,20,'Esmerita Urbina Rayo','441-230948-0003V',2,10,'','','La Esperanza',14,NULL,NULL),(21,88,21,'José Francisco García','241-070274-0012F',1,1,'Filomena Sevilla López','','La Cuesta',1,NULL,NULL),(22,88,22,'Antolin García Polanco','241-240845-0002D',1,1,'Teresa Gutiérrez Morán','241-100152-0012A','San Ramón',3,NULL,NULL),(23,88,23,'David Valdivia','442-221268-0000W',NULL,1,'Enma del Socorro Alvarado','442-261073-0000M','El Carmen',3,NULL,NULL),(24,88,24,'Marcial García Gutiérrez','241-170471-0005Y',1,1,'Gladis María Gómez','441-051076-0014X','San Ramón',3,NULL,NULL),(25,88,25,'Ruperto Duarte','241-180454-0006U',1,1,'Ángela Rizo Castillo','241-010365-0015B','El Cairo',3,NULL,NULL),(26,88,26,'Pilar Pastora','447-121047-000K',2,1,'Perla del Carmen Cruz Salgado','441-230362-0005H','Buena Vista',15,NULL,NULL),(27,88,27,'Fausto de Jesús Manzanares ','451-191275-0000F',1,11,'Rita Elena Ortega','441-220579-0015M','Linda Vista',16,NULL,NULL),(28,88,28,'Seberiano Granados Hernández','454-151065-0002S',1,11,'Nila Aráuz Salgado ','441-170961-0007R','Linda Vista',16,NULL,NULL),(29,88,29,'Paulina Gámez Reyes','289-140161-0000G',2,11,'','','Fortuna',16,NULL,NULL),(30,88,30,'Candelario Díaz Hernández','',1,6,'Doribel Sanchez Ochoa','','',6,NULL,NULL),(31,88,31,'Róger Jacinto Granado','454-160862-0000V',1,11,'Miriam Martínez Zamora','454-160862-0001V','Los Laureles',16,NULL,NULL),(32,88,32,'Fabiana López Aráuz','442-180162-0001W',2,11,'','','El Progreso',16,NULL,NULL),(33,88,33,'Fermín Gutiérrez Hernández','',1,2,'María de Jesús Hernández Melgara','','El Bordito',2,NULL,NULL),(34,88,34,'José Andrés Palacio Hernández','',1,2,'María Margarita Altamirano Gonzálles','','Divino Niño',2,NULL,NULL),(35,88,35,'Róger Blandón Sáenz','441-161061-0000N',1,12,'María Concepción López','441-271264-0012W','El Consuelo',18,NULL,NULL),(36,88,36,'Juan Arceda Centeno','442-041267-0001L',1,4,'María Estela Herrera Acuña','442-200971-0001E','La Flor',19,NULL,NULL),(37,88,37,'Cresencio Hernández','441.110670-0014S',1,12,'Jazmina Rodríguez','','Las Vegas',18,NULL,NULL),(38,88,38,'Alvaro Meza Siles','241-150560-0013U',1,13,'Maria Teresa Lumbí Casco','','La Garnacha',21,NULL,NULL),(39,88,39,'Fernando Villareyna Sobalvarro','441-260561-0003F',1,3,'Amparo Martínez','','El Zafiro',20,NULL,NULL),(40,88,40,'Horacio Ruíz Cruz','441-210163-0002G',1,10,'María Antonia Cruz Romero','441-260658-0009J','Las Vegas',22,NULL,NULL),(41,88,41,'Janeth del Carmen Gutiérrez','441-281277-0001R',2,10,'Jairo Navarro Lnzas','','San José',23,NULL,NULL),(42,88,42,'Cándida Osorio Pérez','289-030758-0002P',2,17,'','','Fuente de Vida',24,NULL,NULL),(43,88,43,'Genaro Aráuz García','241-230960-0008H',1,18,'María Nicolás Urbina Rayo','442-110961-0001P','Las Vegas',22,NULL,NULL),(44,88,44,'María Nicolás Urbina Rayo','442-110961-0001D',2,10,'Genaro Aráuz García','241-230960-0008H','El Triunfo',3,NULL,NULL),(45,88,45,'Valentín López Rivera','241-110249-0003Q',1,13,'Isidora Romero Pastral','','San Luis ',25,NULL,NULL),(46,88,46,'María del Rosario Díaz Peralta','241-091074-0013N',2,13,'Juan de Jesús Torres','','Los Laureles',26,NULL,NULL),(47,88,47,'Ivett Aráuz','441-310770-0006J',2,3,'Alfredo Avilés Benavides','441-171157-0016L','Yanargus',28,NULL,NULL),(48,88,48,'Miguel Ángel Chavarría Montenegro','246-020178-0000L',1,13,'Anyn Maribel Meza','246-020579-0000Q','La Esperanza',29,NULL,NULL),(49,88,49,'Sixto Sáenz Chavarría','241-060859-0003P',2,13,'Martha Zelaya','','San Lorenzo',25,NULL,NULL),(51,88,51,'Magdaleno Avilés González','',1,13,'Carmensa Suazo Rayo','441-271161-0005Y','El Matasano',29,NULL,NULL),(52,88,52,'Richard Arauz Rivas','',1,3,'Melania Larios Pérez','','La Fortuna',30,NULL,NULL),(53,88,53,'VICTORIANO RIVAS ORTIZ','452-110644-0000K',1,3,'María Francisca García Blandón','441-020445-0000F','La Lucha',20,NULL,NULL),(54,88,54,'Andrés Páez Mairena','',1,3,'Maximialiana Morales','','La Chiripa',31,NULL,NULL),(55,88,55,'José Manuel Picado González','',1,3,'Zayra del Carmen López Jarquín','','Santa Martha',32,NULL,NULL),(56,88,56,'Benjamín Herrera Estrada','241-160466-0002V',1,3,'Juana Albarenoa Calderón','452-060759-0000Y','El Peten',31,NULL,NULL),(57,88,57,'Teresa de Jesús Martínez','452-151036-0000N',2,4,'Marcelino Jaime González Cruz','','La Esmeralda',33,NULL,NULL),(58,88,58,'SANTIAGO SÁNCHEZ','443-301257-0001P',1,12,'Olivia López','','Por si mismo',18,NULL,NULL),(59,88,59,'Julio Adán Urbina Palacios','',1,12,'Sara Hernandez Díaz','','Los Pinos',34,NULL,NULL),(60,88,60,'Anastacio Herrera Flores','',1,3,'','','Cinco Pinos',20,NULL,NULL),(62,88,62,'Juana Ramírez Pérez','D-000026546344',2,13,'Fermín Hernández López','443-280658-0002R','Fátima',25,NULL,NULL),(64,88,64,'Virgilio Rizo Castillo','241-120167-0007S',1,13,'Guadalupe Cano Martínez','241-131270-0002U','San Antonio',25,NULL,NULL),(65,88,65,'Medardo Atonio Mendoza','281-080663-0001G',1,17,'Julia Yadira Berríos Palma','286-130966-0004G','',24,NULL,NULL),(66,88,66,'Pedro Briones Picado','246-130552-0000G',1,13,'Modesta Talani González','246-110263-0000X','Providencia',29,NULL,NULL),(67,88,67,'Angela Herrera Flores','491-181065-0008E',2,3,'Ariel Ramón Vargas Aráuz','441-040767-0011W','Los Abandonos',27,NULL,NULL),(68,88,68,'José Ramón Medal Sotelo','441-130460-0007F',1,4,'Lucrecia Martínez González','165-200371-0003A','El Malinche',7,NULL,NULL),(69,88,69,'Ricardo Fonseca Gutiérrez','452-170264-0000N',1,4,'Juana Centeno Gonzáles','452-231062-0000P','Tierra Blanca',7,NULL,NULL),(70,88,70,'Francisco Herrera Mairena','441-040156-0005L',1,3,'María Luisa Moreno Martínez','452-1109641-0001W','',20,NULL,NULL),(71,88,71,'Leoncio Talavera','161-1212235-0001Q',1,3,'Bernarda Cerrato','452-110235-0003L','El Porvenir',20,NULL,NULL),(72,88,72,'Francisco Hernández','442-101060-0000Y',1,20,'María Leonor Peralta','161-180172-0008N','',35,NULL,NULL),(73,88,73,'Juana Díaz Hernández','442-171256-0001Y',2,21,'','','Silvio Mayorga',36,NULL,NULL),(74,88,74,'Gabino Sánchez S.','442-190241-0000T',1,22,'Teresa Gómez López','442-150947-0002A','',37,NULL,NULL),(75,88,75,'Miguel Angel Ramos','441-011060-0004Q',1,20,'María del Rosario Dávila Pineda','442-250968-0001G','Renacer',35,NULL,NULL),(76,88,76,'Faustina Díaz Hernández','442-140552-00008',2,21,'Nicolás Díz Hernández','442-110246-0000Y','',35,NULL,NULL),(77,88,77,'Alejandro Rafael Gonzáles','441-141050-0002V',1,22,'Sonia Picado','442-070670-0001M','',38,NULL,NULL),(78,88,78,'Alejandro Rafael Gonzáles','441-141050-0002V',1,22,'Sonia Picado','442-070670-0001M','',38,NULL,NULL),(79,88,79,'Emilia Ochoa Barrera','442-151153-0001E',2,22,'','','La Peña',37,NULL,NULL),(80,88,80,'EMELSIADES MESA RIZO','246-130875-0000B',1,13,'Verónica Hernández Ramos','246-100975-0000B','El Laberinto',29,NULL,NULL),(81,88,81,'Erick Pao','452-120472-0001X',1,4,'Alicia Ramos Sánchez','442-080880-0000L','Río de agua viva',17,NULL,NULL),(82,88,82,'Paula María Icabalzeta','442-030670-0002E',2,22,'Jairo Zamora Gómez','','Punta de Plancha y Las Pilitas',40,NULL,NULL),(83,88,83,'Esperanza de Jesús Jarquín Siles','241-071157-0004X',2,13,'José Ángel Aráuz','241-100859-0007C','Los Laureles',41,NULL,NULL),(84,88,84,'Celina del Socorro Jarquín Rodríguez','241-020234-0001A',2,13,'Bayardo Silva Salgado','','La Esperanza',41,NULL,NULL),(85,88,85,'José Luis Pérez','246-150368-0002N',1,13,'Lidia Ramona García','','La Potra',26,NULL,NULL),(86,88,86,'PASTORA AGUILAR PASTRAN','246-080866-0000P',2,13,'','','San Ramón',26,NULL,NULL),(87,88,87,'Celina Mendiola Jarquín','441-010150-0010Y',2,13,'','','Las Piedrecitas',26,NULL,NULL),(88,88,88,'Dionisio Espino Hernández','246-091058-0000X',1,13,'Esmeralda Jarquín','246-060662-0000J','San Luis',42,NULL,NULL),(89,88,89,'Feliciana Matute Talavera','161-070250-0001H',2,13,'','','Quinto Patio',26,NULL,NULL),(90,88,90,'José Miguel Meza Martínez','246-301076-0001W',1,13,'Bertina Rivera Blandón','241-170981-0007E','Buenos Aires',29,NULL,NULL),(91,88,91,'Rigoberto Meza Cruz','241-011075-0007',1,13,'Sixta Marbely Morazán Gonzáles','246-070878-0001X','La Suerte',29,NULL,NULL),(92,88,92,'Andrés Porfirio Gurdián Morán','246-220959-0000P',1,13,'Mireya Zeledón Centeno','','El Manantial',43,NULL,NULL),(93,88,93,'Reyna Vílchez Blandón','165-080752-0000A',2,13,'','','Gexemaní',44,NULL,NULL),(94,88,94,'María Vallecillo','442-230244-0000L',NULL,22,'','','',39,NULL,NULL);
/*!40000 ALTER TABLE `encuesta_datosgenerales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_datosgenerales_certificacion`
--

DROP TABLE IF EXISTS `encuesta_datosgenerales_certificacion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_datosgenerales_certificacion` (
  `id` int(11) NOT NULL auto_increment,
  `datosgenerales_id` int(11) NOT NULL,
  `certificacion_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `datosgenerales_id` (`datosgenerales_id`,`certificacion_id`),
  KEY `encuesta_datosgenerales_certificacion_1c95f2a3` (`datosgenerales_id`),
  KEY `encuesta_datosgenerales_certificacion_7d07cab6` (`certificacion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_datosgenerales_certificacion`
--

LOCK TABLES `encuesta_datosgenerales_certificacion` WRITE;
/*!40000 ALTER TABLE `encuesta_datosgenerales_certificacion` DISABLE KEYS */;
INSERT INTO `encuesta_datosgenerales_certificacion` VALUES (26,3,2),(2,4,2),(3,5,2),(4,6,2),(5,7,2),(6,8,2),(7,9,4),(8,10,3),(9,11,2),(10,12,2),(11,15,4),(12,16,4),(13,17,4),(14,18,2),(15,19,2),(16,20,4),(17,21,2),(27,22,2),(19,23,2),(20,24,2),(28,25,2),(22,27,4),(23,28,1),(24,28,4),(25,29,1),(29,31,4),(30,32,1),(53,33,4),(32,34,4),(33,35,4),(34,36,4),(35,37,4),(36,39,4),(37,40,4),(38,41,4),(39,44,4),(40,45,4),(41,46,4),(42,47,4),(43,48,3),(44,49,4),(46,51,4),(47,52,4),(48,54,1),(49,56,4),(50,57,1),(51,58,4),(52,59,4),(54,62,4),(55,63,4),(56,68,4),(57,69,4),(58,72,4),(59,73,4),(60,74,4),(61,75,4),(62,77,4),(63,78,4),(64,80,3),(65,81,4),(66,83,4),(67,84,4),(68,85,4),(69,87,4),(70,88,3),(71,89,4),(72,90,3),(73,91,3),(74,92,4),(75,93,4),(76,94,4);
/*!40000 ALTER TABLE `encuesta_datosgenerales_certificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_datosgenerales_tecnologia`
--

DROP TABLE IF EXISTS `encuesta_datosgenerales_tecnologia`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_datosgenerales_tecnologia` (
  `id` int(11) NOT NULL auto_increment,
  `datosgenerales_id` int(11) NOT NULL,
  `tecnologia_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `datosgenerales_id` (`datosgenerales_id`,`tecnologia_id`),
  KEY `encuesta_datosgenerales_tecnologia_1c95f2a3` (`datosgenerales_id`),
  KEY `encuesta_datosgenerales_tecnologia_1fb09b8d` (`tecnologia_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_datosgenerales_tecnologia`
--

LOCK TABLES `encuesta_datosgenerales_tecnologia` WRITE;
/*!40000 ALTER TABLE `encuesta_datosgenerales_tecnologia` DISABLE KEYS */;
INSERT INTO `encuesta_datosgenerales_tecnologia` VALUES (64,63,3),(30,3,3),(3,4,3),(4,5,3),(5,6,3),(6,7,3),(7,8,3),(8,9,3),(9,10,3),(10,11,3),(11,12,3),(12,13,3),(13,15,3),(14,16,3),(15,17,3),(16,18,4),(17,19,3),(18,20,3),(19,21,3),(31,22,3),(21,23,3),(22,24,3),(32,25,3),(24,27,3),(25,28,3),(26,29,3),(29,30,3),(33,31,3),(34,32,3),(62,33,3),(36,34,3),(37,35,3),(38,36,3),(39,37,3),(40,38,3),(41,39,3),(42,40,3),(43,41,3),(44,42,3),(45,44,3),(46,45,3),(47,46,3),(48,47,3),(49,48,3),(50,49,3),(52,51,3),(53,52,3),(54,54,3),(55,55,3),(56,56,3),(57,57,3),(58,58,3),(59,59,3),(61,60,3),(63,62,3),(65,64,3),(66,66,4),(67,67,3),(68,68,3),(69,69,3),(70,70,3),(71,71,3),(72,72,4),(73,73,4),(74,74,3),(75,75,3),(76,76,3),(77,77,4),(78,78,4),(79,79,3),(80,80,3),(81,81,3),(82,82,3),(83,83,3),(84,84,3),(85,85,3),(86,86,3),(87,87,3),(88,88,3),(89,89,3),(90,90,3),(91,91,3),(92,92,3),(93,93,3),(94,94,3);
/*!40000 ALTER TABLE `encuesta_datosgenerales_tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_destinar`
--

DROP TABLE IF EXISTS `encuesta_destinar`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_destinar` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `servicios` int(11) default NULL,
  `cuanto` decimal(10,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_destinar_1bb8f392` (`content_type_id`),
  KEY `encuesta_destinar_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=419 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_destinar`
--

LOCK TABLES `encuesta_destinar` WRITE;
/*!40000 ALTER TABLE `encuesta_destinar` DISABLE KEYS */;
INSERT INTO `encuesta_destinar` VALUES (288,88,63,4,'10.00'),(287,88,63,3,'20.00'),(286,88,63,2,'10.00'),(285,88,63,1,'25.00'),(5,88,2,1,'30.00'),(6,88,2,2,'45.00'),(7,88,2,5,'15.00'),(8,88,2,6,'10.00'),(9,88,3,1,'40.00'),(10,88,3,2,'40.00'),(11,88,3,3,'5.00'),(12,88,3,5,'10.00'),(13,88,3,6,'5.00'),(14,88,4,1,'30.00'),(15,88,4,2,'40.00'),(16,88,4,3,'10.00'),(17,88,4,5,'10.00'),(18,88,4,6,'10.00'),(19,88,5,1,'25.00'),(20,88,5,2,'60.00'),(21,88,5,5,'15.00'),(22,88,6,1,'55.00'),(23,88,6,2,'40.00'),(24,88,6,6,'5.00'),(25,88,7,1,'35.00'),(26,88,7,2,'40.00'),(27,88,7,3,'10.00'),(28,88,7,4,'5.00'),(29,88,7,5,'5.00'),(30,88,7,6,'5.00'),(31,88,8,1,'20.00'),(32,88,8,2,'40.00'),(33,88,8,5,'20.00'),(34,88,8,6,'20.00'),(35,88,9,1,'30.00'),(36,88,9,2,'50.00'),(37,88,9,3,'17.00'),(38,88,9,5,'1.00'),(39,88,9,6,'2.00'),(40,88,10,1,'30.00'),(41,88,10,2,'45.00'),(42,88,10,3,'15.00'),(43,88,10,5,'5.00'),(44,88,10,6,'5.00'),(45,88,11,2,'70.00'),(46,88,11,1,'10.00'),(47,88,11,5,'10.00'),(48,88,11,6,'10.00'),(49,88,12,1,'10.00'),(50,88,12,2,'70.00'),(51,88,12,3,'10.00'),(52,88,12,5,'5.00'),(53,88,12,NULL,'5.00'),(54,88,13,1,'13.00'),(55,88,13,2,'80.00'),(56,88,13,4,'5.00'),(57,88,13,5,'1.00'),(58,88,13,6,'1.00'),(59,88,14,1,'60.00'),(60,88,14,4,'100.00'),(61,88,14,6,'5.00'),(62,88,15,1,'1.00'),(63,88,15,2,'53.00'),(64,88,15,3,'10.00'),(65,88,15,4,'1.00'),(66,88,15,5,'1.00'),(67,88,15,6,'1.00'),(68,88,16,1,'30.00'),(69,88,16,2,'50.00'),(70,88,16,3,'10.00'),(71,88,16,5,'10.00'),(72,88,16,6,'10.00'),(73,88,17,1,'30.00'),(74,88,17,2,'60.00'),(75,88,17,4,'5.00'),(76,88,17,6,'5.00'),(77,88,18,1,'60.00'),(78,88,18,2,'30.00'),(79,88,18,5,'5.00'),(80,88,18,6,'5.00'),(81,88,19,1,'45.00'),(82,88,19,2,'45.00'),(83,88,19,5,'5.00'),(84,88,19,6,'5.00'),(85,88,20,1,'40.00'),(86,88,20,2,'50.00'),(87,88,20,5,'5.00'),(88,88,20,6,'5.00'),(89,88,21,1,'55.00'),(90,88,21,2,'40.00'),(91,88,21,5,'2.00'),(92,88,21,6,'3.00'),(93,88,22,1,'60.00'),(94,88,22,2,'30.00'),(95,88,22,4,'5.00'),(96,88,22,5,'2.00'),(97,88,22,6,'3.00'),(98,88,23,1,'17.00'),(99,88,23,2,'75.00'),(100,88,23,5,'4.00'),(101,88,23,6,'4.00'),(102,88,24,1,'60.00'),(103,88,24,2,'30.00'),(104,88,24,3,'5.00'),(105,88,24,5,'2.00'),(106,88,24,6,'3.00'),(107,88,25,1,'50.00'),(108,88,25,2,'40.00'),(109,88,25,5,'5.00'),(110,88,25,6,'5.00'),(111,88,26,1,'15.00'),(112,88,26,2,'70.00'),(113,88,26,3,'10.00'),(114,88,26,5,'2.00'),(115,88,26,6,'3.00'),(116,88,27,1,'40.00'),(117,88,27,2,'30.00'),(118,88,27,3,'20.00'),(119,88,27,5,'5.00'),(120,88,27,6,'5.00'),(121,88,28,1,'40.00'),(122,88,28,2,'35.00'),(123,88,28,3,'15.00'),(124,88,28,5,'5.00'),(125,88,28,6,'5.00'),(126,88,29,1,'40.00'),(127,88,29,2,'30.00'),(128,88,29,4,'10.00'),(129,88,29,5,'10.00'),(130,88,29,6,'10.00'),(131,88,30,1,'70.00'),(132,88,30,2,'10.00'),(133,88,30,3,'20.00'),(134,88,31,1,'40.00'),(135,88,31,2,'40.00'),(136,88,31,3,'15.00'),(137,88,31,5,'2.50'),(138,88,31,6,'2.50'),(139,88,32,1,'50.00'),(140,88,32,2,'30.00'),(141,88,32,5,'10.00'),(142,88,32,6,'10.00'),(143,88,33,1,'25.00'),(144,88,33,2,'65.00'),(145,88,33,5,'5.00'),(146,88,33,6,'5.00'),(147,88,34,1,'30.00'),(148,88,34,2,'45.00'),(149,88,34,5,'15.00'),(150,88,34,6,'10.00'),(151,88,35,1,'30.00'),(152,88,35,2,'40.00'),(153,88,35,3,'20.00'),(154,88,35,4,'2.00'),(155,88,35,5,'4.00'),(156,88,35,6,'4.00'),(157,88,36,1,'40.00'),(158,88,36,2,'30.00'),(159,88,36,3,'15.00'),(160,88,36,4,'5.00'),(161,88,36,5,'5.00'),(162,88,36,6,'5.00'),(163,88,37,1,'40.00'),(164,88,37,2,'40.00'),(165,88,37,3,'10.00'),(166,88,37,4,'4.00'),(167,88,37,5,'4.00'),(168,88,37,6,'2.00'),(169,88,39,1,'60.00'),(170,88,39,2,'25.00'),(171,88,39,3,'7.00'),(172,88,39,4,'5.00'),(173,88,39,5,'3.00'),(174,88,38,1,'40.00'),(175,88,38,2,'10.00'),(176,88,38,3,'40.00'),(177,88,38,5,'5.00'),(178,88,38,6,'5.00'),(179,88,40,1,'15.00'),(180,88,40,2,'60.00'),(181,88,40,3,'15.00'),(182,88,40,4,'3.00'),(183,88,40,5,'3.00'),(184,88,40,6,'4.00'),(185,88,41,1,'60.00'),(186,88,41,2,'30.00'),(187,88,41,5,'5.00'),(188,88,41,6,'5.00'),(189,88,42,1,'50.00'),(190,88,42,2,'5.00'),(191,88,42,3,'30.00'),(192,88,42,4,'5.00'),(193,88,42,5,'5.00'),(194,88,42,6,'5.00'),(195,88,43,1,'90.00'),(196,88,43,5,'5.00'),(197,88,43,6,'5.00'),(198,88,44,1,'60.00'),(199,88,44,2,'30.00'),(200,88,44,5,'0.50'),(201,88,44,6,'0.50'),(202,88,45,1,'75.00'),(203,88,45,2,'20.00'),(204,88,45,3,'1.00'),(205,88,45,4,'1.00'),(206,88,45,5,'2.00'),(207,88,45,6,'1.00'),(208,88,46,1,'40.00'),(209,88,46,2,'25.00'),(210,88,46,3,'25.00'),(211,88,46,4,'5.00'),(212,88,46,5,'5.00'),(213,88,47,1,'30.00'),(214,88,47,2,'10.00'),(215,88,47,3,'30.00'),(216,88,47,4,'5.00'),(217,88,47,5,'20.00'),(218,88,47,6,'5.00'),(219,88,48,1,'50.00'),(220,88,48,2,'35.00'),(221,88,48,3,'5.00'),(222,88,48,5,'5.00'),(223,88,48,6,'5.00'),(224,88,51,1,'50.00'),(225,88,51,2,'30.00'),(226,88,51,3,'10.00'),(227,88,51,4,'5.00'),(228,88,51,6,'5.00'),(229,88,52,1,'25.00'),(230,88,52,2,'50.00'),(231,88,52,3,'10.00'),(232,88,52,4,'2.00'),(233,88,52,5,'5.00'),(234,88,52,6,'8.00'),(235,88,54,1,'40.00'),(236,88,54,2,'30.00'),(237,88,54,3,'15.00'),(238,88,54,4,'15.00'),(239,88,54,5,'5.00'),(240,88,54,6,'5.00'),(241,88,53,1,'40.00'),(242,88,53,2,'25.00'),(243,88,53,3,'25.00'),(244,88,53,4,'5.00'),(245,88,53,6,'5.00'),(246,88,56,1,'20.00'),(247,88,56,2,'30.00'),(248,88,56,3,'30.00'),(249,88,56,4,'5.00'),(250,88,56,5,'5.00'),(251,88,56,6,'10.00'),(252,88,55,1,'33.00'),(253,88,55,2,'16.75'),(254,88,55,3,'16.75'),(255,88,55,4,'16.75'),(256,88,55,5,'8.30'),(257,88,55,6,'8.30'),(258,88,57,1,'50.00'),(259,88,57,2,'25.00'),(260,88,57,4,'10.00'),(261,88,57,5,'5.00'),(262,88,57,6,'10.00'),(263,88,58,1,'30.00'),(264,88,58,2,'35.00'),(265,88,58,3,'10.00'),(266,88,58,4,'5.00'),(267,88,58,5,'5.00'),(268,88,58,6,'5.00'),(269,88,59,1,'30.00'),(270,88,59,2,'40.00'),(271,88,59,3,'10.00'),(272,88,59,4,'5.00'),(273,88,59,5,'10.00'),(274,88,59,6,'5.00'),(275,88,60,1,'25.00'),(276,88,60,2,'25.00'),(277,88,60,3,'25.00'),(278,88,60,4,'5.00'),(279,88,60,5,'10.00'),(280,88,60,6,'10.00'),(281,88,62,1,'70.00'),(282,88,62,2,'10.00'),(283,88,62,3,'10.00'),(284,88,62,4,'10.00'),(289,88,63,5,'10.00'),(290,88,63,6,'25.00'),(291,88,64,1,'40.00'),(292,88,64,2,'20.00'),(293,88,64,3,'5.00'),(294,88,64,4,'15.00'),(295,88,64,5,'15.00'),(296,88,64,6,'5.00'),(297,88,65,1,'95.00'),(298,88,65,3,'2.00'),(299,88,65,4,'2.00'),(300,88,65,5,'1.00'),(301,88,66,1,'60.00'),(302,88,66,2,'20.00'),(303,88,66,4,'10.00'),(304,88,66,5,'5.00'),(305,88,66,6,'5.00'),(306,88,67,1,'75.00'),(307,88,67,2,'15.00'),(308,88,67,3,'5.00'),(309,88,67,4,'5.00'),(310,88,68,1,'60.00'),(311,88,68,2,'15.00'),(312,88,68,3,'10.00'),(313,88,68,4,'5.00'),(314,88,68,5,'5.00'),(315,88,68,6,'5.00'),(316,88,69,1,'60.00'),(317,88,69,2,'15.00'),(318,88,69,3,'51.00'),(319,88,69,4,'10.00'),(320,88,69,4,'5.00'),(321,88,69,6,'5.00'),(322,88,70,1,'60.00'),(323,88,70,3,'25.00'),(324,88,70,4,'5.00'),(325,88,70,5,'10.00'),(326,88,72,1,'80.00'),(327,88,72,2,'10.00'),(328,88,72,3,'10.00'),(329,88,71,1,'50.00'),(330,88,71,2,'25.00'),(331,88,71,3,'10.00'),(332,88,71,4,'10.00'),(333,88,71,6,'5.00'),(334,88,74,1,'75.00'),(335,88,74,2,'20.00'),(336,88,74,6,'5.00'),(337,88,75,1,'50.00'),(338,88,75,2,'30.00'),(339,88,75,3,'10.00'),(340,88,75,4,'5.00'),(341,88,75,6,'5.00'),(342,88,77,1,'70.00'),(343,88,77,2,'10.00'),(344,88,77,3,'10.00'),(345,88,77,5,'5.00'),(346,88,77,6,'5.00'),(347,88,78,1,'70.00'),(348,88,78,2,'10.00'),(349,88,78,3,'10.00'),(350,88,78,5,'5.00'),(351,88,78,6,'5.00'),(352,88,76,1,'65.00'),(353,88,76,2,'25.00'),(354,88,76,3,'5.00'),(355,88,76,6,'5.00'),(356,88,79,1,'60.00'),(357,88,79,2,'20.00'),(358,88,79,3,'10.00'),(359,88,79,4,'5.00'),(360,88,79,6,'5.00'),(361,88,80,1,'23.00'),(362,88,80,2,'50.00'),(363,88,80,6,'27.00'),(364,88,81,1,'40.00'),(365,88,81,2,'58.00'),(366,88,81,6,'2.00'),(367,88,82,1,'60.00'),(368,88,82,2,'25.00'),(369,88,82,3,'5.00'),(370,88,82,4,'5.00'),(371,88,82,6,'5.00'),(372,88,83,1,'20.00'),(373,88,83,2,'30.00'),(374,88,83,3,'20.00'),(375,88,83,6,'3.00'),(376,88,84,1,'30.00'),(377,88,84,2,'40.00'),(378,88,84,3,'16.00'),(379,88,84,4,'4.00'),(380,88,84,6,'10.00'),(381,88,85,1,'50.00'),(382,88,85,2,'29.00'),(383,88,85,3,'10.00'),(384,88,85,4,'3.00'),(385,88,85,6,'8.00'),(386,88,86,1,'25.00'),(387,88,86,2,'10.00'),(388,88,86,6,'3.00'),(389,88,88,1,'40.00'),(390,88,88,2,'40.00'),(391,88,88,4,'1.00'),(392,88,88,5,'3.00'),(393,88,88,6,'5.00'),(394,88,89,1,'20.00'),(395,88,89,2,'10.00'),(396,88,89,3,'20.00'),(397,88,89,4,'1.00'),(398,88,89,5,'3.00'),(399,88,90,1,'40.00'),(400,88,90,2,'40.00'),(401,88,90,3,'10.00'),(402,88,90,4,'5.00'),(403,88,90,6,'5.00'),(404,88,91,1,'30.00'),(405,88,91,2,'70.00'),(406,88,92,1,'60.00'),(407,88,92,2,'30.00'),(408,88,92,3,'5.00'),(409,88,92,4,'3.00'),(410,88,92,5,'2.00'),(411,88,93,1,'50.00'),(412,88,93,2,'30.00'),(413,88,93,3,'5.00'),(414,88,93,4,'5.00'),(415,88,93,5,'5.00'),(416,88,93,6,'5.00'),(417,88,94,1,'80.00'),(418,88,94,2,'20.00');
/*!40000 ALTER TABLE `encuesta_destinar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_detallecasa`
--

DROP TABLE IF EXISTS `encuesta_detallecasa`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_detallecasa` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `tamano` int(11) default NULL,
  `ambientes` int(11) default NULL,
  `letrina` int(11) default NULL,
  `lavadero` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_detallecasa_1bb8f392` (`content_type_id`),
  KEY `encuesta_detallecasa_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_detallecasa`
--

LOCK TABLES `encuesta_detallecasa` WRITE;
/*!40000 ALTER TABLE `encuesta_detallecasa` DISABLE KEYS */;
INSERT INTO `encuesta_detallecasa` VALUES (59,88,63,42,3,1,1),(2,88,2,40,4,1,1),(3,88,3,48,2,1,2),(4,88,4,24,1,1,2),(5,88,5,7,4,1,2),(6,88,6,30,3,1,2),(7,88,7,50,3,2,2),(8,88,8,30,2,1,1),(9,88,9,80,5,1,2),(10,88,10,64,3,1,1),(11,88,11,120,5,1,1),(12,88,12,72,1,1,1),(13,88,13,42,4,1,1),(14,88,14,NULL,4,1,1),(15,88,15,63,NULL,1,1),(16,88,16,150,4,1,1),(17,88,17,0,4,1,1),(18,88,18,70,5,1,1),(19,88,19,112,2,1,1),(20,88,20,130,3,1,1),(21,88,21,49,3,1,1),(22,88,22,66,4,1,1),(23,88,23,48,5,1,1),(24,88,25,40,3,1,1),(25,88,26,72,3,1,1),(26,88,27,36,2,1,1),(27,88,28,44,3,1,1),(28,88,29,56,3,1,1),(29,88,30,42,3,2,2),(30,88,31,54,3,1,1),(31,88,32,49,3,1,1),(32,88,33,42,3,1,1),(33,88,34,40,4,1,1),(34,88,35,56,3,1,1),(35,88,36,78,5,1,1),(36,88,37,16,3,1,1),(37,88,39,9,5,1,1),(38,88,40,56,4,1,1),(39,88,41,49,3,1,1),(40,88,38,102,5,1,1),(41,88,42,50,4,1,1),(42,88,43,49,4,1,2),(43,88,44,36,3,2,2),(44,88,45,6,2,2,2),(45,88,46,105,5,1,1),(46,88,47,80,5,1,1),(47,88,48,96,5,1,1),(48,88,51,77,5,1,1),(49,88,52,120,5,1,1),(50,88,54,108,5,1,1),(51,88,53,64,4,1,1),(52,88,56,60,5,1,2),(53,88,55,48,4,1,1),(54,88,57,52,4,1,1),(55,88,58,88,5,1,1),(56,88,59,50,4,1,1),(57,88,60,25,3,1,1),(58,88,62,48,5,2,1),(60,88,64,10,5,1,1),(61,88,65,42,NULL,1,1),(62,88,66,129,5,1,1),(63,88,67,13,5,2,1),(64,88,68,46,4,1,1),(65,88,69,35,2,1,1),(66,88,70,70,4,1,1),(67,88,72,80,NULL,1,2),(68,88,71,20,4,2,1),(69,88,73,36,NULL,2,2),(70,88,74,24,4,1,2),(71,88,75,99,4,1,2),(72,88,77,28,NULL,1,1),(73,88,78,28,NULL,1,1),(74,88,76,36,4,1,1),(75,88,79,8,4,1,2),(76,88,80,72,5,1,1),(77,88,81,NULL,4,NULL,NULL),(78,88,82,64,4,1,2),(79,88,83,NULL,5,1,1),(80,88,84,56,4,1,2),(81,88,85,NULL,5,1,1),(82,88,86,24,2,1,2),(83,88,88,NULL,5,1,1),(84,88,89,NULL,4,1,2),(85,88,90,NULL,4,1,1),(86,88,91,NULL,4,NULL,NULL),(87,88,92,76,5,NULL,NULL),(88,88,93,170,5,1,1),(89,88,94,42,4,1,2);
/*!40000 ALTER TABLE `encuesta_detallecasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_dondeahorro`
--

DROP TABLE IF EXISTS `encuesta_dondeahorro`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_dondeahorro` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_educacionjovenes` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `persona` int(11) NOT NULL,
  `n_total` int(11) default NULL,
  `no_leer` int(11) default NULL,
  `pri_incompleta` int(11) default NULL,
  `pri_completa` int(11) default NULL,
  `secu_incompleta` int(11) default NULL,
  `secu_completa` int(11) default NULL,
  `tecnico` int(11) default NULL,
  `actualmente` int(11) default NULL,
  `beca` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_educacionjovenes_1bb8f392` (`content_type_id`),
  KEY `encuesta_educacionjovenes_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_educacionjovenes`
--

LOCK TABLES `encuesta_educacionjovenes` WRITE;
/*!40000 ALTER TABLE `encuesta_educacionjovenes` DISABLE KEYS */;
INSERT INTO `encuesta_educacionjovenes` VALUES (193,88,63,1,2,1,NULL,NULL,NULL,NULL,1,NULL,NULL),(192,88,62,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(191,88,62,2,3,NULL,2,NULL,1,NULL,NULL,NULL,NULL),(190,88,62,1,4,NULL,1,1,2,NULL,NULL,NULL,NULL),(5,88,2,4,2,0,2,0,0,0,0,0,0),(6,88,3,1,5,0,1,2,2,0,0,0,0),(7,88,3,2,2,0,1,0,0,1,0,0,0),(8,88,3,3,1,0,1,0,0,0,0,0,0),(9,88,3,4,1,0,0,0,1,0,0,0,0),(10,88,4,1,1,0,0,0,0,1,0,0,0),(11,88,4,2,1,0,0,0,0,1,0,0,0),(12,88,4,3,2,0,0,2,0,0,0,0,0),(13,88,4,5,2,0,2,0,0,0,0,0,0),(14,88,5,1,2,1,1,0,0,0,0,0,0),(15,88,5,2,2,1,0,1,0,0,0,0,0),(16,88,5,4,2,1,0,1,0,0,0,0,0),(17,88,5,5,3,2,1,0,0,0,0,0,0),(18,88,5,6,1,1,0,0,0,0,0,0,0),(19,88,6,1,4,2,1,1,0,0,0,0,0),(20,88,6,2,5,2,1,1,0,0,0,0,0),(21,88,6,3,1,0,1,0,0,0,0,0,0),(22,88,6,5,1,1,0,0,0,0,0,0,0),(23,88,7,1,2,0,0,0,1,0,1,0,0),(24,88,7,2,3,0,0,0,1,0,1,1,0),(25,88,8,1,5,0,2,0,0,3,0,0,0),(26,88,8,2,5,0,4,0,0,1,0,0,0),(27,88,8,3,4,0,4,0,0,0,0,0,0),(28,88,8,4,2,0,2,0,0,0,0,0,0),(29,88,8,6,1,1,0,0,0,0,0,0,0),(30,88,9,1,4,0,0,0,2,0,2,0,0),(31,88,9,2,2,0,0,0,0,2,0,0,0),(32,88,9,4,1,0,0,1,0,0,0,0,0),(33,88,9,5,1,1,0,0,0,0,0,0,0),(34,88,10,1,1,0,0,0,0,0,0,0,1),(35,88,10,2,1,0,0,0,0,1,0,0,0),(36,88,10,4,1,0,1,0,0,0,0,0,0),(37,88,11,1,4,0,2,0,2,0,0,0,0),(38,88,11,2,3,0,0,0,3,0,0,0,0),(39,88,11,4,5,0,5,0,0,0,0,0,0),(40,88,11,5,1,1,0,0,0,0,0,0,0),(41,88,11,6,2,2,0,0,0,0,0,0,0),(42,88,12,1,2,0,1,0,0,1,0,0,0),(43,88,12,2,3,1,0,0,1,1,0,0,0),(44,88,12,5,2,2,0,0,0,0,0,0,0),(45,88,13,1,2,1,0,0,0,0,1,0,0),(46,88,13,2,2,1,0,0,0,1,0,0,0),(47,88,13,5,1,10,0,0,0,0,0,0,0),(48,88,13,6,2,2,0,0,0,0,0,0,0),(49,88,14,2,1,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(50,88,14,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,88,15,1,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(52,88,15,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(53,88,15,3,2,NULL,NULL,1,1,NULL,NULL,NULL,NULL),(54,88,15,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(55,88,16,1,4,NULL,NULL,NULL,2,1,1,NULL,NULL),(56,88,16,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(57,88,17,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(58,88,18,1,3,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(59,88,18,2,3,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(60,88,18,3,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,88,19,1,2,NULL,1,1,NULL,NULL,NULL,NULL,NULL),(62,88,19,2,2,NULL,1,NULL,1,NULL,NULL,NULL,NULL),(63,88,19,5,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(64,88,20,1,4,NULL,2,2,NULL,NULL,NULL,NULL,NULL),(65,88,20,2,5,1,NULL,4,NULL,NULL,NULL,NULL,NULL),(66,88,20,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(67,88,20,6,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(68,88,21,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,88,21,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(70,88,21,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,88,21,6,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(72,88,22,1,3,1,1,1,NULL,NULL,NULL,NULL,NULL),(73,88,22,2,3,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(74,88,22,3,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(75,88,22,3,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(76,88,22,5,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,88,23,1,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(78,88,23,2,3,1,1,NULL,NULL,1,NULL,NULL,NULL),(79,88,23,3,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(80,88,23,6,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,88,24,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(82,88,24,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(83,88,24,4,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(84,88,25,1,3,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(85,88,25,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(86,88,25,4,2,NULL,1,1,NULL,NULL,NULL,NULL,NULL),(87,88,27,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(88,88,27,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(89,88,27,3,1,NULL,NULL,0,1,NULL,NULL,NULL,NULL),(90,88,27,6,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,88,28,1,4,1,1,2,NULL,NULL,NULL,NULL,NULL),(92,88,28,2,3,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(93,88,28,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,88,28,6,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,88,29,1,4,1,NULL,NULL,NULL,2,1,NULL,NULL),(96,88,29,2,4,NULL,1,NULL,3,NULL,NULL,NULL,NULL),(97,88,30,1,3,1,0,0,0,2,0,0,0),(98,88,30,2,3,0,0,1,0,2,0,0,0),(99,88,30,3,0,0,0,0,1,0,0,0,0),(100,88,29,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(101,88,29,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,88,19,3,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(103,88,27,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(104,88,31,1,2,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL),(105,88,31,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(106,88,31,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(107,88,32,1,6,NULL,1,NULL,4,1,NULL,NULL,NULL),(108,88,32,2,33,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL),(109,88,32,3,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(110,88,32,4,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,88,26,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(112,88,26,2,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(113,88,26,3,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(114,88,26,4,2,NULL,1,1,NULL,NULL,NULL,NULL,NULL),(115,88,33,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(116,88,33,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(117,88,33,4,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(118,88,33,6,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,88,34,3,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(120,88,35,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(121,88,35,2,3,NULL,NULL,1,NULL,2,NULL,NULL,NULL),(122,88,35,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(123,88,36,1,5,NULL,4,NULL,1,NULL,NULL,NULL,NULL),(124,88,36,2,2,NULL,1,NULL,1,NULL,NULL,NULL,NULL),(125,88,36,3,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(126,88,36,5,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(127,88,37,1,3,NULL,1,1,NULL,1,NULL,NULL,NULL),(128,88,37,2,3,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(129,88,39,1,3,NULL,2,1,NULL,NULL,NULL,NULL,NULL),(130,88,39,2,4,NULL,1,1,1,1,NULL,NULL,NULL),(131,88,39,4,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(132,88,40,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(133,88,40,2,3,NULL,1,NULL,NULL,21,NULL,NULL,NULL),(134,88,40,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(135,88,40,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,88,40,6,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,88,41,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(138,88,41,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(139,88,41,4,3,NULL,NULL,2,1,NULL,NULL,NULL,NULL),(140,88,38,1,3,0,2,0,1,0,0,0,0),(141,88,38,2,2,1,0,0,0,0,0,1,0),(142,88,42,1,1,0,0,0,0,1,0,0,0),(143,88,42,2,3,0,3,0,0,0,0,0,0),(144,88,42,3,1,0,0,0,1,0,0,0,0),(145,88,42,6,1,1,0,0,0,0,0,0,0),(146,88,43,1,3,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(147,88,43,2,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(148,88,43,4,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(149,88,44,1,2,NULL,1,NULL,NULL,NULL,1,NULL,NULL),(150,88,44,2,2,NULL,1,1,NULL,NULL,NULL,NULL,NULL),(151,88,44,4,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(152,88,45,1,7,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL),(153,88,45,2,6,1,5,NULL,NULL,NULL,NULL,NULL,NULL),(154,88,45,3,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(155,88,45,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(156,88,46,1,3,NULL,1,NULL,NULL,NULL,NULL,2,NULL),(157,88,46,2,2,NULL,NULL,NULL,NULL,1,NULL,NULL,1),(158,88,46,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(159,88,47,1,4,NULL,NULL,1,NULL,NULL,1,2,NULL),(160,88,47,2,2,NULL,NULL,NULL,1,NULL,NULL,1,NULL),(161,88,48,1,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(162,88,48,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(163,88,48,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(164,88,48,4,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(165,88,48,5,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(166,88,51,1,3,NULL,1,NULL,NULL,NULL,NULL,2,NULL),(167,88,51,2,3,1,NULL,2,NULL,NULL,NULL,NULL,NULL),(168,88,51,4,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(169,88,52,1,2,NULL,1,NULL,1,NULL,NULL,NULL,NULL),(170,88,52,2,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(171,88,52,3,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(172,88,54,1,4,NULL,3,NULL,1,NULL,NULL,NULL,NULL),(173,88,54,3,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(174,88,54,5,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,88,53,1,10,0,8,0,0,0,0,2,0),(176,88,53,2,4,0,3,1,0,0,0,0,0),(177,88,55,1,1,0,0,0,1,0,0,0,0),(178,88,55,2,3,0,0,1,2,0,0,0,0),(179,88,55,5,1,1,0,0,0,0,0,0,0),(180,88,55,6,1,1,0,0,0,0,0,0,0),(181,88,57,1,3,NULL,1,NULL,NULL,NULL,2,NULL,NULL),(182,88,57,2,2,1,NULL,NULL,1,NULL,NULL,NULL,NULL),(183,88,58,1,2,0,0,1,1,0,0,0,0),(184,88,58,2,3,0,1,2,0,0,0,0,0),(185,88,59,1,4,NULL,NULL,NULL,1,NULL,3,NULL,NULL),(186,88,59,2,2,NULL,NULL,NULL,1,NULL,1,NULL,NULL),(187,88,60,1,2,0,1,1,0,0,0,0,0),(188,88,60,2,2,0,2,0,0,0,0,0,0),(189,88,60,5,3,3,0,0,0,0,0,0,0),(194,88,63,2,3,NULL,1,1,NULL,1,NULL,NULL,NULL),(195,88,64,1,4,0,0,2,0,0,0,2,0),(196,88,64,2,2,0,1,0,0,0,0,1,0),(197,88,64,4,1,0,0,0,0,0,0,1,0),(198,88,66,1,5,0,4,0,1,0,0,0,0),(199,88,66,2,4,0,4,0,0,0,0,0,0),(200,88,66,3,2,0,0,0,0,0,0,2,0),(201,88,66,4,1,0,0,0,0,0,0,1,0),(202,88,67,1,3,0,1,0,1,0,1,0,0),(203,88,67,2,3,0,1,0,2,0,0,0,0),(204,88,67,3,1,0,0,0,1,0,0,0,0),(205,88,67,4,1,0,0,0,1,0,0,0,0),(206,88,67,5,1,0,1,0,0,0,0,0,0),(207,88,65,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(208,88,65,2,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(209,88,68,1,2,NULL,1,NULL,NULL,NULL,NULL,1,NULL),(210,88,68,2,4,1,1,NULL,NULL,NULL,NULL,2,NULL),(211,88,68,3,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(212,88,68,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,88,69,1,6,1,3,1,1,NULL,NULL,NULL,NULL),(214,88,69,2,4,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(215,88,69,4,2,NULL,1,NULL,NULL,NULL,NULL,1,NULL),(216,88,69,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,88,70,1,5,0,1,2,0,2,0,0,0),(218,88,70,2,6,0,1,2,3,0,0,0,0),(219,88,70,3,1,0,0,0,1,0,0,0,0),(220,88,72,1,3,NULL,1,1,1,NULL,NULL,NULL,NULL),(221,88,72,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(222,88,72,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(223,88,71,1,5,0,5,0,0,0,0,0,0),(224,88,71,2,2,1,1,0,0,0,0,0,0),(225,88,73,1,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(226,88,73,2,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(227,88,73,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,88,74,1,4,1,2,NULL,1,NULL,NULL,NULL,NULL),(229,88,74,2,5,1,1,2,1,NULL,NULL,NULL,NULL),(230,88,75,1,4,0,0,3,1,0,0,0,0),(231,88,75,2,3,0,1,1,0,1,0,0,0),(232,88,75,3,1,0,0,1,0,0,0,0,0),(233,88,75,6,1,1,0,0,0,0,0,0,0),(234,88,77,1,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,88,77,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,88,77,3,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(237,88,77,4,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(238,88,78,1,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,88,78,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,88,78,3,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(241,88,78,4,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(242,88,76,1,3,2,0,1,0,0,0,0,0),(243,88,76,2,4,0,2,0,0,0,2,0,0),(244,88,79,1,4,0,3,0,1,0,0,0,0),(245,88,79,2,3,1,2,0,0,0,0,0,0),(246,88,79,6,1,1,0,0,0,0,0,0,0),(247,88,80,1,3,0,3,0,0,0,0,0,0),(248,88,80,2,3,0,2,1,0,0,0,0,0),(249,88,80,4,3,0,0,0,1,2,0,0,0),(250,88,80,6,2,2,0,0,0,0,0,0,0),(251,88,81,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,88,81,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,88,81,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,88,81,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,88,81,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,88,83,1,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(257,88,83,2,3,NULL,1,NULL,NULL,1,1,NULL,NULL),(258,88,83,3,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(259,88,83,4,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(260,88,83,6,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(261,88,82,1,3,0,3,0,0,0,0,0,0),(262,88,82,2,3,0,2,0,0,0,0,1,0),(263,88,82,3,3,0,2,0,0,0,0,1,0),(264,88,82,4,2,0,0,2,0,0,0,0,0),(265,88,84,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,88,84,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,88,84,5,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(268,88,85,1,2,1,NULL,NULL,1,NULL,NULL,NULL,NULL),(269,88,85,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,88,85,4,3,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL),(271,88,85,6,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,88,86,1,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(273,88,86,2,3,NULL,1,NULL,2,NULL,NULL,NULL,NULL),(274,88,86,3,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(275,88,86,5,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,88,86,6,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(277,88,88,1,3,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL),(278,88,88,2,2,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL),(279,88,88,3,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(280,88,89,1,2,NULL,NULL,1,NULL,NULL,1,NULL,NULL),(281,88,89,2,3,1,NULL,1,NULL,NULL,NULL,1,NULL),(282,88,90,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(283,88,90,2,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(284,88,90,3,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(285,88,91,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(286,88,91,2,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(287,88,91,3,2,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL),(288,88,91,5,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(289,88,92,1,6,NULL,1,4,NULL,1,NULL,NULL,NULL),(290,88,92,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,88,92,3,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(292,88,92,5,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(293,88,93,1,3,NULL,1,NULL,NULL,2,NULL,NULL,NULL),(294,88,93,2,5,NULL,3,NULL,NULL,2,NULL,NULL,NULL),(295,88,93,5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(296,88,94,1,4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(297,88,94,2,3,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(298,88,94,4,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `encuesta_educacionjovenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_encuesta`
--

DROP TABLE IF EXISTS `encuesta_encuesta`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_encuesta` (
  `id` int(11) NOT NULL auto_increment,
  `fecha` date NOT NULL,
  `recolector_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_encuesta_656033f0` (`recolector_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_encuesta`
--

LOCK TABLES `encuesta_encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta_encuesta` DISABLE KEYS */;
INSERT INTO `encuesta_encuesta` VALUES (63,'2010-07-20',9),(2,'2010-08-01',4),(3,'2010-07-01',2),(4,'2010-07-12',1),(5,'2010-07-01',4),(6,'2010-07-01',4),(7,'2010-07-12',3),(8,'2010-07-01',2),(9,'2010-07-01',7),(10,'2010-07-08',3),(11,'2010-07-01',7),(12,'2010-07-01',2),(13,'2010-07-01',8),(14,'2010-07-15',8),(15,'2010-07-16',10),(16,'2010-07-16',9),(17,'2010-07-16',9),(18,'2010-07-16',2),(19,'2010-07-16',2),(20,'2010-07-16',2),(21,'2010-07-16',2),(22,'2010-07-16',2),(23,'2010-07-16',2),(24,'2010-07-16',2),(25,'2010-07-16',2),(26,'2010-07-16',2),(27,'2010-07-01',11),(28,'2010-09-16',11),(29,'2010-07-01',11),(30,'2010-07-05',9),(31,'2010-07-01',11),(32,'2010-07-01',11),(33,'2010-08-02',4),(34,'2010-08-02',4),(35,'2010-07-16',11),(36,'2010-07-16',11),(37,'2010-07-15',11),(38,'2010-07-28',9),(39,'2010-07-23',4),(40,'2010-07-16',2),(41,'2010-07-15',2),(42,'2010-07-20',9),(43,'2010-07-16',2),(44,'2010-07-16',2),(45,'2010-07-28',9),(46,'2010-07-27',9),(47,'2010-07-22',9),(48,'2010-07-27',9),(49,'2010-07-26',9),(51,'2010-07-27',9),(52,'2010-07-07',7),(53,'2010-07-23',9),(54,'2010-07-07',7),(55,'2010-07-23',9),(56,'2010-07-07',7),(57,'2010-07-26',7),(58,'2010-07-16',7),(59,'2010-07-16',7),(60,'2010-07-01',7),(62,'2010-07-23',9),(64,'2010-07-26',9),(65,'2010-07-30',10),(66,'2010-07-27',9),(67,'2010-07-02',9),(68,'2010-08-02',9),(69,'2010-08-02',9),(70,'2010-07-22',9),(71,'2010-07-22',9),(72,'2010-08-02',10),(73,'2010-08-02',10),(74,'2010-08-02',9),(75,'2010-08-01',9),(76,'2010-08-02',9),(77,'2010-08-03',10),(78,'2010-08-03',10),(79,'2010-08-03',9),(80,'2010-07-01',8),(81,'2010-07-23',8),(82,'2010-08-04',9),(83,'2010-07-23',8),(84,'2010-07-23',8),(85,'2010-07-23',8),(86,'2010-07-07',8),(87,'2010-07-30',8),(88,'2010-09-30',8),(89,'2010-09-30',8),(90,'2010-09-30',4),(91,'2010-09-30',8),(92,'2010-09-30',9),(93,'2010-07-28',9),(94,'2010-08-10',9);
/*!40000 ALTER TABLE `encuesta_encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_enfermedades`
--

DROP TABLE IF EXISTS `encuesta_enfermedades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_enfermedades` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `enfermedad` int(11) NOT NULL,
  `socia` int(11) default NULL,
  `hijo` int(11) default NULL,
  `companero` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_enfermedades_1bb8f392` (`content_type_id`),
  KEY `encuesta_enfermedades_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_enfermedades`
--

LOCK TABLES `encuesta_enfermedades` WRITE;
/*!40000 ALTER TABLE `encuesta_enfermedades` DISABLE KEYS */;
INSERT INTO `encuesta_enfermedades` VALUES (39,88,62,1,1,NULL,NULL),(2,88,3,1,1,2,2),(3,88,3,2,1,2,2),(4,88,3,3,1,2,2),(5,88,3,4,1,2,2),(6,88,3,5,1,2,2),(7,88,3,6,1,2,2),(8,88,4,1,1,2,2),(9,88,4,6,1,2,2),(10,88,5,5,1,2,1),(11,88,8,4,NULL,NULL,1),(12,88,10,4,2,2,1),(13,88,11,4,1,1,2),(14,88,17,2,1,NULL,NULL),(15,88,20,3,NULL,1,NULL),(16,88,22,3,1,NULL,1),(17,88,22,4,1,NULL,NULL),(18,88,24,1,1,NULL,NULL),(19,88,32,4,1,NULL,NULL),(20,88,33,1,1,1,NULL),(21,88,36,1,1,NULL,NULL),(22,88,39,2,1,NULL,NULL),(23,88,39,3,NULL,1,NULL),(24,88,40,3,1,NULL,NULL),(25,88,40,4,1,NULL,NULL),(26,88,41,1,1,NULL,NULL),(27,88,41,4,NULL,1,NULL),(28,88,42,4,1,2,2),(29,88,44,4,1,NULL,NULL),(30,88,45,3,1,NULL,NULL),(31,88,45,5,NULL,1,NULL),(32,88,47,2,1,NULL,NULL),(33,88,47,4,NULL,NULL,1),(34,88,53,1,2,1,1),(35,88,53,4,1,2,1),(36,88,55,3,1,2,2),(37,88,58,5,1,2,2),(38,88,58,2,2,1,1),(40,88,62,3,1,NULL,NULL),(41,88,64,5,2,1,2),(42,88,66,3,2,2,2),(43,88,66,1,1,2,1),(44,88,66,4,1,2,2),(45,88,66,5,2,1,2),(46,88,65,4,1,NULL,NULL),(47,88,68,1,1,NULL,NULL),(48,88,68,3,1,NULL,NULL),(49,88,68,4,1,NULL,NULL),(50,88,69,1,NULL,NULL,1),(51,88,69,4,NULL,NULL,1),(52,88,71,4,1,2,2),(53,88,71,6,1,1,2),(54,88,73,4,1,NULL,NULL),(55,88,74,1,NULL,1,NULL),(56,88,74,3,1,NULL,NULL),(57,88,74,4,NULL,NULL,1),(58,88,75,4,2,2,1),(59,88,77,4,1,NULL,NULL),(60,88,77,5,NULL,1,1),(61,88,78,4,1,NULL,NULL),(62,88,78,5,NULL,1,1),(63,88,76,1,2,1,2),(64,88,76,5,2,2,1),(65,88,79,1,1,1,2),(66,88,79,4,1,1,2),(67,88,79,5,1,2,2),(68,88,82,4,1,2,2),(69,88,84,4,1,NULL,NULL),(70,88,86,4,1,NULL,NULL),(71,88,88,1,NULL,NULL,1),(72,88,88,4,NULL,NULL,1),(73,88,92,4,1,NULL,1),(74,88,93,2,1,NULL,NULL),(75,88,93,4,1,NULL,NULL),(76,88,94,1,1,NULL,NULL),(77,88,94,4,1,NULL,NULL);
/*!40000 ALTER TABLE `encuesta_enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_equipos`
--

DROP TABLE IF EXISTS `encuesta_equipos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_equipos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_escasez` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `preg2` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_escasez_1bb8f392` (`content_type_id`),
  KEY `encuesta_escasez_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_escasez`
--

LOCK TABLES `encuesta_escasez` WRITE;
/*!40000 ALTER TABLE `encuesta_escasez` DISABLE KEYS */;
INSERT INTO `encuesta_escasez` VALUES (48,88,62,3),(2,88,2,3),(3,88,3,3),(4,88,4,3),(5,88,5,1),(6,88,6,1),(7,88,8,3),(8,88,9,1),(9,88,10,1),(10,88,11,3),(11,88,12,1),(12,88,13,3),(13,88,15,3),(14,88,16,3),(15,88,18,1),(16,88,19,3),(17,88,20,3),(18,88,21,1),(19,88,26,3),(20,88,27,1),(21,88,28,1),(22,88,29,1),(23,88,31,1),(24,88,32,1),(25,88,33,2),(26,88,34,3),(27,88,36,3),(28,88,37,3),(29,88,39,2),(30,88,40,3),(31,88,41,3),(32,88,42,1),(33,88,43,1),(34,88,44,2),(35,88,45,2),(36,88,46,2),(37,88,47,3),(38,88,48,2),(39,88,51,1),(40,88,52,3),(41,88,54,3),(42,88,53,1),(43,88,56,1),(44,88,55,1),(45,88,58,1),(46,88,59,3),(47,88,60,3),(49,88,63,3),(50,88,64,1),(51,88,66,1),(52,88,67,1),(53,88,65,3),(54,88,68,1),(55,88,69,1),(56,88,70,1),(57,88,72,1),(58,88,73,2),(59,88,74,1),(60,88,75,1),(61,88,77,3),(62,88,78,3),(63,88,79,2),(64,88,80,3),(65,88,81,1),(66,88,83,1),(67,88,82,1),(68,88,84,1),(69,88,86,3),(70,88,88,3),(71,88,89,3),(72,88,90,3),(73,88,91,3),(74,88,92,3),(75,88,93,3),(76,88,94,3);
/*!40000 ALTER TABLE `encuesta_escasez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_escasez_preg1`
--

DROP TABLE IF EXISTS `encuesta_escasez_preg1`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_escasez_preg1` (
  `id` int(11) NOT NULL auto_increment,
  `escasez_id` int(11) NOT NULL,
  `solucionescasez_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `escasez_id` (`escasez_id`,`solucionescasez_id`),
  KEY `encuesta_escasez_preg1_40235dfb` (`escasez_id`),
  KEY `encuesta_escasez_preg1_7fca2667` (`solucionescasez_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_escasez_preg1`
--

LOCK TABLES `encuesta_escasez_preg1` WRITE;
/*!40000 ALTER TABLE `encuesta_escasez_preg1` DISABLE KEYS */;
INSERT INTO `encuesta_escasez_preg1` VALUES (58,48,6),(57,48,1),(3,2,1),(4,2,6),(5,3,1),(6,4,1),(7,5,1),(8,6,1),(9,6,6),(10,6,7),(11,7,1),(12,8,1),(13,8,7),(14,9,6),(15,10,6),(16,11,1),(17,11,6),(18,13,6),(19,14,6),(20,16,6),(21,17,6),(22,18,1),(23,19,7),(24,20,1),(25,21,1),(26,21,6),(27,22,2),(28,22,6),(29,23,4),(30,24,3),(31,24,6),(32,25,1),(33,25,6),(34,26,1),(35,26,6),(36,27,6),(37,28,6),(38,29,1),(39,30,1),(40,31,1),(41,32,6),(42,33,6),(43,34,1),(44,34,6),(45,35,1),(46,36,6),(47,37,6),(48,38,6),(49,39,6),(50,40,6),(51,41,6),(52,42,4),(53,44,6),(54,45,6),(55,46,1),(56,47,6),(59,50,1),(60,51,6),(61,52,6),(62,53,1),(63,54,1),(64,54,7),(65,55,1),(66,55,7),(67,56,6),(68,57,3),(69,57,6),(70,58,3),(71,58,6),(72,58,7),(73,60,1),(74,60,7),(75,61,6),(76,62,6),(77,63,6),(78,64,6),(79,65,1),(80,67,6),(81,68,6),(82,70,1),(83,71,6),(84,73,6),(85,74,6),(86,75,1),(87,75,6),(88,75,7),(89,76,6),(90,76,7);
/*!40000 ALTER TABLE `encuesta_escasez_preg1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_fincaanimales`
--

DROP TABLE IF EXISTS `encuesta_fincaanimales`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_fincaanimales` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `animales_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) default NULL,
  `produccion_id` int(11) NOT NULL,
  `consumo` decimal(10,2) default NULL,
  `venta_libre` decimal(10,2) default NULL,
  `venta_organizada` decimal(10,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_fincaanimales_1bb8f392` (`content_type_id`),
  KEY `encuesta_fincaanimales_7d61c803` (`object_id`),
  KEY `encuesta_fincaanimales_528f57b8` (`animales_id`),
  KEY `encuesta_fincaanimales_4153c39a` (`produccion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_fincaanimales`
--

LOCK TABLES `encuesta_fincaanimales` WRITE;
/*!40000 ALTER TABLE `encuesta_fincaanimales` DISABLE KEYS */;
INSERT INTO `encuesta_fincaanimales` VALUES (124,88,63,1,'0.00',2,'3640.00','1820.00','1820.00'),(123,88,63,1,'4.00',1,'1.00','2.00',NULL),(3,88,3,8,'1.00',7,'60.00','0.00','0.00'),(4,88,3,9,'15.00',8,'200.00','0.00','0.00'),(5,88,3,9,'15.00',9,'100.00','0.00','0.00'),(6,88,5,9,'30.00',8,'96.00','0.00','0.00'),(7,88,5,9,'30.00',9,'30.00','0.00','0.00'),(8,88,6,9,'30.00',8,'20.00','0.00','0.00'),(9,88,6,9,'30.00',9,'96.00','0.00','0.00'),(10,88,7,8,'2.00',7,'100.00','0.00','0.00'),(11,88,8,8,'2.00',7,'80.00','0.00','0.00'),(12,88,10,1,'1.00',2,'5.00','0.00','0.00'),(13,88,10,1,'1.00',3,'1.00','0.00','0.00'),(14,88,10,9,'25.00',8,'12.00','0.00','0.00'),(15,88,11,9,'5.00',8,'4.00','0.00','0.00'),(16,88,12,8,'60.00',8,'30.00','0.00','0.00'),(17,88,12,9,'60.00',9,'120.00','120.00','0.00'),(18,88,15,9,'10.00',8,'90.00','0.00','0.00'),(19,88,16,1,'2912.00',2,'2912.00',NULL,NULL),(20,88,16,2,'1.00',11,NULL,NULL,NULL),(21,88,16,9,'8.00',11,NULL,NULL,NULL),(22,88,17,1,'9.00',2,'0.00','6.00','0.00'),(23,88,17,1,'0.00',3,'2.00','7.00','0.00'),(24,88,17,8,'1.00',11,'0.00','0.00','0.00'),(25,88,17,2,'20.00',1,'0.00','0.00','0.00'),(26,88,17,9,'10.00',8,'2.00','50.00','0.00'),(27,88,17,10,'8.00',10,'0.00','0.00','0.00'),(28,88,20,1,'4.00',1,'0.00','0.00','0.00'),(29,88,20,9,'15.00',9,'0.00','0.00','0.00'),(30,88,22,9,'12.00',9,'0.00','0.00','0.00'),(31,88,23,1,'2.00',1,'0.00','0.00','0.00'),(32,88,23,6,'1.00',11,'0.00','0.00','0.00'),(33,88,23,8,'3.00',7,'0.00','3.00','0.00'),(34,88,23,9,'8.00',9,'8.00','0.00','0.00'),(35,88,25,1,'1.00',11,'0.00','0.00','0.00'),(36,88,25,9,'20.00',8,'18.00','0.00','0.00'),(37,88,26,6,'2.00',11,NULL,NULL,NULL),(38,88,27,9,'10.00',8,'36.00',NULL,NULL),(39,88,28,9,'15.00',8,'48.00',NULL,NULL),(40,88,29,8,'1.00',11,NULL,NULL,NULL),(41,88,29,9,'23.00',8,'72.00',NULL,NULL),(42,88,30,9,'20.00',8,'36.00','36.00','0.00'),(43,88,31,9,'50.00',8,'50.00',NULL,NULL),(44,88,32,9,'10.00',8,'72.00',NULL,NULL),(45,88,32,9,'0.00',9,'96.00',NULL,NULL),(46,88,33,9,'10.00',8,'250.00',NULL,NULL),(47,88,33,9,'0.00',8,'4.00',NULL,NULL),(48,88,35,8,'1.00',7,'80.00',NULL,NULL),(49,88,35,9,'20.00',8,NULL,'150.00',NULL),(50,88,35,9,'0.00',9,'180.00',NULL,NULL),(51,88,36,8,'2.00',7,'100.00',NULL,NULL),(52,88,36,9,'50.00',8,'180.00',NULL,NULL),(53,88,36,9,'0.00',9,'216.00',NULL,NULL),(54,88,37,9,'12.00',8,'30.00',NULL,NULL),(55,88,37,9,'0.00',9,'90.00','50.00',NULL),(56,88,39,9,'10.00',8,'140.00',NULL,NULL),(57,88,38,1,'35.00',2,'2240.00','6000.00',NULL),(58,88,38,1,'35.00',1,'0.00','15.00',NULL),(59,88,38,2,'7.00',1,'0.00','0.00','0.00'),(60,88,38,3,'1.00',6,'0.00','1760.00','0.00'),(61,88,38,4,'10.00',6,'0.00','4400.00','0.00'),(62,88,38,5,'2.00',1,'0.00','0.00','0.00'),(63,88,38,6,'3.00',1,'0.00','0.00','0.00'),(64,88,38,8,'3.00',7,'100.00','200.00','0.00'),(65,88,38,9,'25.00',8,'100.00','100.00','0.00'),(66,88,38,9,'25.00',9,'108.00','18.00','0.00'),(67,88,38,10,'3.00',10,'4.00','0.00','0.00'),(68,88,41,1,'1.00',1,NULL,NULL,NULL),(69,88,41,8,'1.00',7,NULL,NULL,NULL),(70,88,42,1,'6.00',2,'4368.00','2184.00','2184.00'),(71,88,42,8,'2.00',7,'200.00','0.00','0.00'),(72,88,42,9,'20.00',9,'9.00','0.00','0.00'),(73,88,44,1,'1.00',1,NULL,NULL,NULL),(74,88,44,2,'1.00',6,NULL,NULL,NULL),(75,88,45,9,'5.00',8,'84.00',NULL,NULL),(76,88,46,1,'1.00',3,'335.00',NULL,NULL),(77,88,46,4,'30.00',6,NULL,'19800.00',NULL),(78,88,46,8,'3.00',7,NULL,'600.00',NULL),(79,88,46,9,'20.00',8,'210.00',NULL,NULL),(80,88,46,9,NULL,9,'156.00','45.00',NULL),(81,88,47,1,'12.00',1,NULL,'6.00',NULL),(82,88,47,1,NULL,2,'2016.00','18144.00',NULL),(83,88,47,6,'4.00',11,NULL,NULL,NULL),(84,88,47,9,'25.00',8,'500.00','200.00',NULL),(85,88,47,9,NULL,9,'144.00','144.00',NULL),(86,88,48,8,'1.00',7,NULL,'200.00',NULL),(87,88,48,9,'6.00',8,'112.00',NULL,NULL),(88,88,48,9,NULL,9,'18.00',NULL,NULL),(89,88,51,5,'2.00',11,NULL,NULL,NULL),(90,88,51,6,'1.00',11,NULL,NULL,NULL),(91,88,51,8,'5.00',9,'800.00',NULL,NULL),(92,88,51,9,'20.00',8,'33.00','33.00',NULL),(93,88,51,9,'0.00',9,'288.00',NULL,NULL),(94,88,52,6,'1.00',11,NULL,NULL,NULL),(95,88,53,1,'6.00',2,'0.00','2184.00','0.00'),(96,88,53,4,'2.00',6,'0.00','1200.00','0.00'),(97,88,53,9,'35.00',8,'100.00','0.00','0.00'),(98,88,53,9,'35.00',9,'576.00','0.00','0.00'),(99,88,54,1,'8.00',1,NULL,'3.00',NULL),(100,88,54,1,'0.00',2,'200.00',NULL,NULL),(101,88,54,1,'0.00',3,'50.00',NULL,NULL),(102,88,54,1,'0.00',5,'10.00',NULL,NULL),(103,88,54,9,NULL,8,'6.50','6.50',NULL),(104,88,53,2,'5.00',11,NULL,NULL,NULL),(105,88,53,4,'2.00',11,NULL,NULL,NULL),(106,88,53,5,'6.00',11,NULL,NULL,NULL),(107,88,53,6,'11.00',11,NULL,NULL,NULL),(108,88,53,8,'2.00',7,'0.00','250.00','0.00'),(109,88,55,1,'4.00',2,'504.00','0.00','0.00'),(110,88,55,1,'4.00',3,'392.00','0.00','0.00'),(111,88,55,2,'2.00',11,NULL,NULL,NULL),(112,88,55,8,'1.00',11,NULL,NULL,NULL),(113,88,55,9,'10.00',8,'84.00','0.00','0.00'),(114,88,55,9,'10.00',9,'12.00','0.00','0.00'),(115,88,56,9,'5.00',11,NULL,NULL,NULL),(116,88,57,1,'7.00',1,NULL,'2.00',NULL),(117,88,57,9,'20.00',8,'144.00',NULL,NULL),(118,88,58,9,'1.00',8,'10.00','0.00','0.00'),(119,88,59,9,NULL,8,'300.00','150.00',NULL),(120,88,60,9,'6.00',8,'60.00','0.00','0.00'),(121,88,62,8,'3.00',7,'200.00','400.00',NULL),(122,88,62,9,'9.00',9,'21.00','6.00',NULL),(125,88,63,8,'1.00',7,NULL,'200.00',NULL),(126,88,63,9,'10.00',8,'91.00','91.00',NULL),(127,88,63,9,'10.00',9,NULL,'30.00',NULL),(128,88,64,1,'3.00',2,'1008.00','0.00','0.00'),(129,88,64,1,'3.00',1,'0.00','2.00','0.00'),(130,88,64,1,'3.00',3,'300.00','36.00','0.00'),(131,88,64,8,'4.00',7,'0.00','500.00','0.00'),(132,88,64,9,'30.00',8,'30.00','300.00','0.00'),(133,88,64,9,'30.00',9,'60.00','18.00','0.00'),(134,88,64,10,'1.00',10,'12.00','0.00','0.00'),(135,88,66,6,'1.00',11,NULL,NULL,NULL),(136,88,66,9,'20.00',8,'230.00','0.00','0.00'),(137,88,66,8,'20.00',9,'72.00','0.00','0.00'),(138,88,67,9,'40.00',8,'175.00','0.00','0.00'),(139,88,67,9,'40.00',9,'140.00','0.00','0.00'),(140,88,68,1,'2.00',2,'560.00',NULL,NULL),(141,88,68,1,'0.00',3,'1120.00',NULL,NULL),(142,88,68,2,'1.00',11,NULL,NULL,NULL),(143,88,68,6,'2.00',11,NULL,NULL,NULL),(144,88,68,8,'1.00',7,NULL,'130.00',NULL),(145,88,68,9,'8.00',8,'112.00',NULL,NULL),(146,88,68,9,'0.00',9,'12.00',NULL,NULL),(147,88,69,6,'1.00',11,NULL,NULL,NULL),(148,88,69,8,'2.00',7,NULL,'300.00',NULL),(149,88,69,9,'65.00',8,'140.00','140.00',NULL),(150,88,69,9,NULL,9,'180.00','150.00',NULL),(151,88,70,9,'25.00',8,'140.00','0.00','0.00'),(152,88,70,9,'25.00',9,'72.00','0.00','0.00'),(153,88,72,9,'8.00',8,'10.00',NULL,NULL),(154,88,71,1,'1.00',2,'448.00','488.00','0.00'),(155,88,71,5,'1.00',11,'0.00','0.00','0.00'),(156,88,71,9,'9.00',8,'242.00','0.00','0.00'),(157,88,71,9,'9.00',9,'6.00','0.00','0.00'),(158,88,73,9,'15.00',8,'10.00','9.00',NULL),(159,88,74,6,'1.00',11,NULL,NULL,NULL),(160,88,74,9,'5.00',8,'98.00',NULL,NULL),(161,88,74,9,NULL,9,NULL,'15.00',NULL),(162,88,75,6,'1.00',11,'0.00','0.00','0.00'),(163,88,75,9,'10.00',8,'117.00','0.00','0.00'),(164,88,75,9,'10.00',9,'144.00','30.00','0.00'),(165,88,77,9,'13.00',8,'46.00',NULL,NULL),(166,88,78,9,'13.00',8,'46.00',NULL,NULL),(167,88,76,1,'27.00',2,'365.00','2688.00','0.00'),(168,88,76,6,'3.00',11,'0.00','0.00','0.00'),(169,88,76,8,'2.00',7,'0.00','400.00','0.00'),(170,88,76,9,'60.00',8,'140.00','326.00','0.00'),(171,88,76,9,'60.00',9,'288.00','75.00','0.00'),(172,88,79,9,'30.00',8,'28.00','140.00','0.00'),(173,88,80,9,'10.00',8,'180.00','0.00','0.00'),(174,88,80,9,'10.00',9,'200.00','0.00','0.00'),(175,88,81,9,'7.00',11,NULL,NULL,NULL),(176,88,82,2,'2.00',11,NULL,NULL,NULL),(177,88,83,1,'7.00',11,NULL,NULL,NULL),(178,88,83,2,'2.00',11,NULL,NULL,NULL),(179,88,83,3,'1.00',11,NULL,NULL,NULL),(180,88,83,4,'9.00',11,NULL,NULL,NULL),(181,88,83,8,'2.00',11,NULL,NULL,NULL),(182,88,83,9,'50.00',8,'60.00','300.00',NULL),(183,88,84,6,'1.00',11,NULL,NULL,NULL),(184,88,84,9,'15.00',8,'20.00','41.00',NULL),(185,88,85,1,NULL,1,NULL,'1.00',NULL),(186,88,85,1,NULL,2,'360.00','8640.00',NULL),(187,88,85,9,NULL,8,'48.00',NULL,NULL),(188,88,85,9,NULL,9,'220.00',NULL,NULL),(189,88,86,8,'1.00',7,'10.00','20.00',NULL),(190,88,88,9,'30.00',8,'84.00',NULL,NULL),(191,88,88,10,'3.00',10,NULL,NULL,NULL),(192,88,89,1,'27.00',1,NULL,'22.00',NULL),(193,88,89,1,NULL,3,'360.00','2040.00',NULL),(194,88,89,8,'2.00',7,NULL,'2.00',NULL),(195,88,90,1,'2.00',2,'360.00',NULL,NULL),(196,88,90,1,NULL,3,'720.00',NULL,NULL),(197,88,90,9,'12.00',8,'120.00',NULL,NULL),(198,88,90,9,NULL,9,'36.00',NULL,NULL),(199,88,92,8,'13.00',7,'450.00',NULL,NULL),(200,88,92,9,'40.00',8,'288.00','18.00',NULL),(201,88,93,9,'20.00',8,'300.00','36.00',NULL),(202,88,93,9,NULL,9,'72.00',NULL,NULL),(203,88,93,10,'4.00',10,NULL,'50.00',NULL),(204,88,94,7,'7.00',12,'160.00','240.00',NULL),(205,88,94,9,'6.00',8,'116.00',NULL,NULL);
/*!40000 ALTER TABLE `encuesta_fincaanimales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_fuentes`
--

DROP TABLE IF EXISTS `encuesta_fuentes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_fuentes` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_herramientas` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `herramienta_id` int(11) NOT NULL,
  `numero` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_herramientas_1bb8f392` (`content_type_id`),
  KEY `encuesta_herramientas_7d61c803` (`object_id`),
  KEY `encuesta_herramientas_18dc765` (`herramienta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=554 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_herramientas`
--

LOCK TABLES `encuesta_herramientas` WRITE;
/*!40000 ALTER TABLE `encuesta_herramientas` DISABLE KEYS */;
INSERT INTO `encuesta_herramientas` VALUES (380,88,63,4,2),(379,88,63,3,3),(378,88,63,2,2),(377,88,63,1,6),(5,88,2,1,4),(6,88,2,2,3),(7,88,2,3,3),(8,88,2,4,4),(9,88,2,5,1),(10,88,2,6,4),(11,88,2,7,1),(12,88,2,8,1),(13,88,3,1,6),(14,88,3,2,6),(15,88,3,3,1),(16,88,3,4,4),(17,88,3,5,2),(18,88,3,6,3),(19,88,3,7,2),(20,88,3,9,4),(21,88,4,1,1),(22,88,4,2,1),(23,88,4,3,1),(24,88,4,3,1),(25,88,4,4,1),(26,88,4,5,1),(27,88,5,1,1),(28,88,5,2,2),(29,88,5,3,1),(30,88,5,4,2),(31,88,5,6,2),(32,88,6,1,4),(33,88,6,2,1),(34,88,6,3,2),(35,88,6,4,2),(36,88,6,5,2),(37,88,6,6,1),(38,88,6,7,1),(39,88,6,9,1),(40,88,7,1,15),(41,88,7,2,2),(42,88,7,3,2),(43,88,7,4,6),(44,88,7,6,15),(45,88,7,7,1),(46,88,7,8,3),(47,88,8,1,2),(48,88,8,2,1),(49,88,8,3,2),(50,88,8,5,1),(51,88,8,4,1),(52,88,8,6,2),(53,88,8,8,2),(54,88,9,1,4),(55,88,9,2,4),(56,88,9,4,2),(57,88,9,3,2),(58,88,9,5,1),(59,88,9,6,5),(60,88,9,8,1),(61,88,9,7,1),(62,88,10,1,2),(63,88,10,2,1),(64,88,10,3,2),(65,88,10,4,2),(66,88,10,6,4),(67,88,10,7,1),(68,88,10,8,1),(69,88,11,1,2),(70,88,11,2,2),(71,88,11,3,1),(72,88,11,4,4),(73,88,11,5,2),(74,88,11,6,4),(75,88,11,7,2),(76,88,12,1,3),(77,88,12,2,2),(78,88,12,3,2),(79,88,12,4,2),(80,88,12,5,4),(81,88,12,6,2),(82,88,12,7,1),(83,88,13,1,7),(84,88,13,2,2),(85,88,13,3,3),(86,88,13,4,4),(87,88,13,5,1),(88,88,13,7,2),(89,88,14,1,2),(90,88,15,1,3),(91,88,15,2,2),(92,88,15,3,1),(93,88,15,4,2),(94,88,15,5,1),(95,88,15,6,3),(96,88,15,7,1),(97,88,15,8,2),(98,88,16,1,4),(99,88,16,2,4),(100,88,16,3,3),(101,88,16,4,2),(102,88,16,6,7),(103,88,16,7,1),(104,88,16,8,1),(105,88,17,1,11),(106,88,17,2,8),(107,88,17,3,4),(108,88,17,4,12),(109,88,17,6,8),(110,88,17,7,1),(111,88,17,8,3),(112,88,18,1,2),(113,88,18,4,1),(114,88,18,6,2),(115,88,19,1,2),(116,88,19,2,2),(117,88,19,3,3),(118,88,19,4,4),(119,88,19,5,1),(120,88,19,6,4),(121,88,19,7,1),(122,88,20,1,5),(123,88,20,2,1),(124,88,20,3,1),(125,88,20,4,1),(126,88,20,6,2),(127,88,21,1,2),(128,88,21,2,2),(129,88,21,4,1),(130,88,21,6,1),(131,88,21,7,1),(132,88,22,1,4),(133,88,22,2,4),(134,88,22,3,2),(135,88,22,4,6),(136,88,22,5,1),(137,88,22,6,4),(138,88,22,7,1),(139,88,22,8,1),(140,88,23,1,5),(141,88,23,2,3),(142,88,23,3,1),(143,88,23,4,2),(144,88,23,5,1),(145,88,23,6,8),(146,88,23,7,1),(147,88,25,1,4),(148,88,25,2,3),(149,88,25,3,4),(150,88,25,4,3),(151,88,25,5,1),(152,88,25,7,2),(153,88,25,8,1),(154,88,26,1,2),(155,88,26,2,2),(156,88,26,3,1),(157,88,26,4,3),(158,88,26,6,2),(159,88,26,7,1),(160,88,26,8,1),(161,88,27,1,3),(162,88,27,2,2),(163,88,27,3,1),(164,88,27,4,1),(165,88,27,7,1),(166,88,28,1,3),(167,88,28,2,3),(168,88,28,3,1),(169,88,28,4,1),(170,88,28,6,1),(171,88,28,7,1),(172,88,29,1,4),(173,88,29,3,1),(174,88,29,4,2),(175,88,29,5,1),(176,88,29,6,1),(177,88,29,8,1),(178,88,30,1,8),(179,88,30,2,2),(180,88,30,3,1),(181,88,30,4,2),(182,88,30,6,2),(183,88,30,7,1),(184,88,31,1,2),(185,88,31,2,1),(186,88,31,4,2),(187,88,31,6,1),(188,88,31,7,1),(189,88,32,1,5),(190,88,32,2,2),(191,88,32,3,1),(192,88,32,4,2),(193,88,32,5,1),(194,88,32,6,1),(195,88,32,7,1),(196,88,33,1,2),(197,88,33,2,1),(198,88,33,4,2),(199,88,33,7,3),(200,88,34,1,4),(201,88,34,2,3),(202,88,34,3,3),(203,88,34,4,4),(204,88,34,5,1),(205,88,34,6,4),(206,88,34,7,1),(207,88,34,8,1),(208,88,35,1,6),(209,88,35,2,6),(210,88,35,3,1),(211,88,35,4,2),(212,88,35,5,1),(213,88,35,6,3),(214,88,35,7,1),(215,88,35,8,1),(216,88,36,1,4),(217,88,36,2,6),(218,88,36,3,1),(219,88,36,4,3),(220,88,36,6,1),(221,88,36,8,1),(222,88,37,1,3),(223,88,37,2,2),(224,88,37,4,2),(225,88,37,6,1),(226,88,37,7,1),(227,88,37,8,12),(228,88,39,1,3),(229,88,39,2,2),(230,88,39,3,3),(231,88,39,4,3),(232,88,39,5,1),(233,88,39,6,4),(234,88,39,7,1),(235,88,39,8,1),(236,88,40,1,5),(237,88,40,3,1),(238,88,40,4,2),(239,88,40,5,1),(240,88,40,6,2),(241,88,40,7,1),(242,88,41,1,1),(243,88,41,2,1),(244,88,41,4,1),(245,88,41,6,2),(246,88,41,7,1),(247,88,38,1,3),(248,88,38,2,2),(249,88,38,3,1),(250,88,38,4,3),(251,88,38,5,2),(252,88,38,6,5),(253,88,38,7,1),(254,88,42,1,2),(255,88,42,2,1),(256,88,42,3,1),(257,88,42,4,2),(258,88,42,7,1),(259,88,42,7,1),(260,88,43,1,3),(261,88,43,2,1),(262,88,43,3,1),(263,88,43,4,1),(264,88,43,5,1),(265,88,43,7,1),(266,88,43,8,1),(267,88,43,9,1),(268,88,44,1,3),(269,88,44,2,3),(270,88,44,3,3),(271,88,44,4,9),(272,88,44,5,1),(273,88,44,7,1),(274,88,45,1,4),(275,88,45,2,2),(276,88,45,3,1),(277,88,45,4,1),(278,88,45,6,4),(279,88,45,7,1),(280,88,45,8,1),(281,88,46,1,4),(282,88,46,2,1),(283,88,46,3,1),(284,88,46,4,1),(285,88,46,6,1),(286,88,46,8,1),(287,88,47,1,3),(288,88,47,2,5),(289,88,47,3,2),(290,88,47,4,8),(291,88,47,5,2),(292,88,47,6,10),(293,88,47,7,1),(294,88,47,8,1),(295,88,48,1,1),(296,88,48,2,1),(297,88,48,3,1),(298,88,48,4,2),(299,88,48,5,1),(300,88,48,6,2),(301,88,48,7,1),(302,88,48,8,1),(303,88,51,1,10),(304,88,51,2,1),(305,88,51,3,1),(306,88,51,4,2),(307,88,51,6,4),(308,88,51,7,1),(309,88,52,1,2),(310,88,52,2,3),(311,88,52,3,4),(312,88,52,4,6),(313,88,52,6,4),(314,88,52,7,1),(315,88,52,8,2),(316,88,54,1,1),(317,88,54,2,1),(318,88,54,3,3),(319,88,54,4,3),(320,88,54,5,1),(321,88,54,6,1),(322,88,54,7,1),(323,88,54,8,1),(324,88,53,1,4),(325,88,53,2,2),(326,88,53,3,2),(327,88,53,4,2),(328,88,53,5,2),(329,88,53,6,6),(330,88,53,7,1),(331,88,53,8,2),(332,88,56,1,2),(333,88,56,2,2),(334,88,56,3,2),(335,88,56,4,2),(336,88,55,1,2),(337,88,55,2,1),(338,88,55,3,1),(339,88,55,4,1),(340,88,55,6,1),(341,88,55,7,1),(342,88,55,8,1),(343,88,57,1,2),(344,88,57,2,2),(345,88,57,3,1),(346,88,57,4,2),(347,88,57,5,1),(348,88,57,6,3),(349,88,57,7,1),(350,88,57,8,2),(351,88,58,1,4),(352,88,58,2,4),(353,88,58,3,3),(354,88,58,4,3),(355,88,58,6,7),(356,88,58,7,1),(357,88,58,8,2),(358,88,59,1,5),(359,88,59,2,2),(360,88,59,3,2),(361,88,59,4,1),(362,88,59,6,5),(363,88,59,7,1),(364,88,59,8,1),(365,88,60,1,3),(366,88,60,2,2),(367,88,60,3,3),(368,88,60,4,3),(369,88,60,6,3),(370,88,60,7,1),(371,88,60,8,1),(372,88,62,1,4),(373,88,62,2,1),(374,88,62,3,2),(375,88,62,4,1),(376,88,62,6,1),(381,88,63,7,1),(382,88,63,8,1),(383,88,64,1,4),(384,88,64,2,2),(385,88,64,3,2),(386,88,64,4,2),(387,88,64,5,1),(388,88,64,6,2),(389,88,64,7,1),(390,88,64,8,1),(391,88,65,1,4),(392,88,65,4,1),(393,88,65,8,1),(394,88,66,1,4),(395,88,66,2,1),(396,88,66,4,1),(397,88,66,7,1),(398,88,66,8,1),(399,88,67,1,1),(400,88,67,2,1),(401,88,67,7,1),(402,88,67,8,1),(403,88,68,1,10),(404,88,68,2,7),(405,88,68,3,1),(406,88,68,4,1),(407,88,68,6,1),(408,88,68,7,3),(409,88,68,8,1),(410,88,69,1,10),(411,88,69,2,5),(412,88,69,3,2),(413,88,69,4,1),(414,88,69,7,2),(415,88,70,1,6),(416,88,70,2,2),(417,88,70,3,2),(418,88,70,4,1),(419,88,70,6,3),(420,88,70,7,1),(421,88,70,8,1),(422,88,72,1,2),(423,88,72,2,1),(424,88,72,5,1),(425,88,72,6,1),(426,88,72,7,1),(427,88,72,8,1),(428,88,71,1,2),(429,88,71,2,1),(430,88,71,3,1),(431,88,71,4,2),(432,88,71,6,1),(433,88,71,7,1),(434,88,71,8,1),(435,88,73,1,2),(436,88,73,2,1),(437,88,73,3,1),(438,88,73,6,1),(439,88,73,7,1),(440,88,74,1,1),(441,88,74,5,1),(442,88,74,7,1),(443,88,75,1,4),(444,88,75,4,2),(445,88,75,6,2),(446,88,75,7,1),(447,88,77,1,2),(448,88,77,2,1),(449,88,77,3,1),(450,88,77,4,1),(451,88,77,6,4),(452,88,77,7,1),(453,88,77,8,1),(454,88,78,1,2),(455,88,78,2,1),(456,88,78,3,1),(457,88,78,4,1),(458,88,78,6,4),(459,88,78,7,1),(460,88,78,8,1),(461,88,76,1,3),(462,88,76,2,2),(463,88,76,3,1),(464,88,76,4,2),(465,88,76,6,2),(466,88,76,8,1),(467,88,79,1,5),(468,88,79,2,2),(469,88,79,7,1),(470,88,80,1,5),(471,88,80,2,2),(472,88,80,3,2),(473,88,80,4,4),(474,88,80,6,5),(475,88,80,7,1),(476,88,80,8,1),(477,88,81,1,2),(478,88,81,3,1),(479,88,81,4,1),(480,88,82,1,2),(481,88,82,2,3),(482,88,82,3,1),(483,88,82,4,1),(484,88,82,6,1),(485,88,82,8,1),(486,88,83,1,8),(487,88,83,2,2),(488,88,83,3,2),(489,88,83,4,2),(490,88,83,6,4),(491,88,83,7,1),(492,88,84,2,1),(493,88,84,3,1),(494,88,84,4,1),(495,88,84,6,1),(496,88,85,1,2),(497,88,85,2,1),(498,88,85,3,1),(499,88,85,4,2),(500,88,85,6,4),(501,88,86,1,3),(502,88,86,2,1),(503,88,86,3,1),(504,88,86,4,1),(505,88,86,5,1),(506,88,86,7,1),(507,88,86,8,1),(508,88,86,9,1),(509,88,88,1,4),(510,88,88,2,1),(511,88,88,3,2),(512,88,88,4,2),(513,88,88,5,1),(514,88,88,6,6),(515,88,88,7,1),(516,88,88,8,1),(517,88,89,1,1),(518,88,89,2,2),(519,88,89,3,3),(520,88,89,4,2),(521,88,89,4,1),(522,88,89,7,1),(523,88,89,8,3),(524,88,90,1,3),(525,88,90,4,1),(526,88,90,5,1),(527,88,90,6,2),(528,88,90,7,1),(529,88,90,8,1),(530,88,91,1,3),(531,88,91,3,1),(532,88,91,6,1),(533,88,91,7,1),(534,88,92,1,4),(535,88,92,2,1),(536,88,92,3,1),(537,88,92,4,2),(538,88,92,5,1),(539,88,92,6,2),(540,88,92,7,1),(541,88,93,1,3),(542,88,93,2,1),(543,88,93,3,3),(544,88,93,4,1),(545,88,93,5,1),(546,88,93,6,3),(547,88,93,7,2),(548,88,93,8,1),(549,88,94,1,2),(550,88,94,3,2),(551,88,94,4,1),(552,88,94,7,2),(553,88,94,2,3);
/*!40000 ALTER TABLE `encuesta_herramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_infraestructuras`
--

DROP TABLE IF EXISTS `encuesta_infraestructuras`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_infraestructuras` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_ingresofamiliar` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `rubro_id` int(11) NOT NULL,
  `cantidad` int(11) default NULL,
  `precio` int(11) default NULL,
  `quien_vendio` int(11) default NULL,
  `maneja_negocio` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_ingresofamiliar_1bb8f392` (`content_type_id`),
  KEY `encuesta_ingresofamiliar_7d61c803` (`object_id`),
  KEY `encuesta_ingresofamiliar_3d65a305` (`rubro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_ingresofamiliar`
--

LOCK TABLES `encuesta_ingresofamiliar` WRITE;
/*!40000 ALTER TABLE `encuesta_ingresofamiliar` DISABLE KEYS */;
INSERT INTO `encuesta_ingresofamiliar` VALUES (159,88,63,1,3,1000,2,NULL),(2,88,2,1,62,1250,4,1),(3,88,3,1,103,1300,4,1),(4,88,3,2,100,7,1,3),(5,88,3,9,28,100,2,1),(6,88,4,1,9,60,4,1),(7,88,4,2,4,100,1,1),(8,88,5,1,20,900,4,1),(9,88,6,1,17,1300,9,1),(10,88,7,1,1586,1308,4,1),(11,88,8,1,59,1200,4,1),(12,88,9,1,8,1100,4,7),(13,88,9,5,20,380,2,7),(14,88,9,10,160,400,1,7),(15,88,10,1,76,1220,4,3),(16,88,10,4,10,200,1,3),(17,88,10,5,15,500,1,3),(18,88,10,13,150,24,1,3),(19,88,11,1,59,1500,4,1),(20,88,12,1,25,1200,9,3),(21,88,12,2,30,10,1,1),(22,88,12,8,30,100,1,2),(23,88,12,13,30,36,1,2),(24,88,13,1,700,1100,4,1),(25,88,13,2,20,10,2,1),(26,88,13,10,5,200,1,1),(27,88,15,1,340,1100,4,1),(28,88,15,9,150,20,2,1),(29,88,16,1,290,1080,4,2),(30,88,16,2,2400,15,2,2),(31,88,16,4,30,150,2,2),(32,88,16,5,35,420,2,2),(33,88,17,1,202,1100,4,1),(34,88,17,5,5,400,2,1),(35,88,17,16,8,8,2,1),(36,88,18,1,8,1250,4,2),(37,88,18,2,50,20,2,2),(38,88,18,9,20,20,2,2),(39,88,18,11,5,15,2,2),(40,88,19,1,7,1250,4,1),(41,88,19,2,29,20,2,1),(42,88,20,1,30,1200,2,2),(43,88,21,1,22,1250,1,1),(44,88,22,1,150,1300,4,1),(45,88,23,1,234,1250,4,1),(46,88,23,19,3,1000,1,2),(47,88,25,1,31,1270,4,1),(48,88,26,1,41,1400,4,1),(49,88,27,1,30,1200,4,1),(50,88,28,1,39,1100,NULL,NULL),(51,88,29,1,26,1250,4,6),(52,88,30,1,10,1300,9,1),(53,88,30,4,8,250,2,1),(54,88,15,2,600,10,2,1),(55,88,31,1,41,1200,1,1),(56,88,31,4,10,150,1,1),(57,88,31,5,14,500,1,1),(58,88,31,8,15,70,1,1),(59,88,32,1,35,1200,4,6),(60,88,32,2,14,10,1,7),(61,88,33,1,43,1250,4,1),(62,88,34,1,62,1250,4,1),(63,88,35,1,49,1200,4,1),(64,88,35,4,100,320,2,1),(65,88,35,13,150,24,1,1),(66,88,36,1,317,1200,1,1),(67,88,36,3,15,100,1,1),(68,88,36,4,25,200,1,1),(69,88,36,5,30,500,1,1),(70,88,37,1,11,1200,1,1),(71,88,37,8,10,80,1,2),(72,88,39,1,38,1100,1,1),(73,88,39,5,5,500,2,1),(74,88,39,9,30,10,1,1),(75,88,38,1,15,1700,4,5),(76,88,38,2,360,100,5,5),(77,88,38,8,18,100,1,1),(78,88,38,9,500,10,2,1),(79,88,38,13,100,20,1,1),(80,88,38,16,6000,7,2,1),(81,88,38,18,15,5000,2,1),(82,88,38,19,10,2500,2,1),(83,88,40,1,107,1300,4,6),(84,88,41,1,49,1280,NULL,NULL),(85,88,42,1,2,1000,2,1),(86,88,42,2,24,50,1,1),(87,88,42,3,3,1,1,1),(88,88,42,4,5,220,5,1),(89,88,42,5,5,250,2,1),(90,88,42,7,1,200,1,2),(91,88,42,13,1092,24,1,2),(92,88,42,16,2184,7,1,2),(93,88,43,5,6,600,4,1),(94,88,44,1,9,1300,1,2),(95,88,45,1,60,1100,NULL,1),(96,88,46,1,30,1200,2,1),(97,88,46,2,2700,10,2,1),(98,88,46,5,40,700,2,1),(99,88,46,8,15,100,4,1),(100,88,46,20,3,1500,2,1),(101,88,47,1,38,1400,2,2),(102,88,47,2,200,20,2,3),(103,88,47,3,2,80,1,3),(104,88,47,4,50,280,2,3),(105,88,47,5,20,350,2,3),(106,88,47,8,25,100,1,2),(107,88,47,9,5,30,1,3),(108,88,47,13,200,20,1,2),(109,88,47,17,18144,20,1,2),(110,88,47,18,6,5000,1,1),(111,88,48,1,200,1200,4,1),(112,88,48,2,22,7,2,1),(113,88,48,9,50,5,2,1),(114,88,48,20,1,1200,2,1),(115,88,51,1,150,900,4,1),(116,88,51,2,1800,7,2,1),(117,88,51,13,33,5,1,1),(118,88,52,1,250,1200,NULL,NULL),(119,88,52,4,180,160,NULL,NULL),(120,88,52,9,5,200,NULL,NULL),(121,88,52,11,5,200,NULL,NULL),(122,88,54,1,147,1000,NULL,NULL),(123,88,54,4,20,250,NULL,NULL),(124,88,54,5,8,500,NULL,NULL),(125,88,54,7,39,300,NULL,NULL),(126,88,54,9,30,25,NULL,NULL),(127,88,54,13,15,24,NULL,NULL),(128,88,54,18,3,6000,NULL,NULL),(129,88,54,19,2,500,NULL,NULL),(130,88,53,1,11,850,4,1),(131,88,53,13,180,20,1,2),(132,88,53,16,2184,7,1,2),(133,88,53,20,1,1500,1,2),(134,88,55,1,48,1100,4,1),(135,88,56,1,28,1100,4,1),(136,88,56,4,12,120,NULL,3),(137,88,56,5,6,400,2,3),(138,88,57,1,85,1300,4,NULL),(139,88,57,9,30,200,2,NULL),(140,88,57,18,22,4000,2,NULL),(141,88,58,1,160,1200,9,1),(142,88,58,2,10,25,2,1),(143,88,58,3,5,200,2,1),(144,88,58,4,80,250,2,2),(145,88,58,5,20,420,2,2),(146,88,58,11,500,200,2,1),(147,88,59,1,130,1100,4,3),(148,88,59,2,20,20,1,4),(149,88,59,11,5,40,1,4),(150,88,59,13,150,30,1,2),(151,88,60,1,1,1200,1,1),(152,88,60,9,30,30,2,1),(153,88,62,1,6,1200,4,3),(154,88,62,2,360,125,2,4),(155,88,62,5,6,350,2,1),(156,88,62,7,8,250,2,2),(157,88,62,9,20,8,2,4),(158,88,62,21,2,500,2,4),(160,88,63,2,5,50,NULL,NULL),(161,88,63,3,4,200,NULL,NULL),(162,88,63,4,10,250,NULL,NULL),(163,88,63,6,15,300,NULL,NULL),(164,88,63,7,300,300,NULL,NULL),(165,88,63,8,10,100,1,2),(166,88,63,13,91,25,2,2),(167,88,63,16,1820,NULL,NULL,NULL),(168,88,63,18,2,1500,NULL,NULL),(169,88,63,20,1,1200,NULL,NULL),(170,88,64,1,33,1250,10,1),(171,88,64,2,180,750,2,1),(172,88,64,4,40,300,1,1),(173,88,64,5,26,600,2,1),(174,88,64,8,6,150,2,2),(175,88,64,9,30,15,2,1),(176,88,64,13,300,24,2,2),(177,88,64,17,36,20,2,2),(178,88,64,18,2,6000,2,2),(179,88,64,20,2,3000,2,1),(180,88,65,5,4,600,2,1),(181,88,66,1,30,1000,2,1),(182,88,66,2,1440,10,2,1),(183,88,67,1,3,1100,2,2),(184,88,68,1,18,1250,4,1),(185,88,68,6,30,80,2,1),(186,88,68,20,1,1300,1,1),(187,88,69,1,80,1000,10,1),(188,88,69,2,25,7,NULL,NULL),(189,88,69,4,60,150,2,1),(190,88,69,5,12,NULL,4,1),(191,88,69,8,50,20,1,2),(192,88,69,13,140,30,1,2),(193,88,69,20,2,1200,1,4),(194,88,70,1,10,1240,4,1),(195,88,70,4,30,260,2,1),(196,88,70,5,17,500,2,1),(197,88,72,1,75,1000,4,1),(198,88,72,2,20,4,2,2),(199,88,71,1,6,1050,10,1),(200,88,71,5,6,450,2,1),(201,88,71,9,5,10,2,1),(202,88,71,16,448,7,5,3),(203,88,73,1,15,1000,4,2),(204,88,73,2,20,20,2,2),(205,88,73,4,5,NULL,2,2),(206,88,73,5,7,NULL,2,2),(207,88,73,13,9,20,2,2),(208,88,74,1,9,1000,4,1),(209,88,74,8,15,60,1,4),(210,88,75,1,60,1200,10,1),(211,88,75,2,480,10,1,1),(212,88,75,8,10,50,1,2),(213,88,77,1,25,980,4,1),(214,88,78,1,25,980,4,1),(215,88,76,1,60,1000,4,1),(216,88,76,2,605,25,5,1),(217,88,76,4,10,200,5,5),(218,88,76,9,1,25,1,2),(219,88,79,1,7,1200,4,2),(220,88,79,7,1,80,1,2),(221,88,79,13,140,30,1,2),(222,88,80,1,1842,1200,10,1),(223,88,80,2,15600,15,1,1),(224,88,81,1,20,1200,4,NULL),(225,88,82,1,9,1100,4,1),(226,88,82,2,5,250,2,1),(227,88,82,5,10,500,2,1),(228,88,83,1,58,1220,10,NULL),(229,88,83,2,600,14,2,NULL),(230,88,83,4,50,300,2,NULL),(231,88,83,5,90,440,2,NULL),(232,88,83,13,300,25,2,NULL),(233,88,83,8,15,100,2,NULL),(234,88,84,1,70,1200,10,2),(235,88,84,2,56,15,2,2),(236,88,84,9,30,15,2,2),(237,88,85,1,200,150,1,1),(238,88,85,2,50,20,2,2),(239,88,85,7,50,400,1,4),(240,88,85,16,8640,8,2,2),(241,88,86,1,25,2000,2,2),(242,88,86,2,105,17,2,2),(243,88,86,8,10,100,1,2),(244,88,86,20,1,850,1,2),(245,88,88,1,200,NULL,10,1),(246,88,88,2,1260,15,2,1),(247,88,88,9,1002,10,2,1),(248,88,88,23,10,70,2,1),(249,88,89,1,20,2400,NULL,NULL),(250,88,89,2,15,18,NULL,NULL),(251,88,89,17,2040,15,NULL,NULL),(252,88,89,18,22,4500,NULL,NULL),(253,88,90,1,150,1150,10,1),(254,88,90,2,1800,15,1,1),(255,88,90,5,18,400,2,1),(256,88,91,1,80,2400,10,1),(257,88,91,2,50,15,1,1),(258,88,91,13,300,30,1,1),(259,88,92,1,8,1200,4,1),(260,88,92,2,9,400,2,1),(261,88,92,8,6,100,1,1),(262,88,93,1,40,950,2,4),(263,88,93,2,540,10,2,2),(264,88,93,5,30,500,2,2),(265,88,93,13,36,25,2,2),(266,88,93,23,50,90,2,2),(267,88,94,1,13,1000,10,6),(268,88,94,19,3,300,4,6);
/*!40000 ALTER TABLE `encuesta_ingresofamiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes`
--

DROP TABLE IF EXISTS `encuesta_jovenes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_jovenes` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `socio` int(11) default NULL,
  `desde_socio` int(11) default NULL,
  `promotor` int(11) default NULL,
  `miembro` int(11) default NULL,
  `conformado` int(11) default NULL,
  `conformarse` int(11) default NULL,
  `miembro_trabajo` int(11) default NULL,
  `desde_miembro_trabajo` int(11) default NULL,
  `cargo` int(11) default NULL,
  `desde_cargo` int(11) default NULL,
  `no_miembro` int(11) default NULL,
  `desde_miembro` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_jovenes_1bb8f392` (`content_type_id`),
  KEY `encuesta_jovenes_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_jovenes`
--

LOCK TABLES `encuesta_jovenes` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes` DISABLE KEYS */;
INSERT INTO `encuesta_jovenes` VALUES (31,88,62,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,88,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,88,3,2,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,88,4,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,88,5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,88,6,2,NULL,2,NULL,NULL,3,2,NULL,NULL,NULL,1,NULL),(7,88,7,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,88,10,2,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(9,88,11,2,NULL,NULL,NULL,NULL,3,2,NULL,NULL,NULL,1,NULL),(10,88,15,2,NULL,2,2,3,5,2,NULL,NULL,NULL,2,NULL),(11,88,16,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(12,88,25,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,88,27,2,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,88,28,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,88,29,2,NULL,1,2,NULL,NULL,2,NULL,2,NULL,NULL,NULL),(16,88,31,2,NULL,2,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL),(17,88,32,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,88,33,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,88,34,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,88,35,1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,88,36,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,88,37,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,88,40,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,88,51,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(25,88,52,2,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(26,88,54,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,88,57,1,1,2,1,NULL,NULL,1,1,1,1,NULL,NULL),(28,88,58,2,NULL,2,2,NULL,NULL,2,NULL,NULL,NULL,2,NULL),(29,88,59,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(30,88,60,2,NULL,NULL,2,NULL,NULL,2,NULL,NULL,NULL,1,NULL),(32,88,64,2,NULL,2,2,NULL,NULL,2,NULL,NULL,NULL,1,NULL),(33,88,66,2,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,88,65,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,88,69,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(36,88,72,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,88,71,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,88,73,2,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL),(39,88,74,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(40,88,77,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(41,88,78,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(42,88,79,2,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(43,88,80,2,NULL,2,2,NULL,NULL,2,NULL,NULL,NULL,2,NULL),(44,88,81,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,88,83,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,88,84,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,88,85,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,88,86,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,88,88,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,88,90,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,88,93,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `encuesta_jovenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes_beneficio`
--

DROP TABLE IF EXISTS `encuesta_jovenes_beneficio`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_jovenes_beneficio` (
  `id` int(11) NOT NULL auto_increment,
  `jovenes_id` int(11) NOT NULL,
  `beneficiojoven_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jovenes_id` (`jovenes_id`,`beneficiojoven_id`),
  KEY `encuesta_jovenes_beneficio_5a8ed0ab` (`jovenes_id`),
  KEY `encuesta_jovenes_beneficio_685f4398` (`beneficiojoven_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_jovenes_beneficio`
--

LOCK TABLES `encuesta_jovenes_beneficio` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes_beneficio` DISABLE KEYS */;
INSERT INTO `encuesta_jovenes_beneficio` VALUES (1,17,2),(2,17,3),(3,21,2),(4,21,3),(5,21,6),(6,24,2),(7,25,2),(8,25,3),(9,26,3),(10,26,4),(11,27,1),(12,27,2),(13,27,3),(14,27,4),(15,27,6),(16,28,3),(17,28,5),(18,29,2),(19,29,3),(20,29,4),(21,29,5),(22,34,2),(23,34,3),(24,35,1),(25,35,2),(26,40,1),(27,40,2),(28,40,3),(29,40,4),(30,40,5),(31,40,6),(32,41,1),(33,41,2),(34,41,3),(35,41,4),(36,41,5),(37,41,6),(38,45,2),(39,45,5),(40,49,5);
/*!40000 ALTER TABLE `encuesta_jovenes_beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes_conformado`
--

DROP TABLE IF EXISTS `encuesta_jovenes_conformado`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_jovenes_conformado` (
  `id` int(11) NOT NULL auto_increment,
  `jovenes_id` int(11) NOT NULL,
  `admonactual_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jovenes_id` (`jovenes_id`,`admonactual_id`),
  KEY `encuesta_jovenes_conformado_5a8ed0ab` (`jovenes_id`),
  KEY `encuesta_jovenes_conformado_103d94ee` (`admonactual_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_jovenes_conformado`
--

LOCK TABLES `encuesta_jovenes_conformado` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes_conformado` DISABLE KEYS */;
INSERT INTO `encuesta_jovenes_conformado` VALUES (1,15,1),(2,15,2),(3,15,3),(4,16,1),(5,16,2),(6,16,3),(7,17,1),(8,17,2),(9,17,3),(10,21,1),(11,21,2),(12,21,3),(13,22,1),(14,22,2),(15,22,3),(16,25,1),(17,25,2),(18,25,3),(19,26,1),(20,26,2),(21,26,3),(22,27,1),(23,27,2),(24,27,3),(25,28,1),(26,29,1),(27,30,1),(28,30,2),(29,32,1),(30,34,1),(31,34,2),(32,34,3),(33,35,1),(34,35,2),(35,36,1),(36,38,1),(37,38,2),(38,40,1),(39,40,2),(40,41,1),(41,41,2),(42,42,1),(43,42,2),(44,44,1),(45,44,2),(46,44,3),(47,45,1),(48,45,2),(49,47,1),(50,47,2),(51,48,1),(52,48,2),(53,48,3),(54,50,1),(55,50,2);
/*!40000 ALTER TABLE `encuesta_jovenes_conformado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes_conformarse`
--

DROP TABLE IF EXISTS `encuesta_jovenes_conformarse`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_jovenes_conformarse` (
  `id` int(11) NOT NULL auto_increment,
  `jovenes_id` int(11) NOT NULL,
  `admonactual_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jovenes_id` (`jovenes_id`,`admonactual_id`),
  KEY `encuesta_jovenes_conformarse_5a8ed0ab` (`jovenes_id`),
  KEY `encuesta_jovenes_conformarse_103d94ee` (`admonactual_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_jovenes_conformarse`
--

LOCK TABLES `encuesta_jovenes_conformarse` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes_conformarse` DISABLE KEYS */;
INSERT INTO `encuesta_jovenes_conformarse` VALUES (1,15,1),(2,15,2),(3,15,3),(4,16,1),(5,16,2),(6,16,3),(7,17,1),(8,17,2),(9,17,3),(10,21,1),(11,21,2),(12,21,3),(13,22,1),(14,22,2),(15,22,3),(16,24,1),(17,24,2),(18,24,3),(19,25,1),(20,25,2),(21,25,3),(22,26,1),(23,26,2),(24,26,3),(25,27,1),(26,27,2),(27,27,3),(28,28,1),(29,28,2),(30,28,3),(31,29,1),(32,29,2),(33,29,3),(34,30,1),(35,30,2),(36,30,3),(37,32,1),(38,32,2),(39,32,3),(40,34,1),(41,34,2),(42,34,3),(43,35,1),(44,35,2),(45,35,3),(46,36,1),(47,36,2),(48,36,3),(49,38,1),(50,38,2),(51,38,3),(52,40,1),(53,40,2),(54,40,3),(55,41,1),(56,41,2),(57,41,3),(58,42,1),(59,42,2),(60,42,3),(61,44,1),(62,44,2),(63,44,3),(64,45,1),(65,45,2),(66,45,3),(67,47,1),(68,47,2),(69,47,3),(70,48,1),(71,48,2),(72,48,3),(73,50,1),(74,50,2),(75,50,3),(76,51,1),(77,51,2),(78,51,3);
/*!40000 ALTER TABLE `encuesta_jovenes_conformarse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_jovenes_quiero_miembro_junta`
--

DROP TABLE IF EXISTS `encuesta_jovenes_quiero_miembro_junta`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_jovenes_quiero_miembro_junta` (
  `id` int(11) NOT NULL auto_increment,
  `jovenes_id` int(11) NOT NULL,
  `miembrojoven_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jovenes_id` (`jovenes_id`,`miembrojoven_id`),
  KEY `encuesta_jovenes_quiero_miembro_junta_5a8ed0ab` (`jovenes_id`),
  KEY `encuesta_jovenes_quiero_miembro_junta_4e137ca3` (`miembrojoven_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_jovenes_quiero_miembro_junta`
--

LOCK TABLES `encuesta_jovenes_quiero_miembro_junta` WRITE;
/*!40000 ALTER TABLE `encuesta_jovenes_quiero_miembro_junta` DISABLE KEYS */;
INSERT INTO `encuesta_jovenes_quiero_miembro_junta` VALUES (1,6,1),(2,6,3),(3,8,1),(4,8,2),(5,8,3),(6,9,1),(7,11,1),(8,24,1),(9,24,3),(10,25,1),(11,25,2),(12,25,3),(13,29,1),(14,29,2),(15,29,3),(16,30,1),(17,32,1),(18,32,2),(19,32,3),(20,35,2),(21,35,3),(22,38,3),(23,39,2),(24,42,3);
/*!40000 ALTER TABLE `encuesta_jovenes_quiero_miembro_junta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_mental`
--

DROP TABLE IF EXISTS `encuesta_mental`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_mental` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_mental_1bb8f392` (`content_type_id`),
  KEY `encuesta_mental_7d61c803` (`object_id`),
  KEY `encuesta_mental_37c55af2` (`pregunta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=399 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_mental`
--

LOCK TABLES `encuesta_mental` WRITE;
/*!40000 ALTER TABLE `encuesta_mental` DISABLE KEYS */;
INSERT INTO `encuesta_mental` VALUES (243,88,62,6,10),(242,88,62,4,10),(241,88,62,4,10),(240,88,62,3,10),(239,88,62,2,10),(238,88,62,1,3),(7,88,2,1,2),(8,88,2,2,9),(9,88,2,3,10),(10,88,2,4,10),(11,88,2,5,10),(12,88,2,6,10),(13,88,3,1,1),(14,88,3,2,10),(15,88,3,3,10),(16,88,3,4,10),(17,88,3,5,9),(18,88,3,6,10),(19,88,5,1,2),(20,88,5,2,10),(21,88,5,3,9),(22,88,5,4,9),(23,88,5,5,10),(24,88,5,6,10),(25,88,6,1,2),(26,88,6,2,10),(27,88,6,3,10),(28,88,6,4,10),(29,88,6,5,10),(30,88,6,6,10),(31,88,7,1,4),(32,88,7,2,10),(33,88,7,3,10),(34,88,7,4,10),(35,88,7,5,10),(36,88,7,6,10),(37,88,8,1,3),(38,88,8,2,10),(39,88,8,3,10),(40,88,8,4,10),(41,88,8,5,10),(42,88,8,6,10),(43,88,10,1,4),(44,88,10,2,10),(45,88,10,3,10),(46,88,10,4,10),(47,88,10,5,9),(48,88,10,6,11),(49,88,11,1,3),(50,88,11,2,10),(51,88,11,3,10),(52,88,11,4,10),(53,88,11,5,10),(54,88,11,6,10),(55,88,12,1,3),(56,88,12,2,9),(57,88,12,3,10),(58,88,12,4,10),(59,88,12,5,9),(60,88,12,6,10),(61,88,13,1,3),(62,88,13,2,10),(63,88,13,3,10),(64,88,13,4,10),(65,88,13,5,10),(66,88,13,6,10),(67,88,14,1,1),(68,88,15,1,2),(69,88,15,2,10),(70,88,15,3,10),(71,88,15,4,10),(72,88,15,5,10),(73,88,15,6,9),(74,88,16,1,1),(75,88,18,1,1),(76,88,19,1,2),(77,88,19,2,10),(78,88,19,3,10),(79,88,19,4,10),(80,88,19,5,10),(81,88,19,6,10),(82,88,20,1,1),(83,88,21,1,4),(84,88,22,1,3),(85,88,22,2,11),(86,88,22,3,11),(87,88,22,4,10),(88,88,22,5,10),(89,88,22,6,10),(90,88,23,1,3),(91,88,23,2,10),(92,88,23,3,10),(93,88,23,4,10),(94,88,23,5,10),(95,88,23,6,10),(96,88,24,1,3),(97,88,24,2,10),(98,88,24,3,11),(99,88,24,4,10),(100,88,24,5,10),(101,88,24,6,10),(102,88,25,1,5),(103,88,26,1,3),(104,88,26,2,10),(105,88,26,3,11),(106,88,26,4,10),(107,88,26,5,10),(108,88,26,6,9),(109,88,27,1,2),(110,88,27,2,10),(111,88,27,3,10),(112,88,27,4,10),(113,88,27,5,10),(114,88,27,6,10),(115,88,28,1,2),(116,88,28,2,10),(117,88,28,3,10),(118,88,28,4,10),(119,88,28,5,10),(120,88,28,6,10),(121,88,29,1,5),(122,88,30,1,3),(123,88,30,2,10),(124,88,30,3,10),(125,88,30,4,10),(126,88,30,5,10),(127,88,30,6,10),(128,88,31,1,2),(129,88,31,2,10),(130,88,31,3,10),(131,88,31,4,9),(132,88,31,5,10),(133,88,31,6,10),(134,88,32,1,5),(135,88,33,1,3),(136,88,33,2,10),(137,88,33,3,10),(138,88,33,4,10),(139,88,33,5,10),(140,88,33,6,10),(141,88,34,1,2),(142,88,34,2,9),(143,88,34,3,10),(144,88,34,4,10),(145,88,34,5,10),(146,88,34,6,10),(147,88,35,1,3),(148,88,35,2,10),(149,88,35,3,10),(150,88,35,4,10),(151,88,35,5,10),(152,88,35,6,10),(153,88,36,1,2),(154,88,36,2,10),(155,88,36,3,10),(156,88,36,4,10),(157,88,36,5,10),(158,88,36,6,10),(159,88,37,1,2),(160,88,37,2,10),(161,88,37,3,10),(162,88,37,4,10),(163,88,37,5,10),(164,88,37,6,10),(165,88,39,1,3),(166,88,39,2,10),(167,88,39,3,10),(168,88,39,4,10),(169,88,39,5,10),(170,88,39,6,10),(171,88,40,1,3),(172,88,40,2,10),(173,88,40,3,10),(174,88,40,4,10),(175,88,40,5,10),(176,88,40,5,10),(177,88,41,1,2),(178,88,41,2,10),(179,88,41,3,10),(180,88,41,4,10),(181,88,41,5,9),(182,88,41,6,10),(183,88,38,1,2),(184,88,38,2,10),(185,88,38,3,10),(186,88,38,4,10),(187,88,38,5,10),(188,88,38,6,10),(189,88,42,1,4),(190,88,42,6,10),(191,88,43,1,1),(192,88,44,1,1),(193,88,45,1,3),(194,88,45,2,11),(195,88,45,3,11),(196,88,45,4,10),(197,88,45,5,10),(198,88,45,6,9),(199,88,46,1,3),(200,88,46,2,10),(201,88,46,3,10),(202,88,46,4,10),(203,88,46,5,10),(204,88,46,6,10),(205,88,47,1,1),(206,88,48,1,3),(207,88,48,2,10),(208,88,48,3,10),(209,88,48,4,9),(210,88,48,5,10),(211,88,48,6,10),(212,88,51,1,3),(213,88,51,2,9),(214,88,51,3,9),(215,88,51,4,9),(216,88,51,5,11),(217,88,51,6,10),(218,88,52,1,1),(219,88,54,1,1),(220,88,53,1,3),(221,88,53,2,10),(222,88,53,3,10),(223,88,53,4,10),(224,88,53,5,10),(225,88,53,6,10),(226,88,55,1,2),(227,88,55,2,10),(228,88,55,4,10),(229,88,55,5,10),(230,88,55,6,10),(231,88,59,1,1),(232,88,60,1,5),(233,88,60,2,11),(234,88,60,3,11),(235,88,60,4,11),(236,88,60,5,11),(237,88,60,6,11),(244,88,63,1,3),(245,88,63,2,10),(246,88,63,3,10),(247,88,63,4,10),(248,88,63,5,10),(249,88,63,6,10),(250,88,64,1,3),(251,88,64,2,10),(252,88,64,3,10),(253,88,64,4,10),(254,88,64,5,10),(255,88,64,6,10),(256,88,66,1,3),(257,88,66,2,9),(258,88,66,3,9),(259,88,66,4,10),(260,88,66,5,10),(261,88,66,6,10),(262,88,67,1,3),(263,88,67,2,10),(264,88,67,3,10),(265,88,67,4,10),(266,88,67,5,10),(267,88,67,6,10),(268,88,65,1,3),(269,88,65,2,10),(270,88,65,3,10),(271,88,65,4,10),(272,88,65,5,10),(273,88,65,6,10),(274,88,68,1,3),(275,88,68,2,10),(276,88,68,3,10),(277,88,68,4,10),(278,88,68,5,10),(279,88,68,6,10),(280,88,69,1,3),(281,88,69,2,10),(282,88,69,3,10),(283,88,69,4,10),(284,88,69,5,10),(285,88,69,6,10),(286,88,70,1,2),(287,88,70,2,10),(288,88,70,3,10),(289,88,70,4,9),(290,88,70,5,10),(291,88,70,6,11),(292,88,72,1,2),(293,88,72,2,10),(294,88,72,3,10),(295,88,72,4,10),(296,88,72,5,10),(297,88,72,6,10),(298,88,71,1,4),(299,88,71,2,10),(300,88,71,3,10),(301,88,71,4,10),(302,88,71,5,10),(303,88,73,1,5),(304,88,74,1,3),(305,88,74,2,10),(306,88,74,3,10),(307,88,74,4,10),(308,88,74,5,10),(309,88,74,6,10),(310,88,75,1,3),(311,88,75,2,10),(312,88,75,3,10),(313,88,75,4,10),(314,88,75,5,10),(315,88,75,6,10),(316,88,77,1,10),(317,88,77,2,10),(318,88,77,3,10),(319,88,77,4,10),(320,88,77,5,10),(321,88,77,6,10),(322,88,78,1,10),(323,88,78,2,10),(324,88,78,3,10),(325,88,78,4,10),(326,88,78,5,10),(327,88,78,6,10),(328,88,76,1,3),(329,88,76,2,10),(330,88,76,3,10),(331,88,76,4,10),(332,88,76,5,10),(333,88,76,6,10),(334,88,79,1,4),(335,88,80,1,3),(336,88,80,2,10),(337,88,80,3,10),(338,88,80,4,10),(339,88,80,5,10),(340,88,80,6,10),(341,88,81,1,3),(342,88,81,2,10),(343,88,81,3,10),(344,88,81,4,10),(345,88,81,4,10),(346,88,81,6,10),(347,88,83,1,3),(348,88,83,2,10),(349,88,83,3,10),(350,88,83,4,10),(351,88,83,5,10),(352,88,83,6,10),(353,88,82,1,3),(354,88,82,2,10),(355,88,82,3,10),(356,88,82,4,10),(357,88,82,5,10),(358,88,82,6,9),(359,88,84,1,2),(360,88,84,2,11),(361,88,84,3,10),(362,88,84,4,10),(363,88,84,5,10),(364,88,84,6,9),(365,88,85,1,3),(366,88,85,2,10),(367,88,85,3,10),(368,88,85,4,9),(369,88,85,5,9),(370,88,85,6,10),(371,88,86,1,5),(372,88,88,1,3),(373,88,88,2,10),(374,88,88,3,10),(375,88,88,4,10),(376,88,88,5,10),(377,88,88,6,10),(378,88,89,1,5),(379,88,90,1,3),(380,88,90,2,10),(381,88,90,3,10),(382,88,90,4,10),(383,88,90,5,10),(384,88,90,6,10),(385,88,91,1,3),(386,88,91,2,10),(387,88,91,3,10),(388,88,91,4,10),(389,88,91,5,10),(390,88,91,6,10),(391,88,92,1,3),(392,88,92,2,10),(393,88,92,3,10),(394,88,92,4,10),(395,88,92,5,10),(396,88,92,6,10),(397,88,93,1,5),(398,88,94,1,5);
/*!40000 ALTER TABLE `encuesta_mental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_meses`
--

DROP TABLE IF EXISTS `encuesta_meses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_meses` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_miembrojoven` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_migracion` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `edades` int(11) NOT NULL,
  `n_total` int(11) NOT NULL,
  `viven_casa` int(11) NOT NULL,
  `viven_comu` int(11) NOT NULL,
  `viven_fuera` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_migracion_1bb8f392` (`content_type_id`),
  KEY `encuesta_migracion_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_migracion`
--

LOCK TABLES `encuesta_migracion` WRITE;
/*!40000 ALTER TABLE `encuesta_migracion` DISABLE KEYS */;
INSERT INTO `encuesta_migracion` VALUES (237,88,64,1,3,2,1,0),(236,88,63,5,1,1,0,0),(235,88,63,2,3,3,1,0),(234,88,63,1,2,2,1,1),(5,88,2,2,1,0,1,0),(6,88,2,3,1,1,0,0),(7,88,2,4,2,2,0,0),(8,88,3,1,5,3,2,0),(9,88,3,2,2,2,0,0),(10,88,3,3,1,1,0,0),(11,88,3,4,1,1,0,0),(12,88,4,1,1,1,0,0),(13,88,4,2,1,0,0,1),(14,88,4,3,2,1,1,0),(15,88,4,5,2,0,0,2),(16,88,5,1,5,1,3,1),(17,88,5,2,6,1,2,3),(18,88,5,3,1,1,0,0),(19,88,5,5,4,4,0,0),(20,88,5,6,1,1,0,0),(21,88,6,1,2,2,0,0),(22,88,6,2,3,3,0,0),(23,88,6,3,2,2,0,0),(24,88,6,5,2,2,0,0),(25,88,7,1,2,2,0,0),(26,88,7,2,3,1,0,2),(27,88,7,6,1,1,0,0),(28,88,8,1,3,3,0,0),(29,88,8,2,5,3,2,0),(30,88,8,3,4,4,0,0),(31,88,8,4,2,2,0,0),(32,88,8,5,3,3,0,0),(33,88,8,6,1,1,0,0),(34,88,9,1,3,3,0,0),(35,88,9,2,4,4,0,0),(36,88,9,3,2,2,0,0),(37,88,9,4,1,1,0,0),(38,88,9,5,1,1,0,0),(39,88,10,1,3,3,0,0),(40,88,10,2,2,1,0,1),(41,88,10,4,1,1,0,0),(42,88,10,5,1,1,0,0),(43,88,11,1,2,2,0,0),(44,88,11,2,4,3,1,0),(45,88,11,3,1,1,1,0),(46,88,11,4,1,1,0,0),(47,88,11,5,2,2,0,0),(48,88,11,6,2,2,0,0),(49,88,12,1,2,2,0,0),(50,88,12,2,3,3,0,0),(51,88,12,5,2,2,0,0),(52,88,13,1,1,1,0,0),(53,88,13,2,2,2,0,0),(54,88,13,5,1,1,0,0),(55,88,13,6,2,2,0,0),(56,88,14,2,1,1,0,0),(57,88,14,5,1,1,0,0),(58,88,15,1,1,1,0,0),(59,88,15,2,1,1,0,0),(60,88,15,3,2,2,0,0),(61,88,15,5,1,1,0,0),(62,88,15,6,1,1,0,0),(63,88,16,1,4,2,0,2),(64,88,16,2,1,1,0,0),(65,88,17,1,1,1,1,0),(66,88,17,2,3,0,0,3),(67,88,18,1,3,1,1,1),(68,88,18,2,3,2,0,1),(69,88,18,5,1,1,1,0),(70,88,19,1,1,1,1,0),(71,88,19,2,1,1,1,0),(72,88,19,3,2,2,2,0),(73,88,19,5,2,2,2,0),(74,88,19,6,1,1,0,1),(75,88,20,1,4,4,0,0),(76,88,20,2,5,1,3,1),(77,88,20,4,1,1,0,0),(78,88,20,6,1,1,0,0),(79,88,21,1,1,1,0,0),(80,88,21,2,1,1,0,0),(81,88,21,5,1,1,0,0),(82,88,21,6,2,2,0,0),(83,88,22,1,3,2,1,0),(84,88,22,2,3,1,1,1),(85,88,23,1,1,1,0,0),(86,88,23,2,3,3,0,0),(87,88,23,3,1,1,0,0),(88,88,23,6,1,1,0,0),(89,88,24,1,1,1,0,0),(90,88,24,2,1,1,0,0),(91,88,24,6,2,2,0,0),(92,88,25,1,3,3,0,0),(93,88,25,1,1,1,0,0),(94,88,25,4,2,2,0,0),(95,88,26,1,1,1,0,0),(96,88,26,2,1,1,0,0),(97,88,26,3,1,1,0,0),(98,88,26,5,2,2,0,0),(99,88,27,1,1,1,0,0),(100,88,27,2,1,1,0,0),(101,88,27,3,1,1,0,0),(102,88,27,6,2,2,0,0),(103,88,28,1,4,4,0,0),(104,88,28,2,3,3,0,0),(105,88,28,5,1,1,0,0),(106,88,28,6,1,1,0,0),(107,88,29,1,4,1,1,2),(108,88,29,2,4,4,0,0),(109,88,29,4,1,1,0,0),(110,88,29,5,1,1,0,0),(111,88,30,1,3,3,0,0),(112,88,30,2,3,3,0,0),(113,88,30,3,1,1,0,0),(114,88,22,3,2,2,0,0),(115,88,22,4,2,2,0,0),(116,88,22,6,1,1,0,0),(117,88,31,1,1,1,0,0),(118,88,31,2,1,1,0,0),(119,88,31,3,1,1,0,0),(120,88,31,5,1,1,0,0),(121,88,31,6,1,1,0,0),(122,88,32,1,4,1,2,1),(123,88,32,2,4,2,0,2),(124,88,32,3,3,3,0,0),(125,88,32,4,1,1,0,0),(126,88,32,6,1,1,0,0),(127,88,33,1,1,1,0,0),(128,88,33,2,1,1,0,0),(129,88,33,5,1,1,0,0),(130,88,33,6,1,1,0,0),(131,88,34,1,1,0,1,0),(132,88,34,2,1,0,1,0),(133,88,34,3,1,1,0,0),(134,88,35,1,1,1,0,0),(135,88,35,1,3,1,0,2),(136,88,35,5,1,1,0,0),(137,88,36,1,1,1,0,0),(138,88,36,2,2,2,0,0),(139,88,36,3,4,4,0,0),(140,88,36,6,1,1,0,0),(141,88,37,1,3,3,0,0),(142,88,37,2,3,1,1,1),(143,88,37,5,2,2,0,0),(144,88,38,1,4,3,1,0),(145,88,38,2,2,2,0,0),(146,88,38,5,1,1,0,0),(147,88,39,1,3,2,1,0),(148,88,39,2,3,2,1,0),(149,88,39,4,1,1,0,0),(150,88,39,5,1,1,0,0),(151,88,39,5,2,2,0,0),(152,88,40,1,1,1,0,0),(153,88,40,2,1,1,0,0),(154,88,40,5,1,1,0,0),(155,88,40,6,2,2,0,0),(156,88,41,1,1,1,0,0),(157,88,41,2,1,1,0,0),(158,88,41,4,2,2,0,0),(159,88,41,6,1,1,0,0),(160,88,42,1,6,1,4,1),(161,88,42,2,5,3,2,0),(162,88,42,3,1,1,0,0),(163,88,42,6,1,1,0,0),(164,88,43,1,3,1,0,2),(165,88,43,2,2,1,0,1),(166,88,43,4,2,2,0,0),(167,88,44,1,2,1,0,1),(168,88,44,2,1,1,0,0),(169,88,44,4,2,1,1,0),(170,88,45,1,7,4,3,0),(171,88,45,2,7,4,3,0),(172,88,45,3,1,1,0,0),(173,88,45,4,2,2,0,0),(174,88,45,5,1,1,0,0),(175,88,45,6,3,3,0,0),(176,88,46,1,2,2,0,0),(177,88,46,2,1,1,0,0),(178,88,46,3,1,1,0,0),(179,88,46,4,1,1,0,0),(180,88,46,5,1,1,0,0),(181,88,47,1,4,3,0,1),(182,88,47,2,2,2,0,0),(183,88,47,4,1,1,0,0),(184,88,48,1,1,1,0,0),(185,88,48,2,1,1,0,0),(186,88,48,5,3,3,0,0),(187,88,48,6,1,1,0,0),(188,88,49,1,4,2,0,2),(189,88,49,2,7,1,5,1),(190,88,49,3,2,2,0,0),(191,88,49,6,1,1,0,0),(195,88,51,2,1,1,0,0),(194,88,51,1,2,2,0,0),(196,88,51,3,1,1,0,0),(197,88,51,4,2,2,0,0),(198,88,51,6,1,1,0,0),(199,88,52,1,1,1,0,0),(200,88,52,2,1,1,0,0),(201,88,52,3,1,1,0,0),(202,88,52,4,1,1,0,0),(203,88,52,5,1,1,0,0),(204,88,52,6,1,1,0,0),(205,88,53,1,10,2,6,2),(206,88,53,2,5,1,2,2),(207,88,54,1,2,2,0,0),(208,88,54,2,1,1,0,0),(209,88,54,4,1,1,0,0),(210,88,54,5,3,3,0,0),(211,88,54,6,1,1,0,0),(212,88,55,1,1,1,0,0),(213,88,55,2,2,2,0,0),(214,88,55,4,1,1,0,0),(215,88,55,6,2,2,0,0),(216,88,56,1,2,2,0,0),(217,88,56,2,2,2,0,0),(218,88,56,6,2,2,0,0),(219,88,57,1,3,2,0,1),(220,88,57,2,2,2,0,0),(221,88,58,1,2,2,0,0),(222,88,58,2,3,1,1,1),(223,88,59,1,4,3,0,1),(224,88,59,2,2,1,0,1),(225,88,59,3,1,1,0,0),(226,88,59,4,1,1,0,0),(227,88,60,1,2,1,0,1),(228,88,60,2,1,1,0,0),(229,88,60,4,1,1,0,0),(230,88,60,5,3,3,0,0),(231,88,62,1,4,4,0,0),(232,88,62,2,3,2,1,0),(233,88,62,5,1,0,0,0),(238,88,64,2,2,2,0,0),(239,88,64,3,1,1,0,0),(240,88,64,5,1,1,0,0),(241,88,65,1,2,2,0,0),(242,88,65,2,1,1,0,0),(243,88,65,4,1,1,0,0),(244,88,66,1,5,5,0,0),(245,88,66,2,4,2,1,1),(246,88,66,3,2,2,0,0),(247,88,66,5,1,1,0,0),(248,88,66,6,1,1,0,0),(249,88,67,1,3,3,0,0),(250,88,67,2,3,3,0,1),(251,88,67,3,1,1,0,0),(252,88,67,4,1,1,0,0),(253,88,68,1,2,2,0,0),(254,88,68,2,3,3,0,0),(255,88,68,3,1,1,0,0),(256,88,68,4,1,1,0,0),(257,88,68,5,1,1,0,0),(258,88,69,1,6,5,1,0),(259,88,69,2,2,1,1,0),(260,88,69,5,4,4,0,0),(261,88,69,6,1,1,0,0),(262,88,70,1,5,1,2,1),(263,88,70,2,4,1,2,1),(264,88,70,3,1,1,0,0),(265,88,70,4,2,2,0,0),(266,88,72,1,2,2,0,0),(267,88,72,2,1,1,0,0),(268,88,72,3,1,1,0,0),(269,88,72,5,1,1,0,0),(270,88,71,1,5,1,3,1),(271,88,71,2,2,2,0,0),(272,88,73,1,1,1,0,0),(273,88,73,2,2,2,0,0),(274,88,73,5,1,1,0,0),(275,88,74,1,4,3,1,0),(276,88,74,2,5,3,2,0),(277,88,75,1,3,2,1,0),(278,88,75,2,3,2,1,0),(279,88,75,3,2,2,0,0),(280,88,75,6,1,1,0,0),(281,88,76,1,3,2,1,0),(282,88,76,2,4,2,2,0),(283,88,77,1,2,2,0,0),(284,88,77,2,1,1,0,0),(285,88,77,3,1,1,0,0),(286,88,77,4,1,1,0,0),(287,88,78,1,2,2,0,0),(288,88,78,2,1,1,0,0),(289,88,78,3,1,1,0,0),(290,88,78,4,1,1,0,0),(291,88,79,1,4,2,2,0),(292,88,79,2,3,1,2,0),(293,88,79,6,1,1,0,0),(294,88,80,1,3,2,0,1),(295,88,80,2,3,2,0,1),(296,88,80,4,3,3,0,0),(297,88,80,5,1,1,0,0),(298,88,80,6,1,1,0,0),(299,88,81,1,2,2,0,0),(300,88,81,2,2,2,0,0),(301,88,81,3,2,2,0,0),(302,88,81,4,2,2,0,0),(303,88,81,5,1,1,0,0),(304,88,82,1,2,2,0,0),(305,88,82,2,2,2,0,0),(306,88,82,3,1,1,0,0),(307,88,82,4,1,1,0,0),(308,88,82,5,2,2,0,0),(309,88,82,6,2,2,0,0),(310,88,83,1,2,2,0,0),(311,88,83,2,3,3,0,0),(312,88,83,4,1,1,0,0),(313,88,83,5,1,1,0,0),(314,88,83,6,1,1,0,0),(315,88,84,1,1,1,0,0),(316,88,84,2,1,1,0,0),(317,88,84,5,2,2,0,0),(318,88,85,1,2,2,0,0),(319,88,85,2,1,1,0,0),(320,88,85,4,3,3,0,0),(321,88,85,5,2,2,0,0),(322,88,86,1,1,0,1,0),(323,88,86,2,3,0,2,1),(324,88,86,3,2,2,0,0),(325,88,86,6,2,2,0,0),(326,88,87,1,3,2,0,1),(327,88,88,1,3,3,0,0),(328,88,88,2,1,1,0,0),(329,88,88,3,1,1,0,0),(330,88,88,5,1,1,0,0),(331,88,89,1,3,2,0,1),(332,88,89,2,3,2,0,1),(333,88,89,5,2,2,0,0),(334,88,89,6,1,1,0,0),(335,88,90,1,1,1,0,0),(336,88,90,2,1,1,0,0),(337,88,90,5,2,2,0,0),(338,88,90,6,1,1,0,0),(339,88,91,1,1,1,0,0),(340,88,91,2,1,1,0,0),(341,88,91,3,2,2,0,0),(342,88,91,5,1,1,0,0),(343,88,92,1,5,3,2,0),(344,88,92,2,1,1,0,0),(345,88,92,3,1,1,0,0),(346,88,92,5,2,2,0,0),(347,88,93,1,3,2,1,0),(348,88,93,2,5,3,2,0),(349,88,93,5,2,0,0,0),(350,88,94,1,4,2,2,0),(351,88,94,2,3,3,0,0),(352,88,94,6,1,0,0,0);
/*!40000 ALTER TABLE `encuesta_migracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_migracion_razones`
--

DROP TABLE IF EXISTS `encuesta_migracion_razones`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_migracion_razones` (
  `id` int(11) NOT NULL auto_increment,
  `migracion_id` int(11) NOT NULL,
  `razonesmigracion_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `migracion_id` (`migracion_id`,`razonesmigracion_id`),
  KEY `encuesta_migracion_razones_776b8c7c` (`migracion_id`),
  KEY `encuesta_migracion_razones_4ce3477d` (`razonesmigracion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_migracion_razones`
--

LOCK TABLES `encuesta_migracion_razones` WRITE;
/*!40000 ALTER TABLE `encuesta_migracion_razones` DISABLE KEYS */;
INSERT INTO `encuesta_migracion_razones` VALUES (1,5,1),(2,13,6),(3,15,6),(4,16,1),(5,17,3),(6,26,1),(7,26,4),(8,40,3),(19,63,3),(10,66,1),(11,66,4),(12,67,1),(13,68,3),(14,74,5),(20,76,6),(21,84,6),(23,107,3),(22,107,1),(24,122,1),(25,123,1),(26,123,3),(27,135,3),(28,142,1),(29,160,1),(30,164,1),(31,165,3),(32,167,1),(33,167,3),(34,181,1),(35,188,1),(36,189,3),(40,206,1),(39,205,1),(41,219,1),(42,222,3),(43,223,1),(44,223,3),(45,224,4),(46,227,1),(47,234,1),(48,234,5),(49,245,1),(50,250,1),(51,262,3),(52,263,3),(53,270,1),(54,294,2),(55,295,2),(56,323,3),(57,326,1),(58,331,1),(59,332,4);
/*!40000 ALTER TABLE `encuesta_migracion_razones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_nombreherramienta`
--

DROP TABLE IF EXISTS `encuesta_nombreherramienta`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_nombreherramienta` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_nombretransporte` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_ocupacredito` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_organizacion` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `socio` int(11) default NULL,
  `desde_socio` int(11) default NULL,
  `socio_cooperativa` int(11) default NULL,
  `desde_socio_coop` int(11) default NULL,
  `hijos_socios` int(11) default NULL,
  `desde_hijo` int(11) default NULL,
  `miembro` int(11) default NULL,
  `desde_miembro` int(11) default NULL,
  `miembro_trabajo` int(11) default NULL,
  `desde_trabajo` int(11) default NULL,
  `cargo` int(11) default NULL,
  `desde_cargo` int(11) default NULL,
  `no_miembro` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_organizacion_1bb8f392` (`content_type_id`),
  KEY `encuesta_organizacion_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_organizacion`
--

LOCK TABLES `encuesta_organizacion` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion` DISABLE KEYS */;
INSERT INTO `encuesta_organizacion` VALUES (62,88,63,1,2,1,NULL,2,NULL,1,1,2,NULL,1,NULL,NULL),(2,88,2,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(3,88,3,1,2,1,1,2,NULL,1,2,1,2,1,1,NULL),(4,88,4,1,1,2,NULL,2,NULL,1,1,1,1,1,1,NULL),(5,88,5,1,2,2,NULL,2,NULL,1,1,1,1,1,1,NULL),(6,88,6,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(7,88,7,1,2,1,1,2,NULL,1,1,1,1,1,1,NULL),(8,88,8,1,2,1,2,1,2,1,2,1,2,1,2,NULL),(9,88,9,1,2,2,NULL,2,NULL,2,NULL,1,1,1,2,NULL),(10,88,10,1,2,2,NULL,2,NULL,1,2,1,2,1,2,NULL),(11,88,11,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(12,88,12,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(13,88,13,1,2,1,1,2,NULL,2,NULL,1,2,1,2,NULL),(14,88,14,1,2,NULL,NULL,2,NULL,2,NULL,1,2,1,2,NULL),(15,88,15,1,2,2,NULL,2,NULL,1,2,1,2,1,2,NULL),(16,88,16,1,2,NULL,NULL,2,NULL,1,NULL,1,2,1,2,NULL),(17,88,17,1,1,NULL,NULL,2,NULL,NULL,NULL,2,NULL,NULL,NULL,2),(18,88,18,1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(19,88,19,1,1,2,NULL,2,NULL,1,1,1,1,1,1,NULL),(20,88,20,1,1,NULL,NULL,1,1,2,NULL,2,NULL,NULL,NULL,2),(21,88,21,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(22,88,22,1,2,1,1,1,1,2,NULL,2,NULL,NULL,NULL,2),(23,88,23,1,2,1,1,2,NULL,1,1,1,1,1,1,NULL),(24,88,24,1,1,1,1,2,NULL,1,1,2,NULL,1,1,NULL),(25,88,25,1,2,1,2,2,NULL,1,1,1,2,1,1,NULL),(26,88,26,1,1,2,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,1),(27,88,27,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(28,88,28,1,1,NULL,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,2),(29,88,29,1,2,NULL,NULL,2,NULL,1,2,1,2,1,1,NULL),(30,88,30,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(31,88,31,1,NULL,2,NULL,2,NULL,1,1,1,1,1,1,NULL),(32,88,32,1,2,NULL,NULL,NULL,NULL,1,2,1,2,1,2,NULL),(33,88,33,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(34,88,34,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(35,88,35,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(36,88,36,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(37,88,37,1,NULL,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(38,88,38,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(39,88,39,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(40,88,40,1,1,1,1,2,NULL,1,1,1,1,1,1,NULL),(41,88,41,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,NULL),(42,88,42,1,2,2,NULL,2,NULL,1,1,1,1,1,1,NULL),(43,88,43,1,2,2,NULL,2,NULL,1,1,1,1,1,1,NULL),(44,88,44,1,1,1,1,2,1,2,NULL,2,NULL,NULL,NULL,2),(45,88,45,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(46,88,46,1,2,2,NULL,2,NULL,2,NULL,1,1,1,1,NULL),(47,88,47,1,2,1,2,2,NULL,1,NULL,2,NULL,NULL,NULL,NULL),(48,88,48,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(49,88,49,1,NULL,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(51,88,51,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,NULL),(52,88,52,1,2,2,NULL,2,NULL,2,NULL,1,2,2,NULL,NULL),(53,88,53,1,2,1,1,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(54,88,54,1,2,2,NULL,2,NULL,2,NULL,1,2,1,1,NULL),(55,88,55,2,NULL,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(56,88,56,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(57,88,57,1,2,2,NULL,1,1,2,NULL,2,NULL,NULL,NULL,2),(58,88,58,1,2,2,NULL,2,NULL,2,NULL,1,2,1,2,NULL),(59,88,59,1,2,2,NULL,2,NULL,1,1,1,1,1,2,NULL),(60,88,60,1,2,2,NULL,2,NULL,2,NULL,1,2,1,1,NULL),(61,88,62,1,2,1,2,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(63,88,64,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(64,88,65,1,2,2,NULL,2,NULL,2,NULL,2,NULL,2,NULL,1),(65,88,66,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(66,88,67,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(67,88,68,1,1,NULL,NULL,2,NULL,NULL,NULL,1,NULL,1,NULL,NULL),(68,88,69,1,1,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(69,88,70,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(70,88,72,1,2,1,2,2,NULL,1,2,1,2,1,2,NULL),(71,88,71,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(72,88,73,1,2,NULL,NULL,2,NULL,2,NULL,1,NULL,NULL,NULL,2),(73,88,74,1,2,2,NULL,2,NULL,1,1,1,1,2,NULL,NULL),(74,88,75,1,2,1,2,2,NULL,1,2,1,2,1,2,NULL),(75,88,76,1,2,1,2,1,2,2,NULL,1,1,2,NULL,NULL),(76,88,77,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(77,88,78,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(78,88,79,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(79,88,80,1,2,2,NULL,1,1,1,1,1,1,2,NULL,NULL),(80,88,81,1,2,2,NULL,2,NULL,2,NULL,1,NULL,NULL,NULL,NULL),(81,88,82,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(82,88,83,2,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(83,88,84,1,NULL,2,NULL,1,NULL,2,NULL,2,NULL,NULL,NULL,2),(84,88,85,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(85,88,86,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(86,88,87,1,2,NULL,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(87,88,88,1,2,1,2,2,NULL,1,1,1,NULL,1,NULL,NULL),(88,88,89,1,2,NULL,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(89,88,90,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2),(90,88,91,1,2,2,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(91,88,92,1,2,2,NULL,2,NULL,2,NULL,1,1,1,1,NULL),(92,88,93,1,2,NULL,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,1),(93,88,94,1,2,NULL,NULL,2,NULL,2,NULL,2,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `encuesta_organizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_beneficio`
--

DROP TABLE IF EXISTS `encuesta_organizacion_beneficio`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_organizacion_beneficio` (
  `id` int(11) NOT NULL auto_increment,
  `organizacion_id` int(11) NOT NULL,
  `beneficios_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`beneficios_id`),
  KEY `encuesta_organizacion_beneficio_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_beneficio_d284039` (`beneficios_id`)
) ENGINE=MyISAM AUTO_INCREMENT=496 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_organizacion_beneficio`
--

LOCK TABLES `encuesta_organizacion_beneficio` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_beneficio` DISABLE KEYS */;
INSERT INTO `encuesta_organizacion_beneficio` VALUES (368,63,3),(367,63,1),(366,62,7),(365,62,5),(364,62,3),(363,62,1),(362,62,8),(8,2,8),(9,2,1),(10,2,2),(11,2,3),(12,2,5),(13,3,1),(14,3,2),(15,3,3),(16,3,5),(17,3,6),(18,3,7),(19,3,8),(20,4,1),(21,4,3),(22,4,5),(23,4,6),(24,4,7),(25,5,1),(26,5,3),(27,5,4),(28,5,5),(29,5,6),(30,5,7),(31,5,8),(32,6,1),(33,6,3),(34,6,4),(35,6,5),(36,6,6),(37,6,7),(38,7,1),(39,7,2),(40,7,3),(41,7,5),(42,7,6),(43,7,7),(44,9,1),(45,9,3),(46,9,4),(47,9,5),(48,9,6),(49,9,7),(50,10,1),(51,10,2),(52,10,3),(53,10,4),(54,10,5),(55,10,6),(56,10,7),(57,10,8),(58,11,1),(59,11,2),(60,11,3),(61,11,4),(62,11,5),(63,11,6),(64,11,7),(65,11,8),(66,13,8),(67,13,1),(68,13,2),(69,13,3),(70,13,7),(71,14,1),(72,14,3),(73,14,4),(74,14,5),(75,14,6),(76,14,7),(77,14,8),(181,15,8),(180,15,7),(179,15,6),(178,15,5),(177,15,4),(176,15,3),(175,15,2),(174,15,1),(86,16,1),(87,16,2),(88,16,3),(89,16,5),(90,16,6),(91,16,7),(92,16,8),(93,18,1),(94,18,2),(95,18,3),(96,18,4),(97,18,5),(98,18,6),(99,18,7),(100,18,8),(101,19,1),(102,19,3),(103,19,5),(104,19,6),(105,19,7),(106,19,8),(107,20,1),(108,20,2),(109,20,3),(110,20,5),(111,20,6),(112,20,7),(113,20,8),(114,21,1),(115,21,2),(116,21,3),(117,21,5),(118,21,6),(119,21,7),(120,21,8),(121,22,1),(122,22,2),(123,22,5),(124,22,6),(125,22,7),(126,22,8),(127,23,1),(128,23,2),(129,23,3),(130,23,5),(131,23,6),(132,23,7),(133,23,8),(134,24,1),(135,24,2),(136,24,3),(137,24,5),(138,24,6),(139,24,7),(140,24,8),(141,25,1),(142,25,3),(143,25,5),(144,25,6),(145,25,7),(146,25,8),(147,26,1),(148,26,3),(149,26,5),(150,26,6),(151,26,7),(152,26,8),(153,28,1),(154,28,2),(155,28,3),(156,28,4),(157,28,5),(158,28,6),(159,28,7),(160,28,8),(161,29,1),(162,29,2),(163,29,3),(164,29,4),(165,29,5),(166,29,6),(167,29,7),(168,29,8),(169,30,1),(170,30,2),(171,30,3),(172,30,4),(173,30,5),(182,31,1),(183,31,2),(184,31,3),(185,31,4),(186,31,5),(187,31,6),(188,31,7),(189,31,8),(190,32,2),(191,32,3),(192,32,5),(193,32,6),(194,32,7),(195,32,8),(196,33,1),(197,33,2),(198,33,3),(199,33,5),(200,33,6),(201,33,7),(202,33,8),(203,34,1),(204,34,2),(205,34,3),(206,34,5),(207,34,6),(208,34,8),(209,35,1),(210,35,2),(211,35,3),(212,35,5),(213,35,6),(214,35,7),(215,35,8),(216,36,1),(217,36,2),(218,36,3),(219,36,4),(220,36,5),(221,36,7),(222,36,8),(223,37,1),(224,37,2),(225,37,3),(226,37,5),(227,37,6),(228,37,7),(229,37,8),(230,38,1),(231,38,3),(232,39,1),(233,39,2),(234,39,3),(235,39,6),(236,39,7),(237,39,8),(238,40,1),(239,40,2),(240,40,3),(241,40,5),(242,40,6),(243,40,7),(244,40,8),(245,41,1),(246,41,2),(247,41,3),(248,41,5),(249,41,7),(250,41,8),(251,42,1),(252,42,3),(253,42,4),(254,42,5),(255,42,6),(256,42,7),(257,42,8),(258,43,1),(259,43,2),(260,43,3),(261,43,5),(262,43,6),(263,43,7),(264,43,8),(265,44,1),(266,44,2),(267,44,3),(268,44,5),(269,44,6),(270,44,8),(271,45,8),(272,45,1),(273,45,2),(274,45,3),(275,46,8),(276,46,3),(277,46,5),(278,46,6),(279,46,7),(280,47,1),(281,47,2),(282,47,3),(283,47,4),(284,47,5),(285,47,6),(286,47,7),(287,48,8),(288,48,3),(289,49,1),(290,49,3),(291,49,5),(292,49,6),(298,51,5),(297,51,3),(296,51,1),(299,52,1),(300,52,2),(301,52,3),(302,52,5),(303,52,6),(304,52,7),(305,52,8),(306,53,1),(307,53,2),(308,53,3),(309,53,5),(310,53,6),(311,53,7),(312,53,8),(313,54,1),(314,54,2),(315,54,3),(316,54,5),(317,54,6),(318,54,7),(319,54,8),(320,55,8),(321,55,1),(322,55,5),(323,55,6),(324,56,1),(325,56,2),(326,56,3),(327,56,5),(328,56,6),(329,56,7),(330,56,8),(331,57,1),(332,57,2),(333,57,3),(334,57,5),(335,57,6),(336,57,7),(337,57,8),(338,58,8),(339,58,1),(340,58,3),(341,59,1),(342,59,2),(343,59,3),(344,59,5),(345,59,6),(346,59,7),(347,59,8),(348,60,1),(349,60,2),(350,60,3),(351,60,5),(352,60,6),(353,60,7),(354,60,8),(355,61,1),(356,61,2),(357,61,3),(358,61,5),(359,61,6),(360,61,7),(361,61,8),(369,63,5),(370,64,8),(371,64,1),(372,64,3),(373,64,7),(374,66,1),(375,66,3),(376,66,4),(377,66,5),(378,66,7),(379,66,8),(380,67,8),(381,67,1),(382,67,5),(383,68,1),(384,68,2),(385,68,3),(386,68,6),(387,68,7),(388,69,8),(389,69,1),(390,69,5),(391,69,6),(392,70,1),(393,70,2),(394,70,3),(395,70,5),(396,70,6),(397,71,1),(398,71,3),(399,71,5),(400,72,1),(401,72,2),(402,72,3),(403,72,5),(404,72,6),(405,73,1),(406,73,3),(407,73,5),(408,74,1),(409,74,2),(410,74,3),(411,74,5),(412,74,6),(413,74,7),(414,75,1),(415,75,2),(416,75,4),(417,75,5),(418,75,6),(419,75,8),(420,76,1),(421,76,2),(422,76,3),(423,76,4),(424,76,5),(425,76,6),(426,76,8),(427,77,1),(428,77,2),(429,77,3),(430,77,4),(431,77,5),(432,77,6),(433,77,8),(434,78,1),(435,79,1),(436,80,8),(437,80,1),(438,81,1),(439,81,3),(440,81,4),(441,81,5),(442,81,6),(443,81,7),(444,81,8),(445,82,8),(446,82,1),(447,82,5),(448,82,7),(449,83,8),(450,83,1),(451,83,3),(452,83,5),(453,83,6),(454,84,8),(455,84,1),(456,84,2),(457,84,3),(458,84,5),(459,85,8),(460,85,1),(461,85,3),(462,85,5),(463,86,8),(464,86,1),(465,86,3),(466,86,7),(467,87,1),(468,87,2),(469,87,3),(470,87,5),(471,87,7),(472,87,8),(473,88,8),(474,88,1),(475,88,3),(476,88,5),(477,88,7),(478,89,8),(479,89,1),(480,89,3),(481,89,5),(482,89,6),(483,90,8),(484,90,1),(485,90,3),(486,91,1),(487,91,3),(488,91,6),(489,91,7),(490,92,1),(491,92,2),(492,92,3),(493,92,5),(494,93,1),(495,93,6);
/*!40000 ALTER TABLE `encuesta_organizacion_beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_conformado`
--

DROP TABLE IF EXISTS `encuesta_organizacion_conformado`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_organizacion_conformado` (
  `id` int(11) NOT NULL auto_increment,
  `organizacion_id` int(11) NOT NULL,
  `admonactual_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`admonactual_id`),
  KEY `encuesta_organizacion_conformado_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_conformado_103d94ee` (`admonactual_id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_organizacion_conformado`
--

LOCK TABLES `encuesta_organizacion_conformado` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_conformado` DISABLE KEYS */;
INSERT INTO `encuesta_organizacion_conformado` VALUES (116,62,2),(115,62,1),(3,2,1),(4,2,2),(5,3,1),(6,4,1),(7,5,1),(8,5,2),(9,5,3),(10,6,1),(11,6,2),(12,7,1),(13,8,1),(14,8,3),(15,9,1),(16,9,2),(17,10,1),(18,10,2),(19,10,3),(20,11,1),(21,13,1),(22,13,2),(23,13,3),(24,14,1),(25,14,2),(26,14,3),(53,15,1),(28,16,2),(29,17,1),(30,17,2),(31,17,3),(32,18,1),(33,18,2),(34,18,3),(35,19,2),(36,20,1),(37,20,2),(38,20,3),(39,21,1),(40,22,1),(41,23,1),(42,24,1),(43,25,1),(44,26,1),(45,27,1),(46,27,2),(47,27,3),(48,29,1),(49,29,2),(50,29,3),(51,30,1),(52,30,3),(54,31,1),(55,31,2),(56,31,3),(57,32,1),(58,32,2),(59,32,3),(60,33,1),(61,33,2),(62,35,1),(63,35,2),(64,36,1),(65,36,2),(66,36,3),(67,37,1),(68,37,2),(69,37,3),(70,38,1),(71,38,2),(72,38,3),(73,40,1),(74,40,2),(75,40,3),(76,42,1),(77,42,2),(78,42,3),(79,43,1),(80,44,1),(81,44,2),(82,44,3),(83,45,1),(84,45,2),(85,46,1),(86,46,2),(87,47,1),(88,47,2),(89,48,1),(90,48,2),(94,52,2),(93,52,1),(95,53,1),(96,53,2),(97,53,3),(98,54,1),(99,54,2),(100,55,1),(101,55,2),(102,55,3),(103,56,1),(104,56,2),(105,57,1),(106,57,2),(107,57,3),(108,58,1),(109,59,1),(110,60,1),(111,60,2),(112,61,1),(113,61,2),(114,61,3),(117,63,1),(118,63,2),(119,63,3),(120,64,1),(121,64,2),(122,64,3),(123,65,1),(124,66,1),(125,66,2),(126,67,1),(127,67,2),(128,68,1),(129,68,2),(130,69,1),(131,69,2),(132,70,1),(133,72,1),(134,72,2),(135,73,1),(136,73,2),(137,74,1),(138,74,2),(139,75,1),(140,75,2),(141,76,1),(142,76,2),(143,77,1),(144,77,2),(145,78,1),(146,78,2),(147,79,1),(148,79,2),(149,81,1),(150,81,2),(151,81,3),(152,82,1),(153,82,2),(154,83,1),(155,83,2),(156,84,1),(157,84,2),(158,85,1),(159,85,2),(160,86,1),(161,86,2),(162,87,1),(163,87,2),(164,88,1),(165,88,2),(166,89,1),(167,89,2),(168,90,1),(169,90,2),(170,91,1),(171,91,2),(172,92,1),(173,92,2),(174,92,3),(175,93,1),(176,93,2);
/*!40000 ALTER TABLE `encuesta_organizacion_conformado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_conformarse`
--

DROP TABLE IF EXISTS `encuesta_organizacion_conformarse`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_organizacion_conformarse` (
  `id` int(11) NOT NULL auto_increment,
  `organizacion_id` int(11) NOT NULL,
  `admonactual_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`admonactual_id`),
  KEY `encuesta_organizacion_conformarse_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_conformarse_103d94ee` (`admonactual_id`)
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_organizacion_conformarse`
--

LOCK TABLES `encuesta_organizacion_conformarse` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_conformarse` DISABLE KEYS */;
INSERT INTO `encuesta_organizacion_conformarse` VALUES (160,62,2),(159,62,1),(3,2,1),(4,2,2),(5,3,1),(6,3,2),(7,3,3),(8,4,1),(9,4,3),(10,5,2),(11,5,3),(12,6,1),(13,6,2),(14,6,3),(15,7,1),(16,7,2),(17,7,3),(18,8,1),(19,8,2),(20,8,3),(21,9,1),(22,9,2),(23,9,3),(24,10,1),(25,10,2),(26,10,3),(27,11,1),(28,11,2),(29,11,3),(30,12,1),(31,13,1),(32,13,2),(33,13,3),(34,14,1),(35,14,2),(36,14,3),(78,15,2),(38,16,2),(39,17,1),(40,17,2),(41,17,3),(42,18,1),(43,18,2),(44,18,3),(45,19,1),(46,19,2),(47,19,3),(48,20,1),(49,20,2),(50,20,3),(51,21,1),(52,21,2),(53,21,3),(54,22,1),(55,22,2),(56,22,3),(57,23,1),(58,23,2),(59,23,3),(60,24,1),(61,24,2),(62,24,3),(63,25,1),(64,25,2),(65,25,3),(66,26,1),(67,26,2),(68,26,3),(69,27,1),(70,27,2),(71,27,3),(72,29,1),(73,29,2),(74,29,3),(75,30,1),(76,30,2),(77,30,3),(79,15,3),(80,31,1),(81,31,2),(82,31,3),(83,32,1),(84,32,2),(85,32,3),(86,33,1),(87,33,2),(88,35,1),(89,35,2),(90,35,3),(91,36,1),(92,36,2),(93,36,3),(94,37,1),(95,37,2),(96,37,3),(97,38,1),(98,38,2),(99,38,3),(100,40,1),(101,40,2),(102,40,3),(103,41,1),(104,41,2),(105,41,3),(106,42,1),(107,42,2),(108,42,3),(109,43,1),(110,43,2),(111,44,1),(112,44,2),(113,44,3),(114,45,1),(115,45,2),(116,46,1),(117,46,2),(118,46,3),(119,47,1),(120,47,2),(121,47,3),(122,48,1),(123,48,2),(124,48,3),(125,49,1),(126,49,2),(127,49,3),(131,52,2),(130,52,1),(132,52,3),(133,53,1),(134,53,2),(135,53,3),(136,54,1),(137,54,2),(138,54,3),(139,55,1),(140,55,2),(141,55,3),(142,56,1),(143,56,2),(144,57,1),(145,57,2),(146,57,3),(147,58,1),(148,58,2),(149,58,3),(150,59,1),(151,59,2),(152,59,3),(153,60,1),(154,60,2),(155,60,3),(156,61,1),(157,61,2),(158,61,3),(161,62,3),(162,63,1),(163,63,2),(164,63,3),(165,64,1),(166,64,2),(167,64,3),(168,65,1),(169,65,2),(170,66,1),(171,66,2),(172,66,3),(173,67,1),(174,67,2),(175,67,3),(176,68,1),(177,68,2),(178,68,3),(179,69,1),(180,69,2),(181,69,3),(182,70,1),(183,70,2),(184,70,3),(185,73,1),(186,73,2),(187,73,3),(188,74,1),(189,74,2),(190,74,3),(191,75,1),(192,75,2),(193,75,3),(194,76,1),(195,76,2),(196,76,3),(197,77,1),(198,77,2),(199,77,3),(200,78,1),(201,78,2),(202,78,3),(203,79,1),(204,79,2),(205,79,3),(206,81,1),(207,81,2),(208,81,3),(209,82,1),(210,82,2),(211,82,3),(212,83,1),(213,83,2),(214,83,3),(215,84,1),(216,84,2),(217,84,3),(218,85,1),(219,85,2),(220,85,3),(221,86,1),(222,86,2),(223,86,3),(224,87,1),(225,87,2),(226,87,3),(227,88,1),(228,88,2),(229,88,3),(230,89,1),(231,89,2),(232,89,3),(233,90,1),(234,90,2),(235,90,3),(236,91,1),(237,91,2),(238,91,3),(239,92,1),(240,92,2),(241,92,3),(242,93,1),(243,93,2),(244,93,3);
/*!40000 ALTER TABLE `encuesta_organizacion_conformarse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_organizacion_quiero_miembro_junta`
--

DROP TABLE IF EXISTS `encuesta_organizacion_quiero_miembro_junta`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_organizacion_quiero_miembro_junta` (
  `id` int(11) NOT NULL auto_increment,
  `organizacion_id` int(11) NOT NULL,
  `porquemiembro_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `organizacion_id` (`organizacion_id`,`porquemiembro_id`),
  KEY `encuesta_organizacion_quiero_miembro_junta_48753264` (`organizacion_id`),
  KEY `encuesta_organizacion_quiero_miembro_junta_cf4903c` (`porquemiembro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_organizacion_quiero_miembro_junta`
--

LOCK TABLES `encuesta_organizacion_quiero_miembro_junta` WRITE;
/*!40000 ALTER TABLE `encuesta_organizacion_quiero_miembro_junta` DISABLE KEYS */;
INSERT INTO `encuesta_organizacion_quiero_miembro_junta` VALUES (40,64,3),(39,64,2),(38,64,1),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,14,1),(9,14,3),(10,14,4),(11,18,1),(12,18,2),(13,18,3),(14,18,4),(15,21,1),(16,21,2),(17,21,3),(18,21,4),(19,26,1),(20,26,2),(21,26,3),(22,26,4),(23,30,3),(24,33,1),(25,33,2),(26,33,3),(27,34,1),(28,34,2),(29,34,3),(30,34,4),(31,38,1),(32,39,2),(33,49,2),(35,53,1),(36,53,2),(37,55,1),(41,64,4),(42,66,4),(43,68,4),(44,71,1),(45,71,2),(46,71,3),(47,78,1),(48,78,2),(49,78,4),(50,81,1),(51,81,3),(52,81,4),(53,84,2),(54,85,3),(55,85,4),(56,90,1),(57,90,2),(58,90,4),(59,92,1),(60,92,2),(61,92,3),(62,92,4);
/*!40000 ALTER TABLE `encuesta_organizacion_quiero_miembro_junta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_otrosingresos`
--

DROP TABLE IF EXISTS `encuesta_otrosingresos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_otrosingresos` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `meses` int(11) default NULL,
  `ingreso` int(11) default NULL,
  `tiene_ingreso` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_otrosingresos_1bb8f392` (`content_type_id`),
  KEY `encuesta_otrosingresos_7d61c803` (`object_id`),
  KEY `encuesta_otrosingresos_7592e3f3` (`fuente_id`),
  KEY `encuesta_otrosingresos_27e4f492` (`tipo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_otrosingresos`
--

LOCK TABLES `encuesta_otrosingresos` WRITE;
/*!40000 ALTER TABLE `encuesta_otrosingresos` DISABLE KEYS */;
INSERT INTO `encuesta_otrosingresos` VALUES (40,88,63,1,1,12,500,4),(2,88,2,1,1,2,2600,1),(3,88,3,1,1,12,500,5),(4,88,3,2,7,12,900,2),(5,88,4,1,1,12,945,1),(6,88,5,1,1,12,2414,4),(7,88,6,1,1,12,1000,1),(8,88,12,1,1,12,2760,1),(9,88,13,2,9,3,1000,3),(10,88,14,1,1,NULL,NULL,2),(11,88,17,3,9,1,4300,1),(12,88,25,1,1,2,4000,1),(13,88,27,1,1,5,6000,1),(14,88,28,1,1,10,24000,5),(15,88,29,1,1,12,9600,NULL),(16,88,30,2,15,12,3000,2),(17,88,31,1,1,2,7000,1),(18,88,32,3,9,1,1000,1),(19,88,33,1,1,1,1250,1),(20,88,34,1,1,2,2600,1),(21,88,35,2,5,3,30000,3),(22,88,37,1,1,5,15000,1),(23,88,38,1,4,12,1800,1),(24,88,40,2,12,12,8000,NULL),(25,88,41,4,10,3,660,3),(26,88,42,2,8,12,42000,2),(27,88,44,2,5,12,800,2),(28,88,45,1,1,1,4000,5),(29,88,46,2,5,12,1000,2),(30,88,46,4,3,12,1200,2),(31,88,47,2,8,12,6000,6),(32,88,48,2,5,12,15000,2),(33,88,53,3,9,12,2150,3),(34,88,55,3,9,12,430,1),(35,88,57,1,14,3,2000,1),(36,88,59,1,1,12,7000,3),(37,88,60,2,5,12,1000,1),(38,88,60,1,1,3,10000,1),(39,88,62,2,1,12,1000,2),(41,88,63,2,6,12,400,2),(42,88,64,1,1,2,10000,5),(43,88,64,2,6,12,9000,2),(44,88,65,1,1,12,1800,1),(45,88,66,1,1,4,8000,4),(46,88,67,1,1,12,3760,5),(47,88,67,2,5,12,150,2),(48,88,67,1,9,12,500,4),(49,88,68,1,1,4,NULL,NULL),(50,88,69,1,1,3,2100,5),(51,88,74,1,1,6,1000,4),(52,88,75,1,2,12,1000,4),(53,88,76,1,2,12,300,4),(54,88,76,1,3,12,300,4),(55,88,79,1,1,6,1400,4),(56,88,80,2,3,12,20800,1),(57,88,81,1,1,3,1000,NULL),(58,88,84,3,9,12,2800,2),(59,88,85,4,10,12,1500,2),(60,88,86,2,6,12,500,2),(61,88,86,3,9,12,4200,6),(62,88,88,2,1,12,3000,1),(63,88,92,2,8,10,1000,6),(64,88,94,1,1,6,1440,4);
/*!40000 ALTER TABLE `encuesta_otrosingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_piso`
--

DROP TABLE IF EXISTS `encuesta_piso`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_piso` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_porquemiembro` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_postcosecha` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `responsable` int(11) default NULL,
  `cantidad` int(11) default NULL,
  `tipo_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_postcosecha_1bb8f392` (`content_type_id`),
  KEY `encuesta_postcosecha_7d61c803` (`object_id`),
  KEY `encuesta_postcosecha_2d3cc3fc` (`producto_id`),
  KEY `encuesta_postcosecha_27e4f492` (`tipo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_postcosecha`
--

LOCK TABLES `encuesta_postcosecha` WRITE;
/*!40000 ALTER TABLE `encuesta_postcosecha` DISABLE KEYS */;
INSERT INTO `encuesta_postcosecha` VALUES (1,88,2,1,1,10,4),(2,88,2,2,1,15,4),(3,88,3,4,1,4,6),(4,88,3,1,1,3,6),(5,88,3,2,1,2,6),(6,88,4,10,1,50,4),(7,88,6,4,1,1,4),(8,88,7,1,1,60,5),(9,88,7,4,1,7,7),(10,88,7,2,1,25,5),(11,88,8,1,1,5,1),(12,88,9,1,1,30,3),(13,88,9,2,1,10,4),(14,88,10,2,1,15,4),(15,88,10,1,1,20,4),(16,88,10,4,1,4,4),(17,88,11,4,2,1,4),(18,88,13,4,1,700,4),(19,88,14,1,1,30,1),(20,88,14,2,1,48,4),(21,88,16,1,NULL,20,1),(22,88,16,2,NULL,13,5),(23,88,18,1,2,2,1),(24,88,18,2,2,0,4),(25,88,20,2,2,40,4),(26,88,21,1,1,7,3),(27,88,22,1,1,12,1),(28,88,22,2,1,12,1),(29,88,26,1,2,15,2),(30,88,26,2,2,5,4),(31,88,27,1,1,10,4),(32,88,27,2,1,10,4),(33,88,28,1,1,15,4),(34,88,28,2,1,10,4),(35,88,29,4,1,1,4),(36,88,30,1,1,20,4),(37,88,30,2,1,8,4),(38,88,31,1,1,15,NULL),(39,88,31,2,1,15,NULL),(40,88,31,4,1,1,NULL),(41,88,32,4,2,1,NULL),(42,88,34,1,1,10,NULL),(43,88,34,2,1,15,NULL),(44,88,35,1,1,30,NULL),(45,88,35,2,1,15,NULL),(46,88,36,1,1,25,NULL),(47,88,36,2,1,20,NULL),(48,88,36,3,1,5,NULL),(49,88,37,1,1,6,NULL),(50,88,37,2,1,1,NULL),(51,88,39,1,1,20,NULL),(52,88,39,2,1,20,NULL),(53,88,38,1,1,50,NULL),(54,88,38,2,1,15,NULL),(55,88,40,1,1,8,NULL),(56,88,41,1,1,6,NULL),(57,88,41,2,1,5,NULL),(58,88,42,1,2,15,NULL),(59,88,42,2,2,5,NULL),(60,88,42,4,2,2,NULL),(61,88,42,5,2,5,NULL),(62,88,43,1,1,8,NULL),(63,88,45,2,1,6,NULL),(64,88,46,1,1,20,NULL),(65,88,46,2,1,10,NULL),(66,88,47,1,1,50,NULL),(67,88,47,2,1,15,NULL),(68,88,51,1,2,30,NULL),(69,88,51,2,2,20,NULL),(70,88,54,1,7,30,NULL),(71,88,54,2,7,10,NULL),(72,88,54,4,7,3,NULL),(73,88,53,1,1,67,NULL),(74,88,53,2,1,4,NULL),(75,88,55,1,1,60,NULL),(76,88,55,2,1,50,NULL),(77,88,56,1,7,12,NULL),(78,88,56,2,7,6,NULL),(79,88,57,4,7,2,NULL),(80,88,58,1,7,40,NULL),(81,88,58,2,7,10,NULL),(82,88,59,1,7,5,NULL),(83,88,59,1,7,2,NULL),(84,88,60,1,1,20,NULL),(85,88,60,2,1,3,NULL),(86,88,62,1,1,8,NULL),(87,88,63,1,6,20,NULL),(88,88,63,2,6,5,NULL),(89,88,63,5,6,15,NULL),(90,88,63,4,5,2,NULL),(91,88,64,1,4,20,NULL),(92,88,64,2,4,8,NULL),(93,88,65,1,1,15,NULL),(94,88,65,2,1,20,NULL),(95,88,65,5,1,9,NULL),(96,88,65,7,1,3,NULL),(97,88,67,2,2,3,NULL),(98,88,68,1,1,12,NULL),(99,88,68,2,1,8,NULL),(100,88,69,1,1,20,NULL),(101,88,70,1,1,15,NULL),(102,88,70,2,1,12,NULL),(103,88,70,4,1,2,NULL),(104,88,72,1,1,5,NULL),(105,88,72,2,1,1,NULL),(106,88,71,1,1,12,NULL),(107,88,71,2,1,4,NULL),(108,88,71,4,1,1,NULL),(109,88,73,1,5,10,NULL),(110,88,73,2,5,3,NULL),(111,88,74,1,1,9,NULL),(112,88,74,2,1,7,NULL),(113,88,75,1,3,20,NULL),(114,88,75,2,3,20,NULL),(115,88,77,1,1,15,NULL),(116,88,77,2,1,10,NULL),(117,88,78,1,1,15,NULL),(118,88,78,2,1,10,NULL),(119,88,76,1,4,38,NULL),(120,88,76,2,4,2,NULL),(121,88,79,1,3,8,NULL),(122,88,79,2,3,8,NULL),(123,88,81,1,1,14,NULL),(124,88,82,1,1,10,NULL),(125,88,82,2,1,10,NULL),(126,88,83,1,7,50,NULL),(127,88,83,2,7,20,NULL),(128,88,84,2,2,30,NULL),(129,88,84,1,2,40,NULL),(130,88,85,1,3,25,NULL),(131,88,85,2,3,8,NULL),(132,88,89,1,1,16,NULL),(133,88,89,2,1,16,NULL),(134,88,90,1,1,12,NULL),(135,88,90,2,1,12,NULL),(136,88,92,2,2,16,NULL),(137,88,92,3,2,20,NULL),(138,88,92,4,2,8,NULL),(139,88,92,10,2,420,NULL),(140,88,93,1,2,15,NULL),(141,88,93,2,2,10,NULL);
/*!40000 ALTER TABLE `encuesta_postcosecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_postcosecha_tipo`
--

DROP TABLE IF EXISTS `encuesta_postcosecha_tipo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_postcosecha_tipo` (
  `id` int(11) NOT NULL auto_increment,
  `postcosecha_id` int(11) NOT NULL,
  `tipoalmacenaje_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `postcosecha_id` (`postcosecha_id`,`tipoalmacenaje_id`),
  KEY `encuesta_postcosecha_tipo_52eea431` (`postcosecha_id`),
  KEY `encuesta_postcosecha_tipo_601dba0b` (`tipoalmacenaje_id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_postcosecha_tipo`
--

LOCK TABLES `encuesta_postcosecha_tipo` WRITE;
/*!40000 ALTER TABLE `encuesta_postcosecha_tipo` DISABLE KEYS */;
INSERT INTO `encuesta_postcosecha_tipo` VALUES (1,3,6),(2,4,6),(3,5,6),(4,6,7),(5,7,4),(6,8,6),(7,9,5),(8,10,4),(9,11,1),(10,12,3),(11,13,4),(12,14,4),(13,15,4),(14,16,4),(15,17,4),(16,18,4),(17,36,4),(18,36,6),(19,37,4),(20,37,6),(21,19,4),(22,20,4),(23,21,1),(24,22,5),(25,38,1),(26,38,3),(27,39,1),(28,39,4),(29,40,4),(30,41,4),(31,42,1),(32,43,4),(33,43,5),(34,44,5),(35,45,5),(36,46,1),(37,46,6),(38,47,1),(39,47,6),(40,48,4),(41,49,4),(42,50,4),(43,51,3),(44,52,4),(45,53,1),(46,54,1),(47,55,5),(48,56,4),(49,56,6),(50,57,4),(51,57,6),(52,58,1),(53,59,4),(54,60,4),(55,61,4),(56,62,1),(57,63,4),(58,64,3),(59,65,4),(60,66,1),(61,67,1),(62,67,5),(63,68,1),(64,69,1),(65,70,3),(66,71,1),(67,72,4),(68,73,3),(69,74,4),(70,75,4),(71,76,4),(72,77,3),(73,78,4),(74,79,4),(75,80,1),(76,81,1),(77,82,3),(78,83,1),(79,84,4),(80,85,4),(81,86,4),(82,87,1),(83,88,1),(84,89,1),(85,90,4),(86,91,1),(87,92,6),(88,93,4),(89,93,6),(90,94,4),(91,94,6),(92,95,4),(93,95,6),(94,96,4),(95,96,6),(96,97,4),(97,98,4),(98,98,5),(99,99,4),(100,99,5),(101,100,5),(102,101,4),(103,101,6),(104,102,4),(105,102,6),(106,103,4),(107,104,4),(108,105,4),(109,106,1),(110,107,4),(111,108,4),(112,109,4),(113,110,4),(114,111,5),(115,112,5),(116,113,5),(117,114,5),(118,115,6),(119,116,4),(120,117,6),(121,118,4),(122,119,5),(123,120,7),(124,121,1),(125,122,4),(126,123,4),(127,124,1),(128,125,1),(129,126,4),(130,127,4),(131,128,4),(132,128,5),(133,129,4),(134,129,5),(135,130,3),(136,131,4),(137,132,1),(138,133,1),(139,134,1),(140,135,1),(141,136,5),(142,138,5),(143,140,5),(144,141,5);
/*!40000 ALTER TABLE `encuesta_postcosecha_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_preguntacancer`
--

DROP TABLE IF EXISTS `encuesta_preguntacancer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_preguntacancer` (
  `id` int(11) NOT NULL auto_increment,
  `pregunta` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_preguntacancer`
--

LOCK TABLES `encuesta_preguntacancer` WRITE;
/*!40000 ALTER TABLE `encuesta_preguntacancer` DISABLE KEYS */;
INSERT INTO `encuesta_preguntacancer` VALUES (1,'¿Su pareja espera que le pida permiso antes de buscar atención medica para usted misma?'),(2,'Se ha realizado chequeos ginecológicos'),(3,'Se ha realizado el PAP alguna vez'),(4,'Como han sido los resultados de su PAP'),(5,'Como ha hecho para tratarse los problemas que le han resultado del PAP'),(6,'Actualmente tiene usted algún problema de salud reproductiva que le preocupe?'),(7,'Hombre-Se ha realizado chequeos Médicos alguna vez en su vida'),(8,'Actualmente tiene usted algún problema de salud reproductiva o de transmisión sexual que le preocupe?'),(9,'Si la repuesta es sí, como ha hecho para tratarse su problema de salud reproductiva y/o transmisión sexual?'),(10,'No sabe que es PAP?');
/*!40000 ALTER TABLE `encuesta_preguntacancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_preguntamental`
--

DROP TABLE IF EXISTS `encuesta_preguntamental`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_preguntamental` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_problema` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `problema_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_problema_1bb8f392` (`content_type_id`),
  KEY `encuesta_problema_7d61c803` (`object_id`),
  KEY `encuesta_problema_449131c2` (`problema_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_problema`
--

LOCK TABLES `encuesta_problema` WRITE;
/*!40000 ALTER TABLE `encuesta_problema` DISABLE KEYS */;
INSERT INTO `encuesta_problema` VALUES (1,88,2,2),(2,88,6,2),(3,88,7,2),(4,88,9,3),(5,88,10,2),(6,88,14,2),(7,88,21,2),(8,88,27,1),(9,88,27,2),(10,88,28,1),(11,88,28,2),(12,88,32,1),(13,88,34,2),(14,88,35,1),(15,88,35,2),(16,88,36,2),(17,88,37,2),(18,88,42,4),(19,88,46,4),(20,88,47,4),(21,88,54,2),(22,88,53,3),(23,88,55,4),(24,88,56,3),(25,88,56,2),(26,88,57,2),(27,88,58,2),(28,88,59,3),(29,88,60,2),(30,88,62,4),(31,88,64,4),(32,88,65,2),(33,88,67,1),(34,88,68,2),(35,88,69,3),(36,88,69,4),(37,88,70,3),(38,88,72,3),(39,88,71,3),(40,88,73,2),(41,88,73,3),(42,88,74,4),(43,88,75,1),(44,88,77,2),(45,88,78,2),(46,88,79,4),(47,88,83,2),(48,88,83,1),(49,88,92,4);
/*!40000 ALTER TABLE `encuesta_problema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_problema_solucion`
--

DROP TABLE IF EXISTS `encuesta_problema_solucion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_problema_solucion` (
  `id` int(11) NOT NULL auto_increment,
  `problema_id` int(11) NOT NULL,
  `solucion_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `problema_id` (`problema_id`,`solucion_id`),
  KEY `encuesta_problema_solucion_449131c2` (`problema_id`),
  KEY `encuesta_problema_solucion_3c3c1938` (`solucion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_problema_solucion`
--

LOCK TABLES `encuesta_problema_solucion` WRITE;
/*!40000 ALTER TABLE `encuesta_problema_solucion` DISABLE KEYS */;
INSERT INTO `encuesta_problema_solucion` VALUES (2,1,2),(3,2,5),(4,3,2),(5,4,2),(6,4,4),(7,5,2),(8,6,2),(9,6,5),(10,7,2),(11,8,5),(12,9,2),(13,10,5),(14,11,2),(15,12,5),(16,13,2),(17,14,5),(18,15,5),(19,16,2),(20,16,5),(21,17,2),(22,18,5),(23,19,5),(24,20,5),(25,21,2),(26,22,5),(27,23,5),(28,24,5),(29,25,2),(30,26,5),(31,27,2),(32,28,2),(33,29,2),(34,30,5),(35,31,5),(36,32,2),(37,33,5),(38,34,5),(39,35,4),(40,36,5),(41,37,4),(42,37,5),(43,38,5),(44,39,4),(45,39,5),(46,40,2),(47,41,5),(48,42,5),(49,43,1),(50,43,5),(51,44,2),(52,45,2),(53,46,5),(54,47,2),(55,48,5),(56,49,5);
/*!40000 ALTER TABLE `encuesta_problema_solucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_produccionmaiz`
--

DROP TABLE IF EXISTS `encuesta_produccionmaiz`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_produccionmaiz` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `siete` int(11) default NULL,
  `ocho` int(11) default NULL,
  `nueve` int(11) default NULL,
  `diez` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_produccionmaiz_1bb8f392` (`content_type_id`),
  KEY `encuesta_produccionmaiz_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_produccionmaiz`
--

LOCK TABLES `encuesta_produccionmaiz` WRITE;
/*!40000 ALTER TABLE `encuesta_produccionmaiz` DISABLE KEYS */;
INSERT INTO `encuesta_produccionmaiz` VALUES (1,88,2,1,10,10,10,10),(2,88,2,2,15,15,15,15),(3,88,3,1,3,3,3,NULL),(4,88,3,2,3,3,3,NULL),(5,88,4,1,4,4,4,4),(6,88,4,2,8,8,7,7),(7,88,7,1,40,40,60,0),(8,88,7,2,20,20,25,NULL),(9,88,8,1,2,2,2,4),(10,88,8,2,2,2,2,5),(11,88,9,1,40,40,30,20),(12,88,9,2,3,20,30,0),(13,88,10,1,8,8,8,8),(14,88,10,2,8,8,8,8),(15,88,13,1,5,5,5,NULL),(16,88,13,2,5,5,5,NULL),(17,88,14,1,5,5,5,NULL),(18,88,14,2,5,5,5,NULL),(19,88,16,1,12,12,12,NULL),(20,88,16,2,12,12,12,NULL),(21,88,18,1,5,5,5,NULL),(22,88,18,2,5,5,5,NULL),(23,88,19,1,12,12,12,NULL),(24,88,20,1,12,12,12,NULL),(25,88,20,2,12,12,12,NULL),(26,88,21,1,12,12,12,NULL),(27,88,22,1,0,5,5,6),(28,88,24,1,0,5,5,6),(29,88,26,1,12,12,12,12),(30,88,26,2,12,12,12,12),(31,88,27,1,12,10,9,12),(32,88,27,2,12,12,12,12),(33,88,28,1,10,10,9,12),(34,88,28,2,10,9,8,12),(35,88,30,1,12,12,12,12),(36,88,30,2,11,11,10,NULL),(37,88,31,1,8,9,9,10),(38,88,31,2,8,10,10,12),(39,88,34,1,10,10,10,10),(40,88,34,2,15,15,15,15),(41,88,35,1,12,12,12,NULL),(42,88,35,2,12,12,12,NULL),(43,88,36,1,12,12,12,12),(44,88,36,2,12,12,12,12),(45,88,37,1,3,2,2,NULL),(46,88,37,2,3,2,2,NULL),(47,88,39,1,12,12,12,NULL),(48,88,39,2,12,12,12,NULL),(49,88,40,1,7,7,7,7),(50,88,40,2,7,7,7,7),(51,88,41,1,6,6,6,12),(52,88,38,1,12,12,12,NULL),(53,88,38,2,12,12,12,NULL),(54,88,42,1,10,12,10,NULL),(55,88,42,2,12,12,12,NULL),(56,88,42,3,12,12,10,NULL),(57,88,43,1,12,12,12,12),(58,88,43,2,12,12,12,10),(59,88,46,1,8,8,8,NULL),(60,88,46,2,12,12,12,NULL),(61,88,47,1,12,12,12,NULL),(62,88,47,2,12,4,4,NULL),(63,88,51,1,6,12,12,12),(64,88,51,2,12,12,12,12),(65,88,52,1,60,NULL,180,NULL),(66,88,52,2,180,220,250,NULL),(67,88,54,1,20,30,50,NULL),(68,88,54,2,NULL,10,18,NULL),(69,88,53,1,12,12,12,NULL),(70,88,53,2,12,12,12,NULL),(71,88,56,1,22,18,20,NULL),(72,88,56,2,27,35,30,NULL),(73,88,55,1,12,12,12,NULL),(74,88,55,2,12,12,12,NULL),(75,88,59,1,10,7,5,6),(76,88,59,2,10,5,2,4),(77,88,60,1,15,15,20,NULL),(78,88,60,2,151,2,8,NULL),(79,88,62,1,8,10,10,NULL),(80,88,62,2,NULL,12,12,NULL),(81,88,63,1,12,12,12,NULL),(82,88,63,2,12,12,12,NULL),(83,88,63,3,12,12,12,NULL),(84,88,64,1,12,12,12,NULL),(85,88,64,2,12,12,12,NULL),(86,88,67,1,12,12,0,NULL),(87,88,67,2,12,9,10,NULL),(88,88,65,1,6,15,16,10),(89,88,65,2,24,17,12,20),(90,88,68,1,7,7,7,NULL),(91,88,68,2,12,12,12,NULL),(92,88,69,1,NULL,NULL,12,NULL),(93,88,69,2,NULL,12,NULL,NULL),(94,88,70,1,12,12,12,NULL),(95,88,70,2,4,12,12,NULL),(96,88,72,1,7,7,4,15),(97,88,72,2,1,7,1,1),(98,88,71,1,12,12,12,NULL),(99,88,71,2,6,6,6,NULL),(100,88,73,1,15,10,5,12),(101,88,73,2,12,7,3,7),(102,88,74,1,6,6,6,NULL),(103,88,74,2,6,6,6,NULL),(104,88,75,1,8,9,9,NULL),(105,88,75,2,9,8,9,NULL),(106,88,77,1,NULL,15,10,12),(107,88,77,2,NULL,8,12,NULL),(108,88,78,1,NULL,15,10,12),(109,88,78,2,NULL,8,12,NULL),(110,88,76,1,12,12,12,NULL),(111,88,76,2,12,12,12,NULL),(112,88,79,1,7,12,12,NULL),(113,88,79,2,7,12,12,NULL),(114,88,81,1,12,12,12,NULL),(115,88,83,1,12,12,12,12),(116,88,83,2,12,12,12,12),(117,88,82,1,12,12,12,NULL),(118,88,82,2,12,12,12,NULL),(119,88,85,1,8,8,8,8),(120,88,85,2,8,8,8,8),(121,88,89,1,10,10,10,10),(122,88,89,2,10,10,10,10),(123,88,90,1,12,12,12,12),(124,88,90,2,12,12,12,12),(125,88,93,1,12,12,12,NULL),(126,88,93,2,12,12,12,NULL),(127,88,94,1,6,6,NULL,NULL),(128,88,94,2,6,6,NULL,NULL);
/*!40000 ALTER TABLE `encuesta_produccionmaiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_productoanimal`
--

DROP TABLE IF EXISTS `encuesta_productoanimal`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_productoanimal` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  `unidad` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_productoanimal`
--

LOCK TABLES `encuesta_productoanimal` WRITE;
/*!40000 ALTER TABLE `encuesta_productoanimal` DISABLE KEYS */;
INSERT INTO `encuesta_productoanimal` VALUES (1,'Venta de Vacas en pie','Und'),(2,'Leche','Lt'),(3,'Cuajada ','Lb'),(4,'Queso','Lb'),(5,'Crema','Lb'),(6,'Carne de res','Lb'),(7,'Carne de cerdo','Lb'),(8,'Huevo','Docena'),(9,'Carne de ave','Lb'),(10,'Miel','Lt'),(11,'No tiene','No tiene'),(12,'carne de pelibuey','Lb');
/*!40000 ALTER TABLE `encuesta_productoanimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_propiedades`
--

DROP TABLE IF EXISTS `encuesta_propiedades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_propiedades` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `equipo_id` int(11) default NULL,
  `cantidad_equipo` int(11) default NULL,
  `infraestructura_id` int(11) default NULL,
  `cantidad_infra` int(11) default NULL,
  `tipo_equipo` int(11) default NULL,
  `respuesta` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_propiedades_1bb8f392` (`content_type_id`),
  KEY `encuesta_propiedades_7d61c803` (`object_id`),
  KEY `encuesta_propiedades_7f4dba11` (`equipo_id`),
  KEY `encuesta_propiedades_7b190813` (`infraestructura_id`)
) ENGINE=MyISAM AUTO_INCREMENT=572 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_propiedades`
--

LOCK TABLES `encuesta_propiedades` WRITE;
/*!40000 ALTER TABLE `encuesta_propiedades` DISABLE KEYS */;
INSERT INTO `encuesta_propiedades` VALUES (390,88,63,14,1,12,3,NULL,NULL),(389,88,63,11,2,10,1,NULL,NULL),(388,88,63,7,1,7,1,NULL,NULL),(387,88,63,3,1,5,1,2,1),(386,88,63,2,1,4,1,1,1),(6,88,2,1,1,1,1,1,2),(7,88,2,2,10,2,1,2,2),(8,88,2,3,200,7,1,3,2),(9,88,2,9,1,8,2,4,2),(10,88,2,12,2,12,1,NULL,NULL),(11,88,2,16,1,NULL,NULL,NULL,NULL),(12,88,2,17,1,NULL,NULL,NULL,NULL),(13,88,2,14,2,NULL,NULL,NULL,NULL),(14,88,2,15,1,NULL,NULL,NULL,NULL),(15,88,3,1,1,1,1,1,1),(16,88,3,3,800,3,2,2,2),(17,88,3,9,1,5,1,4,1),(18,88,3,10,1,7,1,NULL,NULL),(19,88,3,13,1,12,2,NULL,NULL),(20,88,3,14,1,14,1,NULL,NULL),(21,88,3,15,2,NULL,NULL,NULL,NULL),(22,88,3,16,3,NULL,NULL,NULL,NULL),(23,88,3,17,1,NULL,NULL,NULL,NULL),(24,88,3,18,4,NULL,NULL,NULL,NULL),(25,88,3,19,1,NULL,NULL,NULL,NULL),(26,88,3,21,5,NULL,NULL,NULL,NULL),(27,88,4,15,1,NULL,NULL,1,2),(28,88,4,NULL,NULL,NULL,NULL,2,2),(29,88,4,NULL,NULL,NULL,NULL,3,2),(30,88,4,NULL,NULL,NULL,NULL,4,2),(31,88,5,1,1,1,1,1,2),(32,88,5,2,1,2,1,2,2),(33,88,5,3,100,7,1,3,2),(34,88,5,11,1,9,1,4,2),(35,88,6,2,2,7,1,1,2),(36,88,6,7,1,NULL,NULL,2,2),(37,88,7,1,4,1,2,1,1),(38,88,7,3,1,3,3,2,2),(39,88,7,6,2,13,2,3,1),(40,88,7,7,1,NULL,NULL,4,2),(41,88,7,8,1,NULL,NULL,NULL,NULL),(42,88,7,9,1,NULL,NULL,NULL,NULL),(43,88,7,11,4,NULL,NULL,NULL,NULL),(44,88,7,12,2,NULL,NULL,NULL,NULL),(45,88,7,21,2,NULL,NULL,NULL,NULL),(46,88,7,16,2,NULL,NULL,NULL,NULL),(47,88,7,14,1,NULL,NULL,NULL,NULL),(48,88,7,15,2,NULL,NULL,NULL,NULL),(49,88,7,17,2,NULL,NULL,NULL,NULL),(50,88,7,18,1,NULL,NULL,NULL,NULL),(51,88,8,1,1,1,1,1,2),(52,88,8,2,4,3,2,2,2),(53,88,8,3,4,5,1,3,2),(54,88,8,4,1,12,2,4,2),(55,88,8,12,1,14,1,NULL,NULL),(56,88,8,14,1,NULL,NULL,NULL,NULL),(57,88,8,15,2,NULL,NULL,NULL,NULL),(58,88,8,16,1,NULL,NULL,NULL,NULL),(59,88,8,18,2,NULL,NULL,NULL,NULL),(60,88,9,1,1,3,1,1,2),(61,88,9,2,2,NULL,NULL,2,2),(62,88,9,3,2,NULL,NULL,3,2),(63,88,9,6,1,NULL,NULL,4,2),(64,88,9,11,1,NULL,NULL,NULL,NULL),(65,88,9,15,1,NULL,NULL,NULL,NULL),(66,88,9,18,2,NULL,NULL,NULL,NULL),(67,88,9,21,1,NULL,NULL,NULL,NULL),(68,88,10,1,1,1,1,1,2),(69,88,10,2,10,2,1,2,2),(70,88,10,3,2,3,1,3,2),(71,88,10,10,1,NULL,NULL,4,1),(72,88,10,11,1,NULL,NULL,NULL,NULL),(73,88,10,15,1,NULL,NULL,NULL,NULL),(74,88,11,1,1,1,1,1,2),(75,88,11,2,8,2,1,2,2),(76,88,11,7,1,3,3,3,2),(77,88,11,3,1,7,1,4,2),(78,88,11,15,1,NULL,NULL,NULL,NULL),(79,88,12,1,1,1,1,1,1),(80,88,12,2,7,2,1,2,2),(81,88,12,15,1,3,1,3,2),(82,88,12,11,2,NULL,NULL,4,1),(83,88,12,18,1,NULL,NULL,NULL,NULL),(84,88,13,1,2,1,1,1,1),(85,88,13,9,1,3,2,2,1),(86,88,13,11,3,4,1,3,2),(87,88,13,12,1,NULL,NULL,4,2),(88,88,13,14,1,NULL,NULL,NULL,NULL),(89,88,13,15,1,NULL,NULL,NULL,NULL),(90,88,13,16,1,NULL,NULL,NULL,NULL),(91,88,13,17,1,NULL,NULL,NULL,NULL),(92,88,13,18,2,NULL,NULL,NULL,NULL),(93,88,15,1,2,1,1,1,1),(94,88,15,2,18,2,1,NULL,NULL),(95,88,15,3,3,3,1,NULL,NULL),(96,88,15,11,3,13,1,NULL,NULL),(97,88,15,14,1,NULL,NULL,NULL,NULL),(98,88,15,16,1,NULL,NULL,NULL,NULL),(99,88,15,18,2,NULL,NULL,NULL,NULL),(100,88,15,19,1,NULL,NULL,NULL,NULL),(101,88,15,21,6,NULL,NULL,NULL,NULL),(102,88,16,1,1,1,1,1,1),(103,88,16,2,16,3,2,2,1),(104,88,16,3,400,7,1,NULL,NULL),(105,88,16,11,2,8,1,NULL,NULL),(106,88,16,12,1,12,1,NULL,NULL),(107,88,16,14,1,NULL,NULL,NULL,NULL),(108,88,16,16,1,NULL,NULL,NULL,NULL),(109,88,16,21,5,NULL,NULL,NULL,NULL),(110,88,17,1,3,1,1,1,2),(111,88,17,2,30,3,3,NULL,NULL),(112,88,17,3,2,4,1,NULL,NULL),(113,88,17,11,8,6,1,NULL,NULL),(114,88,17,12,1,7,1,NULL,NULL),(115,88,17,15,3,8,1,NULL,NULL),(116,88,17,18,1,NULL,NULL,NULL,NULL),(117,88,18,2,2,13,1,1,2),(118,88,19,1,1,2,1,1,2),(119,88,19,2,2,NULL,NULL,NULL,NULL),(120,88,19,11,1,NULL,NULL,NULL,NULL),(121,88,20,1,1,2,1,1,2),(122,88,20,2,2,NULL,NULL,NULL,NULL),(123,88,20,11,1,NULL,NULL,NULL,NULL),(124,88,20,15,1,NULL,NULL,NULL,NULL),(125,88,21,2,2,NULL,NULL,1,2),(126,88,21,3,2,NULL,NULL,NULL,NULL),(127,88,21,11,1,NULL,NULL,NULL,NULL),(128,88,21,15,1,NULL,NULL,NULL,NULL),(129,88,22,1,1,1,1,1,2),(130,88,22,2,8,2,1,NULL,NULL),(131,88,22,4,7,12,1,NULL,NULL),(132,88,22,11,2,NULL,NULL,NULL,NULL),(133,88,23,1,1,1,1,1,2),(134,88,23,2,2,2,1,NULL,NULL),(135,88,23,3,3,7,1,NULL,NULL),(136,88,23,11,2,11,2,NULL,NULL),(137,88,23,12,1,NULL,NULL,NULL,NULL),(138,88,23,14,1,NULL,NULL,NULL,NULL),(139,88,23,15,1,NULL,NULL,NULL,NULL),(140,88,23,18,2,NULL,NULL,NULL,NULL),(141,88,23,21,4,NULL,NULL,NULL,NULL),(142,88,25,2,4,12,2,1,2),(143,88,25,3,2,NULL,NULL,NULL,NULL),(144,88,25,11,2,NULL,NULL,NULL,NULL),(145,88,25,14,1,NULL,NULL,NULL,NULL),(146,88,25,15,1,NULL,NULL,NULL,NULL),(147,88,25,16,1,NULL,NULL,NULL,NULL),(148,88,26,1,1,1,1,1,2),(149,88,26,2,1,3,1,NULL,NULL),(150,88,26,15,1,NULL,NULL,NULL,NULL),(151,88,27,1,1,NULL,NULL,1,2),(152,88,27,2,4,NULL,NULL,NULL,NULL),(153,88,27,14,1,NULL,NULL,NULL,NULL),(154,88,27,15,1,NULL,NULL,NULL,NULL),(155,88,28,1,1,NULL,NULL,1,1),(156,88,28,2,2,NULL,NULL,NULL,NULL),(157,88,28,14,1,NULL,NULL,NULL,NULL),(158,88,28,15,1,NULL,NULL,NULL,NULL),(159,88,28,16,1,NULL,NULL,NULL,NULL),(160,88,28,17,1,NULL,NULL,NULL,NULL),(161,88,29,1,1,2,1,1,2),(162,88,29,2,4,3,1,NULL,NULL),(163,88,29,3,2,10,2,NULL,NULL),(164,88,29,11,1,NULL,NULL,NULL,NULL),(165,88,29,14,1,NULL,NULL,NULL,NULL),(166,88,29,15,1,NULL,NULL,NULL,NULL),(167,88,29,16,1,NULL,NULL,NULL,NULL),(168,88,29,17,1,NULL,NULL,NULL,NULL),(169,88,29,18,2,NULL,NULL,NULL,NULL),(170,88,29,19,1,NULL,NULL,NULL,NULL),(171,88,30,2,6,7,1,1,1),(172,88,30,4,1,12,2,2,1),(173,88,30,14,1,13,2,3,2),(174,88,30,15,1,NULL,NULL,4,2),(175,88,30,21,1,NULL,NULL,NULL,NULL),(176,88,31,1,1,12,1,1,1),(177,88,31,2,8,NULL,NULL,2,2),(178,88,31,11,1,NULL,NULL,3,2),(179,88,31,NULL,NULL,NULL,NULL,4,2),(180,88,32,1,1,10,1,1,2),(181,88,32,2,2,NULL,NULL,NULL,NULL),(182,88,32,11,1,NULL,NULL,NULL,NULL),(183,88,32,14,1,NULL,NULL,NULL,NULL),(184,88,32,15,1,NULL,NULL,NULL,NULL),(185,88,33,1,1,2,1,1,2),(186,88,33,2,6,NULL,NULL,NULL,NULL),(187,88,33,11,1,NULL,NULL,NULL,NULL),(188,88,33,14,1,NULL,NULL,NULL,NULL),(189,88,33,15,1,NULL,NULL,NULL,NULL),(190,88,34,1,1,1,1,1,2),(191,88,34,2,10,2,1,NULL,NULL),(192,88,34,3,2,7,1,NULL,NULL),(193,88,34,9,1,8,2,NULL,NULL),(194,88,34,12,2,12,1,NULL,NULL),(195,88,34,14,2,NULL,NULL,NULL,NULL),(196,88,34,15,1,NULL,NULL,NULL,NULL),(197,88,34,16,1,NULL,NULL,NULL,NULL),(198,88,34,17,1,NULL,NULL,NULL,NULL),(199,88,35,1,1,3,1,1,1),(200,88,35,2,5,NULL,NULL,2,1),(201,88,35,13,1,NULL,NULL,3,2),(202,88,35,12,1,NULL,NULL,4,2),(203,88,35,14,1,NULL,NULL,NULL,NULL),(204,88,35,15,1,NULL,NULL,NULL,NULL),(205,88,35,16,1,NULL,NULL,NULL,NULL),(206,88,35,17,1,NULL,NULL,NULL,NULL),(207,88,35,18,1,NULL,NULL,NULL,NULL),(208,88,35,19,1,NULL,NULL,NULL,NULL),(209,88,35,20,1,NULL,NULL,NULL,NULL),(210,88,36,1,1,1,1,1,1),(211,88,36,2,12,12,1,2,2),(212,88,36,10,1,NULL,NULL,3,2),(213,88,36,11,3,NULL,NULL,4,1),(214,88,36,14,1,NULL,NULL,NULL,NULL),(215,88,36,15,1,NULL,NULL,NULL,NULL),(216,88,36,18,1,NULL,NULL,NULL,NULL),(217,88,37,7,1,7,1,1,1),(218,88,37,2,1,NULL,NULL,2,2),(219,88,37,14,1,NULL,NULL,3,2),(220,88,37,15,1,NULL,NULL,4,2),(221,88,39,1,1,1,1,1,2),(222,88,39,2,10,3,1,NULL,NULL),(223,88,39,3,3,13,4,NULL,NULL),(224,88,39,11,1,NULL,NULL,NULL,NULL),(225,88,39,14,1,NULL,NULL,NULL,NULL),(226,88,39,18,1,NULL,NULL,NULL,NULL),(227,88,40,1,1,NULL,NULL,1,1),(228,88,40,2,6,NULL,NULL,2,1),(229,88,40,4,1,NULL,NULL,3,2),(230,88,40,11,1,NULL,NULL,4,2),(231,88,40,14,2,NULL,NULL,NULL,NULL),(232,88,40,15,1,NULL,NULL,NULL,NULL),(233,88,40,16,1,NULL,NULL,NULL,NULL),(234,88,40,18,2,NULL,NULL,NULL,NULL),(235,88,40,19,1,NULL,NULL,NULL,NULL),(236,88,40,20,2,NULL,NULL,NULL,NULL),(237,88,41,1,1,2,1,1,1),(238,88,41,2,2,NULL,NULL,2,1),(239,88,41,3,1,NULL,NULL,3,2),(240,88,41,16,1,NULL,NULL,NULL,NULL),(241,88,41,17,1,NULL,NULL,NULL,NULL),(242,88,41,18,1,NULL,NULL,NULL,NULL),(243,88,41,19,1,NULL,NULL,NULL,NULL),(244,88,41,20,1,NULL,NULL,NULL,NULL),(245,88,41,21,4,NULL,NULL,NULL,NULL),(246,88,38,1,1,4,2,1,1),(247,88,38,2,7,5,2,2,1),(248,88,38,6,1,6,1,3,2),(249,88,38,5,2,7,1,NULL,NULL),(250,88,38,7,1,8,1,NULL,NULL),(251,88,38,8,1,12,2,NULL,NULL),(252,88,38,11,3,NULL,NULL,NULL,NULL),(253,88,38,14,1,NULL,NULL,NULL,NULL),(254,88,38,15,1,NULL,NULL,NULL,NULL),(255,88,38,16,1,NULL,NULL,NULL,NULL),(256,88,38,18,1,NULL,NULL,NULL,NULL),(257,88,38,21,1,NULL,NULL,NULL,NULL),(258,88,42,1,1,4,1,1,1),(259,88,42,2,2,5,1,2,1),(260,88,42,11,1,12,1,NULL,NULL),(261,88,42,12,1,NULL,NULL,NULL,NULL),(262,88,42,15,1,NULL,NULL,NULL,NULL),(263,88,42,16,1,NULL,NULL,NULL,NULL),(264,88,42,17,1,NULL,NULL,NULL,NULL),(265,88,42,18,1,NULL,NULL,NULL,NULL),(266,88,42,19,1,NULL,NULL,NULL,NULL),(267,88,42,20,1,NULL,NULL,NULL,NULL),(268,88,42,21,1,NULL,NULL,NULL,NULL),(269,88,43,11,1,12,1,1,2),(270,88,43,18,1,NULL,NULL,NULL,NULL),(271,88,44,14,1,NULL,NULL,1,2),(272,88,44,15,1,NULL,NULL,NULL,NULL),(273,88,45,2,7,NULL,NULL,1,2),(274,88,45,11,1,NULL,NULL,NULL,NULL),(275,88,45,15,1,NULL,NULL,NULL,NULL),(276,88,45,21,NULL,NULL,NULL,NULL,NULL),(277,88,46,1,1,1,1,1,2),(278,88,46,8,1,3,1,NULL,NULL),(279,88,46,11,3,4,1,NULL,NULL),(280,88,46,NULL,NULL,5,1,NULL,NULL),(281,88,47,1,1,1,1,1,1),(282,88,47,2,25,3,3,1,1),(283,88,47,3,1,4,1,NULL,NULL),(284,88,47,6,1,9,1,NULL,NULL),(285,88,47,9,1,10,8,NULL,NULL),(286,88,47,12,1,12,2,NULL,NULL),(287,88,47,14,2,NULL,NULL,NULL,NULL),(288,88,47,15,1,NULL,NULL,NULL,NULL),(289,88,47,16,1,NULL,NULL,NULL,NULL),(290,88,47,17,2,NULL,NULL,NULL,NULL),(291,88,47,18,1,NULL,NULL,NULL,NULL),(292,88,47,19,1,NULL,NULL,NULL,NULL),(293,88,47,20,1,NULL,NULL,NULL,NULL),(294,88,47,21,NULL,NULL,NULL,NULL,NULL),(295,88,48,1,1,1,1,1,1),(296,88,48,2,4,3,1,4,1),(297,88,48,3,3,10,1,NULL,NULL),(298,88,48,9,1,13,2,NULL,NULL),(299,88,48,10,1,NULL,NULL,NULL,NULL),(300,88,48,11,1,NULL,NULL,NULL,NULL),(301,88,48,12,1,NULL,NULL,NULL,NULL),(302,88,51,1,1,1,1,1,1),(303,88,51,2,5,2,1,4,1),(304,88,51,7,1,3,1,NULL,NULL),(305,88,51,8,1,5,1,NULL,NULL),(306,88,51,9,1,7,1,NULL,NULL),(307,88,51,10,1,12,1,NULL,NULL),(308,88,51,11,1,NULL,4,NULL,NULL),(309,88,52,1,1,1,1,1,1),(310,88,52,2,8,3,2,2,1),(311,88,52,4,4,NULL,NULL,NULL,NULL),(312,88,52,6,1,NULL,NULL,NULL,NULL),(313,88,52,11,2,NULL,NULL,NULL,NULL),(314,88,52,14,1,NULL,NULL,NULL,NULL),(315,88,52,15,1,NULL,NULL,NULL,NULL),(316,88,52,16,2,NULL,NULL,NULL,NULL),(317,88,52,17,1,NULL,NULL,NULL,NULL),(318,88,52,18,1,NULL,NULL,NULL,NULL),(319,88,52,20,1,NULL,NULL,NULL,NULL),(320,88,52,21,11,NULL,NULL,NULL,NULL),(321,88,54,1,1,1,1,1,2),(322,88,54,3,1,3,2,NULL,NULL),(323,88,54,4,1,4,1,NULL,NULL),(324,88,54,5,1,6,1,NULL,NULL),(325,88,54,11,2,12,1,NULL,NULL),(326,88,53,1,1,1,1,1,1),(327,88,53,2,7,3,1,2,1),(328,88,53,8,1,7,1,4,1),(329,88,53,9,1,13,1,NULL,NULL),(330,88,53,10,1,NULL,NULL,NULL,NULL),(331,88,53,11,6,NULL,NULL,NULL,NULL),(332,88,53,14,1,NULL,NULL,NULL,NULL),(333,88,53,15,1,NULL,NULL,NULL,NULL),(334,88,53,16,2,NULL,NULL,NULL,NULL),(335,88,53,17,1,NULL,NULL,NULL,NULL),(336,88,53,18,1,NULL,NULL,NULL,NULL),(337,88,56,1,1,1,1,1,2),(338,88,56,2,4,3,1,NULL,NULL),(339,88,56,14,1,7,1,NULL,NULL),(340,88,56,15,1,13,1,NULL,NULL),(341,88,55,1,1,1,NULL,1,1),(342,88,55,2,6,NULL,NULL,2,1),(343,88,55,9,1,NULL,NULL,NULL,NULL),(344,88,55,11,2,NULL,NULL,NULL,NULL),(345,88,55,14,1,NULL,NULL,NULL,NULL),(346,88,55,15,1,NULL,NULL,NULL,NULL),(347,88,55,16,1,NULL,NULL,NULL,NULL),(348,88,55,17,1,NULL,NULL,NULL,NULL),(349,88,57,1,1,1,1,1,1),(350,88,57,2,15,2,1,2,1),(351,88,57,3,1,10,1,NULL,NULL),(352,88,57,9,1,12,1,NULL,NULL),(353,88,57,11,2,13,3,NULL,NULL),(354,88,57,14,1,NULL,NULL,NULL,NULL),(355,88,57,15,1,NULL,NULL,NULL,NULL),(356,88,57,18,1,NULL,NULL,NULL,NULL),(357,88,57,21,2,NULL,NULL,NULL,NULL),(358,88,58,1,1,1,1,1,1),(359,88,58,2,2,12,4,2,2),(360,88,58,3,4,13,1,3,2),(361,88,58,7,1,NULL,NULL,4,2),(362,88,58,8,1,NULL,NULL,NULL,NULL),(363,88,58,11,3,NULL,NULL,NULL,NULL),(364,88,58,14,1,NULL,NULL,NULL,NULL),(365,88,58,15,1,NULL,NULL,NULL,NULL),(366,88,58,16,1,NULL,NULL,NULL,NULL),(367,88,58,17,1,NULL,NULL,NULL,NULL),(368,88,59,2,10,1,1,1,1),(369,88,59,3,8,3,1,2,2),(370,88,59,4,1,7,1,3,2),(371,88,59,11,1,12,1,4,2),(372,88,59,14,1,NULL,NULL,NULL,NULL),(373,88,59,17,1,NULL,NULL,NULL,NULL),(374,88,59,20,1,NULL,NULL,NULL,NULL),(375,88,60,1,1,1,1,1,1),(376,88,60,2,7,3,1,2,2),(377,88,60,11,2,10,2,3,2),(378,88,60,15,1,NULL,NULL,NULL,NULL),(379,88,60,18,1,NULL,NULL,NULL,NULL),(380,88,60,20,1,NULL,NULL,NULL,NULL),(381,88,60,21,1,NULL,NULL,NULL,NULL),(382,88,62,1,1,1,1,1,2),(383,88,62,11,1,3,1,NULL,NULL),(384,88,62,15,1,13,1,NULL,NULL),(385,88,62,21,1,NULL,NULL,NULL,NULL),(391,88,63,15,1,NULL,NULL,NULL,NULL),(392,88,63,16,1,NULL,NULL,NULL,NULL),(393,88,63,17,1,NULL,NULL,NULL,NULL),(394,88,63,18,1,NULL,NULL,NULL,NULL),(395,88,63,21,6,NULL,NULL,NULL,NULL),(396,88,64,6,1,6,1,1,1),(397,88,64,8,1,12,4,2,1),(398,88,64,11,2,NULL,NULL,NULL,NULL),(399,88,64,14,1,NULL,NULL,NULL,NULL),(400,88,64,15,1,NULL,NULL,NULL,NULL),(401,88,64,16,1,NULL,NULL,NULL,NULL),(402,88,64,17,1,NULL,NULL,NULL,NULL),(403,88,64,18,1,NULL,NULL,NULL,NULL),(404,88,64,19,1,NULL,NULL,NULL,NULL),(405,88,64,20,1,NULL,NULL,NULL,NULL),(406,88,64,21,1,NULL,NULL,NULL,NULL),(407,88,65,3,2,5,1,1,1),(408,88,65,14,1,7,1,2,1),(409,88,65,15,1,12,1,NULL,NULL),(410,88,65,16,1,NULL,NULL,NULL,NULL),(411,88,65,18,1,NULL,NULL,NULL,NULL),(412,88,65,21,1,NULL,NULL,NULL,NULL),(413,88,66,1,1,1,1,1,2),(414,88,66,3,1,NULL,NULL,NULL,NULL),(415,88,66,11,2,NULL,NULL,NULL,NULL),(416,88,66,15,1,NULL,NULL,NULL,NULL),(417,88,66,18,1,NULL,NULL,NULL,NULL),(418,88,66,21,1,NULL,NULL,NULL,NULL),(419,88,67,11,1,10,2,1,1),(420,88,67,14,1,NULL,NULL,2,1),(421,88,67,16,1,NULL,NULL,NULL,NULL),(422,88,67,17,1,NULL,NULL,NULL,NULL),(423,88,67,18,1,NULL,NULL,NULL,NULL),(424,88,67,19,1,NULL,NULL,NULL,NULL),(425,88,67,20,1,NULL,NULL,NULL,NULL),(426,88,67,21,1,NULL,NULL,NULL,NULL),(427,88,68,1,1,5,1,1,1),(428,88,68,2,2,8,1,2,1),(429,88,68,3,100,NULL,NULL,NULL,NULL),(430,88,68,11,1,NULL,NULL,NULL,NULL),(431,88,68,14,1,NULL,NULL,NULL,NULL),(432,88,68,15,1,NULL,NULL,NULL,NULL),(433,88,68,16,1,NULL,NULL,NULL,NULL),(434,88,68,17,1,NULL,NULL,NULL,NULL),(435,88,68,18,2,NULL,NULL,NULL,NULL),(436,88,69,1,1,5,1,1,1),(437,88,69,2,5,13,2,2,1),(438,88,69,3,1,NULL,NULL,NULL,NULL),(439,88,69,11,2,NULL,NULL,NULL,NULL),(440,88,69,14,1,NULL,NULL,NULL,NULL),(441,88,69,15,1,NULL,NULL,NULL,NULL),(442,88,69,16,1,NULL,NULL,NULL,NULL),(443,88,69,17,1,NULL,NULL,NULL,NULL),(444,88,69,18,1,NULL,NULL,NULL,NULL),(445,88,70,1,1,1,1,1,1),(446,88,70,2,4,12,1,NULL,NULL),(447,88,70,11,2,13,1,NULL,NULL),(448,88,70,15,1,NULL,NULL,NULL,NULL),(449,88,70,16,1,NULL,NULL,NULL,NULL),(450,88,70,17,1,NULL,NULL,NULL,NULL),(451,88,70,21,1,NULL,NULL,NULL,NULL),(452,88,72,1,1,1,1,1,2),(453,88,72,2,5,2,1,NULL,NULL),(454,88,72,14,1,7,1,NULL,NULL),(455,88,72,15,1,NULL,NULL,NULL,NULL),(456,88,71,1,1,12,1,1,1),(457,88,71,2,10,13,1,NULL,NULL),(458,88,71,3,1,NULL,NULL,NULL,NULL),(459,88,71,8,1,NULL,NULL,NULL,NULL),(460,88,71,11,2,NULL,NULL,NULL,NULL),(461,88,71,15,1,NULL,NULL,NULL,NULL),(462,88,71,21,1,NULL,NULL,NULL,NULL),(463,88,73,2,4,2,4,1,2),(464,88,73,3,1,NULL,NULL,NULL,NULL),(465,88,74,2,3,7,1,1,2),(466,88,74,11,1,NULL,NULL,NULL,NULL),(467,88,74,15,1,NULL,NULL,NULL,NULL),(468,88,74,16,1,NULL,NULL,NULL,NULL),(469,88,75,1,1,1,1,1,2),(470,88,75,2,5,13,1,NULL,NULL),(471,88,75,11,2,NULL,NULL,NULL,NULL),(472,88,75,15,1,NULL,NULL,NULL,NULL),(473,88,75,18,1,NULL,NULL,NULL,NULL),(474,88,77,15,1,NULL,NULL,1,1),(475,88,77,16,1,NULL,NULL,2,2),(476,88,77,17,1,NULL,NULL,2,2),(477,88,77,18,1,NULL,NULL,3,2),(478,88,78,15,1,NULL,NULL,1,1),(479,88,78,16,1,NULL,NULL,2,2),(480,88,78,17,1,NULL,NULL,2,2),(481,88,78,18,1,NULL,NULL,3,2),(482,88,76,1,1,5,1,1,2),(483,88,76,2,9,7,1,NULL,NULL),(484,88,76,3,1,NULL,NULL,NULL,NULL),(485,88,76,11,2,NULL,NULL,NULL,NULL),(486,88,79,2,1,7,1,1,1),(487,88,79,11,1,12,NULL,3,1),(488,88,79,15,2,NULL,NULL,NULL,NULL),(489,88,79,16,1,NULL,NULL,NULL,NULL),(490,88,80,1,1,1,1,1,1),(491,88,80,2,2,2,1,3,1),(492,88,80,9,1,3,2,NULL,NULL),(493,88,80,11,3,NULL,NULL,NULL,NULL),(494,88,80,14,1,NULL,NULL,NULL,NULL),(495,88,80,15,1,NULL,NULL,NULL,NULL),(496,88,80,16,1,NULL,NULL,NULL,NULL),(497,88,80,17,1,NULL,NULL,NULL,NULL),(498,88,80,18,4,NULL,NULL,NULL,NULL),(499,88,81,15,1,NULL,NULL,1,1),(500,88,81,18,1,NULL,NULL,2,1),(501,88,82,11,2,12,2,1,1),(502,88,82,15,1,7,1,2,1),(503,88,82,18,1,NULL,NULL,NULL,NULL),(504,88,83,1,1,12,1,1,2),(505,88,83,2,7,NULL,NULL,NULL,NULL),(506,88,83,9,1,NULL,NULL,NULL,NULL),(507,88,83,11,4,NULL,NULL,NULL,NULL),(508,88,83,12,1,NULL,NULL,NULL,NULL),(509,88,84,1,1,NULL,NULL,1,1),(510,88,84,2,2,NULL,NULL,2,2),(511,88,84,10,1,NULL,NULL,3,2),(512,88,84,11,1,NULL,NULL,3,1),(513,88,84,12,1,NULL,NULL,NULL,NULL),(514,88,84,15,1,NULL,NULL,NULL,NULL),(515,88,84,18,1,NULL,NULL,NULL,NULL),(516,88,85,1,1,NULL,NULL,1,1),(517,88,85,2,7,NULL,NULL,2,NULL),(518,88,85,11,2,NULL,NULL,NULL,1),(519,88,85,12,1,NULL,NULL,NULL,NULL),(520,88,85,14,1,NULL,NULL,NULL,NULL),(521,88,85,15,1,NULL,NULL,NULL,NULL),(522,88,85,16,1,NULL,NULL,NULL,NULL),(523,88,85,17,1,NULL,NULL,NULL,NULL),(524,88,85,18,2,NULL,NULL,NULL,NULL),(525,88,86,1,1,NULL,NULL,NULL,NULL),(526,88,86,11,1,NULL,NULL,NULL,NULL),(527,88,86,15,1,NULL,NULL,NULL,NULL),(528,88,86,18,1,NULL,NULL,NULL,NULL),(529,88,88,1,1,1,1,1,1),(530,88,88,3,1,2,1,2,1),(531,88,88,11,3,3,2,NULL,NULL),(532,88,88,15,1,NULL,NULL,NULL,NULL),(533,88,88,16,1,NULL,NULL,NULL,NULL),(534,88,88,17,1,NULL,NULL,NULL,NULL),(535,88,88,18,1,NULL,NULL,NULL,NULL),(536,88,89,1,1,1,1,1,1),(537,88,89,2,16,3,2,2,2),(538,88,89,10,1,4,2,3,2),(539,88,89,11,3,5,1,4,1),(540,88,89,16,1,12,6,NULL,NULL),(541,88,89,18,1,NULL,NULL,NULL,NULL),(542,88,90,1,1,1,1,1,2),(543,88,90,11,2,11,4,NULL,NULL),(544,88,90,12,1,NULL,NULL,NULL,NULL),(545,88,90,15,1,NULL,NULL,NULL,NULL),(546,88,90,18,1,NULL,NULL,NULL,NULL),(547,88,91,1,1,NULL,NULL,1,2),(548,88,91,9,1,NULL,NULL,NULL,NULL),(549,88,91,15,1,NULL,NULL,NULL,NULL),(550,88,91,18,1,NULL,NULL,NULL,NULL),(551,88,92,1,1,13,2,1,1),(552,88,92,2,10,NULL,NULL,2,1),(553,88,92,11,1,NULL,NULL,NULL,NULL),(554,88,92,14,1,NULL,NULL,NULL,NULL),(555,88,92,15,1,NULL,NULL,NULL,NULL),(556,88,92,16,1,NULL,NULL,NULL,NULL),(557,88,92,19,1,NULL,NULL,NULL,NULL),(558,88,92,20,1,NULL,NULL,NULL,NULL),(559,88,92,21,1,NULL,NULL,NULL,NULL),(560,88,93,1,1,2,1,1,1),(561,88,93,2,2,NULL,NULL,2,1),(562,88,93,11,3,NULL,NULL,NULL,NULL),(563,88,93,14,1,NULL,NULL,NULL,NULL),(564,88,93,15,1,NULL,NULL,NULL,NULL),(565,88,93,16,2,NULL,NULL,NULL,NULL),(566,88,93,17,1,NULL,NULL,NULL,NULL),(567,88,93,18,3,NULL,NULL,NULL,NULL),(568,88,93,20,1,NULL,NULL,NULL,NULL),(569,88,94,11,1,NULL,NULL,1,1),(570,88,94,16,1,NULL,NULL,NULL,NULL),(571,88,94,18,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `encuesta_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_quimico`
--

DROP TABLE IF EXISTS `encuesta_quimico`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_quimico` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_quimico`
--

LOCK TABLES `encuesta_quimico` WRITE;
/*!40000 ALTER TABLE `encuesta_quimico` DISABLE KEYS */;
INSERT INTO `encuesta_quimico` VALUES (1,'para uso del hogar'),(2,'Quema'),(3,'Entierra'),(4,'Triple lavado'),(5,'Perfora y almacena'),(6,'Los bota en la parcela');
/*!40000 ALTER TABLE `encuesta_quimico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_razonesmigracion`
--

DROP TABLE IF EXISTS `encuesta_razonesmigracion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_razonesmigracion` (
  `id` int(11) NOT NULL auto_increment,
  `razones` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_recolector` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_recolector`
--

LOCK TABLES `encuesta_recolector` WRITE;
/*!40000 ALTER TABLE `encuesta_recolector` DISABLE KEYS */;
INSERT INTO `encuesta_recolector` VALUES (1,'Derling Sánchez'),(2,'Faustino Laguna Gamez'),(3,'Aurelio González'),(4,'Mario Montano'),(8,'Jamileth Ruiz Mejía'),(7,'Yader Aguilar'),(9,'Marcela Pino'),(10,'Marcos Zeledón'),(11,'Marvin Molina Zamora');
/*!40000 ALTER TABLE `encuesta_recolector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_reforestacion`
--

DROP TABLE IF EXISTS `encuesta_reforestacion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_reforestacion` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_reforestacion_1bb8f392` (`content_type_id`),
  KEY `encuesta_reforestacion_7d61c803` (`object_id`),
  KEY `encuesta_reforestacion_761ba4b0` (`actividad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_reforestacion`
--

LOCK TABLES `encuesta_reforestacion` WRITE;
/*!40000 ALTER TABLE `encuesta_reforestacion` DISABLE KEYS */;
INSERT INTO `encuesta_reforestacion` VALUES (156,88,63,6,'500.00'),(155,88,63,3,'400.00'),(154,88,63,2,'100.00'),(4,88,2,7,'200.00'),(5,88,2,8,'40.00'),(6,88,3,1,'100.00'),(7,88,3,2,'80.00'),(8,88,3,5,'60.00'),(9,88,3,6,'70.00'),(10,88,4,2,'126.00'),(11,88,4,3,'30.00'),(12,88,4,6,'200.00'),(13,88,4,7,'1200.00'),(14,88,4,8,'12.00'),(15,88,5,3,'270.00'),(16,88,5,7,'1800.00'),(17,88,6,3,'40.00'),(18,88,6,6,'35.00'),(19,88,6,9,'15.00'),(20,88,7,3,'200.00'),(21,88,7,4,'100.00'),(22,88,7,6,'400.00'),(23,88,7,7,'20000.00'),(24,88,7,8,'300.00'),(25,88,8,2,'120.00'),(26,88,9,1,'50.00'),(27,88,9,2,'200.00'),(28,88,9,3,'300.00'),(29,88,9,5,'20.00'),(30,88,10,2,'400.00'),(31,88,10,3,'300.00'),(32,88,10,4,'145.00'),(33,88,10,6,'600.00'),(34,88,10,7,'4500.00'),(35,88,10,8,'150.00'),(36,88,11,1,'80.00'),(37,88,11,2,'30.00'),(38,88,11,3,'120.00'),(39,88,11,4,'200.00'),(40,88,11,6,'40.00'),(41,88,11,7,'80.00'),(42,88,12,6,'30.00'),(43,88,13,1,'300.00'),(44,88,13,3,'500.00'),(45,88,13,6,'300.00'),(46,88,13,7,'100.00'),(47,88,14,2,'1000.00'),(48,88,15,2,'6.00'),(49,88,15,4,'50.00'),(50,88,15,7,'3000.00'),(51,88,16,2,'8.00'),(52,88,16,6,'200.00'),(53,88,16,7,'600.00'),(54,88,16,8,'40.00'),(55,88,17,2,'50.00'),(56,88,17,3,'20000.00'),(57,88,17,7,'850.00'),(58,88,17,8,'60.00'),(59,88,18,6,'30.00'),(60,88,19,6,'40.00'),(61,88,21,6,'50.00'),(62,88,23,2,'60.00'),(63,88,23,5,'40.00'),(64,88,23,6,'20.00'),(65,88,25,2,'80.00'),(66,88,25,3,'30.00'),(67,88,25,4,'16.00'),(68,88,25,6,'18.00'),(69,88,26,4,'20.00'),(70,88,26,6,'700.00'),(71,88,27,6,'20.00'),(72,88,28,2,'10.00'),(73,88,28,3,'6.00'),(74,88,28,6,'10.00'),(75,88,29,2,'25.00'),(76,88,30,6,'200.00'),(77,88,30,8,'200.00'),(78,88,31,6,'100.00'),(79,88,32,3,'50.00'),(80,88,32,6,'50.00'),(81,88,32,9,'5.00'),(82,88,33,3,'3200.00'),(83,88,33,6,'800.00'),(84,88,33,7,'200.00'),(85,88,34,7,'2000.00'),(86,88,34,8,'40.00'),(87,88,35,3,'50.00'),(88,88,35,6,'10.00'),(89,88,36,3,'50.00'),(90,88,36,6,'200.00'),(91,88,37,3,'70.00'),(92,88,37,4,'100.00'),(93,88,37,6,'20.00'),(94,88,37,9,'15.00'),(95,88,39,2,'10.00'),(96,88,39,3,'20.00'),(97,88,39,6,'60.00'),(98,88,39,8,'25.00'),(99,88,38,2,'30.00'),(100,88,38,3,'70.00'),(101,88,40,4,'16.00'),(102,88,41,4,'10.00'),(103,88,41,6,'25.00'),(104,88,42,2,'50.00'),(105,88,42,3,'300.00'),(106,88,42,6,'100.00'),(107,88,44,6,'20.00'),(108,88,44,7,'2000.00'),(109,88,46,7,'4000.00'),(110,88,47,2,'10.00'),(111,88,47,3,'60.00'),(112,88,47,6,'100.00'),(113,88,47,8,'45.00'),(114,88,48,2,'400.00'),(115,88,48,6,'80.00'),(116,88,49,6,'20.00'),(117,88,49,8,'5.00'),(118,88,51,6,'100.00'),(119,88,52,3,'500.00'),(120,88,52,6,'40.00'),(121,88,53,6,'200.00'),(122,88,54,1,'300.00'),(123,88,54,2,'100.00'),(124,88,54,3,'800.00'),(125,88,54,4,'80.00'),(126,88,54,5,'50.00'),(127,88,54,6,'230.00'),(128,88,54,7,'300.00'),(129,88,56,2,'50.00'),(130,88,56,3,'200.00'),(131,88,56,5,'12.00'),(132,88,56,6,'120.00'),(133,88,56,7,'80.00'),(134,88,56,8,'12.00'),(135,88,57,1,'150.00'),(136,88,57,2,'150.00'),(137,88,57,3,'700.00'),(138,88,57,5,'50.00'),(139,88,57,6,'300.00'),(140,88,57,7,'50.00'),(141,88,57,9,'20.00'),(142,88,58,4,'30.00'),(143,88,58,8,'100.00'),(144,88,59,2,'500.00'),(145,88,59,3,'200.00'),(146,88,59,4,'500.00'),(147,88,59,6,'800.00'),(148,88,59,7,'150.00'),(149,88,59,9,'100.00'),(150,88,60,3,'400.00'),(151,88,60,6,'300.00'),(152,88,62,6,'20.00'),(153,88,62,7,'20.00'),(157,88,63,9,'100.00'),(158,88,64,3,'200.00'),(159,88,65,1,'30.00'),(160,88,65,2,'1.00'),(161,88,65,3,'15.00'),(162,88,66,3,'200.00'),(163,88,67,8,'15.00'),(164,88,68,6,'25.00'),(165,88,69,6,'20.00'),(166,88,72,2,'10.00'),(167,88,72,3,'80.00'),(168,88,72,6,'200.00'),(169,88,73,1,'80.00'),(170,88,73,3,'50.00'),(171,88,73,6,'50.00'),(172,88,75,5,'50.00'),(173,88,75,6,'200.00'),(174,88,75,7,'500.00'),(175,88,76,6,'50.00'),(176,88,76,7,'2000.00'),(177,88,77,3,'100.00'),(178,88,77,5,'150.00'),(179,88,77,6,'200.00'),(180,88,77,7,'2250.00'),(181,88,77,8,'50.00'),(182,88,78,3,'100.00'),(183,88,78,5,'150.00'),(184,88,78,6,'200.00'),(185,88,78,7,'2250.00'),(186,88,78,8,'50.00'),(187,88,79,8,'10.00'),(188,88,80,6,'100.00'),(189,88,83,3,'100.00'),(190,88,83,6,'15.00'),(191,88,84,1,'100.00'),(192,88,84,2,'50.00'),(193,88,84,3,'150.00'),(194,88,84,6,'100.00'),(195,88,84,7,'12000.00'),(196,88,84,8,'30000.00'),(197,88,85,3,'50.00'),(198,88,85,6,'200.00'),(199,88,88,6,'50.00'),(200,88,92,8,'12.00'),(201,88,93,6,'15.00'),(202,88,94,8,'7.00');
/*!40000 ALTER TABLE `encuesta_reforestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_respuestascancer`
--

DROP TABLE IF EXISTS `encuesta_respuestascancer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_respuestascancer` (
  `id` int(11) NOT NULL auto_increment,
  `respuesta` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_riego` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `lugar` int(11) default NULL,
  `inundacion` int(11) default NULL,
  `aspersion` int(11) default NULL,
  `goteo` int(11) default NULL,
  `regadera` int(11) default NULL,
  `panada` int(11) default NULL,
  `manguera` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_riego_1bb8f392` (`content_type_id`),
  KEY `encuesta_riego_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_riego`
--

LOCK TABLES `encuesta_riego` WRITE;
/*!40000 ALTER TABLE `encuesta_riego` DISABLE KEYS */;
INSERT INTO `encuesta_riego` VALUES (1,88,3,1,2,1,2,2,2,2),(2,88,6,1,2,2,2,1,1,2),(3,88,6,2,2,2,2,1,1,2),(4,88,8,1,2,2,1,2,2,2),(5,88,8,2,2,2,1,2,2,2),(6,88,9,1,2,2,2,1,2,2),(7,88,10,1,2,2,2,1,2,2),(8,88,13,2,2,1,2,2,2,2),(9,88,19,NULL,NULL,NULL,NULL,1,NULL,NULL),(10,88,21,3,NULL,NULL,NULL,NULL,NULL,1),(11,88,22,3,NULL,1,NULL,NULL,NULL,NULL),(12,88,24,3,NULL,1,NULL,NULL,NULL,NULL),(13,88,25,3,NULL,NULL,NULL,1,NULL,1),(14,88,26,3,NULL,NULL,NULL,1,NULL,NULL),(15,88,28,3,NULL,NULL,NULL,NULL,NULL,1),(16,88,29,2,NULL,NULL,NULL,1,NULL,1),(17,88,43,1,NULL,1,NULL,NULL,NULL,NULL),(18,88,47,1,NULL,1,NULL,NULL,NULL,NULL),(19,88,47,2,NULL,1,NULL,NULL,NULL,NULL),(20,88,59,1,NULL,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `encuesta_riego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_rubros`
--

DROP TABLE IF EXISTS `encuesta_rubros`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_rubros` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_salud` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `donde` int(11) NOT NULL,
  `limpieza` int(11) default NULL,
  `deshacer` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_salud_1bb8f392` (`content_type_id`),
  KEY `encuesta_salud_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_salud`
--

LOCK TABLES `encuesta_salud` WRITE;
/*!40000 ALTER TABLE `encuesta_salud` DISABLE KEYS */;
INSERT INTO `encuesta_salud` VALUES (59,88,62,3,1,1),(2,88,2,1,1,1),(3,88,3,3,3,3),(4,88,4,1,3,3),(5,88,5,1,2,2),(6,88,6,1,1,3),(7,88,7,2,1,1),(8,88,8,1,4,2),(9,88,9,1,1,2),(10,88,10,1,2,1),(11,88,11,1,2,1),(12,88,12,1,1,3),(13,88,13,1,1,3),(14,88,14,1,1,1),(15,88,15,1,1,4),(16,88,16,3,1,4),(17,88,17,1,1,1),(18,88,18,1,1,1),(19,88,19,1,1,2),(20,88,20,1,3,2),(21,88,21,1,3,3),(22,88,22,1,3,3),(23,88,23,1,3,3),(24,88,24,1,3,2),(25,88,25,1,2,2),(26,88,26,1,1,1),(27,88,27,1,3,4),(28,88,28,1,1,2),(29,88,29,1,1,3),(30,88,30,1,2,5),(31,88,31,1,2,5),(32,88,32,1,1,3),(33,88,33,1,1,2),(34,88,34,1,1,2),(35,88,35,1,1,3),(36,88,36,1,4,1),(37,88,37,1,NULL,3),(38,88,39,1,1,2),(39,88,40,1,3,3),(40,88,41,1,3,3),(41,88,38,1,1,1),(42,88,42,1,1,2),(43,88,43,1,5,2),(44,88,44,1,5,3),(45,88,45,3,1,2),(46,88,46,1,2,4),(47,88,47,1,1,2),(48,88,48,1,1,5),(49,88,51,1,1,1),(50,88,52,1,1,4),(51,88,54,1,1,2),(52,88,53,1,1,2),(53,88,56,1,1,2),(54,88,55,1,1,2),(55,88,57,1,1,2),(56,88,58,1,1,3),(57,88,59,1,1,2),(58,88,60,1,1,2),(60,88,63,1,1,2),(61,88,64,1,1,1),(62,88,66,1,1,2),(63,88,67,3,1,1),(64,88,65,1,1,4),(65,88,68,1,1,1),(66,88,69,1,1,5),(67,88,70,1,1,1),(68,88,72,1,1,1),(69,88,69,1,NULL,NULL),(70,88,71,1,1,5),(71,88,73,1,1,1),(72,88,74,1,1,1),(73,88,75,1,1,1),(74,88,77,1,1,1),(75,88,78,1,1,1),(76,88,76,1,1,1),(77,88,79,1,1,5),(78,88,80,1,2,1),(79,88,81,1,1,5),(80,88,83,1,4,2),(81,88,82,1,1,4),(82,88,84,1,5,3),(83,88,85,1,2,1),(84,88,86,1,2,1),(85,88,88,1,4,2),(86,88,89,1,1,1),(87,88,90,1,3,2),(88,88,91,1,2,2),(89,88,92,1,1,5),(90,88,93,1,1,3),(91,88,94,2,1,4);
/*!40000 ALTER TABLE `encuesta_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_salud_agroquimico`
--

DROP TABLE IF EXISTS `encuesta_salud_agroquimico`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_salud_agroquimico` (
  `id` int(11) NOT NULL auto_increment,
  `salud_id` int(11) NOT NULL,
  `quimico_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `salud_id` (`salud_id`,`quimico_id`),
  KEY `encuesta_salud_agroquimico_40388c8a` (`salud_id`),
  KEY `encuesta_salud_agroquimico_7fef6910` (`quimico_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_salud_agroquimico`
--

LOCK TABLES `encuesta_salud_agroquimico` WRITE;
/*!40000 ALTER TABLE `encuesta_salud_agroquimico` DISABLE KEYS */;
INSERT INTO `encuesta_salud_agroquimico` VALUES (64,62,3),(63,61,3),(3,2,2),(36,3,5),(5,4,4),(6,4,5),(7,5,4),(8,5,5),(9,6,4),(10,6,5),(11,7,4),(12,7,5),(13,8,1),(14,9,3),(15,10,5),(16,11,4),(17,11,5),(18,12,5),(19,13,3),(20,14,3),(21,15,3),(22,16,3),(23,17,2),(24,18,2),(25,19,5),(26,20,3),(27,21,3),(28,22,3),(29,23,5),(30,24,3),(31,25,5),(32,27,2),(33,27,3),(34,28,4),(35,28,5),(37,31,3),(38,33,4),(39,33,5),(40,34,2),(41,35,3),(42,36,2),(43,37,2),(44,37,3),(45,38,3),(46,39,2),(47,40,3),(48,41,2),(49,42,2),(50,43,3),(51,44,3),(52,46,5),(53,47,3),(54,49,2),(55,50,3),(56,52,3),(57,53,3),(58,54,3),(59,56,2),(60,56,3),(61,57,3),(62,58,3),(65,63,2),(66,64,3),(67,65,5),(68,66,2),(70,67,6),(71,68,2),(72,69,6),(73,70,6),(74,71,3),(75,72,2),(76,73,2),(77,73,6),(78,74,2),(79,75,2),(80,76,2),(81,76,6),(82,77,2),(83,78,3),(84,80,2),(85,81,2),(86,82,2),(87,83,3),(88,84,3),(89,85,3),(90,86,3),(91,87,3),(92,88,3),(93,90,3),(94,91,6);
/*!40000 ALTER TABLE `encuesta_salud_agroquimico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_salud_tratamiento`
--

DROP TABLE IF EXISTS `encuesta_salud_tratamiento`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_salud_tratamiento` (
  `id` int(11) NOT NULL auto_increment,
  `salud_id` int(11) NOT NULL,
  `tratamiento_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `salud_id` (`salud_id`,`tratamiento_id`),
  KEY `encuesta_salud_tratamiento_40388c8a` (`salud_id`),
  KEY `encuesta_salud_tratamiento_1bbf3ef3` (`tratamiento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_salud_tratamiento`
--

LOCK TABLES `encuesta_salud_tratamiento` WRITE;
/*!40000 ALTER TABLE `encuesta_salud_tratamiento` DISABLE KEYS */;
INSERT INTO `encuesta_salud_tratamiento` VALUES (1,2,2),(2,4,2),(3,4,3),(4,6,2),(5,7,3),(6,7,4),(7,9,3),(8,10,1),(9,10,2),(10,10,3),(11,11,2),(12,11,3),(13,12,2),(14,15,3),(15,15,4),(16,19,2),(17,19,3),(18,20,3),(19,31,5),(20,38,2),(21,41,5),(22,42,3),(23,43,2),(24,43,3),(25,44,2),(26,46,3),(27,47,2),(28,47,3),(29,49,3),(30,50,1),(31,50,2),(32,51,2),(33,51,3),(34,52,5),(35,53,2),(36,53,3),(37,54,5),(38,55,2),(39,56,3),(40,57,2),(41,57,3),(42,58,2),(43,58,3),(44,59,3),(45,60,3),(46,61,5),(47,62,3),(48,63,5),(49,65,1),(50,66,3),(52,67,5),(53,68,2),(54,70,5),(55,71,2),(56,72,3),(57,73,2),(58,74,2),(59,74,3),(60,75,2),(61,75,3),(62,76,2),(63,76,3),(64,77,2),(65,78,3),(66,79,3),(67,80,2),(68,81,2),(69,81,3),(70,82,3),(71,85,2),(72,85,3),(73,87,2),(74,89,2),(75,90,2);
/*!40000 ALTER TABLE `encuesta_salud_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_seguridad`
--

DROP TABLE IF EXISTS `encuesta_seguridad`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_seguridad` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `alimento_id` int(11) NOT NULL,
  `producen` int(11) NOT NULL,
  `compran` int(11) NOT NULL,
  `consumen` int(11) NOT NULL,
  `consumen_invierno` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_seguridad_1bb8f392` (`content_type_id`),
  KEY `encuesta_seguridad_7d61c803` (`object_id`),
  KEY `encuesta_seguridad_7daf7119` (`alimento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2598 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_seguridad`
--

LOCK TABLES `encuesta_seguridad` WRITE;
/*!40000 ALTER TABLE `encuesta_seguridad` DISABLE KEYS */;
INSERT INTO `encuesta_seguridad` VALUES (1683,88,63,2,1,2,1,1),(1682,88,63,1,1,2,1,1),(1681,88,62,30,2,2,2,2),(1680,88,62,29,2,1,1,2),(1679,88,62,28,2,1,1,1),(1678,88,62,27,2,2,2,2),(1677,88,62,26,2,2,2,2),(1676,88,62,25,1,2,1,2),(1675,88,62,24,2,1,1,1),(1674,88,62,23,2,1,1,1),(1673,88,62,22,2,2,2,2),(1672,88,62,21,2,1,2,2),(1671,88,62,20,2,2,2,2),(1670,88,62,19,2,1,1,1),(1669,88,62,18,2,2,2,2),(1668,88,62,17,2,1,1,2),(1667,88,62,16,2,2,2,2),(1666,88,62,15,2,2,2,2),(1665,88,62,14,1,2,1,1),(1664,88,62,13,1,2,1,2),(1663,88,62,12,1,2,1,2),(1662,88,62,11,1,1,1,1),(1661,88,62,10,1,1,1,2),(1660,88,62,9,2,1,1,2),(1659,88,62,8,2,2,2,2),(1658,88,62,7,2,2,2,2),(1657,88,62,6,2,1,1,2),(1656,88,62,5,2,1,1,2),(1655,88,62,4,2,1,1,2),(1654,88,62,3,1,2,1,2),(31,88,2,1,1,2,1,1),(32,88,2,2,1,2,1,1),(33,88,2,3,2,1,1,1),(34,88,2,4,2,1,1,1),(35,88,2,5,2,1,1,1),(36,88,2,6,2,1,2,1),(37,88,2,7,2,1,2,2),(38,88,2,8,2,1,2,2),(39,88,2,9,1,2,2,2),(40,88,2,10,1,2,1,1),(41,88,2,11,1,2,1,1),(42,88,2,12,1,2,1,1),(43,88,2,13,1,2,1,1),(44,88,2,14,1,2,1,1),(45,88,2,15,1,2,1,1),(46,88,2,16,1,2,1,1),(47,88,2,17,2,1,2,2),(48,88,2,18,1,2,1,1),(49,88,2,19,2,1,2,2),(50,88,2,20,2,1,2,2),(51,88,2,21,2,1,1,1),(52,88,2,22,2,2,2,2),(53,88,2,23,2,1,2,2),(54,88,2,24,2,1,2,1),(55,88,2,25,1,2,1,1),(56,88,2,26,1,2,1,1),(57,88,2,27,1,2,1,1),(58,88,2,28,2,1,2,2),(59,88,2,29,2,1,1,1),(60,88,2,30,2,1,1,2),(61,88,3,1,1,1,1,1),(62,88,3,2,1,1,1,1),(63,88,3,3,2,1,1,1),(64,88,3,4,2,1,1,1),(65,88,3,5,2,1,1,1),(66,88,3,6,2,1,2,2),(67,88,3,7,2,1,2,2),(68,88,3,8,2,1,2,2),(69,88,3,9,1,1,2,2),(70,88,3,10,1,1,2,2),(71,88,3,11,1,2,1,1),(72,88,3,12,2,1,2,2),(73,88,3,13,1,2,1,1),(74,88,3,14,1,2,1,1),(75,88,3,15,2,1,2,2),(76,88,3,16,1,2,2,2),(77,88,3,18,1,2,1,1),(78,88,3,19,2,1,2,2),(79,88,3,20,2,2,2,2),(80,88,3,21,1,2,2,2),(81,88,3,22,2,1,2,2),(82,88,3,23,2,1,2,2),(83,88,3,24,2,1,2,2),(84,88,3,25,2,1,2,2),(85,88,3,26,1,1,2,2),(86,88,3,27,1,1,2,2),(87,88,3,28,2,1,2,2),(88,88,3,29,2,1,2,2),(89,88,3,30,2,1,2,2),(90,88,4,1,2,1,2,2),(91,88,4,2,2,1,1,1),(92,88,4,3,2,1,1,1),(93,88,4,4,2,1,1,1),(94,88,4,5,2,1,1,1),(95,88,4,6,2,1,2,2),(96,88,4,7,2,1,2,2),(97,88,4,8,2,1,2,2),(98,88,4,9,2,2,2,2),(99,88,4,10,2,1,2,2),(100,88,4,11,2,2,2,2),(101,88,4,12,2,2,2,2),(102,88,4,13,2,2,2,2),(103,88,4,14,1,2,1,1),(104,88,4,15,2,2,2,2),(105,88,4,16,2,2,2,2),(106,88,4,17,2,1,2,2),(107,88,4,18,2,2,2,2),(108,88,4,19,2,2,2,2),(109,88,4,20,2,2,2,2),(110,88,4,21,2,1,2,2),(111,88,4,22,2,2,2,2),(112,88,4,23,2,1,2,2),(113,88,4,24,2,2,2,2),(114,88,4,25,2,1,2,2),(115,88,4,26,2,1,2,2),(116,88,4,27,2,2,2,2),(117,88,4,28,2,2,2,2),(118,88,4,30,2,2,2,2),(119,88,5,1,2,1,1,2),(120,88,5,2,2,1,1,2),(121,88,5,3,2,1,1,2),(122,88,5,4,2,1,1,2),(123,88,5,5,2,1,1,1),(124,88,5,6,2,1,2,1),(125,88,5,7,2,1,2,1),(126,88,5,8,2,1,2,2),(127,88,5,9,2,1,2,2),(128,88,5,10,2,1,1,1),(129,88,5,11,1,2,1,1),(130,88,5,12,2,1,2,2),(131,88,5,13,2,1,2,2),(132,88,5,14,1,1,1,1),(133,88,5,15,2,2,2,2),(134,88,5,16,2,1,2,2),(135,88,5,17,2,1,2,2),(136,88,5,18,2,1,2,2),(137,88,5,19,2,1,2,2),(138,88,5,20,2,1,2,2),(139,88,5,21,2,1,2,1),(140,88,5,22,2,2,2,2),(141,88,5,23,2,1,2,1),(142,88,5,24,2,2,2,2),(143,88,5,25,2,1,2,1),(144,88,5,26,2,1,2,2),(145,88,5,27,2,1,2,2),(146,88,5,28,2,2,2,2),(147,88,5,29,2,1,1,1),(148,88,5,30,2,1,2,2),(149,88,6,1,2,1,1,1),(150,88,6,2,2,1,1,1),(151,88,6,3,1,1,1,1),(152,88,6,4,2,1,1,1),(153,88,6,5,2,1,1,1),(154,88,6,6,2,1,2,2),(155,88,6,7,2,1,2,2),(156,88,6,8,2,1,2,2),(157,88,6,9,2,1,2,2),(158,88,6,10,1,1,2,2),(159,88,6,11,1,1,2,2),(160,88,6,12,2,1,2,2),(161,88,6,13,2,2,2,2),(162,88,6,14,1,2,1,1),(163,88,6,15,1,2,2,2),(164,88,6,16,2,2,2,2),(165,88,6,17,2,1,2,2),(166,88,6,18,1,2,2,2),(167,88,6,19,2,1,1,1),(168,88,6,20,2,2,2,2),(169,88,6,21,2,2,2,2),(170,88,6,22,2,1,2,2),(171,88,6,23,2,1,2,2),(172,88,6,24,2,2,2,2),(173,88,6,25,2,2,2,2),(174,88,6,26,2,1,2,2),(175,88,6,27,2,2,2,2),(176,88,6,28,2,2,2,2),(177,88,6,29,2,1,1,1),(178,88,6,30,2,2,2,2),(179,88,7,1,1,1,1,1),(180,88,7,2,1,1,1,1),(181,88,7,3,2,1,1,1),(182,88,7,4,2,1,1,1),(183,88,7,5,2,1,1,1),(184,88,7,6,2,2,1,1),(185,88,7,7,2,1,1,1),(186,88,7,8,2,1,1,1),(187,88,7,9,1,2,2,2),(188,88,7,10,1,1,1,1),(189,88,7,11,2,1,1,1),(190,88,7,12,2,2,2,2),(191,88,7,13,1,1,2,1),(192,88,7,14,1,2,1,1),(193,88,7,15,2,2,2,2),(194,88,7,19,2,1,1,1),(195,88,7,20,2,1,1,1),(196,88,8,1,1,1,2,2),(197,88,8,2,2,1,2,2),(198,88,8,3,2,1,2,2),(199,88,8,4,2,1,2,2),(200,88,8,5,2,1,2,2),(201,88,8,6,2,2,2,2),(202,88,8,7,2,2,2,2),(203,88,8,8,2,1,2,2),(204,88,8,9,1,1,2,2),(205,88,8,10,2,1,2,2),(206,88,8,11,2,2,2,2),(207,88,8,12,2,1,2,2),(208,88,8,13,1,2,2,2),(209,88,8,14,1,2,1,1),(210,88,8,15,2,2,2,2),(211,88,8,16,2,2,2,2),(212,88,8,17,2,2,2,2),(213,88,8,18,1,1,1,1),(214,88,8,19,2,2,2,2),(215,88,8,20,2,2,2,2),(216,88,8,21,2,2,2,2),(217,88,8,22,2,2,2,2),(218,88,8,23,2,1,2,2),(219,88,8,24,2,2,2,2),(220,88,8,25,2,2,2,2),(221,88,8,26,2,1,2,2),(222,88,8,27,2,2,2,2),(223,88,8,28,2,2,2,2),(224,88,8,29,1,1,2,2),(225,88,9,1,1,2,1,1),(226,88,9,2,1,2,1,1),(227,88,9,3,2,1,2,2),(228,88,9,4,2,1,2,2),(229,88,9,5,2,1,2,2),(230,88,9,6,2,1,2,2),(231,88,9,7,2,1,2,2),(232,88,9,8,2,1,2,2),(233,88,9,9,2,1,2,2),(234,88,9,10,1,2,2,2),(235,88,9,11,1,1,1,1),(236,88,9,12,1,1,2,2),(237,88,9,13,1,2,2,2),(238,88,9,14,1,2,2,2),(239,88,9,15,1,2,2,2),(240,88,9,16,1,2,2,2),(241,88,9,25,1,2,2,1),(242,88,9,29,2,1,2,2),(243,88,10,1,1,1,1,1),(244,88,10,2,1,1,1,1),(245,88,10,3,2,1,1,1),(246,88,10,4,2,2,2,2),(247,88,10,5,2,1,2,2),(248,88,10,6,1,2,2,1),(249,88,10,8,2,1,2,2),(250,88,10,10,1,1,2,2),(251,88,10,11,1,2,1,1),(252,88,10,12,2,1,2,2),(253,88,10,13,1,1,1,1),(254,88,10,14,1,2,2,2),(255,88,10,15,2,2,2,2),(256,88,10,16,1,2,2,2),(257,88,10,18,2,2,2,2),(258,88,10,19,2,1,2,2),(259,88,10,20,1,1,1,1),(260,88,10,23,2,1,2,2),(261,88,10,25,1,2,2,1),(262,88,10,30,2,1,2,2),(263,88,11,1,2,1,2,2),(264,88,11,2,2,1,2,2),(265,88,11,3,2,1,2,2),(266,88,11,4,2,1,2,2),(267,88,11,5,1,1,1,1),(268,88,11,6,2,1,2,2),(269,88,11,7,2,1,2,2),(270,88,11,8,2,1,2,2),(271,88,11,9,2,2,2,2),(272,88,11,12,2,1,2,2),(273,88,11,14,1,2,1,2),(274,88,12,1,2,1,2,2),(275,88,12,2,2,1,2,2),(276,88,12,3,1,1,2,2),(277,88,12,4,2,1,2,2),(278,88,12,5,2,1,2,2),(279,88,12,6,2,2,2,2),(280,88,12,7,1,2,2,2),(281,88,12,8,2,2,2,2),(282,88,12,9,2,2,2,2),(283,88,12,10,1,1,2,2),(284,88,12,11,1,1,2,2),(285,88,12,12,2,1,2,2),(286,88,12,13,2,2,2,2),(287,88,12,14,1,2,1,1),(288,88,12,15,2,1,2,2),(289,88,12,16,2,1,2,2),(290,88,12,17,2,1,2,2),(291,88,12,18,2,1,2,2),(292,88,12,19,2,1,2,2),(293,88,12,20,2,1,2,2),(294,88,12,21,2,2,2,2),(295,88,12,22,2,1,2,2),(296,88,12,23,2,1,2,2),(297,88,12,24,2,1,2,2),(298,88,12,25,2,1,2,2),(299,88,12,26,2,1,2,2),(300,88,12,27,2,2,2,2),(301,88,12,28,2,2,2,2),(302,88,12,29,2,1,2,2),(303,88,12,30,2,2,2,2),(304,88,13,1,2,1,1,1),(305,88,13,2,2,1,1,1),(306,88,13,3,2,1,1,1),(307,88,13,4,2,1,1,1),(308,88,13,5,2,1,1,1),(309,88,13,6,2,1,1,1),(310,88,13,7,2,2,2,2),(311,88,13,8,2,1,2,2),(312,88,13,9,2,2,2,2),(313,88,13,10,2,1,2,2),(314,88,13,11,2,1,1,1),(315,88,13,12,1,1,1,1),(316,88,13,13,2,1,2,2),(317,88,13,14,1,2,1,1),(318,88,13,15,2,2,2,2),(319,88,13,16,2,2,2,2),(320,88,13,17,2,2,2,2),(321,88,13,18,2,2,2,2),(322,88,13,19,2,2,1,1),(323,88,13,20,2,2,2,2),(324,88,13,21,2,2,2,2),(325,88,13,22,2,2,2,2),(326,88,13,23,2,2,2,2),(327,88,13,24,2,2,2,2),(328,88,13,25,1,1,1,1),(329,88,13,26,2,2,2,2),(330,88,13,28,2,2,2,2),(331,88,13,29,2,1,1,1),(332,88,13,30,2,2,2,2),(333,88,14,1,1,2,1,1),(334,88,14,2,1,1,1,1),(335,88,14,3,2,1,1,1),(336,88,14,4,2,1,1,1),(337,88,14,5,2,1,1,1),(338,88,14,6,2,1,1,1),(339,88,14,7,2,1,1,1),(340,88,14,8,2,1,1,1),(341,88,14,9,2,1,1,1),(342,88,14,10,2,1,1,1),(343,88,14,11,2,1,1,1),(344,88,14,12,2,1,1,1),(345,88,14,13,2,1,1,1),(346,88,14,14,1,2,1,1),(347,88,14,16,2,1,1,1),(348,88,14,17,2,1,1,1),(349,88,14,18,2,1,1,1),(350,88,14,19,2,1,1,1),(351,88,14,20,2,2,2,2),(352,88,14,21,2,2,2,2),(353,88,14,22,2,2,2,2),(354,88,14,23,1,1,1,1),(355,88,14,24,1,1,1,1),(356,88,14,25,2,1,2,1),(357,88,14,26,2,2,2,2),(358,88,14,27,2,2,2,2),(359,88,14,28,2,2,2,2),(360,88,14,29,1,1,1,1),(361,88,14,30,2,2,2,2),(362,88,15,1,2,1,1,1),(363,88,15,2,2,1,1,1),(364,88,15,3,2,1,1,1),(365,88,15,4,2,1,1,1),(366,88,15,5,2,1,1,1),(367,88,15,6,2,1,2,2),(368,88,15,7,2,1,2,2),(369,88,15,8,2,1,2,2),(370,88,15,9,2,1,2,2),(371,88,15,10,2,1,2,2),(372,88,15,11,1,2,2,2),(373,88,15,12,2,1,2,2),(374,88,15,13,2,1,1,2),(375,88,15,14,1,2,1,1),(376,88,15,15,2,1,2,2),(377,88,15,16,2,1,2,2),(378,88,15,17,2,1,2,2),(379,88,15,18,2,1,2,2),(380,88,15,19,2,1,2,2),(381,88,15,20,2,1,2,2),(382,88,15,21,2,2,2,2),(383,88,15,22,2,2,2,2),(384,88,15,23,2,1,2,2),(385,88,15,24,2,1,2,2),(386,88,15,25,2,1,2,2),(387,88,15,26,2,1,2,2),(388,88,15,27,2,1,2,2),(389,88,15,28,1,1,2,2),(390,88,15,29,2,1,2,2),(391,88,15,30,2,1,2,2),(392,88,16,1,1,2,1,1),(393,88,16,2,1,2,1,1),(394,88,16,3,2,1,1,1),(395,88,16,4,2,1,1,1),(396,88,16,5,2,1,1,1),(397,88,16,6,1,2,1,2),(398,88,16,7,2,2,2,2),(399,88,16,8,2,1,2,2),(400,88,16,9,2,1,2,2),(401,88,16,10,2,1,2,2),(402,88,16,11,1,2,1,2),(403,88,16,12,2,1,1,2),(404,88,16,13,1,1,1,1),(405,88,16,14,1,2,1,1),(406,88,16,15,2,1,2,2),(407,88,16,16,1,2,1,1),(408,88,16,17,2,1,2,2),(409,88,16,18,2,2,2,2),(410,88,16,19,2,1,1,1),(411,88,16,20,2,1,1,1),(412,88,16,21,2,2,2,2),(413,88,16,22,2,2,2,2),(414,88,16,23,2,1,1,1),(415,88,16,24,2,2,2,2),(416,88,16,25,1,2,2,2),(417,88,16,26,2,2,2,2),(418,88,16,27,2,2,2,2),(419,88,16,28,2,2,2,2),(420,88,16,29,1,1,1,1),(421,88,16,30,2,2,2,2),(422,88,17,1,1,1,1,1),(423,88,17,2,2,1,1,1),(424,88,17,3,2,1,1,1),(425,88,17,4,2,1,1,1),(426,88,17,5,2,1,1,1),(427,88,17,6,1,2,1,1),(428,88,17,7,1,2,1,1),(429,88,17,8,2,2,2,2),(430,88,17,9,2,2,2,2),(431,88,17,10,2,2,2,2),(432,88,17,12,1,1,1,1),(433,88,17,13,1,1,1,1),(434,88,17,14,1,2,1,1),(435,88,17,15,2,1,1,1),(436,88,17,16,2,1,1,1),(437,88,17,17,2,1,1,1),(438,88,17,18,1,2,1,1),(439,88,17,19,1,2,1,1),(440,88,17,20,2,1,1,1),(441,88,17,21,2,2,2,2),(442,88,17,22,2,2,2,2),(443,88,17,23,2,2,2,2),(444,88,17,24,2,2,2,2),(445,88,17,25,2,2,2,2),(446,88,17,26,1,2,2,2),(447,88,17,27,2,2,2,2),(448,88,17,28,2,2,2,2),(449,88,17,29,1,2,1,1),(450,88,17,30,1,2,1,1),(451,88,18,1,1,1,2,2),(452,88,18,2,1,1,2,2),(453,88,18,3,2,1,2,2),(454,88,18,4,2,1,2,2),(455,88,18,5,2,1,2,2),(456,88,18,6,2,1,2,2),(457,88,18,7,2,1,2,2),(458,88,18,8,2,1,2,2),(459,88,18,9,2,1,2,2),(460,88,18,10,1,2,2,2),(461,88,18,11,2,1,2,2),(462,88,18,12,2,1,2,2),(463,88,18,13,1,1,2,2),(464,88,18,14,1,2,2,2),(465,88,18,15,1,2,2,2),(466,88,18,16,2,1,2,2),(467,88,18,17,2,1,2,2),(468,88,18,16,2,1,2,2),(469,88,18,19,2,1,2,2),(470,88,18,20,2,1,2,2),(471,88,18,21,2,1,2,2),(472,88,18,22,2,2,2,2),(473,88,18,23,2,1,2,2),(474,88,18,24,2,2,2,2),(475,88,18,25,1,2,2,2),(476,88,18,26,2,2,2,2),(477,88,18,27,2,2,2,2),(478,88,18,28,2,2,2,2),(479,88,18,29,2,1,2,2),(480,88,18,30,2,2,2,2),(481,88,19,1,2,1,1,1),(482,88,19,2,2,1,1,1),(483,88,19,3,2,1,1,1),(484,88,19,4,2,1,1,1),(485,88,19,5,2,1,1,1),(486,88,19,6,1,2,2,2),(487,88,19,7,2,1,2,2),(488,88,19,8,1,2,1,2),(489,88,19,9,1,2,2,2),(490,88,19,10,2,1,2,2),(491,88,19,11,2,1,2,2),(492,88,19,12,2,1,2,2),(493,88,19,13,1,2,2,2),(494,88,19,14,1,2,1,2),(495,88,19,15,1,2,2,2),(496,88,19,16,1,2,2,2),(497,88,19,17,1,2,2,2),(498,88,19,18,1,2,1,1),(499,88,19,19,2,1,2,2),(500,88,19,20,2,1,2,2),(501,88,19,21,2,1,2,2),(502,88,19,22,2,2,2,2),(503,88,19,23,2,1,2,2),(504,88,19,24,2,2,2,2),(505,88,19,25,2,1,2,2),(506,88,19,26,2,2,2,2),(507,88,19,27,2,2,2,2),(508,88,19,28,2,2,2,2),(509,88,19,29,2,1,2,2),(510,88,19,30,2,2,2,2),(511,88,20,1,2,1,1,1),(512,88,20,2,1,2,1,1),(513,88,20,3,2,1,1,1),(514,88,20,4,2,1,1,1),(515,88,20,5,2,1,1,1),(516,88,20,6,1,1,2,2),(517,88,20,7,2,1,2,2),(518,88,20,8,2,1,2,2),(519,88,20,9,2,1,2,2),(520,88,20,10,1,1,2,2),(521,88,20,11,1,2,2,2),(522,88,20,12,2,1,2,2),(523,88,20,13,2,1,2,2),(524,88,20,14,1,2,1,1),(525,88,20,15,1,1,2,2),(526,88,20,16,2,1,2,2),(527,88,20,17,2,1,2,2),(528,88,20,18,1,2,2,2),(529,88,20,19,2,1,2,2),(530,88,20,20,2,2,2,2),(531,88,20,21,2,2,2,2),(532,88,20,22,2,2,2,2),(533,88,20,23,2,1,2,2),(534,88,20,24,2,2,2,2),(535,88,20,25,2,1,2,2),(536,88,20,26,2,2,2,2),(537,88,20,27,2,2,2,2),(538,88,20,29,1,1,1,1),(539,88,20,30,2,2,2,2),(540,88,21,1,1,1,2,2),(541,88,21,2,2,1,2,2),(542,88,21,3,2,1,2,2),(543,88,21,4,1,1,2,2),(544,88,21,5,2,1,2,2),(545,88,21,6,2,1,2,2),(546,88,21,7,2,1,2,2),(547,88,21,8,2,1,2,2),(548,88,21,9,2,1,2,2),(549,88,21,10,2,1,1,2),(550,88,21,11,2,1,2,2),(551,88,21,12,1,1,2,2),(552,88,21,13,1,2,2,2),(553,88,21,14,1,2,2,2),(554,88,21,15,2,2,2,2),(555,88,21,16,2,2,2,2),(556,88,21,17,2,1,2,2),(557,88,21,18,1,1,2,2),(558,88,21,19,2,1,2,2),(559,88,21,20,2,2,2,2),(560,88,21,21,2,2,2,2),(561,88,21,22,2,2,2,2),(562,88,21,23,2,1,2,2),(563,88,21,24,2,2,2,2),(564,88,21,25,1,2,2,2),(565,88,21,26,2,1,2,2),(566,88,21,27,2,1,2,2),(567,88,21,28,2,2,2,2),(568,88,21,27,2,1,2,2),(569,88,21,29,2,2,2,2),(570,88,22,1,1,1,1,1),(571,88,22,2,1,1,1,1),(572,88,22,3,2,1,1,1),(573,88,22,4,2,1,1,1),(574,88,22,5,2,1,1,1),(575,88,22,6,2,2,2,2),(576,88,22,7,2,1,2,2),(577,88,22,8,2,1,2,2),(578,88,22,9,2,1,2,2),(579,88,22,10,2,1,2,2),(580,88,22,11,2,1,2,2),(581,88,22,12,2,1,2,2),(582,88,22,13,1,2,1,2),(583,88,22,13,1,2,1,1),(584,88,22,13,1,2,1,1),(585,88,22,14,2,2,2,2),(586,88,22,16,2,1,2,2),(587,88,22,17,2,1,2,2),(588,88,22,18,1,2,2,2),(589,88,22,18,1,2,2,2),(590,88,22,20,2,1,2,2),(591,88,22,21,1,2,2,2),(592,88,22,22,2,2,2,2),(593,88,22,23,2,1,2,2),(594,88,22,24,2,2,2,2),(595,88,22,24,2,1,2,2),(596,88,22,25,2,1,2,2),(597,88,22,26,2,1,2,2),(598,88,22,27,2,1,2,2),(599,88,22,28,2,1,2,2),(600,88,22,29,2,1,2,2),(601,88,22,29,2,2,2,2),(602,88,23,1,2,1,1,1),(603,88,23,2,2,1,1,1),(604,88,23,3,2,1,1,1),(605,88,23,4,2,1,1,1),(606,88,23,5,2,1,2,2),(607,88,23,6,2,2,2,2),(608,88,23,7,2,1,2,2),(609,88,23,8,2,1,2,2),(610,88,23,9,1,1,2,2),(611,88,23,10,1,1,2,2),(612,88,23,11,1,2,2,2),(613,88,23,12,1,1,2,2),(614,88,23,13,1,2,1,1),(615,88,23,14,1,2,1,1),(616,88,23,15,1,1,2,2),(617,88,23,16,1,2,2,2),(618,88,23,17,2,1,2,2),(619,88,23,18,1,2,1,1),(620,88,23,18,2,2,2,2),(621,88,23,20,2,2,2,2),(622,88,23,21,2,2,2,2),(623,88,23,22,2,2,2,2),(624,88,23,23,2,1,2,2),(625,88,23,24,2,2,2,2),(626,88,23,24,2,2,2,2),(627,88,23,26,2,1,2,2),(628,88,23,27,2,2,2,2),(629,88,23,27,2,2,2,2),(630,88,23,29,2,1,2,2),(631,88,23,30,2,2,2,2),(632,88,24,1,1,1,1,1),(633,88,24,2,1,1,1,1),(634,88,24,3,2,1,1,1),(635,88,24,4,2,1,1,1),(636,88,24,5,2,1,1,1),(637,88,24,6,2,2,2,2),(638,88,24,7,2,1,2,2),(639,88,24,8,2,1,2,2),(640,88,24,9,2,1,2,2),(641,88,24,10,2,1,2,2),(642,88,24,11,2,1,2,2),(643,88,24,12,2,1,2,2),(644,88,24,12,1,2,2,2),(645,88,24,13,1,2,2,2),(646,88,24,14,1,2,1,2),(647,88,24,15,2,2,2,2),(648,88,24,16,2,1,2,2),(649,88,24,17,2,1,2,2),(650,88,24,18,1,2,2,2),(651,88,24,18,2,2,2,2),(652,88,24,20,1,2,2,2),(653,88,24,21,2,1,2,2),(654,88,24,22,2,2,2,2),(655,88,24,23,2,2,2,2),(656,88,24,24,2,2,2,2),(657,88,24,25,2,1,2,2),(658,88,24,26,2,1,2,2),(659,88,24,27,2,1,2,2),(660,88,24,28,2,2,2,2),(661,88,24,29,2,1,2,2),(662,88,24,30,2,2,2,2),(663,88,25,1,2,1,1,1),(664,88,25,2,2,1,1,1),(665,88,25,3,2,1,1,1),(666,88,25,4,2,1,1,1),(667,88,25,5,2,1,1,1),(668,88,25,6,2,1,2,2),(669,88,25,7,2,2,2,2),(670,88,25,8,2,1,2,2),(671,88,25,8,2,1,1,2),(672,88,25,10,1,2,2,2),(673,88,25,11,1,2,2,2),(674,88,25,12,2,1,2,2),(675,88,25,13,1,2,2,2),(676,88,25,14,1,2,2,2),(677,88,25,15,1,2,2,2),(678,88,25,16,1,2,2,2),(679,88,25,17,2,1,2,2),(680,88,25,18,2,2,2,2),(681,88,25,18,2,2,2,2),(682,88,25,19,2,2,2,2),(683,88,25,21,2,2,2,2),(684,88,25,22,2,2,2,2),(685,88,25,23,2,1,2,2),(686,88,25,24,2,2,2,2),(687,88,25,25,2,2,2,2),(688,88,25,26,2,2,2,2),(689,88,25,27,2,2,2,2),(690,88,25,28,2,2,2,2),(691,88,25,29,2,1,2,2),(692,88,25,30,2,2,2,2),(693,88,26,1,1,2,1,1),(694,88,26,2,1,2,1,1),(695,88,26,3,2,1,1,1),(696,88,26,4,2,1,1,1),(697,88,26,5,2,1,1,1),(698,88,26,6,2,1,2,2),(699,88,26,7,2,1,2,2),(700,88,26,8,2,1,1,2),(701,88,26,9,2,1,2,2),(702,88,26,10,1,2,2,2),(703,88,26,11,1,2,2,2),(704,88,26,12,1,2,2,2),(705,88,26,13,1,2,2,2),(706,88,26,14,1,2,1,1),(707,88,26,15,2,1,2,2),(708,88,26,16,2,2,2,2),(709,88,26,17,2,2,2,2),(710,88,26,18,2,2,2,2),(711,88,26,19,2,2,2,2),(712,88,26,20,2,2,2,2),(713,88,26,21,2,2,2,2),(714,88,26,22,2,2,2,2),(715,88,26,23,2,2,2,2),(716,88,26,24,2,2,2,2),(717,88,26,25,1,2,2,2),(718,88,26,26,2,2,2,2),(719,88,26,27,2,2,2,2),(720,88,26,28,2,2,2,2),(721,88,26,29,2,1,2,2),(722,88,26,30,2,2,2,2),(723,88,27,1,1,1,1,1),(724,88,27,2,1,2,1,1),(725,88,27,3,2,1,1,1),(726,88,27,4,2,1,1,1),(727,88,27,5,2,1,1,1),(728,88,27,6,2,1,1,1),(729,88,27,7,2,1,2,2),(730,88,27,8,2,1,2,2),(731,88,27,9,2,1,2,2),(732,88,27,10,1,1,2,2),(733,88,27,11,1,1,1,1),(734,88,27,12,2,1,2,2),(735,88,27,13,2,1,2,2),(736,88,27,14,1,2,1,1),(737,88,27,15,1,1,2,2),(738,88,27,16,1,1,2,2),(739,88,27,17,2,1,2,2),(740,88,27,18,2,1,2,2),(741,88,27,19,2,1,2,2),(742,88,27,20,2,2,2,2),(743,88,27,21,2,1,2,2),(744,88,27,22,2,2,2,2),(745,88,27,23,2,2,2,2),(746,88,27,24,2,1,2,2),(747,88,27,25,2,2,2,2),(748,88,27,26,2,2,2,2),(749,88,27,27,2,2,2,2),(750,88,27,28,2,2,2,2),(751,88,27,29,2,1,2,2),(752,88,27,30,2,2,2,2),(753,88,28,1,1,1,1,1),(754,88,28,2,1,1,1,1),(755,88,28,3,2,1,1,1),(756,88,28,4,2,1,1,1),(757,88,28,5,2,1,1,1),(758,88,28,6,2,1,2,2),(759,88,28,7,2,1,1,1),(760,88,28,8,2,1,2,2),(761,88,28,9,2,1,2,2),(762,88,28,10,1,1,2,2),(763,88,28,11,1,1,1,1),(764,88,28,12,2,1,2,2),(765,88,28,13,2,1,2,2),(766,88,28,14,1,1,1,1),(767,88,28,15,2,1,2,2),(768,88,28,16,2,1,2,2),(769,88,28,17,2,1,2,2),(770,88,28,18,2,1,2,2),(771,88,28,19,2,1,2,2),(772,88,28,20,2,1,2,2),(773,88,28,21,1,1,2,2),(774,88,28,22,2,1,2,2),(775,88,28,23,2,1,2,2),(776,88,28,24,2,1,2,2),(777,88,28,25,2,1,2,2),(778,88,28,26,2,1,2,2),(779,88,28,27,2,1,1,2),(780,88,28,28,2,1,2,2),(781,88,28,29,2,1,1,1),(782,88,28,30,2,1,2,2),(783,88,29,1,2,1,1,1),(784,88,29,2,2,1,1,1),(785,88,29,3,2,1,1,1),(786,88,29,4,2,1,1,1),(787,88,29,5,2,1,1,1),(788,88,29,6,2,2,1,1),(789,88,29,7,1,2,2,2),(790,88,29,8,2,1,1,1),(791,88,29,9,2,1,1,1),(792,88,29,10,1,1,1,1),(793,88,29,11,1,1,1,1),(794,88,29,12,2,1,2,1),(795,88,29,13,2,1,1,1),(796,88,29,14,1,2,1,1),(797,88,29,15,1,2,1,1),(798,88,29,16,2,1,1,1),(799,88,29,17,2,1,1,1),(800,88,29,18,2,1,1,1),(801,88,29,19,2,1,1,1),(802,88,29,20,1,1,1,1),(803,88,29,21,2,1,1,1),(804,88,29,22,1,1,1,1),(805,88,29,23,2,1,2,1),(806,88,29,24,2,1,1,1),(807,88,29,25,2,1,2,1),(808,88,29,26,2,1,1,1),(809,88,29,27,2,2,2,2),(810,88,29,28,2,1,1,1),(811,88,29,29,2,1,2,1),(812,88,29,29,2,2,2,2),(813,88,30,1,1,2,1,1),(814,88,30,2,1,2,1,1),(815,88,30,3,2,1,1,1),(816,88,30,4,2,1,1,1),(817,88,30,5,2,1,1,1),(818,88,30,6,1,1,2,1),(819,88,30,7,2,2,2,2),(820,88,30,8,2,1,2,2),(821,88,30,9,2,1,2,2),(822,88,30,10,2,1,2,2),(823,88,30,11,1,2,2,2),(824,88,30,12,2,1,1,1),(825,88,30,13,1,2,2,2),(826,88,30,14,1,2,1,1),(827,88,30,15,1,2,2,1),(828,88,30,17,2,1,2,1),(829,88,30,18,1,2,2,2),(830,88,30,19,2,1,2,2),(831,88,30,20,2,1,2,2),(832,88,30,21,2,2,2,2),(833,88,30,22,2,2,2,2),(834,88,30,23,2,1,2,2),(835,88,30,24,2,1,2,2),(836,88,30,25,1,2,2,2),(837,88,30,26,2,1,2,2),(838,88,30,27,2,2,2,2),(839,88,30,27,2,2,2,2),(840,88,30,30,2,2,2,2),(841,88,31,1,1,1,1,1),(842,88,31,2,1,1,1,1),(843,88,31,3,2,1,1,1),(844,88,31,4,2,1,1,1),(845,88,31,5,2,1,1,1),(846,88,31,6,2,2,2,2),(847,88,31,7,2,2,2,2),(848,88,31,8,2,2,2,2),(849,88,31,9,2,2,2,2),(850,88,31,10,1,2,2,2),(851,88,31,11,1,2,2,2),(852,88,31,12,2,1,2,1),(853,88,31,13,2,2,2,2),(854,88,31,14,1,2,1,1),(855,88,31,15,1,2,1,1),(856,88,31,16,1,2,1,1),(857,88,31,17,2,1,2,2),(858,88,31,18,2,2,2,2),(859,88,31,19,1,1,1,1),(860,88,31,20,2,2,2,2),(861,88,31,21,2,1,1,1),(862,88,31,22,2,2,2,2),(863,88,31,23,2,2,2,2),(864,88,31,24,2,1,2,2),(865,88,31,25,2,2,2,2),(866,88,31,26,2,1,1,1),(867,88,31,27,2,2,2,2),(868,88,31,28,2,1,2,2),(869,88,31,29,2,2,2,2),(870,88,32,1,2,1,1,1),(871,88,32,2,2,1,1,1),(872,88,32,3,2,1,1,1),(873,88,32,4,2,1,1,1),(874,88,32,5,2,1,1,1),(875,88,32,6,2,1,2,2),(876,88,32,7,2,2,2,2),(877,88,32,8,2,1,2,2),(878,88,32,9,2,2,2,2),(879,88,32,10,1,1,1,1),(880,88,32,11,1,1,1,1),(881,88,32,12,2,1,2,2),(882,88,32,13,2,2,2,2),(883,88,32,14,1,2,1,1),(884,88,32,15,1,1,2,2),(885,88,32,16,2,1,2,2),(886,88,32,17,2,1,2,2),(887,88,32,18,2,1,2,2),(888,88,32,19,2,1,1,1),(889,88,32,20,2,2,2,2),(890,88,32,21,2,1,2,2),(891,88,32,22,2,1,2,2),(892,88,32,23,2,1,2,2),(893,88,32,24,2,1,2,2),(894,88,32,25,2,2,2,2),(895,88,32,26,2,2,2,2),(896,88,32,27,2,2,2,2),(897,88,32,28,2,1,2,2),(898,88,32,29,2,1,2,2),(899,88,32,30,2,2,2,2),(900,88,33,1,2,1,1,2),(901,88,33,2,2,1,1,2),(902,88,33,3,2,1,1,2),(903,88,33,4,2,1,1,2),(904,88,33,5,2,1,1,2),(905,88,33,6,2,1,1,2),(906,88,33,7,2,1,1,2),(907,88,33,8,2,1,1,2),(908,88,33,9,2,1,1,2),(909,88,33,10,1,2,1,1),(910,88,33,11,1,1,1,1),(911,88,33,12,2,1,1,2),(912,88,33,13,2,2,1,2),(913,88,33,14,1,2,1,2),(914,88,33,15,2,1,1,2),(915,88,33,16,2,1,1,2),(916,88,33,17,2,1,1,2),(917,88,33,18,2,1,1,2),(918,88,33,19,2,1,1,2),(919,88,33,20,2,1,1,2),(920,88,33,21,2,1,1,2),(921,88,33,22,2,1,2,2),(922,88,33,23,2,1,2,2),(923,88,33,24,2,1,2,2),(924,88,33,25,2,1,2,2),(925,88,33,26,2,1,2,2),(926,88,33,27,2,1,2,2),(927,88,33,28,2,1,2,2),(928,88,33,29,2,1,2,2),(929,88,33,30,2,1,2,2),(930,88,34,1,1,2,1,1),(931,88,34,2,1,1,1,1),(932,88,34,3,2,1,1,1),(933,88,34,4,2,1,1,1),(934,88,34,5,2,1,1,1),(935,88,34,6,2,1,2,2),(936,88,34,7,2,1,2,2),(937,88,34,8,2,1,2,2),(938,88,34,9,2,1,2,2),(939,88,34,10,1,2,1,2),(940,88,34,11,1,2,1,1),(941,88,34,12,1,2,1,1),(942,88,34,13,1,2,1,1),(943,88,34,14,1,2,1,1),(944,88,34,15,1,2,1,1),(945,88,34,16,1,2,1,1),(946,88,34,17,1,1,2,2),(947,88,34,17,2,1,2,2),(948,88,34,19,2,1,2,2),(949,88,34,20,2,2,2,2),(950,88,34,21,2,1,1,1),(951,88,34,22,2,2,2,2),(952,88,34,23,2,1,2,2),(953,88,34,24,2,1,2,1),(954,88,34,25,1,2,1,1),(955,88,34,26,1,2,1,1),(956,88,34,27,1,2,1,1),(957,88,34,28,2,1,2,2),(958,88,34,29,2,1,2,2),(959,88,34,30,2,1,1,2),(960,88,35,1,1,2,1,1),(961,88,35,2,1,2,1,1),(962,88,35,3,2,1,1,1),(963,88,35,4,2,1,1,1),(964,88,35,5,2,1,1,1),(965,88,35,6,2,1,1,1),(966,88,35,7,2,1,1,1),(967,88,35,8,2,1,1,1),(968,88,35,9,1,1,1,1),(969,88,35,10,1,2,1,1),(970,88,35,11,1,2,1,1),(971,88,35,12,1,1,1,1),(972,88,35,13,2,1,1,1),(973,88,35,14,1,2,1,1),(974,88,35,15,1,1,1,1),(975,88,35,16,2,1,1,1),(976,88,35,17,2,1,1,1),(977,88,35,18,1,1,1,1),(978,88,35,19,2,1,1,1),(979,88,35,20,2,1,1,1),(980,88,35,21,2,1,1,1),(981,88,35,22,2,1,1,1),(982,88,35,23,2,1,1,1),(983,88,35,24,2,1,1,1),(984,88,35,25,2,1,1,1),(985,88,35,26,2,1,1,1),(986,88,35,27,2,1,1,1),(987,88,35,28,2,1,1,1),(988,88,35,29,1,1,1,1),(989,88,35,30,2,1,1,1),(990,88,36,1,1,2,1,1),(991,88,36,2,1,2,1,1),(992,88,36,3,2,1,1,1),(993,88,36,4,2,1,1,1),(994,88,36,5,2,1,1,1),(995,88,36,6,1,1,1,1),(996,88,36,7,2,1,2,2),(997,88,36,8,2,1,1,1),(998,88,36,9,1,1,1,1),(999,88,36,10,1,1,1,1),(1000,88,36,11,1,2,1,1),(1001,88,36,12,2,1,1,1),(1002,88,36,13,2,2,2,2),(1003,88,36,14,1,1,1,1),(1004,88,36,15,1,2,1,1),(1005,88,36,16,2,2,2,2),(1006,88,36,17,2,1,2,2),(1007,88,36,18,2,2,2,2),(1008,88,36,19,2,1,1,1),(1009,88,36,20,2,2,2,2),(1010,88,36,21,1,1,1,1),(1011,88,36,22,1,2,2,2),(1012,88,36,23,2,2,2,2),(1013,88,36,24,2,2,2,2),(1014,88,36,25,1,2,2,2),(1015,88,36,26,2,2,2,2),(1016,88,36,27,2,2,2,2),(1017,88,36,28,2,2,2,2),(1018,88,36,29,2,1,1,1),(1019,88,36,30,2,2,2,2),(1020,88,37,1,1,1,1,1),(1021,88,37,2,1,1,1,1),(1022,88,37,3,2,1,1,1),(1023,88,37,4,2,1,1,1),(1024,88,37,5,2,1,1,1),(1025,88,37,6,2,1,2,1),(1026,88,37,7,2,1,2,1),(1027,88,37,8,2,1,1,1),(1028,88,37,9,2,1,1,1),(1029,88,37,10,1,1,1,1),(1030,88,37,11,1,1,1,1),(1031,88,37,12,2,1,2,2),(1032,88,37,13,1,1,2,2),(1033,88,37,14,1,1,1,1),(1034,88,37,15,2,1,2,1),(1035,88,37,16,2,1,2,1),(1036,88,37,17,2,1,2,1),(1037,88,37,18,2,1,1,1),(1038,88,37,19,2,1,2,2),(1039,88,37,20,2,2,2,2),(1040,88,37,21,2,2,2,2),(1041,88,37,22,2,2,2,2),(1042,88,37,23,2,1,2,2),(1043,88,37,24,2,2,2,2),(1044,88,37,25,2,1,2,2),(1045,88,37,26,2,1,2,2),(1046,88,37,27,2,2,2,2),(1047,88,37,28,2,1,2,2),(1048,88,37,29,2,1,2,1),(1049,88,37,30,2,2,2,2),(1050,88,39,1,1,2,1,1),(1051,88,39,2,1,2,1,1),(1052,88,39,3,2,1,1,1),(1053,88,39,4,2,1,1,2),(1054,88,39,5,2,1,1,2),(1055,88,39,6,2,1,1,2),(1056,88,39,7,2,1,1,2),(1057,88,39,8,2,1,1,2),(1058,88,39,9,2,1,1,2),(1059,88,39,10,1,1,1,2),(1060,88,39,11,1,1,1,2),(1061,88,39,12,2,1,1,2),(1062,88,39,13,1,2,2,2),(1063,88,39,14,1,2,1,1),(1064,88,39,15,2,2,2,2),(1065,88,39,16,2,2,2,2),(1066,88,39,17,2,2,2,2),(1067,88,39,18,2,2,2,2),(1068,88,39,19,2,2,2,2),(1069,88,39,20,2,1,2,2),(1070,88,39,21,2,2,2,2),(1071,88,39,22,2,2,2,2),(1072,88,39,23,2,1,1,2),(1073,88,39,24,2,1,1,2),(1074,88,39,25,1,2,2,1),(1075,88,39,26,2,2,2,2),(1076,88,39,27,2,2,2,2),(1077,88,39,28,2,2,2,2),(1078,88,39,29,2,1,1,2),(1079,88,39,30,2,2,2,2),(1080,88,40,1,2,1,1,1),(1081,88,40,2,2,1,1,1),(1082,88,40,3,2,1,1,1),(1083,88,40,4,2,1,1,1),(1084,88,40,5,2,1,1,1),(1085,88,40,6,2,1,2,2),(1086,88,40,7,2,2,2,2),(1087,88,40,8,2,1,2,2),(1088,88,40,9,2,1,2,2),(1089,88,40,10,2,1,2,2),(1090,88,40,11,1,1,2,2),(1091,88,40,12,1,1,2,2),(1092,88,40,13,2,1,2,2),(1093,88,40,14,2,2,2,2),(1094,88,40,15,2,2,2,2),(1095,88,40,16,2,1,2,2),(1096,88,40,17,2,1,2,2),(1097,88,40,18,2,2,2,2),(1098,88,40,19,2,2,2,2),(1099,88,40,20,2,1,1,1),(1100,88,40,21,2,2,2,2),(1101,88,40,22,2,2,2,2),(1102,88,40,23,2,1,2,2),(1103,88,40,24,2,2,2,2),(1104,88,40,25,1,2,2,2),(1105,88,40,26,2,1,2,2),(1106,88,40,27,2,2,2,2),(1107,88,40,28,2,2,2,2),(1108,88,40,29,2,1,1,1),(1109,88,40,30,2,2,2,2),(1110,88,41,1,1,1,1,1),(1111,88,41,2,1,2,1,1),(1112,88,41,3,2,1,1,1),(1113,88,41,4,2,1,1,1),(1114,88,41,5,2,1,1,1),(1115,88,41,5,2,1,1,1),(1116,88,41,7,2,1,1,1),(1117,88,41,8,2,1,1,1),(1118,88,41,9,2,1,2,2),(1119,88,41,10,2,1,2,2),(1120,88,41,11,2,1,2,2),(1121,88,41,12,1,2,2,2),(1122,88,41,13,2,1,2,2),(1123,88,41,14,1,1,2,2),(1124,88,41,15,2,1,2,2),(1125,88,41,16,2,1,2,2),(1126,88,41,17,2,1,2,2),(1127,88,41,18,1,2,2,2),(1128,88,41,19,2,1,2,2),(1129,88,41,20,2,2,2,2),(1130,88,41,21,2,2,2,2),(1131,88,41,22,2,2,2,2),(1132,88,41,23,2,1,2,2),(1133,88,41,24,2,2,2,2),(1134,88,41,25,1,1,2,2),(1135,88,41,26,2,2,2,2),(1136,88,41,27,2,2,2,2),(1137,88,41,28,2,2,2,2),(1138,88,41,29,1,1,2,2),(1139,88,41,30,2,2,2,2),(1140,88,38,1,1,1,1,1),(1141,88,38,2,1,2,1,1),(1142,88,38,3,2,1,1,1),(1143,88,38,4,2,1,1,1),(1144,88,38,5,2,1,1,1),(1145,88,38,6,1,2,1,1),(1146,88,38,7,2,2,2,2),(1147,88,38,8,2,1,1,1),(1148,88,38,9,2,1,1,2),(1149,88,38,10,2,1,1,1),(1150,88,38,11,1,2,1,1),(1151,88,38,12,2,1,1,1),(1152,88,38,13,1,1,1,1),(1153,88,38,14,1,2,1,1),(1154,88,38,15,2,1,1,2),(1155,88,38,16,1,1,1,1),(1156,88,38,17,2,1,1,1),(1157,88,38,18,2,1,1,2),(1158,88,38,19,2,1,1,2),(1159,88,38,20,2,2,2,2),(1160,88,38,21,2,1,1,1),(1161,88,38,22,2,1,1,1),(1162,88,38,23,2,1,1,1),(1163,88,38,25,1,1,1,2),(1164,88,38,26,2,2,2,2),(1165,88,38,27,2,2,2,2),(1166,88,38,28,2,1,1,1),(1167,88,38,29,1,2,1,1),(1168,88,38,30,1,2,1,1),(1169,88,42,1,1,1,1,2),(1170,88,42,3,2,1,1,1),(1171,88,42,4,2,1,1,1),(1172,88,42,5,2,1,1,1),(1173,88,42,6,1,2,2,1),(1174,88,42,7,1,2,2,1),(1175,88,42,8,2,1,2,2),(1176,88,42,9,2,2,1,1),(1177,88,42,10,2,1,1,2),(1178,88,42,11,1,2,1,1),(1179,88,42,12,1,1,1,2),(1180,88,42,13,1,2,1,1),(1181,88,42,14,1,2,1,2),(1182,88,42,15,1,2,1,2),(1183,88,42,16,1,2,1,2),(1184,88,42,17,2,1,2,2),(1185,88,42,18,2,2,2,2),(1186,88,42,19,2,1,1,1),(1187,88,42,20,2,2,2,2),(1188,88,42,21,2,2,2,2),(1189,88,42,22,2,1,1,2),(1190,88,42,23,1,1,2,1),(1191,88,42,24,2,2,2,2),(1192,88,42,25,1,2,2,2),(1193,88,42,26,2,2,2,2),(1194,88,42,28,2,2,2,2),(1195,88,42,29,1,2,2,2),(1196,88,42,30,2,2,2,2),(1197,88,43,1,1,1,2,2),(1198,88,43,2,1,1,2,2),(1199,88,43,3,2,1,1,1),(1200,88,43,4,2,1,1,1),(1201,88,43,5,2,1,1,1),(1202,88,43,6,2,1,2,2),(1203,88,43,7,2,2,2,2),(1204,88,43,8,2,1,2,2),(1205,88,43,9,2,1,2,2),(1206,88,43,10,2,1,2,2),(1207,88,43,11,2,2,2,2),(1208,88,43,12,1,1,2,2),(1209,88,43,13,1,2,2,2),(1210,88,43,14,1,1,1,1),(1211,88,43,15,1,2,2,2),(1212,88,43,16,1,2,2,2),(1213,88,43,17,2,1,2,2),(1214,88,43,18,2,1,2,2),(1215,88,43,19,2,1,2,2),(1216,88,43,20,2,2,2,2),(1217,88,43,21,2,2,2,2),(1218,88,43,22,2,2,2,2),(1219,88,43,23,2,1,2,2),(1220,88,43,24,2,1,2,2),(1221,88,43,25,2,1,2,2),(1222,88,43,26,2,2,2,2),(1223,88,43,27,2,2,2,2),(1224,88,43,28,2,2,2,2),(1225,88,43,29,2,1,2,2),(1226,88,43,30,2,2,2,2),(1227,88,44,1,2,1,1,1),(1228,88,44,2,2,1,1,1),(1229,88,44,3,2,1,1,1),(1230,88,44,4,2,1,1,1),(1231,88,44,5,2,1,1,1),(1232,88,44,6,1,1,2,2),(1233,88,44,7,2,1,2,2),(1234,88,44,8,2,1,2,2),(1235,88,44,9,2,1,2,2),(1236,88,44,10,2,1,2,2),(1237,88,44,11,2,1,2,2),(1238,88,44,12,1,1,2,2),(1239,88,44,13,1,1,2,2),(1240,88,44,14,1,2,1,1),(1241,88,44,15,1,2,2,2),(1242,88,44,16,2,1,2,2),(1243,88,44,17,2,2,2,2),(1244,88,44,18,2,1,2,2),(1245,88,44,19,2,1,2,2),(1246,88,44,20,2,2,2,2),(1247,88,44,21,2,2,2,2),(1248,88,44,22,2,2,2,2),(1249,88,44,23,2,1,2,2),(1250,88,44,24,2,2,2,2),(1251,88,44,25,1,1,2,2),(1252,88,44,26,2,2,2,2),(1253,88,44,27,2,2,2,2),(1254,88,44,28,2,2,2,2),(1255,88,44,29,2,1,2,2),(1256,88,44,30,2,2,2,2),(1257,88,45,1,1,1,1,1),(1258,88,45,2,1,1,1,1),(1259,88,45,3,2,1,1,1),(1260,88,45,4,2,1,1,1),(1261,88,45,5,2,1,1,1),(1262,88,45,6,2,2,2,2),(1263,88,45,7,2,2,2,2),(1264,88,45,8,2,1,2,2),(1265,88,45,9,2,1,2,2),(1266,88,45,10,2,1,2,2),(1267,88,45,11,1,1,1,2),(1268,88,45,12,2,1,1,1),(1269,88,45,13,2,2,2,2),(1270,88,45,14,1,2,1,1),(1271,88,45,15,2,2,2,2),(1272,88,45,16,2,1,1,2),(1273,88,45,17,2,1,1,2),(1274,88,45,18,2,1,1,2),(1275,88,45,19,2,2,2,2),(1276,88,45,20,2,2,2,2),(1277,88,45,21,2,2,2,2),(1278,88,45,22,2,2,2,2),(1279,88,45,23,2,2,2,2),(1280,88,45,24,2,2,2,2),(1281,88,45,25,2,2,2,1),(1282,88,45,26,2,2,2,2),(1283,88,45,27,2,2,2,2),(1284,88,45,28,2,2,2,2),(1285,88,45,29,2,1,1,1),(1286,88,45,30,2,2,2,2),(1287,88,46,1,1,1,1,1),(1288,88,46,2,1,2,1,1),(1289,88,46,3,2,1,1,1),(1290,88,46,4,1,1,1,1),(1291,88,46,5,1,1,1,1),(1292,88,46,6,1,2,2,2),(1293,88,46,7,2,2,2,2),(1294,88,46,8,2,1,1,2),(1295,88,46,9,2,1,1,2),(1296,88,46,10,1,1,1,1),(1297,88,46,11,1,2,1,2),(1298,88,46,12,1,1,1,2),(1299,88,46,13,1,2,2,2),(1300,88,46,14,1,2,1,1),(1301,88,46,15,2,2,2,2),(1302,88,46,16,2,1,1,2),(1303,88,46,17,2,1,1,2),(1304,88,46,18,2,2,2,2),(1305,88,46,19,2,1,1,1),(1306,88,46,20,2,2,2,2),(1307,88,46,21,2,2,2,2),(1308,88,46,22,2,2,2,2),(1309,88,46,23,2,2,2,2),(1310,88,46,24,2,2,2,2),(1311,88,46,25,1,2,1,1),(1312,88,46,26,2,2,2,2),(1313,88,46,27,2,2,2,2),(1314,88,46,28,2,2,2,2),(1315,88,46,29,1,1,1,1),(1316,88,46,30,2,2,2,2),(1317,88,47,1,1,2,1,1),(1318,88,47,2,1,1,1,1),(1319,88,47,3,1,1,1,1),(1320,88,47,4,2,1,1,1),(1321,88,47,5,2,1,1,1),(1322,88,47,6,1,2,1,1),(1323,88,47,7,2,2,2,2),(1324,88,47,8,2,1,2,2),(1325,88,47,9,2,2,2,2),(1326,88,47,10,1,2,1,1),(1327,88,47,11,1,2,1,1),(1328,88,47,12,1,1,1,1),(1329,88,47,13,1,1,1,2),(1330,88,47,14,1,1,1,1),(1331,88,47,15,1,1,1,1),(1332,88,47,16,1,2,1,1),(1333,88,47,17,2,1,1,1),(1334,88,47,18,1,2,1,1),(1335,88,47,19,2,1,1,1),(1336,88,47,20,2,1,1,1),(1337,88,47,21,2,2,2,2),(1338,88,47,22,2,1,1,1),(1339,88,47,23,1,2,1,1),(1340,88,47,24,2,2,2,2),(1341,88,47,25,1,2,1,1),(1342,88,47,26,2,2,2,2),(1343,88,47,27,2,2,2,2),(1344,88,47,28,2,1,1,1),(1345,88,47,29,1,2,1,1),(1346,88,47,30,2,1,2,2),(1347,88,48,1,2,1,1,1),(1348,88,48,2,2,1,1,1),(1349,88,48,3,2,1,1,1),(1350,88,48,4,2,1,1,1),(1351,88,48,5,2,1,1,1),(1352,88,48,6,2,2,2,2),(1353,88,48,7,2,2,2,2),(1354,88,48,8,2,1,2,2),(1355,88,48,9,2,1,2,2),(1356,88,48,10,2,1,1,2),(1357,88,48,11,1,1,1,1),(1358,88,48,12,2,1,1,1),(1359,88,48,13,1,1,1,2),(1360,88,48,14,1,2,1,1),(1361,88,48,15,1,2,1,1),(1362,88,48,16,2,2,2,2),(1363,88,48,17,2,1,1,1),(1364,88,48,18,2,1,2,2),(1365,88,48,19,2,1,1,1),(1366,88,48,20,2,2,2,2),(1367,88,48,21,2,2,2,2),(1368,88,48,22,2,1,2,2),(1369,88,48,23,2,1,2,2),(1370,88,48,24,2,2,2,2),(1371,88,48,25,1,2,1,2),(1372,88,48,26,2,1,2,2),(1373,88,48,27,2,2,2,2),(1374,88,48,28,2,2,2,2),(1375,88,48,29,2,1,1,1),(1376,88,48,30,2,2,2,2),(1377,88,51,1,1,1,1,1),(1378,88,51,2,1,2,1,1),(1379,88,51,3,2,1,1,2),(1380,88,51,4,2,1,1,1),(1381,88,51,5,2,1,1,1),(1382,88,51,6,2,2,2,2),(1383,88,51,7,2,2,2,2),(1384,88,51,8,2,1,1,2),(1385,88,51,9,1,1,1,1),(1386,88,51,10,1,1,1,1),(1387,88,51,11,1,2,2,2),(1388,88,51,12,2,2,2,2),(1389,88,51,13,1,2,1,2),(1390,88,51,14,1,2,1,1),(1391,88,51,15,1,2,1,2),(1392,88,51,16,1,2,1,1),(1393,88,51,17,2,1,1,2),(1394,88,51,18,2,2,2,2),(1395,88,51,19,2,2,2,2),(1396,88,51,20,2,2,2,2),(1397,88,51,21,2,1,1,1),(1398,88,51,22,2,2,2,2),(1399,88,51,23,2,1,1,1),(1400,88,51,24,2,2,2,2),(1401,88,51,25,1,2,2,1),(1402,88,51,26,1,1,2,2),(1403,88,51,27,1,2,2,2),(1404,88,51,28,2,2,2,2),(1405,88,51,29,2,1,2,2),(1406,88,51,30,2,1,2,2),(1407,88,52,1,1,2,2,2),(1408,88,52,2,2,1,1,1),(1409,88,52,3,2,1,1,1),(1410,88,52,4,2,1,1,1),(1411,88,52,5,2,1,1,1),(1412,88,52,6,2,1,1,2),(1413,88,52,7,2,1,2,2),(1414,88,52,8,2,1,2,2),(1415,88,52,9,2,1,2,2),(1416,88,52,10,1,1,2,2),(1417,88,52,11,1,2,1,1),(1418,88,52,12,2,1,2,2),(1419,88,52,13,1,2,1,1),(1420,88,52,15,2,1,1,1),(1421,88,52,16,2,2,2,2),(1422,88,52,17,2,1,2,2),(1423,88,52,18,2,1,1,1),(1424,88,52,19,2,1,2,2),(1425,88,52,20,2,2,1,2),(1426,88,52,21,2,2,2,2),(1427,88,52,22,2,2,2,2),(1428,88,52,23,2,2,2,2),(1429,88,52,24,2,2,2,2),(1430,88,52,25,2,2,2,2),(1431,88,52,26,2,2,2,2),(1432,88,52,27,2,2,2,2),(1433,88,52,28,2,2,2,2),(1434,88,52,29,2,2,2,2),(1435,88,52,30,2,2,2,2),(1436,88,54,1,1,2,1,1),(1437,88,54,2,1,2,1,1),(1438,88,54,3,2,1,1,1),(1439,88,54,4,2,1,1,1),(1440,88,54,5,1,1,1,1),(1441,88,54,6,1,2,1,1),(1442,88,54,7,2,1,1,1),(1443,88,54,8,2,1,2,2),(1444,88,54,9,2,1,2,2),(1445,88,54,10,1,2,1,1),(1446,88,54,11,1,2,1,1),(1447,88,54,12,1,1,2,2),(1448,88,54,13,1,2,1,1),(1449,88,54,14,1,2,1,1),(1450,88,54,15,2,2,2,2),(1451,88,54,16,2,2,2,2),(1452,88,54,17,2,2,2,2),(1453,88,54,18,1,2,1,1),(1454,88,54,19,2,1,2,2),(1455,88,54,20,2,2,2,2),(1456,88,54,21,2,2,2,2),(1457,88,54,22,2,2,2,2),(1458,88,54,23,2,2,2,2),(1459,88,54,24,2,2,2,2),(1460,88,54,25,2,2,2,2),(1461,88,54,26,2,2,2,2),(1462,88,54,27,2,2,2,2),(1463,88,54,28,2,2,2,2),(1464,88,54,29,2,2,2,2),(1465,88,54,29,2,2,2,2),(1466,88,53,1,1,2,1,1),(1467,88,53,2,1,2,1,1),(1468,88,53,3,2,1,1,1),(1469,88,53,4,2,1,1,1),(1470,88,53,5,2,1,1,1),(1471,88,53,6,1,2,1,1),(1472,88,53,7,2,2,2,2),(1473,88,53,8,2,2,2,2),(1474,88,53,9,2,1,1,2),(1475,88,53,10,1,1,1,1),(1476,88,53,11,1,2,1,1),(1477,88,53,12,1,1,1,1),(1478,88,53,13,1,2,1,1),(1479,88,53,14,1,2,1,1),(1480,88,53,15,2,2,1,1),(1481,88,53,16,2,2,1,1),(1482,88,53,17,2,1,2,2),(1483,88,53,18,1,2,1,1),(1484,88,53,19,2,1,1,1),(1485,88,53,20,2,2,2,2),(1486,88,53,21,2,2,2,2),(1487,88,53,22,2,1,1,2),(1488,88,53,23,1,1,1,1),(1489,88,53,24,2,2,2,2),(1490,88,53,25,1,2,1,1),(1491,88,53,26,2,1,1,2),(1492,88,53,27,1,2,2,2),(1493,88,53,28,2,2,2,2),(1494,88,53,29,1,1,1,1),(1495,88,53,30,2,2,2,2),(1496,88,56,1,1,2,1,1),(1497,88,56,2,1,2,1,1),(1498,88,56,3,2,1,2,2),(1499,88,56,4,2,1,2,2),(1500,88,56,5,2,1,2,2),(1501,88,56,6,2,1,2,2),(1502,88,56,7,2,2,2,2),(1503,88,56,8,2,1,2,2),(1504,88,56,9,2,1,2,2),(1505,88,56,10,1,2,2,2),(1506,88,56,11,1,2,1,1),(1507,88,56,12,2,2,2,2),(1508,88,56,13,1,2,1,1),(1509,88,56,14,1,2,1,1),(1510,88,56,15,2,2,2,2),(1511,88,56,16,2,2,1,1),(1512,88,56,17,2,1,1,1),(1513,88,56,18,2,2,2,2),(1514,88,56,19,2,1,2,2),(1515,88,56,20,2,2,2,2),(1516,88,56,21,2,2,2,2),(1517,88,56,22,2,2,2,2),(1518,88,56,23,2,2,2,2),(1519,88,56,23,2,2,2,2),(1520,88,56,25,2,2,2,2),(1521,88,56,26,2,2,2,2),(1522,88,56,27,2,2,2,2),(1523,88,56,28,2,2,2,2),(1524,88,56,29,2,2,2,2),(1525,88,56,30,2,2,2,2),(1526,88,55,1,2,1,1,1),(1527,88,55,2,2,1,1,1),(1528,88,55,3,2,1,1,1),(1529,88,55,4,2,1,1,1),(1530,88,55,5,2,1,1,1),(1531,88,55,6,1,2,1,1),(1532,88,55,7,2,2,2,2),(1533,88,55,8,2,1,1,2),(1534,88,55,9,2,1,1,1),(1535,88,55,10,1,1,1,2),(1536,88,55,11,1,2,2,2),(1537,88,55,12,2,2,2,2),(1538,88,55,13,1,2,2,2),(1539,88,55,14,1,2,1,1),(1540,88,55,15,2,2,2,2),(1541,88,55,16,2,2,2,2),(1542,88,55,17,2,2,2,2),(1543,88,55,18,2,2,2,2),(1544,88,55,19,2,2,2,2),(1545,88,55,20,2,2,2,2),(1546,88,55,21,2,2,2,2),(1547,88,55,22,2,2,2,2),(1548,88,55,23,1,2,2,2),(1549,88,55,24,2,2,2,2),(1550,88,55,25,1,2,2,2),(1551,88,55,26,2,1,2,2),(1552,88,55,27,2,1,1,2),(1553,88,55,28,2,2,2,2),(1554,88,55,29,1,2,1,1),(1555,88,55,30,2,2,2,2),(1556,88,57,1,1,1,1,1),(1557,88,57,2,2,1,1,1),(1558,88,57,3,2,1,1,1),(1559,88,57,4,2,1,1,1),(1560,88,57,5,2,1,1,1),(1561,88,57,6,1,2,1,2),(1562,88,57,7,1,2,2,2),(1563,88,57,8,2,1,2,2),(1564,88,57,9,2,1,2,2),(1565,88,57,10,1,2,2,2),(1566,88,57,11,1,2,1,1),(1567,88,57,12,1,1,2,2),(1568,88,57,13,1,2,1,1),(1569,88,57,14,1,2,1,1),(1570,88,57,15,2,2,2,2),(1571,88,57,16,2,2,2,2),(1572,88,57,17,2,2,2,2),(1573,88,57,18,2,2,2,2),(1574,88,57,19,2,2,2,2),(1575,88,57,20,2,2,2,2),(1576,88,57,21,2,2,2,2),(1577,88,57,22,2,2,2,2),(1578,88,57,23,2,2,2,2),(1579,88,57,24,2,2,2,2),(1580,88,57,25,2,2,2,2),(1581,88,57,26,2,2,2,2),(1582,88,57,27,2,2,2,2),(1583,88,57,28,2,2,2,2),(1584,88,57,29,2,2,2,2),(1585,88,57,30,2,2,2,2),(1586,88,58,1,1,2,2,2),(1587,88,58,2,1,2,1,1),(1588,88,58,3,2,1,1,1),(1589,88,58,4,2,1,1,1),(1590,88,58,5,2,1,1,1),(1591,88,58,6,2,1,2,2),(1592,88,58,7,2,1,2,2),(1593,88,58,8,2,1,2,2),(1594,88,58,9,2,1,2,2),(1595,88,58,10,1,2,1,1),(1596,88,58,11,1,2,1,1),(1597,88,58,12,2,1,2,2),(1598,88,58,13,1,2,1,1),(1599,88,58,14,1,2,1,1),(1600,88,58,15,2,1,2,2),(1601,88,58,16,2,2,2,2),(1602,88,58,17,2,2,2,2),(1603,88,58,18,2,1,2,2),(1604,88,59,1,1,1,1,1),(1605,88,59,2,1,1,1,1),(1606,88,59,3,2,1,1,1),(1607,88,59,4,2,1,1,1),(1608,88,59,5,2,1,1,1),(1609,88,59,6,2,2,2,2),(1610,88,59,7,2,2,2,2),(1611,88,59,8,2,1,2,2),(1612,88,59,9,2,1,2,2),(1613,88,59,10,1,2,1,1),(1614,88,59,11,1,2,1,1),(1615,88,59,12,1,2,1,1),(1616,88,59,13,1,2,2,2),(1617,88,59,14,1,2,2,2),(1618,88,59,15,2,2,1,1),(1619,88,59,16,1,1,1,1),(1620,88,59,17,2,1,1,1),(1621,88,59,18,2,1,1,1),(1622,88,59,19,2,2,2,2),(1623,88,59,20,2,2,2,2),(1624,88,59,21,2,2,2,2),(1625,88,59,22,2,2,2,2),(1626,88,59,23,2,2,2,2),(1627,88,59,24,2,2,2,2),(1628,88,59,25,2,2,2,2),(1629,88,59,25,2,2,2,2),(1630,88,59,27,2,2,2,2),(1631,88,59,28,2,2,2,2),(1632,88,59,29,2,2,2,2),(1633,88,59,30,2,2,2,2),(1634,88,62,1,1,2,1,2),(1635,88,62,2,1,2,1,2),(1636,88,60,1,1,1,1,2),(1637,88,60,2,1,2,1,1),(1638,88,60,3,2,1,1,1),(1639,88,60,4,2,2,1,2),(1640,88,60,5,2,1,1,1),(1641,88,60,6,2,2,2,2),(1642,88,60,7,2,2,2,2),(1643,88,60,8,2,2,2,2),(1644,88,60,9,2,2,2,2),(1645,88,60,10,1,1,2,2),(1646,88,60,11,1,1,1,1),(1647,88,60,13,1,2,1,1),(1648,88,60,14,1,2,2,2),(1649,88,60,15,1,2,2,2),(1650,88,60,16,2,1,2,2),(1651,88,60,17,2,1,2,2),(1652,88,60,18,2,1,2,2),(1653,88,60,19,2,1,2,2),(1684,88,63,3,2,1,1,1),(1685,88,63,4,2,1,1,1),(1686,88,63,5,2,1,1,1),(1687,88,63,6,1,1,1,2),(1688,88,63,7,1,1,1,2),(1689,88,63,8,2,1,1,2),(1690,88,63,9,2,1,2,2),(1691,88,63,10,1,1,1,1),(1692,88,63,11,1,2,1,2),(1693,88,63,12,2,1,1,2),(1694,88,63,13,1,1,1,2),(1695,88,63,14,1,2,1,1),(1696,88,63,15,1,2,1,1),(1697,88,63,16,1,2,1,1),(1698,88,63,17,2,1,1,2),(1699,88,63,18,1,2,1,1),(1700,88,63,19,2,1,1,1),(1701,88,63,20,2,1,1,1),(1702,88,63,21,2,2,2,2),(1703,88,63,22,2,1,1,1),(1704,88,63,23,1,2,1,1),(1705,88,63,24,1,1,1,1),(1706,88,63,25,1,1,2,1),(1707,88,63,26,2,1,1,1),(1708,88,63,27,2,2,2,2),(1709,88,63,28,2,1,1,2),(1710,88,63,29,1,2,1,1),(1711,88,63,30,2,1,1,2),(1712,88,64,1,1,2,1,1),(1713,88,64,2,1,2,1,1),(1714,88,64,3,2,1,1,1),(1715,88,64,4,2,1,1,1),(1716,88,64,5,2,1,1,1),(1717,88,64,6,1,2,1,1),(1718,88,64,7,2,2,2,2),(1719,88,64,8,2,1,1,2),(1720,88,64,9,2,1,1,2),(1721,88,64,10,1,1,1,1),(1722,88,64,11,1,2,1,1),(1723,88,64,12,1,1,1,1),(1724,88,64,13,1,1,1,1),(1725,88,64,14,1,2,1,1),(1726,88,64,15,1,2,1,1),(1727,88,64,16,1,1,1,1),(1728,88,64,17,2,1,1,1),(1729,88,64,18,1,2,1,1),(1730,88,64,19,2,1,1,1),(1731,88,64,20,2,2,2,2),(1732,88,64,21,2,2,2,2),(1733,88,64,22,2,1,1,1),(1734,88,64,23,2,1,1,1),(1735,88,64,24,2,1,1,1),(1736,88,64,25,1,2,1,1),(1737,88,64,26,2,1,1,2),(1738,88,64,28,2,2,2,2),(1739,88,64,30,1,2,1,2),(1740,88,64,29,1,2,1,1),(1741,88,66,1,2,1,1,1),(1742,88,66,2,2,1,1,1),(1743,88,66,3,2,1,1,1),(1744,88,66,4,2,1,1,1),(1745,88,66,5,2,1,1,1),(1746,88,66,6,2,2,2,2),(1747,88,66,7,2,2,2,2),(1748,88,66,8,2,1,1,2),(1749,88,66,10,1,1,1,2),(1750,88,66,11,1,2,1,2),(1751,88,66,12,1,1,2,2),(1752,88,66,13,1,2,1,2),(1753,88,66,14,1,2,1,1),(1754,88,66,15,1,2,1,1),(1755,88,66,16,2,1,1,2),(1756,88,66,17,2,1,1,2),(1757,88,66,18,2,2,2,2),(1758,88,66,19,2,2,2,2),(1759,88,66,20,2,2,2,2),(1760,88,66,21,2,2,2,2),(1761,88,66,22,2,2,2,2),(1762,88,66,23,2,1,1,2),(1763,88,66,24,2,2,2,2),(1764,88,66,25,1,2,2,2),(1765,88,66,26,2,2,2,2),(1766,88,66,28,2,2,2,2),(1767,88,66,29,2,1,1,2),(1768,88,67,1,2,1,1,1),(1769,88,67,2,1,1,2,1),(1770,88,67,3,2,1,1,1),(1771,88,67,4,2,1,1,1),(1772,88,67,5,2,1,1,1),(1773,88,67,6,2,1,1,1),(1774,88,67,7,2,1,1,1),(1775,88,67,8,2,1,2,2),(1776,88,67,9,2,2,2,2),(1777,88,67,10,1,1,2,2),(1778,88,67,11,1,2,2,2),(1779,88,67,12,2,1,1,2),(1780,88,67,13,1,2,1,2),(1781,88,67,14,1,2,1,2),(1782,88,67,15,2,2,2,2),(1783,88,67,16,2,1,2,2),(1784,88,67,18,1,2,1,1),(1785,88,67,19,2,1,1,2),(1786,88,67,20,2,2,2,2),(1787,88,67,21,2,2,2,2),(1788,88,67,22,2,2,2,2),(1789,88,67,23,2,1,1,2),(1790,88,67,24,2,2,2,2),(1791,88,67,25,2,1,1,2),(1792,88,67,26,2,1,2,2),(1793,88,67,27,2,2,2,2),(1794,88,67,28,2,1,2,2),(1795,88,67,29,2,1,1,1),(1796,88,67,30,2,2,2,2),(1797,88,65,1,1,1,2,1),(1798,88,65,2,1,2,1,1),(1799,88,65,3,2,1,2,2),(1800,88,65,4,2,1,2,2),(1801,88,65,5,2,1,2,2),(1802,88,65,6,2,1,2,2),(1803,88,65,7,2,1,2,2),(1804,88,65,8,2,1,2,2),(1805,88,65,9,2,1,2,2),(1806,88,65,10,1,1,2,2),(1807,88,65,11,1,2,2,2),(1808,88,65,12,2,2,2,2),(1809,88,65,13,2,2,2,2),(1810,88,65,14,2,2,2,2),(1811,88,65,15,2,2,2,2),(1812,88,65,16,1,2,1,1),(1813,88,65,17,2,2,2,2),(1814,88,65,18,2,2,2,2),(1815,88,65,19,2,2,2,2),(1816,88,65,20,2,2,2,2),(1817,88,65,21,2,2,2,2),(1818,88,65,22,2,2,2,2),(1819,88,65,23,2,2,2,2),(1820,88,65,24,2,2,2,2),(1821,88,65,25,2,2,2,2),(1822,88,65,26,2,2,2,2),(1823,88,65,27,2,2,2,2),(1824,88,65,28,2,2,2,2),(1825,88,65,29,2,1,2,2),(1826,88,65,30,2,2,2,2),(1827,88,68,1,1,1,1,2),(1828,88,68,2,1,2,1,1),(1829,88,68,3,1,2,1,1),(1830,88,68,4,2,1,1,1),(1831,88,68,5,2,1,1,1),(1832,88,68,6,1,1,1,2),(1833,88,68,7,2,1,1,2),(1834,88,68,8,2,1,1,2),(1835,88,68,9,2,1,2,1),(1836,88,68,10,1,1,1,1),(1837,88,68,11,1,1,1,1),(1838,88,68,12,1,1,1,1),(1839,88,68,13,1,1,1,2),(1840,88,68,14,1,2,1,1),(1841,88,68,15,1,2,1,1),(1842,88,68,16,1,2,1,1),(1843,88,68,17,2,1,1,2),(1844,88,68,18,1,1,1,2),(1845,88,68,19,2,1,2,2),(1846,88,68,20,2,2,2,2),(1847,88,68,21,2,2,2,2),(1848,88,68,22,2,1,2,2),(1849,88,68,23,2,1,1,1),(1850,88,68,24,2,1,2,2),(1851,88,68,25,1,2,1,1),(1852,88,68,26,2,1,1,2),(1853,88,68,27,2,1,1,2),(1854,88,68,28,2,2,2,2),(1855,88,68,29,1,1,1,1),(1856,88,68,30,2,1,2,2),(1857,88,69,1,1,2,1,1),(1858,88,69,2,1,1,1,1),(1859,88,69,3,2,1,1,1),(1860,88,69,4,2,1,1,1),(1861,88,69,5,2,1,1,1),(1862,88,69,6,2,1,1,1),(1863,88,69,7,2,1,2,2),(1864,88,69,8,2,1,1,2),(1865,88,69,9,2,1,1,2),(1866,88,69,10,1,1,1,1),(1867,88,69,11,1,2,1,1),(1868,88,69,12,2,1,1,1),(1869,88,69,13,1,2,2,2),(1870,88,69,14,1,2,1,1),(1871,88,69,15,2,1,1,2),(1872,88,69,16,2,1,1,2),(1873,88,69,17,2,1,1,1),(1874,88,69,18,2,1,1,1),(1875,88,69,19,2,1,1,1),(1876,88,69,20,2,2,2,2),(1877,88,69,21,2,2,2,2),(1878,88,69,22,2,2,2,2),(1879,88,69,23,2,1,1,2),(1880,88,69,24,2,2,2,2),(1881,88,69,25,1,2,1,1),(1882,88,69,26,2,1,1,2),(1883,88,69,27,2,2,2,2),(1884,88,69,28,2,1,1,2),(1885,88,69,29,2,1,1,1),(1886,88,69,30,2,1,2,2),(1887,88,70,1,1,2,1,1),(1888,88,70,2,1,2,1,1),(1889,88,70,3,2,1,2,2),(1890,88,70,4,2,1,1,1),(1891,88,70,5,2,1,1,1),(1892,88,70,6,2,1,1,2),(1893,88,70,7,2,2,2,2),(1894,88,70,8,2,2,2,2),(1895,88,70,9,2,1,2,2),(1896,88,70,10,1,1,1,1),(1897,88,70,11,1,2,1,1),(1898,88,70,12,1,1,1,2),(1899,88,70,13,1,2,1,1),(1900,88,70,14,1,2,1,1),(1901,88,70,15,1,2,1,1),(1902,88,70,16,1,2,1,1),(1903,88,70,17,2,1,1,2),(1904,88,70,18,2,2,2,2),(1905,88,70,19,2,1,1,1),(1906,88,70,20,2,1,2,2),(1907,88,70,21,2,1,1,1),(1908,88,70,22,1,1,2,1),(1909,88,70,23,2,1,1,2),(1910,88,70,24,2,2,2,2),(1911,88,70,25,1,2,1,2),(1912,88,70,26,2,1,2,2),(1913,88,70,28,2,2,2,2),(1914,88,72,1,1,1,2,2),(1915,88,72,2,1,1,2,2),(1916,88,72,3,2,1,2,2),(1917,88,72,4,2,1,2,2),(1918,88,72,5,2,1,2,2),(1919,88,72,6,2,2,2,2),(1920,88,72,7,2,2,2,2),(1921,88,72,8,2,2,2,2),(1922,88,72,9,2,2,2,2),(1923,88,72,10,1,2,2,2),(1924,88,72,11,1,2,2,2),(1925,88,72,12,2,2,2,2),(1926,88,72,13,2,2,2,2),(1927,88,72,14,1,2,1,1),(1928,88,72,15,2,2,2,2),(1929,88,72,16,2,2,2,2),(1930,88,72,17,2,2,2,2),(1931,88,72,18,2,2,2,2),(1932,88,72,19,2,2,2,2),(1933,88,72,20,2,2,2,2),(1934,88,72,21,2,2,2,2),(1935,88,72,22,2,2,2,2),(1936,88,72,23,2,2,2,2),(1937,88,72,24,2,2,2,2),(1938,88,72,25,2,2,2,2),(1939,88,72,26,2,2,2,2),(1940,88,72,27,2,2,2,2),(1941,88,72,28,2,2,2,2),(1942,88,72,29,2,2,2,2),(1943,88,72,30,2,2,2,2),(1944,88,71,1,1,2,1,1),(1945,88,71,2,1,2,1,1),(1946,88,71,3,2,1,1,2),(1947,88,71,4,2,1,1,1),(1948,88,71,5,2,1,1,1),(1949,88,71,6,1,1,2,2),(1950,88,71,7,2,2,2,2),(1951,88,71,8,2,1,1,2),(1952,88,71,9,2,1,1,2),(1953,88,71,10,1,1,2,2),(1954,88,71,11,1,2,1,1),(1955,88,71,12,2,1,2,2),(1956,88,71,13,1,2,2,2),(1957,88,71,14,1,2,1,1),(1958,88,71,15,1,2,1,2),(1959,88,71,16,2,2,2,2),(1960,88,71,17,2,1,2,2),(1961,88,71,18,2,2,2,2),(1962,88,71,19,2,2,2,2),(1963,88,71,20,2,1,2,2),(1964,88,71,21,2,2,2,2),(1965,88,71,22,1,2,2,2),(1966,88,71,23,2,1,2,2),(1967,88,71,24,2,2,2,2),(1968,88,71,25,1,2,1,2),(1969,88,71,26,2,2,2,2),(1970,88,71,28,2,1,2,2),(1971,88,71,29,1,1,2,2),(1972,88,73,1,1,1,1,1),(1973,88,73,2,1,1,1,1),(1974,88,73,3,2,1,2,2),(1975,88,73,4,2,1,2,2),(1976,88,73,5,2,1,2,2),(1977,88,73,6,2,2,2,2),(1978,88,73,7,2,2,2,2),(1979,88,73,8,2,2,2,2),(1980,88,73,9,2,2,2,2),(1981,88,73,10,2,2,2,2),(1982,88,73,11,1,2,1,1),(1983,88,73,12,2,2,2,2),(1984,88,73,13,2,2,2,2),(1985,88,73,14,1,2,2,2),(1986,88,73,15,2,2,2,2),(1987,88,73,16,2,2,2,2),(1988,88,73,17,2,2,2,2),(1989,88,73,18,2,2,2,2),(1990,88,73,19,2,2,2,2),(1991,88,73,20,2,2,2,2),(1992,88,73,21,2,2,2,2),(1993,88,73,22,2,2,2,2),(1994,88,73,23,2,2,2,2),(1995,88,73,24,2,2,2,2),(1996,88,73,25,2,2,2,2),(1997,88,73,26,2,2,2,2),(1998,88,73,27,2,2,2,2),(1999,88,73,28,2,2,2,2),(2000,88,73,29,2,2,2,2),(2001,88,73,30,2,2,2,2),(2002,88,74,1,1,1,1,1),(2003,88,74,2,1,1,1,1),(2004,88,74,3,2,1,1,2),(2005,88,74,4,2,1,1,1),(2006,88,74,5,2,1,1,2),(2007,88,74,6,2,2,2,2),(2008,88,74,7,2,2,2,2),(2009,88,74,8,2,2,2,2),(2010,88,74,9,1,2,2,2),(2011,88,74,10,1,2,2,2),(2012,88,74,11,1,2,2,2),(2013,88,74,12,2,1,1,2),(2014,88,74,13,1,1,2,2),(2015,88,74,14,1,2,1,1),(2016,88,74,15,1,2,1,2),(2017,88,74,16,2,2,2,2),(2018,88,74,17,2,1,1,2),(2019,88,74,18,2,2,2,2),(2020,88,74,19,2,1,1,2),(2021,88,74,20,2,2,2,2),(2022,88,74,21,2,2,1,1),(2023,88,74,22,2,2,2,2),(2024,88,74,23,2,2,2,2),(2025,88,74,24,2,2,2,2),(2026,88,74,25,1,2,1,1),(2027,88,74,26,2,2,2,2),(2028,88,74,27,2,2,2,2),(2029,88,74,28,2,2,2,2),(2030,88,74,29,2,1,1,2),(2031,88,74,30,2,2,2,2),(2032,88,75,1,1,1,1,1),(2033,88,75,2,1,1,1,1),(2034,88,75,3,2,1,1,1),(2035,88,75,4,2,1,1,1),(2036,88,75,5,2,1,1,1),(2037,88,75,6,2,1,1,1),(2038,88,75,7,2,2,2,2),(2039,88,75,8,2,2,2,2),(2040,88,75,9,2,1,1,2),(2041,88,75,10,1,1,1,2),(2042,88,75,11,1,1,1,1),(2043,88,75,12,2,1,1,2),(2044,88,75,13,1,2,1,1),(2045,88,75,14,1,2,1,1),(2046,88,75,15,1,2,1,1),(2047,88,75,16,1,1,1,2),(2048,88,75,17,2,1,1,2),(2049,88,75,18,1,1,1,2),(2050,88,75,19,2,1,1,2),(2051,88,75,19,2,2,2,2),(2052,88,75,20,2,2,2,2),(2053,88,75,21,2,2,2,2),(2054,88,75,22,2,2,2,2),(2055,88,75,23,2,1,1,2),(2056,88,75,25,1,2,1,1),(2057,88,75,26,2,2,2,2),(2058,88,75,27,2,2,2,2),(2059,88,75,28,2,1,1,1),(2060,88,75,29,2,1,1,1),(2061,88,75,30,2,1,1,2),(2062,88,77,1,1,1,1,1),(2063,88,77,2,1,1,1,1),(2064,88,77,3,2,1,2,2),(2065,88,77,4,2,1,2,2),(2066,88,77,5,2,1,2,2),(2067,88,77,6,2,2,2,2),(2068,88,77,7,2,2,2,2),(2069,88,77,8,2,2,2,2),(2070,88,77,9,2,2,2,2),(2071,88,77,10,2,1,2,2),(2072,88,77,11,1,1,2,2),(2073,88,77,12,2,2,2,2),(2074,88,77,13,2,2,2,2),(2075,88,77,14,1,2,2,1),(2076,88,77,15,2,2,2,2),(2077,88,77,16,2,2,2,2),(2078,88,77,17,2,2,2,2),(2079,88,77,18,2,2,2,2),(2080,88,77,19,2,2,2,2),(2081,88,77,20,2,2,2,2),(2082,88,77,21,2,2,2,2),(2083,88,77,22,2,2,2,2),(2084,88,77,23,2,2,2,2),(2085,88,77,24,2,2,2,2),(2086,88,77,25,2,2,2,2),(2087,88,77,26,2,2,2,2),(2088,88,77,27,2,2,2,2),(2089,88,77,28,2,2,2,2),(2090,88,77,29,2,1,2,2),(2091,88,77,30,2,2,2,2),(2092,88,78,1,1,1,1,1),(2093,88,78,2,1,1,1,1),(2094,88,78,3,2,1,2,2),(2095,88,78,4,2,1,2,2),(2096,88,78,5,2,1,2,2),(2097,88,78,6,2,2,2,2),(2098,88,78,7,2,2,2,2),(2099,88,78,8,2,2,2,2),(2100,88,78,9,2,2,2,2),(2101,88,78,10,2,1,2,2),(2102,88,78,11,1,1,2,2),(2103,88,78,12,2,2,2,2),(2104,88,78,13,2,2,2,2),(2105,88,78,14,1,2,2,1),(2106,88,78,15,2,2,2,2),(2107,88,78,16,2,2,2,2),(2108,88,78,17,2,2,2,2),(2109,88,78,18,2,2,2,2),(2110,88,78,19,2,2,2,2),(2111,88,78,20,2,2,2,2),(2112,88,78,21,2,2,2,2),(2113,88,78,22,2,2,2,2),(2114,88,78,23,2,2,2,2),(2115,88,78,24,2,2,2,2),(2116,88,78,25,2,2,2,2),(2117,88,78,26,2,2,2,2),(2118,88,78,27,2,2,2,2),(2119,88,78,28,2,2,2,2),(2120,88,78,29,2,1,2,2),(2121,88,78,30,2,2,2,2),(2122,88,76,1,1,2,1,1),(2123,88,76,2,1,2,1,1),(2124,88,76,3,2,1,1,2),(2125,88,76,4,2,1,1,2),(2126,88,76,5,2,1,1,1),(2127,88,76,6,1,2,2,2),(2128,88,76,7,2,2,2,2),(2129,88,76,8,2,2,2,2),(2130,88,76,9,2,2,2,2),(2131,88,76,10,1,1,1,1),(2132,88,76,11,1,2,1,1),(2133,88,76,12,2,1,1,2),(2134,88,76,13,1,1,2,2),(2135,88,76,14,1,2,1,1),(2136,88,76,15,2,2,2,2),(2137,88,76,16,2,2,2,2),(2138,88,76,17,2,1,2,2),(2139,88,76,18,2,1,2,2),(2140,88,76,19,2,1,1,2),(2141,88,76,20,2,2,2,2),(2142,88,76,21,2,1,1,2),(2143,88,76,22,2,2,2,2),(2144,88,76,23,2,2,2,2),(2145,88,76,24,2,1,1,2),(2146,88,76,25,2,1,1,2),(2147,88,76,26,2,2,2,2),(2148,88,76,27,2,2,2,2),(2149,88,76,27,1,2,2,2),(2150,88,76,29,2,1,1,2),(2151,88,76,30,2,2,2,2),(2152,88,79,1,1,2,1,1),(2153,88,79,2,1,2,1,1),(2154,88,79,3,2,1,1,2),(2155,88,79,4,2,1,1,2),(2156,88,79,5,1,1,1,1),(2157,88,79,6,2,1,1,2),(2158,88,79,7,2,1,1,2),(2159,88,79,8,2,1,2,2),(2160,88,79,9,2,1,2,2),(2161,88,79,10,2,1,1,1),(2162,88,79,11,1,2,1,1),(2163,88,79,12,1,1,1,1),(2164,88,79,13,1,2,1,2),(2165,88,79,14,1,2,1,1),(2166,88,79,15,2,2,2,2),(2167,88,79,16,1,2,2,1),(2168,88,79,17,2,1,1,1),(2169,88,79,18,1,2,1,1),(2170,88,79,19,2,1,1,1),(2171,88,79,20,2,2,2,2),(2172,88,79,21,2,1,1,1),(2173,88,79,22,2,1,1,2),(2174,88,79,23,2,1,2,2),(2175,88,79,24,2,1,1,2),(2176,88,79,25,1,2,1,1),(2177,88,79,26,2,2,2,2),(2178,88,79,27,2,2,2,2),(2179,88,79,28,2,1,1,1),(2180,88,79,29,2,1,1,1),(2181,88,79,30,2,2,2,2),(2182,88,80,1,2,1,2,1),(2183,88,80,2,2,1,1,1),(2184,88,80,3,2,1,1,1),(2185,88,80,4,2,1,1,1),(2186,88,80,5,2,2,1,1),(2187,88,80,6,2,2,2,2),(2188,88,80,7,2,2,2,2),(2189,88,80,8,2,2,2,2),(2190,88,80,9,2,2,2,2),(2191,88,80,10,1,1,1,1),(2192,88,80,11,1,1,1,1),(2193,88,80,12,2,1,1,1),(2194,88,80,13,2,2,2,2),(2195,88,80,14,1,1,1,1),(2196,88,80,15,1,1,1,1),(2197,88,80,16,2,1,2,2),(2198,88,80,17,2,1,2,1),(2199,88,80,18,2,2,2,2),(2200,88,80,19,2,2,2,2),(2201,88,80,21,2,2,2,2),(2202,88,80,22,2,2,2,2),(2203,88,80,23,2,2,2,2),(2204,88,80,24,2,2,2,2),(2205,88,80,25,1,2,2,1),(2206,88,80,26,2,2,2,2),(2207,88,80,27,2,2,2,2),(2208,88,80,28,2,2,2,2),(2209,88,80,29,2,1,1,1),(2210,88,80,30,2,2,2,2),(2211,88,81,1,1,2,1,2),(2212,88,81,2,2,1,1,1),(2213,88,81,3,2,1,2,2),(2214,88,81,4,2,1,1,2),(2215,88,81,5,2,1,1,2),(2216,88,81,6,2,2,2,2),(2217,88,81,7,2,2,2,2),(2218,88,81,8,2,1,1,2),(2219,88,81,9,2,1,2,2),(2220,88,81,10,2,2,2,2),(2221,88,81,11,2,2,2,2),(2222,88,81,12,1,2,2,2),(2223,88,81,13,1,2,2,2),(2224,88,81,14,1,2,1,1),(2225,88,81,15,2,2,2,2),(2226,88,81,16,2,1,2,2),(2227,88,81,17,2,2,2,2),(2228,88,81,18,2,2,2,2),(2229,88,81,19,2,2,2,2),(2230,88,81,20,2,2,2,2),(2231,88,81,21,2,2,2,2),(2232,88,81,22,2,2,2,2),(2233,88,81,23,2,2,2,2),(2234,88,81,24,2,2,2,2),(2235,88,81,25,2,2,2,2),(2236,88,81,26,2,2,2,2),(2237,88,81,27,2,2,2,2),(2238,88,81,28,2,2,2,2),(2239,88,81,29,2,2,2,2),(2240,88,81,30,2,2,2,2),(2241,88,83,1,1,2,1,1),(2242,88,83,2,1,2,1,1),(2243,88,83,3,2,1,2,2),(2244,88,83,4,2,1,1,1),(2245,88,83,6,2,2,2,2),(2246,88,83,7,1,2,1,2),(2247,88,83,8,2,1,2,2),(2248,88,83,9,2,2,2,2),(2249,88,83,10,1,1,2,2),(2250,88,83,11,1,2,2,2),(2251,88,83,12,2,1,2,2),(2252,88,83,13,1,1,2,1),(2253,88,83,14,1,2,1,1),(2254,88,83,15,1,2,1,1),(2255,88,83,16,2,2,2,2),(2256,88,83,18,2,2,2,2),(2257,88,83,19,2,2,1,1),(2258,88,83,20,2,2,2,2),(2259,88,83,21,2,2,2,2),(2260,88,83,22,2,2,2,2),(2261,88,83,23,2,2,2,2),(2262,88,83,24,2,2,2,2),(2263,88,83,25,2,2,2,1),(2264,88,83,26,2,2,2,2),(2265,88,83,27,2,2,2,2),(2266,88,83,28,2,2,2,2),(2267,88,83,29,1,2,1,1),(2268,88,83,30,2,1,2,2),(2269,88,82,1,1,2,1,1),(2270,88,82,2,1,2,1,1),(2271,88,82,3,2,1,1,2),(2272,88,82,4,2,1,1,1),(2273,88,82,5,2,1,1,1),(2274,88,82,6,1,2,2,2),(2275,88,82,7,2,1,1,2),(2276,88,82,8,2,1,1,2),(2277,88,82,9,2,1,1,2),(2278,88,82,10,1,1,1,1),(2279,88,82,11,1,2,1,1),(2280,88,82,12,2,1,1,2),(2281,88,82,13,1,1,2,2),(2282,88,82,14,2,1,2,2),(2283,88,82,15,2,2,2,2),(2284,88,82,16,2,2,2,2),(2285,88,82,17,2,1,1,2),(2286,88,82,18,2,1,1,2),(2287,88,82,19,2,1,2,2),(2288,88,82,20,2,2,2,2),(2289,88,82,21,2,2,2,2),(2290,88,82,22,2,2,2,2),(2291,88,82,23,2,1,2,2),(2292,88,82,24,2,2,2,2),(2293,88,82,25,1,1,1,2),(2294,88,82,26,2,2,2,2),(2295,88,82,27,1,2,2,2),(2296,88,82,28,2,2,2,2),(2297,88,82,29,2,1,1,1),(2298,88,84,1,1,2,1,1),(2299,88,84,2,1,2,1,2),(2300,88,84,3,2,1,1,1),(2301,88,84,4,2,1,1,1),(2302,88,84,5,2,1,1,1),(2303,88,84,6,2,2,2,2),(2304,88,84,7,2,2,2,2),(2305,88,84,8,2,1,1,1),(2306,88,84,9,2,1,1,1),(2307,88,84,10,2,1,1,1),(2308,88,84,11,2,2,1,1),(2309,88,84,12,2,2,2,2),(2310,88,84,13,2,2,2,2),(2311,88,84,14,1,2,1,1),(2312,88,84,15,2,2,2,2),(2313,88,84,16,2,2,2,2),(2314,88,84,17,2,1,1,1),(2315,88,84,18,2,2,2,2),(2316,88,84,19,2,2,2,2),(2317,88,84,20,2,2,2,2),(2318,88,84,21,2,2,2,2),(2319,88,84,22,2,2,2,2),(2320,88,84,23,2,2,2,2),(2321,88,84,24,2,2,2,2),(2322,88,84,25,2,2,2,2),(2323,88,84,26,2,2,2,2),(2324,88,84,27,2,2,2,2),(2325,88,84,28,2,2,2,2),(2326,88,84,29,2,2,2,2),(2327,88,84,29,2,2,2,2),(2328,88,85,1,1,1,1,1),(2329,88,85,2,1,1,1,1),(2330,88,85,3,2,1,1,1),(2331,88,85,4,2,1,1,1),(2332,88,85,5,1,1,1,1),(2333,88,85,6,1,2,1,1),(2334,88,85,7,2,1,1,1),(2335,88,85,8,2,1,1,1),(2336,88,85,9,2,1,2,2),(2337,88,85,10,1,1,1,1),(2338,88,85,11,1,2,1,1),(2339,88,85,12,2,1,1,1),(2340,88,85,13,2,2,2,2),(2341,88,85,14,1,2,2,2),(2342,88,85,15,1,2,2,2),(2343,88,85,16,2,2,2,2),(2344,88,85,17,2,2,2,2),(2345,88,85,18,2,2,2,2),(2346,88,85,19,2,2,2,2),(2347,88,85,20,2,2,2,2),(2348,88,85,21,2,2,2,2),(2349,88,85,22,2,2,2,2),(2350,88,85,23,2,2,2,2),(2351,88,85,24,2,2,2,2),(2352,88,85,25,2,2,2,2),(2353,88,85,26,2,2,2,2),(2354,88,85,27,2,2,2,2),(2355,88,85,28,2,2,2,2),(2356,88,85,29,2,2,2,2),(2357,88,85,30,2,1,1,2),(2358,88,86,1,2,1,1,1),(2359,88,86,2,2,1,1,2),(2360,88,86,3,2,1,1,1),(2361,88,86,4,2,1,1,2),(2362,88,86,5,2,1,1,2),(2363,88,86,6,2,1,1,2),(2364,88,86,7,2,2,2,2),(2365,88,86,8,2,2,2,2),(2366,88,86,9,2,1,1,2),(2367,88,86,10,1,1,1,2),(2368,88,86,11,1,1,1,1),(2369,88,86,12,2,1,2,1),(2370,88,86,13,1,2,1,1),(2371,88,86,14,1,2,1,1),(2372,88,86,15,2,2,2,2),(2373,88,86,16,2,2,2,2),(2374,88,86,17,2,1,2,2),(2375,88,86,18,2,1,2,2),(2376,88,86,19,2,1,2,2),(2377,88,86,20,2,2,2,2),(2378,88,86,21,2,2,2,2),(2379,88,86,22,2,2,2,2),(2380,88,86,23,2,1,1,2),(2381,88,86,24,2,2,2,2),(2382,88,86,25,1,1,2,1),(2383,88,86,26,2,2,2,2),(2384,88,86,27,2,2,2,2),(2385,88,86,28,2,1,1,1),(2386,88,86,29,2,1,1,1),(2387,88,86,30,2,2,2,2),(2388,88,88,1,2,1,1,1),(2389,88,88,2,2,1,1,1),(2390,88,88,3,2,1,1,1),(2391,88,88,4,2,1,1,1),(2392,88,88,5,2,2,2,2),(2393,88,88,6,2,1,2,2),(2394,88,88,7,2,2,2,2),(2395,88,88,8,2,1,1,1),(2396,88,88,9,2,2,2,2),(2397,88,88,10,2,1,1,1),(2398,88,88,11,1,1,1,1),(2399,88,88,12,2,1,2,2),(2400,88,88,13,1,2,2,2),(2401,88,88,14,1,2,1,1),(2402,88,88,15,2,2,2,2),(2403,88,88,16,2,1,2,2),(2404,88,88,17,2,1,2,2),(2405,88,88,18,1,2,1,1),(2406,88,88,19,2,1,1,1),(2407,88,88,20,2,2,2,2),(2408,88,88,21,2,2,2,2),(2409,88,88,22,2,2,2,2),(2410,88,88,23,2,1,2,2),(2411,88,88,24,2,2,2,2),(2412,88,88,25,1,2,2,1),(2413,88,88,26,2,1,1,1),(2414,88,88,27,2,2,2,2),(2415,88,88,28,2,2,2,2),(2416,88,88,29,2,1,1,1),(2417,88,88,30,1,2,2,2),(2418,88,89,1,1,1,1,1),(2419,88,89,2,1,2,1,1),(2420,88,89,3,2,1,1,2),(2421,88,89,4,2,1,1,1),(2422,88,89,5,2,1,1,1),(2423,88,89,6,1,2,1,1),(2424,88,89,7,2,2,2,2),(2425,88,89,8,2,1,2,2),(2426,88,89,9,2,1,2,2),(2427,88,89,10,1,1,1,1),(2428,88,89,11,1,2,1,1),(2429,88,89,12,2,2,2,2),(2430,88,89,13,1,2,2,2),(2431,88,89,14,1,2,1,1),(2432,88,89,15,2,2,2,2),(2433,88,89,16,2,2,2,2),(2434,88,89,17,2,1,2,2),(2435,88,89,18,1,1,1,1),(2436,88,89,19,1,1,1,1),(2437,88,89,20,2,2,2,2),(2438,88,89,21,2,2,2,2),(2439,88,89,22,2,2,2,2),(2440,88,89,23,2,2,2,2),(2441,88,89,24,2,2,2,2),(2442,88,89,25,2,1,1,1),(2443,88,89,26,2,2,2,2),(2444,88,89,27,2,2,2,2),(2445,88,89,28,2,2,2,2),(2446,88,89,29,1,1,1,1),(2447,88,89,30,2,2,2,2),(2448,88,90,1,1,2,1,1),(2449,88,90,2,1,2,1,1),(2450,88,90,3,2,1,1,1),(2451,88,90,4,2,1,1,1),(2452,88,90,5,2,1,1,1),(2453,88,90,6,1,2,1,1),(2454,88,90,7,2,2,2,2),(2455,88,90,8,2,1,2,2),(2456,88,90,9,2,1,2,2),(2457,88,90,10,1,1,1,1),(2458,88,90,11,1,1,1,1),(2459,88,90,12,2,1,2,2),(2460,88,90,13,2,2,2,2),(2461,88,90,14,1,1,1,1),(2462,88,90,15,1,2,2,2),(2463,88,90,16,2,2,2,2),(2464,88,90,17,2,1,2,2),(2465,88,90,18,2,2,2,2),(2466,88,90,19,2,1,1,1),(2467,88,90,20,2,2,2,2),(2468,88,90,21,2,2,2,2),(2469,88,90,22,2,2,2,2),(2470,88,90,23,2,2,2,2),(2471,88,90,24,2,2,2,2),(2472,88,90,25,2,2,2,2),(2473,88,90,26,2,2,2,2),(2474,88,90,27,2,2,2,2),(2475,88,90,28,2,2,2,2),(2476,88,90,29,2,2,2,2),(2477,88,90,30,2,1,2,2),(2478,88,91,1,2,1,1,1),(2479,88,91,2,2,1,1,1),(2480,88,91,3,2,1,1,1),(2481,88,91,4,2,1,1,1),(2482,88,91,5,2,1,1,1),(2483,88,91,6,2,1,2,2),(2484,88,91,7,2,2,2,2),(2485,88,91,8,2,1,2,2),(2486,88,91,9,2,2,2,2),(2487,88,91,10,1,2,2,2),(2488,88,91,11,1,2,2,2),(2489,88,91,12,2,2,2,2),(2490,88,91,13,2,2,2,2),(2491,88,91,14,1,1,1,1),(2492,88,91,15,2,1,2,2),(2493,88,91,16,2,2,2,2),(2494,88,91,17,2,1,2,2),(2495,88,91,18,2,1,2,2),(2496,88,91,19,2,1,1,1),(2497,88,91,20,2,2,2,2),(2498,88,91,21,2,2,2,2),(2499,88,91,22,2,2,2,2),(2500,88,91,23,2,2,2,2),(2501,88,91,24,2,2,2,2),(2502,88,91,25,2,2,2,2),(2503,88,91,26,2,2,2,2),(2504,88,91,27,2,2,2,2),(2505,88,91,28,2,2,2,2),(2506,88,91,29,2,1,1,1),(2507,88,91,30,2,2,2,2),(2508,88,92,1,2,1,1,1),(2509,88,92,2,1,2,1,1),(2510,88,92,3,2,1,1,1),(2511,88,92,4,2,1,1,1),(2512,88,92,5,2,1,1,1),(2513,88,92,6,2,1,1,1),(2514,88,92,7,2,1,1,2),(2515,88,92,8,2,1,1,2),(2516,88,92,9,2,1,1,2),(2517,88,92,10,2,1,1,2),(2518,88,92,11,2,1,1,1),(2519,88,92,12,2,1,1,2),(2520,88,92,13,1,1,1,2),(2521,88,92,14,1,2,1,1),(2522,88,92,15,2,1,2,2),(2523,88,92,16,2,1,2,2),(2524,88,92,17,2,1,2,2),(2525,88,92,18,2,1,2,2),(2526,88,92,19,2,1,1,2),(2527,88,92,20,2,2,2,2),(2528,88,92,21,2,2,2,2),(2529,88,92,22,2,2,2,2),(2530,88,92,23,2,1,1,2),(2531,88,92,24,2,2,2,2),(2532,88,92,25,1,1,1,2),(2533,88,92,26,1,1,1,2),(2534,88,92,27,1,2,2,2),(2535,88,92,28,2,2,2,2),(2536,88,92,29,2,1,1,1),(2537,88,92,30,2,1,2,2),(2538,88,93,1,1,2,1,1),(2539,88,93,2,1,2,1,1),(2540,88,93,3,2,1,1,1),(2541,88,93,4,2,1,1,1),(2542,88,93,5,2,1,1,1),(2543,88,93,6,2,1,1,2),(2544,88,93,7,2,2,2,2),(2545,88,93,8,2,1,1,2),(2546,88,93,9,2,1,1,2),(2547,88,93,10,2,2,2,2),(2548,88,93,11,1,2,1,1),(2549,88,93,12,2,1,1,2),(2550,88,93,13,1,2,1,1),(2551,88,93,14,1,2,1,1),(2552,88,93,15,2,1,1,2),(2553,88,93,16,2,1,1,2),(2554,88,93,17,2,1,1,2),(2555,88,93,18,2,2,2,2),(2556,88,93,19,2,2,2,2),(2557,88,93,20,2,2,2,2),(2558,88,93,21,2,2,2,2),(2559,88,93,22,2,1,1,2),(2560,88,93,23,2,1,1,2),(2561,88,93,24,2,2,2,2),(2562,88,93,25,1,2,1,2),(2563,88,93,26,2,2,2,2),(2564,88,93,27,2,2,2,2),(2565,88,93,28,2,1,1,2),(2566,88,93,29,2,1,1,1),(2567,88,93,30,1,2,1,1),(2568,88,94,1,2,1,1,1),(2569,88,94,2,2,1,1,1),(2570,88,94,3,2,1,1,1),(2571,88,94,4,1,1,1,1),(2572,88,94,5,2,1,1,1),(2573,88,94,6,1,2,1,2),(2574,88,94,7,2,2,2,2),(2575,88,94,8,2,2,2,2),(2576,88,94,9,2,2,2,2),(2577,88,94,10,2,1,1,1),(2578,88,94,11,1,2,1,1),(2579,88,94,12,2,1,1,2),(2580,88,94,13,1,2,1,2),(2581,88,94,14,1,2,1,1),(2582,88,94,15,2,2,2,2),(2583,88,94,16,2,1,2,2),(2584,88,94,17,2,1,1,2),(2585,88,94,18,2,2,2,2),(2586,88,94,19,2,2,2,2),(2587,88,94,20,2,1,1,2),(2588,88,94,21,2,2,2,2),(2589,88,94,22,2,2,2,2),(2590,88,94,23,2,1,1,2),(2591,88,94,24,2,2,2,2),(2592,88,94,25,1,2,2,2),(2593,88,94,26,2,2,2,2),(2594,88,94,27,2,1,2,2),(2595,88,94,28,2,1,1,2),(2596,88,94,29,2,1,1,1),(2597,88,94,30,2,2,2,2);
/*!40000 ALTER TABLE `encuesta_seguridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_solucion`
--

DROP TABLE IF EXISTS `encuesta_solucion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_solucion` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_solucionescasez` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_techo` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tecnologia` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tecnologia`
--

LOCK TABLES `encuesta_tecnologia` WRITE;
/*!40000 ALTER TABLE `encuesta_tecnologia` DISABLE KEYS */;
INSERT INTO `encuesta_tecnologia` VALUES (1,'Tecnificada'),(2,'Semitecnificada'),(3,'Convencional'),(4,'Tradicional');
/*!40000 ALTER TABLE `encuesta_tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tenencia`
--

DROP TABLE IF EXISTS `encuesta_tenencia`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tenencia` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `parcela` int(11) NOT NULL,
  `cantidad_parcela` int(11) NOT NULL,
  `solar` int(11) NOT NULL,
  `cantidad_solar` int(11) NOT NULL,
  `dueno` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_tenencia_1bb8f392` (`content_type_id`),
  KEY `encuesta_tenencia_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tenencia`
--

LOCK TABLES `encuesta_tenencia` WRITE;
/*!40000 ALTER TABLE `encuesta_tenencia` DISABLE KEYS */;
INSERT INTO `encuesta_tenencia` VALUES (61,88,63,1,1,6,5,1),(2,88,2,4,1,4,1,1),(3,88,3,1,1,1,1,1),(4,88,4,2,1,5,1,4),(5,88,5,1,1,1,1,3),(6,88,6,1,1,1,1,1),(7,88,7,1,2,1,2,1),(8,88,8,1,1,1,1,1),(9,88,9,4,1,4,1,1),(10,88,10,4,1,4,1,2),(11,88,11,1,1,1,1,2),(12,88,12,1,1,4,1,3),(13,88,13,1,1,1,1,1),(14,88,14,1,1,6,5,5),(15,88,15,1,2,1,1,1),(16,88,16,4,2,4,1,2),(17,88,17,1,1,6,5,1),(18,88,18,2,1,2,1,2),(19,88,19,1,1,1,1,1),(20,88,20,1,2,1,1,2),(21,88,21,6,1,6,1,6),(22,88,22,4,1,6,1,6),(23,88,23,1,1,6,5,3),(24,88,24,4,1,6,1,5),(25,88,25,1,1,6,5,1),(26,88,26,1,1,6,1,1),(27,88,27,3,1,3,1,1),(28,88,28,1,1,1,1,1),(29,88,29,3,1,3,1,2),(30,88,30,3,1,3,1,1),(31,88,31,1,1,1,1,2),(32,88,32,1,1,6,5,2),(33,88,33,1,1,1,1,1),(34,88,34,4,1,6,5,1),(35,88,35,1,1,1,1,1),(36,88,36,1,2,1,1,1),(37,88,37,1,1,6,5,2),(38,88,39,2,1,6,5,1),(39,88,38,1,1,6,5,1),(40,88,40,1,1,6,5,3),(41,88,41,1,1,1,1,1),(42,88,42,1,1,1,1,2),(43,88,43,6,1,6,1,6),(44,88,44,1,1,1,1,2),(45,88,45,1,1,1,1,1),(46,88,46,1,1,6,1,3),(47,88,47,2,1,2,1,1),(48,88,48,1,1,1,1,3),(49,88,49,1,1,6,5,3),(50,88,51,1,2,1,1,1),(51,88,52,1,1,1,1,1),(52,88,53,1,1,4,1,3),(53,88,54,3,2,4,1,1),(54,88,55,2,1,2,1,3),(55,88,56,1,1,1,1,1),(56,88,57,1,1,1,1,2),(57,88,58,1,1,1,1,3),(58,88,59,1,1,1,1,3),(59,88,60,4,1,1,1,1),(60,88,62,1,1,6,5,1),(62,88,64,2,1,2,1,1),(63,88,65,4,2,6,5,1),(64,88,66,1,1,1,1,1),(65,88,67,1,1,5,1,2),(66,88,68,3,1,6,5,1),(67,88,69,1,2,6,5,1),(68,88,70,1,1,4,1,1),(69,88,72,1,1,1,1,1),(70,88,71,1,1,6,5,1),(71,88,73,4,1,4,1,5),(72,88,74,6,3,6,1,6),(73,88,75,1,1,1,1,3),(74,88,76,1,1,6,1,1),(75,88,77,4,3,4,1,5),(76,88,78,4,3,4,1,5),(77,88,79,6,3,6,1,5),(78,88,80,6,2,1,1,3),(79,88,81,6,5,6,5,1),(80,88,82,6,1,6,1,5),(81,88,83,4,2,6,1,3),(82,88,84,1,1,1,1,2),(83,88,85,1,1,6,5,2),(84,88,86,1,1,6,5,2),(85,88,88,4,1,6,5,3),(86,88,89,4,1,6,5,2),(87,88,90,1,1,1,1,1),(88,88,91,4,1,4,1,1),(89,88,92,1,1,2,2,3),(90,88,93,1,1,1,1,2),(91,88,94,6,1,6,1,5);
/*!40000 ALTER TABLE `encuesta_tenencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tierra`
--

DROP TABLE IF EXISTS `encuesta_tierra`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tierra` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `uso_tierra_id` int(11) NOT NULL,
  `areas` decimal(10,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_tierra_1bb8f392` (`content_type_id`),
  KEY `encuesta_tierra_7d61c803` (`object_id`),
  KEY `encuesta_tierra_5fe6b21d` (`uso_tierra_id`)
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tierra`
--

LOCK TABLES `encuesta_tierra` WRITE;
/*!40000 ALTER TABLE `encuesta_tierra` DISABLE KEYS */;
INSERT INTO `encuesta_tierra` VALUES (237,88,63,1,'0.50'),(2,88,2,1,'1.50'),(3,88,2,5,'1.50'),(4,88,3,1,'3.00'),(5,88,3,2,'2.50'),(6,88,3,4,'0.37'),(7,88,3,5,'0.65'),(8,88,3,6,'0.50'),(9,88,3,10,'1.50'),(10,88,4,1,'0.50'),(11,88,4,2,'0.50'),(12,88,4,8,'0.50'),(13,88,5,1,'1.25'),(14,88,5,2,'0.25'),(15,88,5,6,'0.50'),(16,88,6,1,'0.75'),(17,88,6,2,'0.10'),(18,88,6,5,'0.15'),(19,88,7,1,'19.00'),(20,88,7,2,'1.00'),(21,88,7,3,'3.00'),(22,88,7,5,'0.50'),(23,88,7,6,'11.50'),(24,88,7,9,'2.00'),(25,88,8,1,'2.00'),(26,88,8,2,'2.00'),(27,88,8,3,'1.00'),(28,88,8,5,'0.50'),(29,88,8,6,'1.50'),(30,88,8,7,'2.50'),(31,88,8,8,'0.50'),(32,88,8,9,'1.50'),(33,88,9,1,'2.00'),(34,88,9,2,'1.00'),(35,88,9,3,'4.00'),(36,88,9,5,'0.50'),(37,88,9,6,'1.50'),(38,88,9,9,'1.00'),(39,88,10,1,'4.00'),(40,88,10,5,'1.00'),(41,88,10,6,'2.50'),(42,88,10,9,'2.00'),(43,88,11,1,'2.00'),(44,88,11,2,'0.50'),(45,88,11,5,'0.25'),(46,88,11,6,'0.75'),(47,88,12,1,'1.25'),(48,88,12,2,'0.25'),(49,88,13,1,'30.00'),(50,88,13,4,'0.50'),(51,88,13,6,'40.00'),(52,88,13,10,'4.00'),(53,88,14,3,'10.00'),(54,88,14,6,'15.00'),(55,88,14,10,'25.00'),(56,88,15,1,'7.75'),(57,88,15,5,'0.50'),(58,88,16,1,'7.00'),(59,88,16,2,'3.00'),(60,88,16,3,'5.00'),(61,88,16,5,'0.10'),(62,88,16,9,'3.00'),(63,88,17,1,'29.00'),(64,88,17,2,'3.00'),(65,88,17,5,'0.25'),(66,88,17,6,'3.00'),(67,88,17,10,'20.00'),(68,88,18,1,'1.00'),(69,88,18,2,'0.25'),(70,88,18,3,'0.75'),(71,88,19,1,'0.25'),(72,88,19,2,'1.25'),(73,88,20,1,'1.00'),(74,88,20,2,'0.50'),(75,88,20,3,'1.25'),(76,88,20,7,'0.75'),(77,88,21,1,'1.00'),(78,88,21,2,'0.50'),(79,88,22,1,'7.00'),(80,88,22,5,'0.25'),(81,88,23,1,'4.00'),(82,88,23,2,'2.00'),(83,88,23,5,'0.25'),(84,88,23,6,'1.00'),(85,88,23,7,'0.50'),(86,88,23,8,'0.75'),(87,88,25,1,'1.00'),(88,88,25,2,'0.50'),(89,88,25,5,'0.25'),(90,88,25,7,'0.25'),(91,88,26,1,'3.00'),(92,88,26,2,'2.00'),(93,88,26,3,'2.00'),(94,88,26,6,'1.00'),(95,88,26,9,'3.00'),(96,88,26,10,'1.00'),(97,88,27,1,'1.50'),(98,88,27,2,'2.50'),(99,88,28,1,'3.00'),(100,88,28,2,'1.00'),(101,88,29,1,'22.00'),(102,88,29,4,'0.25'),(103,88,29,9,'2.50'),(104,88,30,1,'2.20'),(105,88,30,2,'0.50'),(106,88,30,3,'2.50'),(107,88,30,4,'0.25'),(108,88,30,5,'0.25'),(109,88,30,6,'0.50'),(110,88,30,8,'0.50'),(111,88,31,1,'3.00'),(112,88,32,1,'2.25'),(113,88,32,5,'2.50'),(114,88,33,1,'1.00'),(115,88,34,1,'1.50'),(116,88,35,1,'2.00'),(117,88,36,1,'7.50'),(118,88,36,2,'2.00'),(119,88,36,3,'13.00'),(120,88,36,4,'0.25'),(121,88,36,5,'0.25'),(122,88,37,1,'0.75'),(123,88,37,2,'0.25'),(124,88,37,3,'1.50'),(125,88,37,4,'0.25'),(126,88,37,5,'0.25'),(127,88,37,6,'0.25'),(128,88,39,1,'4.00'),(129,88,39,2,'2.00'),(130,88,39,3,'2.50'),(131,88,39,4,'5.00'),(132,88,39,6,'10.00'),(133,88,39,7,'4.00'),(134,88,38,1,'2.00'),(135,88,38,3,'2.50'),(136,88,38,4,'0.13'),(137,88,38,5,'0.13'),(138,88,38,10,'30.00'),(139,88,40,1,'2.25'),(140,88,41,1,'2.50'),(141,88,41,2,'0.25'),(142,88,41,3,'2.25'),(143,88,41,5,'0.50'),(144,88,41,9,'1.00'),(145,88,42,1,'0.50'),(146,88,42,3,'4.00'),(147,88,42,4,'0.25'),(148,88,42,5,'0.25'),(149,88,42,10,'15.00'),(150,88,43,3,'3.00'),(151,88,44,1,'1.00'),(152,88,44,2,'0.50'),(153,88,44,6,'0.50'),(154,88,44,10,'1.50'),(155,88,45,1,'2.00'),(156,88,45,2,'2.00'),(157,88,45,3,'0.75'),(158,88,45,4,'0.10'),(159,88,45,5,'0.25'),(160,88,46,1,'2.00'),(161,88,46,2,'4.00'),(162,88,46,5,'0.25'),(163,88,46,10,'25.00'),(164,88,47,1,'11.00'),(165,88,47,2,'4.00'),(166,88,47,3,'9.00'),(167,88,47,4,'0.13'),(168,88,47,5,'0.50'),(169,88,47,6,'1.00'),(170,88,47,10,'37.50'),(171,88,48,1,'12.00'),(172,88,48,2,'3.00'),(173,88,48,5,'0.50'),(174,88,48,7,'6.50'),(175,88,48,8,'3.00'),(176,88,49,1,'3.00'),(177,88,49,3,'1.50'),(178,88,49,5,'0.25'),(179,88,49,10,'0.75'),(180,88,51,1,'5.00'),(181,88,51,2,'2.00'),(182,88,51,5,'0.50'),(183,88,51,7,'0.50'),(184,88,52,1,'5.00'),(185,88,52,2,'2.00'),(186,88,52,3,'13.50'),(187,88,52,5,'0.50'),(188,88,53,1,'3.00'),(189,88,53,2,'1.00'),(190,88,53,3,'11.70'),(191,88,53,5,'0.25'),(192,88,53,6,'8.00'),(193,88,53,7,'3.00'),(194,88,53,9,'2.00'),(195,88,53,10,'10.00'),(196,88,54,1,'8.00'),(197,88,54,2,'2.00'),(198,88,54,5,'0.25'),(199,88,54,6,'5.00'),(200,88,54,8,'1.00'),(201,88,54,9,'10.75'),(202,88,55,1,'3.00'),(203,88,55,2,'2.00'),(204,88,55,3,'3.00'),(205,88,55,6,'1.00'),(206,88,55,8,'1.00'),(207,88,56,1,'2.00'),(208,88,56,2,'1.00'),(209,88,56,3,'1.00'),(210,88,56,5,'0.50'),(211,88,57,1,'3.00'),(212,88,57,2,'1.50'),(213,88,57,5,'0.25'),(214,88,57,6,'0.50'),(215,88,57,9,'5.00'),(216,88,57,10,'0.75'),(217,88,58,1,'5.00'),(218,88,58,4,'1.00'),(219,88,58,5,'0.25'),(220,88,59,1,'4.00'),(221,88,59,2,'1.00'),(222,88,59,3,'2.00'),(223,88,59,4,'1.00'),(224,88,59,5,'0.50'),(225,88,59,6,'0.50'),(226,88,59,7,'1.00'),(227,88,59,8,'0.50'),(228,88,60,1,'2.00'),(229,88,60,2,'2.00'),(230,88,60,3,'0.50'),(231,88,60,4,'0.25'),(232,88,60,5,'0.50'),(233,88,62,1,'3.50'),(234,88,62,2,'0.50'),(235,88,62,3,'3.00'),(236,88,62,5,'0.12'),(238,88,63,2,'0.50'),(239,88,63,3,'1.00'),(240,88,63,4,'0.75'),(241,88,63,5,'0.25'),(242,88,63,8,'1.00'),(243,88,63,9,'6.00'),(244,88,64,1,'2.50'),(245,88,64,2,'0.50'),(246,88,64,3,'3.00'),(247,88,64,5,'0.30'),(248,88,64,10,'3.70'),(249,88,65,3,'4.50'),(250,88,65,5,'0.25'),(251,88,65,6,'0.25'),(252,88,66,1,'5.00'),(253,88,66,3,'2.00'),(254,88,66,5,'0.25'),(255,88,67,2,'1.00'),(256,88,67,3,'1.00'),(257,88,67,5,'0.25'),(258,88,68,1,'1.50'),(259,88,68,2,'1.00'),(260,88,68,3,'1.25'),(261,88,68,5,'0.12'),(262,88,68,9,'1.50'),(263,88,69,1,'4.00'),(264,88,69,2,'1.00'),(265,88,69,3,'6.00'),(266,88,69,6,'1.00'),(267,88,69,10,'6.00'),(268,88,70,1,'2.00'),(269,88,70,3,'8.00'),(270,88,70,5,'0.13'),(271,88,70,6,'2.00'),(272,88,70,9,'2.00'),(273,88,72,1,'4.00'),(274,88,72,2,'1.00'),(275,88,72,3,'2.00'),(276,88,72,5,'1.00'),(277,88,72,6,'5.00'),(278,88,71,1,'2.50'),(279,88,71,3,'2.50'),(280,88,71,5,'0.13'),(281,88,71,6,'0.25'),(282,88,71,10,'4.00'),(283,88,73,1,'1.00'),(284,88,73,3,'1.50'),(285,88,73,5,'0.25'),(286,88,73,8,'6.25'),(287,88,74,1,'5.00'),(288,88,74,2,'2.00'),(289,88,74,3,'0.25'),(290,88,74,5,'0.12'),(291,88,74,6,'2.00'),(292,88,75,1,'4.00'),(293,88,75,2,'2.50'),(294,88,75,3,'3.00'),(295,88,75,5,'0.50'),(296,88,75,6,'1.00'),(297,88,76,1,'3.00'),(298,88,76,3,'3.00'),(299,88,77,1,'2.00'),(300,88,77,3,'4.75'),(301,88,77,5,'0.25'),(302,88,78,1,'2.00'),(303,88,78,3,'4.75'),(304,88,78,5,'0.25'),(305,88,79,1,'1.00'),(306,88,79,2,'1.00'),(307,88,79,3,'1.50'),(308,88,79,5,'0.50'),(309,88,79,7,'3.00'),(310,88,80,1,'37.50'),(311,88,80,2,'8.00'),(312,88,80,5,'0.50'),(313,88,80,6,'4.00'),(314,88,81,1,'0.25'),(315,88,82,1,'1.75'),(316,88,83,1,'4.00'),(317,88,83,2,'2.00'),(318,88,83,3,'6.00'),(319,88,83,5,'1.00'),(320,88,83,10,'10.00'),(321,88,84,1,'7.00'),(322,88,85,1,'5.00'),(323,88,85,3,'1.00'),(324,88,85,10,'3.00'),(325,88,86,1,'5.25'),(326,88,86,5,'0.25'),(327,88,88,1,'9.00'),(328,88,88,2,'1.00'),(329,88,88,3,'1.00'),(330,88,88,6,'1.00'),(331,88,89,1,'4.00'),(332,88,89,3,'4.00'),(333,88,89,10,'12.00'),(334,88,90,1,'10.00'),(335,88,90,2,'3.00'),(336,88,90,3,'3.00'),(337,88,90,9,'3.00'),(338,88,91,1,'2.00'),(339,88,92,1,'1.00'),(340,88,92,2,'1.50'),(341,88,92,3,'4.00'),(342,88,92,5,'0.50'),(343,88,92,6,'2.00'),(344,88,92,7,'1.00'),(345,88,92,10,'6.00'),(346,88,93,1,'2.00'),(347,88,93,2,'1.00'),(348,88,93,3,'10.00'),(349,88,93,5,'0.25'),(350,88,94,1,'1.75'),(351,88,94,5,'0.30');
/*!40000 ALTER TABLE `encuesta_tierra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipoalmacenaje`
--

DROP TABLE IF EXISTS `encuesta_tipoalmacenaje`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tipoalmacenaje` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tipoalmacenaje`
--

LOCK TABLES `encuesta_tipoalmacenaje` WRITE;
/*!40000 ALTER TABLE `encuesta_tipoalmacenaje` DISABLE KEYS */;
INSERT INTO `encuesta_tipoalmacenaje` VALUES (1,'SM'),(2,'TM'),(3,'TR'),(4,'S'),(5,'BP'),(6,'B'),(7,'casa');
/*!40000 ALTER TABLE `encuesta_tipoalmacenaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipocasa`
--

DROP TABLE IF EXISTS `encuesta_tipocasa`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tipocasa` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_tipocasa_1bb8f392` (`content_type_id`),
  KEY `encuesta_tipocasa_7d61c803` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tipocasa`
--

LOCK TABLES `encuesta_tipocasa` WRITE;
/*!40000 ALTER TABLE `encuesta_tipocasa` DISABLE KEYS */;
INSERT INTO `encuesta_tipocasa` VALUES (60,88,63,5),(2,88,2,1),(3,88,3,3),(4,88,4,3),(5,88,5,3),(6,88,6,3),(7,88,7,5),(8,88,8,4),(9,88,9,1),(10,88,10,1),(11,88,11,3),(12,88,12,1),(13,88,13,5),(14,88,14,3),(15,88,15,5),(16,88,16,5),(17,88,17,3),(18,88,18,3),(19,88,19,5),(20,88,20,5),(21,88,21,3),(22,88,22,3),(23,88,23,3),(24,88,24,1),(25,88,25,3),(26,88,26,1),(27,88,27,3),(28,88,28,2),(29,88,29,5),(30,88,30,4),(31,88,31,3),(32,88,32,5),(33,88,33,3),(34,88,34,1),(35,88,35,5),(36,88,36,4),(37,88,37,3),(38,88,39,3),(39,88,40,3),(40,88,41,5),(41,88,38,5),(42,88,42,5),(43,88,43,5),(44,88,44,5),(45,88,45,4),(46,88,46,4),(47,88,47,3),(48,88,48,5),(49,88,51,4),(50,88,52,5),(51,88,54,4),(52,88,53,5),(53,88,56,4),(54,88,55,3),(55,88,57,5),(56,88,58,5),(57,88,59,3),(58,88,60,3),(59,88,62,3),(61,88,64,4),(62,88,65,5),(63,88,66,5),(64,88,67,3),(65,88,68,3),(66,88,69,3),(67,88,70,4),(68,88,72,3),(69,88,71,3),(70,88,73,5),(71,88,74,5),(72,88,75,3),(73,88,77,5),(74,88,78,5),(75,88,76,5),(76,88,79,2),(77,88,80,5),(78,88,81,3),(79,88,82,5),(80,88,83,4),(81,88,84,3),(82,88,85,5),(83,88,86,3),(84,88,88,5),(85,88,89,4),(86,88,90,4),(87,88,91,3),(88,88,92,4),(89,88,93,5),(90,88,94,5);
/*!40000 ALTER TABLE `encuesta_tipocasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipocasa_piso`
--

DROP TABLE IF EXISTS `encuesta_tipocasa_piso`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tipocasa_piso` (
  `id` int(11) NOT NULL auto_increment,
  `tipocasa_id` int(11) NOT NULL,
  `piso_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `tipocasa_id` (`tipocasa_id`,`piso_id`),
  KEY `encuesta_tipocasa_piso_3ea3b976` (`tipocasa_id`),
  KEY `encuesta_tipocasa_piso_6e78a6eb` (`piso_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tipocasa_piso`
--

LOCK TABLES `encuesta_tipocasa_piso` WRITE;
/*!40000 ALTER TABLE `encuesta_tipocasa_piso` DISABLE KEYS */;
INSERT INTO `encuesta_tipocasa_piso` VALUES (63,60,3),(2,2,1),(3,3,3),(4,4,1),(5,5,1),(6,6,1),(7,7,3),(8,8,3),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,3),(14,14,1),(15,15,3),(16,16,1),(17,17,3),(18,18,1),(19,19,3),(20,20,3),(21,21,1),(22,22,3),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,2),(31,31,1),(32,32,3),(33,33,1),(34,34,1),(35,35,3),(36,36,3),(37,37,1),(38,38,1),(39,39,3),(40,40,3),(41,41,3),(42,42,3),(43,43,3),(44,44,3),(45,45,1),(46,45,3),(47,46,3),(48,47,3),(49,48,3),(50,49,3),(51,50,4),(52,51,4),(53,52,3),(54,53,2),(55,53,3),(56,53,4),(57,54,1),(58,55,1),(59,56,3),(60,57,1),(61,58,1),(62,59,1),(64,61,4),(65,62,3),(66,63,3),(67,64,1),(68,65,1),(69,66,1),(70,67,3),(71,68,3),(72,69,1),(73,70,3),(74,71,4),(75,72,3),(76,73,3),(77,74,3),(78,75,3),(79,76,1),(80,76,4),(81,77,3),(82,78,1),(83,79,1),(84,79,3),(85,80,3),(86,81,3),(87,82,1),(88,83,1),(89,84,3),(90,85,1),(91,86,3),(92,87,1),(93,88,1),(94,88,3),(95,89,3),(96,90,1);
/*!40000 ALTER TABLE `encuesta_tipocasa_piso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipocasa_techo`
--

DROP TABLE IF EXISTS `encuesta_tipocasa_techo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tipocasa_techo` (
  `id` int(11) NOT NULL auto_increment,
  `tipocasa_id` int(11) NOT NULL,
  `techo_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `tipocasa_id` (`tipocasa_id`,`techo_id`),
  KEY `encuesta_tipocasa_techo_3ea3b976` (`tipocasa_id`),
  KEY `encuesta_tipocasa_techo_373c9b26` (`techo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tipocasa_techo`
--

LOCK TABLES `encuesta_tipocasa_techo` WRITE;
/*!40000 ALTER TABLE `encuesta_tipocasa_techo` DISABLE KEYS */;
INSERT INTO `encuesta_tipocasa_techo` VALUES (60,60,5),(2,2,1),(3,3,5),(4,4,5),(5,5,5),(6,6,5),(7,7,5),(8,8,5),(9,9,5),(10,10,5),(11,11,5),(12,12,5),(13,13,5),(14,14,5),(15,15,5),(16,16,5),(17,17,5),(18,18,5),(19,19,5),(20,20,5),(21,21,5),(22,22,5),(23,23,5),(24,24,5),(25,25,5),(26,26,5),(27,27,5),(28,28,5),(29,29,5),(30,30,5),(31,31,5),(32,32,5),(33,33,5),(34,34,1),(35,35,5),(36,36,5),(37,37,5),(38,38,5),(39,39,5),(40,40,5),(41,41,5),(42,42,4),(43,43,5),(44,44,5),(45,45,5),(46,46,5),(47,47,5),(48,48,5),(49,49,5),(50,50,5),(51,51,5),(52,52,5),(53,53,5),(54,54,5),(55,55,5),(56,56,5),(57,57,5),(58,58,5),(59,59,5),(61,61,5),(62,62,5),(63,63,5),(64,64,5),(65,65,5),(66,66,5),(67,67,4),(68,67,5),(69,68,5),(70,69,5),(71,70,5),(72,71,5),(73,72,5),(74,73,5),(75,74,5),(76,75,5),(77,76,1),(78,76,4),(79,76,5),(80,77,5),(81,78,5),(82,79,5),(83,80,5),(84,81,5),(85,82,5),(86,83,5),(87,84,5),(88,85,5),(89,86,5),(90,87,5),(91,88,5),(92,89,5),(93,90,5);
/*!40000 ALTER TABLE `encuesta_tipocasa_techo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipoproblema`
--

DROP TABLE IF EXISTS `encuesta_tipoproblema`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tipoproblema` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tipoproblema`
--

LOCK TABLES `encuesta_tipoproblema` WRITE;
/*!40000 ALTER TABLE `encuesta_tipoproblema` DISABLE KEYS */;
INSERT INTO `encuesta_tipoproblema` VALUES (1,'Humedad'),(2,'Insectos'),(3,'Roedores'),(4,'Falta Infract Almac');
/*!40000 ALTER TABLE `encuesta_tipoproblema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tipotrabajo`
--

DROP TABLE IF EXISTS `encuesta_tipotrabajo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tipotrabajo` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tipotrabajo`
--

LOCK TABLES `encuesta_tipotrabajo` WRITE;
/*!40000 ALTER TABLE `encuesta_tipotrabajo` DISABLE KEYS */;
INSERT INTO `encuesta_tipotrabajo` VALUES (1,'MO'),(2,'M'),(3,'C'),(4,'I'),(5,'P'),(6,'Pan'),(7,'Cos'),(8,'Com'),(9,'Extranjera'),(10,'T'),(11,'E'),(12,'B'),(13,'H'),(14,'Téc'),(15,'Prof'),(16,'Nacional');
/*!40000 ALTER TABLE `encuesta_tipotrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_transporte`
--

DROP TABLE IF EXISTS `encuesta_transporte`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_transporte` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `transporte_id` int(11) NOT NULL,
  `numero` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `encuesta_transporte_1bb8f392` (`content_type_id`),
  KEY `encuesta_transporte_7d61c803` (`object_id`),
  KEY `encuesta_transporte_4de90b82` (`transporte_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_transporte`
--

LOCK TABLES `encuesta_transporte` WRITE;
/*!40000 ALTER TABLE `encuesta_transporte` DISABLE KEYS */;
INSERT INTO `encuesta_transporte` VALUES (1,88,2,1,2),(2,88,2,3,1),(3,88,3,1,4),(4,88,3,3,1),(5,88,7,5,1),(6,88,8,1,1),(7,88,8,4,1),(8,88,9,1,3),(9,88,10,3,1),(10,88,11,5,1),(11,88,12,1,1),(12,88,13,1,1),(13,88,15,4,1),(14,88,16,5,1),(15,88,17,1,2),(16,88,17,5,1),(17,88,20,1,1),(18,88,23,1,1),(19,88,23,3,1),(20,88,26,1,2),(21,88,28,4,1),(22,88,34,1,2),(23,88,34,3,1),(24,88,36,4,1),(25,88,36,5,1),(26,88,40,5,1),(27,88,38,1,3),(28,88,38,2,1),(29,88,38,3,1),(30,88,42,1,2),(31,88,43,5,1),(32,88,46,4,1),(33,88,47,1,4),(34,88,48,4,1),(35,88,51,1,1),(36,88,51,3,2),(37,88,51,4,1),(38,88,52,1,1),(39,88,52,4,1),(40,88,52,5,1),(41,88,54,1,2),(42,88,54,5,1),(43,88,53,1,3),(44,88,53,3,1),(45,88,59,4,1),(46,88,62,1,1),(47,88,62,3,1),(48,88,64,3,3),(49,88,66,1,1),(50,88,68,1,2),(51,88,69,1,1),(52,88,69,3,1),(53,88,70,1,1),(54,88,74,1,1),(55,88,75,1,1),(56,88,75,3,1),(57,88,77,1,1),(58,88,78,1,1),(59,88,76,1,3),(60,88,79,3,1),(61,88,80,5,3),(62,88,82,4,1),(63,88,83,1,3),(64,88,84,1,1),(65,88,85,3,1),(66,88,89,1,1),(67,88,90,4,1),(68,88,93,3,1),(69,88,93,5,1),(70,88,94,3,1);
/*!40000 ALTER TABLE `encuesta_transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_tratamiento`
--

DROP TABLE IF EXISTS `encuesta_tratamiento`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_tratamiento` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `encuesta_tratamiento`
--

LOCK TABLES `encuesta_tratamiento` WRITE;
/*!40000 ALTER TABLE `encuesta_tratamiento` DISABLE KEYS */;
INSERT INTO `encuesta_tratamiento` VALUES (1,'aceite negro'),(2,'Ceniza'),(3,'Cal'),(4,'Gazolina'),(5,'Ninguno');
/*!40000 ALTER TABLE `encuesta_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_usotierra`
--

DROP TABLE IF EXISTS `encuesta_usotierra`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `encuesta_usotierra` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lugar_comunidad` (
  `id` int(11) NOT NULL auto_increment,
  `municipio_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `lugar_comunidad_cebc556` (`municipio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lugar_comunidad`
--

LOCK TABLES `lugar_comunidad` WRITE;
/*!40000 ALTER TABLE `lugar_comunidad` DISABLE KEYS */;
INSERT INTO `lugar_comunidad` VALUES (1,2,'La parrando arriba'),(2,2,'Las Mercedes'),(3,2,'Parranda Arriba'),(4,2,'El Paraisito'),(5,2,'La Esmeralda'),(6,1,'La Pita'),(7,3,'Aguas Amarillas'),(8,4,'Los Andes'),(9,4,'El Jobo'),(10,4,'Yasica Sur'),(11,4,'El Roblar'),(12,4,'Ilapo #2'),(13,2,'El Paraíso'),(14,2,'Las Vegas'),(15,2,'La Salvadora'),(16,5,'Posolera'),(17,3,'Aguas Amarillas'),(18,1,'La Escalera #1'),(19,3,'Guapotal'),(20,3,'La Pita'),(21,6,'Bocaysito El Venado'),(22,2,'San José de las Vegas'),(23,2,'La Fundadora'),(24,4,'El Trentino'),(25,6,'Santa Ana'),(26,6,'La Chata, Bocaysito'),(27,3,'Coyollar '),(28,3,'Coyolar #1'),(29,6,'Tabaco'),(30,3,'El Coyolar'),(31,3,'San Antonio'),(32,3,'Coyolar El Quebradón'),(33,3,'Aguas Amarillas 2'),(34,1,'La Escalera'),(35,4,'Santa Lucía'),(36,4,'Horno No 4'),(37,4,'La Reyna'),(38,4,'Monte Grande'),(39,4,'La Reyna'),(40,4,'La Lima'),(41,6,'Teosintal'),(42,6,'Santa Rosa'),(43,6,'Frank Tijerino No 2'),(44,6,'Ernesto Gutiérrez');
/*!40000 ALTER TABLE `lugar_comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_departamento`
--

DROP TABLE IF EXISTS `lugar_departamento`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lugar_departamento` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lugar_departamento`
--

LOCK TABLES `lugar_departamento` WRITE;
/*!40000 ALTER TABLE `lugar_departamento` DISABLE KEYS */;
INSERT INTO `lugar_departamento` VALUES (1,'Matagalpa','matagalpa'),(2,'Jinotega','jinotega'),(3,'Nueva Segovia','nueva-segovia'),(4,'RAAN','raan');
/*!40000 ALTER TABLE `lugar_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_municipio`
--

DROP TABLE IF EXISTS `lugar_municipio`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lugar_municipio` (
  `id` int(11) NOT NULL auto_increment,
  `departamento_id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`),
  KEY `lugar_municipio_779a4ea6` (`departamento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `lugar_municipio`
--

LOCK TABLES `lugar_municipio` WRITE;
/*!40000 ALTER TABLE `lugar_municipio` DISABLE KEYS */;
INSERT INTO `lugar_municipio` VALUES (1,1,'Matagalpa','matagalpa'),(2,2,'Jinotega','jinotega'),(3,1,'Tuma La Dalia','tuma-la-dalia'),(4,1,'San Ramon','san-ramon'),(5,1,'Waslala','waslala'),(6,2,'El Cuá','el-cua');
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

-- Dump completed on 2010-09-23  2:19:32
