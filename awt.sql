/*
SQLyog Community v9.10 
MySQL - 5.0.67-community-nt : Database - awt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`awt` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `awt`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `DepartmentID` int(11) default NULL,
  `DepartmentName` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`DepartmentID`,`DepartmentName`) values (1,'BBA'),(2,'BSCS'),(3,'HR'),(4,'Board of Members');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL auto_increment,
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) default NULL,
  `LastName` varchar(50) default NULL,
  `Gender` varchar(50) default NULL,
  `DepartmentID` int(11) default NULL,
  `Designation` varchar(20) default NULL,
  `WorkingSince` datetime default NULL,
  `SalaryPackage` int(11) default NULL,
  `Address` varchar(50) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `ContactNumber` varchar(20) default NULL,
  `EmergencyContactNo` int(11) default NULL,
  `EducationalHistory` varchar(50) default NULL,
  `Pastexperience` varchar(50) default NULL,
  PRIMARY KEY  (`ID`,`EmployeeID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`ID`,`EmployeeID`,`FirstName`,`LastName`,`Gender`,`DepartmentID`,`Designation`,`WorkingSince`,`SalaryPackage`,`Address`,`EmailAddress`,`ContactNumber`,`EmergencyContactNo`,`EducationalHistory`,`Pastexperience`) values (1,1,'kalim','rindh','Male',3,'Teacher','2015-10-12 00:00:00',200000,'phase 2','kalim@gmail.com','0900 78601',2147483647,'PHD','Student'),(2,2,'Gresh','Kumar','Male',2,'Dean','2017-10-02 00:00:00',1500,'asd','asd','03314444516',123121231,'Intermediate','Student'),(3,3,'Kantash','Kumar','Male',3,'Guard','2017-05-01 00:00:00',1250000,'Szabist','asdas@asdads.com','90078601',NULL,NULL,NULL),(5,4,'Noor','Ali','Male',2,'Sweeper','2017-05-02 00:00:00',123456,'Asdasdas','asdasdads','0900 78601',NULL,NULL,NULL),(7,7,'Naveen','Chawla','Male',4,'Member','2017-05-15 00:00:00',230000,'teen talwar','naveen@gmail.com','03331525455',NULL,NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `ID` int(11) NOT NULL auto_increment,
  `UserID` int(11) NOT NULL,
  `Password` varchar(50) default NULL,
  `Email` varchar(50) default NULL,
  PRIMARY KEY  (`ID`,`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`ID`,`UserID`,`Password`,`Email`) values (1,1412176,'abc.123','abc@gmail.com'),(2,1412188,'abc.456','abc@gmail.com'),(3,1412168,'abc.123','gresh@gmail.com'),(4,1412220,'test','asdasd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
