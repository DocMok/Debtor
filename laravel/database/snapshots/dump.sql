
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
DROP TABLE IF EXISTS `debtors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debtors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `debit_sum` double(8,2) NOT NULL,
  `account_block_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrest_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `debtors` WRITE;
/*!40000 ALTER TABLE `debtors` DISABLE KEYS */;
INSERT INTO `debtors` VALUES (1,'вася','12345678','садова 37','орган','12313','1994-02-02 00:00:00',123456.00,'12121','sdfg','2022-04-22 12:06:01','2022-04-22 12:06:01','123'),(3,'ebanko','sdsdsd','sdsdsd','sdsdsds','12313','1994-02-02 00:00:00',0.00,'3123','13123','2022-04-22 15:04:04','2022-05-03 05:07:32','sdsdsdsd'),(4,'asdasd','asdasd','asdasd','asdasd','asdasd','2022-04-22 00:00:00',0.00,'sdaf','asdf','2022-04-23 05:55:50','2022-05-03 05:07:27','asdasd');
/*!40000 ALTER TABLE `debtors` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `debtor_id` bigint unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_debtor_id_foreign` (`debtor_id`),
  CONSTRAINT `files_debtor_id_foreign` FOREIGN KEY (`debtor_id`) REFERENCES `debtors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,1,'1/zTpb4rvHVcmXOowTVZRycl0WgQI2VVEpCJa19T7v.jpg','2022-04-22 12:06:04','2022-04-22 12:06:04'),(2,1,'1/A8VUQAbKDXGj824EVgac9sp2lSr0SYaPHwVDeUJM.png','2022-04-22 12:06:05','2022-04-22 12:06:05'),(3,1,'1/UimBUQD7t0FIoDvyeO0zM4A7BJCUiej3gaTIqfxu.png','2022-04-22 12:06:05','2022-04-22 12:06:05'),(6,3,'3/7Lgw2cvMPI5cnESO2Gu19nyNWoMfmsygG84WzLqY.jpg','2022-04-22 15:04:07','2022-04-22 15:04:07'),(7,3,'3/4MopTcDBdt72jwTSuR5zb7cyAB1YYANeiccvwvyd.png','2022-04-22 15:04:09','2022-04-22 15:04:09'),(8,3,'3/cpptOyoG2sroQhnkFzUgNOpGRHAQjZe0dBuhQ8Bj.png','2022-04-22 15:04:10','2022-04-22 15:04:10'),(9,3,'3/JvGNaGF7Yjbf7bgrFLanPQqgO8NzVuBUn04bp9d6.jpg','2022-04-22 17:20:50','2022-04-22 17:20:50'),(10,3,'3/WsSzAaKr8Z3l7cymLAgd6IQ2rNW1gYUjmFx1PCt2.png','2022-04-22 17:20:51','2022-04-22 17:20:51'),(11,3,'3/JM1rf5sMyhQKxHqD8rF6rAhEDrzM657DzQe8Yn8L.png','2022-04-22 17:20:52','2022-04-22 17:20:52'),(12,3,'3/oSk5c2HY8ACuVNjRHH7AuvNJw8kKT3dwfoetq8Z2.png','2022-04-22 17:20:52','2022-04-22 17:20:52'),(13,3,'3/I5UslCM1t4lrp1WiWYEpPs26702dtw3oabsAfDLo.jpg','2022-04-22 17:23:30','2022-04-22 17:23:30'),(14,3,'3/7nGm0qGyf5xpXFWVl7HZwQiJghNymRRT2s1KM815.png','2022-04-22 17:23:30','2022-04-22 17:23:30'),(15,3,'3/dCtlD9I8lJ2Co4IKDLCN8xHZTBftvAiMSDNNTiOE.png','2022-04-22 17:23:31','2022-04-22 17:23:31'),(16,3,'3/Z33M3rbljhHgN50YfpMooVVJD0tGBhfHGDIs75nS.png','2022-04-22 17:23:31','2022-04-22 17:23:31'),(17,3,'3/uasDWGq1BtAP0ktzLC38AFj3lHpdnChIRxY0sCmS.png','2022-04-22 17:23:31','2022-04-22 17:23:31'),(18,1,'1/Ahj8kMNlQDem9QT9RbLupayNhlHAN9R3x3lfF9SC.png','2022-04-22 17:24:02','2022-04-22 17:24:02'),(19,1,'1/lJ6OuRHEskWlrs4e8uJdT4ss5Pr8VxsMxxSVA9Xu.png','2022-04-22 17:24:02','2022-04-22 17:24:02'),(20,1,'1/5kMzuOA63yJJEfdg0UAoTb5LqH2GDLhPw2cyLAST.png','2022-04-22 17:24:03','2022-04-22 17:24:03'),(21,1,'1/fNZaDwUB53GiiW9vitOnWrggjfxLsQP7wdmdbotY.png','2022-04-22 17:24:03','2022-04-22 17:24:03'),(22,1,'1/sWGnGOcAGJiLsRFmdMx2MzWn55i026oGwSkcTUca.png','2022-04-22 17:24:03','2022-04-22 17:24:03'),(23,1,'1/dEFHfJ4bkMZ8Xfi13vmgA0yOKZWt81LMLnmqoE7J.png','2022-04-22 17:24:03','2022-04-22 17:24:03');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_04_22_103436_create_debtors_table',1),(6,'2022_04_22_104653_create_files_table',1),(7,'2022_04_22_115627_add_role_column_to_users_table',1),(8,'2022_04_22_131138_add_bin_column_to_debtors_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com',NULL,'$2y$10$/iT7Sjai/WpF/Gkkw7ow7Oulalt7nk1Gv8T/LYE0A5uql71kysELa',NULL,'2022-04-22 10:27:08','2022-04-22 10:27:08',1),(2,'duda','scrapply1992@gmail.com',NULL,'$2y$10$iuRbkICq04DQnEYpToV8lOTWuvwFJmsyNLWk0CggxvJkqnMkNETeC',NULL,'2022-04-22 10:57:54','2022-04-22 10:57:54',0),(3,'asdasd','asdasd@mail.ru',NULL,'$2y$10$Ws.Alo2KAqGZBff3po.kCOKPU3OURTsptiYeaZ3gEatFMNENsgqpu',NULL,'2022-04-22 10:59:08','2022-04-22 10:59:08',0),(9,'scrap','scrap@gmail.com',NULL,'$2y$10$vhm6q15kdx0G6/vKPSIohencEUfu4GP26UoR9Xr/o8g5FjFspwTdi',NULL,'2022-04-23 07:16:26','2022-04-23 07:16:26',0);
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

