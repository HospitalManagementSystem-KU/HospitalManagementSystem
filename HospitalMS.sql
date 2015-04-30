-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: hospitalms
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_number` int(11) DEFAULT NULL,
  `building` varchar(50) DEFAULT 'undefined',
  `street` varchar(50) DEFAULT 'undefined',
  `city` varchar(50) DEFAULT 'undefined',
  `state` varchar(50) DEFAULT 'undefined',
  `postal_code` int(11) DEFAULT '0',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,28,'Ergo Plaza','Kelvin','Bangkok','Bang Khen',10700),(2,2,'International Dorm','Lund','Bangkok','Bang Khen',10700),(3,71,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(4,16,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(5,42,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(6,22,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(7,19,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(8,18,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(9,17,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(10,12,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(11,11,'BuildingExp','StreetExp','Chiang Mai','Bang Khen',10700),(12,7,'BuildingExp','StreetExp','Phuket','Bang Khen',10700),(13,8,'BuildingExp','StreetExp','Chiang Rai','Bang Khen',10700),(14,68,'BuildingExp','StreetExp','Pai','Bang Khen',10700),(15,28,'BuildingExp','StreetExp','Ayutthaya','Bang Khen',10700),(16,78,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(17,14,'BuildingExp','StreetExp','Chiang Mai','Bang Khen',10700),(18,37,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(19,36,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(20,32,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(21,6,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(22,13,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(23,87,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(24,80,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(25,10,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(26,20,'BuildingExp','StreetExp','Chiang Mai','Bang Khen',10700),(27,30,'BuildingExp','StreetExp','Phuket','Bang Khen',10700),(28,40,'BuildingExp','StreetExp','Chiang Rai','Bang Khen',10700),(29,50,'BuildingExp','StreetExp','Pai','Bang Khen',10700),(30,60,'BuildingExp','StreetExp','Ayutthaya','Bang Khen',10700),(31,70,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(32,90,'BuildingExp','StreetExp','Chiang Mai','Bang Khen',10700),(33,63,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(34,41,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(35,38,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(36,56,'BuildingExp','StreetExp','Bangkok','Bang Khen',10700),(37,3,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(38,4,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(39,99,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(40,98,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(41,97,'BuildingExp','StreetExp','Chiang Mai','Bang Khen',10700),(42,96,'BuildingExp','StreetExp','Phuket','Bang Khen',10700),(43,95,'BuildingExp','StreetExp','Chiang Rai','Bang Khen',10700),(44,94,'BuildingExp','StreetExp','Pai','Bang Khen',10700),(45,93,'BuildingExp','StreetExp','Ayutthaya','Bang Khen',10700),(46,92,'BuildingExp','StreetExp','Pattaya','Bang Khen',10700),(47,91,'BuildingExp','StreetExp','Chiang Mai','Bang Khen',10700);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`app_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`SSN`),
  CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,617861075,1,'2015-05-01 13:00:00'),(2,575315801,2,'2015-05-01 13:15:00'),(3,147896325,4,'2015-05-01 13:15:00'),(4,255478963,12,'2015-05-01 14:15:00'),(5,617861475,7,'2015-05-01 15:15:00'),(6,230140785,3,'2015-05-01 16:15:00'),(7,475240145,5,'2015-05-02 08:15:00'),(8,254789635,8,'2015-05-01 10:15:00'),(9,64578615,9,'2015-05-02 13:15:00'),(10,365410255,10,'2015-05-02 14:15:00'),(11,232145245,11,'2015-05-02 09:30:00');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_charges` int(11) DEFAULT '0',
  `other_charges` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT '0',
  `stay_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `stay_id` (`stay_id`),
  CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`stay_id`) REFERENCES `stay` (`stay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (11,300,70,370,1),(12,300,95,395,2),(13,300,45,345,3),(14,300,55,355,4),(15,300,120,420,5),(16,100,50,150,6),(17,100,40,140,7),(18,100,85,185,8),(19,100,100,200,9);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL DEFAULT '0',
  `department_name` varchar(50) NOT NULL DEFAULT 'undefined',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Quality Pregnancy Center'),(2,'Wellness Center'),(3,'Heart Center'),(4,'Fertility Center'),(5,'Mental Health Clinic'),(6,'Comprehensive Neurology Center'),(7,'Gynecologic Cancer Treatment Center'),(8,'Gastrointestinal System and Liver Clinic'),(9,'Gynecologic Laparoscopic Surgery Center'),(10,'Urinary Tract Center'),(11,'Breast Cancer Center'),(12,'Diagnostic Digital Imaging Center'),(13,'Skin and Cosmetic Surgery Center'),(14,'Respiratory Center'),(15,'Diabetes Center'),(16,'Minimally Invasive Surgery Center'),(17,'Dental Center'),(18,'Children & Teen Center'),(19,'Orthopaedic Center'),(20,'Operations Department'),(21,'Laboratory Department'),(22,'Nutrition Department'),(23,'Hemodialysis Department'),(24,'Emergency Department'),(25,'Physical Therapy Department'),(26,'ICU and CCU Department'),(27,'Eye, Ear, Nose and Throat Clinic'),(28,'Stroke and Cardiovascular Emergency Center'),(29,'Advanced Laparoscope Surgery Center'),(30,'General Medicine Clinic');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL DEFAULT 'undefined',
  `last_name` varchar(50) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  UNIQUE KEY `email` (`email`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'James','Shaw',1,7500,'2008-12-21','jshaw@hospital.com','454111258'),(2,'Ann','Humpries',4,7700,'2009-01-11','ahumpries@hospital.com','11258789'),(3,'Chris','Berkeley',3,8500,'2003-04-04','cberkeley@hospital.com','587871258'),(4,'Carla','Gomez',2,6500,'2010-12-28','cgomez@hospital.com','541871258'),(5,'Clara','Rodriguez',1,7900,'2009-01-15','crodriguez@hospital.com','464611258'),(6,'Paul','Clark',1,9500,'2006-01-18','pclark@hospital.com','258456321'),(7,'Clem','Martin',7,6500,'2012-12-21','cmartin@hospital.com','147856358'),(8,'Juan','Lopez',18,7500,'2008-01-01','jlopez@hospital.com','878953478'),(9,'Gillaume','Hostis',1,7500,'2008-12-21','ghostis@hospital.com','454111258'),(10,'Necati','Kartal',24,9500,'2006-05-11','nkartal@hospital.com','834561258'),(11,'Berk','Ozer',24,7700,'2009-03-06','bozer@hospital.com','753159468'),(12,'Kaan','Temur',24,8250,'2008-06-25','ktemur@hospital.com','874369512'),(13,'Ece','Metin',24,5500,'2013-07-14','emetin@hospital.com','753214789'),(14,'Tuba','Naz',24,6500,'2007-02-21','tnaz@hospital.com','789451258'),(15,'Tomas','Durcak',27,8100,'2008-08-21','tdurcak@hospital.com','454111258'),(16,'Franck','Oak',27,7650,'2009-12-21','foak@hospital.com','454111258'),(17,'Aaron','Hart',27,9200,'2007-03-29','ahart@hospital.com','454111258'),(18,'Joe','Wilson',27,5200,'2010-12-21','jwilson@hospital.com','454111258'),(19,'Paul','Chris',27,8500,'2008-01-02','pchris@hospital.com','454111258');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication` (
  `medication_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`medication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (1,'Glifor','diabetic','Description of related drug'),(2,'Nexium','gastronomic','Description of related drug'),(3,'Axid','gastronomic','Description of related drug'),(4,'Pravachol','Cardiologic','Description of related drug'),(5,'Nesina','diabetic','Description of related drug'),(6,'Invokana','diabetic','Description of related drug'),(7,'Coricidin HBP oral','OTC','Description of related drug'),(8,'Triaminic Cough-Sore Throat','OTC','Description of related drug'),(9,'Cipro','antibiotic','Description of related drug');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `first_name` varchar(50) NOT NULL DEFAULT 'undefined',
  `last_name` varchar(50) NOT NULL DEFAULT 'undefined',
  `SSN` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `date_of_birth` date NOT NULL,
  `gender` tinytext,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`SSN`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES ('Kim','Hong',10201405,'10101','1961-05-22','M',18),('Maria','Rey',64578615,'222222','1959-04-11','F',8),('Marta','Pal',65102545,'11441','1956-06-18','F',16),('Derrick','Lunde',75001465,'1453','1949-08-18','M',17),('Sergei','Paplinski',87511115,'444555','1964-06-21','M',12),('Julia','Kindsey',147890253,'58754','1944-12-01','F',21),('Emily','Lopes',147896325,'45445','1971-12-12','F',3),('Jennifer','Caroll',187400315,'11111','1959-03-11','F',14),('Jorge','Costa',196320175,'00002','1953-02-17','M',13),('Carlos','Manu',230140785,' 15478','1984-01-05','M',5),('Luke','Wintekar',232145245,'01111','1951-12-12','M',11),('Manuel','Sanchez',254789635,'11111 ','1955-02-04','M',7),('Enrique','Gonzales',255478963,' 44455','1990-01-15','M',4),('May','Kendricjk',302358745,'01044','1981-04-29','F',20),('Laura','Gome',365410255,'11111 ','1969-04-04','F',9),('Antonio','Navas',475240145,'10101','1960-01-04','M',6),('Hakeem','Lennon',530009875,'14441','1949-01-25','M',22),('Fede','Gustavo',547863215,'11111','1968-06-04','F',10),('Julie','Hart',575315801,'455545','1991-04-21','F',2),('Rita','Acosta',617861075,'4444','1994-01-22','F',1),('Rita','Acosta',617861475,' ','1994-01-22','F',4),('Holly','Brown',654720055,'41055','1946-05-12','F',15),('Jenny','Hannah',963535355,'33333','1970-01-07','F',19);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescriptions` (
  `pres_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `medication_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pres_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  KEY `medication_id` (`medication_id`),
  CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`SSN`),
  CONSTRAINT `prescriptions_ibfk_4` FOREIGN KEY (`medication_id`) REFERENCES `medication` (`medication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,530009875,5,'2015-04-28',7),(2,530009875,5,'2015-04-28',4),(3,147890253,7,'2015-04-28',5),(4,302358745,8,'2015-04-28',5),(5,963535355,12,'2015-04-28',7),(6,10201405,7,'2015-04-28',3),(7,75001465,15,'2015-04-28',2),(8,75001465,11,'2015-04-28',1),(9,654720055,9,'2015-04-28',2),(10,187400315,12,'2015-04-28',1),(11,196320175,8,'2015-04-28',4),(12,87511115,6,'2015-04-28',5),(13,87511115,15,'2015-04-28',6),(14,232145245,12,'2015-04-28',4),(15,232145245,10,'2015-04-28',6),(16,547863215,9,'2015-04-28',7),(17,547863215,11,'2015-04-28',5),(18,64578615,8,'2015-04-28',4);
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `room_no` int(5) NOT NULL DEFAULT '0',
  `room_type` varchar(50) NOT NULL DEFAULT 'undefined',
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,'Single'),(102,'Single'),(103,'Single'),(104,'Single'),(105,'Single'),(106,'Single'),(107,'Single'),(108,'Single'),(109,'Single'),(110,'Double'),(111,'Single'),(201,'Double'),(202,'Double'),(203,'Double'),(204,'Double'),(205,'Double'),(206,'Double'),(207,'Double'),(208,'Double'),(209,'Double'),(210,'Double'),(211,'Double'),(301,'Single'),(302,'Single'),(303,'Double'),(304,'Single'),(305,'Single'),(306,'Double'),(307,'Single'),(308,'Single'),(309,'Single'),(310,'Double'),(311,'Single'),(401,'Single'),(402,'Double'),(403,'Single'),(404,'Double'),(405,'Single'),(406,'Single'),(407,'Single'),(408,'Double'),(409,'Single'),(410,'Single'),(411,'Single');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stay`
--

DROP TABLE IF EXISTS `stay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stay` (
  `stay_id` int(5) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`stay_id`),
  KEY `patient_id` (`patient_id`),
  KEY `room_no` (`room_no`),
  CONSTRAINT `stay_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`SSN`),
  CONSTRAINT `stay_ibfk_2` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay`
--

LOCK TABLES `stay` WRITE;
/*!40000 ALTER TABLE `stay` DISABLE KEYS */;
INSERT INTO `stay` VALUES (1,64578615,101,'2015-04-25','2015-04-26'),(2,365410255,102,'2015-04-25','2015-04-26'),(3,547863215,103,'2015-04-25','2015-04-26'),(4,232145245,104,'2015-04-25','2015-04-26'),(5,87511115,105,'2015-04-25','2015-04-27'),(6,196320175,106,'2015-04-25','2015-04-27'),(7,187400315,107,'2015-04-25','2015-04-27'),(8,654720055,108,'2015-04-25','2015-04-27'),(9,255478963,109,'2015-04-25','2015-04-27');
/*!40000 ALTER TABLE `stay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-30  8:04:26
