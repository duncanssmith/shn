# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.15)
# Database: shn
# Generation Time: 2014-10-11 19:55:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
