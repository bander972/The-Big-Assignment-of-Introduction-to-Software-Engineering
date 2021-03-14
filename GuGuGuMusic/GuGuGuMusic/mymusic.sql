-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mymusic
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `music_user_info`
--

DROP TABLE IF EXISTS `music_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_user_info` (
  `type` int NOT NULL,
  `musicname` char(200) COLLATE utf8mb4_bin NOT NULL,
  `musicsinger` char(200) COLLATE utf8mb4_bin NOT NULL,
  `userid` char(18) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`type`,`musicname`,`musicsinger`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_user_info`
--

LOCK TABLES `music_user_info` WRITE;
/*!40000 ALTER TABLE `music_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musicinfo`
--

DROP TABLE IF EXISTS `musicinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musicinfo` (
  `Name` char(200) COLLATE utf8mb4_bin NOT NULL,
  `Singer` char(200) COLLATE utf8mb4_bin NOT NULL,
  `Fileurl` char(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `Album` char(200) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`Name`,`Singer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicinfo`
--

LOCK TABLES `musicinfo` WRITE;
/*!40000 ALTER TABLE `musicinfo` DISABLE KEYS */;
INSERT INTO `musicinfo` VALUES (' East of Eden.mp3','Zella Day','C:/Users/ASUS/Music/Zella Day - East of Eden.mp3',''),(' Kiss Me.mp3','Nai Br_XX _ Celeina Ann (セレイナ・アン)','C:/Users/ASUS/Music/Nai Br_XX _ Celeina Ann (セレイナ・アン) - Kiss Me.mp3',''),(' Zombies On Your Lawn.mp3','Laura Shigihara','C:/Users/ASUS/Music/Laura Shigihara - Zombies On Your Lawn.mp3','');
/*!40000 ALTER TABLE `musicinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `userid` char(18) COLLATE utf8mb4_bin NOT NULL,
  `password` char(255) COLLATE utf8mb4_bin NOT NULL,
  `imageurl` char(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-14 16:21:54
