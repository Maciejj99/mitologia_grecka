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
-- Table structure for table `miejsce`
--

DROP TABLE IF EXISTS `miejsce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miejsce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  `opis_miejsca` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miejsce`
--

LOCK TABLES `miejsce` WRITE;
/*!40000 ALTER TABLE `miejsce` DISABLE KEYS */;
INSERT INTO `miejsce` VALUES (1,'Olimp','Siedziba greckich bogów'),(2,'Hades','Kraina umarłych, rządy sprawował Hades'),(3,'Delos','Wyspa, na której narodzili się Apollo i Artemida'),(4,'Ełid','Kraina, która była domem dla Heraklesa i częstym miejscem jego podróży'),(5,'Sycylia','Wyspa, na której Polifem, cyklop, spotkał Odyseusza'),(6,'Wyspa Kreta','Miejsce, w którym żył Minotaur, zamknięty w labiryncie przez króla Minosa'),(7,'Tartar','Część podziemi, najgłębsza część Hadesu, gdzie były uwięzione różne mityczne postacie'),(8,'Półwysep Peloponez','W regionie tym mieściły się takie miasta jak Sparta, Argos, oraz miejsca powiązane z wieloma mitami, m.in. mity o Heraklesie'),(9,'Thessalia','Kraina, której mieszkańcy byli często wojownikami, a słynęła z wielu bohaterów mitycznych'),(10,'Argolid','Kraina związana z wieloma mitami, m.in. z Agamemnonem, Orestesem czy Perseuszem');
/*!40000 ALTER TABLE `miejsce` ENABLE KEYS */;
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
