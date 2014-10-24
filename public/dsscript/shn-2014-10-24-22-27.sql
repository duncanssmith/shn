# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.15)
# Database: shn
# Generation Time: 2014-10-24 21:27:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table group_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group_text`;

CREATE TABLE `group_text` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `text_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table group_work
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group_work`;

CREATE TABLE `group_work` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `group_work` WRITE;
/*!40000 ALTER TABLE `group_work` DISABLE KEYS */;

INSERT INTO `group_work` (`id`, `work_id`, `group_id`, `created_at`, `updated_at`)
VALUES
	(1,25,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(2,26,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(3,27,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(4,28,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(5,29,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(6,30,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(7,31,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(8,32,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(9,33,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(10,34,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(11,35,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(12,36,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(13,37,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(14,38,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(15,39,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(16,40,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(17,41,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(18,42,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(19,43,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(20,44,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(21,45,12,'2014-10-13 10:33:45','2014-10-13 10:33:55'),
	(22,67,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(23,65,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(24,167,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(25,207,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(26,267,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(27,271,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(28,269,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(29,277,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(30,276,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(31,275,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(32,274,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(33,273,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(34,272,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(35,267,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(36,268,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(37,253,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(38,254,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(39,257,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(40,258,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(41,266,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(42,264,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(43,263,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(44,265,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(45,260,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(46,262,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(47,261,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(48,255,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(49,256,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(50,258,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(51,241,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(52,242,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(53,243,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(54,244,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(55,245,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(56,246,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(57,247,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(58,248,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(59,249,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(60,250,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(61,251,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(62,252,17,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(63,93,4,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(64,68,4,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(65,227,4,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(66,225,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(67,46,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(68,47,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(69,219,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(70,220,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(71,57,3,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(72,58,3,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(73,59,3,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(74,60,3,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(75,61,3,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(76,62,3,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(77,202,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(78,212,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(79,211,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(80,208,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(81,204,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(82,207,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(83,63,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(84,203,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(85,210,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(86,95,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(87,70,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(88,72,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(89,214,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(90,71,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(91,69,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(92,86,5,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(93,209,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(94,213,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(95,218,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(96,223,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(97,224,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(98,133,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(99,138,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(100,135,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(101,134,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(102,136,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(103,137,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(104,139,9,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(105,14,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(106,157,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(107,73,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(108,75,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(109,96,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(110,97,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(111,98,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(112,99,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(113,100,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(114,101,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(115,102,6,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(116,146,15,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(117,147,15,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(118,151,15,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(119,150,15,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(120,153,15,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(121,106,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(122,111,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(123,123,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(124,124,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(125,216,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(126,117,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(127,120,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(128,116,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(129,80,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(130,118,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(131,79,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(132,113,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(133,119,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(134,112,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(135,121,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(136,125,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(137,108,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(138,81,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(139,82,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(140,78,7,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(141,64,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(142,67,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(143,65,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(144,199,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(145,200,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(146,226,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(147,66,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(148,215,18,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(149,239,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(150,238,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(151,230,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(152,231,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(153,232,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(154,233,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(155,235,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(156,234,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(157,236,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(158,240,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(159,237,16,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(160,11,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(161,84,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(162,85,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(163,49,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(164,48,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(165,51,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(166,53,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(167,52,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(168,54,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(169,55,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(170,217,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(171,228,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(172,56,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(173,83,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(174,122,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(175,201,2,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(176,105,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(177,107,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(178,114,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(179,115,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(180,126,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(181,110,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(182,222,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(183,109,11,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(184,127,8,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(185,128,8,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(186,129,8,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(187,130,8,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(188,131,8,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(189,132,8,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(190,198,8,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(191,88,10,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(192,87,10,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(193,89,10,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(194,229,10,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(195,205,10,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(196,206,10,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(197,16,13,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(198,18,13,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(199,20,13,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(200,21,13,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(201,22,13,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(202,23,13,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(203,24,13,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(204,142,14,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(205,154,14,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(206,141,14,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(207,143,14,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(208,182,14,'2014-09-22 10:46:32','2014-09-22 10:46:32');

/*!40000 ALTER TABLE `group_work` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Banners','2014-09-22 10:46:32','2014-10-03 22:15:00'),
	(2,'Catalogues and Primers','2014-09-22 10:46:32','2014-10-20 21:12:36'),
	(3,'Greyfriars','2014-09-22 10:46:32','2014-09-27 19:28:51'),
	(4,'Roma','2014-09-22 10:46:32','2014-09-27 19:29:03'),
	(5,'Thomas Bewick','2014-09-22 10:46:32','2014-09-27 19:29:27'),
	(6,'Gold Dust','2014-09-27 19:20:31','2014-10-20 21:12:49'),
	(7,'Ornament','2014-09-27 19:22:47','2014-09-27 19:30:02'),
	(8,'Starmaps','2014-09-27 19:30:21','2014-09-27 19:30:21'),
	(9,'The World Turned Upside Down','2014-09-27 19:30:36','2014-10-20 21:17:27'),
	(10,'Histories','2014-09-27 19:30:50','2014-09-27 19:30:50'),
	(11,'Grids','2014-09-27 19:31:18','2014-10-22 19:58:53'),
	(12,'Loops','2014-09-27 19:31:30','2014-09-30 19:59:21'),
	(13,'Surface Connections Holden Gallery','2014-09-27 19:31:57','2014-10-22 19:59:04'),
	(14,'Multi-panels','2014-09-27 19:32:07','2014-10-22 19:59:12'),
	(15,'Islington Mill Gallery','2014-09-27 19:32:30','2014-10-22 19:59:21'),
	(16,'Combinations','2014-09-27 19:32:39','2014-10-22 19:59:30'),
	(17,'Current work','2014-09-27 19:32:54','2014-10-22 19:59:39'),
	(18,'Printed Paintings','2014-10-20 21:00:09','2014-10-20 21:00:09');

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_09_22_103000_confide_setup_users_table',1),
	('2014_09_22_175928_create_works_table',1),
	('2014_09_23_113345_create_groups',1),
	('2014_10_02_080452_add_pass_conf_to_users_table',2),
	('2014_10_02_133512_create_laravel_users_table',3),
	('2014_10_07_195550_create_users_table',3),
	('2014_10_09_192039_create_password_reminders_table',4),
	('2014_10_10_103224_create_work_group_link_table',4),
	('2014_10_11_200828_create_group_work_table',5),
	('2014_10_24_103708_create_texts_table',6),
	('2014_10_24_201840_create_group_text_table',7);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reminders`;

CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table texts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `texts`;

CREATE TABLE `texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_date` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `texts` WRITE;
/*!40000 ALTER TABLE `texts` DISABLE KEYS */;

INSERT INTO `texts` (`id`, `title`, `author`, `year`, `description`, `publication`, `publication_date`, `content`, `created_at`, `updated_at`)
VALUES
	(1,'Painting, Sharon Hall, Fabian Peake','Alistair Payne','2005','Catalogue essay','Exhibition catalogue','2005','<blockquote> <p> This exhibition brings together new paintings by Fabian Peake and Sharon Hall. The artists have both decided on certain methods for the exhibition, which allow them to investigate ongoing concerns over the particular \'display\' of painting. This can be seen as a technique which is critical to the construction of the paintings themselves. As a technique it actualizes different method for interaction, where the autonomy of a single surface; the physical constraints that this brings to painting is shifted, subsequently enhancing the interconnectivity of the multiple panels. These different surfaces can be engaged, by the viewer, singularly but also across the constraints of the \'frame\' or edge. Frame as a device, or shape, would usually construct the particulars of surface and, at the same time distinguishes the plane from anything \'outside\'. In contrast the more \'theatrical\' installation enhances the connections between the different surfaces. This method highlights difference and subjects each surface, not only to differences evident within its own surface but also differences created in the connections between the different surfaces.  </p> <p> Sharon Hall’s new paintings exemplify a particular approach to the installation of painting and the questioning of the relationship between individual surfaces. The individual surfaces present multiple contradictions between ground and mark, form and the formless, order and chaos... </p> <p> It is not a self critical definition of painting but rather a mapping between different contradictory elements, emphasizing the dualistic approach, or a shadow play, which through the method of installation becomes more apparent. In essence the actual installation constructs an ‘in between’ where connections are made between and across the different paintings.  </p> </blockquote>','2014-10-24 10:36:27','2014-10-24 21:11:39'),
	(2,'Surface Connections','David Ryan','2004','Exhibition catalogue text','Exhibition catalogue','2004','<blockquote> <p> The idea behind this project was for each of the painters to explore their practice in relation to the particularities of the given space and also the other works in the show. It attempted to unfold different understandings of space and surface – as manufactured, projected, fractured etc., and might include the \'economy\' of the single bounded painting to ensembles and installational events. One of the five painters for each proposed venue takes charge of overall curatorial possibilities – including the relationship of the works, the general shape of the installation, as well as the invitation for a critic or practitioner regarding an accompanying written text etc. (for example, in the last realization, at the Holden Gallery in Manchester, Sharon Hall took on this curatorial role.) </p> <p> The exhibition explored various matrices of surface around abstraction, architecture, the body, intentionality and contingency.  It attempted to do this in a way which examined the relationship between work and space which was disruptive and interruptive (as opposed to any curatorially \'pure\' presentation.)  </p> </blockquote>','2014-10-24 10:41:42','2014-10-24 21:12:43'),
	(3,'Les Parapluies de Manchester, Bonnington Gallery, Nottingham','David Sweet','2001','Exhibition catalogue essay','David Sweet, Exhibition catalogue 2001','2001','<blockquote> <p>The basic organising principle in the paintings of Sharon Hall is the grid. This is very clearly defined as an all-over colour charged lattice which mechanically fills the available area. The effect of the grid is to reinforce, even to the point of over emphasis, the finite planar character of painting itself, measuring out the full extension of the surface without remainder, to mark exactly the limits of the constructed pictorial field... to use a grid is to commit to abstraction and artifice, and set certain conditions which influence the other elements which the painting may contain, in particular those that come into conflict with the disciplined division of the canvas.</p> <p>In Hall\'s work the dissident component is a looping meandering which seems at first to have escaped the grid\'s influence entirely, to roam casually and unhindered across the surface. However though it emerges as an expressive agent, its progress improvised intuitively to follow the path of a rhizoid growth within a schematic system; it nevertheless registers a response to its context. Instead of being the grid\'s opposite it assumes something of a schematic character itself, becoming in places partly decorative, or ornamental, in the musical sense, as it is wrought into baroque arabesques and curlicues which intersperse the looser linear sweeps. </p> </blockquote>','2014-10-24 10:47:17','2014-10-24 21:22:52'),
	(4,'The Borrowed Image, Sunderland Centre for Contemporary Art','Amanda Farr','1995','Catalogue essay','Exhibition catalogue essay','1995','<blockquote> <p> One can draw an analogy between Hall’s paintings and musical composition: she sees her use of visual fragments from another era as a form of transposition-a word which implies both a change of place or order, and the rendering of music in a different key. The images are captured from a bygone time and place, like broken refrains or phrases from a vast chorus of history .They are used in counterpoint, juxtaposed with the formal language of abstraction, to form new possibilities of composition.[…] </p> <p> As suggested in the title, we are confronted with different histories and passages through time; that of White\'s original plan, which represents various dramatic occurrences that took place over a number of days, and that of a particular moment in history marked by the folding of the map, thus accidentally repeating recorded time through the mirroring of the image. But Hall also marks her own place in history-her physical involvement with the work-through the field of rhythmic marks, a tempo beat literally marking time […]\'   </p>  </blockquote>','2014-10-24 10:56:53','2014-10-24 21:09:40'),
	(5,'The Borrowed Image, Sunderland Centre for Contemporary Art','Mark Durden','1995','Exhibition review','Art Monthly','June 1995','<blockquote> <p>Sharon Hall drags up our colonial past. Her paintings copy 400 year old watercolours made during Sir Walter Raleigh\'s expedition to the new world: picture which mapped the landscape, show fortified encampments and illustrate what were then such exotic and fantastic creatures as an alligator. Hall\'s copyings are in the form of fragmentary details which only partly fill her canvases; the rest is filled by an abstract surface made up of linear cross-hatched markings. A \'bad\' part of our history contributes to these beautiful paintings; her critique is edged with an evident aesthetic fascination with this historical material.</p> </blockquote>','2014-10-24 10:59:20','2014-10-24 21:08:18'),
	(6,'Union Street Gallery press release','David Ryan','1994','Gallery press release','Union Street Gallery press release','December 1994','<blockquote> <p>Sharon Hall\'s paintings remain difficult to categorise. On the one hand they explore a potential for narrative content through her use of imagery, while on the other, a deep rooted concern with purely optical and formal devices remains extremely important. These oppositions are set up in a variety of ways, sometimes in the one canvas or even related pieces within a series (the Roma series for instance where image and linear ground are separated out.) Such a dialogue appears to explore the \'forgetfulness\' of the modernist autonomous object, and the attempt to hold on to a possibility of retrieving some form of \'truth content\' from the distant past. Where this is located is within the array of images, always seemingly fragmented or inconspicuous, yet painted with the belief that something can be unlocked...</p> </blockquote>','2014-10-24 11:00:53','2014-10-24 21:13:26'),
	(7,'Review of Union Street Gallery exhibition','Tania Guha','1994','Exhibition review','Time Out','1994','<blockquote> <p>The canvases are painted in delicate concoctions of colour: lavender-blues, rose-pinks, and pea-greens, for instance. Paint is dragged across the surface vertically and horizontally, so that one is reminded of microscopic enlargements of woven silk. The twist lies in the spidery line drawings that float atop these striated backgrounds...</p> </blockquote>','2014-10-24 11:01:56','2014-10-24 21:14:02'),
	(8,'IMAGE CONTRA IMAGE','David Ryan','1993','Castlefield Gallery, catalogue essay','Castlefield Gallery, catalogue essay','1993','<blockquote> <p> It cannot be underestimated how important the confrontation with dominant aesthetic ideas can be for an artist during their formative years, and how these take root and inform their output long after superficial \'resemblances\' have vanished. In Sharon Hall\'s case, as with many (one is tempted to say most) artists of her generation, it was a response to what was then called \'New Image\' painting, as exemplified by European painters of then late 70\'s and early 80\'s. Unlike many of her contemporaries, she did not awake one morning to find herself transformed into a fully fledged expressionist painter of archetypal imagery. Hall\'s engagement with the problems raised during that period was much slower, thoughtful and intelligent. Now that we have the opportunity to see her recent paintings it is clear that many of the issues from this period still persist and have been doggedly refined into a critical consideration of how images can be used in painting, indeed, how they can be used in conjunction with their own opposition. </p> <p>  The imagery Hall has been concerned with over the last few years has encompassed a wide range of both chronology and subject matter (there is, however, a visual consistency which partly results from her choice of pre-photographic modes of reproduction as source material.) A mere listing might suffice here: texts and images from the letters and diaries of the \'49ers\', childrens primers and educational aids, \'the world turned upside down\' tradition of populist prints, various early colonialist maps and engravings, as well as astronomical and navigational charts. The list might make clear her interest in the images: they are all self consciously \'historical\', they create a sort of temporal distance between their original connotation and their current re-fabrication, they often reveal rhetorical purely ideological element, and, formally, their linearity enables a curious relationship to occur with the other oppositional elements in the painting, namely the seemingly autonomous systematic mark making that seems to unfold the \'time\' of picture making in conjunction with the \'recitation\' of the images.  </p> </blockquote>','2014-10-24 11:02:47','2014-10-24 11:02:47'),
	(9,'Castlefield Gallery catalogue essay','Sacha Craddock','1993','Gallery catalogue essay','Castlefield Gallery exhibition catalogue','1993','<blockquote> <p>...in the recent paintings it becomes obvious that Hall has shifted her method. Instead of imposing a whole outlined oneness of intention upon the canvas she builds up a further layering of possible evidence through her working method. Instead of dealing absolutely by answering a question that could never be posed through painting she approaches the country\'s imperial past through a fragmented accumulation of drawing. An alternately faltering and fast line hints at recognisable images. These can be attractive, decisive and unclear all at the same time. This faltering and questioning thought process has by necessity lead to the rejection of a display of false clarity of vision. In the same way that Gerhard Richter paints the blur in order to show how both the personal and photographic memory are ungraspable and unreliable, Hall dissects and crosses the surface with a build up of delicate delineation.</p> <p>The relation between the process of thought and the activity of drawing is particularly naked here. By laying a trail across the canvas she describes a conceptual journey. The solid ground of so many \'clear\' historical narratives has been replaced by an active involvment. The soil has been loosened and disrupted. New territories are explored.</p> </blockquote>','2014-10-24 11:03:27','2014-10-24 21:14:57'),
	(10,'Review of Castlefield exhibition, City Life','Sue Platt','1993','Exhibition review','City Life','1994','<blockquote> <p>Through the intensely delicate marks, lines and fragments of freehand initiated wood cut trails; she translates the images in related clean colours from all directions, across painstaking blinds of line. She makes you investigate the truths only hinted at in initial viewing. A gorgeous fact of these paintings is that they make you watch them further, as if you might find a plough in the stars... The stains and stitches of colour physically tighten your eye and brow, and you are constantly aware of the time involved in both making and emergence...</p> </blockquote>','2014-10-24 11:04:27','2014-10-24 21:21:55'),
	(11,'Review of Castlefield exhibition, The Guardian','Robert Clark','1994','Review of Castlefield exhibition, The Guardian','The Guardian','1994','<blockquote> <p>Sharon Hall\'s recent canvases are so odd and awkward I suspect they are much better than they at first appear. Although generally too airy to at all appeal to me, they nevertheless give me the kind of uncomfortable feelings that come from the viewing of truly adventurous work. In any case I\'ve not seen a show quite like this anywhere before, and that\'s got to be a good thing... The work\'s unrelieved surreal dizziness should be disturbing but its not; its more light headed like a mind tingle of intoxication...</p> </blockquote>','2014-10-24 11:05:16','2014-10-24 21:04:09'),
	(12,'Rebecca Hossack Gallery, catalogue essay','David Ryan','1990','Rebecca Hossack Gallery, catalogue essay','Rebecca Hossack Gallery, catalogue essay','1990','<blockquote> <p>The work included in the present exhibition can be seen as belonging to the following series in terms of their subject matter - works that draw on the iconography of the world turned upside down; a series that uses early educational material in the form of Catalogues and Primers; and a set of pieces which incorporate John White’s watercolours of one of the first British explorations of north America which are collectively titled Histories and Discoveries.</p> <p>Each of these series has in common the procedural strategy of combining appropriated imagery juxtaposed with a highly formalised processual surface. The resulting effect of this juxtaposition creates a dialectical play between different signifying systems which in turn generate shifting and ambiguous readings...</p> <p>The beauty of visual discourse is in its capacity to generate many interpretive levels, which in Halls case might embrace both the analytical and the sensual. The pictorial leaps of thought which her paintings invite create a kind of unsmooth clarity where both the archaeology of the past and the opticality of the present begin to inform the artist’s relation to history in new and exciting ways.</p> </blockquote>','2014-10-24 11:06:20','2014-10-24 11:06:20'),
	(13,'Review of Rebecca Hossack Gallery exhibition','David Lillington','1990','Review of Rebecca Hossack Gallery exhibition','Time Out','October 1990','<blockquote> <p> Sharon Hall won the Rome Award this year, and judging by her recent work, showing here, it was for sheer intelligence. Hall makes her viewers work hard. Her Reversible World IV has an image (haystack chases horse) purloined from Breughel, drawn in paint and superimposed on an image (wife beats man) from a sixteenth century German playing card. The wife-beats-man image is set sideways. The whole is extremely difficult to read clearly; its interesting enough however to inspire the effort...</p> <p>...Political issues are raised in her work, particularly that of the social position of women - but the ideas which communicate most are about the language of art. Hall speaks of presenting her images as \'signs\' open to new narrative readings. This isn\'t as esoteric as it sounds: in the paintings you are well aware of looking at an old visual language translated into a new one: sixteenth century alphabet pictures meet abstraction... </p> </blockquote>','2014-10-24 11:07:20','2014-10-24 21:21:04'),
	(14,'Review of Rebecca Hossack Gallery exhibiton','Rose Jennings','1990','Exhibiton review','City Limits','September 1990','<blockquote> <p> These are extra ordinary paintings and an original take on the contemporary fixation with showing that context is all, that there’s no imagery or idiom that cant be mixed and matched to new and different effect. Throwing us back to a time when a common pictorial vernacular was still possible, the ideals of modernism feel renewed: while the reactionary medieval notion of social upset-women and animals rising up against their masters-throws a sneaky slant on our own apocalyptic fears […]  </p> </blockquote>','2014-10-24 11:08:04','2014-10-24 21:17:07'),
	(15,'Ferens Gallery catalogue essay','Stuart Bradshaw','1989','Exhibition catalogue essay','Ferens Gallery, catalogue essay','1989','<blockquote> <p>In Sharon Hall\'s recent work popular alternative imagery from the past is located within surfaces created from fields of horizontal lines reminiscent of those of minimalist painters such as Agnes Martin and Robert Ryman. The disjunctive effect of the juxtaposition of two such widely different idioms is lessened because the surfaces themselves are ambiguous. On the one hand, because of the nature of the image, they can be seen to allude to the texture of wood grain in wood block printing; on the other hand they appear to have been created from controlled, but simple autonomous mark making. This characteristic of imagery emerging out of or relating to, the procedures and practises of minimal art has been a dominant feature of some of the most interesting and widely known British sculpture of the 80\'s, the work of Tony Cragg, Bill Woodrow and David Mach for example, but it has hardly been a feature of painting of the same period... The subjects relate to the theme of \'the world turned upside down\' and again obliquely refer to the state of contemporary society. However these are not didactic works; the imagery is important but the paintings themselves are about the spaces, ambiguities and shifting readings that are generated when very different pictorial systems are juxtaposed.</p> </blockquote><!--<p><i>Stuart Bradshaw, catalogue essay, August 1989</i></p> <i>Sharon Hall, Anna Miszewska, New Work</i>,  Ferens Gallery, Hull, 1989</h2> -->','2014-10-24 12:16:00','2014-10-24 21:18:14'),
	(16,'Review of \"Recent Paintings\", Todd Gallery','Kate Bush','1989','Exhibition review','Artscribe International','September 1989','<blockquote> <p>...single elements from diverse narratives stand frozen contiguous, spatial compartments, each replicating the formal vocabulary of the wood block (using horizontal hatching and reversals of light and dark.) Hall\'s paintings propose a narrative existing in space rather than time: non-linear and non-developmental. This spatialisation of a story can be seen to correspond to a structuralist model of language where the grid, like the sentence, can be extended ad-infinitum, and where meaning is continuously deferred through a system of shifting difference...</p> </blockquote>','2014-10-24 12:18:32','2014-10-24 21:19:33'),
	(17,'Sharon Hall, Chisenhale Gallery, press release','Sharon Hall','1988','Chisenhale Gallery, press release','Chisenhale Gallery press release','1988','<blockquote> <p>The works in this show are a sub-series of a larger project which is intended to cover the history of gold and the part it has played in the establishment of our present economic systems.</p> <p>The work I had produced up until this point had often made use of prime source material in the form of old engravings and popular prints and in trying to find a set of images to use for the gold series I stumbled across some colour reproductions in an old Time Life book of original watercolours made by the pioneers of the American Gold Rush in 1849. At this time I was also aware of a piece of music by the American contemporary composer, Christian Wolff, entitled <i>Star Dust Pieces</i>, which had also made use of vernacular source material in its construction and composition. Eventually, and partly in homage to Wolff\'s music, I entitled the whole series <i>Gold Dust Pieces</i>. Wolff\'s use of a grid structure to simultaneously present a complete but spatially fragmented image, together with its use of material which stood outside of mainstream high culture became one of the primary concerns of these works.</p> </blockquote>','2014-10-24 12:19:35','2014-10-24 21:20:12');

/*!40000 ALTER TABLE `texts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'duncan','duncanssmith@gmail.com','$2y$10$W13FyGM7OClA2UhUZFtHo.zrMd/YGHfxaFWiygBW8aUP65XwWdPw.','gtoo8WdR9GsWo1XWnS4MyKDcCBNH9qqIrgDhIK9xL25aolJj93cWafdETYGE','2014-10-10 15:25:40','2014-10-24 19:59:39');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table works
# ------------------------------------------------------------

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dimensions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;

INSERT INTO `works` (`id`, `reference`, `title`, `media`, `dimensions`, `work_date`, `created_at`, `updated_at`)
VALUES
	(1,'0001','UNKNOWN','Oil on canvas','55 x 75 cm','1992-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(2,'0002','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(3,'0003','Untitled','Oil on canvas','65 x 65 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(4,'0004','Untitled','Oil on canvas','65 x 65 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(5,'0005','UNKNOWN','Oil on canvas','55 x 75 cm','1992-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(6,'0006','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(7,'0007','UNKNOWN','Oil on canvas','55 x 75 cm','1992-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(8,'0008','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(9,'0009','UNKNOWN','Oil on canvas','55 x 75 cm','1992-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(10,'0010','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(11,'0011','Catalogue Of Follies, Private Collection UK','Oil on canvas','152 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(12,'0012','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(13,'0013','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(14,'0014','Gold Dust, Chisenhale Gallery London','Installation view','n/a','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:46:00'),
	(15,'0015','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(16,'0016','Untitled, Surface Connections','Installation view','n/a','2004-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(17,'0017','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(18,'0018','Untitled, Surface Connections','Installation view','n/a','2004-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(19,'0019','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(20,'0020','Untitled, Surface Connections','Installation view','n/a','2004-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(21,'0021','Untitled, Surface Connections','Installation view','n/a','2004-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(22,'0022','Untitled, Surface Connections','Installation view','n/a','2004-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(23,'0023','Untitled, Surface Connections','Installation view','n/a','2004-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(24,'0024','Untitled, Surface Connections','Installation view','n/a','2004-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(25,'0025','Untitled','Oil on linen','180 x 150 cm','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(26,'0026','Untitled','Oil on canvas','40 x 30 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(27,'0027','Untitled','Oil on canvas','65 x 65 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(28,'0028','Untitled','Oil on canvas','40 x 30 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(29,'0029','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(30,'0030','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(31,'0031','Untitled','Oil on canvas','180 x 150 cm','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(32,'0032','Untitled','Oil on canvas','40 x 30 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(33,'0033','Untitled','Oil on canvas','150 x 180 cm','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(34,'0034','Untitled','Oil on canvas','40 x 30 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(35,'0035','Untitled (Hyde Bank Mill) installation view','Oil on canvas','n/a','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(36,'0036','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(37,'0037','Untitled','Oil on canvas','40 x 30 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(38,'0038','Untitled','Oil on linen','90 x 90 cm','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(39,'0039','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(40,'0040','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(41,'0041','Untitled','Oil on canvas','180 x 150 cm','2003-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(42,'0042','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(43,'0043','Untitled','Oil on canvas','90 x 60 cm','2003-02-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(44,'0044','Untitled','Oil on canvas','75 x 60 cm','2005-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(45,'0045','Untitled','Studio installation','n/a','2003-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(46,'0046','Banner (Dockers Union)','Oil on canvas','183 x 183 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:10:53'),
	(47,'0047','Banner (United Tin Plate Workers Society)','Oil on canvas','183 x 250 cm','1986-06-06','2014-09-22 10:46:32','2014-10-10 19:09:42'),
	(48,'0048','Untitled','Oil and acrylic on canvas','45 x 45 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(49,'0049','Women\'s Work','Oil and acrylic on canvas','120 x 120 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(50,'0050','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(51,'0051','Untitled','Oil and acrylic on canvas','45 x 55 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(52,'0052','Untitled','Oil and acrylic on canvas','55 x 55 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(53,'0053','Untitled','Oil and acrylic on canvas','55 x 55 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(54,'0054','Catalogue III, Prudential Collection, New Jersey USA','Oil and acrylic on canvas','45 x 60 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(55,'0055','Untitled','Oil and acrylic on canvas','45 x 60 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(56,'0056','Allegory - Study','Oil and wax emulsion on canvas','60 x 60 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(57,'0057','Greyfriars I','Oil and acrylic','152 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(58,'0058','Greyfriars II','Oil and acrylic','153 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(59,'0059','Greyfriars III (A Spectre is Haunting Europe)','Oil and acrylic','153 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(60,'0060','Greyfriars, Woodlands Gallery, London','Installation view','45 x 65 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(61,'0061','Greyfriars, Woodlands Gallery, London','Installation view','45 x 65 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(62,'0062','Greyfriars and Allegory of Deceit, Woodlands Gallery, London','Installation view','45 x 65 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(63,'0063','Untitled','Oil on canvas','45 x 45 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(64,'0064','Muybridge','Oil and wax emulsion on canvas','152 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(65,'0065','Catalogue of Birds','Oil and wax emulsion on canvas','152 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(66,'0066','Catalogue of Follies II','Oil and wax emulsion on canvas','45 x 45 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(67,'0067','Untitled','Oil and wax emulsion on canvas','152 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(68,'0068','Roma II, Diptych','Oil and wax emulsion on canvas','150 x 300 cm','1991-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(69,'0069','Frontispiece (Bewick)','Oil and acrylic on canvas','152 x 183 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(70,'0070','Pugilists','Oil and acrylic on canvas','152 x 183 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(71,'0071','Frontispiece II (Bewick)','Oil and acrylic on canvas','152 x 183 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(72,'0072','Fencers','Oil and acrylic on canvas','152 x 183 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(73,'0073','Panning For Gold (Hovey), Diptych','Oil on canvas','150 x 90 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:49:18'),
	(74,'0074','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(75,'0075','Diary (Hovey), Diptych','Oil on canvas','150 x 90 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:50:20'),
	(76,'0076','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(77,'0077','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(78,'0078','Untitled','Oil on canvas','183 x 152 cm','1999-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(79,'0079','Untitled, Diptych','Oil and wax emulsion on canvas','120 x 180 cm','1996-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(80,'0080','Untitled, Diptych','Oil and wax emulsion on canvas','70 x 90 cm','1997-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(81,'0081','Untitled','Oil on canvas','183 x 152 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(82,'0082','Untitled','Oil and acrylic on canvas','183 x 152 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(83,'0083','Allegory of Greed','Oil and acrylic on canvas','80 x 80 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(84,'0084','Catalogue (Fortuna)','Oil and acrylic on canvas','152 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(85,'0085','Catalogue V, Prudential Collection, New Jersey USA','Oil and acrylic on canvas','153 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(86,'0086','Allegory of Deceit','Oil on canvas','153 x 183 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(87,'0087','Histories (Alligator)','Oil on canvas','512 x 183 cm','1991-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(88,'0088','Histories (John White)','Oil and wax emulsion on canvas','152 x 183 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(89,'0089','Histories III (John White)','Oil on canvas','152 x 183 cm','1991-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(90,'0090','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(91,'0091','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(92,'0092','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(93,'0093','Roma I, Diptych','Oil and wax emulsion on canvas','150 x 300 cm','1991-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(94,'0094','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(95,'0095','Pugilists','Oil and acrylic on canvas','152 x 183 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(96,'0096','Crossing the North Platt River (Bruff)','Oil on canvas','152 x 183 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:51:17'),
	(97,'0097','Sutter\'s Fort 1869 (Hovey), Diptych','Oil on canvas','183 x 304 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:52:44'),
	(98,'0098','Camp at Red Bluff Burr (Hovey)','Oil on canvas','183 x 150 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:54:02'),
	(99,'0099','Oh Boys I\'ve Struck It Heavy!','Oil on canvas','152 x 183 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:55:12'),
	(100,'0100','Perilous Descent (Bruff)','Oil on canvas','152 x 183 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:56:12'),
	(101,'0101','Panning For Gold (Hovey)','Oil on canvas','152 x 183 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:57:20'),
	(102,'0102','Those Evil Lookin\' Rattlesnake Mountains (Bruff)','Oil on canvas, Diptych','152 x 183 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:58:44'),
	(103,'0103','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(104,'0104','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(105,'0105','Untitled','Oil on canvas','220 x 200 cm','2000-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(106,'0106','Fragment','Oil and wax emulsion on canvas','183 x 152 cm','1995-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(107,'0107','Its About That Time (Private collection UK)','Oil on canvas','210 x 240 cm','2001-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(108,'0108','Untitled, Diptych','Oil on canvas','32 x 75 cm','1996-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(109,'0109','Untitled','Oil on canvas','75 x 60 cm','2003-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(110,'0110','Untitled','Oil on canvas','75 x 60 cm','2003-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(111,'0111','Fragment','Oil and wax emulsion on canvas','120 x 120 cm','1996-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(112,'0112','Untitled, Diptych','Oil and acrylic on canvas','183 x 304 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(113,'0113','Untitled, Diptych','Oil and wax emulsion on canvas','120 x 180 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(114,'0114','Untitled','Oil on canvas','150 x 210 cm','2003-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(115,'0115','Untitled','Oil on canvas','210 x 225 cm','2003-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(116,'0116','Untitled, Diptych','Oil on canvas','30 x 75 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(117,'0117','Untitled, Diptych','Oil on canvas','30 x 75 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(118,'0118','Untitled, Diptych','Oil and wax emulsion on canvas','120 x 180 cm','1999-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(119,'0119','Untitled, Diptych','Oil and wax emulsion on canvas','120 x 150 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(120,'0120','Untitled, Diptych','Oil on canvas','30 x 75 cm','1998-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(121,'0121','Untitled, Diptych','Oil on canvas','31 x 75 cm','1999-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(122,'0122','Allegory of Deceit','Oil and acrylic on canvas','181 x 181 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(123,'0123','Fragment','Oil and acrylic on canvas','152 x 183 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(124,'0124','Ornament I','Oil and acrylic on canvas','152 x 183 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(125,'0125','Diptych','Oil on canvas','32 x 75 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(126,'0126','Untitled','Oil on canvas','60 x 60 cm','2003-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(127,'0127','Traces II','Oil on canvas','183 x 152 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(128,'0128','Fictions','Oil on linen','183 x 168 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(129,'0129','Untitled (Star Map), Norton Rose Collection, London','Oil on linen','183 x 168 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(130,'0130','Traces','Oil on linen','183 x 168 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(131,'0131','Untitled (Star Map)','Oil on canvas','183 x 168 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(132,'0132','Folly, Norton Rose Collection, London','Oil on canvas','152 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(133,'0133','The Reversible World III, Diptych','Oil on canvas','183 x 304 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(134,'0134','The Reversible World (Who Wears the Trousers?), Diptych','Oil on canvas','152 x 366 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(135,'0135','The Reversible World (Hay Chasing the Horse), Diptych','Oil on canvas','152 x 366 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(136,'0136','Whichever Way I','Oil on linen','150 x 150 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(137,'0137','Whichever Way II','Oil on linen','150 x 150 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(138,'0138','We Three Monkeys','Oil and acrylic on canvas','183 x 304 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(139,'0139','Whichever Way III','Oil on linen','150 x 150 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(140,'0140','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(141,'0141','Untitled, Three installed panels','Oil on linen','240 x 90 cm','2005-06-06','2014-09-22 10:46:32','2014-10-10 20:12:30'),
	(142,'0142','Diamond','Oil and wax on linen','35 x 45 cm','2005-06-06','2014-09-22 10:46:32','2014-10-10 20:09:26'),
	(143,'0143','Untitled, Studio installation','Oil on canvas','n/a','2005-06-06','2014-09-22 10:46:32','2014-10-10 20:15:00'),
	(144,'0144','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(145,'0145','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(146,'0146','Untitled','Installation view, Islington Mill Gallery','n/a','2005-06-06','2014-09-22 10:46:32','2014-10-10 19:35:46'),
	(147,'0147','Untitled','Installation view, Islington Mill Gallery','n/a','2005-06-06','2014-09-22 10:46:32','2014-10-10 19:38:06'),
	(148,'0148','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(149,'0149','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(150,'0150','Untitled','Installation view, Islington Mill Gallery','n/a','2005-06-06','2014-09-22 10:46:32','2014-10-10 19:39:38'),
	(151,'0151','Untitled','Installation view, Islington Mill Gallery','n/a','2005-06-06','2014-09-22 10:46:32','2014-10-10 19:40:45'),
	(152,'0152','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(153,'0153','Untitled ','Islington Mill Gallery, installation view','n/a','2005-06-06','2014-09-22 10:46:32','2014-10-10 19:42:02'),
	(154,'0154','Untitled, Five installed panels','Oil and wax on canvas ','30 x 150 cm','2005-06-06','2014-09-22 10:46:32','2014-10-10 20:11:09'),
	(155,'0155','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(156,'0156','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(157,'0157','Installation, Chisenhale Gallery London','Installation view','n/a','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:47:49'),
	(158,'0158','Untitled','Oil and wax on canvas','60 x 45 cm','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(159,'0159','Untitled','Oil and wax on canvas','60 x 45 cm','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(160,'0160','Untitled','Oil and wax on canvas','60 x 45 cm','2004-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(161,'0161','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(162,'0162','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(163,'0163','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(164,'0164','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(165,'0165','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(166,'0166','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(167,'0167','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(168,'0168','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(169,'0169','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(170,'0170','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(171,'0171','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(172,'0172','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(173,'0173','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(174,'0174','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(175,'0175','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(176,'0176','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(177,'0177','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(178,'0178','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(179,'0179','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(180,'0180','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(181,'0181','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(182,'0182','Studio at Islington Mill, Studio installation','Oil on canvas','n/a','2005-06-06','2014-09-22 10:46:32','2014-10-10 20:16:37'),
	(183,'0183','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(184,'0184','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(185,'0185','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(186,'0186','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(187,'0187','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(188,'0188','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(189,'0189','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(190,'0190','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(191,'0191','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(192,'0192','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(193,'0193','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(194,'0194','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(195,'0195','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(196,'0196','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(197,'0197','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(198,'0198','Starmap','Oil and wax emulsion on canvas','121 x 91 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(199,'0199','Starmap','Oil and wax emulsion on canvas','152 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(200,'0200','Starmap','Oil and wax emulsion on canvas','152 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(201,'0201','Allegory of Desire','Oil and acrylic on canvas','181 x 181 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(202,'0202','Exotics','Oil on canvas','210 x 240 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(203,'0203','Untitled','Oil on canvas','30 x 45 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(204,'0204','Untitled','Mixed media on canvas','30 x 40 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(205,'0205','Folly: Patagonian Men','Oil on canvas','122 x 122 cm','1994-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(206,'0206','Man O\'War','Oil and wax emulsion on canvas','122 x 122 cm','1994-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(207,'0207','Untitled, Private Collection, UK','Mixed media on canvas','30 x 40 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(208,'0208','Untitled, Private Collection, UK','Mixed media on canvas','30 x 40 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(209,'0209','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(210,'0210','Beehive, Private Collection, UK','Oil on canvas','45 x 45 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(211,'0211','Ladies','Oil on canvas','210 x 240 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(212,'0212','Untitled','Oil on canvas','210 x 240 cm','1987-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(213,'0213','Untitled','Oil on canvas','60 x 45 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(214,'0214','Frontispiece (Bewick)','Oil on canvas','153 x 183 cm','1988-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(215,'0215','Catalogue of Follies II','Oil and wax emulsion on canvas','45 x 45 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(216,'0216','Ornament III','Oil on canvas','175 x 183 cm','1993-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(217,'0217','Untitled','Oil on canvas','60 x 60 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(218,'0218','Untitled','Oil on canvas','152 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(219,'0219','Untitled (The Sinking of the Titanic)','Mixed media on unstretched canvas','200 x 200 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:14:12'),
	(220,'0220','Untitled #2 (The Sinking of the Titanic)','Mixed media on unstretched canvas','200 x 200 cm','1987-06-06','2014-09-22 10:46:32','2014-10-10 19:15:27'),
	(221,'0221','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(222,'0222','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(223,'0223','Untitled','Oil on canvas','152 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(224,'0224','Untitled','Oil on canvas','152 x 183 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(225,'0225','The Artist in her studio with Banner, Chisenhale Studios  ','Mixed media on unstretched canvas','200 x 200 cm ','1988-06-06','2014-09-22 10:46:32','2014-10-10 19:07:23'),
	(226,'0226','Starmap','Oil and wax emulsion on canvas','152 x 183 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(227,'0227','Untitled','Oil and wax emulsion on canvas','85 x 85 cm','1991-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(228,'0228','Untitled','Oil on canvas','45 x 60 cm','1989-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(229,'0229','The Pyne Frute (John White)','Oil and wax emulsion on canvas','122 x 122 cm','1990-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(230,'0230','Untitled','Oil on canvas','45 x 50 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:21:18'),
	(231,'0231','Untitled','Oil on canvas','45 x 45 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:22:14'),
	(232,'0232','Untitled','Oil on linen','45 x 45 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:23:38'),
	(233,'0233','Untitled','Oil on linen','60 x 60 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:24:34'),
	(234,'0234','Diptych #2','Oil on canvas','50 x 90 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:28:53'),
	(235,'0235','Diptych #1','Oil on canvas','50 x 90 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:28:34'),
	(236,'0236','Stacked Paintings','Oil on linen','90 x 225 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:29:50'),
	(237,'0237','Diptych #3','Oil on linen','150 x 270 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:31:53'),
	(238,'0238','Untitled','Oil and wax on canvas','60 x 30 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:20:05'),
	(239,'0239','Untitled','Oil on canvas','60 x 60 cm','2005-06-06','2014-09-22 10:46:32','2014-10-10 19:18:48'),
	(240,'0240','Untitled','Oil on linen','120 x 145 cm','2006-06-06','2014-09-22 10:46:32','2014-10-10 19:30:45'),
	(241,'0241','Untitled ','Oil on cotton duck ','70 x 80 cm','2009-06-06','2014-09-22 10:46:32','2014-10-10 18:51:02'),
	(242,'0242','Untitled ','Oil on cotton duck','70 x 80 cm','2009-06-06','2014-09-22 10:46:32','2014-10-10 18:51:57'),
	(243,'0243','Untitled ','Oil on cotton duck','75 x 100 cm','2010-06-06','2014-09-22 10:46:32','2014-10-10 18:53:02'),
	(244,'0244','Untitled (Private collection UK)','Oil on linen ','75 x 100 cm','2009-06-06','2014-09-22 10:46:32','2014-10-10 18:54:27'),
	(245,'0245','Untitled (Fan)','Oil on linen ','75 x 100 cm ','2010-06-06','2014-09-22 10:46:32','2014-10-10 19:01:59'),
	(246,'0246','Untitled','Oil on linen ','75 x 100 cm','2010-06-06','2014-09-22 10:46:32','2014-10-10 19:02:47'),
	(247,'0247','Untitled (Corner)','Oil on linen','75 x 100 cm ','2010-06-06','2014-09-22 10:46:32','2014-10-10 18:58:48'),
	(248,'0248','Untitled (Pyramid)','Oil on linen ','90 x 90 cm','2010-06-06','2014-09-22 10:46:32','2014-10-10 19:01:02'),
	(249,'0249','Tondo  2010 Private collection Italy','Oil on linen','60 cm diameter ','2010-06-06','2014-09-22 10:46:32','2014-10-10 18:57:51'),
	(250,'0250','Diptych (Window) ','Oil on linen ','152 x 240 cm','2009-06-06','2014-09-22 10:46:32','2014-10-10 18:56:57'),
	(251,'0251','Diptych (Wall)','Oil on linen','152 x 240 cm ','2009-06-06','2014-09-22 10:46:32','2014-10-10 18:59:51'),
	(252,'0252','Studio','n/a','n/a','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:55:33'),
	(253,'0253','Not Titled (Orange Diagonals)','Oil on linen ','80 x 100 cm','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:37:03'),
	(254,'0254','Not Titled (Yellow Diagonals) ','Oil on linen ','80 x 100 cm','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:38:07'),
	(255,'0255','Diptych with Zig Zags','Oil on canvas','180 x 90 cm','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:48:05'),
	(256,'0256','Installed paintings','Oil on canvas','n/a','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:49:21'),
	(257,'0257','Not Titled (Diagonals in Dark Bands) ','Oil on linen ','90 x 90 cm','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:39:10'),
	(258,'0258','Not Titled (Diagonals in Yellow Bands) ','Oil on linen ','90 x 90 cm','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:40:02'),
	(259,'0259','UNKNOWN','Oil on canvas','45 x 65 cm','1992-04-24','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(260,'0260','Installed paintings','Oil on canvas','n/a','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:44:52'),
	(261,'0261','Installed paintings','Oil on canvas','n/a','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:46:36'),
	(262,'0262','Installed paintings','Oil on canvas','n/a','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:45:52'),
	(263,'0263','Not Titled (Yellow Tondo)  ','Oil on cotton duck ','35 cm diameter','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:43:43'),
	(264,'0264','Not Titled (Tondo with Linen)  ','Oil on linen ','60 cm diameter','2011-06-06','2014-09-22 10:46:32','2014-10-10 18:42:24'),
	(265,'0265','Not Titled (Red Tondo)  ','Oil on linen ','20 cm diameter','2011-06-06','2014-09-22 10:46:32','2014-10-10 17:30:22'),
	(266,'0266','Green and Orange Bands (Homage to G.M.) ','Oil on linen ','120 x 152 cm 2011/12','2012-06-06','2014-09-22 10:46:32','2014-10-10 17:29:13'),
	(267,'0267','Solvay bands','Oil on canvas','120 x 152 cm','2012-06-06','2014-09-22 10:46:32','2014-10-10 17:26:34'),
	(268,'0268','Not Titled (Three Pyramids)','Oil on linen ','130 x 148 cm','2012-06-06','2014-09-22 10:46:32','2014-10-10 17:27:33'),
	(269,'0269','Not Titled (Tondo with Greys)','Oil on linen','35 cm diameter','2013-06-06','2014-09-22 10:46:32','2014-10-10 17:24:50'),
	(270,'0270','Not Titled (Diagonals with Linen) ','Oil on linen ','50 x 60 cm','2013-06-06','2014-09-22 10:46:32','2014-10-10 17:23:58'),
	(271,'0271','Not titled (Fan with pink)','Oil on linen','70 x 100cm','2013-06-06','2014-09-22 10:46:32','2014-10-10 17:23:19'),
	(272,'0272','Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','Installation','n/a','2012-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(273,'0273','Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','Installation','n/a','2012-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(274,'0274','Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','Installation','n/a','2012-06-06','2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(275,'0275','Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','Installation','n/a','2012-06-06','2014-09-22 10:46:32','2014-10-10 17:02:51'),
	(276,'0276','Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','Installation','n/a','2013-06-06','2014-09-22 10:46:32','2014-10-10 17:01:20'),
	(277,'0277','Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','Installation','n/a','2012-06-06','2014-09-22 10:46:32','2014-10-10 17:00:09');

/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
