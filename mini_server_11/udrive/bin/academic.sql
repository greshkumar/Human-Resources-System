/*
SQLyog Community v11.31 (64 bit)
MySQL - 5.0.67-community-nt : Database - academic
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`academic` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `academic`;

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `regno` int(11) NOT NULL,
  `studentname` varchar(60) NOT NULL,
  PRIMARY KEY  (`regno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`regno`,`studentname`) values (1,'Elizabeth'),(2,'Catherine'),(3,'Thomas'),(4,'Jean Phili'),(5,'Na Anna'),(6,'John'),(7,'Alexander'),(8,'Michael'),(9,'Daniel'),(10,'Antonio'),(11,'Carlos'),(12,'Jonas'),(13,'Peter'),(14,'Helena'),(15,'Christina'),(16,'Soo Jung'),(17,'George'),(18,'Run'),(19,'Andre'),(20,'Sven'),(21,'Martin'),(22,'Francisco'),(23,'Amritansh'),(24,'Luciana'),(25,'Jessica'),(26,'Bernard'),(27,'Karen'),(28,'Roland'),(29,'Ming-Yang');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
