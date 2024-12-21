-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: mitologia_grecka
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `stworzenia`
--

DROP TABLE IF EXISTS `stworzenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stworzenia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  `typ` varchar(255) DEFAULT NULL,
  `powiazany_mit` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `powiazany_mit` (`powiazany_mit`),
  CONSTRAINT `stworzenia_ibfk_1` FOREIGN KEY (`powiazany_mit`) REFERENCES `mity` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stworzenia`
--

LOCK TABLES `stworzenia` WRITE;
/*!40000 ALTER TABLE `stworzenia` DISABLE KEYS */;
INSERT INTO `stworzenia` VALUES (1,'Hydra','bestia',4),(2,'Minotaur','potwór',8),(3,'Cyklop','olbrzym',NULL),(4,'Meduza','potwór',NULL),(5,'Cerber','pies',4),(6,'Sfinx','potwór',4),(7,'Chimera','potwór',NULL),(8,'Harpie','ptasi demon',5),(9,'Keron','duch',NULL),(10,'Erynie','demon',NULL),(11,'Medea','czarownica',NULL),(12,'Satyr','półczłowiek',NULL),(13,'Centaur','półczłowiek',NULL);
/*!40000 ALTER TABLE `stworzenia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21 14:21:55
