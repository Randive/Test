/*
SQLyog - Free MySQL GUI v5.12
Host - 5.5.30 : Database - hybridit
*********************************************************************
Server version : 5.5.30
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `hybridit`;

USE `hybridit`;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `uname` varchar(30) DEFAULT NULL,
  `uemail` varchar(30) DEFAULT NULL,
  `ucompany` varchar(30) DEFAULT NULL,
  `ufeedback` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
