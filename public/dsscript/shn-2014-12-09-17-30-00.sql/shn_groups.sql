CREATE DATABASE  IF NOT EXISTS `shn` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shn`;
-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: shn
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Banners','2014-09-22 09:46:32','2014-12-03 12:55:16',19),(2,'Catalogues and Primers','2014-09-22 09:46:32','2014-12-03 12:54:36',16),(3,'Greyfriars','2014-09-22 09:46:32','2014-12-03 12:54:29',15),(4,'Roma','2014-09-22 09:46:32','2014-12-03 12:54:10',13),(5,'Thomas Bewick and Other Allegories','2014-09-22 09:46:32','2014-12-03 12:54:51',17),(6,'Gold Dust','2014-09-27 18:20:31','2014-12-03 12:54:58',18),(7,'Ornament','2014-09-27 18:22:47','2014-12-03 12:52:57',9),(8,'Starmaps and Follies','2014-09-27 18:30:21','2014-12-03 12:53:05',10),(9,'The World Turned Upside Down','2014-09-27 18:30:36','2014-12-03 12:54:20',14),(10,'Histories','2014-09-27 18:30:50','2014-11-11 09:03:45',11),(11,'Grids','2014-09-27 18:31:18','2014-12-03 12:52:27',8),(12,'Loops','2014-09-27 18:31:30','2014-12-03 12:52:18',7),(13,'Surface / Connections','2014-09-27 18:31:57','2014-12-03 12:51:58',6),(14,'Multi Panels','2014-09-27 18:32:07','2014-12-03 12:51:49',5),(15,'Islington Mill Gallery','2014-09-27 18:32:30','2014-12-03 12:51:38',4),(16,'Combinations','2014-09-27 18:32:39','2014-12-03 12:51:26',3),(17,'Current work','2014-09-27 18:32:54','2014-12-03 12:51:10',2),(18,'Printed Paintings','2014-10-21 07:24:35','2014-12-03 12:53:46',12),(19,'Curriculum Vitae','2014-11-10 10:16:10','2014-12-03 12:50:44',1),(20,'All texts','2014-12-09 17:18:57','2014-12-09 17:18:57',20);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-09 17:31:01
