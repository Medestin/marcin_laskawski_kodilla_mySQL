-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kodilla_course
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `issues` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ISSUESLIST_ID` bigint(20) unsigned NOT NULL,
  `SUMMARY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASSIGNED_USER_ID` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ISSUESLIST_ID` (`ISSUESLIST_ID`),
  KEY `ASSIGNED_USER_ID` (`ASSIGNED_USER_ID`),
  CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`ISSUESLIST_ID`) REFERENCES `issueslists` (`id`),
  CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`ASSIGNED_USER_ID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1,'Task to do no.1','Please do task number 1 as fast as possible, I mean, go get me a coffee.',1),(2,1,'Task to do no.2','Alright, now it\'s coffee & cigarette time, so go away for 5 minutes',1),(3,1,'Task to do no.3','Gonna take a shower, somebody make me breakfast.',2),(4,1,'Task to do no.4','Eating time, so again, leave me alone or I\'m gonna bust some heads.',2),(5,1,'Task to do no.5','Now I can finally start coding while you clean the house.',3),(6,2,'In progress no.1','SLEEP',4),(7,2,'In progress no.1','MORE SLEEEP',4),(8,2,'In progress no.1','NAP TIME',4),(9,2,'In progress no.1','FIVE MORE MINUTES',4),(10,2,'In progress no.1','GOTTA GET UP AT SOME POINT',4),(11,3,'Done no.1','Evening shower',4),(12,3,'Done no.2','You, yeah you, are you gonna start making supper yourself or do you need my foot up your butt?',5),(13,3,'Done no.3','Some late night coding.',4),(14,3,'Done no.4','A smoke break, because I can.',4),(15,3,'Done no.5','Brushing teeth and going to bed.',4);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-16 23:20:04
