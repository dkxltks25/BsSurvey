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
-- Table structure for table `sasu_suv`
--

DROP TABLE IF EXISTS `sasu_suv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sasu_suv` (
  `SUV_SUVID` int NOT NULL AUTO_INCREMENT,
  `adm_id` varchar(20) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `suv_name` varchar(50) DEFAULT NULL,
  `suv_descrip` varchar(50) DEFAULT NULL,
  `suv_stime` datetime DEFAULT NULL,
  `suv_ftime` datetime DEFAULT NULL,
  `datasys1` datetime DEFAULT NULL,
  `datasys2` varchar(1) DEFAULT NULL,
  `datasys3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SUV_SUVID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sasu_suv`
--

LOCK TABLES `sasu_suv` WRITE;
/*!40000 ALTER TABLE `sasu_suv` DISABLE KEYS */;
INSERT INTO `sasu_suv` VALUES (3,'dkxltks25',NULL,'2020학년도 신입생 만족도조사','신입생을 대상으로 실시하는 간단한 설문조사입니다.','2020-01-16 00:00:00','2020-01-25 00:00:00','2020-01-14 15:37:24','U','dkxltks25 박재홍'),(6,'dkxltks25',NULL,'설문지1','123123123','2020-01-15 20:34:54','2020-01-15 20:34:54','2020-01-15 20:36:13','U','dkxltks25 박재홍'),(7,'dkxltks25',NULL,'2020학년도 식단조사',NULL,'2020-01-16 13:28:13','2020-01-16 13:28:13','2020-01-16 13:28:39','A','dkxltks25 박재홍'),(8,'dkxltks25',NULL,'íµê³ ê¸°ë¥ íì¤í¸ë¥¼ ìí ì¤ë¬¸ì§',NULL,'2020-01-17 20:05:51','2020-01-17 20:05:51','2020-01-17 20:05:51','A','dkxltks25:박재홍'),(9,'dkxltks25',NULL,'통계 기능 테스트를 위한 설문지',NULL,'2020-01-17 20:10:53','2020-01-17 20:10:53','2020-01-17 20:10:53','A','dkxltks25:박재홍'),(10,'dkxltks25',NULL,'테스트를 위한 테스트 설문지입니다.','테스트를 위한 설문지 이므로 적당히 열심히 참여 해주십시요','2020-01-17 00:00:00','2020-01-26 20:22:14','2020-01-17 20:22:14','A','dkxltks25:박재홍');
/*!40000 ALTER TABLE `sasu_suv` ENABLE KEYS */;
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
