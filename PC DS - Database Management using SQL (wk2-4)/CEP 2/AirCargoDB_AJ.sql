-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: air_cargo
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Temporary view structure for view `business_class_customers`
--

DROP TABLE IF EXISTS `business_class_customers`;
/*!50001 DROP VIEW IF EXISTS `business_class_customers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `business_class_customers` AS SELECT 
 1 AS `customer_id`,
 1 AS `full_name`,
 1 AS `brand`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int DEFAULT NULL,
  `first_name` text,
  `last_name` text,
  `date_of_birth` text,
  `gender` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Julie','Sam','12-01-1989','F'),(2,'Steve','Ryan','03-04-1983','M'),(3,'Morris','Lois','09-12-1993','M'),(4,'Cathenna','Emily','14-09-1977','F'),(5,'Aaron','Kim','18-02-1991','M'),(6,'Alexander','Scot','12-02-1985','M'),(7,'Anderson','Stewart','11-01-1992','M'),(8,'Floyd','Ted','21-02-1993','M'),(9,'Leo','Travis','22-03-1994','M'),(10,'Melvin','Tracy','23-04-1995','M'),(11,'Roger','Walson','24-05-1996','M'),(12,'Shirley','Wally','25-06-1997','F'),(13,'Solomon','Walter','26-07-1998','M'),(14,'Carol','Vernon','27-08-1999','F'),(15,'Linda','William','28-09-1986','F'),(16,'Chirstine','Willis','06-10-1987','F'),(17,'Catherine','Shad','09-11-1988','F'),(18,'Gloria','Richie','04-12-1989','F'),(19,'Joyce','Paul','02-06-1990','F'),(20,'Sara','Oliver','01-01-1991','F'),(21,'Chirsty','Josh','10-01-2004','M'),(22,'Pheny','Eri','29-01-1999','M'),(23,'Erwin','Tosh','03-02-1994','M'),(24,'Calvin','Willis','15-02-1994','M'),(25,'Moss','Morris','18-02-2011','M'),(26,'Bryan','Collin','28-02-2011','M'),(27,'Cherly','Vernon','19-03-1992','F'),(28,'Du plesis','Chris','17-04-1994','M'),(29,'Watson','Ronald','11-01-1991','M'),(30,'Donack','Dukins','19-02-1991','M'),(31,'James','Robert','12-04-1994','M'),(32,'Chirstoper','Sean','21-06-1993','M'),(33,'Mark','Ethan','22-05-1994','M'),(34,'Jacqueline','Keith','23-04-1994','F'),(35,'Jeffrey','Aaron','24-02-1991','M'),(36,'Kayla','Patrick','27-02-1993','F'),(37,'Samuel','Scott','28-01-2000','M'),(38,'Alexis','Scott','31-10-2001','M'),(39,'Tyler','Edward','30-11-2006','M'),(40,'Adam','Paul','31-12-2007','M'),(41,'Kyle','Mark','29-11-2004','F'),(42,'Roger','Mattew','28-11-2008','M'),(43,'Joe','Daniel','27-03-2001','M'),(44,'Bily','Brian','26-10-2002','M'),(45,'Doris','Walter','23-12-1993','M'),(46,'Louis','Douglas','22-09-1997','M'),(47,'Sophia','Carl','11-08-1999','F'),(48,'Wayne','Noah','02-07-1998','F'),(49,'Russell','Peter','01-06-1996','M'),(50,'Rose','Arthur','23-05-1996','F');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passengers_on_flights`
--

DROP TABLE IF EXISTS `passengers_on_flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengers_on_flights` (
  `customer_id` int DEFAULT NULL,
  `aircraft_id` text,
  `route_id` int DEFAULT NULL,
  `depart` text,
  `arrival` text,
  `seat_num` text,
  `class_id` text,
  `travel_date` text,
  `flight_num` int DEFAULT NULL,
  KEY `idx_route_id` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers_on_flights`
--

LOCK TABLES `passengers_on_flights` WRITE;
/*!40000 ALTER TABLE `passengers_on_flights` DISABLE KEYS */;
INSERT INTO `passengers_on_flights` VALUES (2,'A321',34,'CRW','COD','01B','Bussiness','26-01-2019',1117),(2,'767-301ER',4,'JFK','LAX','01E','Economy','02-09-2018',1114),(1,'ERJ142',9,'DEN','LAX','01EP','Economy Plus','26-12-2019',1119),(1,'CRJ900',30,'BUR','STT','01FC','First Class','04-11-2018',1140),(5,'767-301ER',12,'ABI','ADK','02B','Bussiness','02-07-2018',1122),(5,'ERJ142',18,'ANI','BGR','02E','Economy','06-05-2020',1128),(8,'A321',38,'CST','DAL','02EP','Economy Plus','09-08-2020',1148),(4,'767-301ER',5,'LAX','JFX','02FC','First Class','06-04-2020',1115),(7,'767-301ER',20,'AVL','BOI','03B','Bussiness','08-07-2020',1130),(5,'ERJ142',22,'BGR','BJI','03E','Economy','31-05-2020',1132),(11,'ERJ142',31,'BTM','CHA','03EP','Economy Plus','02-08-2018',1141),(4,'767-301ER',4,'JFK','LAX','03FC','First Class','30-04-2020',1114),(11,'767-301ER',5,'LAX','JFX','04B','Bussiness','12-11-2020',1115),(8,'A321',43,'CBM','BOI','04E','Economy','02-05-2018',1153),(17,'A321',13,'ABI','ADK','04EP','Economy Plus','03-06-2019',1123),(9,'767-301ER',15,'CAK','ANI','04FC','First Class','10-09-2020',1125),(11,'767-301ER',4,'JFK','LAX','05B','Bussiness','09-11-2020',1114),(10,'A321',10,'HNL','DEN','05E','Economy','11-10-2020',1120),(19,'CRJ900',47,'DAL','LAX','05EP','Economy Plus','13-01-2021',1157),(9,'CRJ900',33,'CDC','CST','05FC','First Class','01-02-2018',1143),(15,'A321',14,'BQN','CAK','06B','Bussiness','02-11-2018',1124),(14,'ERJ142',35,'STT','CDB','06E','Economy','02-04-2019',1145),(19,'CRJ900',30,'BUR','STT','06EP','Economy Plus','17-12-2020',1140),(13,'A321',13,'ADK','BQN','06FC','First Class','05-01-2019',1123),(21,'CRJ900',45,'CCR','EWR','07B','Bussiness','07-03-2020',1155),(14,'767-301ER',42,'CSG','BOS','07E','Economy','25-01-2020',1152),(22,'ERJ142',22,'BGR','BJI','07EP','Economy Plus','09-02-2020',1132),(16,'CRJ900',39,'COD','SCC','07FC','First Class','04-05-2019',1149),(24,'A321',14,'BQN','CAK','08B','Bussiness','22-07-2019',1124),(18,'767-301ER',46,'CDV','HNL','08E','Economy','07-07-2019',1156),(32,'ERJ142',31,'BTM','CHA','08EP','Economy Plus','04-03-2021',1141),(20,'CRJ900',36,'CHA','COU','08FC','First Class','26-09-2019',1146),(25,'767-301ER',23,'BLV','BFL','09B','Bussiness','07-03-2019',1133),(19,'767-301ER',32,'CLD','CHI','09E','Economy','07-02-2018',1142),(47,'CRJ900',33,'CDC','CST','09EP','Economy Plus','15-12-2020',1143),(20,'CRJ900',39,'COD','SCC','09FC','First Class','03-05-2020',1149),(29,'A321',38,'CST','DAL','10B','Bussiness','21-11-2019',1148),(25,'767-301ER',44,'COU','CAK','10E','Economy','21-10-2019',1154),(50,'A321',21,'BFL','BET','10EP','Economy Plus','15-08-2020',1131),(41,'A321',34,'CRW','COD','10FC','First Class','15-02-2019',1144),(29,'ERJ142',9,'DEN','LAX','11B','Bussiness','03-05-2018',1119),(27,'767-301ER',46,'CDV','HNL','11E','Economy','29-12-2018',1156),(44,'767-301ER',15,'CAK','ANI','11FC','First Class','06-10-2020',1125),(33,'ERJ142',35,'STT','CDB','12B','Bussiness','15-04-2020',1145),(28,'ERJ142',26,'BET','BTM','12E','Economy','12-12-2018',1136),(46,'A321',8,'ORD','EWR','12FC','First Class','08-07-2011',1118),(49,'767-301ER',15,'CAK','ANI','13B','Bussiness','19-08-2020',1125),(31,'767-301ER',20,'AVL','BOI','13E','Economy','31-12-2018',1130),(18,'767-301ER',1,'EWR','HNL','13FC','First Class','01-04-2018',1111),(46,'A321',25,'RDM','BJI','14E','Economy','25-11-2020',1135);
/*!40000 ALTER TABLE `passengers_on_flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_details`
--

DROP TABLE IF EXISTS `route_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_details` (
  `route_id` int DEFAULT NULL,
  `flight_num` varchar(10) DEFAULT NULL,
  `origin_airport` varchar(50) DEFAULT NULL,
  `destination_airport` varchar(50) DEFAULT NULL,
  `aircraft_id` int DEFAULT NULL,
  `distance_miles` int DEFAULT NULL,
  UNIQUE KEY `route_id` (`route_id`),
  CONSTRAINT `route_details_chk_1` CHECK ((`flight_num` like _utf8mb4'FL%')),
  CONSTRAINT `route_details_chk_2` CHECK ((`distance_miles` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_details`
--

LOCK TABLES `route_details` WRITE;
/*!40000 ALTER TABLE `route_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `route_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `route_id` int DEFAULT NULL,
  `flight_num` int DEFAULT NULL,
  `origin_airport` text,
  `destination_airport` text,
  `aircraft_id` text,
  `distance_miles` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,1111,'EWR','HNL','767-301ER',4962),(2,1112,'HNL','EWR','767-301ER',4962),(3,1113,'EWR','LHR','A321',3466),(4,1114,'JFK','LAX','767-301ER',2475),(5,1115,'LAX','JFK','767-301ER',2475),(6,1116,'HNL','LAX','767-301ER',2556),(7,1117,'LAX','ORD','A321',1745),(8,1118,'ORD','EWR','A321',719),(9,1119,'DEN','LAX','ERJ142',862),(10,1120,'HNL','DEN','A321',3365),(12,1122,'ABI','ADK','767-301ER',4300),(13,1123,'ADK','BQN','A321',2232),(14,1124,'BQN','CAK','A321',2445),(15,1125,'CAK','ANI','767-301ER',2000),(16,1126,'ALB','APN','A321',1700),(17,1127,'APN','BLV','767-301ER',1900),(18,1128,'ANI','BGR','ERJ142',2450),(19,1129,'ATW','AVL','A321',2222),(20,1130,'AVL','BOI','767-301ER',3134),(21,1131,'BFL','BET','A321',2425),(22,1132,'BGR','BJI','ERJ142',1242),(23,1133,'BLV','BFL','767-301ER',2354),(24,1134,'BJI','BQN','A321',1575),(25,1135,'RDM','BJI','A321',2425),(26,1136,'BET','BTM','ERJ142',1311),(27,1137,'BOI','CLD','A321',578),(28,1138,'BOS','CDC','767-301ER',246),(29,1139,'BKG','CRW','767-301ER',909),(30,1140,'BUR','STT','CRJ900',780),(31,1141,'BTM','CHA','ERJ142',660),(32,1142,'CLD','CHI','767-301ER',246),(33,1143,'CDC','CST','CRJ900',1345),(34,1144,'CRW','COD','A321',2452),(35,1145,'STT','CDB','ERJ142',2121),(36,1146,'CHA','COU','CRJ900',1212),(37,1147,'CHI','CST','767-301ER',999),(38,1148,'CST','DAL','A321',1111),(39,1149,'COD','SCC','CRJ900',1579),(40,1150,'CDB','DEC','A321',909),(41,1151,'CAE','DRT','ERJ142',898),(42,1152,'CSG','BOS','767-301ER',890),(43,1153,'CBM','BOI','A321',8989),(44,1154,'COU','CAK','767-301ER',7676),(45,1155,'CCR','EWR','CRJ900',676),(46,1156,'CDV','HNL','767-301ER',8668),(47,1157,'DAL','LAX','CRJ900',675),(48,1158,'SCC','DEN','A321',5645),(49,1159,'DEC','ABI','A321',4533),(50,1160,'DRT','ORD','A321',2445);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_details`
--

DROP TABLE IF EXISTS `ticket_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_details` (
  `p_date` text,
  `customer_id` int DEFAULT NULL,
  `aircraft_id` text,
  `class_id` text,
  `no_of_tickets` int DEFAULT NULL,
  `a_code` text,
  `Price_per_ticket` int DEFAULT NULL,
  `brand` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_details`
--

LOCK TABLES `ticket_details` WRITE;
/*!40000 ALTER TABLE `ticket_details` DISABLE KEYS */;
INSERT INTO `ticket_details` VALUES ('26-12-2018',27,'767-301ER','Economy',1,'DAL',130,'Emirates'),('02-02-2020',22,'ERJ142','Economy Plus',1,'AGB',220,'Jet Airways'),('03-03-2020',21,'CRJ900','Bussiness',1,'BOH',490,'Bristish Airways'),('04-04-2020',4,'767-301ER','First Class',1,'AGB',390,'Emirates'),('05-05-2020',5,'ERJ142','Economy',1,'CTM',120,'Jet Airways'),('07-07-2020',7,'767-301ER','Bussiness',1,'BFS',430,'Emirates'),('08-08-2020',8,'A321','Economy Plus',1,'DAL',275,'Qatar Airways'),('09-09-2020',9,'767-301ER','First Class',1,'BOH',380,'Emirates'),('10-10-2020',10,'A321','Economy',1,'MCO',135,'Qatar Airways'),('11-11-2020',11,'767-301ER','Bussiness',1,'AGB',465,'Emirates'),('12-12-2020',19,'CRJ900','Economy Plus',1,'DEN',225,'Bristish Airways'),('01-01-2019',13,'A321','First Class',1,'YVR',395,'Qatar Airways'),('02-02-2019',14,'ERJ142','Economy',1,'CTM',120,'Jet Airways'),('03-03-2019',25,'767-301ER','Bussiness',1,'BHX',499,'Emirates'),('04-04-2019',16,'CRJ900','First Class',1,'YVR',395,'Bristish Airways'),('03-05-2019',17,'A321','Economy Plus',1,'BFS',250,'Qatar Airways'),('06-06-2019',18,'767-301ER','Economy',1,'YVR',190,'Emirates'),('07-07-2019',24,'A321','Bussiness',1,'CTM',480,'Qatar Airways'),('09-08-2019',20,'CRJ900','First Class',1,'MCO',365,'Bristish Airways'),('21-09-2019',25,'767-301ER','Economy',1,'BOH',150,'Emirates'),('22-10-2019',29,'A321','Bussiness',1,'PEK',410,'Qatar Airways'),('23-11-2019',1,'ERJ142','Economy Plus',1,'BFS',250,'Jet Airways'),('24-12-2019',14,'767-301ER','Economy',1,'BHX',170,'Emirates'),('25-01-2019',2,'A321','Bussiness',1,'YVR',505,'Qatar Airways'),('01-01-2018',9,'CRJ900','First Class',1,'AGB',390,'British Airways'),('01-02-2018',19,'767-301ER','Economy',1,'AGB',100,'Emirates'),('01-03-2018',18,'767-301ER','First Class',1,'BFS',375,'Emirates'),('01-04-2018',29,'ERJ142','Bussiness',1,'EME',510,'Jet Airways'),('01-05-2018',8,'A321','Economy',1,'YVR',190,'Qatar Airways'),('01-06-2018',20,'CRJ900','First Class',1,'PEK',315,'Bristish Airways'),('01-07-2018',5,'767-301ER','Bussiness',1,'BFS',430,'Emirates'),('01-08-2018',11,'ERJ142','Economy Plus',1,'BHX',295,'Jet Airways'),('01-09-2018',2,'767-301ER','Economy',1,'DAL',130,'Emirates'),('01-10-2018',1,'CRJ900','First Class',1,'DEN',320,'Bristish Airways'),('01-11-2018',15,'A321','Bussiness',1,'BFS',430,'Qatar Airways'),('01-12-2018',28,'ERJ142','Economy',1,'BHX',170,'Jet Airways'),('19-12-2018',31,'767-301ER','Economy',1,'DAL',130,'Emirates'),('04-02-2020',32,'ERJ142','Economy Plus',1,'AGB',220,'Jet Airways'),('12-03-2020',33,'CRJ900','Bussiness',1,'BOH',490,'Bristish Airways'),('29-04-2020',4,'767-301ER','First Class',1,'AGB',390,'Emirates'),('30-05-2020',5,'ERJ142','Economy',1,'CTM',120,'Jet Airways'),('17-07-2020',49,'767-301ER','Bussiness',1,'BFS',430,'Emirates'),('12-08-2020',50,'A321','Economy Plus',1,'DAL',275,'Qatar Airways'),('05-09-2020',44,'767-301ER','First Class',1,'BOH',380,'Emirates'),('07-10-2020',46,'A321','Economy',1,'MCO',135,'Qatar Airways'),('08-11-2020',11,'767-301ER','Bussiness',1,'AGB',465,'Emirates'),('09-12-2020',47,'CRJ900','Economy Plus',1,'DEN',225,'Bristish Airways'),('11-01-2019',41,'A321','First Class',1,'YVR',395,'Qatar Airways'),('13-12-2020',19,'CRJ900','Economy Plus',1,'DEN',225,'Bristish Airways'),('15-01-2019',46,'A321','First Class',1,'YVR',395,'Qatar Airways');
/*!40000 ALTER TABLE `ticket_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `business_class_customers`
--

/*!50001 DROP VIEW IF EXISTS `business_class_customers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `business_class_customers` AS select `c`.`customer_id` AS `customer_id`,concat(`c`.`first_name`,' ',`c`.`last_name`) AS `full_name`,`t`.`brand` AS `brand` from (`customer` `c` join `ticket_details` `t` on((`c`.`customer_id` = `t`.`customer_id`))) where (`t`.`class_id` = 'Bussiness') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-03 23:16:14
