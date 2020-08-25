-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: languageschool
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `application_id` int NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `mobil` varchar(32) DEFAULT NULL,
  `year_of_birth` int DEFAULT NULL,
  `exam_id` int DEFAULT NULL,
  PRIMARY KEY (`application_id`),
  KEY `exam_id` (`exam_id`),
  CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'Szilagyi Zsuzsanna','20506011',1991,15),(2,'Vegh Zsombor','20153410',1979,15),(3,'Veres Zsolt','20880798',1978,2),(4,'Kelemen Zsofia','20281520',1973,7),(5,'Farago Zsigmond','20822129',1970,15),(6,'Balazs Zsigmond','30166291',1984,5),(7,'Mate Zoltan','30429054',2001,2),(8,'Szabo Zoltan','30161106',1987,11),(9,'Dobos Zita','70279010',1977,1),(10,'Hegedus Zita','20149879',1978,9),(11,'Orosz Zalan','20222494',1997,12),(12,'Gal Virag','20593863',1996,15),(13,'Katona Virag','70792601',1997,11),(14,'Antal Vilmos','20252016',1989,2),(15,'Kelemen Viktoria','20273994',2001,7),(16,'Feher Viktoria','20531313',1983,8),(17,'Major Veronika','30602396',1999,2),(18,'Simon Tunde','20979705',1973,8),(19,'Bakos Tivadar','30241891',2001,6),(20,'Bogdan Timea','20291900',2001,11),(21,'Lakatos Tibor','30160406',1988,15),(22,'Szucs Tibor','70534956',1969,14),(23,'Laszlo Terezia','30472558',1987,11),(24,'Orban Terezia','20836213',1986,3),(25,'Somogyi Terezia','30200672',1978,12),(26,'Pasztor Szilvia','20255299',1971,3),(27,'Pap Szilvia','30909208',1973,9),(28,'Kiss Szilvia','70675548',1974,12),(29,'Gulyas Szilvia','70688076',1999,3),(30,'Molnar Szilvia','30311906',1973,8),(31,'Farkas Szilvia','70184972',1992,3),(32,'Soos Szabolcs','20861898',1993,8),(33,'Kiraly Szabolcs','20794740',1993,6),(34,'Orosz Szabolcs','20846591',1999,8),(35,'Magyar Szabolcs','20903584',1987,5),(36,'Major Szabolcs','20676786',1975,3),(37,'Orsos Szabolcs','70768977',1982,10),(38,'Jonas Sandor','20224670',1979,3),(39,'Varadi Rudolf','70878547',1975,15),(40,'Veres Rozalia','70195129',1983,5),(41,'Csonka Roza','70490833',1998,6),(42,'Vass Roza','30772894',1998,1),(43,'Nemeth Roland','70946647',1987,11),(44,'Barna Roland','20212051',1978,13),(45,'Fodor Roland','70447306',2001,10),(46,'Puskas Robert','20580701',1970,12),(47,'Balogh Rita','70322638',1997,14),(48,'Kerekes Richard','70826069',1991,10),(49,'Fodor Richard','20125873',1985,7),(50,'Horvath Richard','20815096',1989,5),(51,'Szilagyi Richard','70693962',1969,11),(52,'Gulyas Richard','70100302',1990,10),(53,'Bognar Richard','30920518',1996,4),(54,'Major Richard','70333141',1971,11),(55,'Feher Renato','30829722',1979,3),(56,'Farago Renato','20602908',1996,9),(57,'Horvath Renata','20604279',1992,8),(58,'Dudas Renata','70690500',1997,15),(59,'Pataki Renata','30857064',1983,5),(60,'Tamas Renata','70994184',1993,10),(61,'Meszaros Renata','20784033',1990,10),(62,'Nagy Renata','20161981',1973,2),(63,'Bodnar Reka','70999639',1985,9),(64,'Kiraly Reka','30297534',1994,12),(65,'Torok Reka','70555769',1988,5),(66,'Gulyas Piroska','20617194',1993,8),(67,'Szekeres Petra','70896813',1971,6),(68,'Bodnar Petra','70782770',1997,14),(69,'Varga Peter','30467857',1981,5),(70,'Farago Patrik','20143565',1996,10),(71,'Sipos Pal','70195171',1989,3),(72,'Horvath Pal','70178281',1978,9),(73,'Antal Oliver','70285883',1989,7),(74,'Fazekas Olga','30277654',1999,12),(75,'Antal Olga','30887222',1985,1),(76,'Mate Olga','70406113',1983,5),(77,'Olah Olga','70780248',2000,7),(78,'Meszaros Olga','20724083',1971,7),(79,'Varga Nikoletta','30682171',1993,14),(80,'Fodor Nandor','30361549',1991,7),(81,'Sandor Monika','30447574',1994,15),(82,'Szekeres Milan','30624351',1983,1),(83,'Vincze Milan','20246749',1995,14),(84,'Soos Mihaly','30892057',1993,13),(85,'Peter Melinda','30225162',1993,3),(86,'Toth Matyas','20836258',1983,8),(87,'Hegedus Mate','30804549',1971,8),(88,'Nemes Martin','20712815',1999,6),(89,'Novak Martin','20955627',1997,7),(90,'Laszlo Martin','70185261',1989,7),(91,'Halasz Martin','20438245',1995,11),(92,'Nemes Martin','30842172',1988,6),(93,'Simon Martin','70116384',1972,4),(94,'Pal Marta','20198193',1998,15),(95,'Vincze Marta','20650298',1985,4);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `exam_id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'2020-01-03 15:00:00','B2',1),(2,'2020-01-05 15:00:00','B1',2),(3,'2020-01-08 15:00:00','C1',1),(4,'2020-01-10 15:00:00','B2',2),(5,'2020-01-12 15:00:00','B1',3),(6,'2020-01-13 10:00:00','B2',1),(7,'2020-01-15 15:00:00','C1',2),(8,'2020-01-17 15:00:00','B2',1),(9,'2020-01-19 15:00:00','B1',4),(10,'2020-01-22 15:00:00','C1',1),(11,'2020-01-24 15:00:00','B2',2),(12,'2020-01-26 15:00:00','B1',5),(13,'2020-01-27 10:00:00','B2',2),(14,'2020-01-29 15:00:00','C1',2),(15,'2020-01-31 15:00:00','B2',1),(16,'2020-02-02 15:00:00','B1',6),(17,'2020-02-05 15:00:00','C1',1),(18,'2020-02-07 15:00:00','B2',2),(19,'2020-02-09 15:00:00','B1',3),(20,'2020-02-10 10:00:00','B2',1),(21,'2020-02-12 15:00:00','C1',2),(22,'2020-02-14 15:00:00','B2',1),(23,'2020-02-16 15:00:00','B1',4),(24,'2020-02-19 15:00:00','C1',1),(25,'2020-02-21 15:00:00','B2',2),(26,'2020-02-23 15:00:00','B1',5),(27,'2020-02-24 10:00:00','B2',2),(28,'2020-02-26 15:00:00','C1',2),(29,'2020-02-28 15:00:00','B2',1),(30,'2020-03-02 15:00:00','B1',6),(31,'2020-03-05 15:00:00','C1',1),(32,'2020-03-07 15:00:00','B2',2),(33,'2020-03-09 15:00:00','B1',3),(34,'2020-03-10 10:00:00','B2',1),(35,'2020-03-12 15:00:00','C1',2),(36,'2020-03-14 15:00:00','B2',1),(37,'2020-03-16 15:00:00','B1',4),(38,'2020-03-19 15:00:00','C1',1),(39,'2020-03-21 15:00:00','B2',2),(40,'2020-03-23 15:00:00','B1',5),(41,'2020-03-24 10:00:00','B2',2),(42,'2020-03-26 15:00:00','C1',2),(43,'2020-03-28 15:00:00','B2',1);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_id` int NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'english'),(2,'german'),(3,'french'),(4,'italian'),(5,'spanish'),(6,'polish'),(7,'russian');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-25 21:39:08
