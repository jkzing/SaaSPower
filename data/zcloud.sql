-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: zcloud
-- ------------------------------------------------------
-- Server version	5.6.11

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `CourseId` int(11) NOT NULL AUTO_INCREMENT,
  `RegUserId` int(11) DEFAULT NULL,
  `CourseName` varchar(50) NOT NULL,
  `CourseDesc` longtext,
  `CourseType` varchar(5) NOT NULL,
  `CourseOwnName` varchar(50) DEFAULT NULL,
  `CourseOrgName` varchar(100) DEFAULT NULL,
  `RegTime` datetime DEFAULT NULL,
  `IsActive` varchar(2) DEFAULT '',
  PRIMARY KEY (`CourseId`),
  KEY `RegUserId` (`RegUserId`) USING BTREE,
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`RegUserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (7,NULL,'DB2 for z/OS','about mainframe','ZOS','GaoZhen','tongji','1899-12-29 00:00:00','No'),(8,NULL,'cics','dessc ','CICS','Wangmin','tongji','1899-12-29 00:00:00','No');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `setRegTime` BEFORE INSERT ON `course` FOR EACH ROW begin set NEW.RegTime = Now();
set NEW.IsActive='No';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `course_file`
--

DROP TABLE IF EXISTS `course_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_file` (
  `FileId` int(11) NOT NULL AUTO_INCREMENT,
  `CourseId` int(11) DEFAULT NULL,
  `RegUserId` int(11) DEFAULT NULL,
  `Type` varchar(10) NOT NULL DEFAULT '',
  `FileName` varchar(50) NOT NULL,
  `FileDesc` varchar(255) DEFAULT NULL,
  `RegTime` datetime NOT NULL,
  `Size` varchar(20) DEFAULT NULL,
  `DownloadTimes` int(11) DEFAULT NULL,
  `WithAnswer` varchar(2) DEFAULT NULL,
  `Path` varchar(100) NOT NULL,
  `IsActive` varchar(2) NOT NULL,
  PRIMARY KEY (`FileId`),
  KEY `CourseId` (`CourseId`) USING BTREE,
  KEY `RegUserId` (`RegUserId`) USING BTREE,
  CONSTRAINT `course_file_ibfk_1` FOREIGN KEY (`RegUserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `course_file_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_file`
--

LOCK TABLES `course_file` WRITE;
/*!40000 ALTER TABLE `course_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lab`
--

DROP TABLE IF EXISTS `course_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_lab` (
  `LabId` int(11) NOT NULL AUTO_INCREMENT,
  `CourseId` int(11) NOT NULL,
  `LabTitle` varchar(100) NOT NULL,
  `Comments` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`LabId`),
  KEY `CourseId` (`CourseId`) USING BTREE,
  CONSTRAINT `course_lab_ibfk_1` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lab`
--

LOCK TABLES `course_lab` WRITE;
/*!40000 ALTER TABLE `course_lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_resourcep_pattern`
--

DROP TABLE IF EXISTS `course_resourcep_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_resourcep_pattern` (
  `courseId` int(11) NOT NULL,
  `resourceType` int(11) NOT NULL,
  `resourceNumber` int(11) NOT NULL,
  PRIMARY KEY (`courseId`,`resourceType`,`resourceNumber`),
  KEY `resourceType` (`resourceType`) USING BTREE,
  CONSTRAINT `course_resourcep_pattern_ibfk_1` FOREIGN KEY (`resourceType`) REFERENCES `resource_pattern` (`PatternId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `course_resourcep_pattern_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `course` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_resourcep_pattern`
--

LOCK TABLES `course_resourcep_pattern` WRITE;
/*!40000 ALTER TABLE `course_resourcep_pattern` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_resourcep_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromUser` int(11) DEFAULT NULL,
  `toUser` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` mediumtext,
  `upTime` datetime DEFAULT NULL,
  `isRead` smallint(1) DEFAULT '0',
  `type` enum('System','Application','fee') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fromUser` (`fromUser`) USING BTREE,
  KEY `toUser` (`toUser`) USING BTREE,
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`toUser`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`fromUser`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `MsgTime` BEFORE INSERT ON `messages` FOR EACH ROW SET NEW.upTime = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `OrderId` int(11) NOT NULL AUTO_INCREMENT,
  `ReqOrgId` int(11) NOT NULL,
  `ReqUserId` int(11) NOT NULL,
  `ReqTime` datetime DEFAULT '0000-00-00 00:00:00',
  `StartTime` date NOT NULL DEFAULT '0000-00-00',
  `EndTime` date NOT NULL DEFAULT '0000-00-00',
  `UserComment` longtext,
  `OrgReqComment` longtext,
  `AdmComment` longtext,
  `Status` enum('new','canceled','rejbyre','rejbyad','approve','active','expire','terminated','pass','allocated') NOT NULL DEFAULT 'new',
  `deadline` enum('Terminable','Permanent') DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `ReqOrgId` (`ReqOrgId`) USING BTREE,
  KEY `ReqUserId` (`ReqUserId`) USING BTREE,
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ReqUserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`ReqOrgId`) REFERENCES `organization` (`OrgId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (24,3,17,'2013-06-06 00:58:53','2013-08-06','2013-12-06','No comment',NULL,NULL,'approve','Terminable'),(25,3,17,'2013-06-06 00:59:13','2013-11-06','2013-12-06','No comment',NULL,NULL,'approve','Terminable'),(26,3,17,'2013-06-06 19:41:13','2013-07-06','2013-12-06','No comment',NULL,NULL,'rejbyad','Terminable'),(27,3,17,'2013-06-06 19:43:19','2013-07-06','2014-10-06','No comment',NULL,NULL,'rejbyad','Terminable'),(31,3,39,'2013-06-19 11:34:52','2013-10-19','2013-11-19','No comment',NULL,NULL,'approve','Terminable'),(32,3,39,'2013-06-19 13:16:06','2013-06-19','2013-09-19','No comment',NULL,NULL,'new','Terminable'),(33,3,39,'2013-06-19 15:44:06','2013-09-19','2013-11-19','No comment',NULL,NULL,'rejbyad','Terminable');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_course`
--

DROP TABLE IF EXISTS `order_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_course` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CourseId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ReqLab` varchar(2) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CourseId` (`CourseId`) USING BTREE,
  KEY `OrderId` (`OrderId`) USING BTREE,
  CONSTRAINT `order_course_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_course_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_course`
--

LOCK TABLES `order_course` WRITE;
/*!40000 ALTER TABLE `order_course` DISABLE KEYS */;
INSERT INTO `order_course` VALUES (18,8,24,'y'),(19,7,25,'y'),(20,8,25,'y'),(21,7,26,'y'),(22,7,27,'y'),(27,7,31,'y'),(28,8,31,'y'),(29,7,32,'y'),(30,8,32,'y'),(31,7,33,'y'),(32,8,33,'y');
/*!40000 ALTER TABLE `order_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_package`
--

DROP TABLE IF EXISTS `order_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_package` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL DEFAULT '0',
  `packageId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `orderId` (`orderId`) USING BTREE,
  KEY `packageId` (`packageId`) USING BTREE,
  CONSTRAINT `order_package_ibfk_1` FOREIGN KEY (`packageId`) REFERENCES `packages` (`PackageId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_package_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `order` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_package`
--

LOCK TABLES `order_package` WRITE;
/*!40000 ALTER TABLE `order_package` DISABLE KEYS */;
INSERT INTO `order_package` VALUES (2,24,79),(3,25,80),(4,31,80);
/*!40000 ALTER TABLE `order_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_resource`
--

DROP TABLE IF EXISTS `order_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` int(11) NOT NULL,
  `ReqNumber` int(11) NOT NULL,
  `ResourcePatternId` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `OrderId` (`OrderId`) USING BTREE,
  KEY `ResourcePatternId` (`ResourcePatternId`) USING BTREE,
  CONSTRAINT `order_resource_ibfk_1` FOREIGN KEY (`ResourcePatternId`) REFERENCES `resource_pattern` (`PatternId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_resource_ibfk_2` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_resource`
--

LOCK TABLES `order_resource` WRITE;
/*!40000 ALTER TABLE `order_resource` DISABLE KEYS */;
INSERT INTO `order_resource` VALUES (53,24,1,5),(54,24,1,1),(55,24,1,6),(56,24,0,3),(57,25,1,1),(58,25,1,5),(59,25,1,3),(60,25,1,6),(61,26,1,3),(62,26,1,1),(63,26,1,5),(64,26,1,6),(65,27,1,5),(66,27,1,6),(67,27,1,3),(68,27,1,1),(79,31,1,5),(80,31,1,1),(81,31,1,6),(82,31,1,3),(83,32,1,5),(84,32,1,4),(85,32,10,6),(86,33,20,6),(87,33,1,4),(88,33,1,1),(89,33,2,5);
/*!40000 ALTER TABLE `order_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `OrgId` int(10) NOT NULL AUTO_INCREMENT,
  `OrgName` varchar(20) NOT NULL DEFAULT '',
  `OrgDesc` longtext,
  `Contract` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `RegUserId` int(10) DEFAULT NULL,
  `RegTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IsVip` enum('0','1') NOT NULL DEFAULT '0',
  `IsActive` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`OrgId`),
  KEY `RegUserId` (`RegUserId`) USING BTREE,
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`RegUserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (3,'tongji university',NULL,NULL,'02155556666',NULL,17,'2013-06-04 17:41:30','0','0'),(4,'huangdu ',NULL,NULL,NULL,NULL,17,'2013-06-04 17:41:30','0','0');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_free`
--

DROP TABLE IF EXISTS `package_free`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_free` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StartYear` int(11) DEFAULT NULL,
  `StartMonth` int(11) DEFAULT NULL,
  `EndYear` int(11) DEFAULT NULL,
  `EndMonth` int(11) DEFAULT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `Span` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_free`
--

LOCK TABLES `package_free` WRITE;
/*!40000 ALTER TABLE `package_free` DISABLE KEYS */;
INSERT INTO `package_free` VALUES (27,2012,8,2012,8,79,0),(28,2012,11,2013,9,80,10),(30,2012,11,2020,5,78,91),(32,2013,2,2013,7,79,5),(33,2014,2,2020,5,79,75),(34,2014,2,2020,5,80,75),(35,2014,1,2013,10,80,-3);
/*!40000 ALTER TABLE `package_free` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `PackageId` int(11) NOT NULL AUTO_INCREMENT,
  `Prefix` varchar(10) NOT NULL DEFAULT '',
  `PostDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PackageExcel` varchar(100) DEFAULT NULL,
  `Status` enum('Free','Locked','InsError','UnInsError') DEFAULT 'Free',
  `type` enum('fixed','extend') DEFAULT 'fixed',
  PRIMARY KEY (`PackageId`),
  UNIQUE KEY `Prefix` (`Prefix`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (78,'100','1970-01-01 08:00:00',NULL,'InsError','fixed'),(79,'101','1970-01-01 08:00:00',NULL,'Free','fixed'),(80,'102','1970-01-01 08:00:00',NULL,'Free','fixed');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `PackageTime` BEFORE INSERT ON `packages` FOR EACH ROW SET NEW.PostDate = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `ResourceId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageId` int(11) NOT NULL,
  `ResourcePattern` int(11) NOT NULL,
  `ResourceName` varchar(20) NOT NULL,
  `Prefix` varchar(10) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL,
  `Status` enum('Free','Locked','InsError','UnInsError') NOT NULL DEFAULT 'Free',
  PRIMARY KEY (`ResourceId`),
  KEY `PackageId` (`PackageId`) USING BTREE,
  KEY `ResourcePattern` (`ResourcePattern`) USING BTREE,
  CONSTRAINT `resource_ibfk_1` FOREIGN KEY (`ResourcePattern`) REFERENCES `resource_pattern` (`PatternId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resource_ibfk_2` FOREIGN KEY (`PackageId`) REFERENCES `packages` (`PackageId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (27,78,5,'T100','100','1234','Free'),(28,78,3,'D100','100','1234','Free'),(29,78,1,'CICS100','100','1234','Free'),(30,78,6,'S100','100','1234','Free'),(31,79,1,'CICS101','101','1234','Free'),(32,79,3,'D101','101','1234','Free'),(33,79,5,'T101','101','1234','Free'),(34,79,6,'S101','101','1234','Free'),(35,80,5,'T102','102','1234','Free'),(36,80,3,'D102','102','1234','Free'),(37,80,1,'CICS102','102','1234','Free'),(38,80,6,'S102','102','1234','Free');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_pattern`
--

DROP TABLE IF EXISTS `resource_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_pattern` (
  `PatternId` int(11) NOT NULL AUTO_INCREMENT,
  `ResouceType` varchar(10) NOT NULL,
  `Comments` longtext,
  `Version` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`PatternId`),
  UNIQUE KEY `Version` (`Version`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_pattern`
--

LOCK TABLES `resource_pattern` WRITE;
/*!40000 ALTER TABLE `resource_pattern` DISABLE KEYS */;
INSERT INTO `resource_pattern` VALUES (1,'CICS',NULL,'V3R1'),(2,'CICS',NULL,'V4R1'),(3,'DB2',NULL,'DB2V9'),(4,'DB2',NULL,'DB2V10'),(5,'TACCT',NULL,'TACCT'),(6,'SACCT',NULL,'SACCT');
/*!40000 ALTER TABLE `resource_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserId` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL DEFAULT '',
  `FirstName` varchar(30) NOT NULL DEFAULT '',
  `LastName` varchar(30) NOT NULL DEFAULT '',
  `Gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `OrgId` int(11) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  `RegTime` datetime DEFAULT '0000-00-00 00:00:00',
  `Address` varchar(100) DEFAULT NULL,
  `TeStatus` varchar(20) DEFAULT NULL,
  `VipStatus` varchar(20) DEFAULT NULL,
  `IsVip` enum('0','1') DEFAULT '0',
  `IsActive` enum('0','1') DEFAULT '0',
  `Role` enum('TA','RP','AD') NOT NULL DEFAULT 'TA',
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Email` (`Email`) USING BTREE,
  KEY `OrgId` (`OrgId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`OrgId`) REFERENCES `organization` (`OrgId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (17,'jiangwei@gmail.com','1bbd886460827015e5d605ed44252251','wei','jiang','Male',3,'18018506903','','2013-06-04 17:41:30','shanghai siiping road',NULL,NULL,NULL,NULL,'AD'),(39,'jiangwish@gmail.com','f6aada3363bc5d5842a3af7688733881','wei','jiang','Male',3,'18018506903','','2013-06-12 22:20:39','411',NULL,NULL,NULL,NULL,'AD');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `regTimeTrigger` BEFORE INSERT ON `user` FOR EACH ROW begin set NEW.RegTime = Now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `UserId` int(11) NOT NULL,
  `Role` varchar(4) NOT NULL,
  PRIMARY KEY (`UserId`,`Role`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zcloud_contact`
--

DROP TABLE IF EXISTS `zcloud_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zcloud_contact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Content` text,
  `UpTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zcloud_contact`
--

LOCK TABLES `zcloud_contact` WRITE;
/*!40000 ALTER TABLE `zcloud_contact` DISABLE KEYS */;
INSERT INTO `zcloud_contact` VALUES (1,'Glorabit','xiaoguo415@gmail.com','newdsad','32131231',NULL);
/*!40000 ALTER TABLE `zcloud_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zcloud_course_adv`
--

DROP TABLE IF EXISTS `zcloud_course_adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zcloud_course_adv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zcloud_course_adv`
--

LOCK TABLES `zcloud_course_adv` WRITE;
/*!40000 ALTER TABLE `zcloud_course_adv` DISABLE KEYS */;
/*!40000 ALTER TABLE `zcloud_course_adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zcloud_navigation`
--

DROP TABLE IF EXISTS `zcloud_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zcloud_navigation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zcloud_navigation`
--

LOCK TABLES `zcloud_navigation` WRITE;
/*!40000 ALTER TABLE `zcloud_navigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `zcloud_navigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zlcoud_message`
--

DROP TABLE IF EXISTS `zlcoud_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zlcoud_message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Subject` text,
  `Message` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zlcoud_message`
--

LOCK TABLES `zlcoud_message` WRITE;
/*!40000 ALTER TABLE `zlcoud_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `zlcoud_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-21 12:40:36
