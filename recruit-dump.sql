-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: recruit
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidatejob`
--

DROP TABLE IF EXISTS `candidatejob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatejob` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `candidateJobId` varchar(10) NOT NULL,
  `jobId` varchar(10) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `userId` varchar(10) DEFAULT NULL,
  `jobStatus` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`candidateJobId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidateprofile`
--

DROP TABLE IF EXISTS `candidateprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidateprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `alternateEmail` varchar(45) DEFAULT NULL,
  `phone1` varchar(45) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `skills` varchar(1000) DEFAULT NULL,
  `topSkills` varchar(1000) DEFAULT NULL,
  `interestArea` varchar(45) DEFAULT NULL,
  `currentEmployer` varchar(45) DEFAULT NULL,
  `noticePeriod` varchar(45) DEFAULT NULL,
  `attachments` varchar(10000) DEFAULT NULL,
  `github` varchar(105) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jobId` varchar(10) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `persona` varchar(20) DEFAULT NULL,
  `description` mediumtext,
  `responsibilities` mediumtext,
  `skills` mediumtext,
  `secondarySkills` mediumtext,
  `education` varchar(105) DEFAULT NULL,
  `tags` varchar(500) DEFAULT NULL,
  `positions` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `postedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`jobId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(250) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-16 12:39:27
