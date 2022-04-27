-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bookstack
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-0+deb11u1

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'auth_login','standard; (1) Admin',1,'192.168.127.1',NULL,NULL,'2021-12-07 22:03:27','2021-12-07 22:03:27'),(2,'auth_login','standard; (1) Admin',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:43:36','2021-12-09 19:43:36'),(3,'user_create','(3) nimda',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:56:30','2021-12-09 19:56:30'),(4,'user_create','(4) malvin',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:57:21','2021-12-09 19:57:21'),(5,'user_create','(5) joe',1,'192.168.127.1',NULL,NULL,'2021-12-09 19:57:52','2021-12-09 19:57:52'),(6,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2021-12-10 17:18:01','2021-12-10 17:18:01'),(7,'user_delete','(1) Admin',3,'192.168.127.1',NULL,NULL,'2021-12-10 17:42:59','2021-12-10 17:42:59'),(8,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-01-02 14:04:18','2022-01-02 14:04:18'),(9,'bookshelf_create','',3,'192.168.127.1',1,'BookStack\\Bookshelf','2022-01-02 14:06:18','2022-01-02 14:06:18'),(10,'book_create','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:07:08','2022-01-02 14:07:08'),(11,'bookshelf_update','',3,'192.168.127.1',1,'BookStack\\Bookshelf','2022-01-02 14:07:08','2022-01-02 14:07:08'),(12,'book_create','',3,'192.168.127.1',2,'BookStack\\Book','2022-01-02 14:07:40','2022-01-02 14:07:40'),(13,'bookshelf_update','',3,'192.168.127.1',1,'BookStack\\Bookshelf','2022-01-02 14:07:40','2022-01-02 14:07:40'),(14,'book_update','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:08:05','2022-01-02 14:08:05'),(15,'page_create','',3,'192.168.127.1',1,'BookStack\\Page','2022-01-02 14:10:28','2022-01-02 14:10:28'),(16,'book_update','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:16:53','2022-01-02 14:16:53'),(17,'book_update','',3,'192.168.127.1',1,'BookStack\\Book','2022-01-02 14:17:12','2022-01-02 14:17:12'),(18,'auth_login','standard; (5) joe',5,'192.168.127.1',NULL,NULL,'2022-01-02 14:17:45','2022-01-02 14:17:45'),(19,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-02 14:18:16','2022-01-02 14:18:16'),(20,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-01-14 07:39:24','2022-01-14 07:39:24'),(21,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-17 19:31:23','2022-01-17 19:31:23'),(22,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-01-17 20:15:36','2022-01-17 20:15:36'),(23,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-20 19:47:54','2022-01-20 19:47:54'),(24,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-01-21 19:35:56','2022-01-21 19:35:56'),(25,'book_update','',4,'192.168.127.1',2,'BookStack\\Book','2022-01-21 19:38:20','2022-01-21 19:38:20'),(26,'page_create','',4,'192.168.127.1',2,'BookStack\\Page','2022-01-21 20:21:37','2022-01-21 20:21:37'),(27,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-03-29 06:15:37','2022-03-29 06:15:37'),(28,'auth_login','standard; (4) malvin',4,'192.168.127.1',NULL,NULL,'2022-03-30 09:54:55','2022-03-30 09:54:55'),(29,'book_create','',4,'192.168.127.1',3,'BookStack\\Book','2022-03-30 10:34:19','2022-03-30 10:34:19'),(30,'page_create','',4,'192.168.127.1',3,'BookStack\\Page','2022-03-30 10:34:28','2022-03-30 10:34:28'),(31,'chapter_create','',4,'192.168.127.1',1,'BookStack\\Chapter','2022-03-30 10:34:39','2022-03-30 10:34:39'),(32,'page_create','',4,'192.168.127.1',4,'BookStack\\Page','2022-03-30 10:35:17','2022-03-30 10:35:17'),(33,'page_create','',4,'192.168.127.1',5,'BookStack\\Page','2022-03-30 10:35:42','2022-03-30 10:35:42'),(34,'page_create','',4,'192.168.127.1',6,'BookStack\\Page','2022-03-30 10:35:50','2022-03-30 10:35:50'),(35,'page_create','',4,'192.168.127.1',7,'BookStack\\Page','2022-03-30 10:36:01','2022-03-30 10:36:01'),(36,'chapter_create','',4,'192.168.127.1',2,'BookStack\\Chapter','2022-03-30 10:36:50','2022-03-30 10:36:50'),(37,'book_update','',4,'192.168.127.1',3,'BookStack\\Book','2022-03-30 10:37:10','2022-03-30 10:37:10'),(38,'bookshelf_update','',4,'192.168.127.1',1,'BookStack\\Bookshelf','2022-03-30 10:40:29','2022-03-30 10:40:29'),(39,'book_create','',4,'192.168.127.1',4,'BookStack\\Book','2022-03-30 10:40:53','2022-03-30 10:40:53'),(40,'bookshelf_update','',4,'192.168.127.1',1,'BookStack\\Bookshelf','2022-03-30 10:40:53','2022-03-30 10:40:53'),(41,'auth_login','standard; (3) nimda',3,'192.168.127.1',NULL,NULL,'2022-03-30 10:52:52','2022-03-30 10:52:52'),(42,'auth_login','standard; (3) nimda',3,'10.33.5.147',NULL,NULL,'2022-03-30 12:10:12','2022-03-30 12:10:12'),(43,'auth_login','standard; (3) nimda',3,'10.33.5.147',NULL,NULL,'2022-03-30 12:58:59','2022-03-30 12:58:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'CHEAT\'s installation','cheats-installation','Vous trouverez dans ce livre un code qui installe automatiquement cheat. récupérez le code que vous insérerai dans un fichier, puis pour le lancer il faudra faire la commande \"bash nom_du_fichier -i\" .Pour l\'exécuter il faudra réaliser la commande en mode ROOT (pour passer en mode root faire la commande su -)  ou avoir les droits admin et donc pouvoir utiliser sudo.','2022-01-02 14:07:08','2022-01-02 14:17:12',3,3,0,NULL,NULL,3),(2,'Bookstack\'s installation','bookstacks-installation','procedure of installation','2022-01-02 14:07:40','2022-01-21 19:38:20',3,4,0,NULL,NULL,3),(3,'wireguard','wireguard','','2022-03-30 10:34:19','2022-03-30 10:34:19',4,4,0,NULL,NULL,4),(4,'Guacamole','guacamole','','2022-03-30 10:40:53','2022-03-30 10:40:53',4,4,0,NULL,NULL,4);
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
INSERT INTO `joint_permissions` VALUES (1,'BookStack\\Book',1,'chapter-create',1,1,3),(1,'BookStack\\Book',1,'delete',1,1,3),(1,'BookStack\\Book',1,'page-create',1,1,3),(1,'BookStack\\Book',1,'update',1,1,3),(1,'BookStack\\Book',1,'view',1,1,3),(1,'BookStack\\Book',2,'chapter-create',1,1,3),(1,'BookStack\\Book',2,'delete',1,1,3),(1,'BookStack\\Book',2,'page-create',1,1,3),(1,'BookStack\\Book',2,'update',1,1,3),(1,'BookStack\\Book',2,'view',1,1,3),(1,'BookStack\\Book',3,'chapter-create',1,1,4),(1,'BookStack\\Book',3,'delete',1,1,4),(1,'BookStack\\Book',3,'page-create',1,1,4),(1,'BookStack\\Book',3,'update',1,1,4),(1,'BookStack\\Book',3,'view',1,1,4),(1,'BookStack\\Book',4,'chapter-create',1,1,4),(1,'BookStack\\Book',4,'delete',1,1,4),(1,'BookStack\\Book',4,'page-create',1,1,4),(1,'BookStack\\Book',4,'update',1,1,4),(1,'BookStack\\Book',4,'view',1,1,4),(1,'BookStack\\Bookshelf',1,'delete',1,1,3),(1,'BookStack\\Bookshelf',1,'update',1,1,3),(1,'BookStack\\Bookshelf',1,'view',1,1,3),(1,'BookStack\\Chapter',1,'delete',1,1,4),(1,'BookStack\\Chapter',1,'page-create',1,1,4),(1,'BookStack\\Chapter',1,'update',1,1,4),(1,'BookStack\\Chapter',1,'view',1,1,4),(1,'BookStack\\Chapter',2,'delete',1,1,4),(1,'BookStack\\Chapter',2,'page-create',1,1,4),(1,'BookStack\\Chapter',2,'update',1,1,4),(1,'BookStack\\Chapter',2,'view',1,1,4),(1,'BookStack\\Page',1,'delete',1,1,3),(1,'BookStack\\Page',1,'update',1,1,3),(1,'BookStack\\Page',1,'view',1,1,3),(1,'BookStack\\Page',2,'delete',1,1,4),(1,'BookStack\\Page',2,'update',1,1,4),(1,'BookStack\\Page',2,'view',1,1,4),(1,'BookStack\\Page',3,'delete',1,1,4),(1,'BookStack\\Page',3,'update',1,1,4),(1,'BookStack\\Page',3,'view',1,1,4),(1,'BookStack\\Page',4,'delete',1,1,4),(1,'BookStack\\Page',4,'update',1,1,4),(1,'BookStack\\Page',4,'view',1,1,4),(1,'BookStack\\Page',5,'delete',1,1,4),(1,'BookStack\\Page',5,'update',1,1,4),(1,'BookStack\\Page',5,'view',1,1,4),(1,'BookStack\\Page',6,'delete',1,1,4),(1,'BookStack\\Page',6,'update',1,1,4),(1,'BookStack\\Page',6,'view',1,1,4),(1,'BookStack\\Page',7,'delete',1,1,4),(1,'BookStack\\Page',7,'update',1,1,4),(1,'BookStack\\Page',7,'view',1,1,4),(2,'BookStack\\Book',1,'chapter-create',1,1,3),(2,'BookStack\\Book',1,'delete',1,1,3),(2,'BookStack\\Book',1,'page-create',1,1,3),(2,'BookStack\\Book',1,'update',1,1,3),(2,'BookStack\\Book',1,'view',1,1,3),(2,'BookStack\\Book',2,'chapter-create',1,1,3),(2,'BookStack\\Book',2,'delete',1,1,3),(2,'BookStack\\Book',2,'page-create',1,1,3),(2,'BookStack\\Book',2,'update',1,1,3),(2,'BookStack\\Book',2,'view',1,1,3),(2,'BookStack\\Book',3,'chapter-create',1,1,4),(2,'BookStack\\Book',3,'delete',1,1,4),(2,'BookStack\\Book',3,'page-create',1,1,4),(2,'BookStack\\Book',3,'update',1,1,4),(2,'BookStack\\Book',3,'view',1,1,4),(2,'BookStack\\Book',4,'chapter-create',1,1,4),(2,'BookStack\\Book',4,'delete',1,1,4),(2,'BookStack\\Book',4,'page-create',1,1,4),(2,'BookStack\\Book',4,'update',1,1,4),(2,'BookStack\\Book',4,'view',1,1,4),(2,'BookStack\\Bookshelf',1,'delete',1,1,3),(2,'BookStack\\Bookshelf',1,'update',1,1,3),(2,'BookStack\\Bookshelf',1,'view',1,1,3),(2,'BookStack\\Chapter',1,'delete',1,1,4),(2,'BookStack\\Chapter',1,'page-create',1,1,4),(2,'BookStack\\Chapter',1,'update',1,1,4),(2,'BookStack\\Chapter',1,'view',1,1,4),(2,'BookStack\\Chapter',2,'delete',1,1,4),(2,'BookStack\\Chapter',2,'page-create',1,1,4),(2,'BookStack\\Chapter',2,'update',1,1,4),(2,'BookStack\\Chapter',2,'view',1,1,4),(2,'BookStack\\Page',1,'delete',1,1,3),(2,'BookStack\\Page',1,'update',1,1,3),(2,'BookStack\\Page',1,'view',1,1,3),(2,'BookStack\\Page',2,'delete',1,1,4),(2,'BookStack\\Page',2,'update',1,1,4),(2,'BookStack\\Page',2,'view',1,1,4),(2,'BookStack\\Page',3,'delete',1,1,4),(2,'BookStack\\Page',3,'update',1,1,4),(2,'BookStack\\Page',3,'view',1,1,4),(2,'BookStack\\Page',4,'delete',1,1,4),(2,'BookStack\\Page',4,'update',1,1,4),(2,'BookStack\\Page',4,'view',1,1,4),(2,'BookStack\\Page',5,'delete',1,1,4),(2,'BookStack\\Page',5,'update',1,1,4),(2,'BookStack\\Page',5,'view',1,1,4),(2,'BookStack\\Page',6,'delete',1,1,4),(2,'BookStack\\Page',6,'update',1,1,4),(2,'BookStack\\Page',6,'view',1,1,4),(2,'BookStack\\Page',7,'delete',1,1,4),(2,'BookStack\\Page',7,'update',1,1,4),(2,'BookStack\\Page',7,'view',1,1,4),(3,'BookStack\\Book',1,'chapter-create',0,0,3),(3,'BookStack\\Book',1,'delete',0,0,3),(3,'BookStack\\Book',1,'page-create',0,0,3),(3,'BookStack\\Book',1,'update',0,0,3),(3,'BookStack\\Book',1,'view',1,1,3),(3,'BookStack\\Book',2,'chapter-create',0,0,3),(3,'BookStack\\Book',2,'delete',0,0,3),(3,'BookStack\\Book',2,'page-create',0,0,3),(3,'BookStack\\Book',2,'update',0,0,3),(3,'BookStack\\Book',2,'view',1,1,3),(3,'BookStack\\Book',3,'chapter-create',0,0,4),(3,'BookStack\\Book',3,'delete',0,0,4),(3,'BookStack\\Book',3,'page-create',0,0,4),(3,'BookStack\\Book',3,'update',0,0,4),(3,'BookStack\\Book',3,'view',1,1,4),(3,'BookStack\\Book',4,'chapter-create',0,0,4),(3,'BookStack\\Book',4,'delete',0,0,4),(3,'BookStack\\Book',4,'page-create',0,0,4),(3,'BookStack\\Book',4,'update',0,0,4),(3,'BookStack\\Book',4,'view',1,1,4),(3,'BookStack\\Bookshelf',1,'delete',0,0,3),(3,'BookStack\\Bookshelf',1,'update',0,0,3),(3,'BookStack\\Bookshelf',1,'view',1,1,3),(3,'BookStack\\Chapter',1,'delete',0,0,4),(3,'BookStack\\Chapter',1,'page-create',0,0,4),(3,'BookStack\\Chapter',1,'update',0,0,4),(3,'BookStack\\Chapter',1,'view',1,1,4),(3,'BookStack\\Chapter',2,'delete',0,0,4),(3,'BookStack\\Chapter',2,'page-create',0,0,4),(3,'BookStack\\Chapter',2,'update',0,0,4),(3,'BookStack\\Chapter',2,'view',1,1,4),(3,'BookStack\\Page',1,'delete',0,0,3),(3,'BookStack\\Page',1,'update',0,0,3),(3,'BookStack\\Page',1,'view',1,1,3),(3,'BookStack\\Page',2,'delete',0,0,4),(3,'BookStack\\Page',2,'update',0,0,4),(3,'BookStack\\Page',2,'view',1,1,4),(3,'BookStack\\Page',3,'delete',0,0,4),(3,'BookStack\\Page',3,'update',0,0,4),(3,'BookStack\\Page',3,'view',1,1,4),(3,'BookStack\\Page',4,'delete',0,0,4),(3,'BookStack\\Page',4,'update',0,0,4),(3,'BookStack\\Page',4,'view',1,1,4),(3,'BookStack\\Page',5,'delete',0,0,4),(3,'BookStack\\Page',5,'update',0,0,4),(3,'BookStack\\Page',5,'view',1,1,4),(3,'BookStack\\Page',6,'delete',0,0,4),(3,'BookStack\\Page',6,'update',0,0,4),(3,'BookStack\\Page',6,'view',1,1,4),(3,'BookStack\\Page',7,'delete',0,0,4),(3,'BookStack\\Page',7,'update',0,0,4),(3,'BookStack\\Page',7,'view',1,1,4),(4,'BookStack\\Book',1,'chapter-create',0,0,3),(4,'BookStack\\Book',1,'delete',0,0,3),(4,'BookStack\\Book',1,'page-create',0,0,3),(4,'BookStack\\Book',1,'update',0,0,3),(4,'BookStack\\Book',1,'view',1,1,3),(4,'BookStack\\Book',2,'chapter-create',0,0,3),(4,'BookStack\\Book',2,'delete',0,0,3),(4,'BookStack\\Book',2,'page-create',0,0,3),(4,'BookStack\\Book',2,'update',0,0,3),(4,'BookStack\\Book',2,'view',1,1,3),(4,'BookStack\\Book',3,'chapter-create',0,0,4),(4,'BookStack\\Book',3,'delete',0,0,4),(4,'BookStack\\Book',3,'page-create',0,0,4),(4,'BookStack\\Book',3,'update',0,0,4),(4,'BookStack\\Book',3,'view',1,1,4),(4,'BookStack\\Book',4,'chapter-create',0,0,4),(4,'BookStack\\Book',4,'delete',0,0,4),(4,'BookStack\\Book',4,'page-create',0,0,4),(4,'BookStack\\Book',4,'update',0,0,4),(4,'BookStack\\Book',4,'view',1,1,4),(4,'BookStack\\Bookshelf',1,'delete',0,0,3),(4,'BookStack\\Bookshelf',1,'update',0,0,3),(4,'BookStack\\Bookshelf',1,'view',1,1,3),(4,'BookStack\\Chapter',1,'delete',0,0,4),(4,'BookStack\\Chapter',1,'page-create',0,0,4),(4,'BookStack\\Chapter',1,'update',0,0,4),(4,'BookStack\\Chapter',1,'view',1,1,4),(4,'BookStack\\Chapter',2,'delete',0,0,4),(4,'BookStack\\Chapter',2,'page-create',0,0,4),(4,'BookStack\\Chapter',2,'update',0,0,4),(4,'BookStack\\Chapter',2,'view',1,1,4),(4,'BookStack\\Page',1,'delete',0,0,3),(4,'BookStack\\Page',1,'update',0,0,3),(4,'BookStack\\Page',1,'view',1,1,3),(4,'BookStack\\Page',2,'delete',0,0,4),(4,'BookStack\\Page',2,'update',0,0,4),(4,'BookStack\\Page',2,'view',1,1,4),(4,'BookStack\\Page',3,'delete',0,0,4),(4,'BookStack\\Page',3,'update',0,0,4),(4,'BookStack\\Page',3,'view',1,1,4),(4,'BookStack\\Page',4,'delete',0,0,4),(4,'BookStack\\Page',4,'update',0,0,4),(4,'BookStack\\Page',4,'view',1,1,4),(4,'BookStack\\Page',5,'delete',0,0,4),(4,'BookStack\\Page',5,'update',0,0,4),(4,'BookStack\\Page',5,'view',1,1,4),(4,'BookStack\\Page',6,'delete',0,0,4),(4,'BookStack\\Page',6,'update',0,0,4),(4,'BookStack\\Page',6,'view',1,1,4),(4,'BookStack\\Page',7,'delete',0,0,4),(4,'BookStack\\Page',7,'update',0,0,4),(4,'BookStack\\Page',7,'view',1,1,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES (1,1,'script\'s installation','<p id=\"bkmrk-%23%21%2Fbin%2Fbash\">#!/bin/bash</p>\r\n<p id=\"bkmrk-install_packages%28%29%7Ba\">install_packages()<br>{<br>apt install sudo unzip git -y<br>}</p>\r\n<p id=\"bkmrk-install_exe_cheat%28%29%7B\">install_exe_cheat()<br>{<br>wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gz<br>gunzip cheat-linux-amd64.gz<br>chmod +x cheat-linux-amd64<br>./cheat-linux-amd64<br>mv cheat-linux-amd64 /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-create_group%28%29%7Bgroup\"><br>create_group()<br>{<br>groupadd Commun<br>chgrp Commun /root/.config/cheat/cheatsheets/personal<br>}</p>\r\n<p id=\"bkmrk-uninstall_exe_cheat%28\"><br>uninstall_exe_cheat()<br>{<br>rm -fv /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_cheatsheets%28%29\">remove_cheatsheets()<br>{<br>rm -rf /root/.config/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_group%28%29%7Bgroup\">remove_group()<br>{<br>groupdel Commun<br>}</p>\r\n<p id=\"bkmrk-if-%5B-%24%23--eq-0-%5Dthene\"><br>if [ $# -eq 0 ]<br>then<br>echo \"Erreur de syntaxe\"<br>echo \"Usage: $0 -i (install)\"<br>echo \"Usage: $0 -u (uninstall)\"<br>exit<br>fi</p>\r\n<p id=\"bkmrk-param%3D%22%241%22if-%5B-%22%24par\">param=\"$1\"<br>if [ \"$param\" = \"-u\" ]<br>then<br>echo \"Uninstall start\"<br>uninstall_exe_cheat<br>remove_cheatsheets<br>remove_group<br>fi<br>if [ \"$param\" = \"-i\" ]<br>then<br>echo \"Install start\"<br>install_packages<br>install_exe_cheat<br>create_group<br>fi</p>','#!/bin/bash\r\ninstall_packages(){apt install sudo unzip git -y}\r\ninstall_exe_cheat(){wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gzgunzip cheat-linux-amd64.gzchmod +x cheat-linux-amd64./cheat-linux-amd64mv cheat-linux-amd64 /usr/local/bin/cheat}\r\ncreate_group(){groupadd Communchgrp Commun /root/.config/cheat/cheatsheets/personal}\r\nuninstall_exe_cheat(){rm -fv /usr/local/bin/cheat}\r\nremove_cheatsheets(){rm -rf /root/.config/cheat}\r\nremove_group(){groupdel Commun}\r\nif [ $# -eq 0 ]thenecho \"Erreur de syntaxe\"echo \"Usage: $0 -i (install)\"echo \"Usage: $0 -u (uninstall)\"exitfi\r\nparam=\"$1\"if [ \"$param\" = \"-u\" ]thenecho \"Uninstall start\"uninstall_exe_cheatremove_cheatsheetsremove_groupfiif [ \"$param\" = \"-i\" ]thenecho \"Install start\"install_packagesinstall_exe_cheatcreate_groupfi',3,'2022-01-02 14:10:28','2022-01-02 14:10:28','scripts-installation','cheats-installation','version','','Initial publish',1),(2,2,'Commande à Réaliser','<p class=\"align-left\" id=\"bkmrk-%C2%A0\"> </p>\r\n<ul id=\"bkmrk-paquets-essentiels\">\r\n<li class=\"align-left\"><strong>paquets essentiels</strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---apt-install--y-apa\">--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl<br>--apt-get install mariadb-server mariadb-client<br>--mysql_secure_installation</p>\r\n<ul id=\"bkmrk-d%C3%A9sactivation-de-apa\">\r\n<li class=\"align-left\"><strong>désactivation de apache2 et activation de nginx </strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-update-rc.d-a\">--sudo update-rc.d apache2 disable</p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-sta\">--sudo systemctl start nginx.service </p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-ena\">--sudo systemctl enable nginx.service</p>\r\n<ul id=\"bkmrk-mariadb--u-root\">\r\n<li><strong>mariadb -u root</strong></li>\r\n</ul>\r\n<p id=\"bkmrk---apt-install--y--qq\">--apt install -y -qq mariadb-server</p>\r\n<p id=\"bkmrk---mysql--u-root--p\">--mysql -u root -p</p>\r\n<p id=\"bkmrk---create-database-bo\">--create database bookstackdb</p>\r\n<p id=\"bkmrk---create-user-%27malvi\">--create user \'malvin\'@localhost identified by \'malvin\'</p>\r\n<p id=\"bkmrk---grant-all-privileg\">--grant all privileges on bookstackdb.* to \'malvin\'@localhost;</p>\r\n<ul id=\"bkmrk-configuration-nginx\">\r\n<li><strong>configuration NGINX</strong></li>\r\n</ul>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0-2\"> </p>',' \r\n\r\npaquets essentiels\r\n\r\n--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl--apt-get install mariadb-server mariadb-client--mysql_secure_installation\r\n\r\ndésactivation de apache2 et activation de nginx \r\n\r\n--sudo update-rc.d apache2 disable\r\n--sudo systemctl start nginx.service \r\n--sudo systemctl enable nginx.service\r\n\r\nmariadb -u root\r\n\r\n--apt install -y -qq mariadb-server\r\n--mysql -u root -p\r\n--create database bookstackdb\r\n--create user \'malvin\'@localhost identified by \'malvin\'\r\n--grant all privileges on bookstackdb.* to \'malvin\'@localhost;\r\n\r\nconfiguration NGINX\r\n\r\n \r\n \r\n ',4,'2022-01-21 20:21:37','2022-01-21 20:21:37','commande-a-realiser','bookstacks-installation','version','','Initial publish',1),(3,3,'travail préparatoire','','',4,'2022-03-30 10:34:28','2022-03-30 10:34:28','travail-preparatoire','wireguard','version','','Initial publish',1),(4,4,'installation','<p id=\"bkmrk-commande-et-fichier-\">commande et fichier de conf pouvoir choisir une commande et du shell</p>','commande et fichier de conf pouvoir choisir une commande et du shell',4,'2022-03-30 10:35:17','2022-03-30 10:35:17','installation','wireguard','version','','Initial publish',1),(5,5,'configuration','','',4,'2022-03-30 10:35:42','2022-03-30 10:35:42','configuration','wireguard','version','','Initial publish',1),(6,6,'optimisation','','',4,'2022-03-30 10:35:50','2022-03-30 10:35:50','optimisation','wireguard','version','','Initial publish',1),(7,7,'securisation','','',4,'2022-03-30 10:36:01','2022-03-30 10:36:01','securisation','wireguard','version','','Initial publish',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,0,'script\'s installation','scripts-installation','<p id=\"bkmrk-%23%21%2Fbin%2Fbash\">#!/bin/bash</p>\r\n<p id=\"bkmrk-install_packages%28%29%7Ba\">install_packages()<br>{<br>apt install sudo unzip git -y<br>}</p>\r\n<p id=\"bkmrk-install_exe_cheat%28%29%7B\">install_exe_cheat()<br>{<br>wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gz<br>gunzip cheat-linux-amd64.gz<br>chmod +x cheat-linux-amd64<br>./cheat-linux-amd64<br>mv cheat-linux-amd64 /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-create_group%28%29%7Bgroup\"><br>create_group()<br>{<br>groupadd Commun<br>chgrp Commun /root/.config/cheat/cheatsheets/personal<br>}</p>\r\n<p id=\"bkmrk-uninstall_exe_cheat%28\"><br>uninstall_exe_cheat()<br>{<br>rm -fv /usr/local/bin/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_cheatsheets%28%29\">remove_cheatsheets()<br>{<br>rm -rf /root/.config/cheat<br>}</p>\r\n<p id=\"bkmrk-remove_group%28%29%7Bgroup\">remove_group()<br>{<br>groupdel Commun<br>}</p>\r\n<p id=\"bkmrk-if-%5B-%24%23--eq-0-%5Dthene\"><br>if [ $# -eq 0 ]<br>then<br>echo \"Erreur de syntaxe\"<br>echo \"Usage: $0 -i (install)\"<br>echo \"Usage: $0 -u (uninstall)\"<br>exit<br>fi</p>\r\n<p id=\"bkmrk-param%3D%22%241%22if-%5B-%22%24par\">param=\"$1\"<br>if [ \"$param\" = \"-u\" ]<br>then<br>echo \"Uninstall start\"<br>uninstall_exe_cheat<br>remove_cheatsheets<br>remove_group<br>fi<br>if [ \"$param\" = \"-i\" ]<br>then<br>echo \"Install start\"<br>install_packages<br>install_exe_cheat<br>create_group<br>fi</p>','#!/bin/bash\r\ninstall_packages(){apt install sudo unzip git -y}\r\ninstall_exe_cheat(){wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gzgunzip cheat-linux-amd64.gzchmod +x cheat-linux-amd64./cheat-linux-amd64mv cheat-linux-amd64 /usr/local/bin/cheat}\r\ncreate_group(){groupadd Communchgrp Commun /root/.config/cheat/cheatsheets/personal}\r\nuninstall_exe_cheat(){rm -fv /usr/local/bin/cheat}\r\nremove_cheatsheets(){rm -rf /root/.config/cheat}\r\nremove_group(){groupdel Commun}\r\nif [ $# -eq 0 ]thenecho \"Erreur de syntaxe\"echo \"Usage: $0 -i (install)\"echo \"Usage: $0 -u (uninstall)\"exitfi\r\nparam=\"$1\"if [ \"$param\" = \"-u\" ]thenecho \"Uninstall start\"uninstall_exe_cheatremove_cheatsheetsremove_groupfiif [ \"$param\" = \"-i\" ]thenecho \"Install start\"install_packagesinstall_exe_cheatcreate_groupfi',2,'2022-01-02 14:07:15','2022-01-02 14:10:28',3,3,0,0,'',1,0,NULL,3),(2,2,0,'Commande à Réaliser','commande-a-realiser','<p class=\"align-left\" id=\"bkmrk-%C2%A0\"> </p>\r\n<ul id=\"bkmrk-paquets-essentiels\">\r\n<li class=\"align-left\"><strong>paquets essentiels</strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---apt-install--y-apa\">--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl<br>--apt-get install mariadb-server mariadb-client<br>--mysql_secure_installation</p>\r\n<ul id=\"bkmrk-d%C3%A9sactivation-de-apa\">\r\n<li class=\"align-left\"><strong>désactivation de apache2 et activation de nginx </strong></li>\r\n</ul>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-update-rc.d-a\">--sudo update-rc.d apache2 disable</p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-sta\">--sudo systemctl start nginx.service </p>\r\n<p class=\"align-left\" id=\"bkmrk---sudo-systemctl-ena\">--sudo systemctl enable nginx.service</p>\r\n<ul id=\"bkmrk-mariadb--u-root\">\r\n<li><strong>mariadb -u root</strong></li>\r\n</ul>\r\n<p id=\"bkmrk---apt-install--y--qq\">--apt install -y -qq mariadb-server</p>\r\n<p id=\"bkmrk---mysql--u-root--p\">--mysql -u root -p</p>\r\n<p id=\"bkmrk---create-database-bo\">--create database bookstackdb</p>\r\n<p id=\"bkmrk---create-user-%27malvi\">--create user \'malvin\'@localhost identified by \'malvin\'</p>\r\n<p id=\"bkmrk---grant-all-privileg\">--grant all privileges on bookstackdb.* to \'malvin\'@localhost;</p>\r\n<ul id=\"bkmrk-configuration-nginx\">\r\n<li><strong>configuration NGINX</strong></li>\r\n</ul>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0-2\"> </p>',' \r\n\r\npaquets essentiels\r\n\r\n--apt install -y apache2 libapache2-mod-php7.4 php7.4-fpm php7.4-curl php7 .4-mbstring php7.4-ldap php7.4-tidy php7.4-xml php7.4-zip php7.4-gd php7.4-mysql mariadb-server mariadb-client git curl--apt-get install mariadb-server mariadb-client--mysql_secure_installation\r\n\r\ndésactivation de apache2 et activation de nginx \r\n\r\n--sudo update-rc.d apache2 disable\r\n--sudo systemctl start nginx.service \r\n--sudo systemctl enable nginx.service\r\n\r\nmariadb -u root\r\n\r\n--apt install -y -qq mariadb-server\r\n--mysql -u root -p\r\n--create database bookstackdb\r\n--create user \'malvin\'@localhost identified by \'malvin\'\r\n--grant all privileges on bookstackdb.* to \'malvin\'@localhost;\r\n\r\nconfiguration NGINX\r\n\r\n \r\n \r\n ',2,'2022-01-21 19:38:22','2022-01-21 20:21:37',4,4,0,0,'',1,0,NULL,4),(3,3,0,'travail préparatoire','travail-preparatoire','','',2,'2022-03-30 10:34:21','2022-03-30 10:34:28',4,4,0,0,'',1,0,NULL,4),(4,3,0,'installation','installation','<p id=\"bkmrk-commande-et-fichier-\">commande et fichier de conf pouvoir choisir une commande et du shell</p>','commande et fichier de conf pouvoir choisir une commande et du shell',4,'2022-03-30 10:34:46','2022-03-30 10:35:17',4,4,0,0,'',1,0,NULL,4),(5,3,0,'configuration','configuration','','',5,'2022-03-30 10:35:36','2022-03-30 10:35:42',4,4,0,0,'',1,0,NULL,4),(6,3,0,'optimisation','optimisation','','',6,'2022-03-30 10:35:45','2022-03-30 10:35:50',4,4,0,0,'',1,0,NULL,4),(7,3,0,'securisation','securisation','','',7,'2022-03-30 10:35:54','2022-03-30 10:36:01',4,4,0,0,'',1,0,NULL,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES (76,'script','BookStack\\Page',1,40),(77,'s','BookStack\\Page',1,40),(78,'installation','BookStack\\Page',1,40),(79,'#','BookStack\\Page',1,1),(80,'/bin/bash','BookStack\\Page',1,1),(81,'install_packages','BookStack\\Page',1,1),(82,'apt','BookStack\\Page',1,1),(83,'install','BookStack\\Page',1,2),(84,'sudo','BookStack\\Page',1,1),(85,'unzip','BookStack\\Page',1,1),(86,'git','BookStack\\Page',1,1),(87,'-y','BookStack\\Page',1,1),(88,'install_exe_cheat','BookStack\\Page',1,1),(89,'wget','BookStack\\Page',1,1),(90,'https','BookStack\\Page',1,1),(91,'//github','BookStack\\Page',1,1),(92,'com/cheat/cheat/releases/download/4','BookStack\\Page',1,1),(93,'2','BookStack\\Page',1,1),(94,'3/cheat-linux-amd64','BookStack\\Page',1,1),(95,'gzgunzip','BookStack\\Page',1,1),(96,'cheat-linux-amd64','BookStack\\Page',1,3),(97,'gzchmod','BookStack\\Page',1,1),(98,'+x','BookStack\\Page',1,1),(99,'/cheat-linux-amd64mv','BookStack\\Page',1,1),(100,'/usr/local/bin/cheat','BookStack\\Page',1,2),(101,'create_group','BookStack\\Page',1,1),(102,'groupadd','BookStack\\Page',1,1),(103,'Communchgrp','BookStack\\Page',1,1),(104,'Commun','BookStack\\Page',1,2),(105,'/root/','BookStack\\Page',1,2),(106,'config/cheat/cheatsheets/personal','BookStack\\Page',1,1),(107,'uninstall_exe_cheat','BookStack\\Page',1,1),(108,'rm','BookStack\\Page',1,2),(109,'-fv','BookStack\\Page',1,1),(110,'remove_cheatsheets','BookStack\\Page',1,1),(111,'-rf','BookStack\\Page',1,1),(112,'config/cheat','BookStack\\Page',1,1),(113,'remove_group','BookStack\\Page',1,1),(114,'groupdel','BookStack\\Page',1,1),(115,'if','BookStack\\Page',1,2),(116,'$#','BookStack\\Page',1,1),(117,'-eq','BookStack\\Page',1,1),(118,'0','BookStack\\Page',1,1),(119,'thenecho','BookStack\\Page',1,3),(120,'Erreur','BookStack\\Page',1,1),(121,'de','BookStack\\Page',1,1),(122,'syntaxe','BookStack\\Page',1,1),(123,'echo','BookStack\\Page',1,2),(124,'Usage','BookStack\\Page',1,2),(125,'$0','BookStack\\Page',1,2),(126,'-i','BookStack\\Page',1,2),(127,'-u','BookStack\\Page',1,2),(128,'uninstall','BookStack\\Page',1,1),(129,'exitfi','BookStack\\Page',1,1),(130,'param=','BookStack\\Page',1,1),(131,'$1','BookStack\\Page',1,1),(132,'$param','BookStack\\Page',1,2),(133,'=','BookStack\\Page',1,2),(134,'Uninstall','BookStack\\Page',1,1),(135,'start','BookStack\\Page',1,2),(136,'uninstall_exe_cheatremove_cheatsheetsremove_groupfiif','BookStack\\Page',1,1),(137,'Install','BookStack\\Page',1,1),(138,'install_packagesinstall_exe_cheatcreate_groupfi','BookStack\\Page',1,1),(191,'CHEAT','BookStack\\Book',1,48),(192,'s','BookStack\\Book',1,48),(193,'installation','BookStack\\Book',1,48),(194,'Vous','BookStack\\Book',1,1),(195,'trouverez','BookStack\\Book',1,1),(196,'dans','BookStack\\Book',1,2),(197,'ce','BookStack\\Book',1,1),(198,'livre','BookStack\\Book',1,1),(199,'un','BookStack\\Book',1,2),(200,'code','BookStack\\Book',1,2),(201,'qui','BookStack\\Book',1,1),(202,'installe','BookStack\\Book',1,1),(203,'automatiquement','BookStack\\Book',1,1),(204,'cheat','BookStack\\Book',1,1),(205,'récupérez','BookStack\\Book',1,1),(206,'le','BookStack\\Book',1,2),(207,'que','BookStack\\Book',1,1),(208,'vous','BookStack\\Book',1,1),(209,'insérerai','BookStack\\Book',1,1),(210,'fichier','BookStack\\Book',1,1),(211,'puis','BookStack\\Book',1,1),(212,'pour','BookStack\\Book',1,2),(213,'lancer','BookStack\\Book',1,1),(214,'il','BookStack\\Book',1,2),(215,'faudra','BookStack\\Book',1,2),(216,'faire','BookStack\\Book',1,2),(217,'la','BookStack\\Book',1,3),(218,'commande','BookStack\\Book',1,3),(219,'bash','BookStack\\Book',1,1),(220,'nom_du_fichier','BookStack\\Book',1,1),(221,'-i','BookStack\\Book',1,1),(222,'Pour','BookStack\\Book',1,1),(223,'l','BookStack\\Book',1,1),(224,'exécuter','BookStack\\Book',1,1),(225,'réaliser','BookStack\\Book',1,1),(226,'en','BookStack\\Book',1,2),(227,'mode','BookStack\\Book',1,2),(228,'ROOT','BookStack\\Book',1,1),(229,'passer','BookStack\\Book',1,1),(230,'root','BookStack\\Book',1,1),(231,'su','BookStack\\Book',1,1),(232,'-','BookStack\\Book',1,1),(233,'ou','BookStack\\Book',1,1),(234,'avoir','BookStack\\Book',1,1),(235,'les','BookStack\\Book',1,1),(236,'droits','BookStack\\Book',1,1),(237,'admin','BookStack\\Book',1,1),(238,'et','BookStack\\Book',1,1),(239,'donc','BookStack\\Book',1,1),(240,'pouvoir','BookStack\\Book',1,1),(241,'utiliser','BookStack\\Book',1,1),(242,'sudo','BookStack\\Book',1,1),(243,'Bookstack','BookStack\\Book',2,48),(244,'s','BookStack\\Book',2,48),(245,'installation','BookStack\\Book',2,49),(246,'procedure','BookStack\\Book',2,1),(247,'of','BookStack\\Book',2,1),(312,'Commande','BookStack\\Page',2,40),(313,'à','BookStack\\Page',2,40),(314,'Réaliser','BookStack\\Page',2,40),(315,' ','BookStack\\Page',2,4),(316,'paquets','BookStack\\Page',2,1),(317,'essentiels','BookStack\\Page',2,1),(318,'--apt','BookStack\\Page',2,2),(319,'install','BookStack\\Page',2,3),(320,'-y','BookStack\\Page',2,2),(321,'apache2','BookStack\\Page',2,3),(322,'libapache2-mod-php7','BookStack\\Page',2,1),(323,'4','BookStack\\Page',2,1),(324,'php7','BookStack\\Page',2,9),(325,'4-fpm','BookStack\\Page',2,1),(326,'4-curl','BookStack\\Page',2,1),(327,'4-mbstring','BookStack\\Page',2,1),(328,'4-ldap','BookStack\\Page',2,1),(329,'4-tidy','BookStack\\Page',2,1),(330,'4-xml','BookStack\\Page',2,1),(331,'4-zip','BookStack\\Page',2,1),(332,'4-gd','BookStack\\Page',2,1),(333,'4-mysql','BookStack\\Page',2,1),(334,'mariadb-server','BookStack\\Page',2,3),(335,'mariadb-client','BookStack\\Page',2,1),(336,'git','BookStack\\Page',2,1),(337,'curl--apt-get','BookStack\\Page',2,1),(338,'mariadb-client--mysql_secure_installation','BookStack\\Page',2,1),(339,'désactivation','BookStack\\Page',2,1),(340,'de','BookStack\\Page',2,2),(341,'et','BookStack\\Page',2,1),(342,'activation','BookStack\\Page',2,1),(343,'nginx ','BookStack\\Page',2,1),(344,'--sudo','BookStack\\Page',2,3),(345,'update-rc','BookStack\\Page',2,1),(346,'d','BookStack\\Page',2,1),(347,'disable','BookStack\\Page',2,1),(348,'systemctl','BookStack\\Page',2,2),(349,'start','BookStack\\Page',2,1),(350,'nginx','BookStack\\Page',2,2),(351,'service ','BookStack\\Page',2,1),(352,'enable','BookStack\\Page',2,1),(353,'service','BookStack\\Page',2,1),(354,'mariadb','BookStack\\Page',2,1),(355,'-u','BookStack\\Page',2,2),(356,'root','BookStack\\Page',2,2),(357,'-qq','BookStack\\Page',2,1),(358,'--mysql','BookStack\\Page',2,1),(359,'-p','BookStack\\Page',2,1),(360,'--create','BookStack\\Page',2,2),(361,'database','BookStack\\Page',2,1),(362,'bookstackdb','BookStack\\Page',2,2),(363,'user','BookStack\\Page',2,1),(364,'malvin','BookStack\\Page',2,3),(365,'@localhost','BookStack\\Page',2,2),(366,'identified','BookStack\\Page',2,1),(367,'by','BookStack\\Page',2,1),(368,'--grant','BookStack\\Page',2,1),(369,'all','BookStack\\Page',2,1),(370,'privileges','BookStack\\Page',2,1),(371,'on','BookStack\\Page',2,1),(372,'*','BookStack\\Page',2,1),(373,'to','BookStack\\Page',2,1),(374,'configuration','BookStack\\Page',2,1),(375,'NGINX','BookStack\\Page',2,1),(379,'travail','BookStack\\Page',3,40),(380,'préparatoire','BookStack\\Page',3,40),(381,'intro','BookStack\\Chapter',1,48),(393,'installation','BookStack\\Page',4,40),(394,'commande','BookStack\\Page',4,2),(395,'et','BookStack\\Page',4,2),(396,'fichier','BookStack\\Page',4,1),(397,'de','BookStack\\Page',4,1),(398,'conf','BookStack\\Page',4,1),(399,'pouvoir','BookStack\\Page',4,1),(400,'choisir','BookStack\\Page',4,1),(401,'une','BookStack\\Page',4,1),(402,'du','BookStack\\Page',4,1),(403,'shell','BookStack\\Page',4,1),(405,'configuration','BookStack\\Page',5,40),(407,'optimisation','BookStack\\Page',6,40),(409,'securisation','BookStack\\Page',7,40),(410,'test','BookStack\\Chapter',2,48),(411,'wireguard','BookStack\\Book',3,48),(412,'1','BookStack\\Bookshelf',1,48),(413,'3ieme','BookStack\\Bookshelf',1,48),(414,'année','BookStack\\Bookshelf',1,48),(415,'Guacamole','BookStack\\Book',4,48);
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
INSERT INTO `users` VALUES (2,'Guest','guest@example.com','',NULL,'2021-12-07 22:01:27','2021-12-07 22:01:27',1,0,'','public','guest'),(3,'nimda','nimda@nimda.com','$2y$10$F6fNv0wyBb9eUr4F5vHifeG0BB6TB33aMzXKfSnTZZcUuiSquw4BW',NULL,'2021-12-09 19:56:30','2021-12-09 19:56:30',1,1,'',NULL,'nimda'),(4,'malvin','malvin@malvin.com','$2y$10$KvcJ0JDWOlC/MmIDPLnB0OqN/SuFTOsxG469cBkAj7rK0Iy/uZ6Xu','3hfu2zvW96OmKyVVEl7YRXIYvHBjCS4ohU9DxezH7Lz5uRMpQQRWSBtNqWtU','2021-12-09 19:57:20','2021-12-09 19:57:21',1,2,'',NULL,'malvin'),(5,'joe','joe@joe.com','$2y$10$CBP95FnXaQQN4HBBNhXsL.d9No6pevaXYBQ5wlEEYcyzwUO8AdLz.',NULL,'2021-12-09 19:57:52','2021-12-09 19:57:52',1,3,'',NULL,'joe');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,3,1,'BookStack\\Bookshelf',9,'2022-01-02 14:06:18','2022-03-30 11:07:56'),(2,3,1,'BookStack\\Book',10,'2022-01-02 14:07:08','2022-01-17 20:20:49'),(3,3,2,'BookStack\\Book',4,'2022-01-02 14:07:40','2022-01-14 07:39:34'),(4,3,1,'BookStack\\Page',2,'2022-01-02 14:10:28','2022-01-17 20:20:02'),(5,5,1,'BookStack\\Book',2,'2022-01-02 14:17:51','2022-01-02 14:18:02'),(6,5,1,'BookStack\\Page',1,'2022-01-02 14:17:53','2022-01-02 14:17:53'),(7,4,1,'BookStack\\Book',4,'2022-01-02 14:18:20','2022-03-30 10:39:52'),(8,4,1,'BookStack\\Bookshelf',9,'2022-01-20 19:48:06','2022-03-30 10:40:56'),(9,4,2,'BookStack\\Book',6,'2022-01-20 19:48:09','2022-03-30 10:39:34'),(10,4,2,'BookStack\\Page',3,'2022-01-21 20:21:37','2022-03-29 06:19:27'),(11,4,1,'BookStack\\Page',1,'2022-03-29 06:19:38','2022-03-29 06:19:38'),(12,4,3,'BookStack\\Book',12,'2022-03-30 10:34:19','2022-03-30 10:39:49'),(13,4,3,'BookStack\\Page',3,'2022-03-30 10:34:28','2022-03-30 10:36:59'),(14,4,1,'BookStack\\Chapter',1,'2022-03-30 10:34:40','2022-03-30 10:34:40'),(15,4,4,'BookStack\\Page',3,'2022-03-30 10:35:17','2022-03-30 10:37:24'),(16,4,5,'BookStack\\Page',1,'2022-03-30 10:35:42','2022-03-30 10:35:42'),(17,4,6,'BookStack\\Page',1,'2022-03-30 10:35:50','2022-03-30 10:35:50'),(18,4,7,'BookStack\\Page',1,'2022-03-30 10:36:01','2022-03-30 10:36:01'),(19,4,2,'BookStack\\Chapter',1,'2022-03-30 10:36:50','2022-03-30 10:36:50'),(20,4,4,'BookStack\\Book',1,'2022-03-30 10:40:53','2022-03-30 10:40:53'),(21,3,3,'BookStack\\Book',1,'2022-03-30 11:08:07','2022-03-30 11:08:07');
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

-- Dump completed on 2022-03-31 11:12:04
