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
-- Table structure for table `sasu_std`
--

DROP TABLE IF EXISTS `sasu_std`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sasu_std` (
  `stu_stuno` char(9) NOT NULL,
  `stu_resno` varchar(64) DEFAULT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `stu_sex` char(1) DEFAULT NULL,
  `stu_dept` varchar(20) DEFAULT NULL,
  `stu_phone` varchar(15) DEFAULT NULL,
  `stu_email` varchar(30) DEFAULT NULL,
  `stu_password` varchar(256) DEFAULT NULL,
  `datasys1` datetime DEFAULT NULL,
  `datasys2` char(1) DEFAULT NULL,
  `datasys3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`stu_stuno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sasu_std`
--

LOCK TABLES `sasu_std` WRITE;
/*!40000 ALTER TABLE `sasu_std` DISABLE KEYS */;
INSERT INTO `sasu_std` VALUES ('201887094','9907131865013','박재홍1','F','소프트웨어전공','1041645379','dkxltks25@naver.com','0D9FDCD274AFB84B2060BC1FA744B80F9762756AA604B820627ADB4275712DC686EC66DB01BD966CF5DDD7D342EFCC2CC7F4F1F1852E6E7F6BFC99295F969D90','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887095','9907141865014','박재홍1','F','소프트웨어전공','1041645380','dkxltks25@naver.com','3A68AFEDD302DB1203CC972416D433E3F5C319CEC202B7552C7C8DD4D03110666A342E58BD3435974024E5F5491B9B9C8A5CB9DE8775714A8B7CD237FB421A03','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887096','9907151865015','박재홍1','F','소프트웨어전공','1041645381','dkxltks25@naver.com','A9CA94DEB75BDDFD1FD50580293AD20F08A69095D57C0FE6A157E680335FE4C61A4E9778026757CDA864EED8518760CF133EE3C24D276B6747417E44F8C4423E','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887097','9907161865016','박재홍1','F','소프트웨어전공','1041645382','dkxltks25@naver.com','D6A56A75A247A90BCD78B01F31BF81B7B8B1ABBBA46309CD6415E3818D116CEB75C449D97446BE1C1698D12DFD177B04775900D2A5DAB680094EACF6414DCF1B','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887098','9907171865017','박재홍1','F','소프트웨어전공','1041645383','dkxltks25@naver.com','736C0CDE14A07B09E38EBD3B02823F7F5AC9108262D2D97FB60D28EC28DBAEA3992FE6525475C6924952B69DEEE817FE9EB04F311BF335F32B265E5F466217E0','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887099','9907181865018','박재홍1','F','소프트웨어전공','1041645384','dkxltks25@naver.com','DEBAC99458C13FB681C2B375170EEF5085A13F4C0CAABD1B138167A1CCDC388DDB07CB30048B440BB1AE0DD3534C13EEB01E55338235D5D3278BD252C691C5AE','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887100','9907191865019','박재홍1','F','소프트웨어전공','1041645385','dkxltks25@naver.com','EE878F23BCCDE5D96C9A5CB073C2C648403594FA3CAB8D22BD81042C24627A87615F841156F8EE13B844E4B1ABDDB0EA723B323D5B25A2E64727D3B5AF54B7DB','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887101','9907201865020','박재홍1','F','소프트웨어전공','1041645386','dkxltks25@naver.com','FF8850D71534D1837DE701859839234F8EF4033B0139671FA2DD5500302BAB72C1614F657450FA85EA28BAAA09F38BB8B11095F56D670BE605831A0D6B41F93A','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887102','9907211865021','박재홍1','F','소프트웨어전공','1041645387','dkxltks25@naver.com','8F168156E0C9005BCB1F48C898DEE9732E6BAB622AF5A8F57CDDDEA1F920E039B27D8664B48D29825BD54A1B2EAE610D16C75164C748923463C295BF166DE2E0','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887103','9907221865022','박재홍1','F','소프트웨어전공','1041645388','dkxltks25@naver.com','48C1955A1541F94562E346E2567889DBAB926CC1D130230121D49CA2599A86234F2862C74CA98517A9A15F4DE3C28CFA39A0D4BC301F92233626005518AA6243','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887104','9907231865023','박재홍1','F','소프트웨어전공','1041645389','dkxltks25@naver.com','F75A6E4CAB98E15CB8AC6AF759210F7B36A426F8E6E66195AE3EEE070F07B7F5CDA317F14EA6A9F9B786412B7054D2ED1F488CE2538466870151C409315EB83D','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887105','9907241865024','박재홍1','F','소프트웨어전공','1041645390','dkxltks25@naver.com','65B1194D9B28B51F5B09C3508321C3F11B44D9D4BA8342F307D558A8F534724F5C96D5819EC1D681F11D8D156AC39DD0B9B8949E77091DF1B541EBD01B3E64EF','2020-01-14 13:38:06','A','dkxltks25:박재홍'),('201887106','9907251865025','박재홍1','F','소프트웨어전공','1041645391','dkxltks25@naver.com','6B0E743395E805FC09CFDBDCAB74C9E525305FF2EDC531BE0EAD0C8C378ABDE9749DE9F0521424370382D7D164934E0733CC4DC0B43B228953430BEC8E62EB67','2020-01-14 13:38:06','A','dkxltks25:박재홍');
/*!40000 ALTER TABLE `sasu_std` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-15 21:18:39
