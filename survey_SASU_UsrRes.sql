-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: survey
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `SASU_UsrRes`
--

DROP TABLE IF EXISTS `SASU_UsrRes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SASU_UsrRes` (
  `UserRes_stuno` varchar(9) NOT NULL,
  `UserRes_Res` blob,
  `SUV_id` int NOT NULL,
  `datasys1` datetime DEFAULT NULL,
  PRIMARY KEY (`UserRes_stuno`,`SUV_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SASU_UsrRes`
--

LOCK TABLES `SASU_UsrRes` WRITE;
/*!40000 ALTER TABLE `SASU_UsrRes` DISABLE KEYS */;
INSERT INTO `SASU_UsrRes` VALUES ('201887082',_binary '[[\"지지지지베이베베이베\"],[\"후힝\"],[1],[0,2,4,6],[4],[3],[2],[1],[2],[3]]',10,'2020-01-17 21:05:50'),('201887083',_binary '[[\"질문입니다만\"],[\"질문이지\"],[0],[0,1],[0],[1],[0],[2],[3],[4]]',10,'2020-01-17 21:04:31'),('201887084',_binary '[[\"후히히히히히\"],[\"123123\"],[3],[6,7],[4],[0],[3],[1],[0],[0]]',10,'2020-01-17 21:06:59');
/*!40000 ALTER TABLE `SASU_UsrRes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-18 12:53:30
