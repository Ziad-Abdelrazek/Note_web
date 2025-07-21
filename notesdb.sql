/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.5.27-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: notesdb
-- ------------------------------------------------------
-- Server version	10.5.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'First note from Ziad','2025-07-18 01:37:20','2025-07-18 01:37:20'),(2,'what should i do \r\n','2025-07-18 02:38:22','2025-07-18 02:38:22'),(3,'hello , iam ziad abdelrazek \r\n','2025-07-18 02:39:00','2025-07-18 02:39:00'),(4,'please type english only\r\n','2025-07-18 02:40:19','2025-07-18 02:40:19'),(5,'iam ziad abdelrazek\r\n','2025-07-18 02:47:34','2025-07-18 02:47:34'),(6,'هاي\r\n','2025-07-18 02:50:09','2025-07-18 02:50:09'),(7,'hi \'','2025-07-18 02:57:53','2025-07-18 02:57:53'),(8,'test\r\n','2025-07-18 02:58:36','2025-07-18 02:58:36'),(9,'tes\r\n','2025-07-18 02:59:07','2025-07-18 02:59:07'),(10,'Test number 1000','2025-07-18 03:04:53','2025-07-18 03:04:53'),(11,'Test every time ','2025-07-18 11:12:18','2025-07-18 11:12:18'),(12,'hello zozy','2025-07-18 13:37:31','2025-07-18 13:37:31'),(13,'00','2025-07-18 13:38:19','2025-07-18 13:38:19'),(14,'hi from ziad','2025-07-18 17:00:41','2025-07-18 17:00:41'),(15,'hello this is latest test\r\n\\ziad abdelrazek\r\n','2025-07-18 22:30:28','2025-07-18 22:30:28'),(16,'This me abdelrahman ','2025-07-19 14:26:58','2025-07-19 14:26:58'),(17,'Test','2025-07-21 16:24:52','2025-07-21 16:24:52');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-21 18:55:50
