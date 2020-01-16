-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: survey
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `sasu_suvitem`
--

DROP TABLE IF EXISTS `sasu_suvitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sasu_suvitem` (
  `suv_itemid` int(11) NOT NULL AUTO_INCREMENT,
  `suv_id` int(11) DEFAULT NULL,
  `suv_item` blob,
  PRIMARY KEY (`suv_itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sasu_suvitem`
--

LOCK TABLES `sasu_suvitem` WRITE;
/*!40000 ALTER TABLE `sasu_suvitem` DISABLE KEYS */;
INSERT INTO `sasu_suvitem` VALUES (1,3,'{\"Title\":{\"Title\":\"신입생을 대상으로 실시하는 간단한 설문조사입니다.\",\"Descrip\":\"2020학년도 신입생 만족도조사\"},\"item\":[{\"Title\":\"테스트입니다\",\"Descrip\":\"테스트입니다만!\",\"Option\":\"0\",\"OptionName\":\"단답형\"},{\"Title\":\"1111\",\"Descrip\":\"1111\",\"Option\":\"1\",\"OptionName\":\"장문형\"},{\"Title\":\"111\",\"Descrip\":\"111111\",\"Option\":\"2\",\"OptionName\":\"객관식1\",\"item\":[\"1\",\"2\",\"3\"]},{\"Title\":\"테스트 그리드입니다.\",\"Descrip\":\"1234567894523\",\"Option\":\"4\",\"OptionName\":\"그리드\",\"item\":{\"Row\":[\"2\",\"2\",\"1\",\"1\",\"1\"],\"Column\":[\"1\",\"2\",\"1\",\"1\"]}}]}'),(2,6,'{\"Title\":{\"Title\":\"123123123\",\"Descrip\":\"설문지1\"},\"item\":[{\"Title\":\"1\",\"Descrip\":\"1\",\"Option\":\"2\",\"OptionName\":\"객관식1\",\"item\":[]}]}'),(3,7,'{\"Title\":{\"Title\":\"\",\"Descrip\":\"2020학년도 식단조사\"},\"item\":[]}'),(4,7,'{\"Title\":{\"Title\":\"\",\"Descrip\":\"2020학년도 식단조사\"},\"item\":[]}'),(5,7,'{\"Title\":{\"Title\":\"\",\"Descrip\":\"2020학년도 식단조사\"},\"item\":[]}'),(6,7,'{\"Title\":{\"Title\":\"\",\"Descrip\":\"2020학년도 식단조사\"},\"item\":[]}');
/*!40000 ALTER TABLE `sasu_suvitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-16 16:41:53
