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
-- Table structure for table `sasu_adm`
--

DROP TABLE IF EXISTS `sasu_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sasu_adm` (
  `adm_id` varchar(14) NOT NULL,
  `adm_pw` char(128) DEFAULT NULL,
  `adm_name` varchar(20) DEFAULT NULL,
  `adm_right` char(1) DEFAULT NULL,
  `datasys` datetime DEFAULT NULL,
  `datasys2` varchar(1) DEFAULT NULL,
  `datasys3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sasu_adm`
--

LOCK TABLES `sasu_adm` WRITE;
/*!40000 ALTER TABLE `sasu_adm` DISABLE KEYS */;
INSERT INTO `sasu_adm` VALUES ('123','AD91140B9DB20C99076B83E60AAF5D29EAE3ED01AA740E2636CDD8A08A7F0962F99E8020FA5DE166CB0F117114AA61B3AE1418735663D274740BF241D46828C3','12312312132','M','2020-01-15 20:34:45','U','dkxltks25'),('1234','5775EC159144A3D37EFC90255E98D2F464FE833681667B8677A90562FE3D7A788952073948AE4E33C598A1FBB4B47FF4657C261B2338EAF4696314D89F428934','123','M','2020-01-07 09:25:42','U','dkxltks25'),('12345','3627909A29C31381A071EC27F7C9CA97726182AED29A7DDD2E54353322CFB30ABB9E3A6DF2AC2C20FE23436311D678564D0C8D305930575F60E2D3D048184D79','박재홍','M','2020-01-07 09:16:36','A','dkxltks25'),('dkxltks25','5775EC159144A3D37EFC90255E98D2F464FE833681667B8677A90562FE3D7A788952073948AE4E33C598A1FBB4B47FF4657C261B2338EAF4696314D89F428934','박재홍','M','2020-01-06 16:24:36','A','dkxltks25'),('rnjsdkdud','A66BF83BD872870CF4D683E15372E5469054612B34F06ABB4FA1A1792D15C072166647128E42C6F85414CFFEC6F20707C1B2DC3D62E1952FA153D4CDB6F7B485','권아영','M','2020-01-10 13:38:08','U','dkxltks25'),('ㅁㅁㅁ','3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2','123','M','2020-01-14 13:35:32','A','dkxltks25');
/*!40000 ALTER TABLE `sasu_adm` ENABLE KEYS */;
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
