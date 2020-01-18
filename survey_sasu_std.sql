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
-- Table structure for table `sasu_std`
--

DROP TABLE IF EXISTS `sasu_std`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `sasu_std` VALUES ('201887082','9907011865001','박재홍1','M','소프트웨어전공','1041645367','dkxltks25@naver.com','C193D33A0680FD028D15E96E84BC97C8E850F3548D305DB1EAEA62EE086EA5D378EA1BF5FAC6C381BDB871D68AA8AA55DDCBB15686D3D7020139D6754A59D24A','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887083','9907021865002','박재홍2','M','소프트웨어전공','1041645368','dkxltks25@naver.com','D6D57874ACC965C0E4F8387DFD3FAA11654342B86B82AACEDB015E839A7BA13D5F00A59BFC3F86A24F182DA970B7484D84ED9C863214713D4AAF69447B3EC327','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887084','9907031865003','박재홍13','M','소프트웨어전공','1041645369','dkxltks25@naver.com','757A2CB752DED96504B3FBD35F18D098968A41D702E84F340001D2A1F3013152B99EA3FCB74353290A5F6C5156AE20575622AA05E4E5F242DE87CB95B5355787','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887085','9907041865004','박재홍14','M','소프트웨어전공','1041645370','dkxltks25@naver.com','F1CEBB9B76B96E07C89F76C54D0E421102054646120A8086EE54FE961FD846B89475D82D3672700268D5C43FB4CBE47C75AD2C5A86CE321925852F3AFF2807B6','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887086','9907051865005','박재홍15','M','소프트웨어전공','1041645371','dkxltks25@naver.com','35DE65CADAFD19C62B811F8AE48FE8EF3AAFF31B5547C07857EE565EAB898C9CDE1412AEE61D34A975771D2D4E682ED1CF14483064E2F8D5599A2932F5D94699','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887087','9907061865006','박재홍16','M','소프트웨어전공','1041645372','dkxltks25@naver.com','6C2BDAE7BF5727AB82CFA229A363FCDA50599652266CAAD95A1AE4F678B8D7B0CD33CA3AE6513511725C9F98F56CDD95B97CC25EAEF74ABE97B9F88DD2DAB331','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887088','9907071865007','박재홍17','M','소프트웨어전공','1041645373','dkxltks25@naver.com','09322AFA88440AD9A40A42C70D0A92BAA04B740E0A32DD35CCD134F34A70E3E49C2CB88576611A3F0AD0F9506792B3FDD5CD4A83FB9175EAC0A8FD9E7CC3BEC0','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887089','9907081865008','박재홍18','M','소프트웨어전공','1041645374','dkxltks25@naver.com','2E0D47637979ED096ADD97EEB906F5AB9321673D26EEB14E54DFE18810482FDCF96A3805B2EBD1FC459795C28AFE120419B46719C5DB20ECCE617946F86DCCB9','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887090','9907091865009','박재홍19','M','소프트웨어전공','1041645375','dkxltks25@naver.com','52B33B73DE1DBBD1F113AC75D9C13F8494BC58813B944A0F577FF312A1CE30973425AE636232C881C465126AFA9280F20F77DF64AB41D424E6A657F8EA512EC1','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887091','9907101865010','박재홍10','M','소프트웨어전공','1041645376','dkxltks25@naver.com','0D12CB6718CAD9BBA42C8142ADC57B887F5DB334676CE49AC6C6A78FFAB8DA68581855E40F233DB12E163AF7D88008C16FF973FA059462B0D318465D96EE5DDD','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887092','9907111865011','박재홍12','M','소프트웨어전공','1041645377','dkxltks25@naver.com','3AD869C4E511F0B95D039227577658BD571DF6C192F82FB79311C5309E6C926C5FFE11C039B968A58AD2C115FB5DAEE567913FF134F0D29EB463AFADD6B408D6','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887093','9907121865012','박재홍1','M','소프트웨어전공','1041645378','dkxltks25@naver.com','B6DE42D3500E58EBA981EDEB2A24FE3FB2380B8ED8BAED401D86E353E4269E0EC108E3132A88E450811CAE3E884F8100F7C0D26FD26BBF229A8FBB09AF41DD10','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887094','9907131865013','박재홍1','F','소프트웨어전공','1041645379','dkxltks25@naver.com','0D9FDCD274AFB84B2060BC1FA744B80F9762756AA604B820627ADB4275712DC686EC66DB01BD966CF5DDD7D342EFCC2CC7F4F1F1852E6E7F6BFC99295F969D90','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887095','9907141865014','박재홍1','F','소프트웨어전공','1041645380','dkxltks25@naver.com','3A68AFEDD302DB1203CC972416D433E3F5C319CEC202B7552C7C8DD4D03110666A342E58BD3435974024E5F5491B9B9C8A5CB9DE8775714A8B7CD237FB421A03','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887096','9907151865015','박재홍1','F','소프트웨어전공','1041645381','dkxltks25@naver.com','A9CA94DEB75BDDFD1FD50580293AD20F08A69095D57C0FE6A157E680335FE4C61A4E9778026757CDA864EED8518760CF133EE3C24D276B6747417E44F8C4423E','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887097','9907161865016','박재홍1','F','소프트웨어전공','1041645382','dkxltks25@naver.com','D6A56A75A247A90BCD78B01F31BF81B7B8B1ABBBA46309CD6415E3818D116CEB75C449D97446BE1C1698D12DFD177B04775900D2A5DAB680094EACF6414DCF1B','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887098','9907171865017','박재홍1','F','소프트웨어전공','1041645383','dkxltks25@naver.com','736C0CDE14A07B09E38EBD3B02823F7F5AC9108262D2D97FB60D28EC28DBAEA3992FE6525475C6924952B69DEEE817FE9EB04F311BF335F32B265E5F466217E0','2020-01-16 13:27:55','A','dkxltks25:박재홍'),('201887099','9907181865018','박재홍1','F','소프트웨어전공','1041645384','dkxltks25@naver.com','DEBAC99458C13FB681C2B375170EEF5085A13F4C0CAABD1B138167A1CCDC388DDB07CB30048B440BB1AE0DD3534C13EEB01E55338235D5D3278BD252C691C5AE','2020-01-16 13:27:54','A','dkxltks25:박재홍'),('201887100','9907191865019','박재홍1','F','소프트웨어전공','1041645385','dkxltks25@naver.com','EE878F23BCCDE5D96C9A5CB073C2C648403594FA3CAB8D22BD81042C24627A87615F841156F8EE13B844E4B1ABDDB0EA723B323D5B25A2E64727D3B5AF54B7DB','2020-01-16 13:27:54','A','dkxltks25:박재홍'),('201887101','9907201865020','박재홍1','F','소프트웨어전공','1041645386','dkxltks25@naver.com','FF8850D71534D1837DE701859839234F8EF4033B0139671FA2DD5500302BAB72C1614F657450FA85EA28BAAA09F38BB8B11095F56D670BE605831A0D6B41F93A','2020-01-16 13:27:54','A','dkxltks25:박재홍'),('201887102','9907211865021','박재홍1','F','소프트웨어전공','1041645387','dkxltks25@naver.com','8F168156E0C9005BCB1F48C898DEE9732E6BAB622AF5A8F57CDDDEA1F920E039B27D8664B48D29825BD54A1B2EAE610D16C75164C748923463C295BF166DE2E0','2020-01-16 13:27:54','A','dkxltks25:박재홍'),('201887103','9907221865022','박재홍1','F','소프트웨어전공','1041645388','dkxltks25@naver.com','48C1955A1541F94562E346E2567889DBAB926CC1D130230121D49CA2599A86234F2862C74CA98517A9A15F4DE3C28CFA39A0D4BC301F92233626005518AA6243','2020-01-16 13:27:54','A','dkxltks25:박재홍'),('201887104','9907231865023','박재홍1','F','소프트웨어전공','1041645389','dkxltks25@naver.com','F75A6E4CAB98E15CB8AC6AF759210F7B36A426F8E6E66195AE3EEE070F07B7F5CDA317F14EA6A9F9B786412B7054D2ED1F488CE2538466870151C409315EB83D','2020-01-16 13:27:54','A','dkxltks25:박재홍'),('201887105','9907241865024','박재홍1','F','소프트웨어전공','1041645390','dkxltks25@naver.com','65B1194D9B28B51F5B09C3508321C3F11B44D9D4BA8342F307D558A8F534724F5C96D5819EC1D681F11D8D156AC39DD0B9B8949E77091DF1B541EBD01B3E64EF','2020-01-16 13:27:54','A','dkxltks25:박재홍'),('201887106','9907251865025','박재홍1','F','소프트웨어전공','1041645391','dkxltks25@naver.com','6B0E743395E805FC09CFDBDCAB74C9E525305FF2EDC531BE0EAD0C8C378ABDE9749DE9F0521424370382D7D164934E0733CC4DC0B43B228953430BEC8E62EB67','2020-01-16 13:27:54','A','dkxltks25:박재홍');
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

-- Dump completed on 2020-01-18 12:53:29
