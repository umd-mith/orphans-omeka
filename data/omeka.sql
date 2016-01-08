-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: omeka
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `omeka_collections`
--

DROP TABLE IF EXISTS `omeka_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_collections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `public` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `public` (`public`),
  KEY `featured` (`featured`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_collections`
--

LOCK TABLES `omeka_collections` WRITE;
/*!40000 ALTER TABLE `omeka_collections` DISABLE KEYS */;
INSERT INTO `omeka_collections` VALUES (1,1,0,'2016-01-08 20:22:09','2016-01-08 20:22:09',1),(2,1,0,'2016-01-08 21:27:34','2016-01-08 21:27:34',1);
/*!40000 ALTER TABLE `omeka_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_csv_import_imported_items`
--

DROP TABLE IF EXISTS `omeka_csv_import_imported_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_csv_import_imported_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `import_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id` (`item_id`),
  KEY `import_id` (`import_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_csv_import_imported_items`
--

LOCK TABLES `omeka_csv_import_imported_items` WRITE;
/*!40000 ALTER TABLE `omeka_csv_import_imported_items` DISABLE KEYS */;
INSERT INTO `omeka_csv_import_imported_items` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,1),(34,34,1),(35,35,1),(36,36,1),(37,37,1),(38,38,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,1),(44,44,1),(45,45,1),(46,46,1),(47,47,1),(48,48,1),(49,49,1),(50,50,1),(51,51,1),(52,52,1),(53,53,1),(54,54,1),(55,55,1),(56,56,1),(57,57,1),(58,58,1),(59,59,1),(60,60,1),(61,61,1),(62,62,1),(63,63,1),(64,64,1),(65,65,1),(66,66,1),(67,67,1),(68,68,1),(69,69,1),(70,70,1),(71,71,1),(72,72,1),(73,73,1),(74,74,1),(75,75,1),(76,76,1),(77,77,1),(78,78,1),(79,79,1),(80,80,1),(81,81,1);
/*!40000 ALTER TABLE `omeka_csv_import_imported_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_csv_import_imports`
--

DROP TABLE IF EXISTS `omeka_csv_import_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_csv_import_imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_type_id` int(10) unsigned DEFAULT NULL,
  `collection_id` int(10) unsigned DEFAULT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  `delimiter` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_position` bigint(20) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipped_row_count` int(10) unsigned NOT NULL,
  `skipped_item_count` int(10) unsigned NOT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `serialized_column_maps` text COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_csv_import_imports`
--

LOCK TABLES `omeka_csv_import_imports` WRITE;
/*!40000 ALTER TABLE `omeka_csv_import_imports` DISABLE KEYS */;
INSERT INTO `omeka_csv_import_imports` VALUES (1,12,NULL,1,',','people.csv','/tmp/c55cf52f62e9bdb239166cbe07144a07',4774,'completed',0,0,0,0,'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"43\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:13:\"ID:Identifier\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:18:\"Display Name:Title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"52\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"Affiliation:Affiliation\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"53\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Email Address:Email\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:4;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"54\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Website URL:Website\";s:8:\"\0*\0_type\";s:7:\"Element\";}}}','2016-01-08 20:32:20');
/*!40000 ALTER TABLE `omeka_csv_import_imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_element_sets`
--

DROP TABLE IF EXISTS `omeka_element_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_element_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `record_type` (`record_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_element_sets`
--

LOCK TABLES `omeka_element_sets` WRITE;
/*!40000 ALTER TABLE `omeka_element_sets` DISABLE KEYS */;
INSERT INTO `omeka_element_sets` VALUES (1,NULL,'Dublin Core','The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),(3,'Item','Item Type Metadata','The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.'),(4,'Item','PBCore','PBCore is a metadata standard for audiovisual media developed by the public broadcasting community. See http://www.pbcore.org/documentation/');
/*!40000 ALTER TABLE `omeka_element_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_element_texts`
--

DROP TABLE IF EXISTS `omeka_element_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_element_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) unsigned NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) unsigned NOT NULL,
  `html` tinyint(4) NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `record_type_record_id` (`record_type`,`record_id`),
  KEY `element_id` (`element_id`),
  KEY `text` (`text`(20))
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_element_texts`
--

LOCK TABLES `omeka_element_texts` WRITE;
/*!40000 ALTER TABLE `omeka_element_texts` DISABLE KEYS */;
INSERT INTO `omeka_element_texts` VALUES (1,1,'Collection',50,0,'People'),(2,1,'Item',43,0,'0037'),(3,1,'Item',50,0,'Alan Berliner'),(4,1,'Item',54,0,'http://www.alanberliner.com/'),(5,2,'Item',43,0,'0039'),(6,2,'Item',50,0,'Alfred Leslie'),(7,3,'Item',43,0,'0060'),(8,3,'Item',50,0,'Andrea McCarty'),(9,4,'Item',43,0,'0061'),(10,4,'Item',50,0,'Arlene Balkansky'),(11,4,'Item',52,0,'Library of Congress'),(12,5,'Item',43,0,'0055'),(13,5,'Item',50,0,'Barbara Selznick'),(14,6,'Item',43,0,'0010'),(15,6,'Item',50,0,'Benjamin Singleton'),(16,7,'Item',43,0,'0036'),(17,7,'Item',50,0,'Bill Morrison'),(18,7,'Item',54,0,'http://billmorrisonfilm.com/'),(19,8,'Item',43,0,'0044'),(20,8,'Item',50,0,'Bjørn Sørenssen'),(21,9,'Item',43,0,'0062'),(22,9,'Item',50,0,'Bob Heiber'),(23,9,'Item',52,0,'Chace Productions'),(24,10,'Item',43,0,'0018'),(25,10,'Item',50,0,'Callie Angell'),(26,11,'Item',43,0,'0035'),(27,11,'Item',50,0,'Carolyn Faber'),(28,11,'Item',52,0,'WPA Film Library'),(29,12,'Item',43,0,'0021'),(30,12,'Item',50,0,'Charlene Regester'),(31,13,'Item',43,0,'0022'),(32,13,'Item',50,0,'Charles Musser'),(33,13,'Item',52,0,'Yale University'),(34,14,'Item',43,0,'0043'),(35,14,'Item',50,0,'Charles Ramírez Berg'),(36,15,'Item',43,0,'0045'),(37,15,'Item',50,0,'Christel Taillibert'),(38,16,'Item',43,0,'0048'),(39,16,'Item',50,0,'Dana F. White'),(40,17,'Item',43,0,'0063'),(41,17,'Item',50,0,'Daniel Goldmark'),(42,17,'Item',52,0,'University of Alabama'),(43,18,'Item',43,0,'0020'),(44,18,'Item',50,0,'Donald Crafton'),(45,19,'Item',43,0,'0011'),(46,19,'Item',50,0,'Dr. John Palms'),(47,19,'Item',52,0,'University of South Carolina'),(48,20,'Item',43,0,'0064'),(49,20,'Item',50,0,'Elaine Charnov '),(50,20,'Item',52,0,'Margaret Mead Film & Video Festival'),(51,21,'Item',43,0,'0033'),(52,21,'Item',50,0,'Eric Schaefer'),(53,22,'Item',43,0,'0065'),(54,22,'Item',50,0,'Frances Guerin'),(55,22,'Item',52,0,'University of Kent'),(56,23,'Item',43,0,'0015'),(57,23,'Item',50,0,'Francis Poole'),(58,24,'Item',43,0,'0066'),(59,24,'Item',50,0,'Greg Pierce'),(60,24,'Item',52,0,'Orgone Cinema and Archive'),(61,25,'Item',43,0,'0042'),(62,25,'Item',50,0,'Gregorio Rocha'),(63,26,'Item',43,0,'0047'),(64,26,'Item',50,0,'Gregory A. Waller'),(65,27,'Item',43,0,'0027'),(66,27,'Item',50,0,'Gregory Lukow'),(67,27,'Item',52,0,'Library of Congress'),(68,28,'Item',43,0,'0067'),(69,28,'Item',50,0,'Ivan Raykoff'),(70,28,'Item',52,0,'Whitman College'),(71,29,'Item',43,0,'0041'),(72,29,'Item',50,0,'Ivo Sarría'),(73,29,'Item',52,0,'Cinemateca de Cuba / ICAIC'),(74,30,'Item',43,0,'0023'),(75,30,'Item',50,0,'Jacqueline Stewart'),(76,31,'Item',43,0,'0017'),(77,31,'Item',50,0,'Jan-Christopher Horak'),(78,31,'Item',52,0,'Universal Studios'),(79,32,'Item',43,0,'0052'),(80,32,'Item',50,0,'Jeffrey Sconce'),(81,33,'Item',43,0,'0025'),(82,33,'Item',50,0,'Jennifer M. Bean'),(83,34,'Item',43,0,'0068'),(84,34,'Item',50,0,'Jesse Lerner'),(85,34,'Item',52,0,'Pitzer College'),(86,35,'Item',43,0,'0069'),(87,35,'Item',50,0,'Joachim Polzer'),(88,35,'Item',52,0,'Polzer Media Group GmbH'),(89,36,'Item',43,0,'0009'),(90,36,'Item',50,0,'Joe Lauro'),(91,37,'Item',43,0,'0019'),(92,37,'Item',50,0,'Jon Gartenberg'),(93,38,'Item',43,0,'0040'),(94,38,'Item',50,0,'Jonathan Rosenbaum'),(95,39,'Item',43,0,'0059'),(96,39,'Item',50,0,'Karen Glynn'),(97,40,'Item',43,0,'0001'),(98,40,'Item',50,0,'Karen Lund'),(99,40,'Item',52,0,'National Digital Library'),(100,41,'Item',43,0,'0070'),(101,41,'Item',50,0,'Karen Shopsowitz'),(102,41,'Item',52,0,'National Film Board of Canada'),(103,42,'Item',43,0,'0071'),(104,42,'Item',50,0,'Kay Hoffmann'),(105,42,'Item',52,0,'Documentary Film Center'),(106,43,'Item',43,0,'0004'),(107,43,'Item',50,0,'Ken Weissman'),(108,43,'Item',52,0,'Library of Congress'),(109,44,'Item',43,0,'0072'),(110,44,'Item',50,0,'Kristy Andersen'),(111,44,'Item',52,0,'Bay Bottom News'),(112,45,'Item',43,0,'0053'),(113,45,'Item',50,0,'Larry Urbanski '),(114,45,'Item',52,0,'Moviecraft, Inc.'),(115,46,'Item',43,0,'0073'),(116,46,'Item',50,0,'Laura Kissel'),(117,46,'Item',52,0,'University of South Carolina'),(118,47,'Item',43,0,'0028'),(119,47,'Item',50,0,'Linda Tadic'),(120,48,'Item',43,0,'0054'),(121,48,'Item',50,0,'Lynn Spigel'),(122,49,'Item',43,0,'0056'),(123,49,'Item',50,0,'Mark J. Williams'),(124,50,'Item',43,0,'0034'),(125,50,'Item',50,0,'Mark Miller'),(126,51,'Item',43,0,'0050'),(127,51,'Item',50,0,'Martin Marks'),(128,51,'Item',52,0,'National Film Preservation Foundation'),(129,52,'Item',43,0,'0046'),(130,52,'Item',50,0,'Mary Desjardins'),(131,52,'Item',52,0,'Dartmouth College'),(132,53,'Item',43,0,'0049'),(133,53,'Item',50,0,'Matthew Bernstein'),(134,54,'Item',43,0,'0058'),(135,54,'Item',50,0,'Melinda Stone'),(136,55,'Item',43,0,'0030'),(137,55,'Item',50,0,'Mike Mashon'),(138,55,'Item',52,0,'Library of Congress'),(139,56,'Item',43,0,'0074'),(140,56,'Item',50,0,'Neil Lerner'),(141,56,'Item',52,0,'Davidson College'),(142,57,'Item',43,0,'0024'),(143,57,'Item',50,0,'Nico de Klerk'),(144,57,'Item',52,0,'Netherlands Filmmuseum'),(145,58,'Item',43,0,'0006'),(146,58,'Item',50,0,'Paolo Cherchi-Usai'),(147,58,'Item',52,0,'George Eastman House'),(148,59,'Item',43,0,'0057'),(149,59,'Item',50,0,'Patrick Loughney'),(150,59,'Item',52,0,'Library of Congress'),(151,60,'Item',43,0,'0038'),(152,60,'Item',50,0,'Péter Forgács'),(153,61,'Item',43,0,'0075'),(154,61,'Item',50,0,'Ray Edmondson'),(155,61,'Item',52,0,'Archive Associates'),(156,62,'Item',43,0,'0013'),(157,62,'Item',50,0,'Raymond Fielding'),(158,63,'Item',43,0,'0008'),(159,63,'Item',50,0,'Rick Prelinger'),(160,63,'Item',52,0,'Prelinger Archives'),(161,63,'Item',53,0,'footage@panix.com'),(162,63,'Item',54,0,'http://www.prelinger.com/'),(163,64,'Item',43,0,'0016'),(164,64,'Item',50,0,'Robert Haller'),(165,64,'Item',52,0,'Anthology Film Archives'),(166,64,'Item',53,0,'robert@anthologyfilmarchives.org'),(167,64,'Item',54,0,'http://www.roberthaller.com/'),(168,65,'Item',43,0,'0002'),(169,65,'Item',50,0,'Robert Heiber '),(170,65,'Item',52,0,'Chace Productions'),(171,66,'Item',43,0,'0051'),(172,66,'Item',50,0,'Ron Mann'),(173,67,'Item',43,0,'0076'),(174,67,'Item',50,0,'Russ Suniewick'),(175,67,'Item',52,0,'Colorlab, Inc.'),(176,68,'Item',43,0,'0012'),(177,68,'Item',50,0,'Sarah Meyerson'),(178,69,'Item',43,0,'0077'),(179,69,'Item',50,0,'Scott Stark'),(180,69,'Item',52,0,'Flicker'),(181,69,'Item',54,0,'http://www.hi-beam.net/mkr/ss/ss-bio.html'),(182,70,'Item',43,0,'0078'),(183,70,'Item',50,0,'Shelley Stamp '),(184,70,'Item',52,0,'University of California, Santa Cruz'),(185,70,'Item',54,0,'http://artsites.ucsc.edu/faculty/stamp/Shelley_Stamp/Home.html'),(186,71,'Item',43,0,'0079'),(187,71,'Item',50,0,'Skip Elsheimer'),(188,71,'Item',52,0,'A/V Geeks'),(189,72,'Item',43,0,'0032'),(190,72,'Item',50,0,'Stephen Parr '),(191,72,'Item',52,0,'San Francisco Media Archive/Oddball Film & Video'),(192,73,'Item',43,0,'0029'),(193,73,'Item',50,0,'Steve Davidson'),(194,73,'Item',52,0,'Florida Moving Image Archive'),(195,74,'Item',43,0,'0007'),(196,74,'Item',50,0,'Steven Higgins'),(197,74,'Item',52,0,'Museum of Modern Art'),(198,75,'Item',43,0,'0005'),(199,75,'Item',50,0,'Suzanne Lee'),(200,76,'Item',43,0,'0003'),(201,76,'Item',50,0,'Tom Benjamin'),(202,76,'Item',52,0,'Iron Mountain Film and Sound Archives'),(203,77,'Item',43,0,'0031'),(204,77,'Item',50,0,'Tom Whiteside'),(205,77,'Item',52,0,'Duke University'),(206,78,'Item',43,0,'0080'),(207,78,'Item',50,0,'Vicki Bennett'),(208,79,'Item',43,0,'0081'),(209,79,'Item',50,0,'William O’Farrell'),(210,79,'Item',52,0,'Library and Archives Canada'),(211,80,'Item',43,0,'0014'),(212,80,'Item',50,0,'William T. Murphy'),(213,81,'Item',43,0,'0026'),(214,81,'Item',50,0,'Yuri Tsivian'),(215,2,'Collection',50,0,'Works');
/*!40000 ALTER TABLE `omeka_element_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_elements`
--

DROP TABLE IF EXISTS `omeka_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `element_set_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  KEY `element_set_id` (`element_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_elements`
--

LOCK TABLES `omeka_elements` WRITE;
/*!40000 ALTER TABLE `omeka_elements` DISABLE KEYS */;
INSERT INTO `omeka_elements` VALUES (1,3,NULL,'Text','Any textual data included in the document',NULL),(2,3,NULL,'Interviewer','The person(s) performing the interview',NULL),(3,3,NULL,'Interviewee','The person(s) being interviewed',NULL),(4,3,NULL,'Location','The location of the interview',NULL),(5,3,NULL,'Transcription','Any written text transcribed from a sound',NULL),(6,3,NULL,'Local URL','The URL of the local directory containing all assets of the website',NULL),(7,3,NULL,'Original Format','The type of object, such as painting, sculpture, paper, photo, and additional data',NULL),(10,3,NULL,'Physical Dimensions','The actual physical size of the original image',NULL),(11,3,NULL,'Duration','Length of time involved (seconds, minutes, hours, days, class periods, etc.)',NULL),(12,3,NULL,'Compression','Type/rate of compression for moving image file (i.e. MPEG-4)',NULL),(13,3,NULL,'Producer','Name (or names) of the person who produced the video',NULL),(14,3,NULL,'Director','Name (or names) of the person who produced the video',NULL),(15,3,NULL,'Bit Rate/Frequency','Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)',NULL),(16,3,NULL,'Time Summary','A summary of an interview given for different time stamps throughout the interview',NULL),(17,3,NULL,'Email Body','The main body of the email, including all replied and forwarded text and headers',NULL),(18,3,NULL,'Subject Line','The content of the subject line of the email',NULL),(19,3,NULL,'From','The name and email address of the person sending the email',NULL),(20,3,NULL,'To','The name(s) and email address(es) of the person to whom the email was sent',NULL),(21,3,NULL,'CC','The name(s) and email address(es) of the person to whom the email was carbon copied',NULL),(22,3,NULL,'BCC','The name(s) and email address(es) of the person to whom the email was blind carbon copied',NULL),(23,3,NULL,'Number of Attachments','The number of attachments to the email',NULL),(24,3,NULL,'Standards','',NULL),(25,3,NULL,'Objectives','',NULL),(26,3,NULL,'Materials','',NULL),(27,3,NULL,'Lesson Plan Text','',NULL),(28,3,NULL,'URL','',NULL),(29,3,NULL,'Event Type','',NULL),(30,3,NULL,'Participants','Names of individuals or groups participating in the event',NULL),(31,3,NULL,'Birth Date','',''),(32,3,NULL,'Birthplace','',''),(33,3,NULL,'Death Date','',''),(34,3,NULL,'Occupation','',''),(35,3,NULL,'Biographical Text','',''),(36,3,NULL,'Bibliography','',''),(37,1,8,'Contributor','An entity responsible for making contributions to the resource',NULL),(38,1,15,'Coverage','The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant',NULL),(39,1,4,'Creator','An entity primarily responsible for making the resource',NULL),(40,1,7,'Date','A point or period of time associated with an event in the lifecycle of the resource',NULL),(41,1,3,'Description','An account of the resource',NULL),(42,1,11,'Format','The file format, physical medium, or dimensions of the resource',NULL),(43,1,14,'Identifier','An unambiguous reference to the resource within a given context',NULL),(44,1,12,'Language','A language of the resource',NULL),(45,1,6,'Publisher','An entity responsible for making the resource available',NULL),(46,1,10,'Relation','A related resource',NULL),(47,1,9,'Rights','Information about rights held in and over the resource',NULL),(48,1,5,'Source','A related resource from which the described resource is derived',NULL),(49,1,2,'Subject','The topic of the resource',NULL),(50,1,1,'Title','A name given to the resource',NULL),(51,1,13,'Type','The nature or genre of the resource',NULL),(52,3,NULL,'Affiliation','',''),(53,3,NULL,'Email','',''),(54,3,NULL,'Website','',''),(55,4,1,'Date Created','The original date that the media item was created. In the case of raw interviews, the date on which the interview was conducted. Format: YYYY-MM-DD',''),(56,4,2,'Date Broadcast','The date on which the audio was originally broadcast. Format: YYYY-MM-DD',''),(57,4,3,'Identifier','Best practice is to identify the media item (whether analog or digital) by means of an unambiguous string or number corresponding to an established or formal identification system if one exists. We recommend using the item\'s Omeka URL. (e.g., http://myomeka.com/items/show/1) If you are using the Internet Archive Plugin, this field will be autofilled.',''),(58,4,4,'Title','The name given to the media item you are cataloging. It is the unique name everyone should use to refer to or search for a particular media item. There are situations in which no proper or given title is available, e.g., photographs or segments harvested from a longer work or program. In these situations a \"supplied title\" must be invented and used to name the media item. Be considerate of and sensitive to the end user who is attempting to search for your media item.',''),(59,4,5,'Episode Title','If applicable, the episode or piece to which a media item contributed.',''),(60,4,6,'Series Title','If applicable, the larger series to which the episode or piece contributed.',''),(61,4,7,'Description','Uses free-form text to report abstracts, or summaries about the intellectual content of a media item you are cataloging. The information may be in the form of a paragraph giving an individual program description or brief content reviews.',''),(62,4,8,'Creator','Identifies a person or organization primarily responsible for creating a media item. The creator may be considered an author and could be one or more people, a business, organization, group, project or service. (For personal names use \"LastName, FirstName MiddleName, Suffix\").',''),(63,4,9,'Interviewee','The person(s) being interviewed. (For personal names use \"LastName, FirstName MiddleName, Suffix\").',''),(64,4,10,'Interviewer','The person(s) conducting the interview. (For personal names use \"LastName, FirstName MiddleName, Suffix\").',''),(65,4,11,'Host','If applicable, the person hosting the broadcast piece. (For personal names use \"LastName, FirstName MiddleName, Suffix\").',''),(66,4,12,'Rights','Information about rights to the media item. Typically, rights information includes a statement about various property rights associated with the resource, including intellectual property rights.',''),(67,4,13,'Physical Format','The format of a particular version or rendition of a media item as it exists in an actual physical form that occupies physical space (e.g., a tape on a shelf), rather than as a digital file residing on a server or hard drive.',''),(68,4,14,'Digital Format','',''),(69,4,15,'Physical Location','An address for a physical media item. For an organization or producer acting as caretaker of a media resource, this field may contain information about a specific shelf location for an item, including an organization\'s name, departmental name, shelf ID and contact information.',''),(70,4,16,'Digital Location','An address for a digital media item. Employs an unambiguous reference or identifier for a digital rendition/instantiation of a media item and may include domain, path, filename or html page. This includes URIs for each digital file format created by the Internet Archive (will have multiple values).',''),(71,4,17,'Duration','Provides a timestamp for the overall length or duration of the audio. Represents the playback time. Format: HH:MM:SS',''),(72,4,18,'Music/Sound Used','Details on music or other sound clips that contributed to the piece. May include title, artist, album, timestamp, producer and record label information.',''),(73,4,19,'Date Peg','A holiday or other date relevant to the item (e.g., Christmas, Yom Kippur, Independence Day).',''),(74,4,20,'Notes','Any other notes or information about the media item, including bibliography/research information, contact information, and legacy metadata.',''),(75,4,21,'Transcription','The textual transcription of the media item.','');
/*!40000 ALTER TABLE `omeka_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_files`
--

DROP TABLE IF EXISTS `omeka_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `size` int(10) unsigned NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_files`
--

LOCK TABLES `omeka_files` WRITE;
/*!40000 ALTER TABLE `omeka_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `omeka_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_item_types`
--

DROP TABLE IF EXISTS `omeka_item_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_item_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_item_types`
--

LOCK TABLES `omeka_item_types` WRITE;
/*!40000 ALTER TABLE `omeka_item_types` DISABLE KEYS */;
INSERT INTO `omeka_item_types` VALUES (1,'Text','A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),(3,'Moving Image','A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),(4,'Oral History','A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),(5,'Sound','A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),(6,'Still Image','A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),(7,'Website','A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),(8,'Event','A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),(9,'Email','A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),(10,'Lesson Plan','A resource that gives a detailed description of a course of instruction.'),(11,'Hyperlink','A link, or reference, to another resource on the Internet.'),(12,'Person','An individual.'),(13,'Interactive Resource','A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),(14,'Dataset','Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),(15,'Physical Object','An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),(16,'Service','A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),(17,'Software','A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.');
/*!40000 ALTER TABLE `omeka_item_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_item_types_elements`
--

DROP TABLE IF EXISTS `omeka_item_types_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_item_types_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_type_id` int(10) unsigned NOT NULL,
  `element_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  KEY `item_type_id` (`item_type_id`),
  KEY `element_id` (`element_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_item_types_elements`
--

LOCK TABLES `omeka_item_types_elements` WRITE;
/*!40000 ALTER TABLE `omeka_item_types_elements` DISABLE KEYS */;
INSERT INTO `omeka_item_types_elements` VALUES (1,1,7,NULL),(2,1,1,NULL),(3,6,7,NULL),(6,6,10,NULL),(7,3,7,NULL),(8,3,11,NULL),(9,3,12,NULL),(10,3,13,NULL),(11,3,14,NULL),(12,3,5,NULL),(13,5,7,NULL),(14,5,11,NULL),(15,5,15,NULL),(16,5,5,NULL),(17,4,7,NULL),(18,4,11,NULL),(19,4,15,NULL),(20,4,5,NULL),(21,4,2,NULL),(22,4,3,NULL),(23,4,4,NULL),(24,4,16,NULL),(25,9,17,NULL),(26,9,18,NULL),(27,9,20,NULL),(28,9,19,NULL),(29,9,21,NULL),(30,9,22,NULL),(31,9,23,NULL),(32,10,24,NULL),(33,10,25,NULL),(34,10,26,NULL),(35,10,11,NULL),(36,10,27,NULL),(37,7,6,NULL),(38,11,28,NULL),(39,8,29,NULL),(40,8,30,NULL),(41,8,11,NULL),(42,12,31,1),(43,12,32,2),(44,12,33,3),(45,12,34,4),(46,12,35,5),(47,12,36,6),(48,12,52,9),(49,12,53,10),(50,12,54,11);
/*!40000 ALTER TABLE `omeka_item_types_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_items`
--

DROP TABLE IF EXISTS `omeka_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_type_id` int(10) unsigned DEFAULT NULL,
  `collection_id` int(10) unsigned DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_type_id` (`item_type_id`),
  KEY `collection_id` (`collection_id`),
  KEY `public` (`public`),
  KEY `featured` (`featured`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_items`
--

LOCK TABLES `omeka_items` WRITE;
/*!40000 ALTER TABLE `omeka_items` DISABLE KEYS */;
INSERT INTO `omeka_items` VALUES (1,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(2,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(3,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(4,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(5,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(6,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(7,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(8,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(9,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(10,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(11,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(12,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(13,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(14,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(15,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(16,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(17,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(18,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(19,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(20,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(21,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(22,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(23,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(24,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(25,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(26,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(27,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(28,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(29,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(30,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(31,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(32,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(33,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(34,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(35,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(36,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(37,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(38,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(39,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(40,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(41,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(42,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(43,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(44,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(45,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(46,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(47,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(48,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(49,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(50,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(51,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(52,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(53,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(54,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(55,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(56,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(57,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(58,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(59,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(60,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(61,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(62,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(63,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(64,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(65,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(66,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(67,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(68,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(69,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(70,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(71,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(72,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(73,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(74,12,NULL,0,0,'2016-01-08 20:32:21','2016-01-08 20:32:21',1),(75,12,NULL,0,0,'2016-01-08 20:32:22','2016-01-08 20:32:22',1),(76,12,NULL,0,0,'2016-01-08 20:32:22','2016-01-08 20:32:22',1),(77,12,NULL,0,0,'2016-01-08 20:32:22','2016-01-08 20:32:22',1),(78,12,NULL,0,0,'2016-01-08 20:32:22','2016-01-08 20:32:22',1),(79,12,NULL,0,0,'2016-01-08 20:32:22','2016-01-08 20:32:22',1),(80,12,NULL,0,0,'2016-01-08 20:32:22','2016-01-08 20:32:22',1),(81,12,NULL,0,0,'2016-01-08 20:32:22','2016-01-08 20:32:22',1);
/*!40000 ALTER TABLE `omeka_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_keys`
--

DROP TABLE IF EXISTS `omeka_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_keys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_keys`
--

LOCK TABLES `omeka_keys` WRITE;
/*!40000 ALTER TABLE `omeka_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `omeka_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_options`
--

DROP TABLE IF EXISTS `omeka_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_options`
--

LOCK TABLES `omeka_options` WRITE;
/*!40000 ALTER TABLE `omeka_options` DISABLE KEYS */;
INSERT INTO `omeka_options` VALUES (1,'omeka_version','2.3'),(2,'administrator_email','ehs@pobox.com'),(3,'copyright','CC-BY'),(4,'site_title','Orphan Film Symposium'),(5,'author',''),(6,'description','The Orphan Film Symposium embraces the broader definition of this new rubric in film preservation. \"Orphans\" (as the event is now affectionately known among its attendees) brings together scholars, artists, archivists, collectors, curators, conservators and enthusiasts who recognize the Orphic value of these neglected aspects of our culture.\r\n'),(7,'thumbnail_constraint','200'),(8,'square_thumbnail_constraint','200'),(9,'fullsize_constraint','800'),(10,'per_page_admin','10'),(11,'per_page_public','10'),(12,'show_empty_elements','0'),(13,'path_to_convert','/usr/bin'),(14,'admin_theme','default'),(15,'public_theme','default'),(16,'file_extension_whitelist','aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg, pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt, wav,wax,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),(17,'file_mime_type_whitelist','application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/x-ms-wmv,video/x-msvideo'),(18,'disable_default_file_validation',''),(20,'display_system_info','1'),(21,'html_purifier_is_enabled','1'),(22,'html_purifier_allowed_html_elements','p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),(23,'html_purifier_allowed_html_attributes','*.style,*.class,a.href,a.title,a.target'),(24,'tag_delimiter',','),(25,'public_navigation_main','[{\"can_delete\":false,\"uid\":\"\\/items\\/browse\",\"label\":\"Browse Items\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Mvc\",\"pages\":[],\"action\":\"browse\",\"controller\":\"items\",\"module\":null,\"params\":[],\"route\":\"default\",\"reset_params\":true,\"encodeUrl\":true,\"scheme\":null},{\"can_delete\":false,\"uid\":\"\\/collections\\/browse\",\"label\":\"Browse Collections\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Mvc\",\"pages\":[],\"action\":\"browse\",\"controller\":\"collections\",\"module\":null,\"params\":[],\"route\":\"default\",\"reset_params\":true,\"encodeUrl\":true,\"scheme\":null}]'),(26,'search_record_types','a:3:{s:4:\"Item\";s:4:\"Item\";s:4:\"File\";s:4:\"File\";s:10:\"Collection\";s:10:\"Collection\";}'),(27,'api_enable',''),(28,'api_per_page','50'),(29,'show_element_set_headings','1'),(31,'omeka_update','a:2:{s:14:\"latest_version\";s:5:\"2.3.1\";s:12:\"last_updated\";i:1452278519;}'),(32,'csv_import_memory_limit',''),(33,'csv_import_php_path',''),(46,'csv_import_column_delimiter',','),(47,'csv_import_element_delimiter',''),(48,'csv_import_tag_delimiter',','),(49,'csv_import_file_delimiter',','),(51,'pbcore_element_set_add_url_as_identifier','1');
/*!40000 ALTER TABLE `omeka_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_plugins`
--

DROP TABLE IF EXISTS `omeka_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `active_idx` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_plugins`
--

LOCK TABLES `omeka_plugins` WRITE;
/*!40000 ALTER TABLE `omeka_plugins` DISABLE KEYS */;
INSERT INTO `omeka_plugins` VALUES (1,'CsvImport',1,'2.0.3'),(2,'PBCoreElementSet',1,'2.1');
/*!40000 ALTER TABLE `omeka_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_processes`
--

DROP TABLE IF EXISTS `omeka_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_processes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') COLLATE utf8_unicode_ci NOT NULL,
  `args` text COLLATE utf8_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stopped` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `pid` (`pid`),
  KEY `started` (`started`),
  KEY `stopped` (`stopped`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_processes`
--

LOCK TABLES `omeka_processes` WRITE;
/*!40000 ALTER TABLE `omeka_processes` DISABLE KEYS */;
INSERT INTO `omeka_processes` VALUES (1,'Omeka_Job_Process_Wrapper',1,NULL,'completed','a:1:{s:3:\"job\";s:168:\"{\"className\":\"CsvImport_ImportTask\",\"options\":{\"importId\":1,\"memoryLimit\":null,\"batchSize\":null,\"method\":\"start\"},\"createdAt\":\"2016-01-08T20:32:20+00:00\",\"createdBy\":1}\";}','2016-01-08 20:32:20','2016-01-08 20:32:22');
/*!40000 ALTER TABLE `omeka_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_records_tags`
--

DROP TABLE IF EXISTS `omeka_records_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_records_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) unsigned NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_records_tags`
--

LOCK TABLES `omeka_records_tags` WRITE;
/*!40000 ALTER TABLE `omeka_records_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `omeka_records_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_schema_migrations`
--

DROP TABLE IF EXISTS `omeka_schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_schema_migrations`
--

LOCK TABLES `omeka_schema_migrations` WRITE;
/*!40000 ALTER TABLE `omeka_schema_migrations` DISABLE KEYS */;
INSERT INTO `omeka_schema_migrations` VALUES ('20100401000000'),('20100810120000'),('20110113000000'),('20110124000001'),('20110301103900'),('20110328192100'),('20110426181300'),('20110601112200'),('20110627223000'),('20110824110000'),('20120112100000'),('20120220000000'),('20120221000000'),('20120224000000'),('20120224000001'),('20120402000000'),('20120516000000'),('20120612112000'),('20120623095000'),('20120710000000'),('20120723000000'),('20120808000000'),('20120808000001'),('20120813000000'),('20120914000000'),('20121007000000'),('20121015000000'),('20121015000001'),('20121018000001'),('20121110000000'),('20121218000000'),('20130422000000'),('20130426000000'),('20130429000000'),('20130701000000'),('20130809000000'),('20140304131700'),('20150211000000'),('20150310141100');
/*!40000 ALTER TABLE `omeka_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_search_texts`
--

DROP TABLE IF EXISTS `omeka_search_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_search_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) unsigned NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_name` (`record_type`,`record_id`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_search_texts`
--

LOCK TABLES `omeka_search_texts` WRITE;
/*!40000 ALTER TABLE `omeka_search_texts` DISABLE KEYS */;
INSERT INTO `omeka_search_texts` VALUES (1,'Collection',1,1,'People','People '),(2,'Item',1,0,'Alan Berliner','0037 Alan Berliner http://www.alanberliner.com/ '),(3,'Item',2,0,'Alfred Leslie','0039 Alfred Leslie '),(4,'Item',3,0,'Andrea McCarty','0060 Andrea McCarty '),(5,'Item',4,0,'Arlene Balkansky','0061 Arlene Balkansky Library of Congress '),(6,'Item',5,0,'Barbara Selznick','0055 Barbara Selznick '),(7,'Item',6,0,'Benjamin Singleton','0010 Benjamin Singleton '),(8,'Item',7,0,'Bill Morrison','0036 Bill Morrison http://billmorrisonfilm.com/ '),(9,'Item',8,0,'Bjørn Sørenssen','0044 Bjørn Sørenssen '),(10,'Item',9,0,'Bob Heiber','0062 Bob Heiber Chace Productions '),(11,'Item',10,0,'Callie Angell','0018 Callie Angell '),(12,'Item',11,0,'Carolyn Faber','0035 Carolyn Faber WPA Film Library '),(13,'Item',12,0,'Charlene Regester','0021 Charlene Regester '),(14,'Item',13,0,'Charles Musser','0022 Charles Musser Yale University '),(15,'Item',14,0,'Charles Ramírez Berg','0043 Charles Ramírez Berg '),(16,'Item',15,0,'Christel Taillibert','0045 Christel Taillibert '),(17,'Item',16,0,'Dana F. White','0048 Dana F. White '),(18,'Item',17,0,'Daniel Goldmark','0063 Daniel Goldmark University of Alabama '),(19,'Item',18,0,'Donald Crafton','0020 Donald Crafton '),(20,'Item',19,0,'Dr. John Palms','0011 Dr. John Palms University of South Carolina '),(21,'Item',20,0,'Elaine Charnov ','0064 Elaine Charnov  Margaret Mead Film & Video Festival '),(22,'Item',21,0,'Eric Schaefer','0033 Eric Schaefer '),(23,'Item',22,0,'Frances Guerin','0065 Frances Guerin University of Kent '),(24,'Item',23,0,'Francis Poole','0015 Francis Poole '),(25,'Item',24,0,'Greg Pierce','0066 Greg Pierce Orgone Cinema and Archive '),(26,'Item',25,0,'Gregorio Rocha','0042 Gregorio Rocha '),(27,'Item',26,0,'Gregory A. Waller','0047 Gregory A. Waller '),(28,'Item',27,0,'Gregory Lukow','0027 Gregory Lukow Library of Congress '),(29,'Item',28,0,'Ivan Raykoff','0067 Ivan Raykoff Whitman College '),(30,'Item',29,0,'Ivo Sarría','0041 Ivo Sarría Cinemateca de Cuba / ICAIC '),(31,'Item',30,0,'Jacqueline Stewart','0023 Jacqueline Stewart '),(32,'Item',31,0,'Jan-Christopher Horak','0017 Jan-Christopher Horak Universal Studios '),(33,'Item',32,0,'Jeffrey Sconce','0052 Jeffrey Sconce '),(34,'Item',33,0,'Jennifer M. Bean','0025 Jennifer M. Bean '),(35,'Item',34,0,'Jesse Lerner','0068 Jesse Lerner Pitzer College '),(36,'Item',35,0,'Joachim Polzer','0069 Joachim Polzer Polzer Media Group GmbH '),(37,'Item',36,0,'Joe Lauro','0009 Joe Lauro '),(38,'Item',37,0,'Jon Gartenberg','0019 Jon Gartenberg '),(39,'Item',38,0,'Jonathan Rosenbaum','0040 Jonathan Rosenbaum '),(40,'Item',39,0,'Karen Glynn','0059 Karen Glynn '),(41,'Item',40,0,'Karen Lund','0001 Karen Lund National Digital Library '),(42,'Item',41,0,'Karen Shopsowitz','0070 Karen Shopsowitz National Film Board of Canada '),(43,'Item',42,0,'Kay Hoffmann','0071 Kay Hoffmann Documentary Film Center '),(44,'Item',43,0,'Ken Weissman','0004 Ken Weissman Library of Congress '),(45,'Item',44,0,'Kristy Andersen','0072 Kristy Andersen Bay Bottom News '),(46,'Item',45,0,'Larry Urbanski ','0053 Larry Urbanski  Moviecraft, Inc. '),(47,'Item',46,0,'Laura Kissel','0073 Laura Kissel University of South Carolina '),(48,'Item',47,0,'Linda Tadic','0028 Linda Tadic '),(49,'Item',48,0,'Lynn Spigel','0054 Lynn Spigel '),(50,'Item',49,0,'Mark J. Williams','0056 Mark J. Williams '),(51,'Item',50,0,'Mark Miller','0034 Mark Miller '),(52,'Item',51,0,'Martin Marks','0050 Martin Marks National Film Preservation Foundation '),(53,'Item',52,0,'Mary Desjardins','0046 Mary Desjardins Dartmouth College '),(54,'Item',53,0,'Matthew Bernstein','0049 Matthew Bernstein '),(55,'Item',54,0,'Melinda Stone','0058 Melinda Stone '),(56,'Item',55,0,'Mike Mashon','0030 Mike Mashon Library of Congress '),(57,'Item',56,0,'Neil Lerner','0074 Neil Lerner Davidson College '),(58,'Item',57,0,'Nico de Klerk','0024 Nico de Klerk Netherlands Filmmuseum '),(59,'Item',58,0,'Paolo Cherchi-Usai','0006 Paolo Cherchi-Usai George Eastman House '),(60,'Item',59,0,'Patrick Loughney','0057 Patrick Loughney Library of Congress '),(61,'Item',60,0,'Péter Forgács','0038 Péter Forgács '),(62,'Item',61,0,'Ray Edmondson','0075 Ray Edmondson Archive Associates '),(63,'Item',62,0,'Raymond Fielding','0013 Raymond Fielding '),(64,'Item',63,0,'Rick Prelinger','0008 Rick Prelinger Prelinger Archives footage@panix.com http://www.prelinger.com/ '),(65,'Item',64,0,'Robert Haller','0016 Robert Haller Anthology Film Archives robert@anthologyfilmarchives.org http://www.roberthaller.com/ '),(66,'Item',65,0,'Robert Heiber ','0002 Robert Heiber  Chace Productions '),(67,'Item',66,0,'Ron Mann','0051 Ron Mann '),(68,'Item',67,0,'Russ Suniewick','0076 Russ Suniewick Colorlab, Inc. '),(69,'Item',68,0,'Sarah Meyerson','0012 Sarah Meyerson '),(70,'Item',69,0,'Scott Stark','0077 Scott Stark Flicker http://www.hi-beam.net/mkr/ss/ss-bio.html '),(71,'Item',70,0,'Shelley Stamp ','0078 Shelley Stamp  University of California, Santa Cruz http://artsites.ucsc.edu/faculty/stamp/Shelley_Stamp/Home.html '),(72,'Item',71,0,'Skip Elsheimer','0079 Skip Elsheimer A/V Geeks '),(73,'Item',72,0,'Stephen Parr ','0032 Stephen Parr  San Francisco Media Archive/Oddball Film & Video '),(74,'Item',73,0,'Steve Davidson','0029 Steve Davidson Florida Moving Image Archive '),(75,'Item',74,0,'Steven Higgins','0007 Steven Higgins Museum of Modern Art '),(76,'Item',75,0,'Suzanne Lee','0005 Suzanne Lee '),(77,'Item',76,0,'Tom Benjamin','0003 Tom Benjamin Iron Mountain Film and Sound Archives '),(78,'Item',77,0,'Tom Whiteside','0031 Tom Whiteside Duke University '),(79,'Item',78,0,'Vicki Bennett','0080 Vicki Bennett '),(80,'Item',79,0,'William O’Farrell','0081 William O’Farrell Library and Archives Canada '),(81,'Item',80,0,'William T. Murphy','0014 William T. Murphy '),(82,'Item',81,0,'Yuri Tsivian','0026 Yuri Tsivian '),(83,'Collection',2,1,'Works','Works ');
/*!40000 ALTER TABLE `omeka_search_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_sessions`
--

DROP TABLE IF EXISTS `omeka_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` bigint(20) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_sessions`
--

LOCK TABLES `omeka_sessions` WRITE;
/*!40000 ALTER TABLE `omeka_sessions` DISABLE KEYS */;
INSERT INTO `omeka_sessions` VALUES ('8spnjmgdslbv1m1r86ng2c6re2',1452285142,1209600,''),('a0bgoqb841q2hlfn92pl5mfoi7',1450904564,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}'),('s6joqt125q1fhjt5p3hjcj5h65',1452288822,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"e5c0d2e3c93e8f2830616e9f96310344\";}__ZF|a:1:{s:14:\"FlashMessenger\";a:1:{s:4:\"ENNH\";i:1;}}');
/*!40000 ALTER TABLE `omeka_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_tags`
--

DROP TABLE IF EXISTS `omeka_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_tags`
--

LOCK TABLES `omeka_tags` WRITE;
/*!40000 ALTER TABLE `omeka_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `omeka_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_users`
--

DROP TABLE IF EXISTS `omeka_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `active_idx` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_users`
--

LOCK TABLES `omeka_users` WRITE;
/*!40000 ALTER TABLE `omeka_users` DISABLE KEYS */;
INSERT INTO `omeka_users` VALUES (1,'edsu','Super User','ehs@pobox.com','26929e995f3859a908e2499b8cc7bfdb63545429','b80a369df536ce21',1,'super');
/*!40000 ALTER TABLE `omeka_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omeka_users_activations`
--

DROP TABLE IF EXISTS `omeka_users_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omeka_users_activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omeka_users_activations`
--

LOCK TABLES `omeka_users_activations` WRITE;
/*!40000 ALTER TABLE `omeka_users_activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `omeka_users_activations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-08 21:58:12
