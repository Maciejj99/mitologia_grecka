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
-- Table structure for table `mity`
--

DROP TABLE IF EXISTS `mity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tytul` varchar(255) DEFAULT NULL,
  `streszczenie` text,
  `glowne_bostwo_1` int DEFAULT NULL,
  `glowne_bostwo_2` int DEFAULT NULL,
  `glowne_bostwo_3` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `glowne_bostwo_1` (`glowne_bostwo_1`),
  KEY `glowne_bostwo_2` (`glowne_bostwo_2`),
  KEY `glowne_bostwo_3` (`glowne_bostwo_3`),
  CONSTRAINT `mity_ibfk_1` FOREIGN KEY (`glowne_bostwo_1`) REFERENCES `bogowie` (`id`) ON DELETE SET NULL,
  CONSTRAINT `mity_ibfk_2` FOREIGN KEY (`glowne_bostwo_2`) REFERENCES `bogowie` (`id`) ON DELETE SET NULL,
  CONSTRAINT `mity_ibfk_3` FOREIGN KEY (`glowne_bostwo_3`) REFERENCES `bogowie` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mity`
--

LOCK TABLES `mity` WRITE;
/*!40000 ALTER TABLE `mity` DISABLE KEYS */;
INSERT INTO `mity` VALUES (1,'Dedal i Ikar','Historia ucieczki z Krety za pomocą skrzydeł z wosku',6,NULL,NULL),(2,'Orfeusz i Eurydyka','Opowieść o Orfeuszu, który próbował uratować swoją żonę, Eurydykę, z krainy umarłych',4,NULL,NULL),(3,'Król Edyp','Król Teb, który nieświadomie zabił swojego ojca i poślubił matkę, spełniając przepowiednię',NULL,NULL,NULL),(4,'Herakles i dwanaście prac','Herakles wykonuje dwanaście niemożliwych zadań jako pokutę za swoje czyny',1,NULL,NULL),(5,'Psyche i Eros','Historia miłości między królewną Psyche a bogiem Erosem, której zazdrość matki Erosa, Afrodyt, zagraża ich związkowi',7,9,NULL),(6,'Prometeusz','Tytan, który przyniósł ludziom ogień, narażając się na gniew Zeusa',3,NULL,NULL),(7,'Iliada','Opowieść o wojnie trojańskiej, Achillesie, Hectorze i boskich interwencjach',3,6,7),(8,'Tezeusz i Minotaur','Tezeusz zabija Minotaurusa w labiryncie na Krecie, przy pomocy Ariadny i jej nici',2,NULL,NULL),(9,'Achilles i jego pięta','Achilles, bohater wojny trojańskiej, który był nieśmiertelny, poza jedną częścią ciała – piętą',NULL,NULL,NULL),(10,'Pandora i pudełko','Pandora otworzyła zakazane pudełko, wypuszczając na świat wszystkie nieszczęścia, pozostawiając tylko nadzieję',3,NULL,NULL);
/*!40000 ALTER TABLE `mity` ENABLE KEYS */;
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
