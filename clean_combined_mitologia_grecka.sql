


DROP TABLE IF EXISTS `bogowie`;
CREATE TABLE `bogowie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) NOT NULL,
  `domena` varchar(255) DEFAULT NULL,
  `rodzice` varchar(255) DEFAULT NULL,
  `cechy` varchar(255) DEFAULT NULL,
  `atrybuty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `bogowie` WRITE;
INSERT INTO `bogowie` VALUES (1,'Hera','Bogini małżeństwa','Kronos i Rea','zazdrosna, mściwa, sprawiedliwa','berło, korona, kukułka, paw'),(2,'Posejdon','Władca mórz i oceanów','Kronos i Rea','okrutny, mściwy, łatwo wpada w gniew','trójząb, delfiny'),(3,'Zeus','Władca bogów, bóg pirunów','Kronos i Rea','porywczy, pamiętliwy, łatwo się zakochuje','grom, błyskawica, tarcza Egida, orzeł'),(4,'Hades',' Władca krainy zmarłych','Kronos i Rea','budzi strach, nikomu nie pozwala opuszczać sowjego królestwa','rośliny: cyprys i narcyz, pies Cerber'),(5,'Demeter','Bogini urodzaju','Kronos i Rea','kocha przyrodę, poważna','sierp, ziarno, klosy zboża, żuraw'),(6,'Atena','Bogini mąrdości','Zeus i Matyda','mądra, sprawiedliwa, pracowita','tarcza Egida, włócznia, sowa'),(7,'Afrodyta','Bogini miłości i piękna','powstała z piany morskiej','łatwo się zakochuje, knuje intrygi','jabłko, gołąb, wróbel'),(8,'Hefajstos','Boski kowal, bóg rzemiosła','Zeus i Hera','pracowity, niezbyt towarzyski, dobry dla ludzi','młot, kowadło, obcęgi, wulkan'),(9,'Eros','Bóg miłości','Ares i Afrodyta','knuje intrygi, przebiegły, żartowniś',' łuk, strzały, skrzydła'),(10,'Nike','Bogini zwycięstwa','Tytan Pallas i bogini Styks','sprawiedliwa, mądra','skrzydła, gałązka oliwna, wieniec na głowie'),(11,'Dionizos','Bóg wina i radości','Zeus i Semele','wesoły, hojny, okrutny, mściwy','długi kij opleciony winoroślą, wino, kozioł'),(12,'Hermes','Boski posłaniec, bóg handlarzy','Zeus i nimfa Maja','uczynny, wesoły, pracowity, żartowniś','sandały ze skrzydłami, kij Kaduceusz'),(13,'Artemida','Bogini łowówi dzikich zwierząt','Zeus i tytanida Latona','sprawiedliwa, kocha przyrodę, zsyła bogactwo i sławę','łuk, strzały, jeleń'),(14,'Asklepios','Bsoki lekarz, bóg zdrowia','Apollo i nimfa Koronis','dobry dla ludzi','wąż, laska, zioła lecznicze'),(15,'Ares','Bóg wojny','Zeus i Hera','ponury, okrutny, nie przestrzega praw','miecz, włócznia, jastrząb, sęp'),(16,'Hestia','Bogini domów i rodzin','Kronos i Rea','mądra, spokojna, łagodna','płomień z ogniska domowego, pochodnia'),(17,'Pan','Bóg lasów, pól i stad zwierząt','Hermes i nimfa Dryope','kocha przyrodę, łatwo się zakochuje','instrument fletnia Pana, wieniec, kij pasterski'),(18,'Persefona','Bogini opiekunka dusz zmarłych','Zeus i Demeter','kocha przyrodę, łagodna, mądra','owoc grantu, kwiat: narcyz');
UNLOCK TABLES;





DROP TABLE IF EXISTS `miejsce`;
CREATE TABLE `miejsce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  `opis_miejsca` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `miejsce` WRITE;
INSERT INTO `miejsce` VALUES (1,'Olimp','Siedziba greckich bogów'),(2,'Hades','Kraina umarłych, rządy sprawował Hades'),(3,'Delos','Wyspa, na której narodzili się Apollo i Artemida'),(4,'Ełid','Kraina, która była domem dla Heraklesa i częstym miejscem jego podróży'),(5,'Sycylia','Wyspa, na której Polifem, cyklop, spotkał Odyseusza'),(6,'Wyspa Kreta','Miejsce, w którym żył Minotaur, zamknięty w labiryncie przez króla Minosa'),(7,'Tartar','Część podziemi, najgłębsza część Hadesu, gdzie były uwięzione różne mityczne postacie'),(8,'Półwysep Peloponez','W regionie tym mieściły się takie miasta jak Sparta, Argos, oraz miejsca powiązane z wieloma mitami, m.in. mity o Heraklesie'),(9,'Thessalia','Kraina, której mieszkańcy byli często wojownikami, a słynęła z wielu bohaterów mitycznych'),(10,'Argolid','Kraina związana z wieloma mitami, m.in. z Agamemnonem, Orestesem czy Perseuszem');
UNLOCK TABLES;





DROP TABLE IF EXISTS `mity`;
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


LOCK TABLES `mity` WRITE;
INSERT INTO `mity` VALUES (1,'Dedal i Ikar','Historia ucieczki z Krety za pomocą skrzydeł z wosku',6,NULL,NULL),(2,'Orfeusz i Eurydyka','Opowieść o Orfeuszu, który próbował uratować swoją żonę, Eurydykę, z krainy umarłych',4,NULL,NULL),(3,'Król Edyp','Król Teb, który nieświadomie zabił swojego ojca i poślubił matkę, spełniając przepowiednię',NULL,NULL,NULL),(4,'Herakles i dwanaście prac','Herakles wykonuje dwanaście niemożliwych zadań jako pokutę za swoje czyny',1,NULL,NULL),(5,'Psyche i Eros','Historia miłości między królewną Psyche a bogiem Erosem, której zazdrość matki Erosa, Afrodyt, zagraża ich związkowi',7,9,NULL),(6,'Prometeusz','Tytan, który przyniósł ludziom ogień, narażając się na gniew Zeusa',3,NULL,NULL),(7,'Iliada','Opowieść o wojnie trojańskiej, Achillesie, Hectorze i boskich interwencjach',3,6,7),(8,'Tezeusz i Minotaur','Tezeusz zabija Minotaurusa w labiryncie na Krecie, przy pomocy Ariadny i jej nici',2,NULL,NULL),(9,'Achilles i jego pięta','Achilles, bohater wojny trojańskiej, który był nieśmiertelny, poza jedną częścią ciała – piętą',NULL,NULL,NULL),(10,'Pandora i pudełko','Pandora otworzyła zakazane pudełko, wypuszczając na świat wszystkie nieszczęścia, pozostawiając tylko nadzieję',3,NULL,NULL);
UNLOCK TABLES;





DROP TABLE IF EXISTS `stworzenia`;
CREATE TABLE `stworzenia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  `typ` varchar(255) DEFAULT NULL,
  `powiazany_mit` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `powiazany_mit` (`powiazany_mit`),
  CONSTRAINT `stworzenia_ibfk_1` FOREIGN KEY (`powiazany_mit`) REFERENCES `mity` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `stworzenia` WRITE;
INSERT INTO `stworzenia` VALUES (1,'Hydra','bestia',4),(2,'Minotaur','potwór',8),(3,'Cyklop','olbrzym',NULL),(4,'Meduza','potwór',NULL),(5,'Cerber','pies',4),(6,'Sfinx','potwór',4),(7,'Chimera','potwór',NULL),(8,'Harpie','ptasi demon',5),(9,'Keron','duch',NULL),(10,'Erynie','demon',NULL),(11,'Medea','czarownica',NULL),(12,'Satyr','półczłowiek',NULL),(13,'Centaur','półczłowiek',NULL);
UNLOCK TABLES;


