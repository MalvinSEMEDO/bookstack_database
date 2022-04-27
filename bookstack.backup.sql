-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bookstack
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_entity_id_index` (`entity_id`),
  KEY `activities_key_index` (`type`),
  KEY `activities_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'auth_login','standard; (1) Admin',1,'192.168.127.1',NULL,NULL,'2021-12-07 22:03:27','2021-12-07 22:03:27'),(2,'auth_login','standard; (1) Admin',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:43:36','2021-12-09 19:43:36'),(3,'user_create','(3) nimda',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:56:30','2021-12-09 19:56:30'),(4,'user_create','(4) malvin',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:57:21','2021-12-09 19:57:21'),(5,'user_create','(5) joe',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:57:52','2021-12-09 19:57:52'),(6,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2021-12-10 17:18:01','2021-12-10 17:18:01'),(7,'user_delete','(1) Admin',3,'192.168.127.1',NULL,NULL,'2021-12-10 17:42:59','2021-12-10 17:42:59'),(8,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-01-02 14:04:18','2022-01-02 14:04:18'),(9,'bookshelf_create','',3,'192.168.127.1',1,'BookStack\\Bookshelf','2022-01-02 14:06:18','2022-01-02 14:06:18'),(10,'book_create','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:07:08','2022-01-02 14:07:08'),(11,'bookshelf_update','',3,'192.168.127.1',1,'BookStack\\Bookshelf','2022-01-02 14:07:08','2022-01-02 14:07:08'),(12,'book_create','',3,'192.168.127.1',2,'BookStack\\Book','2022-01-02 14:07:40','2022-01-02 14:07:40'),(13,'bookshelf_update','',3,'192.168.127.1',1,'BookStack\\Bookshelf','2022-01-02 14:07:40','2022-01-02 14:07:40'),(14,'book_update','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:08:05','2022-01-02 14:08:05'),(15,'page_create','',3,'192.168.127.1',1,'BookStack\\Page','2022-01-02 14:10:28','2022-01-02 14:10:28'),(16,'book_update','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:16:53','2022-01-02 14:16:53'),(17,'book_update','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:17:12','2022-01-02 14:17:12'),(18,'auth_login','standard; (5) joe',5,'192.168.127.1',NULL,NULL,'2022-01-02 14:17:45','2022-01-02 14:17:45'),(19,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-02 14:18:16','2022-01-02 14:18:16'),(20,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-01-14 07:39:24','2022-01-14 07:39:24'),(21,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-17 19:31:23','2022-01-17 19:31:23'),(22,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-01-17 20:15:36','2022-01-17 20:15:36'),(23,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-20 19:47:54','2022-01-20 19:47:54'),(24,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-21 19:35:56','2022-01-21 19:35:56'),(25,'book_update','',4,'192.168.127.1',2,'BookStack\\Book','2022-01-21 19:38:20','2022-01-21 19:38:20'),(26,'page_create','',4,'192.168.127.1',2,'BookStack\\Page','2022-01-21 20:21:37','2022-01-21 20:21:37'),(27,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-03-29 06:15:37','2022-03-29 06:15:37'),(28,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-03-30 09:54:55','2022-03-30 09:54:55'),(29,'book_create','',4,'192.168.127.1',3,'BookStack\\Book','2022-03-30 10:34:19','2022-03-30 10:34:19'),(30,'page_create','',4,'192.168.127.1',3,'BookStack\\Page','2022-03-30 10:34:28','2022-03-30 10:34:28'),(31,'chapter_create','',4,'192.168.127.1',1,'BookStack\\Chapter','2022-03-30 10:34:39','2022-03-30 10:34:39'),(32,'page_create','',4,'192.168.127.1',4,'BookStack\\Page','2022-03-30 10:35:17','2022-03-30 10:35:17'),(33,'page_create','',4,'192.168.127.1',5,'BookStack\\Page','2022-03-30 10:35:42','2022-03-30 10:35:42'),(34,'page_create','',4,'192.168.127.1',6,'BookStack\\Page','2022-03-30 10:35:50','2022-03-30 10:35:50'),(35,'page_create','',4,'192.168.127.1',7,'BookStack\\Page','2022-03-30 10:36:01','2022-03-30 10:36:01'),(36,'chapter_create','',4,'192.168.127.1',2,'BookStack\\Chapter','2022-03-30 10:36:50','2022-03-30 10:36:50'),(37,'book_update','',4,'192.168.127.1',3,'BookStack\\Book','2022-03-30 10:37:10','2022-03-30 10:37:10'),(38,'bookshelf_update','',4,'192.168.127.1',1,'BookStack\\Bookshelf','2022-03-30 10:40:29','2022-03-30 10:40:29'),(39,'book_create','',4,'192.168.127.1',4,'BookStack\\Book','2022-03-30 10:40:53','2022-03-30 10:40:53'),(40,'bookshelf_update','',4,'192.168.127.1',1,'BookStack\\Bookshelf','2022-03-30 10:40:53','2022-03-30 10:40:53'),(41,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-03-30 10:52:52','2022-03-30 10:52:52'),(42,'auth_login','standard; (3) nimda',3,'10.33.5.147',NULL,NULL,'2022-03-30 12:10:12','2022-03-30 12:10:12'),(43,'auth_login','standard; (3) nimda',3,'10.33.5.147',NULL,NULL,'2022-03-30 12:58:59','2022-03-30 12:58:59'),(44,'auth_login','standard; (4) malvin',4,'10.33.5.147',NULL,NULL,'2022-03-31 07:58:30','2022-03-31 07:58:30'),(45,'auth_login','standard; (4) malvin',4,'10.33.5.215',NULL,NULL,'2022-04-27 06:45:05','2022-04-27 06:45:05'),(46,'auth_login','standard; (3) nimda',3,'10.33.5.215',NULL,NULL,'2022-04-27 10:00:26','2022-04-27 10:00:26'),(47,'book_create','',3,'10.33.5.215',5,'BookStack\\Book','2022-04-27 10:00:51','2022-04-27 10:00:51'),(48,'page_create','',3,'10.33.5.215',8,'BookStack\\Page','2022-04-27 10:48:57','2022-04-27 10:48:57'),(49,'auth_login','standard; (3) nimda',3,'10.33.5.215',NULL,NULL,'2022-04-27 11:05:11','2022-04-27 11:05:11');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_id_unique` (`token_id`),
  KEY `api_tokens_user_id_index` (`user_id`),
  KEY `api_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int(11) NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachments_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `image_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_slug_index` (`slug`),
  KEY `books_created_by_index` (`created_by`),
  KEY `books_updated_by_index` (`updated_by`),
  KEY `books_restricted_index` (`restricted`),
  KEY `books_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'CHEAT\'s installation','cheats-installation','Vous trouverez dans ce livre un code qui installe automatiquement cheat. récupérez le code que vous insérerai dans un fichier, puis pour le lancer il faudra faire la commande \"bash nom_du_fichier -i\" .Pour l\'exécuter il faudra réaliser la commande en mode ROOT (pour passer en mode root faire la commande su -)  ou avoir les droits admin et donc pouvoir utiliser sudo.','2022-01-02 14:07:08','2022-01-02 14:17:12',3,3,0,NULL,NULL,3),(2,'Bookstack\'s installation','bookstacks-installation','procedure of installation','2022-01-02 14:07:40','2022-01-21 19:38:20',3,4,0,NULL,NULL,3),(3,'wireguard','wireguard','','2022-03-30 10:34:19','2022-03-30 10:34:19',4,4,0,NULL,NULL,4),(4,'Guacamole','guacamole','','2022-03-30 10:40:53','2022-03-30 10:40:53',4,4,0,NULL,NULL,4),(5,'configuration vm','configuration-vm','','2022-04-27 10:00:51','2022-04-27 10:00:51',3,3,0,NULL,NULL,3);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves`
--

DROP TABLE IF EXISTS `bookshelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `image_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookshelves_slug_index` (`slug`),
  KEY `bookshelves_created_by_index` (`created_by`),
  KEY `bookshelves_updated_by_index` (`updated_by`),
  KEY `bookshelves_restricted_index` (`restricted`),
  KEY `bookshelves_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves`
--

LOCK TABLES `bookshelves` WRITE;
/*!40000 ALTER TABLE `bookshelves` DISABLE KEYS */;
INSERT INTO `bookshelves` VALUES (1,'1.3ieme année','13ieme-annee','',3,4,0,NULL,'2022-01-02 14:06:18','2022-03-30 10:40:29',NULL,3);
/*!40000 ALTER TABLE `bookshelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves_books`
--

DROP TABLE IF EXISTS `bookshelves_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves_books` (
  `bookshelf_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`book_id`),
  KEY `bookshelves_books_book_id_foreign` (`book_id`),
  CONSTRAINT `bookshelves_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookshelves_books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves_books`
--

LOCK TABLES `bookshelves_books` WRITE;
/*!40000 ALTER TABLE `bookshelves_books` DISABLE KEYS */;
INSERT INTO `bookshelves_books` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3);
/*!40000 ALTER TABLE `bookshelves_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chapters_slug_index` (`slug`),
  KEY `chapters_book_id_index` (`book_id`),
  KEY `chapters_priority_index` (`priority`),
  KEY `chapters_created_by_index` (`created_by`),
  KEY `chapters_updated_by_index` (`updated_by`),
  KEY `chapters_restricted_index` (`restricted`),
  KEY `chapters_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,3,'intro','intro','',3,'2022-03-30 10:34:39','2022-03-30 10:34:39',4,4,0,NULL,4),(2,3,'test','test','',8,'2022-03-30 10:36:50','2022-03-30 10:36:50',4,4,0,NULL,4);
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `local_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `comments_local_id_index` (`local_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletions`
--

DROP TABLE IF EXISTS `deletions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deletions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_by` int(11) NOT NULL,
  `deletable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deletions_deleted_by_index` (`deleted_by`),
  KEY `deletions_deletable_type_index` (`deletable_type`),
  KEY `deletions_deletable_id_index` (`deletable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletions`
--

LOCK TABLES `deletions` WRITE;
/*!40000 ALTER TABLE `deletions` DISABLE KEYS */;
/*!40000 ALTER TABLE `deletions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_confirmations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_confirmations_user_id_index` (`user_id`),
  KEY `email_confirmations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_confirmations`
--

LOCK TABLES `email_confirmations` WRITE;
/*!40000 ALTER TABLE `email_confirmations` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_permissions`
--

DROP TABLE IF EXISTS `entity_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restrictable_id` int(11) NOT NULL,
  `restrictable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restrictions_role_id_index` (`role_id`),
  KEY `restrictions_action_index` (`action`),
  KEY `restrictions_restrictable_id_restrictable_type_index` (`restrictable_id`,`restrictable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_permissions`
--

LOCK TABLES `entity_permissions` WRITE;
/*!40000 ALTER TABLE `entity_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `favouritable_id` int(11) NOT NULL,
  `favouritable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favouritable_index` (`favouritable_id`,`favouritable_type`),
  KEY `favourites_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `images_type_index` (`type`),
  KEY `images_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'3-avatar.png','http://192.168.127.135/uploads/images/user/2021-12/3-avatar.png','2021-12-09 19:56:30','2021-12-09 19:56:30',3,3,'/uploads/images/user/2021-12/3-avatar.png','user',3),(2,'4-avatar.png','http://192.168.127.135/uploads/images/user/2021-12/4-avatar.png','2021-12-09 19:57:21','2021-12-09 19:57:21',4,4,'/uploads/images/user/2021-12/4-avatar.png','user',4),(3,'5-avatar.png','http://192.168.127.135/uploads/images/user/2021-12/5-avatar.png','2021-12-09 19:57:52','2021-12-09 19:57:52',5,5,'/uploads/images/user/2021-12/5-avatar.png','user',5);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joint_permissions`
--

DROP TABLE IF EXISTS `joint_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joint_permissions` (
  `role_id` int(11) NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_permission` tinyint(1) NOT NULL DEFAULT 0,
  `has_permission_own` tinyint(1) NOT NULL DEFAULT 0,
  `owned_by` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`entity_type`,`entity_id`,`action`),
  KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `joint_permissions_has_permission_index` (`has_permission`),
  KEY `joint_permissions_has_permission_own_index` (`has_permission_own`),
  KEY `joint_permissions_role_id_index` (`role_id`),
  KEY `joint_permissions_action_index` (`action`),
  KEY `joint_permissions_created_by_index` (`owned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joint_permissions`
--

LOCK TABLES `joint_permissions` WRITE;
/*!40000 ALTER TABLE `joint_permissions` DISABLE KEYS */;
INSERT INTO `joint_permissions` VALUES (1,'BookStack\\Book',1,'chapter-create',1,1,3),(1,'BookStack\\Book',1,'delete',1,1,3),(1,'BookStack\\Book',1,'page-create',1,1,3),(1,'BookStack\\Book',1,'update',1,1,3),(1,'BookStack\\Book',1,'view',1,1,3),(1,'BookStack\\Book',2,'chapter-create',1,1,3),(1,'BookStack\\Book',2,'delete',1,1,3),(1,'BookStack\\Book',2,'page-create',1,1,3),(1,'BookStack\\Book',2,'update',1,1,3),(1,'BookStack\\Book',2,'view',1,1,3),(1,'BookStack\\Book',3,'chapter-create',1,1,4),(1,'BookStack\\Book',3,'delete',1,1,4),(1,'BookStack\\Book',3,'page-create',1,1,4),(1,'BookStack\\Book',3,'update',1,1,4),(1,'BookStack\\Book',3,'view',1,1,4),(1,'BookStack\\Book',4,'chapter-create',1,1,4),(1,'BookStack\\Book',4,'delete',1,1,4),(1,'BookStack\\Book',4,'page-create',1,1,4),(1,'BookStack\\Book',4,'update',1,1,4),(1,'BookStack\\Book',4,'view',1,1,4),(1,'BookStack\\Book',5,'chapter-create',1,1,3),(1,'BookStack\\Book',5,'delete',1,1,3),(1,'BookStack\\Book',5,'page-create',1,1,3),(1,'BookStack\\Book',5,'update',1,1,3),(1,'BookStack\\Book',5,'view',1,1,3),(1,'BookStack\\Bookshelf',1,'delete',1,1,3),(1,'BookStack\\Bookshelf',1,'update',1,1,3),(1,'BookStack\\Bookshelf',1,'view',1,1,3),(1,'BookStack\\Chapter',1,'delete',1,1,4),(1,'BookStack\\Chapter',1,'page-create',1,1,4),(1,'BookStack\\Chapter',1,'update',1,1,4),(1,'BookStack\\Chapter',1,'view',1,1,4),(1,'BookStack\\Chapter',2,'delete',1,1,4),(1,'BookStack\\Chapter',2,'page-create',1,1,4),(1,'BookStack\\Chapter',2,'update',1,1,4),(1,'BookStack\\Chapter',2,'view',1,1,4),(1,'BookStack\\Page',1,'delete',1,1,3),(1,'BookStack\\Page',1,'update',1,1,3),(1,'BookStack\\Page',1,'view',1,1,3),(1,'BookStack\\Page',2,'delete',1,1,4),(1,'BookStack\\Page',2,'update',1,1,4),(1,'BookStack\\Page',2,'view',1,1,4),(1,'BookStack\\Page',3,'delete',1,1,4),(1,'BookStack\\Page',3,'update',1,1,4),(1,'BookStack\\Page',3,'view',1,1,4),(1,'BookStack\\Page',4,'delete',1,1,4),(1,'BookStack\\Page',4,'update',1,1,4),(1,'BookStack\\Page',4,'view',1,1,4),(1,'BookStack\\Page',5,'delete',1,1,4),(1,'BookStack\\Page',5,'update',1,1,4),(1,'BookStack\\Page',5,'view',1,1,4),(1,'BookStack\\Page',6,'delete',1,1,4),(1,'BookStack\\Page',6,'update',1,1,4),(1,'BookStack\\Page',6,'view',1,1,4),(1,'BookStack\\Page',7,'delete',1,1,4),(1,'BookStack\\Page',7,'update',1,1,4),(1,'BookStack\\Page',7,'view',1,1,4),(1,'BookStack\\Page',8,'delete',1,1,3),(1,'BookStack\\Page',8,'update',1,1,3),(1,'BookStack\\Page',8,'view',1,1,3),(2,'BookStack\\Book',1,'chapter-create',1,1,3),(2,'BookStack\\Book',1,'delete',1,1,3),(2,'BookStack\\Book',1,'page-create',1,1,3),(2,'BookStack\\Book',1,'update',1,1,3),(2,'BookStack\\Book',1,'view',1,1,3),(2,'BookStack\\Book',2,'chapter-create',1,1,3),(2,'BookStack\\Book',2,'delete',1,1,3),(2,'BookStack\\Book',2,'page-create',1,1,3),(2,'BookStack\\Book',2,'update',1,1,3),(2,'BookStack\\Book',2,'view',1,1,3),(2,'BookStack\\Book',3,'chapter-create',1,1,4),(2,'BookStack\\Book',3,'delete',1,1,4),(2,'BookStack\\Book',3,'page-create',1,1,4),(2,'BookStack\\Book',3,'update',1,1,4),(2,'BookStack\\Book',3,'view',1,1,4),(2,'BookStack\\Book',4,'chapter-create',1,1,4),(2,'BookStack\\Book',4,'delete',1,1,4),(2,'BookStack\\Book',4,'page-create',1,1,4),(2,'BookStack\\Book',4,'update',1,1,4),(2,'BookStack\\Book',4,'view',1,1,4),(2,'BookStack\\Book',5,'chapter-create',1,1,3),(2,'BookStack\\Book',5,'delete',1,1,3),(2,'BookStack\\Book',5,'page-create',1,1,3),(2,'BookStack\\Book',5,'update',1,1,3),(2,'BookStack\\Book',5,'view',1,1,3),(2,'BookStack\\Bookshelf',1,'delete',1,1,3),(2,'BookStack\\Bookshelf',1,'update',1,1,3),(2,'BookStack\\Bookshelf',1,'view',1,1,3),(2,'BookStack\\Chapter',1,'delete',1,1,4),(2,'BookStack\\Chapter',1,'page-create',1,1,4),(2,'BookStack\\Chapter',1,'update',1,1,4),(2,'BookStack\\Chapter',1,'view',1,1,4),(2,'BookStack\\Chapter',2,'delete',1,1,4),(2,'BookStack\\Chapter',2,'page-create',1,1,4),(2,'BookStack\\Chapter',2,'update',1,1,4),(2,'BookStack\\Chapter',2,'view',1,1,4),(2,'BookStack\\Page',1,'delete',1,1,3),(2,'BookStack\\Page',1,'update',1,1,3),(2,'BookStack\\Page',1,'view',1,1,3),(2,'BookStack\\Page',2,'delete',1,1,4),(2,'BookStack\\Page',2,'update',1,1,4),(2,'BookStack\\Page',2,'view',1,1,4),(2,'BookStack\\Page',3,'delete',1,1,4),(2,'BookStack\\Page',3,'update',1,1,4),(2,'BookStack\\Page',3,'view',1,1,4),(2,'BookStack\\Page',4,'delete',1,1,4),(2,'BookStack\\Page',4,'update',1,1,4),(2,'BookStack\\Page',4,'view',1,1,4),(2,'BookStack\\Page',5,'delete',1,1,4),(2,'BookStack\\Page',5,'update',1,1,4),(2,'BookStack\\Page',5,'view',1,1,4),(2,'BookStack\\Page',6,'delete',1,1,4),(2,'BookStack\\Page',6,'update',1,1,4),(2,'BookStack\\Page',6,'view',1,1,4),(2,'BookStack\\Page',7,'delete',1,1,4),(2,'BookStack\\Page',7,'update',1,1,4),(2,'BookStack\\Page',7,'view',1,1,4),(2,'BookStack\\Page',8,'delete',1,1,3),(2,'BookStack\\Page',8,'update',1,1,3),(2,'BookStack\\Page',8,'view',1,1,3),(3,'BookStack\\Book',1,'chapter-create',0,0,3),(3,'BookStack\\Book',1,'delete',0,0,3),(3,'BookStack\\Book',1,'page-create',0,0,3),(3,'BookStack\\Book',1,'update',0,0,3),(3,'BookStack\\Book',1,'view',1,1,3),(3,'BookStack\\Book',2,'chapter-create',0,0,3),(3,'BookStack\\Book',2,'delete',0,0,3),(3,'BookStack\\Book',2,'page-create',0,0,3),(3,'BookStack\\Book',2,'update',0,0,3),(3,'BookStack\\Book',2,'view',1,1,3),(3,'BookStack\\Book',3,'chapter-create',0,0,4),(3,'BookStack\\Book',3,'delete',0,0,4),(3,'BookStack\\Book',3,'page-create',0,0,4),(3,'BookStack\\Book',3,'update',0,0,4),(3,'BookStack\\Book',3,'view',1,1,4),(3,'BookStack\\Book',4,'chapter-create',0,0,4),(3,'BookStack\\Book',4,'delete',0,0,4),(3,'BookStack\\Book',4,'page-create',0,0,4),(3,'BookStack\\Book',4,'update',0,0,4),(3,'BookStack\\Book',4,'view',1,1,4),(3,'BookStack\\Book',5,'chapter-create',0,0,3),(3,'BookStack\\Book',5,'delete',0,0,3),(3,'BookStack\\Book',5,'page-create',0,0,3),(3,'BookStack\\Book',5,'update',0,0,3),(3,'BookStack\\Book',5,'view',1,1,3),(3,'BookStack\\Bookshelf',1,'delete',0,0,3),(3,'BookStack\\Bookshelf',1,'update',0,0,3),(3,'BookStack\\Bookshelf',1,'view',1,1,3),(3,'BookStack\\Chapter',1,'delete',0,0,4),(3,'BookStack\\Chapter',1,'page-create',0,0,4),(3,'BookStack\\Chapter',1,'update',0,0,4),(3,'BookStack\\Chapter',1,'view',1,1,4),(3,'BookStack\\Chapter',2,'delete',0,0,4),(3,'BookStack\\Chapter',2,'page-create',0,0,4),(3,'BookStack\\Chapter',2,'update',0,0,4),(3,'BookStack\\Chapter',2,'view',1,1,4),(3,'BookStack\\Page',1,'delete',0,0,3),(3,'BookStack\\Page',1,'update',0,0,3),(3,'BookStack\\Page',1,'view',1,1,3),(3,'BookStack\\Page',2,'delete',0,0,4),(3,'BookStack\\Page',2,'update',0,0,4),(3,'BookStack\\Page',2,'view',1,1,4),(3,'BookStack\\Page',3,'delete',0,0,4),(3,'BookStack\\Page',3,'update',0,0,4),(3,'BookStack\\Page',3,'view',1,1,4),(3,'BookStack\\Page',4,'delete',0,0,4),(3,'BookStack\\Page',4,'update',0,0,4),(3,'BookStack\\Page',4,'view',1,1,4),(3,'BookStack\\Page',5,'delete',0,0,4),(3,'BookStack\\Page',5,'update',0,0,4),(3,'BookStack\\Page',5,'view',1,1,4),(3,'BookStack\\Page',6,'delete',0,0,4),(3,'BookStack\\Page',6,'update',0,0,4),(3,'BookStack\\Page',6,'view',1,1,4),(3,'BookStack\\Page',7,'delete',0,0,4),(3,'BookStack\\Page',7,'update',0,0,4),(3,'BookStack\\Page',7,'view',1,1,4),(3,'BookStack\\Page',8,'delete',0,0,3),(3,'BookStack\\Page',8,'update',0,0,3),(3,'BookStack\\Page',8,'view',1,1,3),(4,'BookStack\\Book',1,'chapter-create',0,0,3),(4,'BookStack\\Book',1,'delete',0,0,3),(4,'BookStack\\Book',1,'page-create',0,0,3),(4,'BookStack\\Book',1,'update',0,0,3),(4,'BookStack\\Book',1,'view',1,1,3),(4,'BookStack\\Book',2,'chapter-create',0,0,3),(4,'BookStack\\Book',2,'delete',0,0,3),(4,'BookStack\\Book',2,'page-create',0,0,3),(4,'BookStack\\Book',2,'update',0,0,3),(4,'BookStack\\Book',2,'view',1,1,3),(4,'BookStack\\Book',3,'chapter-create',0,0,4),(4,'BookStack\\Book',3,'delete',0,0,4),(4,'BookStack\\Book',3,'page-create',0,0,4),(4,'BookStack\\Book',3,'update',0,0,4),(4,'BookStack\\Book',3,'view',1,1,4),(4,'BookStack\\Book',4,'chapter-create',0,0,4),(4,'BookStack\\Book',4,'delete',0,0,4),(4,'BookStack\\Book',4,'page-create',0,0,4),(4,'BookStack\\Book',4,'update',0,0,4),(4,'BookStack\\Book',4,'view',1,1,4),(4,'BookStack\\Book',5,'chapter-create',0,0,3),(4,'BookStack\\Book',5,'delete',0,0,3),(4,'BookStack\\Book',5,'page-create',0,0,3),(4,'BookStack\\Book',5,'update',0,0,3),(4,'BookStack\\Book',5,'view',1,1,3),(4,'BookStack\\Bookshelf',1,'delete',0,0,3),(4,'BookStack\\Bookshelf',1,'update',0,0,3),(4,'BookStack\\Bookshelf',1,'view',1,1,3),(4,'BookStack\\Chapter',1,'delete',0,0,4),(4,'BookStack\\Chapter',1,'page-create',0,0,4),(4,'BookStack\\Chapter',1,'update',0,0,4),(4,'BookStack\\Chapter',1,'view',1,1,4),(4,'BookStack\\Chapter',2,'delete',0,0,4),(4,'BookStack\\Chapter',2,'page-create',0,0,4),(4,'BookStack\\Chapter',2,'update',0,0,4),(4,'BookStack\\Chapter',2,'view',1,1,4),(4,'BookStack\\Page',1,'delete',0,0,3),(4,'BookStack\\Page',1,'update',0,0,3),(4,'BookStack\\Page',1,'view',1,1,3),(4,'BookStack\\Page',2,'delete',0,0,4),(4,'BookStack\\Page',2,'update',0,0,4),(4,'BookStack\\Page',2,'view',1,1,4),(4,'BookStack\\Page',3,'delete',0,0,4),(4,'BookStack\\Page',3,'update',0,0,4),(4,'BookStack\\Page',3,'view',1,1,4),(4,'BookStack\\Page',4,'delete',0,0,4),(4,'BookStack\\Page',4,'update',0,0,4),(4,'BookStack\\Page',4,'view',1,1,4),(4,'BookStack\\Page',5,'delete',0,0,4),(4,'BookStack\\Page',5,'update',0,0,4),(4,'BookStack\\Page',5,'view',1,1,4),(4,'BookStack\\Page',6,'delete',0,0,4),(4,'BookStack\\Page',6,'update',0,0,4),(4,'BookStack\\Page',6,'view',1,1,4),(4,'BookStack\\Page',7,'delete',0,0,4),(4,'BookStack\\Page',7,'update',0,0,4),(4,'BookStack\\Page',7,'view',1,1,4),(4,'BookStack\\Page',8,'delete',0,0,3),(4,'BookStack\\Page',8,'update',0,0,3),(4,'BookStack\\Page',8,'view',1,1,3);
/*!40000 ALTER TABLE `joint_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfa_values`
--

DROP TABLE IF EXISTS `mfa_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mfa_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mfa_values_user_id_index` (`user_id`),
  KEY `mfa_values_method_index` (`method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfa_values`
--

LOCK TABLES `mfa_values` WRITE;
/*!40000 ALTER TABLE `mfa_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mfa_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_07_12_114933_create_books_table',1),(4,'2015_07_12_190027_create_pages_table',1),(5,'2015_07_13_172121_create_images_table',1),(6,'2015_07_27_172342_create_chapters_table',1),(7,'2015_08_08_200447_add_users_to_entities',1),(8,'2015_08_09_093534_create_page_revisions_table',1),(9,'2015_08_16_142133_create_activities_table',1),(10,'2015_08_29_105422_add_roles_and_permissions',1),(11,'2015_08_30_125859_create_settings_table',1),(12,'2015_08_31_175240_add_search_indexes',1),(13,'2015_09_04_165821_create_social_accounts_table',1),(14,'2015_09_05_164707_add_email_confirmation_table',1),(15,'2015_11_21_145609_create_views_table',1),(16,'2015_11_26_221857_add_entity_indexes',1),(17,'2015_12_05_145049_fulltext_weighting',1),(18,'2015_12_07_195238_add_image_upload_types',1),(19,'2015_12_09_195748_add_user_avatars',1),(20,'2016_01_11_210908_add_external_auth_to_users',1),(21,'2016_02_25_184030_add_slug_to_revisions',1),(22,'2016_02_27_120329_update_permissions_and_roles',1),(23,'2016_02_28_084200_add_entity_access_controls',1),(24,'2016_03_09_203143_add_page_revision_types',1),(25,'2016_03_13_082138_add_page_drafts',1),(26,'2016_03_25_123157_add_markdown_support',1),(27,'2016_04_09_100730_add_view_permissions_to_roles',1),(28,'2016_04_20_192649_create_joint_permissions_table',1),(29,'2016_05_06_185215_create_tags_table',1),(30,'2016_07_07_181521_add_summary_to_page_revisions',1),(31,'2016_09_29_101449_remove_hidden_roles',1),(32,'2016_10_09_142037_create_attachments_table',1),(33,'2017_01_21_163556_create_cache_table',1),(34,'2017_01_21_163602_create_sessions_table',1),(35,'2017_03_19_091553_create_search_index_table',1),(36,'2017_04_20_185112_add_revision_counts',1),(37,'2017_07_02_152834_update_db_encoding_to_ut8mb4',1),(38,'2017_08_01_130541_create_comments_table',1),(39,'2017_08_29_102650_add_cover_image_display',1),(40,'2018_07_15_173514_add_role_external_auth_id',1),(41,'2018_08_04_115700_create_bookshelves_table',1),(42,'2019_07_07_112515_add_template_support',1),(43,'2019_08_17_140214_add_user_invites_table',1),(44,'2019_12_29_120917_add_api_auth',1),(45,'2020_08_04_111754_drop_joint_permissions_id',1),(46,'2020_08_04_131052_remove_role_name_field',1),(47,'2020_09_19_094251_add_activity_indexes',1),(48,'2020_09_27_210059_add_entity_soft_deletes',1),(49,'2020_09_27_210528_create_deletions_table',1),(50,'2020_11_07_232321_simplify_activities_table',1),(51,'2020_12_30_173528_add_owned_by_field_to_entities',1),(52,'2021_01_30_225441_add_settings_type_column',1),(53,'2021_03_08_215138_add_user_slug',1),(54,'2021_05_15_173110_create_favourites_table',1),(55,'2021_06_30_173111_create_mfa_values_table',1),(56,'2021_07_03_085038_add_mfa_enforced_to_roles_table',1),(57,'2021_08_28_161743_add_export_role_permission',1),(58,'2021_09_26_044614_add_activities_ip_column',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_revisions`
--

DROP TABLE IF EXISTS `page_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'version',
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_revisions_page_id_index` (`page_id`),
  KEY `page_revisions_slug_index` (`slug`),
  KEY `page_revisions_book_slug_index` (`book_slug`),
  KEY `page_revisions_type_index` (`type`),
  KEY `page_revisions_revision_number_index` (`revision_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES (1,1,'script\'s installation','<p id=\"bkmrk-%23%21%2Fbin%2Fbash\">#!/bin/bash</p>\r\n<p id=\"bkmrk-install_packages%28%29%7Ba\">install_packages()<br>{<br>apt install sudo unzip git -y<br>}</p>\r\n<p id=\"bkmrk-install_exe_cheat%28%29%7B\">install_exe_cheat()<br>{<br>wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gz<br>gunzip cheat-linux-amd64.gz<br>chmod +x cheat-linux-amd64<br>./cheat-linux-amd64<br>mv cheat-linux-amd64 /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-create_group%28%29%7Bgroup\"><br>create_group()<br>{<br>groupadd Commun<br>chgrp Commun /root/.config/cheat/cheatsheets/personal<br>}</p>\r\n<p id=\"bkmrk-uninstall_exe_cheat%28\"><br>uninstall_exe_cheat()<br>{<br>rm -fv /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_cheatsheets%28%29\">remove_cheatsheets()<br>{<br>rm -rf /root/.config/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_group%28%29%7Bgroup\">remove_group()<br>{<br>groupdel Commun<br>}</p>\r\n<p id=\"bkmrk-if-%5B-%24%23--eq-0-%5Dthene\"><br>if [ $# -eq 0 ]<br>then<br>echo \"Erreur de syntaxe\"<br>echo \"Usage: $0 -i (install)\"<br>echo \"Usage: $0 -u (uninstall)\"<br>exit<br>fi</p>\r\n<p id=\"bkmrk-param%3D%22%241%22if-%5B-%22%24par\">param=\"$1\"<br>if [ \"$param\" = \"-u\" ]<br>then<br>echo \"Uninstall start\"<br>uninstall_exe_cheat<br>remove_cheatsheets<br>remove_group<br>fi<br>if [ \"$param\" = \"-i\" ]<br>then<br>echo \"Install start\"<br>install_packages<br>install_exe_cheat<br>create_group<br>fi</p>','#!/bin/bash\r\ninstall_packages(){apt install sudo unzip git -y}\r\ninstall_exe_cheat(){wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gzgunzip cheat-linux-amd64.gzchmod +x cheat-linux-amd64./cheat-linux-amd64mv cheat-linux-amd64 /usr/local/bin/cheat}\r\ncreate_group(){groupadd Communchgrp Commun /root/.config/cheat/cheatsheets/personal}\r\nuninstall_exe_cheat(){rm -fv /usr/local/bin/cheat}\r\nremove_cheatsheets(){rm -rf /root/.config/cheat}\r\nremove_group(){groupdel Commun}\r\nif [ $# -eq 0 ]thenecho \"Erreur de syntaxe\"echo \"Usage: $0 -i (install)\"echo \"Usage: $0 -u (uninstall)\"exitfi\r\nparam=\"$1\"if [ \"$param\" = \"-u\" ]thenecho \"Uninstall start\"uninstall_exe_cheatremove_cheatsheetsremove_groupfiif [ \"$param\" = \"-i\" ]thenecho \"Install start\"install_packagesinstall_exe_cheatcreate_groupfi',3,'2022-01-02 14:10:28','2022-01-02 14:10:28','scripts-installation','cheats-installation','version','','Initial publish',1),(2,2,'Commande à Réaliser','<p class=\"align-left\" id=\"bkmrk-%C2%A0\"> </p>\r\n<ul id=\"bkmrk-paquets-essentiels\">\r\n<li class=\"align-left\"><strong>paquets essentiels</strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---apt-install--y-apa\">--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl<br>--apt-get install mariadb-server mariadb-client<br>--mysql_secure_installation</p>\r\n<ul id=\"bkmrk-d%C3%A9sactivation-de-apa\">\r\n<li class=\"align-left\"><strong>désactivation de apache2 et activation de nginx </strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-update-rc.d-a\">--sudo update-rc.d apache2 disable</p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-sta\">--sudo systemctl start nginx.service </p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-ena\">--sudo systemctl enable nginx.service</p>\r\n<ul id=\"bkmrk-mariadb--u-root\">\r\n<li><strong>mariadb -u root</strong></li>\r\n</ul>\r\n<p id=\"bkmrk---apt-install--y--qq\">--apt install -y -qq mariadb-server</p>\r\n<p id=\"bkmrk---mysql--u-root--p\">--mysql -u root -p</p>\r\n<p id=\"bkmrk---create-database-bo\">--create database bookstackdb</p>\r\n<p id=\"bkmrk---create-user-%27malvi\">--create user \'malvin\'@localhost identified by \'malvin\'</p>\r\n<p id=\"bkmrk---grant-all-privileg\">--grant all privileges on bookstackdb.* to \'malvin\'@localhost;</p>\r\n<ul id=\"bkmrk-configuration-nginx\">\r\n<li><strong>configuration NGINX</strong></li>\r\n</ul>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0-2\"> </p>',' \r\n\r\npaquets essentiels\r\n\r\n--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl--apt-get install mariadb-server mariadb-client--mysql_secure_installation\r\n\r\ndésactivation de apache2 et activation de nginx \r\n\r\n--sudo update-rc.d apache2 disable\r\n--sudo systemctl start nginx.service \r\n--sudo systemctl enable nginx.service\r\n\r\nmariadb -u root\r\n\r\n--apt install -y -qq mariadb-server\r\n--mysql -u root -p\r\n--create database bookstackdb\r\n--create user \'malvin\'@localhost identified by \'malvin\'\r\n--grant all privileges on bookstackdb.* to \'malvin\'@localhost;\r\n\r\nconfiguration NGINX\r\n\r\n \r\n \r\n ',4,'2022-01-21 20:21:37','2022-01-21 20:21:37','commande-a-realiser','bookstacks-installation','version','','Initial publish',1),(3,3,'travail préparatoire','','',4,'2022-03-30 10:34:28','2022-03-30 10:34:28','travail-preparatoire','wireguard','version','','Initial publish',1),(4,4,'installation','<p id=\"bkmrk-commande-et-fichier-\">commande et fichier de conf pouvoir choisir une commande et du shell</p>','commande et fichier de conf pouvoir choisir une commande et du shell',4,'2022-03-30 10:35:17','2022-03-30 10:35:17','installation','wireguard','version','','Initial publish',1),(5,5,'configuration','','',4,'2022-03-30 10:35:42','2022-03-30 10:35:42','configuration','wireguard','version','','Initial publish',1),(6,6,'optimisation','','',4,'2022-03-30 10:35:50','2022-03-30 10:35:50','optimisation','wireguard','version','','Initial publish',1),(7,7,'securisation','','',4,'2022-03-30 10:36:01','2022-03-30 10:36:01','securisation','wireguard','version','','Initial publish',1),(8,8,'P1.DEB11.sh','<p id=\"bkmrk-%23%21%2Fbin%2Fbash\">#!/bin/bash</p>\r\n<p id=\"bkmrk-%23-nom-%3A%23-description\"># Nom :<br># Description : script installation de base, cheat, aspect visuel<br># Param 1 :<br># Param 2 :<br>#<br># Exemple :<br># Auteur : malvin semedo da moura<br># Email : msemedodamoura@icloud.com<br># Changelog :<br># Version : alpha<br># Changelog :<br>#<br>#</p>\r\n<p id=\"bkmrk-%C2%A0\"> </p>\r\n<p id=\"bkmrk-%23-exit-si-la-moindre\"># Exit si la moindre erreur<br>#set -e</p>\r\n<p id=\"bkmrk-%23set--o-xtrace%23set--\">#set -o xtrace<br>#set -x</p>\r\n<p id=\"bkmrk-%23set-%2Bx%23exit\">#set +x<br>#exit</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23\">echo \"################################################\"</p>\r\n<p id=\"bkmrk-echo-%22-etape-1%3A-pr%C3%A9r\">echo \" Etape 1: Prérequis\"</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-0\">echo \"################################################\"  </p>\r\n<p id=\"bkmrk-apt-update--y%3B-apt-u\">apt update -y; apt upgrade -y</p>\r\n<p id=\"bkmrk-apt-autoremove--y-ta\">apt autoremove -y task-laptop<br>apt remove -y telnet</p>\r\n<p id=\"bkmrk-apt-install--y-sudo-\"><br>apt install -y sudo vim rsync screen mlocate htop net-tools git \\<br>gnupg2 mc psmisc lynx curl git pigz pixz zip ncdu \\<br>iptraf iotop dstat gdisk mc cifs-utils ntfs-3g sshfs \\<br>gdisk lshw inxi figlet screenfetch<br>apt autoremove -y<br>updatedb</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-1\">echo \"##################################################\"</p>\r\n<p id=\"bkmrk-echo-%22etape-2%3A-confi\">echo \"Etape 2: config ssh\"</p>\r\n<p id=\"bkmrk-echo%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23\">echo\"##################################################\"  </p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-2\">echo \"###########################################################\"<br>echo \"Génération automatique des clés SSH du root\";echo<br>echo \"###########################################################\"<br>mkdir ~/.ssh<br>chmod -v 700 ~/.ssh<br>ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N \"\"</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-3\"><br>echo \"###########################################################\"<br>echo \" Génération automatique des clés du simple user\";echo<br>echo \"###########################################################\"<br>user=$(grep 1000 /etc/passwd|cut -d: -f1)<br>mkdir -v /home/$user/.ssh<br>chmod -v 700 /home/$user/.ssh<br>ssh-keygen -t ed25519 -f /home/$user/.ssh/id_ed25519 -q -N \"\"<br>usermod -aG sudo $user<br>chmod -v 700 /home/$user</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-4\"><br>echo \"###########################################################\"<br># Création du user \"esgi\" pour le PROF<br>echo \"###########################################################\"<br>groupadd -g 10000 esgi<br>useradd -u 10000 -g 10000 -m -s /bin/bash esgi<br>echo -e \"P@ssword\\nP@ssword\" |passwd esgi<br>usermod -aG sudo esgi<br>mkdir -v /home/esgi/.ssh<br>chmod -v 700 /home/esgi/.ssh<br>ssh-keygen -t ed25519 -f /home/esgi/.ssh/id_ed25519 -q -N \"\"<br>chmod -v 700 /home/esgi</p>\r\n<p id=\"bkmrk-ln--sfvn-%2Fusr%2Fbin%2Fvi\"><br>ln -sfvn /usr/bin/vim.basic /etc/alternatives/editor</p>\r\n<p id=\"bkmrk-echo-%22permitrootlogi\">echo \"PermitRootLogin yes\" &gt;&gt; /etc/ssh/sshd_config</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-5\">echo \"##################################################\"</p>\r\n<p id=\"bkmrk-echo-%22etape-3%3A-banni\">echo \"Etape 3: bannière\"</p>\r\n<p id=\"bkmrk-echo%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23-0\">echo\"##################################################\"  </p>\r\n<p id=\"bkmrk-echo-%22banner-%2Fetc%2Fis\">echo \"Banner /etc/issue.net\" &gt;&gt; /etc/ssh/sshd_config</p>\r\n<p id=\"bkmrk-systemctl-restart-ss\">systemctl restart ssh</p>\r\n<p id=\"bkmrk-cat-%3E-%2Fetc%2Fissue.net\">cat &gt; /etc/issue.net &lt;&lt; EOF</p>\r\n<p id=\"bkmrk-%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A\">**************************************************************************<br>NOTICE TO USERS</p>\r\n<p id=\"bkmrk-this-computer-system\">This computer system is the private property of its owner, whether<br>individual, corporate or government. It is for authorized use only.<br>Users (authorized or unauthorized) have no explicit or implicit<br>expectation of privacy.</p>\r\n<p id=\"bkmrk-any-or-all-uses-of-t\">Any or all uses of this system and all files on this system may be<br>intercepted, monitored, recorded, copied, audited, inspected, and<br>disclosed to your employer, to authorized site, government, and law<br>enforcement personnel, as well as authorized officials of government<br>agencies, both domestic and foreign.</p>\r\n<p id=\"bkmrk-by-using-this-system\">By using this system, the user consents to such interception, monitoring,<br>recording, copying, auditing, inspection, and disclosure at the<br>discretion of such personnel or officials. Unauthorized or improper use<br>of this system may result in civil and criminal penalties and<br>administrative or disciplinary action, as appropriate. By continuing to<br>use this system you indicate your awareness of and consent to these terms<br>and conditions of use. LOG OFF IMMEDIATELY if you do not agree to the<br>conditions stated in this warning.</p>\r\n<p id=\"bkmrk-%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A-0\">****************************************************************************<br>EOF</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-6\">echo \"##################################################\"</p>\r\n<p id=\"bkmrk-echo-%22etape-4%3A-bashr\">echo \"Etape 4: bashrc\"</p>\r\n<p id=\"bkmrk-echo%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23-1\">echo\"##################################################\" </p>\r\n<p id=\"bkmrk-cat-%3E-%2Fetc%2Fupdate-mo\">cat &gt; /etc/update-motd.d/10-uname &lt;&lt; EOF<br>#!/bin/sh<br>figlet ZENVERS<br>uname -snrvm<br>screenfetch<br>EOF</p>\r\n<p id=\"bkmrk-echo-%22synchronisatio\">echo \"Synchronisation horaire\";echo<br>#ntpdate pool.ntp.org<br>timedatectl set-ntp on<br>systemctl restart systemd-timesyncd<br>systemctl status systemd-timesyncd --no-pager</p>\r\n<p id=\"bkmrk-echo-%22.bashrc-mis-en\">echo \".bashrc mis en place\"</p>\r\n<p id=\"bkmrk-cat-%3E%3E-%2Ftmp%2F.bashrc-\">cat &gt;&gt; /tmp/.bashrc &lt;&lt; \"EOF\"</p>\r\n<p id=\"bkmrk-histcontrol%3Dignoredu\">HISTCONTROL=ignoredups:ignorespace<br># append to the history file, don\'t overwrite it<br>shopt -s histappend</p>\r\n<p id=\"bkmrk-%23-for-setting-histor\"># for setting history length see HISTSIZE and HISTFILESIZE in bash(1)<br>HISTSIZE=100000<br>HISTFILESIZE=200000<br>export PROMPT_COMMAND=\"history -a;history -n\"<br>export PAGER=\"less -X\"</p>\r\n<p id=\"bkmrk-%23-check-the-window-s\"># check the window size after each command and, if necessary,<br># update the values of LINES and COLUMNS.<br>shopt -s checkwinsize</p>\r\n<p id=\"bkmrk-%23-enable-color-suppo\"># enable color support of ls and also add handy aliases<br>alias ls=\'ls --color=auto\'</p>\r\n<p id=\"bkmrk-alias-grep%3D%27grep---c\">alias grep=\'grep --color=auto\'<br>alias fgrep=\'fgrep --color=auto\'<br>alias egrep=\'egrep --color=auto\'<br># some more ls aliases<br>alias ll=\'ls -rtl\'<br>alias la=\'ls -A\'<br>alias l=\'ls -CF\'</p>\r\n<p id=\"bkmrk-%23-enable-programmabl\"># enable programmable completion features (you don\'t need to enable<br># this, if it\'s already enabled in /etc/bash.bashrc and /etc/profile<br># sources /etc/bash.bashrc).<br>if [ -f /etc/bash_completion ] &amp;&amp; ! shopt -oq posix; then<br>. /etc/bash_completion<br>fi</p>\r\n<p id=\"bkmrk-if-%5B-%5C%24uid--eq-0-%5Dth\">if [ \\$UID -eq 0 ]<br>then<br>export PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================&gt;<br>else<br>export PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================&gt;<br>fi</p>\r\n<p id=\"bkmrk-alias-grep%3D%22grep---c\">alias grep=\"grep --color=auto\"<br>alias rm=\"rm -iv --preserve-root\"<br>alias chmod=\"chmod -v --preserve-root\"<br>alias chown=\"chown -v --preserve-root\"<br>alias rgrep=\"find . -type f|xargs grep -win\"<br>alias min5=\"find . -mmin -5 -ls\"<br>alias vi=\"vim\"</p>\r\n<p id=\"bkmrk-alias-cp%3D%22cp--iv%22ali\">alias cp=\"cp -iv\"<br>alias mv=\"mv -iv\"<br>alias mkdir=\"mkdir -vp\"<br>alias rmdir=\"rmdir -vp\"</p>\r\n<p id=\"bkmrk-alias-rsync%3D%22rsync--\">alias rsync=\"rsync --progress\"</p>\r\n<p id=\"bkmrk-alias-ipt%3D%22iptables-\">alias ipt=\"iptables -L -n\"<br>alias plantu=\"netstat -plantu\"<br>alias lcoate=\"locate\"</p>\r\n<p id=\"bkmrk-alias-df%3D%22df--ht--x-\">alias df=\"df -hT -x devtmpfs -x tmpfs\"</p>\r\n<p id=\"bkmrk-alias-ldisk%3D%22lsblk--\">alias ldisk=\"lsblk -o name,vendor,model,size,rev,serial -d\"<br>alias ssh=\'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no\'</p>\r\n<p id=\"bkmrk-alias-cn%3D%22cat-%7E%2F.not\"><br>alias cn=\"cat ~/.notes\"<br>alias en=\"vim +$ ~/.notes\"</p>\r\n<p id=\"bkmrk-alias-ip%3D%22ip--c%22\">alias ip=\"ip -c\"</p>\r\n<p id=\"bkmrk-alias-umount%3D%22umount\">alias umount=\"umount -flv\"<br>alias mount=\"mount -v\"</p>\r\n<p id=\"bkmrk-alias-disque%3D%22lsblk-\"><br>alias disque=\"lsblk -f -o NAME,FSSIZE,FSTYPE,LABEL,FSAVAIL,FSUSE%,MOUNTPOINT\"<br>alias df=\"df -hT --total -x devtmpfs -x tmpfs\"</p>\r\n<p id=\"bkmrk-alias-notes%3D%22echo-%24%28\">alias notes=\"echo $(date +%A,\\ %d\\ %B\\ \\(%F_%R\\)\\ ) $* &gt;&gt; ~/.notes<br>alias cn=\"cat ~/.notes\"<br>alias en=\'vim +$ ~/.notes\'<br>alias gnotes=\"grep -h $1 ~/.notes\"<br>EOF</p>\r\n<p id=\"bkmrk-install--m-644--o-ro\">install -m 644 -o root -g root /etc/skel/.profile /root<br>install -m 644 -o $user -g $user /etc/skel/.profile /home/davy<br>install -m 644 -o esgi -g esgi /etc/skel/.profile /home/esgi</p>\r\n<p id=\"bkmrk-install--m-640--o-ro\">install -m 640 -o root -g root /tmp/.bashrc ~/<br>install -m 640 -o $user -g $user /tmp/.bashrc /home/davy<br>install -m 640 -o esgi -g esgi /tmp/.bashrc /home/esgi</p>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>','#!/bin/bash\r\n# Nom :# Description : script installation de base, cheat, aspect visuel# Param 1 :# Param 2 :## Exemple :# Auteur : malvin semedo da moura# Email : msemedodamoura@icloud.com# Changelog :# Version : alpha# Changelog :##\r\n \r\n# Exit si la moindre erreur#set -e\r\n#set -o xtrace#set -x\r\n#set +x#exit\r\necho \"################################################\"\r\necho \" Etape 1: Prérequis\"\r\necho \"################################################\"  \r\napt update -y; apt upgrade -y\r\napt autoremove -y task-laptopapt remove -y telnet\r\napt install -y sudo vim rsync screen mlocate htop net-tools git \\gnupg2 mc psmisc lynx curl git pigz pixz zip ncdu \\iptraf iotop dstat gdisk mc cifs-utils ntfs-3g sshfs \\gdisk lshw inxi figlet screenfetchapt autoremove -yupdatedb\r\necho \"##################################################\"\r\necho \"Etape 2: config ssh\"\r\necho\"##################################################\"  \r\necho \"###########################################################\"echo \"Génération automatique des clés SSH du root\";echoecho \"###########################################################\"mkdir ~/.sshchmod -v 700 ~/.sshssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N \"\"\r\necho \"###########################################################\"echo \" Génération automatique des clés du simple user\";echoecho \"###########################################################\"user=$(grep 1000 /etc/passwd|cut -d: -f1)mkdir -v /home/$user/.sshchmod -v 700 /home/$user/.sshssh-keygen -t ed25519 -f /home/$user/.ssh/id_ed25519 -q -N \"\"usermod -aG sudo $userchmod -v 700 /home/$user\r\necho \"###########################################################\"# Création du user \"esgi\" pour le PROFecho \"###########################################################\"groupadd -g 10000 esgiuseradd -u 10000 -g 10000 -m -s /bin/bash esgiecho -e \"P@ssword\\nP@ssword\" |passwd esgiusermod -aG sudo esgimkdir -v /home/esgi/.sshchmod -v 700 /home/esgi/.sshssh-keygen -t ed25519 -f /home/esgi/.ssh/id_ed25519 -q -N \"\"chmod -v 700 /home/esgi\r\nln -sfvn /usr/bin/vim.basic /etc/alternatives/editor\r\necho \"PermitRootLogin yes\" >> /etc/ssh/sshd_config\r\necho \"##################################################\"\r\necho \"Etape 3: bannière\"\r\necho\"##################################################\"  \r\necho \"Banner /etc/issue.net\" >> /etc/ssh/sshd_config\r\nsystemctl restart ssh\r\ncat > /etc/issue.net << EOF\r\n**************************************************************************NOTICE TO USERS\r\nThis computer system is the private property of its owner, whetherindividual, corporate or government. It is for authorized use only.Users (authorized or unauthorized) have no explicit or implicitexpectation of privacy.\r\nAny or all uses of this system and all files on this system may beintercepted, monitored, recorded, copied, audited, inspected, anddisclosed to your employer, to authorized site, government, and lawenforcement personnel, as well as authorized officials of governmentagencies, both domestic and foreign.\r\nBy using this system, the user consents to such interception, monitoring,recording, copying, auditing, inspection, and disclosure at thediscretion of such personnel or officials. Unauthorized or improper useof this system may result in civil and criminal penalties andadministrative or disciplinary action, as appropriate. By continuing touse this system you indicate your awareness of and consent to these termsand conditions of use. LOG OFF IMMEDIATELY if you do not agree to theconditions stated in this warning.\r\n****************************************************************************EOF\r\necho \"##################################################\"\r\necho \"Etape 4: bashrc\"\r\necho\"##################################################\" \r\ncat > /etc/update-motd.d/10-uname << EOF#!/bin/shfiglet ZENVERSuname -snrvmscreenfetchEOF\r\necho \"Synchronisation horaire\";echo#ntpdate pool.ntp.orgtimedatectl set-ntp onsystemctl restart systemd-timesyncdsystemctl status systemd-timesyncd --no-pager\r\necho \".bashrc mis en place\"\r\ncat >> /tmp/.bashrc << \"EOF\"\r\nHISTCONTROL=ignoredups:ignorespace# append to the history file, don\'t overwrite itshopt -s histappend\r\n# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)HISTSIZE=100000HISTFILESIZE=200000export PROMPT_COMMAND=\"history -a;history -n\"export PAGER=\"less -X\"\r\n# check the window size after each command and, if necessary,# update the values of LINES and COLUMNS.shopt -s checkwinsize\r\n# enable color support of ls and also add handy aliasesalias ls=\'ls --color=auto\'\r\nalias grep=\'grep --color=auto\'alias fgrep=\'fgrep --color=auto\'alias egrep=\'egrep --color=auto\'# some more ls aliasesalias ll=\'ls -rtl\'alias la=\'ls -A\'alias l=\'ls -CF\'\r\n# enable programmable completion features (you don\'t need to enable# this, if it\'s already enabled in /etc/bash.bashrc and /etc/profile# sources /etc/bash.bashrc).if [ -f /etc/bash_completion ] && ! shopt -oq posix; then. /etc/bash_completionfi\r\nif [ \\$UID -eq 0 ]thenexport PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================>elseexport PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================>fi\r\nalias grep=\"grep --color=auto\"alias rm=\"rm -iv --preserve-root\"alias chmod=\"chmod -v --preserve-root\"alias chown=\"chown -v --preserve-root\"alias rgrep=\"find . -type f|xargs grep -win\"alias min5=\"find . -mmin -5 -ls\"alias vi=\"vim\"\r\nalias cp=\"cp -iv\"alias mv=\"mv -iv\"alias mkdir=\"mkdir -vp\"alias rmdir=\"rmdir -vp\"\r\nalias rsync=\"rsync --progress\"\r\nalias ipt=\"iptables -L -n\"alias plantu=\"netstat -plantu\"alias lcoate=\"locate\"\r\nalias df=\"df -hT -x devtmpfs -x tmpfs\"\r\nalias ldisk=\"lsblk -o name,vendor,model,size,rev,serial -d\"alias ssh=\'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no\'\r\nalias cn=\"cat ~/.notes\"alias en=\"vim +$ ~/.notes\"\r\nalias ip=\"ip -c\"\r\nalias umount=\"umount -flv\"alias mount=\"mount -v\"\r\nalias disque=\"lsblk -f -o NAME,FSSIZE,FSTYPE,LABEL,FSAVAIL,FSUSE%,MOUNTPOINT\"alias df=\"df -hT --total -x devtmpfs -x tmpfs\"\r\nalias notes=\"echo $(date +%A,\\ %d\\ %B\\ \\(%F_%R\\)\\ ) $* >> ~/.notesalias cn=\"cat ~/.notes\"alias en=\'vim +$ ~/.notes\'alias gnotes=\"grep -h $1 ~/.notes\"EOF\r\ninstall -m 644 -o root -g root /etc/skel/.profile /rootinstall -m 644 -o $user -g $user /etc/skel/.profile /home/davyinstall -m 644 -o esgi -g esgi /etc/skel/.profile /home/esgi\r\ninstall -m 640 -o root -g root /tmp/.bashrc ~/install -m 640 -o $user -g $user /tmp/.bashrc /home/davyinstall -m 640 -o esgi -g esgi /tmp/.bashrc /home/esgi\r\n \r\n ',3,'2022-04-27 10:48:57','2022-04-27 10:48:57','p1deb11sh','configuration-vm','version','','Initial publish',1);
/*!40000 ALTER TABLE `page_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `draft` tinyint(1) NOT NULL DEFAULT 0,
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `revision_count` int(11) NOT NULL,
  `template` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_slug_index` (`slug`),
  KEY `pages_book_id_index` (`book_id`),
  KEY `pages_chapter_id_index` (`chapter_id`),
  KEY `pages_priority_index` (`priority`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`),
  KEY `pages_restricted_index` (`restricted`),
  KEY `pages_draft_index` (`draft`),
  KEY `pages_template_index` (`template`),
  KEY `pages_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,0,'script\'s installation','scripts-installation','<p id=\"bkmrk-%23%21%2Fbin%2Fbash\">#!/bin/bash</p>\r\n<p id=\"bkmrk-install_packages%28%29%7Ba\">install_packages()<br>{<br>apt install sudo unzip git -y<br>}</p>\r\n<p id=\"bkmrk-install_exe_cheat%28%29%7B\">install_exe_cheat()<br>{<br>wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gz<br>gunzip cheat-linux-amd64.gz<br>chmod +x cheat-linux-amd64<br>./cheat-linux-amd64<br>mv cheat-linux-amd64 /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-create_group%28%29%7Bgroup\"><br>create_group()<br>{<br>groupadd Commun<br>chgrp Commun /root/.config/cheat/cheatsheets/personal<br>}</p>\r\n<p id=\"bkmrk-uninstall_exe_cheat%28\"><br>uninstall_exe_cheat()<br>{<br>rm -fv /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_cheatsheets%28%29\">remove_cheatsheets()<br>{<br>rm -rf /root/.config/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_group%28%29%7Bgroup\">remove_group()<br>{<br>groupdel Commun<br>}</p>\r\n<p id=\"bkmrk-if-%5B-%24%23--eq-0-%5Dthene\"><br>if [ $# -eq 0 ]<br>then<br>echo \"Erreur de syntaxe\"<br>echo \"Usage: $0 -i (install)\"<br>echo \"Usage: $0 -u (uninstall)\"<br>exit<br>fi</p>\r\n<p id=\"bkmrk-param%3D%22%241%22if-%5B-%22%24par\">param=\"$1\"<br>if [ \"$param\" = \"-u\" ]<br>then<br>echo \"Uninstall start\"<br>uninstall_exe_cheat<br>remove_cheatsheets<br>remove_group<br>fi<br>if [ \"$param\" = \"-i\" ]<br>then<br>echo \"Install start\"<br>install_packages<br>install_exe_cheat<br>create_group<br>fi</p>','#!/bin/bash\r\ninstall_packages(){apt install sudo unzip git -y}\r\ninstall_exe_cheat(){wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gzgunzip cheat-linux-amd64.gzchmod +x cheat-linux-amd64./cheat-linux-amd64mv cheat-linux-amd64 /usr/local/bin/cheat}\r\ncreate_group(){groupadd Communchgrp Commun /root/.config/cheat/cheatsheets/personal}\r\nuninstall_exe_cheat(){rm -fv /usr/local/bin/cheat}\r\nremove_cheatsheets(){rm -rf /root/.config/cheat}\r\nremove_group(){groupdel Commun}\r\nif [ $# -eq 0 ]thenecho \"Erreur de syntaxe\"echo \"Usage: $0 -i (install)\"echo \"Usage: $0 -u (uninstall)\"exitfi\r\nparam=\"$1\"if [ \"$param\" = \"-u\" ]thenecho \"Uninstall start\"uninstall_exe_cheatremove_cheatsheetsremove_groupfiif [ \"$param\" = \"-i\" ]thenecho \"Install start\"install_packagesinstall_exe_cheatcreate_groupfi',2,'2022-01-02 14:07:15','2022-01-02 14:10:28',3,3,0,0,'',1,0,NULL,3),(2,2,0,'Commande à Réaliser','commande-a-realiser','<p class=\"align-left\" id=\"bkmrk-%C2%A0\"> </p>\r\n<ul id=\"bkmrk-paquets-essentiels\">\r\n<li class=\"align-left\"><strong>paquets essentiels</strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---apt-install--y-apa\">--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl<br>--apt-get install mariadb-server mariadb-client<br>--mysql_secure_installation</p>\r\n<ul id=\"bkmrk-d%C3%A9sactivation-de-apa\">\r\n<li class=\"align-left\"><strong>désactivation de apache2 et activation de nginx </strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-update-rc.d-a\">--sudo update-rc.d apache2 disable</p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-sta\">--sudo systemctl start nginx.service </p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-ena\">--sudo systemctl enable nginx.service</p>\r\n<ul id=\"bkmrk-mariadb--u-root\">\r\n<li><strong>mariadb -u root</strong></li>\r\n</ul>\r\n<p id=\"bkmrk---apt-install--y--qq\">--apt install -y -qq mariadb-server</p>\r\n<p id=\"bkmrk---mysql--u-root--p\">--mysql -u root -p</p>\r\n<p id=\"bkmrk---create-database-bo\">--create database bookstackdb</p>\r\n<p id=\"bkmrk---create-user-%27malvi\">--create user \'malvin\'@localhost identified by \'malvin\'</p>\r\n<p id=\"bkmrk---grant-all-privileg\">--grant all privileges on bookstackdb.* to \'malvin\'@localhost;</p>\r\n<ul id=\"bkmrk-configuration-nginx\">\r\n<li><strong>configuration NGINX</strong></li>\r\n</ul>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0-2\"> </p>',' \r\n\r\npaquets essentiels\r\n\r\n--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl--apt-get install mariadb-server mariadb-client--mysql_secure_installation\r\n\r\ndésactivation de apache2 et activation de nginx \r\n\r\n--sudo update-rc.d apache2 disable\r\n--sudo systemctl start nginx.service \r\n--sudo systemctl enable nginx.service\r\n\r\nmariadb -u root\r\n\r\n--apt install -y -qq mariadb-server\r\n--mysql -u root -p\r\n--create database bookstackdb\r\n--create user \'malvin\'@localhost identified by \'malvin\'\r\n--grant all privileges on bookstackdb.* to \'malvin\'@localhost;\r\n\r\nconfiguration NGINX\r\n\r\n \r\n \r\n ',2,'2022-01-21 19:38:22','2022-01-21 20:21:37',4,4,0,0,'',1,0,NULL,4),(3,3,0,'travail préparatoire','travail-preparatoire','','',2,'2022-03-30 10:34:21','2022-03-30 10:34:28',4,4,0,0,'',1,0,NULL,4),(4,3,0,'installation','installation','<p id=\"bkmrk-commande-et-fichier-\">commande et fichier de conf pouvoir choisir une commande et du shell</p>','commande et fichier de conf pouvoir choisir une commande et du shell',4,'2022-03-30 10:34:46','2022-03-30 10:35:17',4,4,0,0,'',1,0,NULL,4),(5,3,0,'configuration','configuration','','',5,'2022-03-30 10:35:36','2022-03-30 10:35:42',4,4,0,0,'',1,0,NULL,4),(6,3,0,'optimisation','optimisation','','',6,'2022-03-30 10:35:45','2022-03-30 10:35:50',4,4,0,0,'',1,0,NULL,4),(7,3,0,'securisation','securisation','','',7,'2022-03-30 10:35:54','2022-03-30 10:36:01',4,4,0,0,'',1,0,NULL,4),(8,5,0,'P1.DEB11.sh','p1deb11sh','<p id=\"bkmrk-%23%21%2Fbin%2Fbash\">#!/bin/bash</p>\r\n<p id=\"bkmrk-%23-nom-%3A%23-description\"># Nom :<br># Description : script installation de base, cheat, aspect visuel<br># Param 1 :<br># Param 2 :<br>#<br># Exemple :<br># Auteur : malvin semedo da moura<br># Email : msemedodamoura@icloud.com<br># Changelog :<br># Version : alpha<br># Changelog :<br>#<br>#</p>\r\n<p id=\"bkmrk-%C2%A0\"> </p>\r\n<p id=\"bkmrk-%23-exit-si-la-moindre\"># Exit si la moindre erreur<br>#set -e</p>\r\n<p id=\"bkmrk-%23set--o-xtrace%23set--\">#set -o xtrace<br>#set -x</p>\r\n<p id=\"bkmrk-%23set-%2Bx%23exit\">#set +x<br>#exit</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23\">echo \"################################################\"</p>\r\n<p id=\"bkmrk-echo-%22-etape-1%3A-pr%C3%A9r\">echo \" Etape 1: Prérequis\"</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-0\">echo \"################################################\"  </p>\r\n<p id=\"bkmrk-apt-update--y%3B-apt-u\">apt update -y; apt upgrade -y</p>\r\n<p id=\"bkmrk-apt-autoremove--y-ta\">apt autoremove -y task-laptop<br>apt remove -y telnet</p>\r\n<p id=\"bkmrk-apt-install--y-sudo-\"><br>apt install -y sudo vim rsync screen mlocate htop net-tools git \\<br>gnupg2 mc psmisc lynx curl git pigz pixz zip ncdu \\<br>iptraf iotop dstat gdisk mc cifs-utils ntfs-3g sshfs \\<br>gdisk lshw inxi figlet screenfetch<br>apt autoremove -y<br>updatedb</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-1\">echo \"##################################################\"</p>\r\n<p id=\"bkmrk-echo-%22etape-2%3A-confi\">echo \"Etape 2: config ssh\"</p>\r\n<p id=\"bkmrk-echo%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23\">echo\"##################################################\"  </p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-2\">echo \"###########################################################\"<br>echo \"Génération automatique des clés SSH du root\";echo<br>echo \"###########################################################\"<br>mkdir ~/.ssh<br>chmod -v 700 ~/.ssh<br>ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N \"\"</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-3\"><br>echo \"###########################################################\"<br>echo \" Génération automatique des clés du simple user\";echo<br>echo \"###########################################################\"<br>user=$(grep 1000 /etc/passwd|cut -d: -f1)<br>mkdir -v /home/$user/.ssh<br>chmod -v 700 /home/$user/.ssh<br>ssh-keygen -t ed25519 -f /home/$user/.ssh/id_ed25519 -q -N \"\"<br>usermod -aG sudo $user<br>chmod -v 700 /home/$user</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-4\"><br>echo \"###########################################################\"<br># Création du user \"esgi\" pour le PROF<br>echo \"###########################################################\"<br>groupadd -g 10000 esgi<br>useradd -u 10000 -g 10000 -m -s /bin/bash esgi<br>echo -e \"P@ssword\\nP@ssword\" |passwd esgi<br>usermod -aG sudo esgi<br>mkdir -v /home/esgi/.ssh<br>chmod -v 700 /home/esgi/.ssh<br>ssh-keygen -t ed25519 -f /home/esgi/.ssh/id_ed25519 -q -N \"\"<br>chmod -v 700 /home/esgi</p>\r\n<p id=\"bkmrk-ln--sfvn-%2Fusr%2Fbin%2Fvi\"><br>ln -sfvn /usr/bin/vim.basic /etc/alternatives/editor</p>\r\n<p id=\"bkmrk-echo-%22permitrootlogi\">echo \"PermitRootLogin yes\" &gt;&gt; /etc/ssh/sshd_config</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-5\">echo \"##################################################\"</p>\r\n<p id=\"bkmrk-echo-%22etape-3%3A-banni\">echo \"Etape 3: bannière\"</p>\r\n<p id=\"bkmrk-echo%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23-0\">echo\"##################################################\"  </p>\r\n<p id=\"bkmrk-echo-%22banner-%2Fetc%2Fis\">echo \"Banner /etc/issue.net\" &gt;&gt; /etc/ssh/sshd_config</p>\r\n<p id=\"bkmrk-systemctl-restart-ss\">systemctl restart ssh</p>\r\n<p id=\"bkmrk-cat-%3E-%2Fetc%2Fissue.net\">cat &gt; /etc/issue.net &lt;&lt; EOF</p>\r\n<p id=\"bkmrk-%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A\">**************************************************************************<br>NOTICE TO USERS</p>\r\n<p id=\"bkmrk-this-computer-system\">This computer system is the private property of its owner, whether<br>individual, corporate or government. It is for authorized use only.<br>Users (authorized or unauthorized) have no explicit or implicit<br>expectation of privacy.</p>\r\n<p id=\"bkmrk-any-or-all-uses-of-t\">Any or all uses of this system and all files on this system may be<br>intercepted, monitored, recorded, copied, audited, inspected, and<br>disclosed to your employer, to authorized site, government, and law<br>enforcement personnel, as well as authorized officials of government<br>agencies, both domestic and foreign.</p>\r\n<p id=\"bkmrk-by-using-this-system\">By using this system, the user consents to such interception, monitoring,<br>recording, copying, auditing, inspection, and disclosure at the<br>discretion of such personnel or officials. Unauthorized or improper use<br>of this system may result in civil and criminal penalties and<br>administrative or disciplinary action, as appropriate. By continuing to<br>use this system you indicate your awareness of and consent to these terms<br>and conditions of use. LOG OFF IMMEDIATELY if you do not agree to the<br>conditions stated in this warning.</p>\r\n<p id=\"bkmrk-%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A-0\">****************************************************************************<br>EOF</p>\r\n<p id=\"bkmrk-echo-%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23-6\">echo \"##################################################\"</p>\r\n<p id=\"bkmrk-echo-%22etape-4%3A-bashr\">echo \"Etape 4: bashrc\"</p>\r\n<p id=\"bkmrk-echo%22%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23-1\">echo\"##################################################\" </p>\r\n<p id=\"bkmrk-cat-%3E-%2Fetc%2Fupdate-mo\">cat &gt; /etc/update-motd.d/10-uname &lt;&lt; EOF<br>#!/bin/sh<br>figlet ZENVERS<br>uname -snrvm<br>screenfetch<br>EOF</p>\r\n<p id=\"bkmrk-echo-%22synchronisatio\">echo \"Synchronisation horaire\";echo<br>#ntpdate pool.ntp.org<br>timedatectl set-ntp on<br>systemctl restart systemd-timesyncd<br>systemctl status systemd-timesyncd --no-pager</p>\r\n<p id=\"bkmrk-echo-%22.bashrc-mis-en\">echo \".bashrc mis en place\"</p>\r\n<p id=\"bkmrk-cat-%3E%3E-%2Ftmp%2F.bashrc-\">cat &gt;&gt; /tmp/.bashrc &lt;&lt; \"EOF\"</p>\r\n<p id=\"bkmrk-histcontrol%3Dignoredu\">HISTCONTROL=ignoredups:ignorespace<br># append to the history file, don\'t overwrite it<br>shopt -s histappend</p>\r\n<p id=\"bkmrk-%23-for-setting-histor\"># for setting history length see HISTSIZE and HISTFILESIZE in bash(1)<br>HISTSIZE=100000<br>HISTFILESIZE=200000<br>export PROMPT_COMMAND=\"history -a;history -n\"<br>export PAGER=\"less -X\"</p>\r\n<p id=\"bkmrk-%23-check-the-window-s\"># check the window size after each command and, if necessary,<br># update the values of LINES and COLUMNS.<br>shopt -s checkwinsize</p>\r\n<p id=\"bkmrk-%23-enable-color-suppo\"># enable color support of ls and also add handy aliases<br>alias ls=\'ls --color=auto\'</p>\r\n<p id=\"bkmrk-alias-grep%3D%27grep---c\">alias grep=\'grep --color=auto\'<br>alias fgrep=\'fgrep --color=auto\'<br>alias egrep=\'egrep --color=auto\'<br># some more ls aliases<br>alias ll=\'ls -rtl\'<br>alias la=\'ls -A\'<br>alias l=\'ls -CF\'</p>\r\n<p id=\"bkmrk-%23-enable-programmabl\"># enable programmable completion features (you don\'t need to enable<br># this, if it\'s already enabled in /etc/bash.bashrc and /etc/profile<br># sources /etc/bash.bashrc).<br>if [ -f /etc/bash_completion ] &amp;&amp; ! shopt -oq posix; then<br>. /etc/bash_completion<br>fi</p>\r\n<p id=\"bkmrk-if-%5B-%5C%24uid--eq-0-%5Dth\">if [ \\$UID -eq 0 ]<br>then<br>export PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================&gt;<br>else<br>export PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================&gt;<br>fi</p>\r\n<p id=\"bkmrk-alias-grep%3D%22grep---c\">alias grep=\"grep --color=auto\"<br>alias rm=\"rm -iv --preserve-root\"<br>alias chmod=\"chmod -v --preserve-root\"<br>alias chown=\"chown -v --preserve-root\"<br>alias rgrep=\"find . -type f|xargs grep -win\"<br>alias min5=\"find . -mmin -5 -ls\"<br>alias vi=\"vim\"</p>\r\n<p id=\"bkmrk-alias-cp%3D%22cp--iv%22ali\">alias cp=\"cp -iv\"<br>alias mv=\"mv -iv\"<br>alias mkdir=\"mkdir -vp\"<br>alias rmdir=\"rmdir -vp\"</p>\r\n<p id=\"bkmrk-alias-rsync%3D%22rsync--\">alias rsync=\"rsync --progress\"</p>\r\n<p id=\"bkmrk-alias-ipt%3D%22iptables-\">alias ipt=\"iptables -L -n\"<br>alias plantu=\"netstat -plantu\"<br>alias lcoate=\"locate\"</p>\r\n<p id=\"bkmrk-alias-df%3D%22df--ht--x-\">alias df=\"df -hT -x devtmpfs -x tmpfs\"</p>\r\n<p id=\"bkmrk-alias-ldisk%3D%22lsblk--\">alias ldisk=\"lsblk -o name,vendor,model,size,rev,serial -d\"<br>alias ssh=\'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no\'</p>\r\n<p id=\"bkmrk-alias-cn%3D%22cat-%7E%2F.not\"><br>alias cn=\"cat ~/.notes\"<br>alias en=\"vim +$ ~/.notes\"</p>\r\n<p id=\"bkmrk-alias-ip%3D%22ip--c%22\">alias ip=\"ip -c\"</p>\r\n<p id=\"bkmrk-alias-umount%3D%22umount\">alias umount=\"umount -flv\"<br>alias mount=\"mount -v\"</p>\r\n<p id=\"bkmrk-alias-disque%3D%22lsblk-\"><br>alias disque=\"lsblk -f -o NAME,FSSIZE,FSTYPE,LABEL,FSAVAIL,FSUSE%,MOUNTPOINT\"<br>alias df=\"df -hT --total -x devtmpfs -x tmpfs\"</p>\r\n<p id=\"bkmrk-alias-notes%3D%22echo-%24%28\">alias notes=\"echo $(date +%A,\\ %d\\ %B\\ \\(%F_%R\\)\\ ) $* &gt;&gt; ~/.notes<br>alias cn=\"cat ~/.notes\"<br>alias en=\'vim +$ ~/.notes\'<br>alias gnotes=\"grep -h $1 ~/.notes\"<br>EOF</p>\r\n<p id=\"bkmrk-install--m-644--o-ro\">install -m 644 -o root -g root /etc/skel/.profile /root<br>install -m 644 -o $user -g $user /etc/skel/.profile /home/davy<br>install -m 644 -o esgi -g esgi /etc/skel/.profile /home/esgi</p>\r\n<p id=\"bkmrk-install--m-640--o-ro\">install -m 640 -o root -g root /tmp/.bashrc ~/<br>install -m 640 -o $user -g $user /tmp/.bashrc /home/davy<br>install -m 640 -o esgi -g esgi /tmp/.bashrc /home/esgi</p>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>','#!/bin/bash\r\n# Nom :# Description : script installation de base, cheat, aspect visuel# Param 1 :# Param 2 :## Exemple :# Auteur : malvin semedo da moura# Email : msemedodamoura@icloud.com# Changelog :# Version : alpha# Changelog :##\r\n \r\n# Exit si la moindre erreur#set -e\r\n#set -o xtrace#set -x\r\n#set +x#exit\r\necho \"################################################\"\r\necho \" Etape 1: Prérequis\"\r\necho \"################################################\"  \r\napt update -y; apt upgrade -y\r\napt autoremove -y task-laptopapt remove -y telnet\r\napt install -y sudo vim rsync screen mlocate htop net-tools git \\gnupg2 mc psmisc lynx curl git pigz pixz zip ncdu \\iptraf iotop dstat gdisk mc cifs-utils ntfs-3g sshfs \\gdisk lshw inxi figlet screenfetchapt autoremove -yupdatedb\r\necho \"##################################################\"\r\necho \"Etape 2: config ssh\"\r\necho\"##################################################\"  \r\necho \"###########################################################\"echo \"Génération automatique des clés SSH du root\";echoecho \"###########################################################\"mkdir ~/.sshchmod -v 700 ~/.sshssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N \"\"\r\necho \"###########################################################\"echo \" Génération automatique des clés du simple user\";echoecho \"###########################################################\"user=$(grep 1000 /etc/passwd|cut -d: -f1)mkdir -v /home/$user/.sshchmod -v 700 /home/$user/.sshssh-keygen -t ed25519 -f /home/$user/.ssh/id_ed25519 -q -N \"\"usermod -aG sudo $userchmod -v 700 /home/$user\r\necho \"###########################################################\"# Création du user \"esgi\" pour le PROFecho \"###########################################################\"groupadd -g 10000 esgiuseradd -u 10000 -g 10000 -m -s /bin/bash esgiecho -e \"P@ssword\\nP@ssword\" |passwd esgiusermod -aG sudo esgimkdir -v /home/esgi/.sshchmod -v 700 /home/esgi/.sshssh-keygen -t ed25519 -f /home/esgi/.ssh/id_ed25519 -q -N \"\"chmod -v 700 /home/esgi\r\nln -sfvn /usr/bin/vim.basic /etc/alternatives/editor\r\necho \"PermitRootLogin yes\" >> /etc/ssh/sshd_config\r\necho \"##################################################\"\r\necho \"Etape 3: bannière\"\r\necho\"##################################################\"  \r\necho \"Banner /etc/issue.net\" >> /etc/ssh/sshd_config\r\nsystemctl restart ssh\r\ncat > /etc/issue.net << EOF\r\n**************************************************************************NOTICE TO USERS\r\nThis computer system is the private property of its owner, whetherindividual, corporate or government. It is for authorized use only.Users (authorized or unauthorized) have no explicit or implicitexpectation of privacy.\r\nAny or all uses of this system and all files on this system may beintercepted, monitored, recorded, copied, audited, inspected, anddisclosed to your employer, to authorized site, government, and lawenforcement personnel, as well as authorized officials of governmentagencies, both domestic and foreign.\r\nBy using this system, the user consents to such interception, monitoring,recording, copying, auditing, inspection, and disclosure at thediscretion of such personnel or officials. Unauthorized or improper useof this system may result in civil and criminal penalties andadministrative or disciplinary action, as appropriate. By continuing touse this system you indicate your awareness of and consent to these termsand conditions of use. LOG OFF IMMEDIATELY if you do not agree to theconditions stated in this warning.\r\n****************************************************************************EOF\r\necho \"##################################################\"\r\necho \"Etape 4: bashrc\"\r\necho\"##################################################\" \r\ncat > /etc/update-motd.d/10-uname << EOF#!/bin/shfiglet ZENVERSuname -snrvmscreenfetchEOF\r\necho \"Synchronisation horaire\";echo#ntpdate pool.ntp.orgtimedatectl set-ntp onsystemctl restart systemd-timesyncdsystemctl status systemd-timesyncd --no-pager\r\necho \".bashrc mis en place\"\r\ncat >> /tmp/.bashrc << \"EOF\"\r\nHISTCONTROL=ignoredups:ignorespace# append to the history file, don\'t overwrite itshopt -s histappend\r\n# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)HISTSIZE=100000HISTFILESIZE=200000export PROMPT_COMMAND=\"history -a;history -n\"export PAGER=\"less -X\"\r\n# check the window size after each command and, if necessary,# update the values of LINES and COLUMNS.shopt -s checkwinsize\r\n# enable color support of ls and also add handy aliasesalias ls=\'ls --color=auto\'\r\nalias grep=\'grep --color=auto\'alias fgrep=\'fgrep --color=auto\'alias egrep=\'egrep --color=auto\'# some more ls aliasesalias ll=\'ls -rtl\'alias la=\'ls -A\'alias l=\'ls -CF\'\r\n# enable programmable completion features (you don\'t need to enable# this, if it\'s already enabled in /etc/bash.bashrc and /etc/profile# sources /etc/bash.bashrc).if [ -f /etc/bash_completion ] && ! shopt -oq posix; then. /etc/bash_completionfi\r\nif [ \\$UID -eq 0 ]thenexport PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================>elseexport PS1=\'\\n=====================================================\\n\\[\\033[01;32m\\][\\t] \\u@\\h\\[\\033[00m\\]:\\[\\033[01;32m\\]\\w\\n==============================================>fi\r\nalias grep=\"grep --color=auto\"alias rm=\"rm -iv --preserve-root\"alias chmod=\"chmod -v --preserve-root\"alias chown=\"chown -v --preserve-root\"alias rgrep=\"find . -type f|xargs grep -win\"alias min5=\"find . -mmin -5 -ls\"alias vi=\"vim\"\r\nalias cp=\"cp -iv\"alias mv=\"mv -iv\"alias mkdir=\"mkdir -vp\"alias rmdir=\"rmdir -vp\"\r\nalias rsync=\"rsync --progress\"\r\nalias ipt=\"iptables -L -n\"alias plantu=\"netstat -plantu\"alias lcoate=\"locate\"\r\nalias df=\"df -hT -x devtmpfs -x tmpfs\"\r\nalias ldisk=\"lsblk -o name,vendor,model,size,rev,serial -d\"alias ssh=\'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no\'\r\nalias cn=\"cat ~/.notes\"alias en=\"vim +$ ~/.notes\"\r\nalias ip=\"ip -c\"\r\nalias umount=\"umount -flv\"alias mount=\"mount -v\"\r\nalias disque=\"lsblk -f -o NAME,FSSIZE,FSTYPE,LABEL,FSAVAIL,FSUSE%,MOUNTPOINT\"alias df=\"df -hT --total -x devtmpfs -x tmpfs\"\r\nalias notes=\"echo $(date +%A,\\ %d\\ %B\\ \\(%F_%R\\)\\ ) $* >> ~/.notesalias cn=\"cat ~/.notes\"alias en=\'vim +$ ~/.notes\'alias gnotes=\"grep -h $1 ~/.notes\"EOF\r\ninstall -m 644 -o root -g root /etc/skel/.profile /rootinstall -m 644 -o $user -g $user /etc/skel/.profile /home/davyinstall -m 644 -o esgi -g esgi /etc/skel/.profile /home/esgi\r\ninstall -m 640 -o root -g root /tmp/.bashrc ~/install -m 640 -o $user -g $user /tmp/.bashrc /home/davyinstall -m 640 -o esgi -g esgi /tmp/.bashrc /home/esgi\r\n \r\n ',2,'2022-04-27 10:00:54','2022-04-27 10:48:57',3,3,0,0,'',1,0,NULL,3);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(24,2),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(36,2),(37,1),(37,2),(38,1),(38,2),(39,1),(39,2),(40,1),(40,2),(41,1),(41,2),(42,1),(42,2),(43,1),(43,2),(44,1),(44,2),(45,1),(45,2),(46,1),(46,2),(47,1),(47,2),(48,1),(48,2),(48,3),(48,4),(49,1),(49,2),(49,3),(49,4),(50,1),(50,2),(50,3),(50,4),(51,1),(51,2),(51,3),(51,4),(52,1),(52,2),(52,3),(52,4),(53,1),(53,2),(53,3),(53,4),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(66,2),(66,3),(66,4),(67,1),(67,2),(67,3),(67,4),(68,1),(68,2),(69,1),(69,2),(70,1),(70,2),(71,1),(71,2),(72,1),(72,2),(73,1),(73,2),(74,1),(75,1),(76,1),(76,2),(76,3),(76,4);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (19,'settings-manage','Manage Settings',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(20,'users-manage','Manage Users',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(21,'user-roles-manage','Manage Roles & Permissions',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(22,'restrictions-manage-all','Manage All Entity Permissions',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(23,'restrictions-manage-own','Manage Entity Permissions On Own Content',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(24,'book-create-all','Create All Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(25,'book-create-own','Create Own Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(26,'book-update-all','Update All Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(27,'book-update-own','Update Own Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(28,'book-delete-all','Delete All Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(29,'book-delete-own','Delete Own Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(30,'page-create-all','Create All Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(31,'page-create-own','Create Own Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(32,'page-update-all','Update All Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(33,'page-update-own','Update Own Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(34,'page-delete-all','Delete All Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(35,'page-delete-own','Delete Own Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(36,'chapter-create-all','Create All Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(37,'chapter-create-own','Create Own Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(38,'chapter-update-all','Update All Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(39,'chapter-update-own','Update Own Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(40,'chapter-delete-all','Delete All Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(41,'chapter-delete-own','Delete Own Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(42,'image-create-all','Create All Images',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(43,'image-create-own','Create Own Images',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(44,'image-update-all','Update All Images',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(45,'image-update-own','Update Own Images',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(46,'image-delete-all','Delete All Images',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(47,'image-delete-own','Delete Own Images',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(48,'book-view-all','View All Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(49,'book-view-own','View Own Books',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(50,'page-view-all','View All Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(51,'page-view-own','View Own Pages',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(52,'chapter-view-all','View All Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(53,'chapter-view-own','View Own Chapters',NULL,'2021-12-07 22:01:26','2021-12-07 22:01:26'),(54,'attachment-create-all','Create All Attachments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(55,'attachment-create-own','Create Own Attachments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(56,'attachment-update-all','Update All Attachments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(57,'attachment-update-own','Update Own Attachments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(58,'attachment-delete-all','Delete All Attachments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(59,'attachment-delete-own','Delete Own Attachments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(60,'comment-create-all','Create All Comments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(61,'comment-create-own','Create Own Comments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(62,'comment-update-all','Update All Comments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(63,'comment-update-own','Update Own Comments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(64,'comment-delete-all','Delete All Comments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(65,'comment-delete-own','Delete Own Comments',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(66,'bookshelf-view-all','View All BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(67,'bookshelf-view-own','View Own BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(68,'bookshelf-create-all','Create All BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(69,'bookshelf-create-own','Create Own BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(70,'bookshelf-update-all','Update All BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(71,'bookshelf-update-own','Update Own BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(72,'bookshelf-delete-all','Delete All BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(73,'bookshelf-delete-own','Delete Own BookShelves',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(74,'templates-manage','Manage Page Templates',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(75,'access-api','Access system API',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27'),(76,'content-export','Export Content',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (2,4),(3,1),(4,2),(5,3);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_auth_id` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mfa_enforced` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_system_name_index` (`system_name`),
  KEY `roles_external_auth_id_index` (`external_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','Administrator of the whole application','2021-12-07 22:01:26','2021-12-07 22:01:26','admin','',0),(2,'Editor','User can edit Books, Chapters & Pages','2021-12-07 22:01:26','2021-12-07 22:01:26','','',0),(3,'Viewer','User can view books & their content behind authentication','2021-12-07 22:01:26','2021-12-07 22:01:26','','',0),(4,'Public','The role given to public visitors if allowed','2021-12-07 22:01:27','2021-12-07 22:01:27','public','',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_term_index` (`term`),
  KEY `search_terms_entity_type_index` (`entity_type`),
  KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  KEY `search_terms_score_index` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=1360 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES (76,'script','BookStack\\Page',1,40),(77,'s','BookStack\\Page',1,40),(78,'installation','BookStack\\Page',1,40),(79,'#','BookStack\\Page',1,1),(80,'/bin/bash','BookStack\\Page',1,1),(81,'install_packages','BookStack\\Page',1,1),(82,'apt','BookStack\\Page',1,1),(83,'install','BookStack\\Page',1,2),(84,'sudo','BookStack\\Page',1,1),(85,'unzip','BookStack\\Page',1,1),(86,'git','BookStack\\Page',1,1),(87,'-y','BookStack\\Page',1,1),(88,'install_exe_cheat','BookStack\\Page',1,1),(89,'wget','BookStack\\Page',1,1),(90,'https','BookStack\\Page',1,1),(91,'//github','BookStack\\Page',1,1),(92,'com/cheat/cheat/releases/download/4','BookStack\\Page',1,1),(93,'2','BookStack\\Page',1,1),(94,'3/cheat-linux-amd64','BookStack\\Page',1,1),(95,'gzgunzip','BookStack\\Page',1,1),(96,'cheat-linux-amd64','BookStack\\Page',1,3),(97,'gzchmod','BookStack\\Page',1,1),(98,'+x','BookStack\\Page',1,1),(99,'/cheat-linux-amd64mv','BookStack\\Page',1,1),(100,'/usr/local/bin/cheat','BookStack\\Page',1,2),(101,'create_group','BookStack\\Page',1,1),(102,'groupadd','BookStack\\Page',1,1),(103,'Communchgrp','BookStack\\Page',1,1),(104,'Commun','BookStack\\Page',1,2),(105,'/root/','BookStack\\Page',1,2),(106,'config/cheat/cheatsheets/personal','BookStack\\Page',1,1),(107,'uninstall_exe_cheat','BookStack\\Page',1,1),(108,'rm','BookStack\\Page',1,2),(109,'-fv','BookStack\\Page',1,1),(110,'remove_cheatsheets','BookStack\\Page',1,1),(111,'-rf','BookStack\\Page',1,1),(112,'config/cheat','BookStack\\Page',1,1),(113,'remove_group','BookStack\\Page',1,1),(114,'groupdel','BookStack\\Page',1,1),(115,'if','BookStack\\Page',1,2),(116,'$#','BookStack\\Page',1,1),(117,'-eq','BookStack\\Page',1,1),(118,'0','BookStack\\Page',1,1),(119,'thenecho','BookStack\\Page',1,3),(120,'Erreur','BookStack\\Page',1,1),(121,'de','BookStack\\Page',1,1),(122,'syntaxe','BookStack\\Page',1,1),(123,'echo','BookStack\\Page',1,2),(124,'Usage','BookStack\\Page',1,2),(125,'$0','BookStack\\Page',1,2),(126,'-i','BookStack\\Page',1,2),(127,'-u','BookStack\\Page',1,2),(128,'uninstall','BookStack\\Page',1,1),(129,'exitfi','BookStack\\Page',1,1),(130,'param=','BookStack\\Page',1,1),(131,'$1','BookStack\\Page',1,1),(132,'$param','BookStack\\Page',1,2),(133,'=','BookStack\\Page',1,2),(134,'Uninstall','BookStack\\Page',1,1),(135,'start','BookStack\\Page',1,2),(136,'uninstall_exe_cheatremove_cheatsheetsremove_groupfiif','BookStack\\Page',1,1),(137,'Install','BookStack\\Page',1,1),(138,'install_packagesinstall_exe_cheatcreate_groupfi','BookStack\\Page',1,1),(191,'CHEAT','BookStack\\Book',1,48),(192,'s','BookStack\\Book',1,48),(193,'installation','BookStack\\Book',1,48),(194,'Vous','BookStack\\Book',1,1),(195,'trouverez','BookStack\\Book',1,1),(196,'dans','BookStack\\Book',1,2),(197,'ce','BookStack\\Book',1,1),(198,'livre','BookStack\\Book',1,1),(199,'un','BookStack\\Book',1,2),(200,'code','BookStack\\Book',1,2),(201,'qui','BookStack\\Book',1,1),(202,'installe','BookStack\\Book',1,1),(203,'automatiquement','BookStack\\Book',1,1),(204,'cheat','BookStack\\Book',1,1),(205,'récupérez','BookStack\\Book',1,1),(206,'le','BookStack\\Book',1,2),(207,'que','BookStack\\Book',1,1),(208,'vous','BookStack\\Book',1,1),(209,'insérerai','BookStack\\Book',1,1),(210,'fichier','BookStack\\Book',1,1),(211,'puis','BookStack\\Book',1,1),(212,'pour','BookStack\\Book',1,2),(213,'lancer','BookStack\\Book',1,1),(214,'il','BookStack\\Book',1,2),(215,'faudra','BookStack\\Book',1,2),(216,'faire','BookStack\\Book',1,2),(217,'la','BookStack\\Book',1,3),(218,'commande','BookStack\\Book',1,3),(219,'bash','BookStack\\Book',1,1),(220,'nom_du_fichier','BookStack\\Book',1,1),(221,'-i','BookStack\\Book',1,1),(222,'Pour','BookStack\\Book',1,1),(223,'l','BookStack\\Book',1,1),(224,'exécuter','BookStack\\Book',1,1),(225,'réaliser','BookStack\\Book',1,1),(226,'en','BookStack\\Book',1,2),(227,'mode','BookStack\\Book',1,2),(228,'ROOT','BookStack\\Book',1,1),(229,'passer','BookStack\\Book',1,1),(230,'root','BookStack\\Book',1,1),(231,'su','BookStack\\Book',1,1),(232,'-','BookStack\\Book',1,1),(233,'ou','BookStack\\Book',1,1),(234,'avoir','BookStack\\Book',1,1),(235,'les','BookStack\\Book',1,1),(236,'droits','BookStack\\Book',1,1),(237,'admin','BookStack\\Book',1,1),(238,'et','BookStack\\Book',1,1),(239,'donc','BookStack\\Book',1,1),(240,'pouvoir','BookStack\\Book',1,1),(241,'utiliser','BookStack\\Book',1,1),(242,'sudo','BookStack\\Book',1,1),(243,'Bookstack','BookStack\\Book',2,48),(244,'s','BookStack\\Book',2,48),(245,'installation','BookStack\\Book',2,49),(246,'procedure','BookStack\\Book',2,1),(247,'of','BookStack\\Book',2,1),(312,'Commande','BookStack\\Page',2,40),(313,'à','BookStack\\Page',2,40),(314,'Réaliser','BookStack\\Page',2,40),(315,' ','BookStack\\Page',2,4),(316,'paquets','BookStack\\Page',2,1),(317,'essentiels','BookStack\\Page',2,1),(318,'--apt','BookStack\\Page',2,2),(319,'install','BookStack\\Page',2,3),(320,'-y','BookStack\\Page',2,2),(321,'apache2','BookStack\\Page',2,3),(322,'libapache2-mod-php7','BookStack\\Page',2,1),(323,'4','BookStack\\Page',2,1),(324,'php7','BookStack\\Page',2,9),(325,'4-fpm','BookStack\\Page',2,1),(326,'4-curl','BookStack\\Page',2,1),(327,'4-mbstring','BookStack\\Page',2,1),(328,'4-ldap','BookStack\\Page',2,1),(329,'4-tidy','BookStack\\Page',2,1),(330,'4-xml','BookStack\\Page',2,1),(331,'4-zip','BookStack\\Page',2,1),(332,'4-gd','BookStack\\Page',2,1),(333,'4-mysql','BookStack\\Page',2,1),(334,'mariadb-server','BookStack\\Page',2,3),(335,'mariadb-client','BookStack\\Page',2,1),(336,'git','BookStack\\Page',2,1),(337,'curl--apt-get','BookStack\\Page',2,1),(338,'mariadb-client--mysql_secure_installation','BookStack\\Page',2,1),(339,'désactivation','BookStack\\Page',2,1),(340,'de','BookStack\\Page',2,2),(341,'et','BookStack\\Page',2,1),(342,'activation','BookStack\\Page',2,1),(343,'nginx ','BookStack\\Page',2,1),(344,'--sudo','BookStack\\Page',2,3),(345,'update-rc','BookStack\\Page',2,1),(346,'d','BookStack\\Page',2,1),(347,'disable','BookStack\\Page',2,1),(348,'systemctl','BookStack\\Page',2,2),(349,'start','BookStack\\Page',2,1),(350,'nginx','BookStack\\Page',2,2),(351,'service ','BookStack\\Page',2,1),(352,'enable','BookStack\\Page',2,1),(353,'service','BookStack\\Page',2,1),(354,'mariadb','BookStack\\Page',2,1),(355,'-u','BookStack\\Page',2,2),(356,'root','BookStack\\Page',2,2),(357,'-qq','BookStack\\Page',2,1),(358,'--mysql','BookStack\\Page',2,1),(359,'-p','BookStack\\Page',2,1),(360,'--create','BookStack\\Page',2,2),(361,'database','BookStack\\Page',2,1),(362,'bookstackdb','BookStack\\Page',2,2),(363,'user','BookStack\\Page',2,1),(364,'malvin','BookStack\\Page',2,3),(365,'@localhost','BookStack\\Page',2,2),(366,'identified','BookStack\\Page',2,1),(367,'by','BookStack\\Page',2,1),(368,'--grant','BookStack\\Page',2,1),(369,'all','BookStack\\Page',2,1),(370,'privileges','BookStack\\Page',2,1),(371,'on','BookStack\\Page',2,1),(372,'*','BookStack\\Page',2,1),(373,'to','BookStack\\Page',2,1),(374,'configuration','BookStack\\Page',2,1),(375,'NGINX','BookStack\\Page',2,1),(379,'travail','BookStack\\Page',3,40),(380,'préparatoire','BookStack\\Page',3,40),(381,'intro','BookStack\\Chapter',1,48),(393,'installation','BookStack\\Page',4,40),(394,'commande','BookStack\\Page',4,2),(395,'et','BookStack\\Page',4,2),(396,'fichier','BookStack\\Page',4,1),(397,'de','BookStack\\Page',4,1),(398,'conf','BookStack\\Page',4,1),(399,'pouvoir','BookStack\\Page',4,1),(400,'choisir','BookStack\\Page',4,1),(401,'une','BookStack\\Page',4,1),(402,'du','BookStack\\Page',4,1),(403,'shell','BookStack\\Page',4,1),(405,'configuration','BookStack\\Page',5,40),(407,'optimisation','BookStack\\Page',6,40),(409,'securisation','BookStack\\Page',7,40),(410,'test','BookStack\\Chapter',2,48),(411,'wireguard','BookStack\\Book',3,48),(412,'1','BookStack\\Bookshelf',1,48),(413,'3ieme','BookStack\\Bookshelf',1,48),(414,'année','BookStack\\Bookshelf',1,48),(415,'Guacamole','BookStack\\Book',4,48),(416,'configuration','BookStack\\Book',5,48),(417,'vm','BookStack\\Book',5,48),(889,'P1','BookStack\\Page',8,40),(890,'DEB11','BookStack\\Page',8,40),(891,'sh','BookStack\\Page',8,40),(892,'#','BookStack\\Page',8,13),(893,'/bin/bash','BookStack\\Page',8,2),(894,'Nom','BookStack\\Page',8,1),(895,'Description','BookStack\\Page',8,1),(896,'script','BookStack\\Page',8,1),(897,'installation','BookStack\\Page',8,1),(898,'de','BookStack\\Page',8,1),(899,'base','BookStack\\Page',8,1),(900,'cheat','BookStack\\Page',8,1),(901,'aspect','BookStack\\Page',8,1),(902,'visuel#','BookStack\\Page',8,1),(903,'Param','BookStack\\Page',8,2),(904,'1','BookStack\\Page',8,3),(905,'2','BookStack\\Page',8,2),(906,'##','BookStack\\Page',8,2),(907,'Exemple','BookStack\\Page',8,1),(908,'Auteur','BookStack\\Page',8,1),(909,'malvin','BookStack\\Page',8,1),(910,'semedo','BookStack\\Page',8,1),(911,'da','BookStack\\Page',8,1),(912,'moura#','BookStack\\Page',8,1),(913,'Email','BookStack\\Page',8,1),(914,'msemedodamoura@icloud','BookStack\\Page',8,1),(915,'com#','BookStack\\Page',8,1),(916,'Changelog','BookStack\\Page',8,2),(917,'Version','BookStack\\Page',8,1),(918,'alpha#','BookStack\\Page',8,1),(919,' ','BookStack\\Page',8,4),(920,'Exit','BookStack\\Page',8,1),(921,'si','BookStack\\Page',8,1),(922,'la','BookStack\\Page',8,1),(923,'moindre','BookStack\\Page',8,1),(924,'erreur#set','BookStack\\Page',8,1),(925,'-e','BookStack\\Page',8,2),(926,'#set','BookStack\\Page',8,2),(927,'-o','BookStack\\Page',8,11),(928,'xtrace#set','BookStack\\Page',8,1),(929,'-x','BookStack\\Page',8,5),(930,'+x#exit','BookStack\\Page',8,1),(931,'echo','BookStack\\Page',8,22),(932,'################################################','BookStack\\Page',8,2),(933,'Etape','BookStack\\Page',8,4),(934,'Prérequis','BookStack\\Page',8,1),(935,'  ','BookStack\\Page',8,3),(936,'apt','BookStack\\Page',8,4),(937,'update','BookStack\\Page',8,2),(938,'-y','BookStack\\Page',8,5),(939,'upgrade','BookStack\\Page',8,1),(940,'autoremove','BookStack\\Page',8,2),(941,'task-laptopapt','BookStack\\Page',8,1),(942,'remove','BookStack\\Page',8,1),(943,'telnet','BookStack\\Page',8,1),(944,'install','BookStack\\Page',8,3),(945,'sudo','BookStack\\Page',8,3),(946,'vim','BookStack\\Page',8,4),(947,'rsync','BookStack\\Page',8,2),(948,'screen','BookStack\\Page',8,1),(949,'mlocate','BookStack\\Page',8,1),(950,'htop','BookStack\\Page',8,1),(951,'net-tools','BookStack\\Page',8,1),(952,'git','BookStack\\Page',8,2),(953,'\\gnupg2','BookStack\\Page',8,1),(954,'mc','BookStack\\Page',8,2),(955,'psmisc','BookStack\\Page',8,1),(956,'lynx','BookStack\\Page',8,1),(957,'curl','BookStack\\Page',8,1),(958,'pigz','BookStack\\Page',8,1),(959,'pixz','BookStack\\Page',8,1),(960,'zip','BookStack\\Page',8,1),(961,'ncdu','BookStack\\Page',8,1),(962,'\\iptraf','BookStack\\Page',8,1),(963,'iotop','BookStack\\Page',8,1),(964,'dstat','BookStack\\Page',8,1),(965,'gdisk','BookStack\\Page',8,1),(966,'cifs-utils','BookStack\\Page',8,1),(967,'ntfs-3g','BookStack\\Page',8,1),(968,'sshfs','BookStack\\Page',8,1),(969,'\\gdisk','BookStack\\Page',8,1),(970,'lshw','BookStack\\Page',8,1),(971,'inxi','BookStack\\Page',8,1),(972,'figlet','BookStack\\Page',8,1),(973,'screenfetchapt','BookStack\\Page',8,1),(974,'-yupdatedb','BookStack\\Page',8,1),(975,'##################################################','BookStack\\Page',8,6),(976,'config','BookStack\\Page',8,1),(977,'ssh','BookStack\\Page',8,3),(978,'###########################################################','BookStack\\Page',8,6),(979,'Génération','BookStack\\Page',8,2),(980,'automatique','BookStack\\Page',8,2),(981,'des','BookStack\\Page',8,2),(982,'clés','BookStack\\Page',8,2),(983,'SSH','BookStack\\Page',8,1),(984,'du','BookStack\\Page',8,3),(985,'root','BookStack\\Page',8,5),(986,'echoecho','BookStack\\Page',8,2),(987,'mkdir','BookStack\\Page',8,3),(988,'~/','BookStack\\Page',8,9),(989,'sshchmod','BookStack\\Page',8,3),(990,'-v','BookStack\\Page',8,10),(991,'700','BookStack\\Page',8,5),(992,'sshssh-keygen','BookStack\\Page',8,3),(993,'-t','BookStack\\Page',8,3),(994,'ed25519','BookStack\\Page',8,3),(995,'-f','BookStack\\Page',8,5),(996,'ssh/id_ed25519','BookStack\\Page',8,3),(997,'-q','BookStack\\Page',8,3),(998,'-N','BookStack\\Page',8,3),(999,'simple','BookStack\\Page',8,1),(1000,'user','BookStack\\Page',8,3),(1001,'user=$','BookStack\\Page',8,1),(1002,'grep','BookStack\\Page',8,5),(1003,'1000','BookStack\\Page',8,1),(1004,'/etc/passwd|cut','BookStack\\Page',8,1),(1005,'-d','BookStack\\Page',8,2),(1006,'-f1','BookStack\\Page',8,1),(1007,'/home/$user/','BookStack\\Page',8,3),(1008,'usermod','BookStack\\Page',8,1),(1009,'-aG','BookStack\\Page',8,2),(1010,'$userchmod','BookStack\\Page',8,1),(1011,'/home/$user','BookStack\\Page',8,1),(1012,'# Création','BookStack\\Page',8,1),(1013,'esgi','BookStack\\Page',8,5),(1014,'pour','BookStack\\Page',8,1),(1015,'le','BookStack\\Page',8,1),(1016,'PROFecho','BookStack\\Page',8,1),(1017,'groupadd','BookStack\\Page',8,1),(1018,'-g','BookStack\\Page',8,8),(1019,'10000','BookStack\\Page',8,3),(1020,'esgiuseradd','BookStack\\Page',8,1),(1021,'-u','BookStack\\Page',8,1),(1022,'-m','BookStack\\Page',8,7),(1023,'-s','BookStack\\Page',8,3),(1024,'esgiecho','BookStack\\Page',8,1),(1025,'P@ssword\\nP@ssword','BookStack\\Page',8,1),(1026,'|passwd','BookStack\\Page',8,1),(1027,'esgiusermod','BookStack\\Page',8,1),(1028,'esgimkdir','BookStack\\Page',8,1),(1029,'/home/esgi/','BookStack\\Page',8,3),(1030,'chmod','BookStack\\Page',8,2),(1031,'/home/esgi','BookStack\\Page',8,3),(1032,'ln','BookStack\\Page',8,1),(1033,'-sfvn','BookStack\\Page',8,1),(1034,'/usr/bin/vim','BookStack\\Page',8,1),(1035,'basic','BookStack\\Page',8,1),(1036,'/etc/alternatives/editor','BookStack\\Page',8,1),(1037,'PermitRootLogin','BookStack\\Page',8,1),(1038,'yes','BookStack\\Page',8,1),(1039,'/etc/ssh/sshd_config','BookStack\\Page',8,2),(1040,'3','BookStack\\Page',8,1),(1041,'bannière','BookStack\\Page',8,1),(1042,'Banner','BookStack\\Page',8,1),(1043,'/etc/issue','BookStack\\Page',8,2),(1044,'net','BookStack\\Page',8,2),(1045,'systemctl','BookStack\\Page',8,1),(1046,'restart','BookStack\\Page',8,2),(1047,'cat','BookStack\\Page',8,5),(1048,'EOF','BookStack\\Page',8,3),(1049,'**************************************************************************NOTICE','BookStack\\Page',8,1),(1050,'TO','BookStack\\Page',8,1),(1051,'USERS','BookStack\\Page',8,1),(1052,'This','BookStack\\Page',8,1),(1053,'computer','BookStack\\Page',8,1),(1054,'system','BookStack\\Page',8,6),(1055,'is','BookStack\\Page',8,2),(1056,'the','BookStack\\Page',8,5),(1057,'private','BookStack\\Page',8,1),(1058,'property','BookStack\\Page',8,1),(1059,'of','BookStack\\Page',8,9),(1060,'its','BookStack\\Page',8,1),(1061,'owner','BookStack\\Page',8,1),(1062,'whetherindividual','BookStack\\Page',8,1),(1063,'corporate','BookStack\\Page',8,1),(1064,'or','BookStack\\Page',8,7),(1065,'government','BookStack\\Page',8,2),(1066,'It','BookStack\\Page',8,1),(1067,'for','BookStack\\Page',8,2),(1068,'authorized','BookStack\\Page',8,4),(1069,'use','BookStack\\Page',8,2),(1070,'only','BookStack\\Page',8,1),(1071,'Users','BookStack\\Page',8,1),(1072,'unauthorized','BookStack\\Page',8,1),(1073,'have','BookStack\\Page',8,1),(1074,'no','BookStack\\Page',8,1),(1075,'explicit','BookStack\\Page',8,1),(1076,'implicitexpectation','BookStack\\Page',8,1),(1077,'privacy','BookStack\\Page',8,1),(1078,'Any','BookStack\\Page',8,1),(1079,'all','BookStack\\Page',8,2),(1080,'uses','BookStack\\Page',8,1),(1081,'this','BookStack\\Page',8,7),(1082,'and','BookStack\\Page',8,11),(1083,'files','BookStack\\Page',8,1),(1084,'on','BookStack\\Page',8,1),(1085,'may','BookStack\\Page',8,2),(1086,'beintercepted','BookStack\\Page',8,1),(1087,'monitored','BookStack\\Page',8,1),(1088,'recorded','BookStack\\Page',8,1),(1089,'copied','BookStack\\Page',8,1),(1090,'audited','BookStack\\Page',8,1),(1091,'inspected','BookStack\\Page',8,1),(1092,'anddisclosed','BookStack\\Page',8,1),(1093,'to','BookStack\\Page',8,7),(1094,'your','BookStack\\Page',8,2),(1095,'employer','BookStack\\Page',8,1),(1096,'site','BookStack\\Page',8,1),(1097,'lawenforcement','BookStack\\Page',8,1),(1098,'personnel','BookStack\\Page',8,2),(1099,'as','BookStack\\Page',8,3),(1100,'well','BookStack\\Page',8,1),(1101,'officials','BookStack\\Page',8,2),(1102,'governmentagencies','BookStack\\Page',8,1),(1103,'both','BookStack\\Page',8,1),(1104,'domestic','BookStack\\Page',8,1),(1105,'foreign','BookStack\\Page',8,1),(1106,'By','BookStack\\Page',8,2),(1107,'using','BookStack\\Page',8,1),(1108,'consents','BookStack\\Page',8,1),(1109,'such','BookStack\\Page',8,2),(1110,'interception','BookStack\\Page',8,1),(1111,'monitoring','BookStack\\Page',8,1),(1112,'recording','BookStack\\Page',8,1),(1113,'copying','BookStack\\Page',8,1),(1114,'auditing','BookStack\\Page',8,1),(1115,'inspection','BookStack\\Page',8,1),(1116,'disclosure','BookStack\\Page',8,1),(1117,'at','BookStack\\Page',8,1),(1118,'thediscretion','BookStack\\Page',8,1),(1119,'Unauthorized','BookStack\\Page',8,1),(1120,'improper','BookStack\\Page',8,1),(1121,'useof','BookStack\\Page',8,1),(1122,'result','BookStack\\Page',8,1),(1123,'in','BookStack\\Page',8,4),(1124,'civil','BookStack\\Page',8,1),(1125,'criminal','BookStack\\Page',8,1),(1126,'penalties','BookStack\\Page',8,1),(1127,'andadministrative','BookStack\\Page',8,1),(1128,'disciplinary','BookStack\\Page',8,1),(1129,'action','BookStack\\Page',8,1),(1130,'appropriate','BookStack\\Page',8,1),(1131,'continuing','BookStack\\Page',8,1),(1132,'touse','BookStack\\Page',8,1),(1133,'you','BookStack\\Page',8,3),(1134,'indicate','BookStack\\Page',8,1),(1135,'awareness','BookStack\\Page',8,1),(1136,'consent','BookStack\\Page',8,1),(1137,'these','BookStack\\Page',8,1),(1138,'termsand','BookStack\\Page',8,1),(1139,'conditions','BookStack\\Page',8,1),(1140,'LOG','BookStack\\Page',8,1),(1141,'OFF','BookStack\\Page',8,1),(1142,'IMMEDIATELY','BookStack\\Page',8,1),(1143,'if','BookStack\\Page',8,5),(1144,'do','BookStack\\Page',8,1),(1145,'not','BookStack\\Page',8,1),(1146,'agree','BookStack\\Page',8,1),(1147,'theconditions','BookStack\\Page',8,1),(1148,'stated','BookStack\\Page',8,1),(1149,'warning','BookStack\\Page',8,1),(1150,'****************************************************************************EOF','BookStack\\Page',8,1),(1151,'4','BookStack\\Page',8,1),(1152,'bashrc','BookStack\\Page',8,8),(1153,'/etc/update-motd','BookStack\\Page',8,1),(1154,'d/10-uname','BookStack\\Page',8,1),(1155,'EOF#','BookStack\\Page',8,1),(1156,'/bin/shfiglet','BookStack\\Page',8,1),(1157,'ZENVERSuname','BookStack\\Page',8,1),(1158,'-snrvmscreenfetchEOF','BookStack\\Page',8,1),(1159,'Synchronisation','BookStack\\Page',8,1),(1160,'horaire','BookStack\\Page',8,1),(1161,'echo#ntpdate','BookStack\\Page',8,1),(1162,'pool','BookStack\\Page',8,1),(1163,'ntp','BookStack\\Page',8,1),(1164,'orgtimedatectl','BookStack\\Page',8,1),(1165,'set-ntp','BookStack\\Page',8,1),(1166,'onsystemctl','BookStack\\Page',8,1),(1167,'systemd-timesyncdsystemctl','BookStack\\Page',8,1),(1168,'status','BookStack\\Page',8,1),(1169,'systemd-timesyncd','BookStack\\Page',8,1),(1170,'--no-pager','BookStack\\Page',8,1),(1171,'mis','BookStack\\Page',8,1),(1172,'en','BookStack\\Page',8,1),(1173,'place','BookStack\\Page',8,1),(1174,'/tmp/','BookStack\\Page',8,4),(1175,'HISTCONTROL=ignoredups','BookStack\\Page',8,1),(1176,'ignorespace#','BookStack\\Page',8,1),(1177,'append','BookStack\\Page',8,1),(1178,'history','BookStack\\Page',8,4),(1179,'file','BookStack\\Page',8,1),(1180,'don','BookStack\\Page',8,2),(1181,'t','BookStack\\Page',8,2),(1182,'overwrite','BookStack\\Page',8,1),(1183,'itshopt','BookStack\\Page',8,1),(1184,'histappend','BookStack\\Page',8,1),(1185,'setting','BookStack\\Page',8,1),(1186,'length','BookStack\\Page',8,1),(1187,'see','BookStack\\Page',8,1),(1188,'HISTSIZE','BookStack\\Page',8,1),(1189,'HISTFILESIZE','BookStack\\Page',8,1),(1190,'bash','BookStack\\Page',8,1),(1191,'HISTSIZE=100000HISTFILESIZE=200000export','BookStack\\Page',8,1),(1192,'PROMPT_COMMAND=','BookStack\\Page',8,1),(1193,'-a','BookStack\\Page',8,1),(1194,'-n','BookStack\\Page',8,2),(1195,'export','BookStack\\Page',8,1),(1196,'PAGER=','BookStack\\Page',8,1),(1197,'less','BookStack\\Page',8,1),(1198,'-X','BookStack\\Page',8,1),(1199,'check','BookStack\\Page',8,1),(1200,'window','BookStack\\Page',8,1),(1201,'size','BookStack\\Page',8,2),(1202,'after','BookStack\\Page',8,1),(1203,'each','BookStack\\Page',8,1),(1204,'command','BookStack\\Page',8,1),(1205,'necessary','BookStack\\Page',8,1),(1206,'values','BookStack\\Page',8,1),(1207,'LINES','BookStack\\Page',8,1),(1208,'COLUMNS','BookStack\\Page',8,1),(1209,'shopt','BookStack\\Page',8,2),(1210,'checkwinsize','BookStack\\Page',8,1),(1211,'enable','BookStack\\Page',8,2),(1212,'color','BookStack\\Page',8,1),(1213,'support','BookStack\\Page',8,1),(1214,'ls','BookStack\\Page',8,6),(1215,'also','BookStack\\Page',8,1),(1216,'add','BookStack\\Page',8,1),(1217,'handy','BookStack\\Page',8,1),(1218,'aliasesalias','BookStack\\Page',8,2),(1219,'ls=','BookStack\\Page',8,1),(1220,'--color=auto','BookStack\\Page',8,5),(1221,'alias','BookStack\\Page',8,33),(1222,'grep=','BookStack\\Page',8,2),(1223,'fgrep=','BookStack\\Page',8,1),(1224,'fgrep','BookStack\\Page',8,1),(1225,'egrep=','BookStack\\Page',8,1),(1226,'egrep','BookStack\\Page',8,1),(1227,'some','BookStack\\Page',8,1),(1228,'more','BookStack\\Page',8,1),(1229,'ll=','BookStack\\Page',8,1),(1230,'-rtl','BookStack\\Page',8,1),(1231,'la=','BookStack\\Page',8,1),(1232,'-A','BookStack\\Page',8,1),(1233,'l=','BookStack\\Page',8,1),(1234,'-CF','BookStack\\Page',8,1),(1235,'programmable','BookStack\\Page',8,1),(1236,'completion','BookStack\\Page',8,1),(1237,'features','BookStack\\Page',8,1),(1238,'need','BookStack\\Page',8,1),(1239,'enable#','BookStack\\Page',8,1),(1240,'it','BookStack\\Page',8,1),(1241,'s','BookStack\\Page',8,1),(1242,'already','BookStack\\Page',8,1),(1243,'enabled','BookStack\\Page',8,1),(1244,'/etc/bash','BookStack\\Page',8,2),(1245,'/etc/profile#','BookStack\\Page',8,1),(1246,'sources','BookStack\\Page',8,1),(1247,'/etc/bash_completion','BookStack\\Page',8,1),(1248,'&&','BookStack\\Page',8,1),(1249,'-oq','BookStack\\Page',8,1),(1250,'posix','BookStack\\Page',8,1),(1251,'then','BookStack\\Page',8,1),(1252,'/etc/bash_completionfi','BookStack\\Page',8,1),(1253,'\\$UID','BookStack\\Page',8,1),(1254,'-eq','BookStack\\Page',8,1),(1255,'0','BookStack\\Page',8,1),(1256,'thenexport','BookStack\\Page',8,1),(1257,'PS1=','BookStack\\Page',8,2),(1258,'\\n=====================================================\\n\\','BookStack\\Page',8,2),(1259,'\\033','BookStack\\Page',8,6),(1260,'01','BookStack\\Page',8,4),(1261,'32m\\','BookStack\\Page',8,4),(1262,'\\t','BookStack\\Page',8,2),(1263,'\\u@\\h\\','BookStack\\Page',8,2),(1264,'00m\\','BookStack\\Page',8,2),(1265,'\\','BookStack\\Page',8,5),(1266,'\\w\\n==============================================','BookStack\\Page',8,2),(1267,'elseexport','BookStack\\Page',8,1),(1268,'fi','BookStack\\Page',8,1),(1269,'rm=','BookStack\\Page',8,1),(1270,'rm','BookStack\\Page',8,1),(1271,'-iv','BookStack\\Page',8,3),(1272,'--preserve-root','BookStack\\Page',8,3),(1273,'chmod=','BookStack\\Page',8,1),(1274,'chown=','BookStack\\Page',8,1),(1275,'chown','BookStack\\Page',8,1),(1276,'rgrep=','BookStack\\Page',8,1),(1277,'find','BookStack\\Page',8,2),(1278,'-type','BookStack\\Page',8,1),(1279,'f|xargs','BookStack\\Page',8,1),(1280,'-win','BookStack\\Page',8,1),(1281,'min5=','BookStack\\Page',8,1),(1282,'-mmin','BookStack\\Page',8,1),(1283,'-5','BookStack\\Page',8,1),(1284,'-ls','BookStack\\Page',8,1),(1285,'vi=','BookStack\\Page',8,1),(1286,'cp=','BookStack\\Page',8,1),(1287,'cp','BookStack\\Page',8,1),(1288,'mv=','BookStack\\Page',8,1),(1289,'mv','BookStack\\Page',8,1),(1290,'mkdir=','BookStack\\Page',8,1),(1291,'-vp','BookStack\\Page',8,2),(1292,'rmdir=','BookStack\\Page',8,1),(1293,'rmdir','BookStack\\Page',8,1),(1294,'rsync=','BookStack\\Page',8,1),(1295,'--progress','BookStack\\Page',8,1),(1296,'ipt=','BookStack\\Page',8,1),(1297,'iptables','BookStack\\Page',8,1),(1298,'-L','BookStack\\Page',8,1),(1299,'plantu=','BookStack\\Page',8,1),(1300,'netstat','BookStack\\Page',8,1),(1301,'-plantu','BookStack\\Page',8,1),(1302,'lcoate=','BookStack\\Page',8,1),(1303,'locate','BookStack\\Page',8,1),(1304,'df=','BookStack\\Page',8,2),(1305,'df','BookStack\\Page',8,2),(1306,'-hT','BookStack\\Page',8,2),(1307,'devtmpfs','BookStack\\Page',8,2),(1308,'tmpfs','BookStack\\Page',8,2),(1309,'ldisk=','BookStack\\Page',8,1),(1310,'lsblk','BookStack\\Page',8,2),(1311,'name','BookStack\\Page',8,1),(1312,'vendor','BookStack\\Page',8,1),(1313,'model','BookStack\\Page',8,1),(1314,'rev','BookStack\\Page',8,1),(1315,'serial','BookStack\\Page',8,1),(1316,'ssh=','BookStack\\Page',8,1),(1317,'UserKnownHostsFile=/dev/null','BookStack\\Page',8,1),(1318,'StrictHostKeyChecking=no','BookStack\\Page',8,1),(1319,'cn=','BookStack\\Page',8,2),(1320,'notes','BookStack\\Page',8,5),(1321,'en=','BookStack\\Page',8,2),(1322,'+$','BookStack\\Page',8,2),(1323,'ip=','BookStack\\Page',8,1),(1324,'ip','BookStack\\Page',8,1),(1325,'-c','BookStack\\Page',8,1),(1326,'umount=','BookStack\\Page',8,1),(1327,'umount','BookStack\\Page',8,1),(1328,'-flv','BookStack\\Page',8,1),(1329,'mount=','BookStack\\Page',8,1),(1330,'mount','BookStack\\Page',8,1),(1331,'disque=','BookStack\\Page',8,1),(1332,'NAME','BookStack\\Page',8,1),(1333,'FSSIZE','BookStack\\Page',8,1),(1334,'FSTYPE','BookStack\\Page',8,1),(1335,'LABEL','BookStack\\Page',8,1),(1336,'FSAVAIL','BookStack\\Page',8,1),(1337,'FSUSE%','BookStack\\Page',8,1),(1338,'MOUNTPOINT','BookStack\\Page',8,1),(1339,'--total','BookStack\\Page',8,1),(1340,'notes=','BookStack\\Page',8,1),(1341,'$','BookStack\\Page',8,1),(1342,'date','BookStack\\Page',8,1),(1343,'+%A','BookStack\\Page',8,1),(1344,'%d\\','BookStack\\Page',8,1),(1345,'%B\\','BookStack\\Page',8,1),(1346,'%F_%R\\','BookStack\\Page',8,1),(1347,'$*','BookStack\\Page',8,1),(1348,'notesalias','BookStack\\Page',8,1),(1349,'gnotes=','BookStack\\Page',8,1),(1350,'-h','BookStack\\Page',8,1),(1351,'$1','BookStack\\Page',8,1),(1352,'644','BookStack\\Page',8,3),(1353,'/etc/skel/','BookStack\\Page',8,3),(1354,'profile','BookStack\\Page',8,3),(1355,'/rootinstall','BookStack\\Page',8,1),(1356,'$user','BookStack\\Page',8,4),(1357,'/home/davyinstall','BookStack\\Page',8,2),(1358,'640','BookStack\\Page',8,3),(1359,'~/install','BookStack\\Page',8,1);
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('user:3:dark-mode-enabled','true','2022-01-02 14:05:22','2022-01-02 14:05:22','string'),('user:4:books_view_type','grid','2022-03-30 10:39:46','2022-03-30 10:39:48','string'),('user:4:dark-mode-enabled','true','2022-01-17 19:32:21','2022-01-17 19:32:21','string'),('user:4:section_expansion#home-details','true','2022-01-17 20:14:29','2022-01-20 19:48:00','string');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_index` (`user_id`),
  KEY `social_accounts_driver_index` (`driver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_name_index` (`name`),
  KEY `tags_value_index` (`value`),
  KEY `tags_order_index` (`order`),
  KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_user_id_index` (`user_id`),
  KEY `user_invites_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invites`
--

LOCK TABLES `user_invites` WRITE;
/*!40000 ALTER TABLE `user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `image_id` int(11) NOT NULL DEFAULT 0,
  `external_auth_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  KEY `users_external_auth_id_index` (`external_auth_id`),
  KEY `users_system_name_index` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Guest','guest@example.com','',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27',1,0,'','public','guest'),(3,'nimda','nimda@nimda.com','$2y$10$F6fNv0wyBb9eUr4F5vHifeG0BB6TB33aMzXKfSnTZZcUuiSquw4BW',NULL,'2021-12-09 19:56:30','2021-12-09 19:56:30',1,1,'',NULL,'nimda'),(4,'malvin','malvin@malvin.com','$2y$10$KvcJ0JDWOlC/MmIDPLnB0OqN/SuFTOsxG469cBkAj7rK0Iy/uZ6Xu','9lea0MlkcxQA6mlDDDhNdZyd2zXDPwDWMx9nCTs75VFGpCIKOVoOlgx0tMbt','2021-12-09 19:57:20','2021-12-09 19:57:21',1,2,'',NULL,'malvin'),(5,'joe','joe@joe.com','$2y$10$CBP95FnXaQQN4HBBNhXsL.d9No6pevaXYBQ5wlEEYcyzwUO8AdLz.',NULL,'2021-12-09 19:57:52','2021-12-09 19:57:52',1,3,'',NULL,'joe');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `viewable_id` int(11) NOT NULL,
  `viewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `views_user_id_index` (`user_id`),
  KEY `views_viewable_id_index` (`viewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,3,1,'BookStack\\Bookshelf',9,'2022-01-02 14:06:18','2022-03-30 11:07:56'),(2,3,1,'BookStack\\Book',10,'2022-01-02 14:07:08','2022-01-17 20:20:49'),(3,3,2,'BookStack\\Book',4,'2022-01-02 14:07:40','2022-01-14 07:39:34'),(4,3,1,'BookStack\\Page',2,'2022-01-02 14:10:28','2022-01-17 20:20:02'),(5,5,1,'BookStack\\Book',2,'2022-01-02 14:17:51','2022-01-02 14:18:02'),(6,5,1,'BookStack\\Page',1,'2022-01-02 14:17:53','2022-01-02 14:17:53'),(7,4,1,'BookStack\\Book',6,'2022-01-02 14:18:20','2022-03-31 08:05:32'),(8,4,1,'BookStack\\Bookshelf',11,'2022-01-20 19:48:06','2022-03-31 08:05:37'),(9,4,2,'BookStack\\Book',7,'2022-01-20 19:48:09','2022-04-27 06:45:16'),(10,4,2,'BookStack\\Page',4,'2022-01-21 20:21:37','2022-04-27 06:45:17'),(11,4,1,'BookStack\\Page',3,'2022-03-29 06:19:38','2022-03-31 08:01:43'),(12,4,3,'BookStack\\Book',12,'2022-03-30 10:34:19','2022-03-30 10:39:49'),(13,4,3,'BookStack\\Page',3,'2022-03-30 10:34:28','2022-03-30 10:36:59'),(14,4,1,'BookStack\\Chapter',1,'2022-03-30 10:34:40','2022-03-30 10:34:40'),(15,4,4,'BookStack\\Page',3,'2022-03-30 10:35:17','2022-03-30 10:37:24'),(16,4,5,'BookStack\\Page',1,'2022-03-30 10:35:42','2022-03-30 10:35:42'),(17,4,6,'BookStack\\Page',1,'2022-03-30 10:35:50','2022-03-30 10:35:50'),(18,4,7,'BookStack\\Page',1,'2022-03-30 10:36:01','2022-03-30 10:36:01'),(19,4,2,'BookStack\\Chapter',1,'2022-03-30 10:36:50','2022-03-30 10:36:50'),(20,4,4,'BookStack\\Book',1,'2022-03-30 10:40:53','2022-03-30 10:40:53'),(21,3,3,'BookStack\\Book',1,'2022-03-30 11:08:07','2022-03-30 11:08:07'),(22,3,5,'BookStack\\Book',2,'2022-04-27 10:00:51','2022-04-27 10:49:00'),(23,3,8,'BookStack\\Page',1,'2022-04-27 10:48:57','2022-04-27 10:48:57');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 15:07:46
