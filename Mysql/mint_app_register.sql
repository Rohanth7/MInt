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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `sno` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `imei` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `phn` varchar(15) NOT NULL,
  `balance` int(200) unsigned DEFAULT NULL,
  `pin` int(50) DEFAULT NULL,
  `image` blob,
  `lastname` varchar(45) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `aadhar` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT 'False',
  PRIMARY KEY (`sno`,`aadhar`),
  UNIQUE KEY `imei` (`imei`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'Emulator','358240051111110','jai@tej.com','Jaitej@123','8639082091',100000,12345,'',NULL,NULL,NULL,NULL,'634624635235','True'),(2,'Bhavya','862926047911733','cutm@ap.com','Bhavya@12','7032198466',1130,12345,'',NULL,NULL,NULL,NULL,'624624634523','True'),(3,'Jaitej Rapeti','863448037202238','jai@tej.com','Jaitej@123','8639082091',240701,12345,'',NULL,NULL,NULL,NULL,'463947294729','True'),(4,'Tirumala','864829038154495','tirumala123@gmail.com','Asd@123','9603468002',54376,12345,'',NULL,NULL,NULL,NULL,'735346235634','False'),(5,'Subrahmanyam','868860047409154','mvr.subbu@gmail.com','Test@123','8096135920',20000000,12345,'',NULL,NULL,NULL,NULL,'840274927475','True'),(6,'tgg','864000039603290','test123@test.com','Test@123456','7981980819',1000,12345,'',NULL,NULL,NULL,NULL,'018302748208','False'),(7,'Nikhilesh Reddy','352093094119798','nikki@gmail.com','Nikki@123','6300493616',1000,12345,'',NULL,NULL,NULL,NULL,'019374923749','True'),(8,'jhjh','867249041576161','test@test.com','Test@123','9178874025',1000,12345,'',NULL,NULL,NULL,NULL,'028493740927','False'),(9,'Sankeerthana','358958064641175','sankeerthana@test.com','Abc@123','9703335112',3200,12345,'',NULL,NULL,NULL,NULL,'209472749197','True'),(26,'123','123456789065877','123456@123.com',NULL,'1234567900',0,NULL,NULL,'123g','123','123','123','123456789012','False'),(27,'gsdf','123456789009876','nfg@gag.com',NULL,'1234567890',0,NULL,NULL,'sfdsf','wqd','esdf','sd','098765432112','False'),(28,'cxv','123456789067953','nefc@gv.com',NULL,'1234567890',0,NULL,NULL,'xcv','dsf','sdf','sdf','123456789064','True'),(29,'ef','123456789058485','ef@feaf.com',NULL,'1234567890',0,NULL,NULL,'dsf','dsf','sdf','sdf','123456789098','False'),(30,'df','123456789098231','dfd@sf.com',NULL,'1234567890',0,NULL,NULL,'df','f','f','f','123456789092','False'),(31,'wr','123456789018463','ef@ed.com',NULL,'1234567890',0,NULL,NULL,'wr','f','f','f','257357354734','False'),(32,'er','123456789000000','fdgdf@dgd.dfgd',NULL,'1234567890',0,NULL,NULL,'er','f','f','f','123456789011','False'),(141,'sai','748295637485937','saitej@gmail.com',NULL,'1234567890',0,NULL,NULL,'tej','g','g','g','749583957394','False'),(143,'dummy','123456789033333','mrohanth@gmail.pom',NULL,'1234567890',0,NULL,NULL,'dummy','dummy','dummy','dummy','123456789321','False'),(144,'d','123456789044444','df@sd.df',NULL,'1234567890',0,NULL,NULL,'d','d','d','d','123456789077','False'),(149,'Sai ','364892749274892','mrohanth@gmail.com',NULL,'7993328393',NULL,NULL,NULL,'Rohanth','Seethammadhara','vizag','AP','384937485738','False');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22  1:36:34
