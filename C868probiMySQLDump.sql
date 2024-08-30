-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: probi88_c868_database
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `Appointment_ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Start` datetime DEFAULT NULL,
  `End` datetime DEFAULT NULL,
  `Create_Date` datetime DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  `Last_Updated_By` varchar(50) DEFAULT NULL,
  `Customer_ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Contact_ID` int NOT NULL,
  `Special` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Appointment_ID`),
  KEY `fk_customer_id_idx` (`Customer_ID`),
  KEY `fk_user_id_idx` (`User_ID`),
  KEY `fk_contact_id_idx` (`Contact_ID`),
  CONSTRAINT `fk_contact_id` FOREIGN KEY (`Contact_ID`) REFERENCES `contacts` (`Contact_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_id` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'title','description','location','Planning Session','2020-05-28 12:00:00','2020-05-28 13:00:00','2024-07-01 12:12:14','script','2024-07-01 18:12:14','script',1,1,3,''),(2,'pet checkup','cat general health checkup','123 vet lane','Veterinary','2024-08-26 09:30:00','2024-08-26 10:30:00',NULL,NULL,NULL,NULL,2,2,2,'Pet Id: 1002'),(3,'car oil change','car check-up and oil change','grease gorilla avenue','Car Checkup','2024-08-26 11:00:00','2024-08-26 12:00:00',NULL,NULL,NULL,NULL,2,2,3,'Car Id: 10000'),(4,'test','testes','stetes','Car Checkup','2024-08-26 18:30:00','2024-08-26 19:00:00',NULL,NULL,NULL,NULL,3,1,1,'Car Id: 10001'),(5,'title test 2','test description 2','location test 2','Dentist','2024-08-28 10:00:00','2024-08-28 11:00:00',NULL,NULL,NULL,NULL,2,2,1,NULL),(6,'pet test title 2','pet description 2','pet location 2','Veterinary','2024-08-28 15:30:00','2024-08-28 16:00:00',NULL,NULL,NULL,NULL,1,2,2,'Pet Id: 1001');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `Car_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Car_License_Plate` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Car_Model` varchar(50) DEFAULT NULL,
  `Car_Make` varchar(50) DEFAULT NULL,
  `Car_Year` int DEFAULT NULL,
  `Create_Date` datetime DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  `Last_Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Car_ID`),
  KEY `cfk_customer_id_idx` (`Customer_ID`),
  CONSTRAINT `cfk_customer_id` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (10000,2,'000-XXX','F 150','2 Wonder Way','11-445-910-2135','Ford',2003,NULL,NULL,NULL,NULL),(10001,3,'123-TST','48 Horse Manor','test phonenumber','Civic','Honda',1988,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `Contact_ID` int NOT NULL AUTO_INCREMENT,
  `Contact_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Contact_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Anika Costa','acoasta@company.com'),(2,'Daniel Garcia','dgarcia@company.com'),(3,'Li Lee','llee@company.com');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `Country_ID` int NOT NULL AUTO_INCREMENT,
  `Country` varchar(50) DEFAULT NULL,
  `Create_Date` datetime DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  `Last_Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'U.S','2024-07-01 12:09:35','script','2024-07-01 18:09:35','script'),(2,'UK','2024-07-01 12:09:38','script','2024-07-01 18:09:38','script'),(3,'Canada','2024-07-01 12:09:41','script','2024-07-01 18:09:41','script');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Postal_Code` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Create_Date` datetime DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  `Last_Updated_By` varchar(50) DEFAULT NULL,
  `Division_ID` int NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  KEY `fk_division_id_idx` (`Division_ID`),
  CONSTRAINT `fk_division_id` FOREIGN KEY (`Division_ID`) REFERENCES `first_level_divisions` (`Division_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Daddy Warbucks','1919 Boardwalk','01291','869-908-1875','2024-07-01 12:12:10','script','2024-07-01 18:12:10','script',29),(2,'Lady McAnderson','2 Wonder Way','AF19B','11-445-910-2135','2024-07-01 12:12:11','script','2024-07-01 18:12:11','script',103),(3,'Dudley Do-Right','48 Horse Manor ','28198','874-916-2671','2024-07-01 12:12:13','script','2024-07-01 18:12:13','script',60);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_level_divisions`
--

DROP TABLE IF EXISTS `first_level_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `first_level_divisions` (
  `Division_ID` int NOT NULL AUTO_INCREMENT,
  `Division` varchar(50) DEFAULT NULL,
  `Create_Date` datetime DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  `Last_Updated_By` varchar(50) DEFAULT NULL,
  `Country_ID` int NOT NULL,
  PRIMARY KEY (`Division_ID`),
  KEY `fk_country_id_idx` (`Country_ID`),
  CONSTRAINT `fk_country_id` FOREIGN KEY (`Country_ID`) REFERENCES `countries` (`Country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3979 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_level_divisions`
--

LOCK TABLES `first_level_divisions` WRITE;
/*!40000 ALTER TABLE `first_level_divisions` DISABLE KEYS */;
INSERT INTO `first_level_divisions` VALUES (1,'Alabama','2024-07-01 12:09:44','script','2024-07-01 18:09:44','script',1),(2,'Arizona','2024-07-01 12:09:48','script','2024-07-01 18:09:48','script',1),(3,'Arkansas','2024-07-01 12:09:50','script','2024-07-01 18:09:50','script',1),(4,'California','2024-07-01 12:09:54','script','2024-07-01 18:09:54','script',1),(6,'Connecticut','2024-07-01 12:09:58','script','2024-07-01 18:09:58','script',1),(7,'Delaware','2024-07-01 12:10:00','script','2024-07-01 18:10:00','script',1),(8,'District of Columbia','2024-07-01 12:10:01','script','2024-07-01 18:10:01','script',1),(9,'Florida','2024-07-01 12:10:03','script','2024-07-01 18:10:03','script',1),(10,'Georgia','2024-07-01 12:10:05','script','2024-07-01 18:10:05','script',1),(11,'Idaho','2024-07-01 12:10:09','script','2024-07-01 18:10:09','script',1),(12,'Illinois','2024-07-01 12:10:11','script','2024-07-01 18:10:11','script',1),(13,'Indiana','2024-07-01 12:10:13','script','2024-07-01 18:10:13','script',1),(14,'Iowa','2024-07-01 12:10:15','script','2024-07-01 18:10:15','script',1),(15,'Kansas','2024-07-01 12:10:18','script','2024-07-01 18:10:18','script',1),(16,'Kentucky','2024-07-01 12:10:34','script','2024-07-01 18:10:34','script',1),(17,'Louisiana','2024-07-01 12:10:46','script','2024-07-01 18:10:46','script',1),(18,'Maine','2024-07-01 12:10:53','script','2024-07-01 18:10:53','script',1),(19,'Maryland','2024-07-01 12:10:56','script','2024-07-01 18:10:56','script',1),(21,'Michigan','2024-07-01 12:10:59','script','2024-07-01 18:10:59','script',1),(22,'Minnesota','2024-07-01 12:11:06','script','2024-07-01 18:11:06','script',1),(23,'Mississippi','2024-07-01 12:11:07','script','2024-07-01 18:11:07','script',1),(24,'Missouri','2024-07-01 12:11:08','script','2024-07-01 18:11:08','script',1),(25,'Montana','2024-07-01 12:11:09','script','2024-07-01 18:11:09','script',1),(26,'Nebraska','2024-07-01 12:11:10','script','2024-07-01 18:11:10','script',1),(27,'Nevada','2024-07-01 12:11:11','script','2024-07-01 18:11:11','script',1),(28,'New Hampshire','2024-07-01 12:11:12','script','2024-07-01 18:11:12','script',1),(29,'New Jersey','2024-07-01 12:11:12','script','2024-07-01 18:11:12','script',1),(30,'New Mexico','2024-07-01 12:11:13','script','2024-07-01 18:11:13','script',1),(31,'New York','2024-07-01 12:11:14','script','2024-07-01 18:11:14','script',1),(32,'North Carolina','2024-07-01 12:11:15','script','2024-07-01 18:11:15','script',1),(33,'North Dakota','2024-07-01 12:11:16','script','2024-07-01 18:11:16','script',1),(34,'Ohio','2024-07-01 12:11:17','script','2024-07-01 18:11:17','script',1),(35,'Oklahoma','2024-07-01 12:11:18','script','2024-07-01 18:11:18','script',1),(36,'Oregon','2024-07-01 12:11:19','script','2024-07-01 18:11:19','script',1),(37,'Pennsylvania','2024-07-01 12:11:20','script','2024-07-01 18:11:20','script',1),(38,'Rhode Island','2024-07-01 12:11:21','script','2024-07-01 18:11:21','script',1),(39,'South Carolina','2024-07-01 12:11:22','script','2024-07-01 18:11:22','script',1),(40,'South Dakota','2024-07-01 12:11:23','script','2024-07-01 18:11:23','script',1),(41,'Tennessee','2024-07-01 12:11:24','script','2024-07-01 18:11:24','script',1),(42,'Texas','2024-07-01 12:11:25','script','2024-07-01 18:11:25','script',1),(43,'Utah','2024-07-01 12:11:26','script','2024-07-01 18:11:26','script',1),(44,'Vermont','2024-07-01 12:11:27','script','2024-07-01 18:11:27','script',1),(45,'Virginia','2024-07-01 12:11:28','script','2024-07-01 18:11:28','script',1),(46,'Washington','2024-07-01 12:11:29','script','2024-07-01 18:11:29','script',1),(47,'West Virginia','2024-07-01 12:11:29','script','2024-07-01 18:11:29','script',1),(48,'Wisconsin','2024-07-01 12:11:30','script','2024-07-01 18:11:30','script',1),(49,'Wyoming','2024-07-01 12:11:33','script','2024-07-01 18:11:33','script',1),(52,'Hawaii','2024-07-01 12:10:07','script','2024-07-01 18:10:07','script',1),(54,'Alaska','2024-07-01 12:09:46','script','2024-07-01 18:09:46','script',1),(60,'Northwest Territories','2024-07-01 12:11:39','script','2024-07-01 18:11:39','script',3),(61,'Alberta','2024-07-01 12:11:34','script','2024-07-01 18:11:34','script',3),(62,'British Columbia','2024-07-01 12:11:35','script','2024-07-01 18:11:35','script',3),(63,'Manitoba','2024-07-01 12:11:36','script','2024-07-01 18:11:36','script',3),(64,'New Brunswick','2024-07-01 12:11:37','script','2024-07-01 18:11:37','script',3),(65,'Nova Scotia','2024-07-01 12:11:40','script','2024-07-01 18:11:40','script',3),(66,'Prince Edward Island','2024-07-01 12:11:43','script','2024-07-01 18:11:43','script',3),(67,'Ontario','2024-07-01 12:11:42','script','2024-07-01 18:11:42','script',3),(69,'Saskatchewan','2024-07-01 12:11:44','script','2024-07-01 18:11:44','script',3),(70,'Nunavut','2024-07-01 12:11:41','script','2024-07-01 18:11:41','script',3),(71,'Yukon','2024-07-01 12:11:45','script','2024-07-01 18:11:45','script',3),(72,'Newfoundland and Labrador','2024-07-01 12:11:38','script','2024-07-01 18:11:38','script',3),(101,'England','2024-07-01 12:11:46','script','2024-07-01 18:11:46','script',2),(102,'Wales','2024-07-01 12:11:46','script','2024-07-01 18:11:46','script',2),(103,'Scotland','2024-07-01 12:11:48','script','2024-07-01 18:11:48','script',2),(104,'Northern Ireland','2024-07-01 12:11:49','script','2024-07-01 18:11:49','script',2);
/*!40000 ALTER TABLE `first_level_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `Pet_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Pets_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Pet_Species` varchar(50) DEFAULT NULL,
  `Pet_Breed` varchar(50) DEFAULT NULL,
  `Create_Date` datetime DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  `Last_Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pet_ID`),
  KEY `fk_pets_customer_id_idx` (`Customer_ID`),
  CONSTRAINT `fk_pets_customer_id` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1000,1,'clifford','1919 Boardwalk','869-908-1875','Dog','Red Retriever','2024-07-01 12:12:10','script','2024-07-01 18:12:10','script'),(1001,1,'scooby','mystery lane','1-800-mystery','Dog','Great Dane',NULL,NULL,NULL,NULL),(1002,2,'Tom','123 Loony Toons Lane','180-Tomsnumber','Cat','domestic short hair',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(50) DEFAULT NULL,
  `Password` text,
  `Create_Date` datetime DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  `Last_Updated_By` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_Name_UNIQUE` (`User_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test','2024-07-01 11:31:37','script','2024-07-01 17:31:37','script'),(2,'admin','admin','2024-07-10 15:40:55','script','2024-07-10 21:40:55','script');
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

-- Dump completed on 2024-08-30  2:28:42
