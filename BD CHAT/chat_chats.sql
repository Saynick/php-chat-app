-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: chat
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `chat_id` int NOT NULL AUTO_INCREMENT,
  `from_id` int NOT NULL,
  `to_id` int NOT NULL,
  `message` text NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,3,4,'Hola',1,'2023-03-10 13:52:52'),(2,3,4,'Hola que tal',1,'2023-03-10 13:53:05'),(3,3,4,'Hola nuevamente\n',1,'2023-03-10 13:58:38'),(4,4,3,'HOLA\n',1,'2023-03-10 14:09:10'),(5,4,3,'HELLO\n',1,'2023-03-10 14:11:07'),(6,4,4,'Hola\n',1,'2023-03-10 14:14:39'),(7,4,3,'Que onda',1,'2023-03-10 14:14:59'),(8,4,3,'mensaje de prueba',1,'2023-03-10 14:16:02'),(9,4,3,'Listo',1,'2023-03-10 14:16:29'),(10,3,4,'Hola\n|',0,'2023-03-10 14:17:12'),(11,5,4,'Hola\n',1,'2023-03-10 14:19:00'),(12,4,5,'que onda\n',1,'2023-03-10 14:19:27'),(13,5,4,'hola\n',1,'2023-03-10 14:20:17'),(14,5,5,'hola',1,'2023-03-10 14:20:25'),(15,6,4,'hola',1,'2023-03-10 14:23:06'),(16,4,6,'Hola buenas tardes\n',0,'2023-03-10 14:23:27'),(17,7,4,'Hola Amigo\n',1,'2023-03-10 14:27:41'),(18,7,4,'Hola que tal',1,'2023-03-10 14:28:05'),(19,7,4,'que show',1,'2023-03-10 14:28:16');
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 17:49:54
