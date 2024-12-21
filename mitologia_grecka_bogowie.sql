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
-- Table structure for table `bogowie`
--

DROP TABLE IF EXISTS `bogowie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bogowie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) NOT NULL,
  `domena` varchar(255) DEFAULT NULL,
  `rodzice` varchar(255) DEFAULT NULL,
  `cechy` varchar(255) DEFAULT NULL,
  `atrybuty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bogowie`
--

LOCK TABLES `bogowie` WRITE;
/*!40000 ALTER TABLE `bogowie` DISABLE KEYS */;
INSERT INTO `bogowie` VALUES (1,'Hera','Bogini małżeństwa','Kronos i Rea','zazdrosna, mściwa, sprawiedliwa','berło, korona, kukułka, paw'),(2,'Posejdon','Władca mórz i oceanów','Kronos i Rea','okrutny, mściwy, łatwo wpada w gniew','trójząb, delfiny'),(3,'Zeus','Władca bogów, bóg pirunów','Kronos i Rea','porywczy, pamiętliwy, łatwo się zakochuje','grom, błyskawica, tarcza Egida, orzeł'),(4,'Hades',' Władca krainy zmarłych','Kronos i Rea','budzi strach, nikomu nie pozwala opuszczać sowjego królestwa','rośliny: cyprys i narcyz, pies Cerber'),(5,'Demeter','Bogini urodzaju','Kronos i Rea','kocha przyrodę, poważna','sierp, ziarno, klosy zboża, żuraw'),(6,'Atena','Bogini mąrdości','Zeus i Matyda','mądra, sprawiedliwa, pracowita','tarcza Egida, włócznia, sowa'),(7,'Afrodyta','Bogini miłości i piękna','powstała z piany morskiej','łatwo się zakochuje, knuje intrygi','jabłko, gołąb, wróbel'),(8,'Hefajstos','Boski kowal, bóg rzemiosła','Zeus i Hera','pracowity, niezbyt towarzyski, dobry dla ludzi','młot, kowadło, obcęgi, wulkan'),(9,'Eros','Bóg miłości','Ares i Afrodyta','knuje intrygi, przebiegły, żartowniś',' łuk, strzały, skrzydła'),(10,'Nike','Bogini zwycięstwa','Tytan Pallas i bogini Styks','sprawiedliwa, mądra','skrzydła, gałązka oliwna, wieniec na głowie'),(11,'Dionizos','Bóg wina i radości','Zeus i Semele','wesoły, hojny, okrutny, mściwy','długi kij opleciony winoroślą, wino, kozioł'),(12,'Hermes','Boski posłaniec, bóg handlarzy','Zeus i nimfa Maja','uczynny, wesoły, pracowity, żartowniś','sandały ze skrzydłami, kij Kaduceusz'),(13,'Artemida','Bogini łowówi dzikich zwierząt','Zeus i tytanida Latona','sprawiedliwa, kocha przyrodę, zsyła bogactwo i sławę','łuk, strzały, jeleń'),(14,'Asklepios','Bsoki lekarz, bóg zdrowia','Apollo i nimfa Koronis','dobry dla ludzi','wąż, laska, zioła lecznicze'),(15,'Ares','Bóg wojny','Zeus i Hera','ponury, okrutny, nie przestrzega praw','miecz, włócznia, jastrząb, sęp'),(16,'Hestia','Bogini domów i rodzin','Kronos i Rea','mądra, spokojna, łagodna','płomień z ogniska domowego, pochodnia'),(17,'Pan','Bóg lasów, pól i stad zwierząt','Hermes i nimfa Dryope','kocha przyrodę, łatwo się zakochuje','instrument fletnia Pana, wieniec, kij pasterski'),(18,'Persefona','Bogini opiekunka dusz zmarłych','Zeus i Demeter','kocha przyrodę, łagodna, mądra','owoc grantu, kwiat: narcyz');
/*!40000 ALTER TABLE `bogowie` ENABLE KEYS */;
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
