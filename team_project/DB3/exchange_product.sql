-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exchange
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pro_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '물품번호',
  `pro_name` varchar(50) NOT NULL COMMENT '물품명',
  `pro_contents` varchar(1000) DEFAULT NULL COMMENT '물품설명',
  `pro_photo_01` varchar(100) DEFAULT NULL COMMENT '물품사진',
  `pro_photo_02` varchar(100) DEFAULT NULL,
  `pro_photo_03` varchar(100) DEFAULT NULL,
  `pro_regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `pro_location` varchar(100) NOT NULL COMMENT '교환장소',
  `pro_hash` varchar(100) DEFAULT NULL COMMENT '해시태그',
  `pro_cnt` int(11) NOT NULL COMMENT '조회수',
  `mem_idx` int(11) NOT NULL COMMENT '물품주인',
  `bra_idx` int(11) NOT NULL COMMENT '브랜드번호',
  PRIMARY KEY (`pro_idx`),
  KEY `FK_member_TO_product` (`mem_idx`),
  KEY `FK_brand_TO_product` (`bra_idx`),
  CONSTRAINT `FK_brand_TO_product` FOREIGN KEY (`bra_idx`) REFERENCES `brand` (`bra_idx`),
  CONSTRAINT `FK_member_TO_product` FOREIGN KEY (`mem_idx`) REFERENCES `member` (`mem_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='물품';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'1','1','1',NULL,NULL,'2018-04-23 11:36:22','1','1',1,1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25  9:42:19
