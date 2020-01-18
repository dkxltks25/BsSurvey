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
-- Table structure for table `sasu_suvitem`
--

DROP TABLE IF EXISTS `sasu_suvitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sasu_suvitem` (
  `suv_itemid` int NOT NULL AUTO_INCREMENT,
  `suv_id` int DEFAULT NULL,
  `suv_item` blob,
  PRIMARY KEY (`suv_itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sasu_suvitem`
--

LOCK TABLES `sasu_suvitem` WRITE;
/*!40000 ALTER TABLE `sasu_suvitem` DISABLE KEYS */;
INSERT INTO `sasu_suvitem` VALUES (1,3,_binary '{\"Title\":{\"Title\":\"신입생을 대상으로 실시하는 간단한 설문조사입니다.\",\"Descrip\":\"2020학년도 신입생 만족도조사\"},\"item\":[{\"Title\":\"테스트입니다\",\"Descrip\":\"테스트입니다만!\",\"Option\":\"0\",\"OptionName\":\"단답형\"},{\"Title\":\"1111\",\"Descrip\":\"1111\",\"Option\":\"1\",\"OptionName\":\"장문형\"},{\"Title\":\"111\",\"Descrip\":\"111111\",\"Option\":\"2\",\"OptionName\":\"객관식1\",\"item\":[\"1\",\"2\",\"3\"]},{\"Title\":\"테스트 그리드입니다.\",\"Descrip\":\"1234567894523\",\"Option\":\"4\",\"OptionName\":\"그리드\",\"item\":{\"Row\":[\"2\",\"2\",\"1\",\"1\",\"1\"],\"Column\":[\"1\",\"2\",\"1\",\"1\"]}}]}'),(2,6,_binary '{\"Title\":{\"Title\":\"123123123\",\"Descrip\":\"설문지1\"},\"item\":[{\"Title\":\"1\",\"Descrip\":\"1\",\"Option\":\"2\",\"OptionName\":\"객관식1\",\"item\":[]}]}'),(3,7,_binary '{\"Title\":{\"Title\":\"\",\"Descrip\":\"2020학년도 식단조사\"},\"item\":[]}'),(8,8,_binary '{\"Title\":{\"Title\":\"íµê³ ê¸°ë¥ íì¤í¸ë¥¼ ìí ì¤ë¬¸ì§\",\"Descrip\":\"íµê³ ê¸°ë¥ì íì¤í¸ íê¸°ìí´ì ìëì í­ëª©ë¤ì ì§íí  ìì ìëë¤.\"},\"item\":[{\"Title\":\"ë¨ëµíì ëí ì§ë¬¸ì í´ì£¼ì¸ì\",\"Option\":\"0\",\"OptionName\":\"ë¨ëµí\"},{\"Title\":\"ì¥ë¬¸ì ëí ì¤ëªì ì§íí´ ì£¼ì­ìì¤\",\"Option\":\"1\",\"OptionName\":\"ì¥ë¬¸í\"},{\"Title\":\"ê°ê´ì ì§ë¬¸ì ëí ì§ë¬¸ ìëµì ì§íí´ì£¼ì¸ì\",\"Option\":\"2\",\"OptionName\":\"ê°ê´ì\",\"item\":[\"ì§ë¬¸1\",\"ì§ë¬¸2\",\"ì§ë¬¸3\",\"ì§ë¬¸4\",\"ì§ë¬¸5\"]},{\"Title\":\"ê°ê´ìì§ë¬¸2ìëí ì§ë¬¸ì ì§íí´ì£¼ì¸ì\",\"Option\":\"3\",\"OptionName\":\"ì²´í¬ë°ì¤\",\"item\":[\"ê°ê´ì1\",\"ê°ê´ì2\",\"ê°ê´ì3\",\"ê°ê´ì4\",\"ê°ê´ì5\",\"ê°ê´ì6\",\"ê°ê´ì7\"]},{\"Title\":\"ê²©ì ííì ì¤ë¬¸ì§ ìëë¤.\",\"Option\":\"4\",\"OptionName\":\"ì§ì ë¨ê³\",\"item\":{\"Row\":[\"ë§¤ì° ì¢ì\",\"ì¢ì\",\"ë³´íµ\",\"ì¢ì§ ëª»í¨\",\"ë§¤ì° ì¢ì§ ëª»í¨\"],\"Column\":[\"ê²©ì ì§ë¬¸1\",\"ê²©ì ì§ë¬¸2\",\"ê²©ì ì§ë¬¸3\",\"ê²©ì ì§ë¬¸4\",\"ê²©ì ì§ë¬¸5\",\"ê²©ì ì§ë¬¸6\",\"ê²©ì ì§ë¬¸7\"]}}]}'),(9,9,_binary '{\"Title\":{\"Title\":\"통계 기능 테스트를 위한 설문지\",\"Descrip\":\"통계 기능을 테스트 하기위해서 아래의 항목들을 진행할 예정입니다.\"},\"item\":[{\"Title\":\"테스트\",\"Option\":\"1\",\"OptionName\":\"장문형\"}]}'),(10,10,_binary '{\"Title\":{\"Title\":\"테스트를 위한 테스트 설문지입니다.\",\"Descrip\":\"통계를 위한 테스트 설문지이므로 적당히 참여해주세요\"},\"item\":[{\"Title\":\"단답형 질문에 대한 응답을 해주세요\",\"Option\":\"0\",\"OptionName\":\"단답형\"},{\"Title\":\"장문형에대한 질문을 해주세요\",\"Option\":\"1\",\"OptionName\":\"장문형\"},{\"Title\":\"객관식 질문에 대한 응답을 해주세요\",\"Option\":\"2\",\"OptionName\":\"객관식\",\"item\":[\"질문1\",\"질문2\",\"질문3\",\"질문4 \",\"질문5\"]},{\"Title\":\"객관식2에대한 질문을 해주세요\",\"Option\":\"3\",\"OptionName\":\"체크박스\",\"item\":[\"객관식1\",\"객관식2\",\"객관식3\",\"객관식4\",\"객관식5\",\"객관식6\",\"객관식7\",\"객관식8\"]},{\"Title\":\"격자 설문지 입니다. \",\"Option\":\"4\",\"OptionName\":\"직선단계\",\"item\":{\"Row\":[\"매우 만족\",\"만족\",\"보통\",\"불만족\",\"매우불만족\"],\"Column\":[\"격자 질문1\",\"격자 질문2\",\"격자 질문3\",\"격자 질문4\",\"격자 질문5\",\"격자 질문6\"]}},{\"Title\":\"\"}]}');
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

-- Dump completed on 2020-01-18 12:53:29
