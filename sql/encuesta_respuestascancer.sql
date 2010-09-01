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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-08 15:55:57
