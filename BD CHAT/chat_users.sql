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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `p_p` varchar(255) DEFAULT 'user-default.png',
  `last_seen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','root','root','user-default.png','2023-03-10 13:48:26'),(2,'Oscar','oscar12345','$2y$10$BWYaoEu0XQKxTgznO3x3vuZxqD3Bj2yzeXpE/RHFDfj2t9BIb3qJ2','oscar12345.png','2023-03-10 13:50:18'),(3,'oscar','oscar','$2y$10$4REOcmFDMHn2so8/1AwkHOggmXopeCM/vmbm4YAy98Y.9jP1bReUm','oscar.png','2023-03-10 14:45:19'),(4,'luis','luis','$2y$10$XUT/dN2FBapaIitsTC9BbecpYllADOE3EIDgoPb5Zm.d3u1HLKthu','luis.jpg','2023-03-10 17:49:44'),(5,'juan','juan','$2y$10$7Qqd8O3zylGA6VZnWtdssOMjLb7l9cjyaxYHGUn1eOeb92pU/kDD.','juan.jpg','2023-03-10 17:27:39'),(6,'jp','jp','$2y$10$RfP/O5HQBN0Jzg6qZuHcDuEV9boHh4NaCOrX8hBapzWSajsY8QlZq','jp.png','2023-03-10 14:23:09'),(7,'daniel','daniel','$2y$10$IZ9l5h5RUw0yy5t6x0TCTuzfL8/pBAVpPOPysY.eI8KmQcb3dPo7m','daniel.jpg','2023-03-10 14:28:23'),(8,'oscar@prueba.com','janeth','$2y$10$OtoVyTAVULUl1Dusa3QzrO5guh83IP4SnXbnYHNRAwXph/MGFXZH6','user-default.png','2023-03-10 16:38:03'),(9,'PEDRO@GMAIL.COM','PEDRO','$2y$10$4wkktwIMGnlqENcS7/E2A.IqB/rc/wT6BEzNE8iBUx7G6ZGUJAeIa','user-default.png','2023-03-10 16:39:57'),(10,'CONDORITO@GMAIL.COM','CONDORITO','$2y$10$EuebHvi7.91FtOVdlrzbl.gyrJLWMP/egx6FhdKYleHCx7M0qOqey','user-default.png','2023-03-10 16:41:18'),(11,'OSCAR@GMAIL.COM','tribilin','$2y$10$Rmtxq3DVBPNkLxrgQwZMu.nMzVbNH/iY6f9ooH8NE6HV6gzqhI/DC','user-default.png','2023-03-10 17:26:29'),(12,'oscar.martinez@prueba@.com.mx','Mediometro','$2y$10$FuRgCFNEirHt8akN.4vZ6OBTweRLiSKUHb99kiYz/UvHYO8SN.JOu','user-default.png','2023-03-10 17:27:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
