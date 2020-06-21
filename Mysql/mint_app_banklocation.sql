-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mint_app
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banklocation`
--

DROP TABLE IF EXISTS `banklocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banklocation` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `ifsc` varchar(45) NOT NULL,
  PRIMARY KEY (`sno`,`ifsc`),
  UNIQUE KEY `ifsc_UNIQUE` (`ifsc`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banklocation`
--

LOCK TABLES `banklocation` WRITE;
/*!40000 ALTER TABLE `banklocation` DISABLE KEYS */;
INSERT INTO `banklocation` VALUES (1,'Andhra Bank','Maddilapalem','ANDH1234098'),(2,'SBI Bank','Seethammadhara','SBIB0987123'),(3,'Union Bank','Marripalem','UBIN3456789'),(4,'SBI Bank','Gajuwaka','SBIB0987124'),(5,'Andhra Bank','Madhurawada','ANDH1234097'),(6,'Andhra Bank','Seethammadhara','ANDH1234096'),(7,'Andhra Bank','Jagadamba','ANDH1234095'),(8,'Kotak Bank','Jagadamba','KOTB0123456'),(9,'Kotak Bank','Maddilapalem','KOTB0123457'),(10,'Axis Bank','Sagar Nagar','AXIB0934684'),(11,'Axis Bank','Asilmetta','AXIB5678432'),(12,'SBI Bank','Dharwad','SBIB0987126'),(13,'Union Bank','Simhacahalam','UBIN0987319'),(14,'SBI Bank','Sujathanagar','SBIB0987125'),(15,'Andhra Bank','hanumanthuwaka','ANDH1234094'),(16,'HDFC Bank','Maddilapalem','HDFC4567890'),(25,'dummy','dummy','ANDH1234088');
/*!40000 ALTER TABLE `banklocation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22  1:36:33
