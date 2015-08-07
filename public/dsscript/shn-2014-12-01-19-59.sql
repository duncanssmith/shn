# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.15)
# Database: shn
# Generation Time: 2014-12-01 19:59:53 +0000
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
  `group_id` int(10) unsigned NOT NULL,
  `text_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `group_text` WRITE;
/*!40000 ALTER TABLE `group_text` DISABLE KEYS */;

INSERT INTO `group_text` (`id`, `group_id`, `text_id`, `created_at`, `updated_at`, `order`)
VALUES
	(1,15,1,'2014-11-05 10:20:16','2014-11-27 17:58:54',2),
	(2,13,2,'2014-11-05 10:27:54','2014-11-05 10:27:54',1),
	(3,12,18,'2014-11-05 10:32:32','2014-11-05 10:32:32',1),
	(4,11,19,'2014-11-05 10:36:32','2014-11-05 10:36:32',1),
	(5,7,20,'2014-11-05 10:44:32','2014-11-05 10:44:32',1),
	(6,8,21,'2014-11-05 10:47:19','2014-11-05 10:47:19',1),
	(7,18,22,'2014-11-05 10:50:19','2014-11-05 10:50:19',1),
	(8,10,4,'2014-11-05 11:07:37','2014-11-05 11:07:37',1),
	(9,19,23,'2014-11-07 18:12:44','2014-11-07 18:12:44',1),
	(11,16,18,'2014-11-08 01:08:09','2014-11-08 01:08:09',1),
	(12,14,3,'2014-11-10 21:23:20','2014-11-10 21:23:20',2),
	(13,13,3,'2014-11-10 21:23:28','2014-11-10 21:23:28',2),
	(14,14,2,'2014-11-10 21:23:52','2014-11-10 21:23:52',1),
	(15,2,12,'2014-11-10 21:30:05','2014-11-10 21:30:05',2),
	(16,9,12,'2014-11-10 21:31:03','2014-11-10 21:31:03',2),
	(17,2,14,'2014-11-10 21:33:49','2014-11-10 21:33:49',1),
	(18,9,14,'2014-11-10 21:33:49','2014-11-10 21:33:49',1),
	(19,20,3,'2014-11-12 20:19:41','2014-11-12 20:19:41',1),
	(20,1,1,'2014-11-26 16:11:02','2014-11-26 16:11:02',2),
	(21,1,10,'2014-11-26 16:11:31','2014-11-27 17:58:54',1),
	(22,1,15,'2014-11-26 16:11:58','2014-11-27 17:58:54',3);

/*!40000 ALTER TABLE `group_text` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table group_work
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group_work`;

CREATE TABLE `group_work` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `group_work` WRITE;
/*!40000 ALTER TABLE `group_work` DISABLE KEYS */;

INSERT INTO `group_work` (`id`, `work_id`, `group_id`, `created_at`, `updated_at`, `order`)
VALUES
	(1,25,12,'2014-10-13 10:33:45','2014-11-27 20:32:11',3),
	(2,26,12,'2014-10-13 10:33:45','2014-11-27 20:33:11',10),
	(3,27,12,'2014-10-13 10:33:45','2014-11-27 20:33:11',11),
	(4,28,12,'2014-10-13 10:33:45','2014-11-27 20:33:07',12),
	(5,29,12,'2014-10-13 10:33:45','2014-11-27 20:31:47',22),
	(6,30,12,'2014-10-13 10:33:45','2014-11-27 20:31:47',21),
	(7,31,12,'2014-10-13 10:33:45','2014-11-27 20:33:25',16),
	(8,32,12,'2014-10-13 10:33:45','2014-11-27 20:33:25',17),
	(9,33,12,'2014-10-13 10:33:45','2014-11-27 20:33:14',5),
	(10,34,12,'2014-10-13 10:33:45','2014-11-27 20:31:47',19),
	(11,35,12,'2014-10-13 10:33:45','2014-11-27 20:32:40',4),
	(12,36,12,'2014-10-13 10:33:45','2014-11-27 20:31:47',23),
	(13,37,12,'2014-10-13 10:33:45','2014-11-27 20:33:11',9),
	(14,38,12,'2014-10-13 10:33:45','2014-11-27 20:32:16',2),
	(15,39,12,'2014-10-13 10:33:45','2014-11-27 20:33:25',18),
	(16,40,12,'2014-10-13 10:33:45','2014-11-27 20:33:07',13),
	(17,41,12,'2014-10-13 10:33:45','2014-11-27 20:33:14',6),
	(18,42,12,'2014-10-13 10:33:45','2014-11-27 20:33:07',14),
	(19,43,12,'2014-10-13 10:33:45','2014-11-27 20:33:14',7),
	(20,44,12,'2014-10-13 10:33:45','2014-11-27 20:32:16',1),
	(21,45,12,'2014-10-13 10:33:45','2014-11-27 20:33:14',8),
	(27,271,17,'2014-09-22 10:46:32','2014-11-27 20:25:58',1),
	(28,269,17,'2014-09-22 10:46:32','2014-11-27 20:25:58',2),
	(30,276,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',3),
	(31,275,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',4),
	(32,274,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',5),
	(33,273,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',6),
	(34,272,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',7),
	(35,267,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',8),
	(36,268,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',9),
	(37,253,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',12),
	(38,254,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',13),
	(39,257,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',14),
	(40,258,17,'2014-09-22 10:46:32','2014-11-27 20:27:46',25),
	(41,266,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',10),
	(42,264,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',15),
	(43,263,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',16),
	(44,265,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',17),
	(45,260,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',18),
	(46,262,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',19),
	(47,261,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',20),
	(48,255,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',21),
	(49,256,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',23),
	(51,241,17,'2014-09-22 10:46:32','2014-11-27 20:25:11',32),
	(52,242,17,'2014-09-22 10:46:32','2014-11-27 20:25:00',34),
	(53,243,17,'2014-09-22 10:46:32','2014-11-27 20:27:42',28),
	(54,244,17,'2014-09-22 10:46:32','2014-11-27 20:25:00',33),
	(55,245,17,'2014-09-22 10:46:32','2014-11-27 20:27:46',27),
	(56,246,17,'2014-09-22 10:46:32','2014-11-27 20:27:42',29),
	(57,247,17,'2014-09-22 10:46:32','2014-11-27 20:27:46',26),
	(58,248,17,'2014-09-22 10:46:32','2014-11-27 20:27:42',30),
	(59,249,17,'2014-09-22 10:46:32','2014-11-27 20:25:11',31),
	(60,250,17,'2014-09-22 10:46:32','2014-11-27 20:24:25',35),
	(61,251,17,'2014-09-22 10:46:32','2014-11-27 20:24:25',36),
	(62,252,17,'2014-09-22 10:46:32','2014-11-27 20:27:39',24),
	(63,93,4,'2014-09-22 10:46:32','2014-11-27 20:33:54',1),
	(64,68,4,'2014-09-22 10:46:32','2014-11-27 20:33:57',2),
	(65,227,4,'2014-09-22 10:46:32','2014-11-27 20:33:57',3),
	(66,225,1,'2014-09-22 10:46:32','2014-11-27 20:04:52',5),
	(67,46,1,'2014-09-22 10:46:32','2014-11-27 20:04:43',1),
	(68,47,1,'2014-09-22 10:46:32','2014-11-27 20:04:47',2),
	(69,219,1,'2014-09-22 10:46:32','2014-11-27 20:04:50',3),
	(70,220,1,'2014-09-22 10:46:32','2014-11-27 20:04:52',4),
	(71,57,3,'2014-09-22 10:46:32','2014-11-27 20:34:22',1),
	(72,58,3,'2014-09-22 10:46:32','2014-11-27 20:34:25',2),
	(73,59,3,'2014-09-22 10:46:32','2014-11-27 20:34:25',3),
	(74,60,3,'2014-09-22 10:46:32','2014-11-27 20:34:22',4),
	(75,61,3,'2014-09-22 10:46:32','2014-11-27 20:34:22',5),
	(76,62,3,'2014-09-22 10:46:32','2014-11-27 20:34:22',6),
	(77,202,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',1),
	(78,212,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',14),
	(79,211,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',13),
	(80,208,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',12),
	(81,204,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',11),
	(83,63,5,'2014-09-22 10:46:32','2014-11-27 20:34:51',2),
	(84,203,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',10),
	(85,210,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',9),
	(86,95,5,'2014-09-22 10:46:32','2014-11-27 20:34:51',8),
	(87,70,5,'2014-09-22 10:46:32','2014-11-27 20:34:51',7),
	(88,72,5,'2014-09-22 10:46:32','2014-11-27 20:34:51',6),
	(89,214,5,'2014-09-22 10:46:32','2014-11-27 20:34:51',5),
	(90,71,5,'2014-09-22 10:46:32','2014-11-27 20:34:51',4),
	(91,69,5,'2014-09-22 10:46:32','2014-11-27 20:34:51',3),
	(92,86,5,'2014-09-22 10:46:32','2014-11-27 20:34:48',15),
	(93,209,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',2),
	(94,213,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',11),
	(95,218,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',10),
	(96,223,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',9),
	(97,224,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',8),
	(98,133,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',7),
	(99,138,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',6),
	(100,135,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',5),
	(101,134,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',4),
	(102,136,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',3),
	(103,137,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',1),
	(104,139,9,'2014-09-22 10:46:32','2014-11-27 20:35:13',12),
	(105,14,6,'2014-09-22 10:46:32','2014-11-27 20:21:35',1),
	(106,157,6,'2014-09-22 10:46:32','2014-11-27 20:20:34',7),
	(107,73,6,'2014-09-22 10:46:32','2014-11-27 20:19:37',11),
	(108,75,6,'2014-09-22 10:46:32','2014-11-27 20:20:34',9),
	(109,96,6,'2014-09-22 10:46:32','2014-11-27 20:20:34',8),
	(110,97,6,'2014-09-22 10:46:32','2014-11-27 20:21:35',6),
	(111,98,6,'2014-09-22 10:46:32','2014-11-27 20:21:35',2),
	(112,99,6,'2014-09-22 10:46:32','2014-11-27 20:21:35',3),
	(113,100,6,'2014-09-22 10:46:32','2014-11-27 20:21:35',5),
	(114,101,6,'2014-09-22 10:46:32','2014-11-27 20:20:34',10),
	(115,102,6,'2014-09-22 10:46:32','2014-11-27 20:21:35',4),
	(116,146,15,'2014-09-22 10:46:32','2014-11-27 20:36:23',1),
	(117,147,15,'2014-09-22 10:46:32','2014-11-27 20:36:26',4),
	(118,151,15,'2014-09-22 10:46:32','2014-11-27 20:36:26',3),
	(119,150,15,'2014-09-22 10:46:32','2014-11-27 20:36:26',2),
	(120,153,15,'2014-09-22 10:46:32','2014-11-27 20:36:23',5),
	(121,106,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',3),
	(122,111,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',12),
	(123,123,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',13),
	(124,124,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',14),
	(125,216,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',15),
	(126,117,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',16),
	(127,120,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',17),
	(128,116,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',18),
	(129,80,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',19),
	(130,118,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',11),
	(131,79,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',10),
	(132,113,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',1),
	(133,119,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',2),
	(134,112,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',4),
	(135,121,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',5),
	(136,125,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',6),
	(137,108,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',7),
	(138,81,7,'2014-09-22 10:46:32','2014-11-27 20:37:54',8),
	(139,82,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',9),
	(140,78,7,'2014-09-22 10:46:32','2014-11-27 20:37:55',20),
	(141,64,18,'2014-09-22 10:46:32','2014-11-27 20:42:46',1),
	(144,199,18,'2014-09-22 10:46:32','2014-11-27 20:42:46',2),
	(145,200,18,'2014-09-22 10:46:32','2014-11-27 20:42:46',3),
	(146,226,18,'2014-09-22 10:46:32','2014-11-27 20:42:46',4),
	(147,66,18,'2014-09-22 10:46:32','2014-11-27 20:42:46',6),
	(148,215,18,'2014-09-22 10:46:32','2014-11-27 20:42:46',5),
	(149,239,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',2),
	(150,238,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',10),
	(151,230,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',9),
	(152,231,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',8),
	(153,232,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',7),
	(154,233,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',6),
	(155,235,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',5),
	(156,234,16,'2014-09-22 10:46:32','2014-11-27 20:42:18',3),
	(157,236,16,'2014-09-22 10:46:32','2014-11-27 20:42:18',4),
	(158,240,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',1),
	(159,237,16,'2014-09-22 10:46:32','2014-11-27 20:37:15',11),
	(161,84,2,'2014-09-22 10:46:32','2014-11-27 20:19:05',16),
	(162,85,2,'2014-09-22 10:46:32','2014-11-27 20:05:05',18),
	(163,49,2,'2014-09-22 10:46:32','2014-11-27 20:19:05',15),
	(164,48,2,'2014-09-22 10:46:32','2014-11-27 20:19:05',14),
	(165,51,2,'2014-09-22 10:46:32','2014-11-27 20:19:05',17),
	(166,53,2,'2014-09-22 10:46:32','2014-11-27 20:05:16',13),
	(167,52,2,'2014-09-22 10:46:32','2014-11-27 20:05:16',12),
	(168,54,2,'2014-09-22 10:46:32','2014-11-27 20:05:16',11),
	(169,55,2,'2014-09-22 10:46:32','2014-11-27 20:05:09',10),
	(170,217,2,'2014-09-22 10:46:32','2014-11-27 20:05:09',9),
	(171,228,2,'2014-09-22 10:46:32','2014-11-27 20:19:02',7),
	(172,56,2,'2014-09-22 10:46:32','2014-11-27 20:19:02',8),
	(173,83,2,'2014-09-22 10:46:32','2014-11-27 20:05:09',6),
	(174,122,2,'2014-09-22 10:46:32','2014-11-27 20:18:59',4),
	(175,201,2,'2014-09-22 10:46:32','2014-11-27 20:18:59',3),
	(176,105,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',1),
	(177,107,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',3),
	(178,114,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',2),
	(179,115,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',4),
	(180,126,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',5),
	(181,110,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',6),
	(182,222,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',7),
	(183,109,11,'2014-09-22 10:46:32','2014-11-27 20:40:45',8),
	(184,127,8,'2014-09-22 10:46:32','2014-11-27 20:38:15',1),
	(185,128,8,'2014-09-22 10:46:32','2014-11-27 20:38:15',4),
	(186,129,8,'2014-09-22 10:46:32','2014-11-27 20:38:15',2),
	(187,130,8,'2014-09-22 10:46:32','2014-11-27 20:38:15',3),
	(188,131,8,'2014-09-22 10:46:32','2014-11-27 20:38:15',5),
	(189,132,8,'2014-09-22 10:46:32','2014-11-27 20:38:15',6),
	(190,198,8,'2014-09-22 10:46:32','2014-11-27 20:38:15',7),
	(191,88,10,'2014-09-22 10:46:32','2014-11-27 20:39:09',1),
	(192,87,10,'2014-09-22 10:46:32','2014-11-27 20:39:09',2),
	(193,89,10,'2014-09-22 10:46:32','2014-11-27 20:40:11',4),
	(194,229,10,'2014-09-22 10:46:32','2014-11-27 20:40:11',3),
	(195,205,10,'2014-09-22 10:46:32','2014-11-27 20:39:09',6),
	(196,206,10,'2014-09-22 10:46:32','2014-11-27 20:39:09',5),
	(197,16,13,'2014-09-22 10:46:32','2014-11-27 20:41:34',4),
	(198,18,13,'2014-09-22 10:46:32','2014-11-27 20:41:34',1),
	(199,20,13,'2014-09-22 10:46:32','2014-11-27 20:41:34',2),
	(200,21,13,'2014-09-22 10:46:32','2014-11-27 20:41:34',3),
	(201,22,13,'2014-09-22 10:46:32','2014-11-27 20:41:34',5),
	(202,23,13,'2014-09-22 10:46:32','2014-11-27 20:41:34',6),
	(203,24,13,'2014-09-22 10:46:32','2014-11-27 20:41:34',7),
	(204,142,14,'2014-09-22 10:46:32','2014-11-27 20:41:56',2),
	(205,154,14,'2014-09-22 10:46:32','2014-11-27 20:41:56',1),
	(206,141,14,'2014-09-22 10:46:32','2014-11-27 20:41:56',3),
	(207,143,14,'2014-09-22 10:46:32','2014-11-27 20:41:56',4),
	(208,182,14,'2014-09-22 10:46:32','2014-11-27 20:41:56',5),
	(229,11,3,'0000-00-00 00:00:00','2014-11-27 20:34:22',7),
	(230,65,2,'0000-00-00 00:00:00','2014-11-27 20:18:59',5),
	(231,67,2,'0000-00-00 00:00:00','2014-11-27 20:18:54',1),
	(232,167,12,'0000-00-00 00:00:00','2014-11-27 20:33:07',15),
	(234,207,2,'0000-00-00 00:00:00','2014-11-27 20:18:54',2),
	(239,277,17,'2014-11-04 17:25:26','2014-11-27 20:27:39',11),
	(242,3,12,'2014-11-05 10:10:34','2014-11-27 20:31:47',20),
	(276,273,19,'2014-12-01 18:11:56','2014-12-01 18:11:56',NULL);

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
  `order` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`, `order`)
VALUES
	(1,'Banners','2014-09-22 10:46:32','2014-11-18 22:23:54',20),
	(2,'Catalogues and Primers','2014-09-22 10:46:32','2014-10-21 08:47:51',18),
	(3,'Greyfriars','2014-09-22 10:46:32','2014-09-27 19:28:51',17),
	(4,'Roma','2014-09-22 10:46:32','2014-09-27 19:29:03',16),
	(5,'Thomas Bewick and Other Allegories','2014-09-22 10:46:32','2014-10-23 08:57:13',15),
	(6,'Gold Dust','2014-09-27 19:20:31','2014-10-20 11:10:57',14),
	(7,'Ornament','2014-09-27 19:22:47','2014-09-27 19:30:02',13),
	(8,'Starmaps and Follies','2014-09-27 19:30:21','2014-10-21 08:47:40',12),
	(9,'The World Turned Upside Down','2014-09-27 19:30:36','2014-10-21 08:48:08',11),
	(10,'Histories','2014-09-27 19:30:50','2014-09-27 19:30:50',10),
	(11,'Grids','2014-09-27 19:31:18','2014-10-21 08:48:19',9),
	(12,'Loops','2014-09-27 19:31:30','2014-10-21 08:48:26',8),
	(13,'Surface / Connections','2014-09-27 19:31:57','2014-10-23 09:05:07',7),
	(14,'Multi Panels','2014-09-27 19:32:07','2014-10-23 08:57:29',6),
	(15,'Islington Mill Gallery','2014-09-27 19:32:30','2014-10-21 08:53:07',5),
	(16,'Combinations','2014-09-27 19:32:39','2014-10-21 08:53:16',4),
	(17,'Current work','2014-09-27 19:32:54','2014-11-08 01:18:35',3),
	(18,'Printed Paintings','2014-10-21 08:24:35','2014-10-22 11:33:30',2),
	(19,'Curriculum Vitae','2014-11-07 18:04:45','2014-11-18 22:23:36',1);

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
	('2014_10_07_195550_create_users_table',4),
	('2014_10_09_192039_create_password_reminders_table',5),
	('2014_10_10_103224_create_work_group_link_table',5),
	('2014_10_11_200828_create_group_work_table',6),
	('2014_10_24_103708_create_texts_table',7),
	('2014_10_24_201840_create_group_text_table',8),
	('2014_11_05_125231_add_fields_to_works_table',9),
	('2014_11_10_103157_add_ordering_to_works',9),
	('2014_11_10_103640_add_ordering_to_texts',9),
	('2014_11_10_103728_add_ordering_to_groups',9),
	('2014_11_11_155656_add_constraints_to_works',10),
	('2014_11_12_090305_add_constraints_to_texts',10),
	('2014_11_25_172604_add_order_field_to_pivot_tables',10);

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

LOCK TABLES `password_reminders` WRITE;
/*!40000 ALTER TABLE `password_reminders` DISABLE KEYS */;

INSERT INTO `password_reminders` (`email`, `token`, `created_at`)
VALUES
	('duncan.smith@vuma.com','9e7642a4e46b82ca9a8c97b64146a3583c7e3871','2014-10-10 10:45:27');

/*!40000 ALTER TABLE `password_reminders` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'Painting, Sharon Hall, Fabian Peake','Alistair Payne','2005','','','','<p>This exhibition brings together new paintings by Fabian Peake and Sharon Hall. The artists have both decided on certain methods for the exhibition, which allow them to investigate ongoing concerns over the particular \'display\' of painting. This can be seen as a technique which is critical to the construction of the paintings themselves. As a technique it actualizes different method for interaction, where the autonomy of a single surface; the physical constraints that this brings to painting is shifted, subsequently enhancing the interconnectivity of the multiple panels. These different surfaces can be engaged, by the viewer, singularly but also across the constraints of the \'frame\' or edge. Frame as a device, or shape, would usually construct the particulars of surface and, at the same time distinguishes the plane from anything \'outside\'. In contrast the more \'theatrical\' installation enhances the connections between the different surfaces. This method highlights difference and subjects each surface, not only to differences evident within its own surface but also differences created in the connections between the different surfaces.  </p> <p> Sharon Hall’s new paintings exemplify a particular approach to the installation of painting and the questioning of the relationship between individual surfaces. The individual surfaces present multiple contradictions between ground and mark, form and the formless, order and chaos... </p> <p> It is not a self critical definition of painting but rather a mapping between different contradictory elements, emphasizing the dualistic approach, or a shadow play, which through the method of installation becomes more apparent. In essence the actual installation constructs an ‘in between’ where connections are made between and across the different paintings. </p>','2014-10-24 11:36:27','2014-11-05 10:52:44'),
	(2,'Surface Connections','David Ryan','2004','','','','<p> The idea behind this project was for each of the painters to explore their practice in relation to the particularities of the given space and also the other works in the show. It attempted to unfold different understandings of space and surface – as manufactured, projected, fractured etc., and might include the \'economy\' of the single bounded painting to ensembles and installational events. One of the five painters for each proposed venue takes charge of overall curatorial possibilities – including the relationship of the works, the general shape of the installation, as well as the invitation for a critic or practitioner regarding an accompanying written text etc. (for example, in the last realization, at the Holden Gallery in Manchester, Sharon Hall took on this curatorial role.) </p> <p> The exhibition explored various matrices of surface around abstraction, architecture, the body, intentionality and contingency.  It attempted to do this in a way which examined the relationship between work and space which was disruptive and interruptive (as opposed to any curatorially \'pure\' presentation.)  </p>','2014-10-24 11:41:42','2014-11-05 10:53:01'),
	(3,'Les Parapluies de Manchester','David Sweet','2001','Bonnington Gallery, Nottingham 2001','David Sweet, Exhibition catalogue 2001','2001','<p>The basic organising principle in the paintings of Sharon Hall is the grid. This is very clearly defined as an all-over colour charged lattice which mechanically fills the available area. The effect of the grid is to reinforce, even to the point of over emphasis, the finite planar character of painting itself, measuring out the full extension of the surface without remainder, to mark exactly the limits of the constructed pictorial field... to use a grid is to commit to abstraction and artifice, and set certain conditions which influence the other elements which the painting may contain, in particular those that come into conflict with the disciplined division of the canvas.</p> <p>In Hall\'s work the dissident component is a looping meandering which seems at first to have escaped the grid\'s influence entirely, to roam casually and unhindered across the surface. However though it emerges as an expressive agent, its progress improvised intuitively to follow the path of a rhizoid growth within a schematic system; it nevertheless registers a response to its context. Instead of being the grid\'s opposite it assumes something of a schematic character itself, becoming in places partly decorative, or ornamental, in the musical sense, as it is wrought into baroque arabesques and curlicues which intersperse the looser linear sweeps. </p>','2014-10-24 11:47:17','2014-11-05 10:53:14'),
	(4,'The Borrowed Image','Amanda Farr','1995','catalogue essay','catalogue essay','1995','<p> One can draw an analogy between Hall’s paintings and musical composition: she sees her use of visual fragments from another era as a form of transposition-a word which implies both a change of place or order, and the rendering of music in a different key. The images are captured from a bygone time and place, like broken refrains or phrases from a vast chorus of history .They are used in counterpoint, juxtaposed with the formal language of abstraction, to form new possibilities of composition.[…] </p> <p> As suggested in the title, we are confronted with different histories and passages through time; that of White\'s original plan, which represents various dramatic occurrences that took place over a number of days, and that of a particular moment in history marked by the folding of the map, thus accidentally repeating recorded time through the mirroring of the image. But Hall also marks her own place in history-her physical involvement with the work-through the field of rhythmic marks, a tempo beat literally marking time […]\'   </p>','2014-10-24 11:56:53','2014-11-05 10:53:31'),
	(5,'The Borrowed Image','Mark Durden','1995','Exhibition review, Sunderland Centre for Contemporary Art 1995','Art Monthly','June 1995','<p>Sharon Hall drags up our colonial past. Her paintings copy 400 year old watercolours made during Sir Walter Raleigh\'s expedition to the new world: picture which mapped the landscape, show fortified encampments and illustrate what were then such exotic and fantastic creatures as an alligator. Hall\'s copyings are in the form of fragmentary details which only partly fill her canvases; the rest is filled by an abstract surface made up of linear cross-hatched markings. A \'bad\' part of our history contributes to these beautiful paintings; her critique is edged with an evident aesthetic fascination with this historical material.</p>','2014-10-24 11:59:20','2014-11-05 10:53:48'),
	(6,'Union Street Gallery press release','David Ryan','1994','David Ryan, December 1994','Union Street Gallery press release','','<p>Sharon Hall\'s paintings remain difficult to categorise. On the one hand they explore a potential for narrative content through her use of imagery, while on the other, a deep rooted concern with purely optical and formal devices remains extremely important. These oppositions are set up in a variety of ways, sometimes in the one canvas or even related pieces within a series (the Roma series for instance where image and linear ground are separated out.) Such a dialogue appears to explore the \'forgetfulness\' of the modernist autonomous object, and the attempt to hold on to a possibility of retrieving some form of \'truth content\' from the distant past. Where this is located is within the array of images, always seemingly fragmented or inconspicuous, yet painted with the belief that something can be unlocked...</p>','2014-10-24 12:00:53','2014-11-05 10:54:02'),
	(7,'Union Street Gallery exhibition, Time Out','Tania Guha','1994','Review of Union Street Gallery exhibition, Time Out','Time Out','1994','<p>The canvases are painted in delicate concoctions of colour: lavender-blues, rose-pinks, and pea-greens, for instance. Paint is dragged across the surface vertically and horizontally, so that one is reminded of microscopic enlargements of woven silk. The twist lies in the spidery line drawings that float atop these striated backgrounds...</p>','2014-10-24 12:01:56','2014-11-06 20:21:14'),
	(8,'IMAGE CONTRA IMAGE','David Ryan','1993','Castlefield Gallery, catalogue essay','Castlefield Gallery, catalogue essay','1993','<p> It cannot be underestimated how important the confrontation with dominant aesthetic ideas can be for an artist during their formative years, and how these take root and inform their output long after superficial \'resemblances\' have vanished. In Sharon Hall\'s case, as with many (one is tempted to say most) artists of her generation, it was a response to what was then called \'New Image\' painting, as exemplified by European painters of then late 70\'s and early 80\'s. Unlike many of her contemporaries, she did not awake one morning to find herself transformed into a fully fledged expressionist painter of archetypal imagery. Hall\'s engagement with the problems raised during that period was much slower, thoughtful and intelligent. Now that we have the opportunity to see her recent paintings it is clear that many of the issues from this period still persist and have been doggedly refined into a critical consideration of how images can be used in painting, indeed, how they can be used in conjunction with their own opposition. </p> <p>  The imagery Hall has been concerned with over the last few years has encompassed a wide range of both chronology and subject matter (there is, however, a visual consistency which partly results from her choice of pre-photographic modes of reproduction as source material.) A mere listing might suffice here: texts and images from the letters and diaries of the \'49ers\', childrens primers and educational aids, \'the world turned upside down\' tradition of populist prints, various early colonialist maps and engravings, as well as astronomical and navigational charts. The list might make clear her interest in the images: they are all self consciously \'historical\', they create a sort of temporal distance between their original connotation and their current re-fabrication, they often reveal rhetorical purely ideological element, and, formally, their linearity enables a curious relationship to occur with the other oppositional elements in the painting, namely the seemingly autonomous systematic mark making that seems to unfold the \'time\' of picture making in conjunction with the \'recitation\' of the images.  </p>','2014-10-24 12:02:47','2014-11-05 10:54:33'),
	(9,'Castlefield Gallery catalogue essay','Sacha Craddock','1993','Castlefield Gallery catalogue essay','','1993','<p>...in the recent paintings it becomes obvious that Hall has shifted her method. Instead of imposing a whole outlined oneness of intention upon the canvas she builds up a further layering of possible evidence through her working method. Instead of dealing absolutely by answering a question that could never be posed through painting she approaches the country\'s imperial past through a fragmented accumulation of drawing. An alternately faltering and fast line hints at recognisable images. These can be attractive, decisive and unclear all at the same time. This faltering and questioning thought process has by necessity lead to the rejection of a display of false clarity of vision. In the same way that Gerhard Richter paints the blur in order to show how both the personal and photographic memory are ungraspable and unreliable, Hall dissects and crosses the surface with a build up of delicate delineation.</p> <p>The relation between the process of thought and the activity of drawing is particularly naked here. By laying a trail across the canvas she describes a conceptual journey. The solid ground of so many \'clear\' historical narratives has been replaced by an active involvment. The soil has been loosened and disrupted. New territories are explored.</p>','2014-10-24 12:03:27','2014-11-05 10:54:52'),
	(10,'Review of Castlefield exhibition, City Life','Sue Platt','1993','Review of Castlefield exhibition, City Life','City Life','1994','<p>Through the intensely delicate marks, lines and fragments of freehand initiated wood cut trails; she translates the images in related clean colours from all directions, across painstaking blinds of line. She makes you investigate the truths only hinted at in initial viewing. A gorgeous fact of these paintings is that they make you watch them further, as if you might find a plough in the stars... The stains and stitches of colour physically tighten your eye and brow, and you are constantly aware of the time involved in both making and emergence...</p>','2014-10-24 12:04:27','2014-11-06 20:21:49'),
	(11,'Review of Castlefield exhibition, The Guardian','Robert Clark','1994','Review of Castlefield exhibition, The Guardian','The Guardian','1994','<p>Sharon Hall\'s recent canvases are so odd and awkward I suspect they are much better than they at first appear. Although generally too airy to at all appeal to me, they nevertheless give me the kind of uncomfortable feelings that come from the viewing of truly adventurous work. In any case I\'ve not seen a show quite like this anywhere before, and that\'s got to be a good thing... The work\'s unrelieved surreal dizziness should be disturbing but its not; its more light headed like a mind tingle of intoxication...</p>','2014-10-24 12:05:16','2014-11-06 20:22:10'),
	(12,'Rebecca Hossack Gallery, catalogue essay','David Ryan','1990','Rebecca Hossack Gallery, catalogue essay','Rebecca Hossack Gallery, catalogue essay','1990','<p>The work included in the present exhibition can be seen as belonging to the following series in terms of their subject matter - works that draw on the iconography of the world turned upside down; a series that uses early educational material in the form of Catalogues and Primers; and a set of pieces which incorporate John White’s watercolours of one of the first British explorations of north America which are collectively titled Histories and Discoveries.</p> <p>Each of these series has in common the procedural strategy of combining appropriated imagery juxtaposed with a highly formalised processual surface. The resulting effect of this juxtaposition creates a dialectical play between different signifying systems which in turn generate shifting and ambiguous readings...</p> <p>The beauty of visual discourse is in its capacity to generate many interpretive levels, which in Halls case might embrace both the analytical and the sensual. The pictorial leaps of thought which her paintings invite create a kind of unsmooth clarity where both the archaeology of the past and the opticality of the present begin to inform the artist’s relation to history in new and exciting ways.</p>','2014-10-24 12:06:20','2014-11-05 10:55:12'),
	(13,'David Lillington review of Rebecca Hossack exhibition, Time Out, October 1990','David Lillington','1990','Review of Rebecca Hossack exhibition','Time Out','October 1990','<p> Sharon Hall won the Rome Award this year, and judging by her recent work, showing here, it was for sheer intelligence. Hall makes her viewers work hard. Her Reversible World IV has an image (haystack chases horse) purloined from Breughel, drawn in paint and superimposed on an image (wife beats man) from a sixteenth century German playing card. The wife-beats-man image is set sideways. The whole is extremely difficult to read clearly; its interesting enough however to inspire the effort...</p> <p>...Political issues are raised in her work, particularly that of the social position of women - but the ideas which communicate most are about the language of art. Hall speaks of presenting her images as \'signs\' open to new narrative readings. This isn\'t as esoteric as it sounds: in the paintings you are well aware of looking at an old visual language translated into a new one: sixteenth century alphabet pictures meet abstraction... </p>','2014-10-24 12:07:20','2014-11-05 10:55:55'),
	(14,'Rebecca Hossack Gallery exhibition review','Rose Jennings','1990','Rose Jennings, review of Rebecca Hossack exhibiton, City Limits, September','City Limits','September 1990','<p> These are extra ordinary paintings and an original take on the contemporary fixation with showing that context is all, that there’s no imagery or idiom that cant be mixed and matched to new and different effect. Throwing us back to a time when a common pictorial vernacular was still possible, the ideals of modernism feel renewed: while the reactionary medieval notion of social upset-women and animals rising up against their masters-throws a sneaky slant on our own apocalyptic fears […]  </p>','2014-10-24 12:08:04','2014-11-06 20:23:04'),
	(15,'Sharon Hall, Anna Miszewska, New Work','Stuart Bradshaw','1989','Ferens Gallery Hull, catalogue essay','Ferens Gallery Hull, catalogue essay','1989','<p>In Sharon Hall\'s recent work popular alternative imagery from the past is located within surfaces created from fields of horizontal lines reminiscent of those of minimalist painters such as Agnes Martin and Robert Ryman. The disjunctive effect of the juxtaposition of two such widely different idioms is lessened because the surfaces themselves are ambiguous. On the one hand, because of the nature of the image, they can be seen to allude to the texture of wood grain in wood block printing; on the other hand they appear to have been created from controlled, but simple autonomous mark making. This characteristic of imagery emerging out of or relating to, the procedures and practises of minimal art has been a dominant feature of some of the most interesting and widely known British sculpture of the 80\'s, the work of Tony Cragg, Bill Woodrow and David Mach for example, but it has hardly been a feature of painting of the same period... The subjects relate to the theme of \'the world turned upside down\' and again obliquely refer to the state of contemporary society. However these are not didactic works; the imagery is important but the paintings themselves are about the spaces, ambiguities and shifting readings that are generated when very different pictorial systems are juxtaposed.</p> ','2014-10-24 13:16:00','2014-11-05 10:57:54'),
	(16,'Recent Paintings, Todd Gallery','Kate Bush','1989','Review of Recent Paintings, Todd Gallery','Artscribe International','September 1989','<p>...single elements from diverse narratives stand frozen contiguous, spatial compartments, each replicating the formal vocabulary of the wood block (using horizontal hatching and reversals of light and dark.) Hall\'s paintings propose a narrative existing in space rather than time: non-linear and non-developmental. This spatialisation of a story can be seen to correspond to a structuralist model of language where the grid, like the sentence, can be extended ad-infinitum, and where meaning is continuously deferred through a system of shifting difference...</p>','2014-10-24 13:18:32','2014-11-05 10:59:11'),
	(17,'Sharon Hall, Chisenhale Gallery','Sharon Hall','1988','Chisenhale Gallery London, press release','Chisenhale Gallery London, press release','1988','<p>The works in this show are a sub-series of a larger project which is intended to cover the history of gold and the part it has played in the establishment of our present economic systems.</p> <p>The work I had produced up until this point had often made use of prime source material in the form of old engravings and popular prints and in trying to find a set of images to use for the gold series I stumbled across some colour reproductions in an old Time Life book of original watercolours made by the pioneers of the American Gold Rush in 1849. At this time I was also aware of a piece of music by the American contemporary composer, Christian Wolff, entitled <i>Star Dust Pieces</i>, which had also made use of vernacular source material in its construction and composition. Eventually, and partly in homage to Wolff\'s music, I entitled the whole series <i>Gold Dust Pieces</i>. Wolff\'s use of a grid structure to simultaneously present a complete but spatially fragmented image, together with its use of material which stood outside of mainstream high culture became one of the primary concerns of these works.</p>','2014-10-24 13:19:35','2014-11-05 11:00:16'),
	(18,'Loops','Sharon Hall','2003','Artist\'s statement','','','In 2003 I took the decision to remove the paintings from the confines of the imposed grid which I had begun to feel had exhausted its usefulness. The new paintings began to make a freer and more improvisatory use of the ornamental and appropriated arabesque flourishes I had hitherto used. The resulting work was seeking to redefine the idea of the autonomous and self referential simplicity of a singular line, transcribed Sol Lewitt like through a very direct and economically straightforward method whilst at the same time animating through an ergonomic relationship, my involvement in its facture.','2014-11-05 10:32:14','2014-11-10 21:20:52'),
	(19,'Grids','David Sweet','2002','Exhibition catalogue essay','','','…a looping, meandering line which seems at first to have escaped the grid’s influence entirely […] emerges as an expressive agent, its progress improvised intuitively to follow the path of a rhizoid growth within a schematic system […] becoming in places partly decorative or ornamental, in the musical sense, as it is wrought into baroque arabesques and curlicues which intersperse the loose linear sweeps. Instead of two irreconcilable forms, set in sterile opposition, the grid and line begin to interact as the work progresses.','2014-11-05 10:36:21','2014-11-05 10:36:21'),
	(20,'Ornament','David Ryan','1995','Exhibition notes','','1995','…a difficulty in terms of reading is accentuated with the work seemingly reflecting on its own objecthood. Recent paintings have begun to make use of a more formalised ornamental imagery - fragments from obsolete craft or architectural flourishes, the image reduced to its own abstraction.\'','2014-11-05 10:44:20','2014-11-05 10:44:20'),
	(21,'Starmaps and Follies','David Ryan','1993','Exhibition notes','','1993','To make her point, Hall is not satisfied with re-consuming contemporary media images, but rather, goes back to the root of the problem: the woodblock print, the mappings of the heavens and earth etc., yet this does not remain at the level of unmasking power-laden representations; the image is forced into its \'other\' rather than simply stripped of its power; almost as though the project of abstraction was being explored in negative.','2014-11-05 10:47:05','2014-11-05 10:47:05'),
	(22,'Printed Paintings','Sharon Hall','1992','Artists statement','','1992','This series of works grew out of an interest in early wood block printing techniques and crude forms of engraving. In these paintings I have literally transposed the physical process of intaglio engraving onto a wax primed surface. Some pieces actually use reverse intaglio where the image is gouged out of the surface and then revealed through its flooding with pigmented wax, and others apply an individually cut lino or wood block print which is stamped into and repeated across the whole surface of the painting (as with the Muybridge piece.)','2014-11-05 10:50:03','2014-11-05 10:50:03'),
	(23,'CV','Sharon Hall','2014','Curriculum Vitae','','','<h5>Biographical information</h5> <p>Born 1954, Darlington, County Durham, England</p>  <br/> <h5>Awards</h5> <p>2011 Manchester Metropolitan University Research Award</p> <p>2005/6 Manchester Metropolitan University Research Awards</p> <p>1997 Manchester Metropolitan University Research Award, Pompeii, Herculaneum, Naples</p> <p>1996 Visiting Critic, Braziers International Artists Workshop, Oxfordshire</p> <p>1990 Rome Award in Painting, The British School at Rome</p> <p>1989 Picker Lectureship, Kingston University</p> <p>1989 Greater London Arts Association Award</p> <p>1986 Greater London Arts Association Award</p> <p>1981 French Government Scholarship</p> <p>1981 Jeremy Cubitt Painting Prize</p> <p>1981 Sir James Knott Scholarship</p>  <br/> <h5>Corporate and Public Collections</h5> <p>Prudential Collection, New Jersey, USA</p> <p>Artsite, New York, USA</p> <p>Norton Rose, City of London</p>  <br/> <h5>Bibliography</h5> <p>2014 <i>Colour/Boundary</i> Gallery North, Newcastle upon Tyne. Catalogue essay by David Sweet</p> <p>2013 <i>Colour in Place</i> Palazzo del Podesta, Pescia, Italy. Catalogue essays by Stuart Bradshaw, David Ryan</p> <p>2009 <i>Transitions/Abstractions</i>, David Ryan, essay</p> <p>2006 <i>Transfer</i>, critical text, Bernice Donszelman, Jeremy Gilbert-Rolfe, David Ryan</p> <p>2005 <i>Painting, Fabian Peake, Sharon Hall</i>, Alistair Payne, catalogue essay, Islington Mill, Salford</p> <!--<p>2004 Bernice Donszelman, catalogue essay, <i>Surface Connections</i>, Holden Gallery, Manchester</p>--> <p>2001 <i>Les Parapluies de Manchester</i>, David Sweet, catalogue essay, Bonnington Gallery, Nottingham</p> <p>1995 Rose Jennings <i>Time Out</i>, review, June 1995</p> <p>1995 Mark Durden, <i>Art Monthly</i>, November 1995</p> <p>1995 <i>The Borrowed Image</i>, Amanda Farr, catalogue essay, Edinburgh City Centre Gallery</p> <p>1995 Sacha Craddock, <i>The Times</i>, review, May 1995</p> <p>1994 Tania Guha <i>Time Out</i>, review, February 1994</p> <p>1993 Robert Clark <i>The Guardian</i>, review, July 1993</p> <p>1993 Sue Platt<i> Manchester City Life</i>, review, June 1993</p> <p>1993 Sacha Craddock, David Ryan, catalogue essays, Castlefield Gallery, Manchester</p> <p>1991 Marina Engel, catalogue essay, British School at Rome Gallery</p> <p>1991 Adrian Searle, <i>Time Out</i>, review, December 1991</p> <p>1990 David Lillington <i>Time Out</i>, review, October 1990</p>  <p>1990 David Ryan, catalogue essay, Rebecca Hossack Gallery, London</p> <p>1990 Rose Jennings, <i>City Limits</i>, September 1990</p> <p>1989 Kate Bush, <i>Artscribe International</i>, February 1989</p> <p>1989 Stuart Bradshaw, catalogue essay, Ferens Gallery, Hull</p> <p>1988 Sarah Kent, <i>Time Out</i>, June 1988</p> <br/> <h5>Education</h5> <p>1979-81 Slade School of Fine Art, Higher Diploma in Fine Art</p> <p>1977-79 Lanchester (Coventry) Polytechnic, B.A Hons Fine Art</p> <p>1976-77 Brighton Polytechnic</p> <p>1974-76 Clarendon College, Nottingham</p>  <br/> <h5>Solo Exhibitions</h5> <!--<p>2006 <i>Surface Connections II</i>, Keith Talent Gallery London</p>--> <p>2013 Palazzo del Podesta, Pescia(PT), Italy</p> <p>1995 Union Street Gallery, London</p> <p>1993 Castlefield Gallery, Manchester</p> <p>1991 British School at Rome Gallery, Rome, Italy</p> <p>1990 Rebecca Hossack Gallery, London</p> <p>1990 <i>Artist of the Day</i>, Angela Flowers Gallery, London</p> <p>1989 Chisenhale Gallery, London (with Tim Allen)</p> <p>1989 Ferens Gallery, Hull (with Anna Miszewska)</p> <p>1989 Todd Gallery, London (with Claire Scanlon)</p>  <br/> <h5>Selected recent group exhibitions</h5> <p>2012 <i>Zombie Modernism</i>, Malgras|Naudet Gallery, Manchester</p> <p>2009 <i>Mini Meta</i>, Beardsmore Gallery, London</p> <p>2009 <i>Meta-Contemporary British Abstract Painting</i>, Anglia Ruskin University, Cambridge</p> <p>2009 <i>Conversations in Painting</i>, Chapman Gallery, Salford</p> <p>2007 <i>Grotto</i>, Gallery 1.1, London</p> <p>2006 <i>Transfer</i>, Keith Talent Gallery, London</p> <p>2005 <i>Painting, Fabian Peake, Sharon Hall</i>, Islington Mill Gallery, Salford</p> <p>2004 <i>Surface Connections</i>, Holden Gallery, Manchester</p> <p>2001 <i>Les Parapluies de Manchester</i>, Bonnington Gallery, Nottingham</p> <p>2000 <i>Chisenhale Artists</i>, Jack Dash Gallery, London</p> <p>1997 <i>Clot</i>, Clerkenwell Space, London</p> <p>1996-97 <i>The Borrowed Image</i>, Rochdale Art Gallery, Edinburgh City Centre Gallery, Sunderland Centre for Contemporary Art</p> <p>1991 <i>Face to Face</i>, Chisenhale Gallery, London</p> <p>1991 <i>Post Morality</i>, Kettles Yard Gallery, Cambridge</p> <p>1990 Anna Bornholt Gallery, London</p>','2014-11-07 18:08:46','2014-11-07 18:08:46');

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
	(1,'duncan','duncanssmith@gmail.com','$2y$10$8tb2NK4fRBJZxITRgqEJN.dMQS5ZxZ2X0u6JN9/HklXxqERo56U5O','cyKkqKoars3VrVhKi2J7jykPnph7sNNIACmibaziy7g37yf7LTT4aXlFwNW1','2014-10-09 08:09:27','2014-12-01 18:12:27'),
	(2,'george','hari@georgeson.com','$2y$10$hWWJeSEaTnVQPnTg5fh.MuE3OSGZ9MQ5S5fIL.L1B7wmGcVqlsZUu','cyvybPnd6QdNFTFnPBWNHa774q7QWSoNGX0rXtWnrnXlWbdOy06ZSBIJhjOG','2014-10-09 13:44:23','2014-11-04 09:54:52'),
	(3,'Paul','paul@mac.com','$2y$10$uAk7poGDwdFypQnxMRSY7.L8KNU.lXMBt0cvfx6U5FxqS/Vjmmnz.','WIT7Df6jqZv25LqGvSGKONRNOJp37a6M4CPAC8k9TdAUh9MXQZ3CbwxB5Avl','2014-10-09 13:49:54','2014-10-09 16:17:37'),
	(4,'John','john@beatle.com','$2y$10$ksWidWwiyITw6KQ1CCpZUe.iOH4CP9fiLI3QXb9eRvtU1JqLDGga.','65c030CflFI4S4QbpzDXL1Gj43DU3GAFU5nSzyYxDmg8zxzXUXQFl5KRmGI2','2014-10-09 16:18:04','2014-10-10 15:36:12'),
	(5,'ringo','duncan.smith@vuma.com','$2y$10$Q04fz.0x9IglHeOfMRJ/YuyUKd7jp/eo/A41VUojo/e.mXQNmVlpe','WyMbJEk67Hy7MLTwIiQyBQCoSAGBDnt2PrU45JPyEgSUlZjkNUpaT5KeJXyw','2014-10-10 10:44:18','2014-10-10 11:08:48');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table works
# ------------------------------------------------------------

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dimensions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_date` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;

INSERT INTO `works` (`id`, `title`, `reference`, `media`, `dimensions`, `work_date`, `created_at`, `updated_at`, `description`, `notes`)
VALUES
	(1,'UNKNOWN 1','0001','Oil on canvas','55 x 75 cm','1992','2014-09-22 10:46:32','2014-11-19 23:39:14',NULL,NULL),
	(2,'UNKNOWN','0002','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-11-05 16:15:49',NULL,NULL),
	(3,'Untitled','0003','Oil on canvas','65 x 65 cm','2003','2014-09-22 10:46:32','2014-11-05 16:15:54',NULL,NULL),
	(4,'Untitled','0004','Oil on canvas','65 x 65 cm','2003','2014-09-22 10:46:32','2014-11-05 16:15:59',NULL,NULL),
	(5,'UNKNOWN','0005','Oil on canvas','55 x 75 cm','1992','2014-09-22 10:46:32','2014-11-05 16:16:04',NULL,NULL),
	(8,'UNKNOWN','0008','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-11-05 16:16:30',NULL,NULL),
	(9,'UNKNOWN','0009','Oil on canvas','55 x 75 cm','1992','2014-09-22 10:46:32','2014-11-05 16:16:49',NULL,NULL),
	(10,'UNKNOWN','0010','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-11-05 16:16:57',NULL,NULL),
	(11,'Catalogue Of Follies','0011','Oil on canvas','152 x 183 cm','1989','2014-09-22 10:46:32','2014-11-05 16:16:39',NULL,'Private Collection UK'),
	(12,'UNKNOWN','0012','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-11-05 16:17:04',NULL,NULL),
	(13,'UNKNOWN','0013','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-11-05 16:17:23',NULL,NULL),
	(14,'Gold Dust','0014','Installation',NULL,'1987','2014-09-22 10:46:32','2014-11-05 16:17:32','Installation view','Chisenhale Gallery London'),
	(15,'UNKNOWN','0015','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(16,'Surface Connections','0016','Installation view',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:13:29','Untitled',NULL),
	(17,'UNKNOWN','0017','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(18,'Surface Connections','0018','Installation view',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:14:04','Untitled',NULL),
	(19,'UNKNOWN','0019','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(20,'Surface Connections','0020','Installation view',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:14:30','Untitled',NULL),
	(21,'Surface Connections','0021','Installation view',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:14:46','Untitled',NULL),
	(22,'Surface Connections','0022','Installation view',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:15:02','Untitled',NULL),
	(23,'Surface Connections','0023','Installation view',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:15:15','Untitled',NULL),
	(24,'Surface Connections','0024','Installation view',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:15:33','Untitled',NULL),
	(25,'Untitled','0025','Oil on linen','180 x 150 cm','2004','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(26,'Untitled','0026','Oil on canvas','40 x 30 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(27,'Untitled','0027','Oil on canvas','65 x 65 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(28,'Untitled','0028','Oil on canvas','40 x 30 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(29,'UNKNOWN','0029','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(30,'UNKNOWN','0030','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(31,'Untitled','0031','Oil on canvas','180 x 150 cm','2004','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(32,'Untitled','0032','Oil on canvas','40 x 30 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(33,'Untitled','0033','Oil on canvas','150 x 180 cm','2004','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(34,'Untitled','0034','Oil on canvas','40 x 30 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(35,'Untitled ','0035','Oil on canvas',NULL,'2004','2014-09-22 10:46:32','2014-11-05 16:18:20','installation view','Hyde Bank Mill'),
	(36,'UNKNOWN','0036','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(37,'Untitled','0037','Oil on canvas','40 x 30 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(38,'Untitled','0038','Oil on linen','90 x 90 cm','2004','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(39,'UNKNOWN','0039','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(40,'UNKNOWN','0040','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(41,'Untitled','0041','Oil on canvas','180 x 150 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(42,'UNKNOWN','0042','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(43,'Untitled','0043','Oil on canvas','90 x 60 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(44,'Untitled','0044','Oil on canvas','75 x 60 cm','2005','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(45,'Untitled','0045','Studio installation',NULL,'2003','2014-09-22 10:46:32','2014-11-05 16:19:18',NULL,NULL),
	(46,'Banner (Dockers Union)','0046','Oil on canvas','183 x 183 cm','1987','2014-09-22 10:46:32','2014-10-10 19:10:53',NULL,NULL),
	(47,'Banner (United Tin Plate Workers Society)','0047','Oil on canvas','183 x 250 cm','1986','2014-09-22 10:46:32','2014-10-10 19:09:42',NULL,NULL),
	(48,'Untitled','0048','Oil and acrylic on canvas','45 x 45 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(49,'Women\'s Work','0049','Oil and acrylic on canvas','120 x 120 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(50,'UNKNOWN','0050','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(51,'Untitled','0051','Oil and acrylic on canvas','45 x 55 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(52,'Untitled','0052','Oil and acrylic on canvas','55 x 55 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(53,'Untitled','0053','Oil and acrylic on canvas','55 x 55 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(54,'Catalogue III','0054','Oil and acrylic on canvas','45 x 60 cm','1989','2014-09-22 10:46:32','2014-11-05 16:19:45',NULL,'Prudential Collection, New Jersey USA'),
	(55,'Untitled','0055','Oil and acrylic on canvas','45 x 60 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(56,'Allegory - Study','0056','Oil and wax emulsion on canvas','60 x 60 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(57,'Greyfriars I','0057','Oil and acrylic','152 x 183 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(58,'Greyfriars II','0058','Oil and acrylic','153 x 183 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(59,'Greyfriars III (A Spectre is Haunting Europe)','0059','Oil and acrylic','153 x 183 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(60,'Greyfriars','0060','Installation view','45 x 65 cm','1989','2014-09-22 10:46:32','2014-11-05 16:20:23','Installation view','Woodlands Gallery, London'),
	(61,'Greyfriars','0061','Installation view',NULL,'1989','2014-09-22 10:46:32','2014-11-05 16:21:00','Installation view','Woodlands Gallery, London'),
	(62,'Greyfriars and Allegory of Deceit','0062','Installation view',NULL,'1989','2014-09-22 10:46:32','2014-11-05 16:21:42','Installation view','Woodlands Gallery, London'),
	(63,'Untitled','0063','Oil on canvas','45 x 45 cm','1987','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(64,'Muybridge','0064','Oil and wax emulsion on canvas','152 x 183 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(65,'Catalogue of Birds','0065','Oil and wax emulsion on canvas','152 x 183 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(66,'Catalogue of Follies II','0066','Oil and wax emulsion on canvas','45 x 45 cm','1990','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(67,'Untitled','0067','Oil and wax emulsion on canvas','152 x 183 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(68,'Roma II','0068','Oil and wax emulsion on canvas','150 x 300 cm','1991','2014-09-22 10:46:32','2014-11-05 16:22:12','Diptych',NULL),
	(69,'Frontispiece (Bewick)','0069','Oil and acrylic on canvas','152 x 183 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(70,'Pugilists','0070','Oil and acrylic on canvas','152 x 183 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(71,'Frontispiece II (Bewick)','0071','Oil and acrylic on canvas','152 x 183 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(72,'Fencers','0072','Oil and acrylic on canvas','152 x 183 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(73,'Panning For Gold (Hovey)','0073','Oil on canvas','150 x 90 cm','1987','2014-09-22 10:46:32','2014-11-05 16:22:42','Diptych',NULL),
	(74,'UNKNOWN','0074','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(75,'Diary (Hovey)','0075','Oil on canvas','150 x 90 cm','1987','2014-09-22 10:46:32','2014-11-05 16:23:04','Diptych',NULL),
	(76,'UNKNOWN','0076','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(77,'UNKNOWN','0077','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(78,'Untitled','0078','Oil on canvas','183 x 152 cm','1999','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(79,'Untitled','0079','Oil and wax emulsion on canvas','120 x 180 cm','1996','2014-09-22 10:46:32','2014-11-05 16:23:29','Diptych',NULL),
	(80,'Untitled','0080','Oil and wax emulsion on canvas','70 x 90 cm','1997','2014-09-22 10:46:32','2014-11-05 16:23:49','Diptych',NULL),
	(81,'Untitled','0081','Oil on canvas','183 x 152 cm','1998','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(82,'Untitled','0082','Oil and acrylic on canvas','183 x 152 cm','1998','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(83,'Allegory of Greed','0083','Oil and acrylic on canvas','80 x 80 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(84,'Catalogue (Fortuna)','0084','Oil and acrylic on canvas','152 x 183 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(85,'Catalogue V','0085','Oil and acrylic on canvas','153 x 183 cm','1992','2014-09-22 10:46:32','2014-11-05 16:24:13',NULL,'Prudential Collection, New Jersey USA'),
	(86,'Allegory of Deceit','0086','Oil on canvas','153 x 183 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(87,'Histories (Alligator)','0087','Oil on canvas','512 x 183 cm','1991','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(88,'Histories (John White)','0088','Oil and wax emulsion on canvas','152 x 183 cm','1990','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(89,'Histories III (John White)','0089','Oil on canvas','152 x 183 cm','1991','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(90,'UNKNOWN','0090','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(91,'UNKNOWN','0091','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(92,'UNKNOWN','0092','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(93,'Roma I','0093','Oil and wax emulsion on canvas','150 x 300 cm','1991','2014-09-22 10:46:32','2014-11-05 16:24:40','Diptych',NULL),
	(94,'UNKNOWN','0094','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(95,'Pugilists','0095','Oil and acrylic on canvas','152 x 183 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(96,'Crossing the North Platt River (Bruff)','0096','Oil on canvas','152 x 183 cm','1987','2014-09-22 10:46:32','2014-10-10 19:51:17',NULL,NULL),
	(97,'Sutter\'s Fort 1869 (Hovey)','0097','Oil on canvas','183 x 304 cm','1987','2014-09-22 10:46:32','2014-11-05 16:47:52','Diptych',NULL),
	(98,'Camp at Red Bluff Burr (Hovey)','0098','Oil on canvas','183 x 150 cm','1987','2014-09-22 10:46:32','2014-10-10 19:54:02',NULL,NULL),
	(99,'Oh Boys I\'ve Struck It Heavy!','0099','Oil on canvas','152 x 183 cm','1987','2014-09-22 10:46:32','2014-10-10 19:55:12',NULL,NULL),
	(100,'Perilous Descent (Bruff)','0100','Oil on canvas','152 x 183 cm','1987','2014-09-22 10:46:32','2014-10-10 19:56:12',NULL,NULL),
	(101,'Panning For Gold (Hovey)','0101','Oil on canvas','152 x 183 cm','1987','2014-09-22 10:46:32','2014-10-10 19:57:20',NULL,NULL),
	(102,'Those Evil Lookin\' Rattlesnake Mountains (Bruff)','0102','Oil on canvas, Diptych','152 x 183 cm','1987','2014-09-22 10:46:32','2014-10-10 19:58:44',NULL,NULL),
	(103,'UNKNOWN','0103','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(104,'UNKNOWN','0104','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(105,'Untitled','0105','Oil on canvas','220 x 200 cm','2000','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(106,'Fragment','0106','Oil and wax emulsion on canvas','183 x 152 cm','1995','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(107,'Its About That Time ','0107','Oil on canvas','210 x 240 cm','2001','2014-09-22 10:46:32','2014-11-05 16:48:21',NULL,'Private collection UK'),
	(108,'Untitled','0108','Oil on canvas','32 x 75 cm','1996','2014-09-22 10:46:32','2014-11-05 16:48:50','Diptych',NULL),
	(109,'Untitled','0109','Oil on canvas','75 x 60 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(110,'Untitled','0110','Oil on canvas','75 x 60 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(111,'Fragment','0111','Oil and wax emulsion on canvas','120 x 120 cm','1996','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(112,'Untitled','0112','Oil and acrylic on canvas','183 x 304 cm','1998','2014-09-22 10:46:32','2014-11-05 16:49:53','Diptych',NULL),
	(113,'Untitled','0113','Oil and wax emulsion on canvas','120 x 180 cm','1998','2014-09-22 10:46:32','2014-11-05 16:50:18','Diptych',NULL),
	(114,'Untitled','0114','Oil on canvas','150 x 210 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(115,'Untitled','0115','Oil on canvas','210 x 225 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(116,'Untitled, Diptych','0116','Oil on canvas','30 x 75 cm','1998','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(117,'Untitled, Diptych','0117','Oil on canvas','30 x 75 cm','1998','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(118,'Untitled, Diptych','0118','Oil and wax emulsion on canvas','120 x 180 cm','1999','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(119,'Untitled, Diptych','0119','Oil and wax emulsion on canvas','120 x 150 cm','1998','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(120,'Untitled, Diptych','0120','Oil on canvas','30 x 75 cm','1998','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(121,'Untitled, Diptych','0121','Oil on canvas','31 x 75 cm','1999','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(122,'Allegory of Deceit','0122','Oil and acrylic on canvas','181 x 181 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(123,'Fragment','0123','Oil and acrylic on canvas','152 x 183 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(124,'Ornament I','0124','Oil and acrylic on canvas','152 x 183 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(125,'Diptych','0125','Oil on canvas','32 x 75 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(126,'Untitled','0126','Oil on canvas','60 x 60 cm','2003','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(127,'Traces II','0127','Oil on canvas','183 x 152 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(128,'Fictions','0128','Oil on linen','183 x 168 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(129,'Untitled (Star Map)','0129','Oil on linen','183 x 168 cm','1993','2014-09-22 10:46:32','2014-11-05 16:49:19',NULL,' Norton Rose Collection, London'),
	(130,'Traces','0130','Oil on linen','183 x 168 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(131,'Untitled (Star Map)','0131','Oil on canvas','183 x 168 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(132,'Folly','0132','Oil on canvas','152 x 183 cm','1992','2014-09-22 10:46:32','2014-11-05 16:51:22',NULL,' Norton Rose Collection, London'),
	(133,'The Reversible World III','0133','Oil on canvas','183 x 304 cm','1989','2014-09-22 10:46:32','2014-11-05 16:53:13','Diptych',NULL),
	(134,'The Reversible World (Who Wears the Trousers?)','0134','Oil on canvas','152 x 366 cm','1990','2014-09-22 10:46:32','2014-11-05 16:52:05','Diptych',NULL),
	(135,'The Reversible World (Hay Chasing the Horse) ','0135','Oil on canvas','152 x 366 cm','1990','2014-09-22 10:46:32','2014-11-05 16:52:41','Diptych',NULL),
	(136,'Whichever Way I','0136','Oil on linen','150 x 150 cm','1990','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(137,'Whichever Way II','0137','Oil on linen','150 x 150 cm','1990','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(138,'We Three Monkeys','0138','Oil and acrylic on canvas','183 x 304 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(139,'Whichever Way III','0139','Oil on linen','150 x 150 cm','1990','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(140,'UNKNOWN','0140','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(141,'Untitled','0141','Oil on linen','240 x 90 cm','2005','2014-09-22 10:46:32','2014-11-05 16:53:43','Three installed panels',NULL),
	(142,'Diamond','0142','Oil and wax on linen','35 x 45 cm','2005','2014-09-22 10:46:32','2014-10-10 20:09:26',NULL,NULL),
	(143,'Untitled','0143','Oil on canvas',NULL,'2005','2014-09-22 10:46:32','2014-11-05 16:54:17','Studio installation',NULL),
	(144,'UNKNOWN','0144','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(145,'UNKNOWN','0145','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(146,'Untitled','0146','Installation view, Islington Mill Gallery',NULL,'2005','2014-09-22 10:46:32','2014-10-10 19:35:46',NULL,NULL),
	(147,'Untitled','0147','Installation view, Islington Mill Gallery',NULL,'2005','2014-09-22 10:46:32','2014-10-10 19:38:06',NULL,NULL),
	(148,'UNKNOWN','0148','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(149,'UNKNOWN','0149','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(150,'Untitled','0150','Installation view, Islington Mill Gallery',NULL,'2005','2014-09-22 10:46:32','2014-10-10 19:39:38',NULL,NULL),
	(151,'Untitled','0151','Installation view, Islington Mill Gallery',NULL,'2005','2014-09-22 10:46:32','2014-10-10 19:40:45',NULL,NULL),
	(152,'UNKNOWN','0152','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(153,'Untitled ','0153','Islington Mill Gallery, installation view',NULL,'2005','2014-09-22 10:46:32','2014-10-10 19:42:02',NULL,NULL),
	(154,'Untitled','0154','Oil and wax on canvas ','30 x 150 cm','2005','2014-09-22 10:46:32','2014-11-05 16:54:48','Five installed panels',NULL),
	(155,'UNKNOWN','0155','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(156,'UNKNOWN','0156','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(157,'Installation view ','0157','Installation view',NULL,'1987','2014-09-22 10:46:32','2014-11-05 16:55:28','Chisenhale Gallery London',NULL),
	(158,'Untitled','0158','Oil and wax on canvas','60 x 45 cm','2004','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(159,'Untitled','0159','Oil and wax on canvas','60 x 45 cm','2004','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(160,'Untitled','0160','Oil and wax on canvas','60 x 45 cm','2004','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(161,'UNKNOWN','0161','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(162,'UNKNOWN','0162','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(163,'UNKNOWN','0163','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(164,'UNKNOWN','0164','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(165,'UNKNOWN','0165','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(166,'UNKNOWN','0166','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(167,'UNKNOWN','0167','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(168,'UNKNOWN','0168','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(169,'UNKNOWN','0169','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(170,'UNKNOWN','0170','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(171,'UNKNOWN','0171','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(172,'UNKNOWN','0172','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(173,'UNKNOWN','0173','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(174,'UNKNOWN','0174','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(175,'UNKNOWN','0175','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(176,'UNKNOWN','0176','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(177,'UNKNOWN','0177','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(178,'UNKNOWN','0178','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(179,'UNKNOWN','0179','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(180,'UNKNOWN','0180','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(181,'UNKNOWN','0181','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(182,'Studio at Islington Mill','0182','Oil on canvas',NULL,'2005','2014-09-22 10:46:32','2014-11-05 16:56:09','Studio installation',NULL),
	(183,'UNKNOWN','0183','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(184,'UNKNOWN','0184','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(185,'UNKNOWN','0185','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(186,'UNKNOWN','0186','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(187,'UNKNOWN','0187','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(188,'UNKNOWN','0188','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(189,'UNKNOWN','0189','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(190,'UNKNOWN','0190','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(191,'UNKNOWN','0191','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(192,'UNKNOWN','0192','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(193,'UNKNOWN','0193','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(194,'UNKNOWN','0194','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(195,'UNKNOWN','0195','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(196,'UNKNOWN','0196','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(197,'UNKNOWN','0197','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(198,'Starmap','0198','Oil and wax emulsion on canvas','121 x 91 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(199,'Starmap','0199','Oil and wax emulsion on canvas','152 x 183 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(200,'Starmap','0200','Oil and wax emulsion on canvas','152 x 183 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(201,'Allegory of Desire','0201','Oil and acrylic on canvas','181 x 181 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(202,'Exotics','0202','Oil on canvas','210 x 240 cm','1987','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(203,'Untitled','0203','Oil on canvas','30 x 45 cm','1987','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(204,'Untitled','0204','Mixed media on canvas','30 x 40 cm','1987','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(205,'Folly: Patagonian Men','0205','Oil on canvas','122 x 122 cm','1994','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(206,'Man O\'War','0206','Oil and wax emulsion on canvas','122 x 122 cm','1994','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(207,'Untitled','0207','Mixed media on canvas','30 x 40 cm','1987','2014-09-22 10:46:32','2014-11-05 16:59:36','Private Collection, UK',NULL),
	(208,'Untitled','0208','Mixed media on canvas','30 x 40 cm','1992','2014-09-22 10:46:32','2014-11-05 17:00:02','Private Collection, UK',NULL),
	(209,'UNKNOWN','0209','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(210,'Beehive, Private Collection, UK','0210','Oil on canvas','45 x 45 cm','1987','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(211,'Ladies','0211','Oil on canvas','210 x 240 cm','1987','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(212,'Untitled','0212','Oil on canvas','210 x 240 cm','1987','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(213,'Untitled','0213','Oil on canvas','60 x 45 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(214,'Frontispiece (Bewick)','0214','Oil on canvas','153 x 183 cm','1988','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(215,'Catalogue of Follies II','0215','Oil and wax emulsion on canvas','45 x 45 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(216,'Ornament III','0216','Oil on canvas','175 x 183 cm','1993','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(217,'Untitled','0217','Oil on canvas','60 x 60 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(218,'Untitled','0218','Oil on canvas','152 x 183 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(219,'Untitled (The Sinking of the Titanic)','0219','Mixed media on unstretched canvas','200 x 200 cm','1987','2014-09-22 10:46:32','2014-10-10 19:14:12',NULL,NULL),
	(220,'Untitled #2 (The Sinking of the Titanic)','0220','Mixed media on unstretched canvas','200 x 200 cm','1987','2014-09-22 10:46:32','2014-10-10 19:15:27',NULL,NULL),
	(221,'UNKNOWN','0221','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(222,'UNKNOWN','0222','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(223,'Untitled','0223','Oil on canvas','152 x 183 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(224,'Untitled','0224','Oil on canvas','152 x 183 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(225,'The Artist in her studio with Banner','0225','Mixed media on unstretched canvas','200 x 200 cm ','1988','2014-09-22 10:46:32','2014-11-05 17:00:54',NULL,'The Artist in her studio with Banner, Chisenhale Studios  London'),
	(226,'Starmap','0226','Oil and wax emulsion on canvas','152 x 183 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(227,'Untitled','0227','Oil and wax emulsion on canvas','85 x 85 cm','1991','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(228,'Untitled','0228','Oil on canvas','45 x 60 cm','1989','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(229,'The Pyne Frute (John White)','0229','Oil and wax emulsion on canvas','122 x 122 cm','1990','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(230,'Untitled','0230','Oil on canvas','45 x 50 cm','2006','2014-09-22 10:46:32','2014-10-10 19:21:18',NULL,NULL),
	(231,'Untitled','0231','Oil on canvas','45 x 45 cm','2006','2014-09-22 10:46:32','2014-10-10 19:22:14',NULL,NULL),
	(232,'Untitled','0232','Oil on linen','45 x 45 cm','2006','2014-09-22 10:46:32','2014-10-10 19:23:38',NULL,NULL),
	(233,'Untitled','0233','Oil on linen','60 x 60 cm','2006','2014-09-22 10:46:32','2014-10-10 19:24:34',NULL,NULL),
	(234,'Diptych #2','0234','Oil on canvas','50 x 90 cm','2006','2014-09-22 10:46:32','2014-10-10 19:28:53',NULL,NULL),
	(235,'Diptych #1','0235','Oil on canvas','50 x 90 cm','2006','2014-09-22 10:46:32','2014-10-10 19:28:34',NULL,NULL),
	(236,'Stacked Paintings','0236','Oil on linen','90 x 225 cm','2006','2014-09-22 10:46:32','2014-10-10 19:29:50',NULL,NULL),
	(237,'Diptych #3','0237','Oil on linen','150 x 270 cm','2006','2014-09-22 10:46:32','2014-10-10 19:31:53',NULL,NULL),
	(238,'Untitled','0238','Oil and wax on canvas','60 x 30 cm','2006','2014-09-22 10:46:32','2014-10-10 19:20:05',NULL,NULL),
	(239,'Untitled','0239','Oil on canvas','60 x 60 cm','2005','2014-09-22 10:46:32','2014-10-10 19:18:48',NULL,NULL),
	(240,'Untitled','0240','Oil on linen','120 x 145 cm','2006','2014-09-22 10:46:32','2014-10-10 19:30:45',NULL,NULL),
	(241,'Untitled ','0241','Oil on cotton duck ','70 x 80 cm','2009','2014-09-22 10:46:32','2014-10-10 18:51:02',NULL,NULL),
	(242,'Untitled ','0242','Oil on cotton duck','70 x 80 cm','2009','2014-09-22 10:46:32','2014-10-10 18:51:57',NULL,NULL),
	(243,'Untitled ','0243','Oil on cotton duck','75 x 100 cm','2010','2014-09-22 10:46:32','2014-10-10 18:53:02',NULL,NULL),
	(244,'Untitled (Private collection UK)','0244','Oil on linen ','75 x 100 cm','2009','2014-09-22 10:46:32','2014-10-10 18:54:27',NULL,NULL),
	(245,'Untitled (Fan)','0245','Oil on linen ','75 x 100 cm ','2010','2014-09-22 10:46:32','2014-10-10 19:01:59',NULL,NULL),
	(246,'Untitled','0246','Oil on linen ','75 x 100 cm','2010','2014-09-22 10:46:32','2014-10-10 19:02:47',NULL,NULL),
	(247,'Untitled (Corner)','0247','Oil on linen','75 x 100 cm ','2010','2014-09-22 10:46:32','2014-10-10 18:58:48',NULL,NULL),
	(248,'Untitled (Pyramid)','0248','Oil on linen ','90 x 90 cm','2010','2014-09-22 10:46:32','2014-10-10 19:01:02',NULL,NULL),
	(249,'Tondo','0249','Oil on linen','60 cm diameter ','2010','2014-09-22 10:46:32','2014-11-05 16:58:35',NULL,'Private collection Italy'),
	(250,'Diptych (Window) ','0250','Oil on linen ','152 x 240 cm','2009','2014-09-22 10:46:32','2014-10-10 18:56:57',NULL,NULL),
	(251,'Diptych (Wall)','0251','Oil on linen','152 x 240 cm ','2009','2014-09-22 10:46:32','2014-10-10 18:59:51',NULL,NULL),
	(252,'Studio','0252','n/a',NULL,'2011','2014-09-22 10:46:32','2014-10-10 18:55:33',NULL,NULL),
	(253,'Not Titled (Orange Diagonals)','0253','Oil on linen ','80 x 100 cm','2011','2014-09-22 10:46:32','2014-10-10 18:37:03',NULL,NULL),
	(254,'Not Titled (Yellow Diagonals) ','0254','Oil on linen ','80 x 100 cm','2011','2014-09-22 10:46:32','2014-10-10 18:38:07',NULL,NULL),
	(255,'Diptych with Zig Zags','0255','Oil on canvas','180 x 90 cm','2011','2014-09-22 10:46:32','2014-10-10 18:48:05',NULL,NULL),
	(256,'Installed paintings','0256','Oil on canvas',NULL,'2011','2014-09-22 10:46:32','2014-10-10 18:49:21',NULL,NULL),
	(257,'Not Titled (Diagonals in Dark Bands) ','0257','Oil on linen ','90 x 90 cm','2011','2014-09-22 10:46:32','2014-10-10 18:39:10',NULL,NULL),
	(258,'Not Titled (Diagonals in Yellow Bands) ','0258','Oil on linen ','90 x 90 cm','2011','2014-09-22 10:46:32','2014-10-10 18:40:02',NULL,NULL),
	(259,'UNKNOWN','0259','Oil on canvas','45 x 65 cm','1992','2014-09-22 10:46:32','2014-09-22 10:46:32',NULL,NULL),
	(260,'Installed paintings','0260','Oil on canvas',NULL,'2011','2014-09-22 10:46:32','2014-10-10 18:44:52',NULL,NULL),
	(261,'Installed paintings','0261','Oil on canvas',NULL,'2011','2014-09-22 10:46:32','2014-10-10 18:46:36',NULL,NULL),
	(262,'Installed paintings','0262','Oil on canvas',NULL,'2011','2014-09-22 10:46:32','2014-10-10 18:45:52',NULL,NULL),
	(263,'Not Titled (Yellow Tondo)  ','0263','Oil on cotton duck ','35 cm diameter','2011','2014-09-22 10:46:32','2014-10-10 18:43:43',NULL,NULL),
	(264,'Not Titled (Tondo with Linen)  ','0264','Oil on linen ','60 cm diameter','2011','2014-09-22 10:46:32','2014-10-10 18:42:24',NULL,NULL),
	(265,'Not Titled (Red Tondo)  ','0265','Oil on linen ','20 cm diameter','2011','2014-09-22 10:46:32','2014-10-10 17:30:22',NULL,NULL),
	(266,'Green and Orange Bands (Homage to G.M.) ','0266','Oil on linen ','120 x 152 cm 2011/12','2012','2014-09-22 10:46:32','2014-10-10 17:29:13',NULL,NULL),
	(267,'Solvay bands','0267','Oil on canvas','120 x 152 cm','2012','2014-09-22 10:46:32','2014-10-10 17:26:34',NULL,NULL),
	(268,'Not Titled (Three Pyramids)','0268','Oil on linen ','130 x 148 cm','2012','2014-09-22 10:46:32','2014-10-10 17:27:33',NULL,NULL),
	(269,'Not Titled (Tondo with Greys)','0269','Oil on linen','35 cm diameter','2013','2014-09-22 10:46:32','2014-10-10 17:24:50',NULL,NULL),
	(270,'Not Titled (Diagonals with Linen) ','0270','Oil on linen ','50 x 60 cm','2013','2014-09-22 10:46:32','2014-10-10 17:23:58',NULL,NULL),
	(271,'Not titled (Fan with pink)','0271','Oil on linen','70 x 100cm','2013','2014-09-22 10:46:32','2014-10-10 17:23:19',NULL,NULL),
	(272,'Colour in Place (Colore nei Luoghi) ','0272','Installation',NULL,'2012','2014-09-22 10:46:32','2014-11-05 16:56:55','installation at Palazzo del Podesta, Pescia, Italy May - June 2013',NULL),
	(273,'Colour in Place (Colore nei Luoghi) ','0273','Installation',NULL,'2012','2014-09-22 10:46:32','2014-11-05 16:57:21','installation at Palazzo del Podesta, Pescia, Italy May - June 2013',NULL),
	(274,'Colour in Place (Colore nei Luoghi) ','0274','Installation',NULL,'2012','2014-09-22 10:46:32','2014-11-05 16:57:42','installation at Palazzo del Podesta, Pescia, Italy May - June 2013',NULL),
	(275,'Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','0275','Installation',NULL,'2012','2014-09-22 10:46:32','2014-10-10 17:02:51',NULL,NULL),
	(276,'Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','0276','Installation',NULL,'2013','2014-09-22 10:46:32','2014-10-10 17:01:20',NULL,NULL),
	(277,'Colour in Place (Colore nei Luoghi) installation at Palazzo del Podesta, Pescia, Italy May - June 2013','0277','Installation',NULL,'2012','2014-09-22 10:46:32','2014-10-10 17:00:09',NULL,NULL);

/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
