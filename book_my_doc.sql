/*
SQLyog - Free MySQL GUI v5.12
Host - 5.5.30 : Database - book_my_doc
*********************************************************************
Server version : 5.5.30
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `book_my_doc`;

USE `book_my_doc`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `A_PASSWORD` varchar(100) NOT NULL,
  `A_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`ID`,`A_PASSWORD`,`A_NAME`) values (10000,'password','10000');

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PATIENT_ID` int(11) NOT NULL,
  `DOCTOR_ID` int(11) NOT NULL,
  `A_DATE` date DEFAULT NULL,
  `A_SLOT` varchar(100) DEFAULT NULL,
  `A_FEEDBACK` varchar(100) DEFAULT NULL,
  `A_PRESCRIPTION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `appointment` */

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `DAYS` varchar(100) DEFAULT NULL,
  `SLOT1` varchar(100) DEFAULT NULL,
  `SLOT2` varchar(100) DEFAULT NULL,
  `SLOT3` varchar(100) DEFAULT NULL,
  `SLOT4` varchar(100) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10043 DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert into `doctor` (`ID`,`PASSWORD`,`NAME`,`type`,`DAYS`,`SLOT1`,`SLOT2`,`SLOT3`,`SLOT4`,`pin`,`age`) values (5927,'12345','D.PQRS','Dermatologist',NULL,NULL,NULL,NULL,NULL,209,34),(9073,'password','Dr1','Dentist',NULL,NULL,NULL,NULL,NULL,9466,30),(10000,'password','doctor1','dentist','Monday','','','','',11000,25),(10021,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2358,NULL),(10038,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7563,NULL),(10042,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6829,NULL);

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_NAME` varchar(100) NOT NULL,
  `P_AGE` int(3) NOT NULL,
  `P_PASSWORD` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19003 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert into `patient` (`ID`,`P_NAME`,`P_AGE`,`P_PASSWORD`) values (10600,'NewPatient',20,'123'),(10737,'Patient200',46,'redhat'),(12100,'NewPatient',20,'password'),(12132,'p1345',14,'12345'),(12229,'patientNew',20,'password'),(12551,'Patient 23',45,'123'),(12649,'Patient121',32,'redhat'),(13756,'NewPatient',20,'password'),(19002,'NewPatient',20,'password');
