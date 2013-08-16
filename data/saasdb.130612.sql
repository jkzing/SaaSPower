-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: saasdb
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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `profile` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'album','album');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdug_expert`
--

DROP TABLE IF EXISTS `cdug_expert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdug_expert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picURL` varchar(255) DEFAULT NULL,
  `profile` text,
  `email` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdug_expert`
--

LOCK TABLES `cdug_expert` WRITE;
/*!40000 ALTER TABLE `cdug_expert` DISABLE KEYS */;
INSERT INTO `cdug_expert` VALUES (1,'test','test','test','test@gmail.com','test');
/*!40000 ALTER TABLE `cdug_expert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdug_res`
--

DROP TABLE IF EXISTS `cdug_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdug_res` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `uploadDate` datetime DEFAULT NULL,
  `creater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD237D5145CB3FBB3` (`creater_id`) USING BTREE,
  CONSTRAINT `cdug_res_ibfk_1` FOREIGN KEY (`creater_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdug_res`
--

LOCK TABLES `cdug_res` WRITE;
/*!40000 ALTER TABLE `cdug_res` DISABLE KEYS */;
INSERT INTO `cdug_res` VALUES (1,'test','test','test',NULL,NULL);
/*!40000 ALTER TABLE `cdug_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdug_ressort`
--

DROP TABLE IF EXISTS `cdug_ressort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdug_ressort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sortname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdug_ressort`
--

LOCK TABLES `cdug_ressort` WRITE;
/*!40000 ALTER TABLE `cdug_ressort` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdug_ressort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdug_signupform`
--

DROP TABLE IF EXISTS `cdug_signupform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdug_signupform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `com_postCode` varchar(255) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `signUpDate` datetime DEFAULT NULL,
  `creater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC2E84B285CB3FBB3` (`creater_id`) USING BTREE,
  CONSTRAINT `cdug_signupform_ibfk_1` FOREIGN KEY (`creater_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdug_signupform`
--

LOCK TABLES `cdug_signupform` WRITE;
/*!40000 ALTER TABLE `cdug_signupform` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdug_signupform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubinfo`
--

DROP TABLE IF EXISTS `clubinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clubinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `slider_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slider_id` (`slider_id`) USING BTREE,
  KEY `FK4E3E96A43D2919FE` (`slider_id`) USING BTREE,
  CONSTRAINT `clubinfo_ibfk_1` FOREIGN KEY (`slider_id`) REFERENCES `slider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubinfo`
--

LOCK TABLES `clubinfo` WRITE;
/*!40000 ALTER TABLE `clubinfo` DISABLE KEYS */;
INSERT INTO `clubinfo` VALUES (1,'info',1);
/*!40000 ALTER TABLE `clubinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_courseinfo`
--

DROP TABLE IF EXISTS `edu_courseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_courseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `info` text,
  `URL` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_courseinfo`
--

LOCK TABLES `edu_courseinfo` WRITE;
/*!40000 ALTER TABLE `edu_courseinfo` DISABLE KEYS */;
INSERT INTO `edu_courseinfo` VALUES (1,'J2EE企业级开发','教育部－IBM精品课程','2008','暂无介绍','','http://sse.tongji.edu.cn/j2ee/'),(2,'大型主机系统管理技能','教育部－IBM精品课程','2007','《大型主机系统管理技能》是一门综合性、实践性和应用性的课程，是主机技术专业方向的高级专业课程，开设本课程的目的是以通过对大型主机系统运行监控(RMF)、JCL批处理作业管理(JES)、目录管理(Catalog)、安全管理(RACF)、存储管理(DFSMS)、各种实用程序(Utility)、系统安装(SMP/E)、硬件配置(HCD)、系统脚本语言(REXX)等知识的学习，掌握主机系统管理的基本技能，提高学生解决和处理实际问题的能力，为日后从事主机系统程序员/管理员的相关工作打下坚实的基础。',NULL,'http://sse.tongji.edu.cn/zosadmin/'),(3,'软件测试','教育部－IBM精品课程','2007','暂无介绍',NULL,NULL),(4,'大型主机数据库基础与应用开发','教育部－IBM精品课程','2006','同济大学软件学院大型主机专业方向应用类主干课程之一。课程从IBMLUW(Linux/UNIX/Windows)平台大型数据库DB2系统管理和应用开发课程演变而来，逐渐过渡到大型主机平台。本课程以数据库基本原理课程作为先修课程，属于技能性课程，更偏重于考查学生的实践理解、操作和编程能力。课程不再赘述通用的数据库原理，而是将重点放在大型主机平台的DB2数据库的具体实践上面。教学形式也相应地向实战方向倾斜，在各章节都安排了大量实验，最后考核除了书面考试外，另一大块是要求学生提交大量作业，并完成一个综合的数据库项目。',NULL,'http://sse.tongji.edu.cn/db2forzos/'),(5,'大型主机系统管理的案例分析与实践','教育部－IBM精品课程','2010','《大型主机系统管理的案例分析与实践》是一门案例分析与实践性课程，是主机技术专业方向的高级专业课程，开设本课程的目的是以通过对大型主机系统运行监控(RMF)、JCL批处理作业管理(JES)、目录管理(Catalog)、安全管理(RACF)、存储管理(DFSMS)、各种实用程序(Utility)、系统安装(SMP/E)、硬件配置(HCD)、系统监控(RMF)等知识的学习，掌握主机系统管理的基本技能，提高学生解决和处理实际问题的能力，为日后从事主机系统程序员/管理员的相关工作打下坚实的基础。',NULL,'http://sse.tongji.edu.cn/zosadmincs/'),(6,'大型主机应用上的开放系统和中间件','教育部 - IBM专业综合改革项目','2011','本课程是同济大学软件学院大型主机专业方向应用类主干课程之一。本课程以J2EE，大型机操作系统，大型机数据库系统及大型机中间件CICS等课程作为先修课程，属于技能性课程，更偏重于训练和考查学生的软件系统分析、设计和编程能力而非侧重理论知识。课程将重点放在大型主机应用中开放系统和中间件的应用上面，教学形式也相应地向实战方向倾斜，在各章节都安排了大量实验，最后考核除了书面考试外，另一大块是要求学生提交大量作业，以完成开放系统和大型主机中间件的四个应用案例。学生在学习完本门课程后，可以结合开放平台和大型机平台开发多个不同类型和规模的完整的实践项目，对自身的系统分析、设计和编程能力有很大的提高。',NULL,'http://sse.tongji.edu.cn/MFOpenSysandMiddleware/'),(7,'大型企业级数据库管理与优化','教育部 - IBM专业综合改革项目','2011','课程简介：本课程是一门综合性、实践性和应用性的课程，是网络与主机软件专业方向的必修课。课程基于IBM DB2产品，覆盖DB2管理和DB2应用优化知识，并且涉及当前数据库领域的新技术和新动向的专业课程。它作为数据库基本原理以及应用开发的后续课程，同时作为软件工程专业的高阶课程，主要面向研究生和高年级本科生开设。课程主要介绍DB2的体系架构、数据库管理、安全机制、数据集成及性能优化、并且涉及当前数据库领域的新技术和新动向，包括pureXML技术，pureQuery技术以及Data as a Service等技术。课程帮助学生了解和掌握数据库管理、性能优化和整体数据集成方案，重点结合IBM Optim平台使学生了解和掌握DB2整体数据解决方案和相关技术。促进学生更深入学习数据库技术，充分了解数据库技术在企业级关键数据处理任务中所处的地位和发挥的作用，获得市场稀缺技能，为今后进一步研究数据库知识和从事相关岗位职业打下坚实基础。',NULL,'http://sse.tongji.edu.cn/DB2ADM/'),(8,'IT服务管理','教育部 - IBM专业综合改革项目','2011','暂无介绍',NULL,'http://sse.tongji.edu.cn/ITSM/'),(9,'云计算核心技术','教育部 - IBM专业综合改革项目','2012','《云计算核心技术》是一门综合性、实践性和应用性的课程，是分布式计算专业方向的高级专业课程，开设本课程的目的以通过对云计算的架构、硬件和基础设施、访问云、云存储、云计算等应用知识的学习，以及对IBM SmartCloud平台的应用实践，帮助学生了解和掌握云计算相关技术，提高学生解决和处理实际问题的能力，为今后进一步研究和从事相关岗职业打下坚实基础。',NULL,'http://sse.tongji.edu.cn/Cloud/'),(10,'大型主机的存储管理和实施','教育部 - IBM精品课程','2010','《大型主机的存储管理和实施》是一门理论性与应用性相结合的主机技术方向专业课。开设本课程的目的是介绍大型主机进行存储管理的基础知识，包括数据管理，存储介质管理，存储空间管理，可用性管理等知识。通过对组件DFSMSdfp,组件DFSMSdss,组件DFSMShsm,组件DFSMSrmm,存储管理工具(ISMF),存储管理的安全保护(SMS与RACF)等知识技能的学习，掌握主机存储管理的基本技能，为日后从事主机系统管理员的相关工作打下坚实的基础。',NULL,NULL),(11,'大型主机平台系统概论','教育部－IBM精品课程','2008','《大型主机平台系统概论》是一门综合性与应用性相结合的主机技术方向入门级专业基础课。开设本课程的目的是介绍大型主机系统的基础知识，包括主机发展史，设计原理，硬件设备，系统环境，操作平台，主机特点以及行业应用等知识。学生通过学习能了解大型主机平台是什么，能做什么，并实践主机平台的使用技能（怎么用），提高学生对主机平台处理行业业务的认识，为今后进一步学习主机系统平台技术事相关岗位职业生涯知识和从打下坚实的基础。',NULL,'http://sse.tongji.edu.cn/zosadminos/'),(12,'银行主机系统业应用案例','教育部－IBM精品课程','2006','通过本课程的学习，学生应该具有一定的银行金融业务知识，以及在IBM主机平台上应用多种工具开发应用程序的能力。并充分了解整个项目开发流程以及工具，并理解整个项目开发过程中所涉及的因素，比如文档、代码规范等，同时锻炼学生的团队合作精神。从而培养学生从头开发项目，并管理整个项目周期的能力，为参与开发和管理工程应用中更大规模的项目打下基础。',NULL,'http://sse.tongji.edu.cn/mfbanking/'),(13,'DB2高级数据库管理','教育部－IBM精品课程','2010','《DB2高级数据库管理》是基于IBM DB2 for z/OS，将理论与行业应用相结合的专业课程。作为数据库基本原理以及应用开发的后续课程，同时作为主机类的高阶课程，此课程的目的为介绍DB2 for z/OS的体系架构，介绍数据库管理的目的以及手段，通过理论以及大量行业的实际案例分析，帮助学生了解和掌握数据库规划、设计、建立、监控、日常管理与维护、调优、恢复等工作的重要性，工作目的以及工作内容等。促进学生深入学习数据库，了解行业需求，获得市场稀缺技能，为今后进一步学习DB2技术知识和从事相关岗位职业生涯打下坚实的基础。',NULL,'http://sse.tongji.edu.cn/DB2admin/');
/*!40000 ALTER TABLE `edu_courseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_teacherinfo`
--

DROP TABLE IF EXISTS `edu_teacherinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_teacherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name_ch` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `positions` varchar(255) DEFAULT NULL,
  `courses` varchar(255) DEFAULT NULL,
  `picURL` varchar(255) DEFAULT NULL,
  `researchDir` varchar(255) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_teacherinfo`
--

LOCK TABLES `edu_teacherinfo` WRITE;
/*!40000 ALTER TABLE `edu_teacherinfo` DISABLE KEYS */;
INSERT INTO `edu_teacherinfo` VALUES (1,'test@gmail.com','高珍','GAOZHEN','讲师','博士','assets/img/teaching/gaozhen.png','test','test');
/*!40000 ALTER TABLE `edu_teacherinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_textbook`
--

DROP TABLE IF EXISTS `edu_textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_textbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mainEditor` varchar(255) DEFAULT NULL,
  `publishDate` varchar(255) DEFAULT NULL,
  `profile` text,
  `picURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_textbook`
--

LOCK TABLES `edu_textbook` WRITE;
/*!40000 ALTER TABLE `edu_textbook` DISABLE KEYS */;
INSERT INTO `edu_textbook` VALUES (1,'大型主机系统管理','高珍','2011.12月','同济大学十二五规划教材，清华大学出版社，教育部-IBM精品课程系列教材，2011.12出版，ISBN 978-7-302-25545-1，字数：460千字','assets/img/textbook/1.jpg'),(2,'大型主机数据库系统管理基础与应用开发','唐剑锋','2011.6月','暂无','assets/img/textbook/2.jpg'),(3,'大型主机操作系统基础实验教程','黄杰','2012.3月','暂无','assets/img/textbook/3.png'),(4,'Web技术在主机系统中的应用与案例分析','唐剑锋','2012.4月','暂无','assets/img/textbook/4.png'),(5,'大型主机系统管理REXX编程详解','高珍','2012.5月','同济大学十二五规划教材，清华大学出版社，教育部-IBM精品课程系列教材，2012.5出版，ISBN 978-7-302-28005-7，字数：324千字','assets/img/textbook/5.png'),(6,'Introduction to the New Mainframe: z/OS Basics','高珍，冯巾松',NULL,'首本IBM主机红皮书中文翻译《Introduction to the New Mainframe: z/OS Basics》(共571页)，译稿已在IBM全球AI网站全球共享\r\n(http://www.redbooks.ibm.com/redbooks/pdfs/sg246366-00-cn.pdf )\r\n','assets/img/textbook/6.png');
/*!40000 ALTER TABLE `edu_textbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK21699CD8104E75` (`file_id`),
  CONSTRAINT `FK21699CD8104E75` FOREIGN KEY (`file_id`) REFERENCES `news` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innovationproject`
--

DROP TABLE IF EXISTS `innovationproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innovationproject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `album_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `album_id` (`album_id`) USING BTREE,
  KEY `FK3A3B11D4B0693AF6` (`album_id`) USING BTREE,
  CONSTRAINT `innovationproject_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innovationproject`
--

LOCK TABLES `innovationproject` WRITE;
/*!40000 ALTER TABLE `innovationproject` DISABLE KEYS */;
INSERT INTO `innovationproject` VALUES (1,'name','test',1);
/*!40000 ALTER TABLE `innovationproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `sort` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `pic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK24FEF3390CD816` (`pic_id`),
  CONSTRAINT `FK24FEF3390CD816` FOREIGN KEY (`pic_id`) REFERENCES `pic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'test','test','club',NULL,NULL),(4,'同济大学IBM技术中心后台管理','<p>新闻内容新闻内容新闻内容</p>','cdug','2013-05-29 15:19:16',NULL),(6,'CDUG会议即将召开','<p>请编辑新闻内容</p>','cdug','2013-05-29 16:02:14',NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pic`
--

DROP TABLE IF EXISTS `pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `profile` text,
  `URL` varchar(255) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `slider_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1396AB0693AF6` (`album_id`) USING BTREE,
  KEY `FK1396A3D2919FE` (`slider_id`) USING BTREE,
  CONSTRAINT `pic_ibfk_1` FOREIGN KEY (`slider_id`) REFERENCES `slider` (`id`),
  CONSTRAINT `pic_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pic`
--

LOCK TABLES `pic` WRITE;
/*!40000 ALTER TABLE `pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_info`
--

DROP TABLE IF EXISTS `portal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_info`
--

LOCK TABLES `portal_info` WRITE;
/*!40000 ALTER TABLE `portal_info` DISABLE KEYS */;
INSERT INTO `portal_info` VALUES (1,'textbook','<h2>这是标题</h2><table width=\"960\"><tbody><tr><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td></tr><tr><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td></tr><tr><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td></tr><tr><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td><td width=\"171\" valign=\"top\"><br /></td></tr></tbody></table><p><br /></p><p><br /></p>'),(2,'research','<p>research</p>'),(3,'course','<p style=\"text-indent:28px;line-height:150%\"><br /></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;color:#7f7f7f;\"> &nbsp; &nbsp; &nbsp; &nbsp;中心开设了一批目的性，实用性明确的教学课程，由于特殊的硬件环境优势，课程操作性强，高级课程都要求学员通过实际项目开发来进行考核。学生通过课程的学习和上机操作，应具有在主机环境中使用各种工具开发和维护应用程序的能力，适应企业急需的主机开发人员和管理人员的要求。</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;color:#7f7f7f;\"><br /></span></p><p style=\"line-height:2em;margin-top:5px;margin-bottom:10px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:24px;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:24px;color:#17365d;\">一、培养计划</span></strong></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; &nbsp; &nbsp;中心设立大型机技术方向，培养计划参见表4.1。具体培养线路主要分为</span><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">主机应用</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">和</span><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">系统管理</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">两个培养方向，系统管理部分又有三个分支：</span><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">主机系统管理员（DBA）</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">，</span><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">主机系统管理员（RACF）</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">，</span><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">主机系统管理员（Storage）</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">。通过每个分支系列课程学习的学生均可以获得IBM颁发的主机Certificate证书，培养路线图如图4.1示。</span></span></p><p style=\"text-align:center;line-height:1.5em;\"><img src=\"/PortalAdmin/admin/ueditor/upload/../upload/20130611/86751370957613887.png\" title=\"course_path.750.png\" /></p><p style=\"text-align:center;line-height:1.5em;\"><strong><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">图</span><span lang=\"EN-US\" style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\"> 4.1</span><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">大型机人才培养路线图</span></strong></p><p style=\"text-align:left;line-height:1.5em;\"><br /></p><p style=\"text-align:center;line-height:1.5em;\"><strong><span style=\"font-size:14px;font-family:宋体;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">表 4.1大型机技术培养计划表</span><strong><span style=\"font-size:14px;font-family:宋体;\"></span></strong></span></strong></p><p style=\"text-align:left;line-height:1.5em;\"><strong><span style=\"font-size:14px;font-family:宋体;\"></span></strong></p><table width=\"699\"><tbody><tr><td valign=\"middle\" rowspan=\"2\" colspan=\"1\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"10\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"></span><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">专业</span></strong></p></td><td valign=\"middle\" rowspan=\"2\" colspan=\"1\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"23\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">方向</span></strong></p></td><td valign=\"middle\" rowspan=\"2\" colspan=\"1\" style=\"background-color:#d8d8d8;border-color:#0f243e;word-break:break-all;\" align=\"center\" width=\"171\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">课程名称</span></strong><br /></p></td><td valign=\"middle\" rowspan=\"2\" colspan=\"1\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"31\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">课程属性</span></strong></p></td><td valign=\"middle\" rowspan=\"2\" colspan=\"1\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"18\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">学分</span></strong></p></td><td valign=\"middle\" rowspan=\"1\" colspan=\"3\" style=\"background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"114\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">学时安排</span></strong><br /></p></td><td valign=\"middle\" rowspan=\"2\" colspan=\"1\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"48\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">修读学期</span></strong></p></td><td valign=\"middle\" rowspan=\"2\" colspan=\"1\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"107\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"></span></strong></p><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">前修课程</span></strong></p></td></tr><tr><td valign=\"middle\" height=\"13\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"28\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">合计</span></strong><br /></p></td><td valign=\"middle\" height=\"13\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"25\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">讲课</span></strong></p></td><td valign=\"middle\" height=\"13\" style=\"word-break:break-all;background-color:#d8d8d8;border-color:#0f243e;\" align=\"center\" width=\"26\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">上机</span></strong></p></td></tr><tr><td valign=\"top\" rowspan=\"13\" colspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"10\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><br /></p><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">大型机技术</span></strong></p></td><td valign=\"top\" rowspan=\"5\" colspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"23\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机应用方向</span><br /></p></td><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机操作系统<br />(包括新型主机导论和新型主机操作系统概述)</span><span style=\"font-size:12px;font-family:宋体;\"><span lang=\"EN-US\"></span></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">必修</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">3.5</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">56</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">30</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">26</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第4学期</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">操作系统原理</span></p></td></tr><tr><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机DB2数据库应用与编程</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">必修</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">3</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">48</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">24</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">24</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第5学期</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机操作系统</span></p></td></tr><tr><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">COBOL语言导学</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">必修</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">16</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">16</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第5学期</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机操作系统</span></p></td></tr><tr><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">CICS系统及应用(包括MQ)</span><span style=\"font-size:12px;font-family:宋体;\"><span lang=\"EN-US\"></span></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">必修</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">16</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">16</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机操作系统</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">COBOL语言导学</span></p></td></tr><tr><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">大型主机银行应用案例分析</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">选修</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">16</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">16</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">CICS系统及应用</span></p></td></tr><tr><td valign=\"top\" rowspan=\"6\" colspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"23\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">系统管理方向</span><br /></p></td><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">z/OS系统管理概论</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">必修</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">3</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">48</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">40</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">8</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第4学期</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机操作系统</span><br /></p></td></tr><tr><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机系统管理技能</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">必修</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">20</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">12</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第5学期</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">z/OS系统管理概论</span></p></td></tr><tr><td valign=\"top\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">CICS系统与管理</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">选修</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">20</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">12</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">CICS系统及应用</span></p></td></tr><tr><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">DBA数据库管理</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">选修</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">20</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">12</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机DB2数据库应用及变成</span><br /></p></td></tr><tr><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机系统安全管理(RACF)</span><span style=\"font-size:12px;font-family:宋体;\"><span lang=\"EN-US\"></span></span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">选修</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">20</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">12</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">z/OS系统管理概论</span></p></td></tr><tr><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机存储控制与管理(SMS)</span><span style=\"font-size:12px;font-family:宋体;\"><span lang=\"EN-US\"></span></span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">选修</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">32</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">2</span><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">0</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">12</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">z/OS系统管理概论</span></p></td></tr><tr><td valign=\"top\" colspan=\"1\" rowspan=\"2\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"23\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">专家课程</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机数据库性能调优</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">选修</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">3</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">48</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">30</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">18</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">数据库原理</span></p></td></tr><tr><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"border-color:#0f243e;word-break:break-all;\" align=\"left\" width=\"171\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机汇编语言</span><span style=\"font-size:12px;font-family:宋体;\"></span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"31\"><p style=\"line-height:1.5em;\"><span style=\"background-color:#ffffff;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">选修</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"18\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">3</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"28\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">48</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"25\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">24</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"26\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">24</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">第6学期</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#0f243e;\" align=\"left\" width=\"107\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:12px;\">主机操作系统</span></p></td></tr></tbody></table><p style=\"text-align:left;line-height:2em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:24px;color:#17365d;\"><br /></span></strong></p><p style=\"text-align:left;line-height:2em;\"><strong><span style=\"font-size:14px;font-family:宋体;\"></span></strong><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:24px;color:#17365d;\">二、主要课程描述</span></strong></p><p style=\"text-align:left;line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><strong>1.主机操作系统</strong></span></p><p style=\"text-align:left;line-height:1.5em;margin-top:5px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授新时代大型主机；主机硬件系统与逻辑分区；主机的网络连接；主机系统的安全概述；主机软件系统与软件开发；主机的应用；主机操作系统基本概念和基本操作；重点讲解JCL，JES2，Catalog，SDSF，Utility，Procedure和VSAM文件操作。</span></span></p><p style=\"text-align:left;line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><strong>2.主机DB2数据库应用开发与编程</strong></span></p><p style=\"text-align:left;line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授在大型主机平台如何进行DB2数据库应用程序开发和编程的知识。包括主机DB2嵌入式(COBOL) 应用程序开发，主机DB2 JDBC应用程序开发，主 机DB2 SQLJ应用程序开发和主机DB2存储过程应用程序开发四大部分。主机DB2嵌入式应用程序开发部分分为单行数据表查询，多行数据表查询，动态可滚动游标和动态SQL语句的嵌入式SQL程序开发。后三部分包括Type2 JDBC Driver和Type4 JDBC Driver的JDBC、SQLJ和存储过程应用程序开发。</span></span></p><p style=\"text-align:left;line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><strong>3.COBOL语言导学</strong></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授COBOL语法及COBOL中如何嵌入DB2和CICS语句，有大量COBOL编程练习。</span></span></p><p style=\"line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">4.CICS系统及应用</span></strong></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授CICS组成结构，CICS环境，CICS系统命令，CICS和DB2的连接，编写CICS事务，SDFII（设计用户界面）等知识点，有大量实际练习。</span></span></p><p style=\"line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><strong>5.z/OS系统管理概论</strong></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授主机体系结构简介；系统IPL和关机过程；主机语言环境；子系统与地址空间；JES2和JES3介绍；主机系统库、过程库；主机软件的安装、配置、升级（SMP/E）；系统日志；资源恢复服务RRS；主机安全管理介绍RACF；主机通讯（TCP/IP VTAM）；主机存储DFSMS；USS介绍；主机故障诊断介绍；HCD和HMC；LPAR和PR/SM；WLM；RMF（系统资源监控）和SMF介绍；并行复合体(ParallelSysplex)。</span></span></p><p style=\"line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">6.系统管理技能</span></strong></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授JES， Utility， REXX和JCL</span></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; JES：JES2和JES3概述（NJE，RJE，安全管理等），JES2命令介绍（JES2启动/停止/状态显示/缓冲区监视/SPOOL操作/JES2设备管理/JES2输入输出控制/作业控制/网络控制等），JES2初始化操作，SPOOL卷定义，配置和管理，Checkpoint数据集的定义和配置等；</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; Utility：ADRDSSU（盘卷和数据集的备份、恢复与迁移，磁带操作），ICKDSF（盘卷的初始化，更名等操作），IDCAMS（Non-VSAM和VSAM文件的日常管理和维护），IEHLIST（VTOC和Catalog显示）等</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; REXX：REXX简介；REXX编程；流程控制；函数和Subroutine；错误诊断和处理；高级REXX(执行主机命令；数据操作；Parsing)；REXX和TSO；REXX和其他语言的交互；REXX和TCPIP；REXX和ISPF；REXX和MVS终端；REXX和USS</span></p><p style=\"line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><strong>7.主机存储控制与管理(SMS)</strong></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"> &nbsp; &nbsp; D<span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">FSMS简介，系统管理存储（数据管理，设备管理，存储空间管理，可用性管理），Constructs和ACS Routines，DFSMSdfp的使用，DFSMSdss的使用（ADRDSSU Utility），DFSMShsm介绍，DFSMSrmm介绍和磁带管理</span></span></p><p style=\"text-align:left;line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><strong>8.主机系统安全管理(RACF)</strong></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授安全和RACF简介，组和用户管理，z/OS数据集保护，通用资源介绍，RACF数据库和性能调整，加密和数字证书，RACF Utilities和Exits，RACF选项，RACF环境，存储管理和RACF，RACF对JES的保护等</span></span></p><p style=\"text-align:left;line-height:1.5em;margin-top:10px;margin-bottom:10px;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">9.主机DB2数据库系统管理</span></strong></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"> &nbsp; &nbsp; 主要讲授在大型主机平台如何进行DB2数据库系统的操作和管理。包括DB2用户和组的创建，DB2系统查询，数据库和表空间的创建，数据库对象的创建，检查暂挂的处理，表数据的导出和导入，表空间的备份和复原，表空间重组，表空间搜集和更新统计信息，DB2锁，数据库权限管理，DB2 for LUW与DB2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for z/OS互连以及DB2 for z/OS与DB2 for z/OS互连，使用DB2 Explain工具进行性能调整等</span></span></p><p style=\"text-align:left;line-height:1.5em;\"><br /></p>'),(4,'expert','<p style=\"margin-bottom:15px;margin-top:15px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:20px;color:#17365d;\">2011年</span><br /></span></p><table width=\"711\"><tbody><tr><td valign=\"top\" style=\"border-color:#d8d8d8;background-color:#8db3e2;word-break:break-all;\" height=\"26\" width=\"267\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">讲座名称</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"top\" style=\"border-color:#d8d8d8;background-color:#8db3e2;word-break:break-all;\" height=\"26\" width=\"227\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">演讲人/公司</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"top\" style=\"border-color:#d8d8d8;background-color:#8db3e2;word-break:break-all;\" height=\"26\" width=\"157\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">时间</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td></tr><tr><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"267\" height=\"25\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">z/OS多虚拟存储枝术</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"227\" height=\"25\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">黄小平, IBM特邀顾问</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"157\" height=\"25\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2011.10</span></td></tr><tr><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"267\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">Web下的主机应用</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"227\"><p><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">刘冠军、高俊华, </span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">IBMCDL</span></p></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"157\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2011.04</span></td></tr><tr><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"267\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">IBM大型机脚本语言浅析</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"227\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">贾焱, IBM CDL</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"157\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2011.05</span></td></tr><tr><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"267\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">IBM大型机存储管理子系统(SMS)</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"227\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">吴昊, IBM CDL</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"157\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2011.06</span></td></tr><tr><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"267\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">SmartereCommerce</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"227\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">潘家铭, IBM CDL</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"157\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2011.10</span></td></tr><tr><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"267\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">Mainframein Real World</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"227\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">JingXue, IBM CDL</span></td><td valign=\"top\" style=\"border-color:#d8d8d8;word-break:break-all;\" width=\"157\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2011.10</span></td></tr></tbody></table><p style=\"margin-top:20px;margin-bottom:15px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-size:20px;color:#17365d;\"></span></span></p><p><br /></p><p style=\"margin-top:15px;margin-bottom:15px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-size:20px;color:#17365d;\">2010年</span><br /></span></p><table width=\"711\"><tbody><tr><td valign=\"top\" height=\"30\" width=\"267\" align=\"left\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">讲座名称</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"top\" height=\"30\" width=\"227\" align=\"left\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">演讲人/公司</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"top\" height=\"30\" width=\"157\" align=\"left\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">时间</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td></tr><tr><td valign=\"top\" width=\"267\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">大型主机的昨天、今天和明天<span style=\"font-size:14px;font-family:宋体;\"><span style=\"font-size:14px;font-family:宋体;\"></span></span></span></td><td valign=\"top\" width=\"227\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">黄小平, IBM特邀顾问</span></td><td valign=\"top\" width=\"157\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2010.03</span></td></tr></tbody></table><p style=\"margin-top:20px;margin-bottom:15px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-size:20px;color:#17365d;\"></span></span></p><p><br /></p><p style=\"margin-top:15px;margin-bottom:15px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-size:20px;color:#17365d;\">2009年</span><br /></span></p><table width=\"711\"><tbody><tr><td valign=\"top\" height=\"26\" width=\"267\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">讲座名称</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"top\" height=\"26\" width=\"227\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">演讲人/公司</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"top\" height=\"26\" width=\"157\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">时间</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td></tr><tr><td valign=\"top\" width=\"267\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\"></span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">IMSSOA解决方案</span><span style=\"font-size:14px;font-family:宋体;\"></span></span></td><td valign=\"top\" width=\"227\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">贺方世美, IBM杰出工程师</span></td><td valign=\"top\" width=\"157\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2009.04</span></td></tr><tr><td valign=\"top\" width=\"267\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><span style=\"font-size:14px;font-family:宋体;\"></span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">数据库技术以及DB2在工业界的应用</span><span style=\"font-size:14px;font-family:宋体;\"></span></span></td><td valign=\"top\" width=\"227\" style=\"border-color:#d8d8d8;word-break:break-all;\"><p><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"></span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">傅毓勤, IBM杰出工程师</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"></span></p></td><td valign=\"top\" width=\"157\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;background-color:#ffffff;\">2009.04</span></span></td></tr><tr><td valign=\"top\" width=\"267\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\"></span>IMS基础知识<span style=\"font-size:14px;font-family:宋体;\"></span><span style=\"font-size:14px;font-family:宋体;\"></span></span></td><td valign=\"top\" width=\"227\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">卢丹, IBM CDL<span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\"></span></span></td><td valign=\"top\" width=\"157\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2009.05</span></td></tr><tr><td valign=\"top\" width=\"267\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\"></span>IBMPower服务器管理平台<span style=\"font-size:14px;font-family:宋体;\"></span></span></td><td valign=\"top\" width=\"227\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">沈林峰, IBM</span></td><td valign=\"top\" width=\"157\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2009.06</span></td></tr><tr><td valign=\"top\" width=\"267\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\"></span>CICS一系列<span style=\"font-size:14px;font-family:宋体;\"></span></span></td><td valign=\"top\" width=\"227\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">李国强、刘冠军<span style=\"font-size:14px;font-family:宋体;\"></span>, IBM CDL</span></td><td valign=\"top\" width=\"157\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2009.12</span></td></tr></tbody></table><p style=\"margin-top:15px;margin-bottom:20px;\"><span style=\"color:#17365d;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:20px;\"><br /></span></p><p style=\"margin-top:15px;margin-bottom:20px;\"><span style=\"color:#17365d;font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:20px;\">2007年</span><br /></p><table width=\"711\"><tbody><tr><td valign=\"middle\" height=\"25\" width=\"267\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">讲座名称</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"middle\" height=\"25\" width=\"227\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">演讲人/公司</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td><td valign=\"middle\" height=\"25\" width=\"157\" style=\"background-color:#8db3e2;border-color:#d8d8d8;word-break:break-all;\" align=\"left\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">时间</span></strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\"><br /></span></td></tr><tr><td valign=\"top\" width=\"267\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\">SMP/ECommand Introduction and Workshop</span></span></td><td valign=\"top\" width=\"227\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\"></span>ZhouHui, IBM CSTL主机专家<span style=\"font-size:14px;font-family:宋体;\"></span></span></td><td valign=\"top\" width=\"157\" height=\"25\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2007.09</span></td></tr><tr><td valign=\"top\" width=\"267\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\">IMSDB DL/I Application Programming</span></span></td><td valign=\"top\" width=\"227\" style=\"border-color:#d8d8d8;word-break:break-all;\"><p><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"></span><span lang=\"EN-US\" style=\"font-size:14px;font-family:calibri, sans-serif;\"></span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">FanDanHui, IBM CSTL主机专家</span><span style=\"font-size:14px;font-family:宋体;\"></span><span style=\"font-size:14px;font-family:宋体;\"></span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"></span></p></td><td valign=\"top\" width=\"157\" style=\"border-color:#d8d8d8;word-break:break-all;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2007.09</span></td></tr></tbody></table><p><br /></p>'),(5,'eduResearch','<p style=\"line-height:1.5em;\"><strong><span style=\"font-size:24px;font-family:微软雅黑, &#39;microsoft yahei&#39;;color:#17365d;\">一、研究改革</span></strong></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1. 2012</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">～2013</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">年，2012</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">年度国家级工程实践教育中心获批(</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">教高[2012]8</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">号)</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">，国际商业机器（中国）有限公司-</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">同济大学共建</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2. 2011</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">～2012</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">年，上海高校本科重点教学改革项目，“基于产学研用的软件工程本科教学体系与实践”，负责人</span><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">江建慧教授</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">(</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">沪教委高〔2011</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">〕52</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">号)</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">3. 2008</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">～2011</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">年，国家级教改项目，“高等学校本科教学质量与教学改革工程项目”，建设“服务工程(</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">大型主机技术)</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">”</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">第二类特色专业，负责人黄杰老师</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">4. 2006</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">～2009</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">年，多校联合国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践” (</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">教高司函[2006]239</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">号)</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">，同济大学负责人黄杰老师</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">5. 2009</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">～2010</span><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">年，同济大学“实验教学改革专项基金”项目，项目名称：大型机应用开发实用技能系列实验课程建设，负责人：高珍</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\"><br /></span></p><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:24px;color:#0f243e;\">二、教改论文</span></strong></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;text-indent:32px;color:#7f7f7f;font-size:12px;\">在多年校企合作主机人才培养过程中，我们积累了丰富的教学教改经验，发表多篇教改论文，列表如下。</span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;text-indent:32px;color:#7f7f7f;font-size:12px;\"></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;text-indent:32px;color:#7f7f7f;font-size:12px;\"><br /></span></p><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;text-indent:32px;color:#7f7f7f;font-size:12px;\"></span></p><table width=\"731\"><tbody><tr><td valign=\"top\" style=\"word-break:break-all;background-color:#EBF1DD;border-color:#262626;\" height=\"11\" width=\"48\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">姓名</span></strong><br /></p></td><td valign=\"top\" style=\"word-break:break-all;background-color:#EBF1DD;border-color:#262626;\" height=\"11\" width=\"291\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">论文题目</span></strong></p></td><td valign=\"top\" style=\"background-color:#EBF1DD;border-color:#262626;word-break:break-all;\" height=\"11\" width=\"84\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">刊登期刊名称</span></strong></p></td><td valign=\"top\" style=\"word-break:break-all;background-color:#EBF1DD;border-color:#262626;\" height=\"11\" width=\"37\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">年度</span></strong><br /></p></td><td valign=\"top\" style=\"word-break:break-all;background-color:#EBF1DD;border-color:#262626;\" height=\"11\" width=\"30\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">期数</span></strong></p></td><td valign=\"top\" style=\"word-break:break-all;background-color:#EBF1DD;border-color:#262626;\" height=\"11\" width=\"30\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">排名</span></strong></p></td><td valign=\"top\" style=\"word-break:break-all;background-color:#EBF1DD;border-color:#262626;\" height=\"11\" width=\"64\"><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">类别</span></strong><br /></p></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">高珍</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">大型主机系统管理人才培养模式探索</span><br /></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">计算机教育</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2012</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">12</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">C类期刊</span><br /></p></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">唐剑锋</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">大型主机数据库系统课程的教改出路</span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">计算机教育</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2011</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">12</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">C类期刊</span></p></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">唐剑锋</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">多媒体教学与大型主机教学改革创新</span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">计算机教育</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2008</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">19</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">C类期刊</span></p></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">黄杰</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">《主机银行业务应用案例分析》实践教学模式的探索</span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">计算机教育</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2008</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">19</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">C类期刊</span></p></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">王敏</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">交叉学科及其双语教学的实践和探讨</span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">计算机教育</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2008</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">19</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">C类期刊</span></p></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">高珍</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">Research on the TalentCultivation in Mainframe System Administration Field</span><span style=\"font-size:14px;font-family:宋体;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">，参见</span><a href=\"http://ecc.marist.edu/conf2009/presentations.php\" target=\"_blank\"><span lang=\"EN-US\" style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">http://ecc.marist.edu/conf2009/presentations.php</span></a></span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">美国ECC会议上发表</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2009</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><br /></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><br /></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">黄杰</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">Practice of MainframeEducation in Tongji University</span><span style=\"font-size:14px;font-family:宋体;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">，参见</span><a href=\"http://ecc.marist.edu/conf2009/presentations.php\" target=\"_blank\" style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;text-decoration:underline;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">http://ecc.marist.edu/conf2009/presentations.php</span></a></span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">美国ECC会议上发表</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2009</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><br /></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><br /></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">冯巾松</span><br /></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span lang=\"EN-US\" style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">Mainframe Course Syllabusprovided in Tongji University</span><span style=\"font-size:14px;font-family:宋体;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">，参见</span><a href=\"http://ecc.marist.edu/conf2009/presentations.php\" target=\"_blank\"><span lang=\"EN-US\" style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;\">http://ecc.marist.edu/conf2009/presentations.php</span></a></span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">美国ECC会议上发表</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2009</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><br /></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><br /></td></tr><tr><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">黄杰</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">开放式大型主机实践教学模式的探索</span></p></td><td valign=\"top\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">计算机教育</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2007</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">22</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span></p></td><td valign=\"top\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">C类期刊</span></p></td></tr><tr><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#262626;\" width=\"48\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">黄杰</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#262626;\" width=\"291\"><p style=\"line-height:1.5em;\"><span style=\"font-size:14px;font-family:微软雅黑, &#39;microsoft yahei&#39;;\">基于校企合作的软件工程教育创新实践</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"border-color:#262626;word-break:break-all;\" width=\"84\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">计算机系统应用</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#262626;\" width=\"37\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">2006</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">12</span><br /></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#262626;\" width=\"30\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">1</span></p></td><td valign=\"top\" colspan=\"1\" rowspan=\"1\" style=\"word-break:break-all;border-color:#262626;\" width=\"64\"><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:14px;\">C类期刊</span></p></td></tr></tbody></table><p style=\"line-height:1.5em;\"><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;text-indent:32px;color:#7f7f7f;font-size:12px;\"></span><br /></p><p style=\"line-height:1.5em;\"><strong><span style=\"font-family:微软雅黑, &#39;microsoft yahei&#39;;font-size:24px;color:#0f243e;\"></span></strong><br /></p><p style=\"line-height:1.5em;\"><strong><span style=\"font-size:24px;font-family:微软雅黑, &#39;microsoft yahei&#39;;color:#17365d;\"></span></strong><br /></p>'),(6,'contestProject','contestProject'),(7,'inresearchProject','inresearchProject'),(8,'serverRes','serverRes');
/*!40000 ALTER TABLE `portal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profilesort`
--

DROP TABLE IF EXISTS `profilesort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profilesort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sortname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profilesort`
--

LOCK TABLES `profilesort` WRITE;
/*!40000 ALTER TABLE `profilesort` DISABLE KEYS */;
INSERT INTO `profilesort` VALUES (1,'教材建设','textbook'),(2,'科研','research'),(3,'course','course'),(4,'expert','expert'),(5,'eduResearch','eduResearch'),(6,'contestProject','contestProject'),(7,'inresearchProject','inresearchProject'),(8,'serverRes','serverRes');
/*!40000 ALTER TABLE `profilesort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res`
--

DROP TABLE IF EXISTS `res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `res` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK14080791025BE` (`news_id`) USING BTREE,
  CONSTRAINT `res_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res`
--

LOCK TABLES `res` WRITE;
/*!40000 ALTER TABLE `res` DISABLE KEYS */;
/*!40000 ALTER TABLE `res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research_project`
--

DROP TABLE IF EXISTS `research_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `research_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `sort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_project`
--

LOCK TABLES `research_project` WRITE;
/*!40000 ALTER TABLE `research_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `research_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'slider','slider');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_contest`
--

DROP TABLE IF EXISTS `student_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_contest`
--

LOCK TABLES `student_contest` WRITE;
/*!40000 ALTER TABLE `student_contest` DISABLE KEYS */;
INSERT INTO `student_contest` VALUES (1,'contest','contest',NULL);
/*!40000 ALTER TABLE `student_contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userSrot` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-12  0:47:34
