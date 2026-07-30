-- MySQL dump 10.13  Distrib 9.6.0, for Win64 (x86_64)
--
-- Host: localhost    Database: waves_store
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '030b997c-1fb8-11f1-9da9-22564b746396:1-173';

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (34,1,'lamp',1,'2026-05-08 16:15:18'),(35,1,'candle',5,'2026-05-08 16:15:20'),(36,1,'candle2',1,'2026-05-08 23:41:02'),(41,28,'candle',2,'2026-05-15 13:35:41'),(42,28,'lamp',1,'2026-05-25 06:39:03'),(43,28,'candle2',1,'2026-05-25 06:39:05');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `items` json DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'Harshita Mansoriya','08319534537','harshitamansoriya85@gmail.com','3rd floor 301 Sheetalnath Apartment Silicon City Indore','INDORE','MADHYA PRADESH','462039','[{\"img\": \"https://m.media-amazon.com/images/I/61poeqTEhKL._SL1500_.jpg\", \"name\": \"Waves Brown Slatted Lamp\", \"price\": \"1499.00\", \"quantity\": 3, \"product_id\": \"lamp\"}, {\"img\": \"https://m.media-amazon.com/images/I/51Ml-V+Rd4L._SL1251_.jpg\", \"name\": \"Waves Luxury Oud Candle\", \"price\": \"399.00\", \"quantity\": 3, \"product_id\": \"candle\"}, {\"img\": \"https://static.vecteezy.com/system/resources/thumbnails/035/707/109/small_2x/ai-generated-creative-burning-candle-on-a-wooden-background-ai-generative-free-photo.jpg\", \"name\": \"waves midnight candle \", \"price\": \"599.00\", \"quantity\": 2, \"product_id\": \"candle2\"}]',6892.00,'Pending','2026-05-08 00:52:26'),(2,1,'Harshita Mansoriya','08319534537','harshitamansoriya85@gmail.com','3rd floor 301 Sheetalnath Apartment Silicon City Indore','INDORE','MADHYA PRADESH','462039','[{\"img\": \"https://m.media-amazon.com/images/I/51Ml-V+Rd4L._SL1251_.jpg\", \"name\": \"Waves Luxury Oud Candle\", \"price\": \"399.00\", \"quantity\": 1, \"product_id\": \"candle\"}, {\"img\": \"https://m.media-amazon.com/images/I/61poeqTEhKL._SL1500_.jpg\", \"name\": \"Waves Brown Slatted Lamp\", \"price\": \"1499.00\", \"quantity\": 1, \"product_id\": \"lamp\"}, {\"img\": \"https://static.vecteezy.com/system/resources/thumbnails/035/707/109/small_2x/ai-generated-creative-burning-candle-on-a-wooden-background-ai-generative-free-photo.jpg\", \"name\": \"waves midnight candle \", \"price\": \"599.00\", \"quantity\": 1, \"product_id\": \"candle2\"}]',2497.00,'Pending','2026-05-08 01:15:24'),(3,1,'Harshita Mansoriya','08319534537','harshitamansoriya85@gmail.com','3rd floor 301 Sheetalnath Apartment Silicon City Indore','INDORE','MADHYA PRADESH','462039','[{\"img\": \"https://m.media-amazon.com/images/I/61poeqTEhKL._SL1500_.jpg\", \"name\": \"Waves Brown Slatted Lamp\", \"price\": \"1499.00\", \"quantity\": 1, \"product_id\": \"lamp\"}]',1499.00,'Pending','2026-05-08 08:54:14'),(4,1,'Harshita Mansoriya','08319534537','harshitamansoriya85@gmail.com','3rd floor 301 Sheetalnath Apartment Silicon City Indore','INDORE','MADHYA PRADESH','462039','[{\"img\": \"https://m.media-amazon.com/images/I/61poeqTEhKL._SL1500_.jpg\", \"name\": \"Waves Brown Slatted Lamp\", \"price\": \"1499.00\", \"quantity\": 2, \"product_id\": \"lamp\"}, {\"img\": \"https://static.vecteezy.com/system/resources/thumbnails/035/707/109/small_2x/ai-generated-creative-burning-candle-on-a-wooden-background-ai-generative-free-photo.jpg\", \"name\": \"waves midnight candle \", \"price\": \"599.00\", \"quantity\": 1, \"product_id\": \"candle2\"}]',3597.00,'Pending','2026-05-08 09:23:32'),(5,28,'Harshita Mansoriya','08319534537','harshitamansoriya85@gmail.com','3rd floor 301 Sheetalnath Apartment Silicon City Indore','INDORE','MADHYA PRADESH','462039','[{\"id\": 37, \"img\": \"https://m.media-amazon.com/images/I/51Ml-V+Rd4L._SL1251_.jpg\", \"name\": \"Waves Luxury Oud Candle\", \"price\": \"399.00\", \"discount\": \"60% off\", \"quantity\": 3, \"product_id\": \"candle\"}, {\"id\": 38, \"img\": \"https://m.media-amazon.com/images/I/61poeqTEhKL._SL1500_.jpg\", \"name\": \"Waves Brown Slatted Lamp\", \"price\": \"1499.00\", \"discount\": \"63% off\", \"quantity\": 1, \"product_id\": \"lamp\"}]',2696.00,'Pending','2026-05-09 02:08:20'),(6,28,'Harshita Mansoriya','08319534537','harshitamansoriya85@gmail.com','3rd floor 301 Sheetalnath Apartment Silicon City Indore','INDORE','MADHYA PRADESH','462039','[{\"id\": 39, \"img\": \"\\\"C:\\\\Users\\\\harsh\\\\OneDrive\\\\Desktop\\\\main-image.jpeg\\\"\", \"name\": \"lotus bloom table lamp\", \"price\": \"1599.00\", \"discount\": \"20%\", \"quantity\": 1, \"product_id\": \"lamp2\"}, {\"id\": 40, \"img\": \"https://static.vecteezy.com/system/resources/thumbnails/035/707/109/small_2x/ai-generated-creative-burning-candle-on-a-wooden-background-ai-generative-free-photo.jpg\", \"name\": \"waves midnight candle \", \"price\": \"599.00\", \"discount\": \"15 %\", \"quantity\": 3, \"product_id\": \"candle2\"}]',3396.00,'Pending','2026-05-09 07:00:08');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `stock` int DEFAULT '0',
  `discount` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `img` text,
  `amazon` text,
  `flipkart` text,
  `whatsapp` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image2` text,
  `image3` text,
  `details` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('candle','Waves Luxury Oud Candle','Premium soy wax candle, 150g, 30+ hours burn time. Comes in a borosilicate glass container with bamboo lid and wooden wick.',399.00,20,'60% off','candle','https://m.media-amazon.com/images/I/51Ml-V+Rd4L._SL1251_.jpg','https://amzn.in/d/0jcFjXnu','','https://wa.me/918319534537?text=I%20want%20to%20buy%20Waves%20Luxury%20Oud%20Candle','2026-05-07 23:44:24',NULL,NULL,NULL),('candle2','waves midnight candle ','luxury candle ',599.00,10,'15 %','candle','https://static.vecteezy.com/system/resources/thumbnails/035/707/109/small_2x/ai-generated-creative-burning-candle-on-a-wooden-background-ai-generative-free-photo.jpg','https://amazon.in','https://flipkart.com','https://wa.me/918319534537','2026-05-07 22:38:52',NULL,NULL,NULL),('idol','ganesh ji murti','',500.00,50,'10%','idols','/uploads/1778311666264-ganeshji1.jpeg','','','','2026-05-09 07:27:46','/uploads/1778311666300-ganeshji2.jpeg','/uploads/1778311666327-ganeshji3.jpeg',''),('lamp','Waves Brown Slatted Lamp','Warm Glow, Tripod Base, Bedside Nightstand Light. Perfect for cozy evenings and stylish decor.',1499.00,10,'63% off','lamp','https://m.media-amazon.com/images/I/61poeqTEhKL._SL1500_.jpg','https://amzn.in/d/09tcR9Ig','https://dl.flipkart.com/s/w34HuUNNNN','https://wa.me/918319534537?text=I%20want%20to%20buy%20Waves%20Brown%20Slatted%20Lamp','2026-05-07 23:44:24',NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (27,'utkarsh','2a057642222a878bc360f52f8e1f0dfd2af93196f123269397423155a4ec4884',1),(28,'harshita','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',0),(55,'shiv','91b4d142823f7d20c5f08df69122de43f35f057a988d9619f6d3138485c9a203',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-25 12:45:19
