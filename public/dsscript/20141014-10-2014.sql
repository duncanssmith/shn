# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.15)
# Database: shn
# Generation Time: 2014-10-14 18:54:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table group_work
# ------------------------------------------------------------

LOCK TABLES `group_work` WRITE;
/*!40000 ALTER TABLE `group_work` DISABLE KEYS */;

INSERT INTO `group_work` (`id`, `work_id`, `group_id`, `created_at`, `updated_at`)
VALUES
	(1,67,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(2,65,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(3,167,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(4,207,1,'2014-09-22 10:46:32','2014-09-22 10:46:32'),
	(5,267,1,'2014-09-22 10:46:32','2014-09-22 10:46:32');

/*!40000 ALTER TABLE `group_work` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
