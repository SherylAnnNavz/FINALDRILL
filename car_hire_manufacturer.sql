-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: car_hire
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `manufacturer_code` int NOT NULL,
  `manufacturer_name` varchar(255) DEFAULT NULL,
  `manufacturer_details` text,
  PRIMARY KEY (`manufacturer_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Acme Corporation','Leading provider of industrial equipment'),(2,'TechCom Solutions','Specializes in software development'),(3,'Global Motors','Produces automobiles and motorcycles'),(4,'Apex Electronics','Manufactures consumer electronics'),(5,'Precision Tools','Offers high-quality tooling solutions'),(6,'Solar Power Inc.','Produces solar panels and renewable energy systems'),(7,'BioPharma Labs','Leading pharmaceutical research and development'),(8,'MicroTech','Specializes in microprocessor manufacturing'),(9,'FoodFusion','Produces a wide range of food products'),(10,'FashionForward','Leading clothing and fashion accessories brand'),(11,'GreenTech Solutions','Offers eco-friendly technology solutions'),(12,'Wellness Innovations','Manufactures health and wellness products'),(13,'ElectroMech','Provides industrial automation solutions'),(14,'AquaPure','Produces water purification systems'),(15,'BioGarden','Specializes in organic farming and gardening supplies'),(16,'HomeComfort','Manufactures household appliances'),(17,'AutoParts Direct','Supplies automotive spare parts'),(18,'TechMinds','Offers IT consulting and software services'),(19,'FashionFusion','Produces trendy clothing for young adults'),(20,'GreenEnergy Solutions','Specializes in renewable energy solutions'),(21,'BioPharma Solutions','Provides contract manufacturing for pharmaceuticals'),(22,'ElectroPower','Manufactures electrical equipment and power systems'),(23,'WellnessLife','Offers wellness and personal care products'),(24,'UrbanDwell','Produces modern furniture and home decor'),(25,'FoodDelights','Specializes in gourmet food products'),(26,'AutoTech','Provides advanced automotive technology solutions'),(27,'Precision Instruments','Manufactures high-precision measuring tools'),(28,'EcoTech Solutions','Offers environmentally friendly technology products'),(29,'BioGenetics','Specializes in genetic research and diagnostics'),(30,'HealthFirst','Produces medical equipment and supplies');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 11:23:22
