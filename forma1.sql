-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: forma1
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
-- Table structure for table `pilots`
--

DROP TABLE IF EXISTS `pilots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilots` (
  `pilot_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_of_birth` year NOT NULL,
  `team_id` int DEFAULT NULL,
  PRIMARY KEY (`pilot_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `pilots_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilots`
--

LOCK TABLES `pilots` WRITE;
/*!40000 ALTER TABLE `pilots` DISABLE KEYS */;
INSERT INTO `pilots` VALUES (1,'Alexander Rossi',1991,4),(2,'Carlos Sainz Jnr',1994,9),(3,'Daniel Ricciardo',1989,7),(4,'Daniil Kvyat',1994,7),(5,'Felipe Massa',1981,10),(6,'Felipe Nasr',1992,8),(7,'Fernando Alonso',1981,5),(8,'Jenson Button',1980,5),(9,'Kevin Magnussen',1992,5),(10,'Kimi Raikkonen',1979,1),(11,'Lewis Hamilton',1985,6),(12,'Marcus Ericsson',1990,8),(13,'Max Verstappen',1997,9),(14,'Nico Hulkenberg',1987,2),(15,'Nico Rosberg',1985,6),(16,'Pastor Maldonado',1985,3),(17,'Roberto Merhi',1991,4),(18,'Romain Grosjean',1986,3),(19,'Sebastian Vettel',1987,1),(20,'Sergio Perez',1990,2),(21,'Valtteri Bottas',1989,10),(22,'Will Stevens',1991,4);
/*!40000 ALTER TABLE `pilots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `races` (
  `race_id` varchar(64) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `place` varchar(64) NOT NULL,
  `rounds` int NOT NULL,
  `length` int NOT NULL,
  PRIMARY KEY (`race_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES ('ABU','2015-11-29','Abu Dhabi Grand Prix','Abu Dhabi',55,5554),('AUS','2015-03-15','Austral Grand Prix','Melbourne',58,5303),('BAH','2015-04-19','Bahrein Grand Prix','Szahír',57,5412),('BEL','2015-08-23','Belgian Grand Prix','Francorchamps',44,7004),('BRA','2015-11-15','Brasilian Grand Prix','Rio de Janeiro',71,4309),('BRI','2015-07-05','Britian Grand Prix','Silverstone',52,5891),('CAN','2015-06-07','Canadaian Grand Prix','Montreal',70,4361),('CHI','2015-04-12','Chinese Grand Prix','Shanghai',56,5451),('GER','2015-07-19','German Grand Prix','TBD',67,4574),('HUN','2015-07-26','Hungarian Grand Prix','Mogyoród',70,4381),('ITA','2015-09-06','Italian Grand Prix','Monza',53,5793),('JAP','2015-09-27','Japanese Grand Prix','Szuzuka',53,5807),('MAL','2015-03-29','Malay Grand Prix','Szepang',56,5543),('MEX','2015-11-01','Meixcan Grand Prix','Mexico City',69,4580),('MON','2015-05-24','Monaco Grand Prix','Monte Carlo',78,3340),('OST','2015-06-21','Austrian Grand Prix','Spielberg',71,4326),('RUS','2015-10-11','Russian Grand Prix','Sochi',52,5853),('SIN','2015-09-20','Singapurian Grand Prix','Szingapúr',61,5073),('SPA','2015-05-10','Spanish Grand Prix','Barcelona',66,4655),('UNI','2015-10-25','American Grand Prix','Austin',56,5472);
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `pilot_id` int NOT NULL,
  `race_id` varchar(64) NOT NULL,
  `start_position` int DEFAULT NULL,
  `finish_position` int DEFAULT NULL,
  PRIMARY KEY (`pilot_id`,`race_id`),
  KEY `race_id` (`race_id`),
  CONSTRAINT `results_ibfk_1` FOREIGN KEY (`pilot_id`) REFERENCES `pilots` (`pilot_id`),
  CONSTRAINT `results_ibfk_2` FOREIGN KEY (`race_id`) REFERENCES `races` (`race_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,'ABU',NULL,NULL),(1,'AUS',NULL,NULL),(1,'BAH',NULL,NULL),(1,'BEL',NULL,NULL),(1,'BRA',18,17),(1,'BRI',NULL,NULL),(1,'CAN',NULL,NULL),(1,'CHI',NULL,NULL),(1,'HUN',NULL,NULL),(1,'ITA',NULL,NULL),(1,'JAP',18,19),(1,'MAL',NULL,NULL),(1,'MEX',15,16),(1,'MON',NULL,NULL),(1,'OST',NULL,NULL),(1,'RUS',NULL,NULL),(1,'SIN',14,20),(1,'SPA',NULL,NULL),(1,'UNI',12,17),(2,'ABU',11,10),(2,'AUS',9,7),(2,'BAH',NULL,9),(2,'BEL',NULL,10),(2,'BRA',NULL,10),(2,'BRI',NULL,8),(2,'CAN',12,11),(2,'CHI',13,14),(2,'HUN',NULL,12),(2,'ITA',11,17),(2,'JAP',10,10),(2,'MAL',8,15),(2,'MEX',13,11),(2,'MON',10,20),(2,'OST',NULL,12),(2,'RUS',NULL,20),(2,'SIN',9,14),(2,'SPA',9,5),(2,'UNI',7,20),(3,'ABU',6,5),(3,'AUS',6,6),(3,'BAH',6,7),(3,'BEL',NULL,5),(3,'BRA',11,19),(3,'BRI',NULL,10),(3,'CAN',13,9),(3,'CHI',9,7),(3,'HUN',3,4),(3,'ITA',8,19),(3,'JAP',15,7),(3,'MAL',10,4),(3,'MEX',5,5),(3,'MON',5,4),(3,'OST',10,18),(3,'RUS',15,10),(3,'SIN',2,2),(3,'SPA',7,10),(3,'UNI',10,3),(4,'ABU',10,9),(4,'AUS',NULL,12),(4,'BAH',9,17),(4,'BEL',4,12),(4,'BRA',7,6),(4,'BRI',6,7),(4,'CAN',9,8),(4,'CHI',NULL,12),(4,'HUN',2,7),(4,'ITA',10,18),(4,'JAP',13,20),(4,'MAL',9,5),(4,'MEX',4,4),(4,'MON',4,5),(4,'OST',12,15),(4,'RUS',5,11),(4,'SIN',6,4),(4,'SPA',10,8),(4,'UNI',NULL,4),(5,'ABU',8,8),(5,'AUS',4,3),(5,'BAH',10,6),(5,'BEL',6,6),(5,'BRA',NULL,8),(5,'BRI',4,3),(5,'CAN',6,15),(5,'CHI',5,4),(5,'HUN',12,8),(5,'ITA',3,5),(5,'JAP',17,5),(5,'MAL',6,7),(5,'MEX',6,7),(5,'MON',15,12),(5,'OST',3,4),(5,'RUS',4,15),(5,'SIN',NULL,9),(5,'SPA',6,9),(5,'UNI',NULL,7),(6,'ABU',15,14),(6,'AUS',5,10),(6,'BAH',12,12),(6,'BEL',11,14),(6,'BRA',13,13),(6,'BRI',NULL,16),(6,'CAN',16,14),(6,'CHI',8,9),(6,'HUN',11,18),(6,'ITA',13,11),(6,'JAP',20,16),(6,'MAL',12,16),(6,'MEX',NULL,15),(6,'MON',9,14),(6,'OST',11,8),(6,'RUS',6,12),(6,'SIN',10,16),(6,'SPA',12,15),(6,'UNI',9,15),(7,'ABU',17,16),(7,'AUS',NULL,NULL),(7,'BAH',11,14),(7,'BEL',13,20),(7,'BRA',15,20),(7,'BRI',10,17),(7,'CAN',NULL,13),(7,'CHI',12,18),(7,'HUN',5,15),(7,'ITA',18,16),(7,'JAP',11,12),(7,'MAL',NULL,18),(7,'MEX',NULL,18),(7,'MON',NULL,13),(7,'OST',NULL,19),(7,'RUS',11,19),(7,'SIN',NULL,12),(7,'SPA',NULL,13),(7,'UNI',11,9),(8,'ABU',12,12),(8,'AUS',11,16),(8,'BAH',NULL,20),(8,'BEL',14,19),(8,'BRA',14,16),(8,'BRI',NULL,18),(8,'CAN',NULL,20),(8,'CHI',14,17),(8,'HUN',9,16),(8,'ITA',14,15),(8,'JAP',16,14),(8,'MAL',NULL,17),(8,'MEX',14,20),(8,'MON',8,10),(8,'OST',NULL,20),(8,'RUS',9,13),(8,'SIN',NULL,15),(8,'SPA',16,14),(8,'UNI',6,11),(9,'ABU',NULL,NULL),(9,'AUS',NULL,17),(9,'BAH',NULL,NULL),(9,'BEL',NULL,NULL),(9,'BRA',NULL,NULL),(9,'BRI',NULL,NULL),(9,'CAN',NULL,NULL),(9,'CHI',NULL,NULL),(9,'HUN',NULL,NULL),(9,'ITA',NULL,NULL),(9,'JAP',NULL,NULL),(9,'MAL',NULL,NULL),(9,'MEX',NULL,NULL),(9,'MON',NULL,NULL),(9,'OST',NULL,NULL),(9,'RUS',NULL,NULL),(9,'SIN',NULL,NULL),(9,'SPA',NULL,NULL),(9,'UNI',NULL,NULL),(10,'ABU',3,3),(10,'AUS',NULL,5),(10,'BAH',2,4),(10,'BEL',7,16),(10,'BRA',4,4),(10,'BRI',8,5),(10,'CAN',4,3),(10,'CHI',4,6),(10,'HUN',NULL,5),(10,'ITA',5,2),(10,'JAP',4,6),(10,'MAL',4,11),(10,'MEX',NULL,19),(10,'MON',6,6),(10,'OST',NULL,14),(10,'RUS',8,5),(10,'SIN',3,3),(10,'SPA',5,7),(10,'UNI',NULL,18),(11,'ABU',2,2),(11,'AUS',1,1),(11,'BAH',1,1),(11,'BEL',1,1),(11,'BRA',2,2),(11,'BRI',1,1),(11,'CAN',1,1),(11,'CHI',1,1),(11,'HUN',6,1),(11,'ITA',1,1),(11,'JAP',1,2),(11,'MAL',2,1),(11,'MEX',2,2),(11,'MON',3,1),(11,'OST',2,1),(11,'RUS',1,2),(11,'SIN',NULL,5),(11,'SPA',2,2),(11,'UNI',1,2),(12,'ABU',14,17),(12,'AUS',8,15),(12,'BAH',14,13),(12,'BEL',10,13),(12,'BRA',16,12),(12,'BRI',11,15),(12,'CAN',14,12),(12,'CHI',10,10),(12,'HUN',10,17),(12,'ITA',9,12),(12,'JAP',14,15),(12,'MAL',NULL,9),(12,'MEX',12,14),(12,'MON',13,17),(12,'OST',13,11),(12,'RUS',NULL,16),(12,'SIN',11,17),(12,'SPA',14,16),(12,'UNI',NULL,14),(13,'ABU',16,11),(13,'AUS',NULL,11),(13,'BAH',NULL,15),(13,'BEL',8,18),(13,'BRA',9,9),(13,'BRI',NULL,13),(13,'CAN',15,19),(13,'CHI',17,13),(13,'HUN',4,9),(13,'ITA',12,20),(13,'JAP',9,17),(13,'MAL',7,6),(13,'MEX',9,8),(13,'MON',NULL,9),(13,'OST',8,7),(13,'RUS',10,9),(13,'SIN',8,8),(13,'SPA',11,6),(13,'UNI',4,8),(14,'ABU',7,7),(14,'AUS',7,13),(14,'BAH',13,8),(14,'BEL',NULL,11),(14,'BRA',6,5),(14,'BRI',7,9),(14,'CAN',8,7),(14,'CHI',NULL,16),(14,'HUN',NULL,11),(14,'ITA',7,9),(14,'JAP',6,13),(14,'MAL',14,13),(14,'MEX',7,10),(14,'MON',11,11),(14,'OST',6,5),(14,'RUS',NULL,6),(14,'SIN',NULL,11),(14,'SPA',15,17),(14,'UNI',NULL,6),(15,'ABU',1,1),(15,'AUS',2,2),(15,'BAH',3,3),(15,'BEL',2,2),(15,'BRA',1,1),(15,'BRI',2,2),(15,'CAN',2,2),(15,'CHI',2,2),(15,'HUN',8,2),(15,'ITA',17,4),(15,'JAP',2,1),(15,'MAL',3,3),(15,'MEX',1,1),(15,'MON',1,2),(15,'OST',1,2),(15,'RUS',NULL,1),(15,'SIN',4,6),(15,'SPA',1,1),(15,'UNI',2,1),(16,'ABU',NULL,13),(16,'AUS',NULL,9),(16,'BAH',15,16),(16,'BEL',NULL,7),(16,'BRA',10,15),(16,'BRI',NULL,14),(16,'CAN',7,6),(16,'CHI',NULL,11),(16,'HUN',14,14),(16,'ITA',NULL,10),(16,'JAP',8,11),(16,'MAL',NULL,12),(16,'MEX',11,13),(16,'MON',NULL,8),(16,'OST',7,10),(16,'RUS',7,14),(16,'SIN',12,18),(16,'SPA',NULL,12),(16,'UNI',8,12),(17,'ABU',19,20),(17,'AUS',NULL,NULL),(17,'BAH',17,19),(17,'BEL',15,17),(17,'BRA',NULL,NULL),(17,'BRI',12,20),(17,'CAN',NULL,16),(17,'CHI',16,20),(17,'HUN',15,19),(17,'ITA',16,14),(17,'JAP',NULL,NULL),(17,'MAL',15,19),(17,'MEX',NULL,NULL),(17,'MON',16,19),(17,'OST',14,16),(17,'RUS',13,18),(17,'SIN',NULL,NULL),(17,'SPA',18,20),(17,'UNI',NULL,NULL),(18,'ABU',9,18),(18,'AUS',NULL,8),(18,'BAH',7,10),(18,'BEL',3,9),(18,'BRA',8,14),(18,'BRI',NULL,12),(18,'CAN',10,5),(18,'CHI',7,8),(18,'HUN',7,10),(18,'ITA',NULL,8),(18,'JAP',7,8),(18,'MAL',11,10),(18,'MEX',10,12),(18,'MON',12,15),(18,'OST',NULL,9),(18,'RUS',NULL,8),(18,'SIN',13,10),(18,'SPA',8,11),(18,'UNI',NULL,10),(19,'ABU',4,15),(19,'AUS',3,4),(19,'BAH',5,2),(19,'BEL',12,8),(19,'BRA',3,3),(19,'BRI',3,6),(19,'CAN',5,18),(19,'CHI',3,3),(19,'HUN',1,3),(19,'ITA',2,3),(19,'JAP',3,4),(19,'MAL',1,2),(19,'MEX',NULL,3),(19,'MON',2,3),(19,'OST',4,3),(19,'RUS',2,4),(19,'SIN',1,1),(19,'SPA',3,3),(19,'UNI',3,13),(20,'ABU',5,4),(20,'AUS',10,14),(20,'BAH',8,11),(20,'BEL',5,4),(20,'BRA',12,11),(20,'BRI',9,11),(20,'CAN',11,10),(20,'CHI',11,15),(20,'HUN',NULL,13),(20,'ITA',6,7),(20,'JAP',12,9),(20,'MAL',13,14),(20,'MEX',8,9),(20,'MON',7,7),(20,'OST',9,13),(20,'RUS',3,7),(20,'SIN',7,13),(20,'SPA',13,18),(20,'UNI',5,5),(21,'ABU',13,6),(21,'AUS',NULL,6),(21,'BAH',4,5),(21,'BEL',9,3),(21,'BRA',5,7),(21,'BRI',5,4),(21,'CAN',3,4),(21,'CHI',6,5),(21,'HUN',13,6),(21,'ITA',4,6),(21,'JAP',5,3),(21,'MAL',5,8),(21,'MEX',3,6),(21,'MON',14,16),(21,'OST',5,6),(21,'RUS',12,3),(21,'SIN',5,7),(21,'SPA',4,4),(21,'UNI',NULL,16),(22,'ABU',18,19),(22,'AUS',NULL,NULL),(22,'BAH',16,18),(22,'BEL',16,15),(22,'BRA',17,18),(22,'BRI',13,19),(22,'CAN',17,17),(22,'CHI',15,19),(22,'HUN',16,20),(22,'ITA',15,13),(22,'JAP',19,18),(22,'MAL',NULL,20),(22,'MEX',16,17),(22,'MON',17,18),(22,'OST',NULL,17),(22,'RUS',14,17),(22,'SIN',15,19),(22,'SPA',17,19),(22,'UNI',NULL,19);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Ferrari'),(2,'Force India Mercedes'),(3,'Lotus Mercedes'),(4,'Marussia Ferrari'),(5,'McLaren Honda'),(6,'Mercedes'),(7,'Red Bull Renault'),(8,'Sauber Ferrari'),(9,'STR Renault'),(10,'Williams Mercedes');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-25 17:16:14
