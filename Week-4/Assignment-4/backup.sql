-- MySQL dump 10.13  Distrib 8.0.32, for macos12.6 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `assignment`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `assignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `assignment`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `authorId` int NOT NULL,
  `status_` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  `publishedAt` datetime DEFAULT NULL,
  `title` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text,
  `categoryId` int DEFAULT NULL,
  `metaTitle` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `metaDesc` varchar(130) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authorId` (`authorId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `user` (`id`),
  CONSTRAINT `article_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,31,'deleted','2023-02-03 03:10:24',NULL,NULL,'0.6vetfsxy',NULL,NULL,NULL,NULL),(2,31,'published','2023-02-03 03:19:50',NULL,NULL,'0.le07fxgy',NULL,NULL,NULL,NULL),(3,40,'draft','2023-02-03 03:19:50',NULL,NULL,'0.5hpbr6gm',NULL,NULL,NULL,NULL),(4,39,'published','2023-02-03 03:19:50',NULL,NULL,'0.poh8fq0z',NULL,NULL,NULL,NULL),(5,31,'published','2023-02-03 03:19:50',NULL,NULL,'0.25f3n4cy',NULL,NULL,NULL,NULL),(6,38,'archived','2023-02-03 03:19:50',NULL,NULL,'0.hs1atd1s',NULL,NULL,NULL,NULL),(7,30,'published','2023-02-03 03:19:50',NULL,NULL,'0.qouskvft',NULL,NULL,NULL,NULL),(8,39,'deleted','2023-02-03 03:19:50',NULL,NULL,'0.c7b4zgen',NULL,NULL,NULL,NULL),(9,35,'archived','2023-02-03 03:19:50',NULL,NULL,'0.ua8sn76l',NULL,NULL,NULL,NULL),(10,33,'deleted','2023-02-03 03:19:50',NULL,NULL,'0.fef5jas8',NULL,NULL,NULL,NULL),(11,35,'published','2023-02-03 03:19:50',NULL,NULL,'0.qfas2xw3',NULL,NULL,NULL,NULL),(12,38,'draft','2023-02-03 03:19:50',NULL,NULL,'0.m3lsqa64',NULL,NULL,NULL,NULL),(13,30,'draft','2023-02-03 03:19:50',NULL,NULL,'0.f5nrinnq',NULL,NULL,NULL,NULL),(14,35,'archived','2023-02-03 03:19:50',NULL,NULL,'0.1v3q2wss',NULL,NULL,NULL,NULL),(15,38,'published','2023-02-03 03:19:50',NULL,NULL,'0.yujmelvf',NULL,NULL,NULL,NULL),(16,39,'archived','2023-02-03 03:19:50',NULL,NULL,'0.alaqtqko',NULL,NULL,NULL,NULL),(17,31,'deleted','2023-02-03 03:19:50',NULL,NULL,'0.nzupbmnd',NULL,NULL,NULL,NULL),(18,39,'archived','2023-02-03 03:19:50',NULL,NULL,'0.7cpjk8vt',NULL,NULL,NULL,NULL),(19,38,'archived','2023-02-03 03:19:50',NULL,NULL,'0.ign3zmad',NULL,NULL,NULL,NULL),(20,38,'archived','2023-02-03 03:19:50',NULL,NULL,'0.ylv2hbsm',NULL,NULL,NULL,NULL),(21,40,'draft','2023-02-03 03:19:50',NULL,NULL,'0.yevtjiaz',NULL,NULL,NULL,NULL),(22,40,'deleted','2023-02-03 03:19:50',NULL,NULL,'0.1mss6wem',NULL,NULL,NULL,NULL),(23,33,'deleted','2023-02-03 03:19:50',NULL,NULL,'0.py8vns11',NULL,NULL,NULL,NULL),(24,35,'draft','2023-02-03 03:19:50',NULL,NULL,'0.gxfam7ru',NULL,NULL,NULL,NULL),(25,30,'draft','2023-02-03 03:19:50',NULL,NULL,'0.5ij9rvrh',NULL,NULL,NULL,NULL),(26,38,'draft','2023-02-03 03:19:50',NULL,NULL,'0.4lcs6kjc',NULL,NULL,NULL,NULL),(27,38,'archived','2023-02-03 03:19:50',NULL,NULL,'0.fwx23v1v',NULL,NULL,NULL,NULL),(28,40,'published','2023-02-03 03:19:50',NULL,NULL,'0.zrvaytsc',NULL,NULL,NULL,NULL),(29,35,'published','2023-02-03 03:19:50',NULL,NULL,'0.cv9quzw0',NULL,NULL,NULL,NULL),(30,31,'archived','2023-02-03 03:19:50',NULL,NULL,'0.t5d4wepo',NULL,NULL,NULL,NULL),(31,38,'archived','2023-02-03 03:19:50',NULL,NULL,'0.39x6xj14',NULL,NULL,NULL,NULL),(32,40,'deleted','2023-02-03 03:19:50',NULL,NULL,'0.thvbioh0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `articleType` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `articleId` int NOT NULL,
  `content` text,
  `updatedAt` datetime DEFAULT NULL,
  `publishedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articleId` (`articleId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`articleId`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (30,'addie@gmail.com','$2a$08$hRRcNtDKVzqh9f4fAaG4V.FGjbreG81x15BIiqdLsD.T154dUlCCC'),(31,'123@gmail.com','$2a$08$e/mQ7ihqK5FUThTakTBkvuSqLz2a.T.FswKFPQkSSSjGwTYJV5lAC'),(33,'12@gmail.com','$2a$08$LuzM6If4ilPemiBnvf2RaeAX2SIIqEVnOoxM3Utbcig7c0O5.FrHu'),(35,'1234@gmail.com','$2a$08$aYd86Z0MUeKBja6fLhY53eDF76qB58Jg.IakWdOWzbZigeABMSfpa'),(38,'12345@g','$2a$08$vPhunpTYEN.sSScarR588ebT4RHMrNsa66adIqkq1zFWgDVRDtNEK'),(39,'123456@g','$2a$08$yJ7PzVfrXo5VwDuOw9PrXuCe9maMpnSBggSSyKABv/3eaP/bnqLkC'),(40,'ali@son','$2a$08$ngb8db.F5qSlXOBMpbuuqef/T515bCiGdJ.FLSexOc2lnyOZc70qu');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03  3:49:36
