-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: EMPLOYEESDB
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB-1:10.5.8+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `EMPLOYEESDB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `EMPLOYEESDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `EMPLOYEESDB`;

--
-- Table structure for table `DEPARTMENTS`
--

DROP TABLE IF EXISTS `DEPARTMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTMENTS` (
  `num` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENTS`
--

LOCK TABLES `DEPARTMENTS` WRITE;
/*!40000 ALTER TABLE `DEPARTMENTS` DISABLE KEYS */;
INSERT INTO `DEPARTMENTS` VALUES (10,'ACCOUNTING'),(20,'RESEARCH'),(30,'SALES'),(40,'PRODUCTION'),(200,'BOSS');
/*!40000 ALTER TABLE `DEPARTMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEES`
--

DROP TABLE IF EXISTS `EMPLOYEES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEES` (
  `num` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `dept_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `dept_num` (`dept_num`),
  KEY `manager` (`manager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEES`
--

LOCK TABLES `EMPLOYEES` WRITE;
/*!40000 ALTER TABLE `EMPLOYEES` DISABLE KEYS */;
INSERT INTO `EMPLOYEES` VALUES (99999,'SABALA','SERGIO','OWNER',NULL,'2000-06-04',999999,NULL,200),(7369,'REDLEAF','JANE','SALESMAN',8001,'1990-12-17',104000,NULL,20),(7499,'DERN','BRUCE','SALESMAN',7698,'1990-02-20',15000,390,30),(7521,'ROBINSON','SARAH','SALESMAN',7782,'1991-02-22',16250,650,30),(7566,'DI CAPRIO','LEONARDO','MANAGER',1000,'1991-04-02',29000,NULL,20),(7654,'HERRIMAN','DAMON','SALESMAN',7698,'1991-09-29',16000,1020,30),(7698,'BRONSON','CHARLES','MANAGER',1000,'1991-05-01',30050,NULL,30),(7782,'ROBBIE','MARGOT','MANAGER',1000,'1991-06-09',28850,NULL,10),(7788,'MADISON','MIKEY','ANALYST',8000,'1991-11-09',30000,NULL,20),(7844,'DUNHAM','LENA','SALESMAN',7698,'1991-09-08',13500,0,30),(7876,'RITTEN','REBECCA','EMPLOYEE',7788,'1991-09-23',14300,NULL,20),(7900,'COLLINS','CLIFTON','EMPLOYEE',8001,'1991-12-03',13350,NULL,30),(7902,'ROWLING','KANSAS','ANALYST',8000,'1991-12-03',30000,NULL,20),(7934,'HARRIS','DANIELLE','EMPLOYEE',8001,'1992-01-23',16900,NULL,10),(8000,'QUALLEY','MARGARET','MANAGER',1000,'1991-01-09',28850,NULL,20),(8001,'FANNING','DAKOTA','MANAGER',1000,'1992-06-10',28850,NULL,20);
/*!40000 ALTER TABLE `EMPLOYEES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 16:03:57
