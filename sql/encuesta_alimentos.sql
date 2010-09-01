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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-08 15:27:52
