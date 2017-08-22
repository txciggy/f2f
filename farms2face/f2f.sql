-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: farms2face
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Customers');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (4,1,7),(5,1,8),(6,1,9),(10,1,22),(11,1,23),(12,1,24),(1,1,34),(2,1,35),(3,1,36),(7,1,46),(8,1,47),(9,1,48);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add base',7,'add_base'),(20,'Can change base',7,'change_base'),(21,'Can delete base',7,'delete_base'),(22,'Can add custom pack',8,'add_custompack'),(23,'Can change custom pack',8,'change_custompack'),(24,'Can delete custom pack',8,'delete_custompack'),(25,'Can add pre packs',9,'add_prepacks'),(26,'Can change pre packs',9,'change_prepacks'),(27,'Can delete pre packs',9,'delete_prepacks'),(28,'Can add recipe',10,'add_recipe'),(29,'Can change recipe',10,'change_recipe'),(30,'Can delete recipe',10,'delete_recipe'),(31,'Can add skin concern',11,'add_skinconcern'),(32,'Can change skin concern',11,'change_skinconcern'),(33,'Can delete skin concern',11,'delete_skinconcern'),(34,'Can add face pack',12,'add_facepack'),(35,'Can change face pack',12,'change_facepack'),(36,'Can delete face pack',12,'delete_facepack'),(37,'Can add skin type',13,'add_skintype'),(38,'Can change skin type',13,'change_skintype'),(39,'Can delete skin type',13,'delete_skintype'),(40,'Can add mixing agent',14,'add_mixingagent'),(41,'Can change mixing agent',14,'change_mixingagent'),(42,'Can delete mixing agent',14,'delete_mixingagent'),(43,'Can add ingredient',15,'add_ingredient'),(44,'Can change ingredient',15,'change_ingredient'),(45,'Can delete ingredient',15,'delete_ingredient'),(46,'Can add purchases',16,'add_purchases'),(47,'Can change purchases',16,'change_purchases'),(48,'Can delete purchases',16,'delete_purchases'),(49,'Can add pre pack',9,'add_prepack'),(50,'Can change pre pack',9,'change_prepack'),(51,'Can delete pre pack',9,'delete_prepack'),(52,'Can add option',17,'add_option'),(53,'Can change option',17,'change_option'),(54,'Can delete option',17,'delete_option'),(55,'Can add question',18,'add_question'),(56,'Can change question',18,'change_question'),(57,'Can delete question',18,'delete_question'),(58,'Can add questionnaire',19,'add_questionnaire'),(59,'Can change questionnaire',19,'change_questionnaire'),(60,'Can delete questionnaire',19,'delete_questionnaire'),(76,'Can add questionnaire entry',25,'add_questionnaireentry'),(77,'Can change questionnaire entry',25,'change_questionnaireentry'),(78,'Can delete questionnaire entry',25,'delete_questionnaireentry'),(79,'Can add questionnaire user data',26,'add_questionnaireuserdata'),(80,'Can change questionnaire user data',26,'change_questionnaireuserdata'),(81,'Can delete questionnaire user data',26,'delete_questionnaireuserdata'),(82,'Can add item',27,'add_item'),(83,'Can change item',27,'change_item'),(84,'Can delete item',27,'delete_item'),(85,'Can add recipe',28,'add_recipe'),(86,'Can change recipe',28,'change_recipe'),(87,'Can delete recipe',28,'delete_recipe'),(88,'Can add ingredient',29,'add_ingredient'),(89,'Can change ingredient',29,'change_ingredient'),(90,'Can delete ingredient',29,'delete_ingredient'),(91,'Can add base',30,'add_base'),(92,'Can change base',30,'change_base'),(93,'Can delete base',30,'delete_base'),(94,'Can add mixing agent',31,'add_mixingagent'),(95,'Can change mixing agent',31,'change_mixingagent'),(96,'Can delete mixing agent',31,'delete_mixingagent'),(97,'Can add payment',32,'add_payment'),(98,'Can change payment',32,'change_payment'),(99,'Can delete payment',32,'delete_payment'),(100,'Can add purchase history',33,'add_purchasehistory'),(101,'Can change purchase history',33,'change_purchasehistory'),(102,'Can delete purchase history',33,'delete_purchasehistory'),(103,'Can add face pack',34,'add_facepack'),(104,'Can change face pack',34,'change_facepack'),(105,'Can delete face pack',34,'delete_facepack'),(106,'Can add pre pack',35,'add_prepack'),(107,'Can change pre pack',35,'change_prepack'),(108,'Can delete pre pack',35,'delete_prepack'),(109,'Can add custom face pack',36,'add_customfacepack'),(110,'Can change custom face pack',36,'change_customfacepack'),(111,'Can delete custom face pack',36,'delete_customfacepack'),(112,'Can add item',37,'add_item'),(113,'Can change item',37,'change_item'),(114,'Can delete item',37,'delete_item'),(115,'Can add recipe',38,'add_recipe'),(116,'Can change recipe',38,'change_recipe'),(117,'Can delete recipe',38,'delete_recipe'),(124,'Can add ingredient',41,'add_ingredient'),(125,'Can change ingredient',41,'change_ingredient'),(126,'Can delete ingredient',41,'delete_ingredient'),(127,'Can add base',42,'add_base'),(128,'Can change base',42,'change_base'),(129,'Can delete base',42,'delete_base'),(133,'Can add mixing agent',44,'add_mixingagent'),(134,'Can change mixing agent',44,'change_mixingagent'),(135,'Can delete mixing agent',44,'delete_mixingagent'),(136,'Can add payment',45,'add_payment'),(137,'Can change payment',45,'change_payment'),(138,'Can delete payment',45,'delete_payment'),(139,'Can add purchase history',46,'add_purchasehistory'),(140,'Can change purchase history',46,'change_purchasehistory'),(141,'Can delete purchase history',46,'delete_purchasehistory'),(145,'Can add question',48,'add_question'),(146,'Can change question',48,'change_question'),(147,'Can delete question',48,'delete_question'),(148,'Can add option',49,'add_option'),(149,'Can change option',49,'change_option'),(150,'Can delete option',49,'delete_option'),(151,'Can add skin concern',50,'add_skinconcern'),(152,'Can change skin concern',50,'change_skinconcern'),(153,'Can delete skin concern',50,'delete_skinconcern'),(154,'Can add skin type',51,'add_skintype'),(155,'Can change skin type',51,'change_skintype'),(156,'Can delete skin type',51,'delete_skintype'),(157,'Can add questionnaire',52,'add_questionnaire'),(158,'Can change questionnaire',52,'change_questionnaire'),(159,'Can delete questionnaire',52,'delete_questionnaire'),(163,'Can add cart',54,'add_cart'),(164,'Can change cart',54,'change_cart'),(165,'Can delete cart',54,'delete_cart'),(166,'Can add face pack',55,'add_facepack'),(167,'Can change face pack',55,'change_facepack'),(168,'Can delete face pack',55,'delete_facepack'),(169,'Can add pre pack',56,'add_prepack'),(170,'Can change pre pack',56,'change_prepack'),(171,'Can delete pre pack',56,'delete_prepack'),(172,'Can add custom face pack',57,'add_customfacepack'),(173,'Can change custom face pack',57,'change_customfacepack'),(174,'Can delete custom face pack',57,'delete_customfacepack'),(175,'Can add questionnaire entry',58,'add_questionnaireentry'),(176,'Can change questionnaire entry',58,'change_questionnaireentry'),(177,'Can delete questionnaire entry',58,'delete_questionnaireentry'),(178,'Can add questionnaire user data',59,'add_questionnaireuserdata'),(179,'Can change questionnaire user data',59,'change_questionnaireuserdata'),(180,'Can delete questionnaire user data',59,'delete_questionnaireuserdata'),(181,'Can add shipping',60,'add_shipping'),(182,'Can change shipping',60,'change_shipping'),(183,'Can delete shipping',60,'delete_shipping'),(196,'Can add nonce',61,'add_nonce'),(197,'Can change nonce',61,'change_nonce'),(198,'Can delete nonce',61,'delete_nonce'),(199,'Can add code',62,'add_code'),(200,'Can change code',62,'change_code'),(201,'Can delete code',62,'delete_code'),(202,'Can add user social auth',63,'add_usersocialauth'),(203,'Can change user social auth',63,'change_usersocialauth'),(204,'Can delete user social auth',63,'delete_usersocialauth'),(205,'Can add association',65,'add_association'),(206,'Can change association',65,'change_association'),(207,'Can delete association',65,'delete_association'),(208,'Can add skin type ingredient',66,'add_skintypeingredient'),(209,'Can change skin type ingredient',66,'change_skintypeingredient'),(210,'Can delete skin type ingredient',66,'delete_skintypeingredient'),(211,'Can add profile',67,'add_profile'),(212,'Can change profile',67,'change_profile'),(213,'Can delete profile',67,'delete_profile'),(214,'Can add payment type',68,'add_paymenttype'),(215,'Can change payment type',68,'change_paymenttype'),(216,'Can delete payment type',68,'delete_paymenttype'),(217,'Can add credit card',69,'add_creditcard'),(218,'Can change credit card',69,'change_creditcard'),(219,'Can delete credit card',69,'delete_creditcard'),(220,'Can add pay pal',70,'add_paypal'),(221,'Can change pay pal',70,'change_paypal'),(222,'Can delete pay pal',70,'delete_paypal'),(223,'Can add shipping adrress',71,'add_shippingadrress'),(224,'Can change shipping adrress',71,'change_shippingadrress'),(225,'Can delete shipping adrress',71,'delete_shippingadrress'),(226,'Can add shipping address',71,'add_shippingaddress'),(227,'Can change shipping address',71,'change_shippingaddress'),(228,'Can delete shipping address',71,'delete_shippingaddress'),(229,'Can add stripe',72,'add_stripe'),(230,'Can change stripe',72,'change_stripe'),(231,'Can delete stripe',72,'delete_stripe'),(232,'Can add skin type concern ingredient',73,'add_skintypeconcerningredient'),(233,'Can change skin type concern ingredient',73,'change_skintypeconcerningredient'),(234,'Can delete skin type concern ingredient',73,'delete_skintypeconcerningredient'),(235,'Can add story',74,'add_story'),(236,'Can change story',74,'change_story'),(237,'Can delete story',74,'delete_story'),(238,'Can add pre pack ingredients',75,'add_prepackingredients'),(239,'Can change pre pack ingredients',75,'change_prepackingredients'),(240,'Can delete pre pack ingredients',75,'delete_prepackingredients'),(241,'Can add review',76,'add_review'),(242,'Can change review',76,'change_review'),(243,'Can delete review',76,'delete_review'),(244,'Can add review image',77,'add_reviewimage'),(245,'Can change review image',77,'change_reviewimage'),(246,'Can delete review image',77,'delete_reviewimage'),(247,'Can add forgot pass',78,'add_forgotpass'),(248,'Can change forgot pass',78,'change_forgotpass'),(249,'Can delete forgot pass',78,'delete_forgotpass'),(250,'Can add faq',79,'add_faq'),(251,'Can change faq',79,'change_faq'),(252,'Can delete faq',79,'delete_faq'),(253,'Can add promo',80,'add_promo'),(254,'Can change promo',80,'change_promo'),(255,'Can delete promo',80,'delete_promo'),(256,'Can add contact',81,'add_contact'),(257,'Can change contact',81,'change_contact'),(258,'Can delete contact',81,'delete_contact'),(259,'Can add disclaimer',82,'add_disclaimer'),(260,'Can change disclaimer',82,'change_disclaimer'),(261,'Can delete disclaimer',82,'delete_disclaimer'),(262,'Can add privacy',83,'add_privacy'),(263,'Can change privacy',83,'change_privacy'),(264,'Can delete privacy',83,'delete_privacy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$ze8gv5rgDPQi$3WgNQwpkbP68KT17ndp0cDtRBkEuVo5Q9FBHWtISL48=','2017-08-19 16:50:06.243972',1,'root@localhost.com','root','','root@localhost.com',1,1,'2017-02-24 06:41:42.000000'),(2,'pbkdf2_sha256$36000$Va3GmFDJOD1d$+Yqsk3gaUO6wXF5yg2r5ar/GTObcQWoLNoNKhIFXSUc=','2017-08-22 02:22:23.779751',1,'rajiv.raja@gmail.com','Rajiv','Raja','rajiv.raja@gmail.com',1,1,'2017-02-24 07:36:20.000000'),(3,'pbkdf2_sha256$30000$EU9d5NIZhY9a$wyyjpaVhzQfk0RuTZPWcgSA1+9Gm1RTPP1bMtX0uz2Q=','2017-04-09 01:28:19.000000',1,'sudhabhat26@gmail.com','Sudha','Bhat','sudhabhat26@gmail.com',1,1,'2017-02-24 07:36:43.000000'),(4,'pbkdf2_sha256$30000$YAOWKrNYVWdU$My6Xb2iVYxllVPJi/VY1IKnO2WRVh6eHhxt8WAygZs8=',NULL,1,'rupabhat@gmail.com','Rupa','Bhat','rupabhat@gmail.com',1,1,'2017-02-24 07:37:10.000000'),(6,'pbkdf2_sha256$30000$ky8H8tnyOOCa$st5Ww5jjtrCBhHpwJCuu90rcx4mdu5BNqZGI7PwGBhM=','2017-07-20 23:53:40.186754',0,'mridulakulkarni@gmail.com','Mridula','Kulkarni','mridulakulkarni@gmail.com',0,1,'2017-02-26 02:48:58.000000'),(192,'','2017-04-07 04:40:50.482957',0,'anon_mm69rleu22ep7r95pfsl876m0y0ctrlj','','','',0,1,'2017-04-07 04:40:50.475561'),(193,'','2017-04-07 16:31:04.149108',0,'anon_uiqzh5ymel508vzd582iea9le6kbfaj4','','','',0,1,'2017-04-07 16:31:04.090500'),(194,'','2017-04-07 16:36:36.271670',0,'anon_z0seymxydlstmos7suprh8zd4yoy9fe2','','','',0,1,'2017-04-07 16:36:36.261370'),(201,'','2017-04-08 05:09:50.972610',0,'anon_2hyu7lqblnf4336iux8s9f9n53xt2ils','','','',0,1,'2017-04-08 05:09:50.965967'),(204,'','2017-04-18 06:00:57.690598',0,'anon_lr8g6t7tva4ral5hqf4hcpw5pvui2drw','','','',0,1,'2017-04-18 06:00:57.661107'),(205,'','2017-04-18 06:02:35.514262',0,'anon_j4e5ybx1kulatvgox9d7xlzs1em7oeac','','','',0,1,'2017-04-18 06:02:35.498210'),(206,'','2017-04-18 06:04:24.562276',0,'anon_9yt93n7m8plduagskwyjbujya8htxva6','','','',0,1,'2017-04-18 06:04:24.555869'),(207,'','2017-04-18 06:07:54.416318',0,'anon_iirlw2tl9ymc1uh6416dzo822sxxqxss','','','',0,1,'2017-04-18 06:07:54.407705'),(213,'pbkdf2_sha256$30000$b93NA8LMyDLH$CG479jYKw1vH7j74R5/sBVCI/SpXiCLQ7WGTO+3AMhI=','2017-04-18 08:52:27.952405',0,'new@new.com','New User','Me','new@new.com',0,1,'2017-04-18 08:31:27.322966'),(221,'','2017-04-19 03:15:40.516862',0,'anon_2qbscemj2ln3mza4nahxzahl2l6q155i','','','',0,1,'2017-04-19 03:15:40.504600'),(224,'','2017-04-19 04:11:30.141408',0,'anon_6juehor5jivk7kkkmzul0jjpxvmsxnro','','','',0,1,'2017-04-19 04:11:30.128612'),(226,'','2017-04-26 03:55:47.813315',0,'anon_com4gsi6mpqi20dquplur7e9bwffmi1v','','','',0,1,'2017-04-26 03:55:47.803519'),(232,'','2017-04-27 23:20:55.927062',0,'anon_vqwwgyyjqev6qgvmpwy5b4q5fqr1qenv','','','',0,1,'2017-04-27 23:20:55.919948'),(233,'','2017-04-27 23:21:38.204494',0,'anon_mhb0l9fx4apzehwyndxb9p4c47y8g6sl','','','',0,1,'2017-04-27 23:21:38.199363'),(235,'','2017-04-27 23:35:09.622556',0,'anon_vvmye9kmis6m76l4a9n20c372xlrcpw9','','','',0,1,'2017-04-27 23:35:09.615952'),(236,'','2017-04-27 23:35:27.344141',0,'anon_lqdrgsiidie6jicpx1vewmdkzqs1xjr3','','','',0,1,'2017-04-27 23:35:27.338331'),(240,'','2017-04-28 07:55:49.197502',0,'anon_eibpm6wijm1bej3k6ihurdqmvr36hh6c','','','',0,1,'2017-04-28 07:55:49.184220'),(243,'','2017-04-28 17:23:44.718454',0,'anon_o5zyb7blx43tv575yt7mlhyybpved5hs','','','',0,1,'2017-04-28 17:23:44.708502'),(250,'','2017-04-28 17:47:17.311600',0,'anon_la7e36t5adl1ihpai4ghlkbz0tubjx4j','','','',0,1,'2017-04-28 17:47:17.301621'),(259,'','2017-04-28 18:36:09.944687',0,'anon_ztx1350fxwu9dinlng50bfhuv6140jtq','','','',0,1,'2017-04-28 18:36:09.934112'),(260,'','2017-04-28 18:36:37.762089',0,'anon_4iu3y3hz8f7srhlki6lnai0buf1669zk','','','',0,1,'2017-04-28 18:36:37.751816'),(261,'','2017-04-28 18:37:42.408593',0,'anon_uizguhu6mjjumnam74f59ufbs07qc4pc','','','',0,1,'2017-04-28 18:37:42.402498'),(267,'','2017-05-01 22:30:01.691152',0,'anon_kkc3l3ev56jsq4cjnpci92dz91pyq257','','','',0,1,'2017-05-01 22:30:01.678483'),(268,'','2017-05-04 03:22:52.624212',0,'anon_8vus16mccblllah6vkdeexo9t541044a','','','',0,1,'2017-05-04 03:22:52.591155'),(269,'','2017-05-04 03:24:25.256025',0,'anon_8d88kuv7orpnlkrz1nsmq87rrx9cjkai','','','',0,1,'2017-05-04 03:24:25.248610'),(270,'','2017-05-04 03:29:10.768486',0,'anon_koo4dyaq8ghr9fdbmkiju1gm7823e92d','','','',0,1,'2017-05-04 03:29:10.759313'),(271,'','2017-05-04 03:31:07.273644',0,'anon_rl3zt9vovi19n4kgagl5t736m4lf99lb','','','',0,1,'2017-05-04 03:31:07.260778'),(272,'','2017-05-04 03:34:22.601508',0,'anon_zxprzqgp0m9yv4a6dgcem7haf1mo70uh','','','',0,1,'2017-05-04 03:34:22.590462'),(273,'','2017-05-04 03:59:17.531109',0,'anon_9is6rq6087wrseyryif3twgw7dcz7f2x','','','',0,1,'2017-05-04 03:59:17.522884'),(274,'','2017-05-04 03:59:37.393776',0,'anon_fhb9oat22om032zr0ilmp42doo0gr5dr','','','',0,1,'2017-05-04 03:59:37.383819'),(275,'','2017-05-04 03:59:46.365678',0,'anon_xn3wz776n8guh6rapwtiu2novcx8u4o2','','','',0,1,'2017-05-04 03:59:46.338328'),(276,'','2017-05-04 04:00:39.042500',0,'anon_me1rjacke0h0yw4y15o3kbg6kxe3gf1d','','','',0,1,'2017-05-04 04:00:39.031937'),(277,'','2017-05-04 04:00:51.802594',0,'anon_qqbt0xmp9xrzz0raqs6pcmi9n55jxm1q','','','',0,1,'2017-05-04 04:00:51.793725'),(278,'','2017-05-04 06:05:48.359059',0,'anon_hromgaoo133qckecevla8x3uc8tsje66','','','',0,1,'2017-05-04 06:05:48.353294'),(279,'','2017-05-04 06:06:16.302089',0,'anon_esoluhzpsygt8ji616g98dfx6eelcgpz','','','',0,1,'2017-05-04 06:06:16.294914'),(280,'','2017-05-04 06:06:42.687183',0,'anon_ox651yphgt18qfzotfo2sof6kjvds3p1','','','',0,1,'2017-05-04 06:06:42.679913'),(281,'','2017-05-04 06:07:50.346225',0,'anon_oux85tz75r0i78nvtyz1y29dcvbst5fj','','','',0,1,'2017-05-04 06:07:50.340967'),(282,'','2017-05-04 06:11:14.436695',0,'anon_7a44sli7g17ohzf97pevx2z9b0rdrmet','','','',0,1,'2017-05-04 06:11:14.428849'),(283,'','2017-05-04 06:12:58.885132',0,'anon_sjaw2lcx5j57uftaluvk156wphqmq7l1','','','',0,1,'2017-05-04 06:12:58.878119'),(284,'','2017-05-04 06:13:19.333409',0,'anon_1b0p9gspr5l102tnpo9o4f7mevaj0ciq','','','',0,1,'2017-05-04 06:13:19.326629'),(289,'','2017-05-05 03:45:42.877767',0,'anon_gm6116cp7p6wdifrsut2vwxr0bp0f4fm','','','',0,1,'2017-05-05 03:45:42.864182'),(290,'','2017-05-05 03:45:58.573348',0,'anon_dmy1ntm3z8kxkdxfedjbgxy72r0gn2md','','','',0,1,'2017-05-05 03:45:58.566174'),(293,'','2017-05-05 05:54:24.918139',0,'anon_g791xuc4iakrvardtjegps6k4w3bzdrh','','','',0,1,'2017-05-05 05:54:24.909754'),(294,'','2017-05-05 05:54:34.735153',0,'anon_oai6ut9ug80aub4fwz0pkwg7xqzxiy2j','','','',0,1,'2017-05-05 05:54:34.727385'),(297,'','2017-05-15 08:35:45.086389',0,'anon_gz0vygywenyrk757ni9w7a2no43oscz0','','','',0,1,'2017-05-15 08:35:45.041167'),(298,'','2017-05-15 08:36:20.209506',0,'anon_l2z32mqjo6r0qwtjz39yb2rh1h09g4w1','','','',0,1,'2017-05-15 08:36:20.185337'),(299,'','2017-05-15 08:38:05.153229',0,'anon_4upcamduwdy87jpu47dt10arzmp239zp','','','',0,1,'2017-05-15 08:38:05.136445'),(303,'','2017-05-15 18:53:27.684304',0,'anon_j4bx0tjags5myjqhh1om1e1hcexmrg8a','','','',0,1,'2017-05-15 18:53:27.652356'),(307,'','2017-06-25 19:04:34.123849',0,'anon_2t6oipj7czriy1ubvo8r7zybbd62ydmc','','','',0,1,'2017-06-25 19:04:33.916184'),(308,'','2017-06-28 02:48:23.901548',0,'anon_wtyihe2w2b6c6cjh4snzhgmi4u0jes2o','','','',0,1,'2017-06-28 02:48:23.801455'),(309,'','2017-06-28 03:03:39.438775',0,'anon_65tk9off35v61n1mhs8bo2z58wlc1gwf','','','',0,1,'2017-06-28 03:03:39.359278'),(310,'','2017-06-28 03:04:16.541994',0,'anon_ij8rqnuis8bzcej5ojshfdtxzbek9qn5','','','',0,1,'2017-06-28 03:04:16.474739'),(311,'','2017-06-28 03:04:50.800621',0,'anon_6cvdw0d3mzqsiea8wv7o6xl2zhxqozfi','','','',0,1,'2017-06-28 03:04:50.775288'),(312,'pbkdf2_sha256$36000$IM0KQN8hchk4$WtJL+5iL8AWb4vUm4FxYagxXmC1nPOpzBXJfwtIsJeI=','2017-07-20 15:31:55.120635',0,'test@test.com','TestUser','One','test@test.com',0,1,'2017-07-20 15:31:55.035101'),(316,'','2017-07-20 16:59:26.778357',0,'anon_pp3x5q5kb34a78uuv69ru7vuk7drnh97','','','',0,1,'2017-07-20 16:59:26.773791'),(317,'pbkdf2_sha256$36000$twfO796g9Kox$EIE8wgPIEmrmU4WoswOe8vfqfmE85sPVRMLamHINpc8=','2017-07-20 17:49:43.625141',0,'test2@test.com','Test2','User','test2@test.com',0,1,'2017-07-20 17:49:43.480128'),(318,'','2017-07-20 23:27:40.111279',0,'anon_9r4r2i9nzj0wgwsqxr4ei8bb2sdzwsyy','','','',0,1,'2017-07-20 23:27:40.046365'),(321,'','2017-07-21 04:18:06.218532',0,'anon_elh25skp3cw3t3binpzl6cntbdtzj36e','','','',0,1,'2017-07-21 04:18:06.183046'),(322,'pbkdf2_sha256$30000$dA9eEISr4tay$n1LL0gQp1HAVOeuTs92+9puvfMUDe001ocbtBI817Gk=','2017-07-21 04:22:34.732342',0,'testing@gmail.com','','','testing@gmail.com',0,1,'2017-07-21 04:22:34.643768'),(323,'pbkdf2_sha256$30000$FYdLpHr1MJaw$6eFTNu0dy0q8KucY2b/CdvkrI6KcvOz5H6QTATSCRKY=','2017-07-21 04:43:03.074266',0,'test4@test.com','Jack','Rabbit','test4@test.com',0,1,'2017-07-21 04:43:02.947268'),(325,'','2017-07-21 15:08:50.216661',0,'anon_tglc268or7hp4m6q1gerkrva4eym94m2','','','',0,1,'2017-07-21 15:08:50.158756'),(326,'','2017-07-21 19:06:07.343630',0,'anon_ja66o4p27bk3czklfiqh7ojrqnkgy73z','','','',0,1,'2017-07-21 19:06:07.271635'),(327,'','2017-07-22 20:03:51.394910',0,'anon_axsdsszubgwuhv4ltne0egyzg2ijd3qv','','','',0,1,'2017-07-22 20:03:51.337489'),(328,'','2017-07-22 23:02:17.082070',0,'anon_iclo80x84eibo0le16riy23qm2uo90do','','','',0,1,'2017-07-22 23:02:17.011099'),(329,'','2017-07-23 04:47:45.908571',0,'anon_9d342iauyfj8tihu13w3qze9g3cfs41a','','','',0,1,'2017-07-23 04:47:45.863324'),(330,'pbkdf2_sha256$30000$MjFjaw7OTuNR$OahtGLrCmvKTLTUSMp+enI0MO6TcocIKMGQ+pbS9VF0=','2017-08-04 03:36:00.389370',0,'test@gmail.com','Rupa_test','1','test@gmail.com',0,1,'2017-07-23 04:48:28.310795'),(331,'','2017-07-24 00:52:45.493617',0,'anon_oitb9xei5v6hjcggrup2gxa1ookzpv9q','','','',0,1,'2017-07-24 00:52:45.443960'),(332,'','2017-07-24 02:28:26.763485',0,'anon_kljxjumm9nq7cunqq7c6regam7gr1u74','','','',0,1,'2017-07-24 02:28:26.742979'),(333,'','2017-07-27 00:16:58.865962',0,'anon_2vcdm5p78z5dt3g1qnh30i0438s31hei','','','',0,1,'2017-07-27 00:16:58.841281'),(334,'','2017-07-27 00:17:39.194592',0,'anon_zoraid8v0dkurxisiiud2okfm10xjfpb','','','',0,1,'2017-07-27 00:17:39.187329'),(335,'','2017-07-27 03:50:37.870755',0,'anon_ep5ddu7frq53xzhqpdtc14yyujujmmws','','','',0,1,'2017-07-27 03:50:37.864337'),(337,'','2017-07-27 16:46:02.721416',0,'anon_ees8bkdc1biy31hgzcnlrejf9609umge','','','',0,1,'2017-07-27 16:46:02.716373'),(338,'','2017-07-27 17:36:12.463324',0,'anon_5ykhlsu7srwhsmp7stcqdkwyxfed6e0q','','','',0,1,'2017-07-27 17:36:12.455919'),(340,'','2017-08-02 00:12:00.054734',0,'anon_g5qe12swzqj26v03y07b5q5ldevnp88w','','','',0,1,'2017-08-02 00:12:00.049131'),(341,'','2017-08-02 00:30:32.717561',0,'anon_7zrqoxzzhw8u48a7voa7xqjdgjvul4km','','','',0,1,'2017-08-02 00:30:32.711779'),(345,'','2017-08-06 20:26:47.264384',0,'anon_wv8fii07g0lwqazhbracqakz2rqt34p8','','','',0,1,'2017-08-06 20:26:47.076652'),(346,'','2017-08-06 23:24:37.000000',1,'rupabhat@yahoo.com','Rupashri','Bhat','rupabhat@yahoo.com',1,1,'2017-08-06 23:24:37.000000'),(347,'','2017-08-11 03:19:08.420953',0,'anon_jotb7tri9zxs55yyf7enjs4tyyv3qel9','','','',0,1,'2017-08-11 03:19:08.266777'),(348,'','2017-08-19 16:14:01.609728',0,'anon_dtcerwxunyfbu6b5kjribvlj27v9b378','','','',0,1,'2017-08-19 16:14:01.542919'),(349,'','2017-08-19 16:36:22.889895',0,'anon_b0jo99s2h4edmf85ebv5wh6fwyyowz7z','','','',0,1,'2017-08-19 16:36:22.807272'),(350,'pbkdf2_sha256$30000$JWm0GCWf5StU$o2NM4HuiAfhiCOJjVtEMlQhAXBgImnHSva3Ma+pchy4=','2017-08-19 16:39:00.397956',0,'testing8.19@gmail.com','Rupa','8.19','testing8.19@gmail.com',0,1,'2017-08-19 16:39:00.295006'),(351,'','2017-08-19 21:55:37.528778',0,'anon_orviy55axcrhmup6foex3e5peqb8l6z5','','','',0,1,'2017-08-19 21:55:37.524002');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (2,2,1),(3,3,1),(1,4,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `createdte` datetime(6) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `subtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cart_item_id_c66662e3_fk_home_item_id` (`item_id`),
  KEY `cart_cart_user_id_9b4220b9_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cart_cart_item_id_c66662e3_fk_home_item_id` FOREIGN KEY (`item_id`) REFERENCES `home_item` (`id`),
  CONSTRAINT `cart_cart_user_id_9b4220b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (442,4,'2017-05-05 05:54:37.311845',456,294,'subscribe',NULL),(456,1,'2017-05-15 18:53:27.702444',466,303,'buy',NULL),(457,1,'2017-05-15 18:53:40.949629',463,303,'buy',NULL),(474,1,'2017-06-25 19:05:20.330763',474,307,'buy',NULL),(487,1,'2017-07-20 18:15:08.435400',463,317,'buy',NULL),(489,1,'2017-07-20 18:15:18.484041',466,317,'buy',NULL),(491,8,'2017-07-21 04:19:16.320637',482,321,'subscribe',NULL),(495,1,'2017-07-23 04:47:45.926005',463,329,'buy',NULL),(497,1,'2017-07-24 00:54:10.081943',485,331,'buy',NULL),(509,1,'2017-08-02 00:13:45.830285',494,340,'subscribe',NULL),(512,1,'2017-08-02 00:33:17.822658',497,341,'subscribe','regular'),(531,1,'2017-08-06 20:27:08.276706',509,345,'buy',NULL),(532,2,'2017-08-11 03:29:17.696468',510,347,'buy',NULL),(533,1,'2017-08-19 16:37:14.691105',511,349,'buy',NULL),(545,1,'2017-08-22 00:22:51.080813',464,2,'buy',NULL);
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-02-24 06:56:15.721716','1','Oily',1,'[{\"added\": {}}]',13,1),(2,'2017-02-24 06:56:24.242117','2','Dry',1,'[{\"added\": {}}]',13,1),(3,'2017-02-24 06:56:29.044538','3','Normal',1,'[{\"added\": {}}]',13,1),(4,'2017-02-24 06:57:13.831395','1','French green clay (not for sensitive skin)_Oily',1,'[{\"added\": {}}]',7,1),(5,'2017-02-24 06:57:21.636577','2','Bentonite clay_Oily',1,'[{\"added\": {}}]',7,1),(6,'2017-02-24 06:57:28.646691','3','Fuller\'s earth_Oily',1,'[{\"added\": {}}]',7,1),(7,'2017-02-24 06:57:36.859890','4','Rassoul Clay_Normal',1,'[{\"added\": {}}]',7,1),(8,'2017-02-24 06:57:44.624658','5','White Kaolin clay_Dry',1,'[{\"added\": {}}]',7,1),(9,'2017-02-24 06:58:10.599719','1','Rose water_Oily',1,'[{\"added\": {}}]',14,1),(10,'2017-02-24 06:58:17.431159','2','Aloe vera gel_Normal',1,'[{\"added\": {}}]',14,1),(11,'2017-02-24 06:58:28.967643','3','Cucumber gel_Normal',1,'[{\"added\": {}}]',14,1),(12,'2017-02-24 06:58:42.149664','4','Honey_Dry',1,'[{\"added\": {}}]',14,1),(13,'2017-02-24 06:58:47.315442','5','Honey_Normal',1,'[{\"added\": {}}]',14,1),(14,'2017-02-24 06:59:51.096103','1','Clog Pore',1,'[{\"added\": {}}]',11,1),(15,'2017-02-24 06:59:56.802101','2','Mild Acne',1,'[{\"added\": {}}]',11,1),(16,'2017-02-24 07:00:05.709580','3','Consistent Acne',1,'[{\"added\": {}}]',11,1),(17,'2017-02-24 07:00:10.175337','4','Severe Acne',1,'[{\"added\": {}}]',11,1),(18,'2017-02-24 07:00:14.570156','5','Anti-Aging Wrinkles plus Age Prevention',1,'[{\"added\": {}}]',11,1),(19,'2017-02-24 07:00:18.885948','6','Redness',1,'[{\"added\": {}}]',11,1),(20,'2017-02-24 07:00:23.336914','7','Sun Damage',1,'[{\"added\": {}}]',11,1),(21,'2017-02-24 07:00:28.248252','8','Dehydrated',1,'[{\"added\": {}}]',11,1),(22,'2017-02-24 07:00:33.350273','9','Large Pores',1,'[{\"added\": {}}]',11,1),(23,'2017-02-24 07:00:38.648026','10','Tired and Dull',1,'[{\"added\": {}}]',11,1),(24,'2017-02-24 07:00:43.318918','11','Sensitive and Irritated by Harsh Products',1,'[{\"added\": {}}]',11,1),(25,'2017-02-24 07:00:47.492257','12','Brown spots / blemishes',1,'[{\"added\": {}}]',11,1),(26,'2017-02-24 07:18:30.629445','1','Oily Clog Pore',1,'[{\"added\": {}}]',10,1),(27,'2017-02-24 07:18:45.620080','2','Oily Mild Acne',1,'[{\"added\": {}}]',10,1),(28,'2017-02-24 07:18:59.430470','3','Oily Consistent Acne',1,'[{\"added\": {}}]',10,1),(29,'2017-02-24 07:19:14.823108','4','Oily Severe Acne',1,'[{\"added\": {}}]',10,1),(30,'2017-02-24 07:19:38.221061','5','Oily Anti-Aging Wrinkles plus Age Prevention',1,'[{\"added\": {}}]',10,1),(31,'2017-02-24 07:20:44.794653','34','Sandalwood',3,'',15,1),(32,'2017-02-24 07:20:55.036411','9','Blueberry',3,'',15,1),(33,'2017-02-24 07:22:57.281791','6','Oily__Redness__Matcha',1,'[{\"added\": {}}]',10,1),(34,'2017-02-24 07:23:15.608773','7','Oily__Sun Damage__Cucumber',1,'[{\"added\": {}}]',10,1),(35,'2017-02-24 07:23:31.489694','8','Oily__Dehydrated__Coconut Water',1,'[{\"added\": {}}]',10,1),(36,'2017-02-24 07:23:45.071710','9','Oily__Large Pores__Egg White',1,'[{\"added\": {}}]',10,1),(37,'2017-02-24 07:23:56.457744','10','Oily__Tired and Dull__Oats',1,'[{\"added\": {}}]',10,1),(38,'2017-02-24 07:24:09.516241','11','Oily__Sensitive and Irritated by Harsh Products__Mint',1,'[{\"added\": {}}]',10,1),(39,'2017-02-24 07:24:22.789335','12','Oily__Brown spots / blemishes__Sandalwood Powder',1,'[{\"added\": {}}]',10,1),(40,'2017-02-24 07:25:05.823946','13','Dry__Clog Pore__Oats',1,'[{\"added\": {}}]',10,1),(41,'2017-02-24 07:25:17.273190','14','Dry__Mild Acne__Besan',1,'[{\"added\": {}}]',10,1),(42,'2017-02-24 07:25:32.778651','15','Dry__Consistent Acne__Strawberry',1,'[{\"added\": {}}]',10,1),(43,'2017-02-24 07:25:49.682895','16','Dry__Severe Acne__Sandalwood Powder',1,'[{\"added\": {}}]',10,1),(44,'2017-02-24 07:26:01.275118','17','Dry__Anti-Aging Wrinkles plus Age Prevention__Avocado',1,'[{\"added\": {}}]',10,1),(45,'2017-02-24 07:26:12.184114','18','Dry__Redness__Chamomile',1,'[{\"added\": {}}]',10,1),(46,'2017-02-24 07:26:22.855446','19','Dry__Sun Damage__Banana',1,'[{\"added\": {}}]',10,1),(47,'2017-02-24 07:26:33.787176','20','Dry__Dehydrated__Goat Milk Powder',1,'[{\"added\": {}}]',10,1),(48,'2017-02-24 07:26:47.066319','21','Dry__Large Pores__Coffee',1,'[{\"added\": {}}]',10,1),(49,'2017-02-24 07:26:57.127631','22','Dry__Tired and Dull__Papaya',1,'[{\"added\": {}}]',10,1),(50,'2017-02-24 07:27:11.903847','23','Dry__Sensitive and Irritated by Harsh Products__Nutmeg',1,'[{\"added\": {}}]',10,1),(51,'2017-02-24 07:27:24.417160','24','Dry__Brown spots / blemishes__Besan',1,'[{\"added\": {}}]',10,1),(52,'2017-02-24 07:27:35.448419','25','Normal__Clog Pore__Cacao',1,'[{\"added\": {}}]',10,1),(53,'2017-02-24 07:27:47.575957','26','Normal__Mild Acne__Blueberries',1,'[{\"added\": {}}]',10,1),(54,'2017-02-24 07:27:58.784278','27','Normal__Consistent Acne__Flax Seeds',1,'[{\"added\": {}}]',10,1),(55,'2017-02-24 07:28:10.360892','28','Normal__Severe Acne__Mangosteen',1,'[{\"added\": {}}]',10,1),(56,'2017-02-24 07:28:23.282374','29','Normal__Anti-Aging Wrinkles plus Age Prevention__Coffee',1,'[{\"added\": {}}]',10,1),(57,'2017-02-24 07:28:36.105166','30','Normal__Redness__Cucumber',1,'[{\"added\": {}}]',10,1),(58,'2017-02-24 07:28:46.113859','31','Normal__Sun Damage__Aloe Powder',1,'[{\"added\": {}}]',10,1),(59,'2017-02-24 07:29:04.959437','32','Normal__Dehydrated__Coconut Water',1,'[{\"added\": {}}]',10,1),(60,'2017-02-24 07:29:20.904775','33','Normal__Large Pores__Egg White',1,'[{\"added\": {}}]',10,1),(61,'2017-02-24 07:29:32.851144','34','Normal__Tired and Dull__Pomegranate',1,'[{\"added\": {}}]',10,1),(62,'2017-02-24 07:29:44.556166','35','Normal__Sensitive and Irritated by Harsh Products__Mint',1,'[{\"added\": {}}]',10,1),(63,'2017-02-24 07:29:56.156055','36','Normal__Brown spots / blemishes__Nutmeg',1,'[{\"added\": {}}]',10,1),(64,'2017-02-24 07:30:33.157654','12','Brown spots or blemishes',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(65,'2017-02-24 07:34:43.537434','1','Customers',1,'[{\"added\": {}}]',4,1),(66,'2017-02-24 07:34:51.177270','1','Customers',2,'[]',4,1),(67,'2017-02-24 07:36:20.164921','2','RajivRaja',1,'[{\"added\": {}}]',3,1),(68,'2017-02-24 07:36:43.626845','3','Sudha',1,'[{\"added\": {}}]',3,1),(69,'2017-02-24 07:37:10.769395','4','Rupa',1,'[{\"added\": {}}]',3,1),(70,'2017-02-24 07:39:04.916245','4','RupaBhat',2,'[{\"changed\": {\"fields\": [\"username\", \"first_name\", \"last_name\", \"email\"]}}]',3,1),(71,'2017-02-24 07:39:30.537121','2','RajivRaja',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',3,1),(72,'2017-02-24 07:40:08.278705','3','SudhaBhat',2,'[{\"changed\": {\"fields\": [\"username\", \"first_name\", \"last_name\", \"email\"]}}]',3,1),(73,'2017-02-26 02:48:35.014074','5','',3,'',3,1),(74,'2017-02-26 02:49:18.708237','2','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(75,'2017-02-26 02:49:28.246503','4','rupabhat@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(76,'2017-02-26 02:49:39.418180','3','sudhabhat26@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(77,'2017-02-26 03:00:02.551991','6','mridula@gmail.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',3,1),(78,'2017-03-22 06:10:01.804288','1','<18',1,'[{\"added\": {}}]',17,1),(79,'2017-03-22 06:10:09.248039','2','18-29',1,'[{\"added\": {}}]',17,1),(80,'2017-03-22 06:10:15.067053','3','30-39',1,'[{\"added\": {}}]',17,1),(81,'2017-03-22 06:10:18.668367','4','40-49',1,'[{\"added\": {}}]',17,1),(82,'2017-03-22 06:10:29.219202','5','50-59',1,'[{\"added\": {}}]',17,1),(83,'2017-03-22 06:10:32.446444','6','60+',1,'[{\"added\": {}}]',17,1),(84,'2017-03-22 06:10:45.898721','7','Male',1,'[{\"added\": {}}]',17,1),(85,'2017-03-22 06:10:50.224197','8','Female',1,'[{\"added\": {}}]',17,1),(86,'2017-03-22 06:11:02.501110','9','Dry',1,'[{\"added\": {}}]',17,1),(87,'2017-03-22 06:11:06.091334','10','Humid',1,'[{\"added\": {}}]',17,1),(88,'2017-03-22 06:11:21.714642','11','Neither Dry nor Humid',1,'[{\"added\": {}}]',17,1),(89,'2017-03-22 06:11:27.328250','12','Tropical',1,'[{\"added\": {}}]',17,1),(90,'2017-03-22 06:11:35.246082','13','Never',1,'[{\"added\": {}}]',17,1),(91,'2017-03-22 06:11:38.271090','14','Rarely',1,'[{\"added\": {}}]',17,1),(92,'2017-03-22 06:11:41.846195','15','Sometimes',1,'[{\"added\": {}}]',17,1),(93,'2017-03-22 06:11:44.603011','16','Always',1,'[{\"added\": {}}]',17,1),(94,'2017-03-22 06:14:02.532335','17','Minimal',1,'[{\"added\": {}}]',17,1),(95,'2017-03-22 06:14:20.970839','18','Basic',1,'[{\"added\": {}}]',17,1),(96,'2017-03-22 06:14:43.827154','19','Moderate',1,'[{\"added\": {}}]',17,1),(97,'2017-03-22 06:15:19.584952','20','Advanced',1,'[{\"added\": {}}]',17,1),(98,'2017-03-22 06:15:34.090280','21','Not Applicabble',1,'[{\"added\": {}}]',17,1),(99,'2017-03-22 06:16:27.032335','21','Not Applicabble',3,'',17,1),(100,'2017-03-22 06:19:30.193750','22','Not Applicabble',1,'[{\"added\": {}}]',17,1),(101,'2017-03-22 06:24:43.839201','1','What\'s your age?',1,'[{\"added\": {}}]',18,1),(102,'2017-03-22 06:24:52.987660','2','What\'s your gender?',1,'[{\"added\": {}}]',18,1),(103,'2017-03-22 06:25:00.542070','3','What is your current environment?',1,'[{\"added\": {}}]',18,1),(104,'2017-03-22 06:25:08.446768','4','How often do you apply sunscreen?',1,'[{\"added\": {}}]',18,1),(105,'2017-03-22 06:25:24.853787','5','What best describes your morning skin routine?',1,'[{\"added\": {}}]',18,1),(106,'2017-03-22 06:25:33.375197','6','What best describes your evening skin routine?',1,'[{\"added\": {}}]',18,1),(107,'2017-03-22 06:25:40.639748','7','What is your Skin Type?',1,'[{\"added\": {}}]',18,1),(108,'2017-03-22 06:25:52.032002','8','Pick Your Top 3 Skin Concerns',1,'[{\"added\": {}}]',18,1),(109,'2017-03-22 06:54:02.401678','4','What\'s your age?',1,'[{\"added\": {}}]',19,1),(110,'2017-03-22 06:54:13.653922','5','What\'s your age?',1,'[{\"added\": {}}]',19,1),(111,'2017-03-22 06:54:22.531410','6','What\'s your age?',1,'[{\"added\": {}}]',19,1),(112,'2017-03-22 06:57:42.074401','6','What\'s your age? 30-39 None',2,'[]',19,1),(113,'2017-03-22 06:57:48.893853','7','What\'s your age? 40-49 None',1,'[{\"added\": {}}]',19,1),(114,'2017-03-22 06:57:53.325188','8','What\'s your age? 50-59 None',1,'[{\"added\": {}}]',19,1),(115,'2017-03-22 07:11:01.754791','9','What\'s your age? 60+ None',1,'[{\"added\": {}}]',19,1),(116,'2017-03-22 07:11:18.766210','10','What\'s your gender? Male None',1,'[{\"added\": {}}]',19,1),(117,'2017-03-22 07:11:23.533021','11','What\'s your gender? Female None',1,'[{\"added\": {}}]',19,1),(118,'2017-03-22 07:11:39.856164','12','What is your current environment? Dry None',1,'[{\"added\": {}}]',19,1),(119,'2017-03-22 07:11:44.956818','13','What is your current environment? Humid None',1,'[{\"added\": {}}]',19,1),(120,'2017-03-22 07:11:51.177961','14','What is your current environment? Neither Dry nor Humid None',1,'[{\"added\": {}}]',19,1),(121,'2017-03-22 07:11:56.824373','15','What is your current environment? Tropical None',1,'[{\"added\": {}}]',19,1),(122,'2017-03-22 07:12:07.258681','16','How often do you apply sunscreen? Never None',1,'[{\"added\": {}}]',19,1),(123,'2017-03-22 07:12:12.151568','17','How often do you apply sunscreen? Rarely None',1,'[{\"added\": {}}]',19,1),(124,'2017-03-22 07:12:16.675699','18','How often do you apply sunscreen? Sometimes None',1,'[{\"added\": {}}]',19,1),(125,'2017-03-22 07:12:22.062396','19','How often do you apply sunscreen? Always None',1,'[{\"added\": {}}]',19,1),(126,'2017-03-22 07:16:58.638852','20','What best describes your morning skin routine? Minimal',1,'[{\"added\": {}}]',19,1),(127,'2017-03-22 07:17:35.096068','21','What best describes your morning skin routine? Basic',1,'[{\"added\": {}}]',19,1),(128,'2017-03-22 07:17:42.638874','22','What best describes your morning skin routine? Moderate',1,'[{\"added\": {}}]',19,1),(129,'2017-03-22 07:17:47.283594','23','What best describes your morning skin routine? Advanced',1,'[{\"added\": {}}]',19,1),(130,'2017-03-22 07:17:53.232213','24','What best describes your morning skin routine? Not Applicabble',1,'[{\"added\": {}}]',19,1),(131,'2017-03-22 07:18:05.023901','25','What best describes your evening skin routine? Minimal',1,'[{\"added\": {}}]',19,1),(132,'2017-03-22 07:18:12.847021','26','What best describes your evening skin routine? Basic',1,'[{\"added\": {}}]',19,1),(133,'2017-03-22 07:18:17.160832','27','What best describes your evening skin routine? Moderate',1,'[{\"added\": {}}]',19,1),(134,'2017-03-22 07:18:21.612942','28','What best describes your evening skin routine? Advanced',1,'[{\"added\": {}}]',19,1),(135,'2017-03-22 07:18:26.012420','29','What best describes your evening skin routine? Not Applicabble',1,'[{\"added\": {}}]',19,1),(136,'2017-03-22 07:18:40.592505','22','Not Applicable',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(137,'2017-03-22 07:20:45.821884','2','Dry',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',13,1),(138,'2017-03-22 07:20:59.471497','3','Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',13,1),(139,'2017-03-22 07:21:22.167300','4','Oily T-zone and Dry otherwise',1,'[{\"added\": {}}]',13,1),(140,'2017-03-22 07:21:36.487403','5','Oily T-zone and Normal otherwise',1,'[{\"added\": {}}]',13,1),(141,'2017-03-22 07:22:43.335988','30','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(142,'2017-03-22 07:22:57.270877','31','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(143,'2017-03-22 07:23:01.938822','32','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(144,'2017-03-22 07:23:07.660747','33','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(145,'2017-03-22 07:23:15.495536','34','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(146,'2017-03-22 07:23:21.639797','35','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(147,'2017-03-22 07:24:25.961871','35','What is your Skin Type? Oily T-zone and Normal otherwise',3,'',19,1),(148,'2017-03-22 07:24:25.968919','34','What is your Skin Type? Oily T-zone and Dry otherwise',3,'',19,1),(149,'2017-03-22 07:24:31.046572','33','What is your Skin Type? Oily T-zone and Dry otherwise',2,'[]',19,1),(150,'2017-03-22 07:24:37.626787','36','What is your Skin Type? Oily T-zone and Normal otherwise',1,'[{\"added\": {}}]',19,1),(151,'2017-03-22 07:24:58.911633','37','Pick Your Top 3 Skin Concerns Clog Pore',1,'[{\"added\": {}}]',19,1),(152,'2017-03-22 07:25:03.795149','38','Pick Your Top 3 Skin Concerns Mild Acne',1,'[{\"added\": {}}]',19,1),(153,'2017-03-22 07:30:15.296421','38','Pick Your Top 3 Skin Concerns Mild Acne',2,'[]',19,1),(154,'2017-03-22 07:30:22.861505','39','Pick Your Top 3 Skin Concerns Consistent Acne',1,'[{\"added\": {}}]',19,1),(155,'2017-03-22 07:30:28.928011','40','Pick Your Top 3 Skin Concerns Severe Acne',1,'[{\"added\": {}}]',19,1),(156,'2017-03-22 07:30:34.303072','41','Pick Your Top 3 Skin Concerns Anti-Aging Wrinkles plus Age Prevention',1,'[{\"added\": {}}]',19,1),(157,'2017-03-22 07:30:38.365756','42','Pick Your Top 3 Skin Concerns Redness',1,'[{\"added\": {}}]',19,1),(158,'2017-03-22 07:30:43.414224','43','Pick Your Top 3 Skin Concerns Sun Damage',1,'[{\"added\": {}}]',19,1),(159,'2017-03-22 07:30:48.605792','44','Pick Your Top 3 Skin Concerns Sun Damage',1,'[{\"added\": {}}]',19,1),(160,'2017-03-22 07:30:53.636934','45','Pick Your Top 3 Skin Concerns Dehydrated',1,'[{\"added\": {}}]',19,1),(161,'2017-03-22 07:30:58.563081','46','Pick Your Top 3 Skin Concerns Large Pores',1,'[{\"added\": {}}]',19,1),(162,'2017-03-22 07:31:02.754287','47','Pick Your Top 3 Skin Concerns Tired and Dull',1,'[{\"added\": {}}]',19,1),(163,'2017-03-22 07:31:16.970495','44','Pick Your Top 3 Skin Concerns Sun Damage',3,'',19,1),(164,'2017-03-22 07:31:28.835962','47','Pick Your Top 3 Skin Concerns Tired and Dull',2,'[]',19,1),(165,'2017-03-22 07:31:34.437743','48','Pick Your Top 3 Skin Concerns Sensitive and Irritated by Harsh Products',1,'[{\"added\": {}}]',19,1),(166,'2017-03-22 07:31:39.460842','49','Pick Your Top 3 Skin Concerns Brown spots or blemishes',1,'[{\"added\": {}}]',19,1),(167,'2017-03-22 07:33:52.106649','49','Pick Your Top 3 Skin Concerns Brown spots or blemishes',3,'',19,1),(168,'2017-03-22 07:33:52.113392','48','Pick Your Top 3 Skin Concerns Sensitive and Irritated by Harsh Products',3,'',19,1),(169,'2017-03-22 07:33:52.115079','47','Pick Your Top 3 Skin Concerns Tired and Dull',3,'',19,1),(170,'2017-03-22 07:33:52.116346','46','Pick Your Top 3 Skin Concerns Large Pores',3,'',19,1),(171,'2017-03-22 07:33:52.117811','45','Pick Your Top 3 Skin Concerns Dehydrated',3,'',19,1),(172,'2017-03-22 07:33:52.119930','43','Pick Your Top 3 Skin Concerns Sun Damage',3,'',19,1),(173,'2017-03-22 07:33:52.121153','42','Pick Your Top 3 Skin Concerns Redness',3,'',19,1),(174,'2017-03-22 07:33:52.122205','41','Pick Your Top 3 Skin Concerns Anti-Aging Wrinkles plus Age Prevention',3,'',19,1),(175,'2017-03-22 07:33:52.123240','40','Pick Your Top 3 Skin Concerns Severe Acne',3,'',19,1),(176,'2017-03-22 07:33:52.124316','39','Pick Your Top 3 Skin Concerns Consistent Acne',3,'',19,1),(177,'2017-03-22 07:33:52.125380','38','Pick Your Top 3 Skin Concerns Mild Acne',3,'',19,1),(178,'2017-03-22 07:33:52.126469','37','Pick Your Top 3 Skin Concerns Clog Pore',3,'',19,1),(179,'2017-03-22 07:33:52.127554','36','What is your Skin Type? Oily T-zone and Normal otherwise',3,'',19,1),(180,'2017-03-22 07:33:52.128589','33','What is your Skin Type? Oily T-zone and Dry otherwise',3,'',19,1),(181,'2017-03-22 07:33:52.130426','32','What is your Skin Type? Normal',3,'',19,1),(182,'2017-03-22 07:33:52.131409','31','What is your Skin Type? Dry',3,'',19,1),(183,'2017-03-22 07:33:52.132401','30','What is your Skin Type? Oily',3,'',19,1),(184,'2017-03-22 07:46:19.414214','5','What\'s your age?',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(185,'2017-03-22 07:46:24.358007','5','What\'s your age?',2,'[]',19,1),(186,'2017-03-22 07:46:25.712589','5','What\'s your age?',2,'[]',19,1),(187,'2017-03-22 07:47:02.186043','6','What\'s your age? 30-39',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(188,'2017-03-22 07:47:11.756321','7','What\'s your age? 30-39',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(189,'2017-03-22 07:47:18.603892','8','What\'s your age? 40-49',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(190,'2017-03-22 07:47:25.248293','9','What\'s your age? 50-59',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(191,'2017-03-22 07:47:35.268639','7','What\'s your age? 40-49',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(192,'2017-03-22 07:47:40.629179','8','What\'s your age? 50-59',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(193,'2017-03-22 07:47:45.965843','9','What\'s your age? 60+',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(194,'2017-03-22 07:47:54.121513','10','What\'s your gender? Male',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(195,'2017-03-22 07:48:00.272363','11','What\'s your gender? Female',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(196,'2017-03-22 07:48:11.405281','12','What is your current environment? Dry',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(197,'2017-03-22 07:48:17.799995','13','What is your current environment? Humid',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(198,'2017-03-22 07:48:27.215707','14','What is your current environment? Neither Dry nor Humid',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(199,'2017-03-22 07:48:34.118532','15','What is your current environment? Tropical',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(200,'2017-03-22 07:48:42.415165','16','How often do you apply sunscreen? Never',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(201,'2017-03-22 07:48:48.236544','17','How often do you apply sunscreen? Rarely',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(202,'2017-03-22 07:48:53.610468','18','How often do you apply sunscreen? Sometimes',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(203,'2017-03-22 07:48:59.989408','19','How often do you apply sunscreen? Always',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(204,'2017-03-22 07:49:08.457056','20','What best describes your morning skin routine? Minimal',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(205,'2017-03-22 07:49:12.494459','21','What best describes your morning skin routine? Basic',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(206,'2017-03-22 07:49:17.418373','22','What best describes your morning skin routine? Moderate',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(207,'2017-03-22 07:49:23.291739','23','What best describes your morning skin routine? Advanced',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(208,'2017-03-22 07:49:28.307563','24','What best describes your morning skin routine? Not Applicable',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(209,'2017-03-22 07:49:33.283003','25','What best describes your evening skin routine? Minimal',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(210,'2017-03-22 07:49:40.034696','26','What best describes your evening skin routine? Basic',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(211,'2017-03-22 07:49:45.689678','27','What best describes your evening skin routine? Moderate',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(212,'2017-03-22 07:49:51.064790','28','What best describes your evening skin routine? Advanced',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(213,'2017-03-22 07:49:55.456994','29','What best describes your evening skin routine? Not Applicable',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(214,'2017-03-23 07:51:05.708840','5','Anti-Aging',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(215,'2017-03-23 07:51:18.944699','11','Sensitive Skin',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(216,'2017-03-23 07:57:14.488788','1','<<18',2,'[{\"changed\": {\"fields\": [\"name\", \"helper\"]}}]',17,1),(217,'2017-03-23 07:58:00.655579','1','<<18',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',17,1),(218,'2017-03-23 07:58:17.639302','1','< 18',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(219,'2017-03-23 07:58:34.780703','6','60 +',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(220,'2017-03-23 07:58:50.387580','2','18 - 29',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(221,'2017-03-23 07:58:56.511706','3','30 - 39',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(222,'2017-03-23 07:59:02.781940','4','40 - 49',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(223,'2017-03-23 07:59:07.875499','5','50 - 59',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(224,'2017-03-23 07:59:31.741397','2','18-29',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(225,'2017-03-23 07:59:37.343149','3','30-39',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(226,'2017-03-23 07:59:45.317602','4','40-49',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(227,'2017-03-23 07:59:50.602238','5','50-59',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(228,'2017-03-23 08:01:22.398136','1','What\'s your age?',2,'[{\"changed\": {\"fields\": [\"why\"]}}]',18,1),(229,'2017-03-23 08:10:29.087598','1','What\'s your age?',2,'[{\"changed\": {\"fields\": [\"why\"]}}]',18,1),(230,'2017-03-23 19:05:25.021890','45','NewMe',1,'[{\"added\": {}}]',NULL,1),(231,'2017-03-23 19:05:46.594534','45','NewMe',3,'',17,1),(232,'2017-03-23 20:42:27.693827','32','What is your Skin Type? Oily',1,'[{\"added\": {}}]',19,1),(233,'2017-03-23 20:42:32.938818','33','What is your Skin Type? Dry',1,'[{\"added\": {}}]',19,1),(234,'2017-03-23 20:42:38.622705','34','What is your Skin Type? Normal',1,'[{\"added\": {}}]',19,1),(235,'2017-03-23 20:42:43.680269','35','What is your Skin Type? Oily T-zone and Dry otherwise',1,'[{\"added\": {}}]',19,1),(236,'2017-03-23 20:42:49.048629','36','What is your Skin Type? Oily T-zone and Normal otherwise',1,'[{\"added\": {}}]',19,1),(237,'2017-03-23 20:57:10.735993','27','Oily T-zone and Normal otherwise',3,'',13,1),(238,'2017-03-23 20:57:10.742744','26','Oily T-zone and Dry otherwise',3,'',13,1),(239,'2017-03-23 20:57:59.462137','33','Oily T-zone (forehead, nose & chin)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(240,'2017-03-23 23:29:02.842438','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(241,'2017-03-23 23:31:23.014402','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(242,'2017-03-23 23:31:37.731398','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(243,'2017-03-23 23:34:18.341067','5','Honey_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(244,'2017-03-23 23:34:26.543109','4','Honey_Dry',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(245,'2017-03-23 23:34:40.911752','41','Yogurt',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(246,'2017-03-23 23:36:21.929771','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(247,'2017-03-23 23:38:06.259915','3','Cucumber gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(248,'2017-03-23 23:38:22.194857','2','Aloe vera gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(249,'2017-03-23 23:38:29.946600','3','Cucumber gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(250,'2017-03-23 23:38:38.629278','2','Aloe vera gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(251,'2017-03-23 23:38:46.024901','1','Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(252,'2017-03-23 23:40:31.708474','5','White Kaolin clay_Dry',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(253,'2017-03-23 23:40:38.046642','4','Rassoul Clay_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(254,'2017-03-23 23:40:42.613905','3','Fuller\'s earth_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(255,'2017-03-23 23:40:47.575098','2','Bentonite clay_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(256,'2017-03-23 23:40:52.757653','1','French green clay (not for sensitive skin)_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(257,'2017-03-24 04:17:07.066330','5','White Kaolin clay_Dry',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(258,'2017-03-24 04:17:10.497332','4','Rassoul Clay_Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(259,'2017-03-24 04:17:14.489257','3','Fuller\'s earth_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(260,'2017-03-24 04:17:17.456947','2','Bentonite clay_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(261,'2017-03-24 04:17:20.745074','1','French green clay (not for sensitive skin)_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(262,'2017-03-24 04:17:30.699592','3','Cucumber gel_Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',14,1),(263,'2017-03-24 04:17:34.284515','2','Aloe vera gel_Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',14,1),(264,'2017-03-24 04:17:37.172627','1','Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',14,1),(265,'2017-03-24 05:30:23.075403','5','White Kaolin clay_Dry',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(266,'2017-03-24 05:30:35.830506','3','Fuller\'s earth_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(267,'2017-03-24 06:25:11.764230','1','French green clay (not for sensitive skin)_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(268,'2017-03-25 01:45:00.910957','6','6',1,'[{\"added\": {}}]',55,1),(269,'2017-03-25 23:36:46.087682','39','anon_mbqvp365l1p5ba79t4tzwsngasn3h5rc',3,'',3,1),(270,'2017-03-26 20:02:19.429326','1','1 1 business day',1,'[{\"added\": {}}]',60,1),(271,'2017-03-26 20:03:06.395546','2','2 2 business days',1,'[{\"added\": {}}]',60,1),(272,'2017-03-26 20:04:02.466538','3','3 3-5 business days',1,'[{\"added\": {}}]',60,1),(273,'2017-03-26 20:04:39.282283','4','4 7-10 business days',1,'[{\"added\": {}}]',60,1),(274,'2017-03-27 03:03:49.448896','1','root',2,'[{\"changed\": {\"fields\": [\"first_name\", \"email\"]}}]',3,1),(275,'2017-03-28 05:31:18.204952','2','rajiv.raja1@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(276,'2017-03-28 05:41:48.617055','2','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(277,'2017-03-28 05:53:48.632444','2','rajiv.raja@gmail1.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(278,'2017-03-28 05:54:40.197471','2','rajiv.raja1@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(279,'2017-03-28 07:13:43.207139','2','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(280,'2017-03-28 16:53:43.059008','1','Oily_Aloe Powder',1,'[{\"added\": {}}]',66,1),(281,'2017-03-28 16:53:59.163096','1','Oily_Baking Soda',2,'[{\"changed\": {\"fields\": [\"ingredient\"]}}]',66,1),(282,'2017-03-28 16:54:17.597459','2','Oily_Bergamot Peel Essential Oil',1,'[{\"added\": {}}]',66,1),(283,'2017-03-28 16:54:26.069814','3','Oily_Besan',1,'[{\"added\": {}}]',66,1),(284,'2017-03-28 16:54:47.320619','4','Oily_Blueberries',1,'[{\"added\": {}}]',66,1),(285,'2017-03-28 16:55:00.082548','5','Oily_Carrots',1,'[{\"added\": {}}]',66,1),(286,'2017-03-28 16:55:19.257384','6','Oily_Chamomile',1,'[{\"added\": {}}]',66,1),(287,'2017-03-28 16:55:26.158753','7','Oily_Coconut Water',1,'[{\"added\": {}}]',66,1),(288,'2017-03-28 16:55:32.175506','8','Oily_Coffee',1,'[{\"added\": {}}]',66,1),(289,'2017-03-28 16:55:39.660234','9','Oily_Cucumber',1,'[{\"added\": {}}]',66,1),(290,'2017-03-28 16:55:46.041566','10','Oily_Egg White',1,'[{\"added\": {}}]',66,1),(291,'2017-03-28 16:55:53.728469','11','Oily_Fenugreek',1,'[{\"added\": {}}]',66,1),(292,'2017-03-28 16:56:01.127425','12','Oily_Flax Seeds',1,'[{\"added\": {}}]',66,1),(293,'2017-03-28 16:56:07.223063','13','Oily_Lavender Oil',1,'[{\"added\": {}}]',66,1),(294,'2017-03-28 16:56:12.799160','14','Oily_Lemon Juice',1,'[{\"added\": {}}]',66,1),(295,'2017-03-28 16:56:18.651882','15','Oily_Mangosteen',1,'[{\"added\": {}}]',66,1),(296,'2017-03-28 16:56:24.164757','16','Oily_Matcha',1,'[{\"added\": {}}]',66,1),(297,'2017-03-28 16:56:29.350273','17','Oily_Mint',1,'[{\"added\": {}}]',66,1),(298,'2017-03-28 16:56:34.204751','18','Oily_Neem',1,'[{\"added\": {}}]',66,1),(299,'2017-03-28 16:56:43.709450','19','Oily_Nutmeg',1,'[{\"added\": {}}]',66,1),(300,'2017-03-28 16:56:52.348502','20','Oily_Oats',1,'[{\"added\": {}}]',66,1),(301,'2017-03-28 16:56:59.500375','21','Oily_Orange Peel',1,'[{\"added\": {}}]',66,1),(302,'2017-03-28 16:57:36.757187','22','Oily_Sandalwood Powder',1,'[{\"added\": {}}]',66,1),(303,'2017-03-28 16:57:42.325644','23','Oily_Strawberry',1,'[{\"added\": {}}]',66,1),(304,'2017-03-28 16:57:48.334546','24','Oily_Trifala',1,'[{\"added\": {}}]',66,1),(305,'2017-03-28 16:57:54.066014','25','Oily_Turmeric',1,'[{\"added\": {}}]',66,1),(306,'2017-03-28 16:58:03.332678','26','Oily_White Willow Tree Bark',1,'[{\"added\": {}}]',66,1),(307,'2017-03-28 17:07:15.228920','42','Orange Juice',1,'[{\"added\": {}}]',41,1),(308,'2017-03-28 17:07:33.623574','27','Oily_Orange Juice',1,'[{\"added\": {}}]',66,1),(309,'2017-03-28 17:08:28.648032','28','Dry_Almonds',1,'[{\"added\": {}}]',66,1),(310,'2017-03-28 17:08:33.265590','29','Dry_Aloe Powder',1,'[{\"added\": {}}]',66,1),(311,'2017-03-28 17:08:39.783178','30','Dry_Avocado',1,'[{\"added\": {}}]',66,1),(312,'2017-03-28 17:08:45.282766','31','Dry_Banana',1,'[{\"added\": {}}]',66,1),(313,'2017-03-28 17:09:01.578845','32','Dry_Besan',1,'[{\"added\": {}}]',66,1),(314,'2017-03-28 17:09:06.898698','33','Dry_Blueberries',1,'[{\"added\": {}}]',66,1),(315,'2017-03-28 17:09:12.866315','34','Dry_Chamomile',1,'[{\"added\": {}}]',66,1),(316,'2017-03-28 17:09:20.268267','35','Dry_Coconut Water',1,'[{\"added\": {}}]',66,1),(317,'2017-03-28 17:09:28.833815','36','Dry_Coffee',1,'[{\"added\": {}}]',66,1),(318,'2017-03-28 17:09:36.611026','37','Dry_Cucumber',1,'[{\"added\": {}}]',66,1),(319,'2017-03-28 17:09:42.254283','38','Dry_Egg White',1,'[{\"added\": {}}]',66,1),(320,'2017-03-28 17:09:50.795441','39','Dry_Egg Yolk',1,'[{\"added\": {}}]',66,1),(321,'2017-03-28 17:09:56.300731','40','Dry_Fenugreek',1,'[{\"added\": {}}]',66,1),(322,'2017-03-28 17:10:07.622022','41','Dry_Goat Milk Powder',1,'[{\"added\": {}}]',66,1),(323,'2017-03-28 17:10:14.096645','42','Dry_Matcha',1,'[{\"added\": {}}]',66,1),(324,'2017-03-28 17:10:19.672469','43','Dry_Mint',1,'[{\"added\": {}}]',66,1),(325,'2017-03-28 17:10:25.519173','44','Dry_Nutmeg',1,'[{\"added\": {}}]',66,1),(326,'2017-03-28 17:10:31.859252','45','Dry_Oats',1,'[{\"added\": {}}]',66,1),(327,'2017-03-28 17:10:37.575528','46','Dry_Orange Peel',1,'[{\"added\": {}}]',66,1),(328,'2017-03-28 17:10:43.772023','47','Dry_Papaya',1,'[{\"added\": {}}]',66,1),(329,'2017-03-28 17:10:51.179657','48','Dry_Pomegranate',1,'[{\"added\": {}}]',66,1),(330,'2017-03-28 17:10:57.302842','49','Dry_Sandalwood Powder',1,'[{\"added\": {}}]',66,1),(331,'2017-03-28 17:11:04.088518','50','Dry_Silk Peptide',1,'[{\"added\": {}}]',66,1),(332,'2017-03-28 17:11:10.478497','51','Dry_Strawberry',1,'[{\"added\": {}}]',66,1),(333,'2017-03-28 17:11:17.045465','52','Dry_Trifala',1,'[{\"added\": {}}]',66,1),(334,'2017-03-28 17:11:25.682354','53','Dry_White Willow Tree Bark',1,'[{\"added\": {}}]',66,1),(335,'2017-03-28 17:11:58.281276','54','Normal_Aloe Powder',1,'[{\"added\": {}}]',66,1),(336,'2017-03-28 17:12:03.355458','55','Normal_Avocado',1,'[{\"added\": {}}]',66,1),(337,'2017-03-28 17:12:10.127279','56','Normal_Banana',1,'[{\"added\": {}}]',66,1),(338,'2017-03-28 17:12:15.764320','57','Normal_Besan',1,'[{\"added\": {}}]',66,1),(339,'2017-03-28 17:12:21.775114','58','Normal_Blueberries',1,'[{\"added\": {}}]',66,1),(340,'2017-03-28 17:12:26.080043','59','Normal_Cacao',1,'[{\"added\": {}}]',66,1),(341,'2017-03-28 17:12:44.494543','60','Normal_Carrots',1,'[{\"added\": {}}]',66,1),(342,'2017-03-28 17:12:50.919761','61','Normal_Chamomile',1,'[{\"added\": {}}]',66,1),(343,'2017-03-28 17:12:57.429961','62','Normal_Coconut Milk',1,'[{\"added\": {}}]',66,1),(344,'2017-03-28 17:13:04.001508','63','Normal_Coconut Water',1,'[{\"added\": {}}]',66,1),(345,'2017-03-28 17:13:10.777328','64','Normal_Coffee',1,'[{\"added\": {}}]',66,1),(346,'2017-03-28 17:13:15.782177','65','Normal_Cucumber',1,'[{\"added\": {}}]',66,1),(347,'2017-03-28 17:13:20.526137','66','Normal_Egg White',1,'[{\"added\": {}}]',66,1),(348,'2017-03-28 17:13:25.718953','67','Normal_Fenugreek',1,'[{\"added\": {}}]',66,1),(349,'2017-03-28 17:13:31.439370','68','Normal_Flax Seeds',1,'[{\"added\": {}}]',66,1),(350,'2017-03-28 17:13:37.646440','69','Normal_Goat Milk Powder',1,'[{\"added\": {}}]',66,1),(351,'2017-03-28 17:13:42.531988','70','Normal_Lavender Oil',1,'[{\"added\": {}}]',66,1),(352,'2017-03-28 17:13:50.021572','71','Normal_Mangosteen',1,'[{\"added\": {}}]',66,1),(353,'2017-03-28 17:13:54.884952','72','Normal_Matcha',1,'[{\"added\": {}}]',66,1),(354,'2017-03-28 17:13:59.586194','73','Normal_Mint',1,'[{\"added\": {}}]',66,1),(355,'2017-03-28 17:14:04.668936','74','Normal_Nutmeg',1,'[{\"added\": {}}]',66,1),(356,'2017-03-28 17:14:10.351601','75','Normal_Oats',1,'[{\"added\": {}}]',66,1),(357,'2017-03-28 17:14:15.567535','76','Normal_Orange Peel',1,'[{\"added\": {}}]',66,1),(358,'2017-03-28 17:14:22.041341','77','Normal_Papaya',1,'[{\"added\": {}}]',66,1),(359,'2017-03-28 17:14:27.879333','78','Normal_Pomegranate',1,'[{\"added\": {}}]',66,1),(360,'2017-03-28 17:14:33.777779','79','Normal_Sandalwood Powder',1,'[{\"added\": {}}]',66,1),(361,'2017-03-28 17:14:41.185438','80','Normal_Silk Peptide',1,'[{\"added\": {}}]',66,1),(362,'2017-03-28 17:14:47.064344','81','Normal_Turmeric',1,'[{\"added\": {}}]',66,1),(363,'2017-03-28 17:14:55.665022','82','Normal_White Willow Tree Bark',1,'[{\"added\": {}}]',66,1),(364,'2017-03-28 17:16:28.033502','11','Carrot',3,'',41,1),(365,'2017-04-03 21:11:28.824716','43','Essential Oils',1,'[{\"added\": {}}]',41,1),(366,'2017-04-03 21:26:09.472043','4','Rassoul Clay_Normal',2,'[]',42,1),(367,'2017-04-03 21:26:40.570418','6','Rassoul Clay_Normal',1,'[{\"added\": {}}]',42,1),(368,'2017-04-03 21:27:17.062446','6','White Kaolin clay_Normal',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',42,1),(369,'2017-04-03 21:27:57.769284','5','Goat Milk_Dry',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',42,1),(370,'2017-04-03 21:29:21.429056','3','Rose Water and Glycerine_Normal',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',44,1),(371,'2017-04-03 21:29:50.041838','6','Rose Water and Glycerine_Dry',1,'[{\"added\": {}}]',44,1),(372,'2017-04-03 21:51:20.989336','6','White Kaolin Clay_Normal',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',42,1),(373,'2017-04-03 22:07:22.541101','41','rajiv.raja@gmail.com',3,'',63,1),(374,'2017-04-05 03:02:39.573002','3','sudhabhat26@gmail.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',3,1),(375,'2017-04-05 04:56:30.431596','6','mridulakulkarni@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(376,'2017-04-05 07:41:02.690365','1','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"birth_date\", \"gender\"]}}]',67,1),(377,'2017-04-05 07:43:21.638441','1','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"birth_date\"]}}]',67,1),(378,'2017-04-05 07:44:05.844677','1','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"phone_number\", \"gender\", \"street1\", \"city\", \"state\", \"country\", \"zipcode\"]}}]',67,1),(379,'2017-04-05 07:57:59.721649','1','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"gender\"]}}]',67,1),(380,'2017-04-05 18:11:01.888865','1','rajiv.raja@gmail.com Visa 4444',1,'[{\"added\": {}}]',69,1),(381,'2017-04-05 21:24:34.418970','35','Sandal Wood Powder',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',41,1),(382,'2017-04-05 22:52:12.258436','190','anon_6mmf8mpfhl4silb94vdtoaoqr1i4k1f2',3,'',3,1),(383,'2017-04-05 22:52:12.260036','191','anon_hvhw1rl9py6r5fh44jt3d0wct5clldko',3,'',3,1),(384,'2017-04-05 22:52:12.261437','188','anon_wvwet3q2o3csa49wwf7sx6w3dc5r6cgo',3,'',3,1),(385,'2017-04-05 22:52:12.262845','189','anon_x3r1ziz5d1aypv1imv0z6jt2zdjr3j0k',3,'',3,1),(386,'2017-04-06 17:10:02.619399','1','root@f2f.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',3,2),(387,'2017-04-06 17:10:50.933062','1','root@localhost.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,2),(388,'2017-04-06 17:10:59.255930','2','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_superuser\"]}}]',3,2),(389,'2017-04-07 02:27:28.105861','7','7 rajiv.raja@gmail.com',3,'',45,1),(390,'2017-04-07 02:27:28.115052','6','6 rajiv.raja@gmail.com',3,'',45,1),(391,'2017-04-07 02:27:28.116603','5','5 rajiv.raja@gmail.com',3,'',45,1),(392,'2017-04-07 02:27:28.117981','4','4 rajiv.raja@gmail.com',3,'',45,1),(393,'2017-04-07 02:27:28.119413','3','3 rajiv.raja@gmail.com',3,'',45,1),(394,'2017-04-07 02:27:28.120775','2','2 rajiv.raja@gmail.com',3,'',45,1),(395,'2017-04-07 02:27:28.122586','1','1 rajiv.raja@gmail.com',3,'',45,1),(396,'2017-04-07 02:27:50.304995','1','rajiv.raja@gmail.com Visa True',3,'',68,1),(397,'2017-04-07 07:13:07.904868','14','rajiv.raja@gmail.com  True',3,'',68,2),(398,'2017-04-07 07:24:11.165703','15','rajiv.raja@gmail.com  True',3,'',68,2),(399,'2017-04-18 08:23:16.391269','210','',3,'',3,2),(400,'2017-04-18 08:23:58.444679','211','new@new.com',3,'',3,2),(401,'2017-04-18 08:28:59.240975','212','new@new.com',3,'',3,2),(402,'2017-04-19 02:38:11.040414','37','Straw berry',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',41,2),(403,'2017-04-19 02:38:21.827377','33','Pome granate',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',41,2),(404,'2017-04-25 20:13:38.064810','41','Dry_Goat Milk Powder',3,'',66,2),(405,'2017-04-27 19:00:17.211441','37','Strawberry',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',41,2),(406,'2017-04-28 08:03:52.409896','40','40 rajiv.raja@gmail.com',3,'',45,2),(407,'2017-04-28 08:03:52.418735','39','39 rajiv.raja@gmail.com',3,'',45,2),(408,'2017-04-28 08:03:52.420239','38','38 new@new.com',3,'',45,2),(409,'2017-04-28 08:03:52.421633','25','25 sudhabhat26@gmail.com',3,'',45,2),(410,'2017-04-28 08:07:54.565797','29','rajiv.raja@gmail.com True',3,'',68,2),(411,'2017-04-28 08:07:54.567903','28','anon_eibpm6wijm1bej3k6ihurdqmvr36hh6c True',3,'',68,2),(412,'2017-04-28 08:07:54.570049','26','rajiv.raja@gmail.com True',3,'',68,2),(413,'2017-04-28 08:07:54.571381','25','new@new.com True',3,'',68,2),(414,'2017-04-28 08:07:54.572689','22','sudhabhat26@gmail.com True',3,'',68,2),(415,'2017-04-28 08:13:17.766616','24','rajiv.raja@gmail.com True R a j i v   R a j 1390 Market St, 9th & Market',3,'',71,2),(416,'2017-04-28 08:13:17.769458','22','new@new.com True Rajiv 897 Carolina st',3,'',71,2),(417,'2017-04-28 08:13:17.770909','21','sudhabhat26@gmail.com True Sudha 1390 Market St',3,'',71,2),(418,'2017-04-28 08:13:17.772181','12','anon_mm69rleu22ep7r95pfsl876m0y0ctrlj True Rajiv 897 Carolina st',3,'',71,2),(419,'2017-04-28 08:13:17.773447','11','anon_mm69rleu22ep7r95pfsl876m0y0ctrlj False Mridula 1390 Market St',3,'',71,2),(420,'2017-04-28 08:13:17.774888','8','root@localhost.com True Root 123 Tree House',3,'',71,2),(421,'2017-04-28 08:13:33.003903','30','rajiv.raja@gmail.com True',3,'',68,2),(422,'2017-04-28 08:18:24.348757','31','rajiv.raja@gmail.com True',3,'',68,2),(423,'2017-04-28 08:19:37.249442','25','rajiv.raja@gmail.com True Rajiv 1390 Market St, 9th & Market',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]',71,2),(424,'2017-04-28 08:20:24.926632','25','rajiv.raja@gmail.com True Rajiv 1390 Market St, 9th & Market',3,'',71,2),(425,'2017-04-28 08:23:11.511265','26','rajiv.raja@gmail.com True Rajiv 1390 Market St, 9th & Market',3,'',71,2),(426,'2017-04-28 17:27:28.447928','35','cus_AYkKMT0iztLvEE',3,'',72,2),(427,'2017-05-02 20:22:33.417883','1','Oily__Clog Pore__Orange Peel',1,'[{\"added\": {}}]',73,2),(428,'2017-05-02 20:22:43.315688','2','Oily__Clog Pore__Besan',1,'[{\"added\": {}}]',73,2),(429,'2017-05-02 20:22:57.252106','3','Oily__Clog Pore__Neem',1,'[{\"added\": {}}]',73,2),(430,'2017-05-02 20:23:29.715154','4','Oily__Clog Pore__White Willow Tree Bark',1,'[{\"added\": {}}]',73,2),(431,'2017-05-02 20:23:47.527290','5','Oily__Mild Acne__White Willow Tree Bark',1,'[{\"added\": {}}]',73,2),(432,'2017-05-02 20:24:04.031769','6','Oily__Mild Acne__Flax Seeds',1,'[{\"added\": {}}]',73,2),(433,'2017-05-02 20:24:13.971004','7','Oily__Mild Acne__Fenugreek',1,'[{\"added\": {}}]',73,2),(434,'2017-05-02 20:24:25.648879','8','Oily__Mild Acne__Matcha',1,'[{\"added\": {}}]',73,2),(435,'2017-05-02 20:27:34.627726','9','Oily__Consistent Acne__Fenugreek',1,'[{\"added\": {}}]',73,2),(436,'2017-05-02 20:27:47.826760','10','Oily__Consistent Acne__Strawberry',1,'[{\"added\": {}}]',73,2),(437,'2017-05-02 20:27:55.770503','11','Oily__Consistent Acne__Mangosteen',1,'[{\"added\": {}}]',73,2),(438,'2017-05-02 20:28:14.581136','12','Oily__Oily T-zone (forehead, nose & chin)__Trifala',1,'[{\"added\": {}}]',73,2),(439,'2017-05-02 20:28:23.608611','13','Oily__Oily T-zone (forehead, nose & chin)__Turmeric',1,'[{\"added\": {}}]',73,2),(440,'2017-05-02 20:28:31.367461','14','Oily__Oily T-zone (forehead, nose & chin)__Sandal Wood Powder',1,'[{\"added\": {}}]',73,2),(441,'2017-05-02 20:28:40.116024','15','Oily__Oily T-zone (forehead, nose & chin)__Baking Soda',1,'[{\"added\": {}}]',73,2),(442,'2017-05-02 20:28:51.365784','16','Oily__Anti-Aging__Carrots',1,'[{\"added\": {}}]',73,2),(443,'2017-05-02 20:29:01.280902','17','Oily__Anti-Aging__White Willow Tree Bark',1,'[{\"added\": {}}]',73,2),(444,'2017-05-02 20:29:22.933770','18','Oily__Anti-Aging__Blueberries',1,'[{\"added\": {}}]',73,2),(445,'2017-05-02 20:29:41.850599','19','Oily__Anti-Aging__Coffee',1,'[{\"added\": {}}]',73,2),(446,'2017-05-02 20:30:02.894596','20','Oily__Redness__Matcha',1,'[{\"added\": {}}]',73,2),(447,'2017-05-02 20:30:13.916398','21','Oily__Redness__Chamomile',1,'[{\"added\": {}}]',73,2),(448,'2017-05-02 20:30:22.482276','22','Oily__Redness__Cucumber',1,'[{\"added\": {}}]',73,2),(449,'2017-05-02 20:30:46.308270','23','Oily__Sun Damage__Cucumber',1,'[{\"added\": {}}]',73,2),(450,'2017-05-02 20:30:53.337299','24','Oily__Sun Damage__Lavender Oil',1,'[{\"added\": {}}]',73,2),(451,'2017-05-02 20:31:02.440793','25','Oily__Sun Damage__Chamomile',1,'[{\"added\": {}}]',73,2),(452,'2017-05-02 20:31:11.614391','26','Oily__Sun Damage__Orange Juice',1,'[{\"added\": {}}]',73,2),(453,'2017-05-02 20:31:27.460226','27','Oily__Dehydrated__Coconut Water',1,'[{\"added\": {}}]',73,2),(454,'2017-05-02 20:31:36.051626','28','Oily__Dehydrated__Cucumber',1,'[{\"added\": {}}]',73,2),(455,'2017-05-02 20:31:54.197038','29','Oily__Large Pores__Egg White',1,'[{\"added\": {}}]',73,2),(456,'2017-05-02 20:32:02.681600','30','Oily__Large Pores__Oats',1,'[{\"added\": {}}]',73,2),(457,'2017-05-02 20:32:10.022113','31','Oily__Large Pores__Flax Seeds',1,'[{\"added\": {}}]',73,2),(458,'2017-05-02 20:32:26.809727','32','Oily__Tired and Dull__Oats',1,'[{\"added\": {}}]',73,2),(459,'2017-05-02 20:32:33.049634','33','Oily__Tired and Dull__Orange Peel',1,'[{\"added\": {}}]',73,2),(460,'2017-05-02 20:32:41.546617','34','Oily__Tired and Dull__Lemon Juice',1,'[{\"added\": {}}]',73,2),(461,'2017-05-02 20:32:51.089444','35','Oily__Tired and Dull__Coffee',1,'[{\"added\": {}}]',73,2),(462,'2017-05-02 20:33:07.223095','36','Oily__Tired and Dull__Bergamot Peel Essential Oil',1,'[{\"added\": {}}]',73,2),(463,'2017-05-02 20:33:24.913924','37','Oily__Sensitive Skin__Mint',1,'[{\"added\": {}}]',73,2),(464,'2017-05-02 20:33:32.281445','38','Oily__Sensitive Skin__Nutmeg',1,'[{\"added\": {}}]',73,2),(465,'2017-05-02 20:33:42.452487','39','Oily__Sensitive Skin__Fenugreek',1,'[{\"added\": {}}]',73,2),(466,'2017-05-02 20:33:53.190166','40','Oily__Brown spots or blemishes__Sandal Wood Powder',1,'[{\"added\": {}}]',73,2),(467,'2017-05-02 20:34:05.239718','41','Oily__Brown spots or blemishes__Mint',1,'[{\"added\": {}}]',73,2),(468,'2017-05-02 20:34:12.461036','42','Oily__Brown spots or blemishes__Besan',1,'[{\"added\": {}}]',73,2),(469,'2017-05-02 20:34:20.220756','43','Oily__Brown spots or blemishes__Coffee',1,'[{\"added\": {}}]',73,2),(470,'2017-05-02 20:34:34.113826','44','Oily__Clog Pore__Oats',1,'[{\"added\": {}}]',73,2),(471,'2017-05-02 20:34:48.967737','44','Dry__Clog Pore__Oats',2,'[{\"changed\": {\"fields\": [\"skin_type\"]}}]',73,2),(472,'2017-05-02 20:35:01.122038','44','Dry__Clog Pore__Oats',2,'[]',73,2),(473,'2017-05-02 20:35:11.472873','45','Dry__Clog Pore__White Willow Tree Bark',1,'[{\"added\": {}}]',73,2),(474,'2017-05-02 20:35:24.339899','46','Dry__Clog Pore__Besan',1,'[{\"added\": {}}]',73,2),(475,'2017-05-02 20:35:33.447428','47','Dry__Clog Pore__Almonds',1,'[{\"added\": {}}]',73,2),(476,'2017-05-02 20:35:48.162176','48','Dry__Mild Acne__Besan',1,'[{\"added\": {}}]',73,2),(477,'2017-05-02 20:35:56.085293','49','Dry__Mild Acne__Blueberries',1,'[{\"added\": {}}]',73,2),(478,'2017-05-02 20:36:10.363649','50','Dry__Consistent Acne__Strawberry',1,'[{\"added\": {}}]',73,2),(479,'2017-05-02 20:36:18.181011','51','Dry__Consistent Acne__Aloe Powder',1,'[{\"added\": {}}]',73,2),(480,'2017-05-02 20:36:31.668332','52','Dry__Oily T-zone (forehead, nose & chin)__Sandal Wood Powder',1,'[{\"added\": {}}]',73,2),(481,'2017-05-02 20:36:46.690467','53','Dry__Oily T-zone (forehead, nose & chin)__Trifala',1,'[{\"added\": {}}]',73,2),(482,'2017-05-02 20:36:57.456105','54','Dry__Anti-Aging__Avocado',1,'[{\"added\": {}}]',73,2),(483,'2017-05-02 20:37:04.986786','55','Dry__Anti-Aging__Egg Yolk',1,'[{\"added\": {}}]',73,2),(484,'2017-05-02 20:37:13.966943','56','Dry__Anti-Aging__Coffee',1,'[{\"added\": {}}]',73,2),(485,'2017-05-02 20:37:24.322711','57','Dry__Redness__Chamomile',1,'[{\"added\": {}}]',73,2),(486,'2017-05-02 20:37:31.112356','58','Dry__Redness__Oats',1,'[{\"added\": {}}]',73,2),(487,'2017-05-02 20:37:39.920646','59','Dry__Redness__Matcha',1,'[{\"added\": {}}]',73,2),(488,'2017-05-02 20:37:46.835740','60','Dry__Redness__Cucumber',1,'[{\"added\": {}}]',73,2),(489,'2017-05-02 20:38:02.340793','61','Dry__Sun Damage__Banana',1,'[{\"added\": {}}]',73,2),(490,'2017-05-02 20:38:06.138314','61','Dry__Sun Damage__Banana',2,'[]',73,2),(491,'2017-05-02 20:38:23.106072','62','Dry__Sun Damage__Pome granate',1,'[{\"added\": {}}]',73,2),(492,'2017-05-02 20:38:34.289213','63','Dry__Sun Damage__Coconut Water',1,'[{\"added\": {}}]',73,2),(493,'2017-05-02 20:38:42.614432','64','Dry__Sun Damage__Orange Peel',1,'[{\"added\": {}}]',73,2),(494,'2017-05-02 20:38:53.407156','65','Dry__Dehydrated__Goat Milk Powder',1,'[{\"added\": {}}]',73,2),(495,'2017-05-02 20:39:01.686242','66','Dry__Dehydrated__Avocado',1,'[{\"added\": {}}]',73,2),(496,'2017-05-02 20:39:07.095889','67','Dry__Dehydrated__Banana',1,'[{\"added\": {}}]',73,2),(497,'2017-05-02 20:39:21.087811','68','Dry__Large Pores__Coffee',1,'[{\"added\": {}}]',73,2),(498,'2017-05-02 20:39:29.634685','69','Dry__Large Pores__Egg White',1,'[{\"added\": {}}]',73,2),(499,'2017-05-02 20:39:37.892998','70','Dry__Large Pores__Oats',1,'[{\"added\": {}}]',73,2),(500,'2017-05-02 20:39:45.564365','71','Dry__Tired and Dull__Papaya',1,'[{\"added\": {}}]',73,2),(501,'2017-05-02 20:39:50.980865','72','Dry__Tired and Dull__Oats',1,'[{\"added\": {}}]',73,2),(502,'2017-05-02 20:39:56.471160','73','Dry__Tired and Dull__Silk Peptide',1,'[{\"added\": {}}]',73,2),(503,'2017-05-02 20:40:06.968952','74','Dry__Sensitive Skin__Nutmeg',1,'[{\"added\": {}}]',73,2),(504,'2017-05-02 20:40:15.946814','75','Dry__Sensitive Skin__Cucumber',1,'[{\"added\": {}}]',73,2),(505,'2017-05-02 20:40:30.585060','76','Dry__Brown spots or blemishes__Besan',1,'[{\"added\": {}}]',73,2),(506,'2017-05-02 20:40:43.237696','77','Dry__Brown spots or blemishes__Mint',1,'[{\"added\": {}}]',73,2),(507,'2017-05-02 20:40:50.467761','78','Dry__Brown spots or blemishes__Fenugreek',1,'[{\"added\": {}}]',73,2),(508,'2017-05-02 20:41:01.541956','79','Dry__Brown spots or blemishes__Orange Peel',1,'[{\"added\": {}}]',73,2),(509,'2017-05-02 20:41:14.162470','80','Normal__Clog Pore__Cacao',1,'[{\"added\": {}}]',73,2),(510,'2017-05-02 20:41:16.756318','80','Normal__Clog Pore__Cacao',2,'[]',73,2),(511,'2017-05-02 20:41:22.317998','81','Normal__Clog Pore__White Willow Tree Bark',1,'[{\"added\": {}}]',73,2),(512,'2017-05-02 20:41:28.417447','82','Normal__Clog Pore__Papaya',1,'[{\"added\": {}}]',73,2),(513,'2017-05-02 20:41:36.136240','83','Normal__Clog Pore__Besan',1,'[{\"added\": {}}]',73,2),(514,'2017-05-02 20:41:51.823974','84','Normal__Mild Acne__Blueberries',1,'[{\"added\": {}}]',73,2),(515,'2017-05-02 20:41:59.275748','85','Normal__Mild Acne__Coffee',1,'[{\"added\": {}}]',73,2),(516,'2017-05-02 20:42:07.094705','86','Normal__Mild Acne__Coconut Water',1,'[{\"added\": {}}]',73,2),(517,'2017-05-02 20:42:19.646483','87','Normal__Consistent Acne__Flax Seeds',1,'[{\"added\": {}}]',73,2),(518,'2017-05-02 20:42:27.104897','88','Normal__Consistent Acne__Sandal Wood Powder',1,'[{\"added\": {}}]',73,2),(519,'2017-05-02 20:42:38.181973','89','Normal__Consistent Acne__Turmeric',1,'[{\"added\": {}}]',73,2),(520,'2017-05-02 20:42:48.180449','90','Normal__Oily T-zone (forehead, nose & chin)__Mangosteen',1,'[{\"added\": {}}]',73,2),(521,'2017-05-02 20:42:55.465899','91','Normal__Oily T-zone (forehead, nose & chin)__Turmeric',1,'[{\"added\": {}}]',73,2),(522,'2017-05-02 20:43:05.269940','92','Normal__Oily T-zone (forehead, nose & chin)__Orange Peel',1,'[{\"added\": {}}]',73,2),(523,'2017-05-02 20:43:17.981754','93','Normal__Anti-Aging__Coffee',1,'[{\"added\": {}}]',73,2),(524,'2017-05-02 20:43:25.164222','94','Normal__Anti-Aging__Cacao',1,'[{\"added\": {}}]',73,2),(525,'2017-05-02 20:43:34.642475','95','Normal__Anti-Aging__Matcha',1,'[{\"added\": {}}]',73,2),(526,'2017-05-02 20:43:43.886671','96','Normal__Anti-Aging__Avocado',1,'[{\"added\": {}}]',73,2),(527,'2017-05-02 20:43:54.041308','97','Normal__Redness__Cucumber',1,'[{\"added\": {}}]',73,2),(528,'2017-05-02 20:44:00.519726','98','Normal__Redness__Turmeric',1,'[{\"added\": {}}]',73,2),(529,'2017-05-02 20:44:05.968692','99','Normal__Redness__Matcha',1,'[{\"added\": {}}]',73,2),(530,'2017-05-02 20:44:12.291653','100','Normal__Redness__Chamomile',1,'[{\"added\": {}}]',73,2),(531,'2017-05-02 20:44:21.452845','101','Normal__Sun Damage__Aloe Powder',1,'[{\"added\": {}}]',73,2),(532,'2017-05-02 20:44:27.997919','102','Normal__Sun Damage__Chamomile',1,'[{\"added\": {}}]',73,2),(533,'2017-05-02 20:44:33.137557','103','Normal__Sun Damage__Carrots',1,'[{\"added\": {}}]',73,2),(534,'2017-05-02 20:44:39.001312','104','Normal__Sun Damage__Lavender Oil',1,'[{\"added\": {}}]',73,2),(535,'2017-05-02 20:44:49.171534','105','Normal__Dehydrated__Coconut Water',1,'[{\"added\": {}}]',73,2),(536,'2017-05-02 20:44:54.687104','106','Normal__Dehydrated__Banana',1,'[{\"added\": {}}]',73,2),(537,'2017-05-02 20:44:59.714470','107','Normal__Dehydrated__Papaya',1,'[{\"added\": {}}]',73,2),(538,'2017-05-02 20:45:05.402141','108','Normal__Dehydrated__Avocado',1,'[{\"added\": {}}]',73,2),(539,'2017-05-02 20:45:14.660596','109','Normal__Large Pores__Egg White',1,'[{\"added\": {}}]',73,2),(540,'2017-05-02 20:45:20.669408','110','Normal__Large Pores__Oats',1,'[{\"added\": {}}]',73,2),(541,'2017-05-02 20:45:29.131884','111','Normal__Large Pores__Coffee',1,'[{\"added\": {}}]',73,2),(542,'2017-05-02 20:45:38.482298','112','Normal__Tired and Dull__Pome granate',1,'[{\"added\": {}}]',73,2),(543,'2017-05-02 20:45:43.691311','113','Normal__Tired and Dull__Silk Peptide',1,'[{\"added\": {}}]',73,2),(544,'2017-05-02 20:45:49.665988','114','Normal__Tired and Dull__Coconut Milk',1,'[{\"added\": {}}]',73,2),(545,'2017-05-02 20:45:54.647244','115','Normal__Tired and Dull__Papaya',1,'[{\"added\": {}}]',73,2),(546,'2017-05-02 20:46:12.761934','116','Normal__Tired and Dull__Coffee',1,'[{\"added\": {}}]',73,2),(547,'2017-05-02 20:46:22.680487','117','Normal__Sensitive Skin__Mint',1,'[{\"added\": {}}]',73,2),(548,'2017-05-02 20:46:28.704685','118','Normal__Sensitive Skin__Oats',1,'[{\"added\": {}}]',73,2),(549,'2017-05-02 20:46:34.067232','119','Normal__Sensitive Skin__Goat Milk Powder',1,'[{\"added\": {}}]',73,2),(550,'2017-05-02 20:47:11.503673','120','Normal__Sensitive Skin__Nutmeg',1,'[{\"added\": {}}]',73,2),(551,'2017-05-02 20:47:23.115895','121','Normal__Sensitive Skin__Cucumber',1,'[{\"added\": {}}]',73,2),(552,'2017-05-02 20:47:30.844700','122','Normal__Brown spots or blemishes__Nutmeg',1,'[{\"added\": {}}]',73,2),(553,'2017-05-02 20:47:40.662503','123','Normal__Brown spots or blemishes__Mint',1,'[{\"added\": {}}]',73,2),(554,'2017-05-02 20:47:46.067915','124','Normal__Brown spots or blemishes__Goat Milk Powder',1,'[{\"added\": {}}]',73,2),(555,'2017-05-02 20:47:52.302650','125','Normal__Brown spots or blemishes__Fenugreek',1,'[{\"added\": {}}]',73,2),(556,'2017-05-02 20:47:58.373219','126','Normal__Brown spots or blemishes__Orange Peel',1,'[{\"added\": {}}]',73,2),(557,'2017-05-04 07:52:12.738497','441','441 Goat Milk_Dry Honey_Dry',3,'',55,2),(558,'2017-05-04 07:52:12.748422','440','440 Goat Milk_Dry Honey_Dry',3,'',55,2),(559,'2017-05-04 07:52:12.750892','430','430 Goat Milk_Dry Honey_Dry',3,'',55,2),(560,'2017-05-04 07:52:12.752640','398','398 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(561,'2017-05-04 07:52:12.754058','397','397 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(562,'2017-05-04 07:52:12.755921','395','395 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(563,'2017-05-04 07:52:12.757078','394','394 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(564,'2017-05-04 07:52:12.758205','393','393 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(565,'2017-05-04 07:52:12.759580','391','391 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(566,'2017-05-04 07:52:12.761022','390','390 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(567,'2017-05-04 07:52:12.762217','389','389 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(568,'2017-05-04 07:52:12.763313','388','388 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(569,'2017-05-04 07:52:12.764430','387','387 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(570,'2017-05-04 07:52:12.765629','386','386 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(571,'2017-05-04 07:52:12.767051','385','385 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(572,'2017-05-04 07:52:12.768447','384','384 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(573,'2017-05-04 07:52:12.769727','379','379 Goat Milk_Dry Honey_Dry',3,'',55,2),(574,'2017-05-04 07:52:12.770841','378','378 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(575,'2017-05-04 07:52:12.771965','377','377 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(576,'2017-05-04 07:52:12.773003','376','376 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(577,'2017-05-04 07:52:12.774020','375','375 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(578,'2017-05-04 07:52:12.775090','374','374 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(579,'2017-05-04 07:52:12.776107','373','373 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(580,'2017-05-04 07:52:12.777097','372','372 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(581,'2017-05-04 07:52:12.778082','371','371 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(582,'2017-05-04 07:52:12.779106','361','361 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(583,'2017-05-04 07:52:12.780066','360','360 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(584,'2017-05-04 07:52:12.781047','359','359 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(585,'2017-05-04 07:52:12.781999','358','358 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(586,'2017-05-04 07:52:12.782950','357','357 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(587,'2017-05-04 07:52:12.784005','356','356 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(588,'2017-05-04 07:52:12.785742','355','355 Goat Milk_Dry Honey_Dry',3,'',55,2),(589,'2017-05-04 07:52:12.786766','354','354 Goat Milk_Dry Honey_Dry',3,'',55,2),(590,'2017-05-04 07:52:12.787757','353','353 Goat Milk_Dry Honey_Dry',3,'',55,2),(591,'2017-05-04 07:52:12.788765','352','352 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(592,'2017-05-04 07:52:12.789724','350','350 Goat Milk_Dry Honey_Dry',3,'',55,2),(593,'2017-05-04 07:52:12.790679','349','349 Goat Milk_Dry Honey_Dry',3,'',55,2),(594,'2017-05-04 07:52:12.791603','348','348 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(595,'2017-05-04 07:52:12.792581','347','347 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(596,'2017-05-04 07:52:12.793505','346','346 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(597,'2017-05-04 07:52:12.794466','345','345 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(598,'2017-05-04 07:52:12.795399','344','344 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(599,'2017-05-04 07:52:12.796381','343','343 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(600,'2017-05-04 07:52:12.797319','342','342 Goat Milk_Dry Honey_Dry',3,'',55,2),(601,'2017-05-04 07:52:12.798263','341','341 Goat Milk_Dry Honey_Dry',3,'',55,2),(602,'2017-05-04 07:52:12.799234','340','340 Goat Milk_Dry Honey_Dry',3,'',55,2),(603,'2017-05-04 07:52:12.800235','339','339 Goat Milk_Dry Honey_Dry',3,'',55,2),(604,'2017-05-04 07:52:12.801384','338','338 Goat Milk_Dry Honey_Dry',3,'',55,2),(605,'2017-05-04 07:52:12.802432','337','337 Goat Milk_Dry Honey_Dry',3,'',55,2),(606,'2017-05-04 07:52:12.803396','336','336 Goat Milk_Dry Honey_Dry',3,'',55,2),(607,'2017-05-04 07:52:12.804349','335','335 Goat Milk_Dry Honey_Dry',3,'',55,2),(608,'2017-05-04 07:52:12.805334','334','334 Goat Milk_Dry Honey_Dry',3,'',55,2),(609,'2017-05-04 07:52:12.806275','333','333 Goat Milk_Dry Honey_Dry',3,'',55,2),(610,'2017-05-04 07:52:12.807197','332','332 Goat Milk_Dry Honey_Dry',3,'',55,2),(611,'2017-05-04 07:52:12.808120','331','331 Goat Milk_Dry Honey_Dry',3,'',55,2),(612,'2017-05-04 07:52:12.809103','330','330 Goat Milk_Dry Honey_Dry',3,'',55,2),(613,'2017-05-04 07:52:12.810383','329','329 Goat Milk_Dry Honey_Dry',3,'',55,2),(614,'2017-05-04 07:52:12.811503','328','328 Goat Milk_Dry Honey_Dry',3,'',55,2),(615,'2017-05-04 07:52:12.812537','327','327 Goat Milk_Dry Honey_Dry',3,'',55,2),(616,'2017-05-04 07:52:12.813500','326','326 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(617,'2017-05-04 07:52:12.814441','325','325 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(618,'2017-05-04 07:52:12.815385','324','324 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(619,'2017-05-04 07:52:12.816358','323','323 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(620,'2017-05-04 07:52:12.817314','322','322 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(621,'2017-05-04 07:52:12.818253','321','321 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(622,'2017-05-04 07:52:12.819198','320','320 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(623,'2017-05-04 07:52:12.820179','319','319 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(624,'2017-05-04 07:52:12.821111','318','318 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(625,'2017-05-04 07:52:12.822036','317','317 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(626,'2017-05-04 07:52:12.822972','316','316 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(627,'2017-05-04 07:52:12.823948','315','315 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(628,'2017-05-04 07:52:12.824878','314','314 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(629,'2017-05-04 07:52:12.825821','313','313 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(630,'2017-05-04 07:52:12.826748','312','312 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(631,'2017-05-04 07:52:12.827722','311','311 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(632,'2017-05-04 07:52:12.828686','310','310 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(633,'2017-05-04 07:52:12.829660','309','309 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(634,'2017-05-04 07:52:12.830636','308','308 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(635,'2017-05-04 07:52:12.831663','307','307 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(636,'2017-05-04 07:52:12.832676','306','306 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(637,'2017-05-04 07:52:12.833808','305','305 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(638,'2017-05-04 07:52:12.835305','304','304 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(639,'2017-05-04 07:52:12.836625','303','303 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(640,'2017-05-04 07:52:12.837843','302','302 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(641,'2017-05-04 07:52:12.838956','301','301 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(642,'2017-05-04 07:52:12.839956','295','295 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(643,'2017-05-04 07:52:12.840973','294','294 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(644,'2017-05-04 07:52:12.841974','293','293 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(645,'2017-05-04 07:52:12.842974','287','287 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(646,'2017-05-04 07:52:12.843982','278','278 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(647,'2017-05-04 07:52:12.844990','253','253 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(648,'2017-05-04 07:52:12.846031','252','252 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(649,'2017-05-04 07:52:12.847033','251','251 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(650,'2017-05-04 07:52:12.847995','249','249 Goat Milk_Dry Honey_Dry',3,'',55,2),(651,'2017-05-04 07:52:12.848944','248','248 Goat Milk_Dry Honey_Dry',3,'',55,2),(652,'2017-05-04 07:52:12.849924','247','247 Goat Milk_Dry Honey_Dry',3,'',55,2),(653,'2017-05-04 07:52:12.850866','246','246 Goat Milk_Dry Honey_Dry',3,'',55,2),(654,'2017-05-04 07:52:12.851922','245','245 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(655,'2017-05-04 07:52:12.852941','244','244 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(656,'2017-05-04 07:52:12.853947','241','241 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(657,'2017-05-04 07:52:22.867012','240','240 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(658,'2017-05-04 07:52:22.875684','239','239 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(659,'2017-05-04 07:52:22.877877','238','238 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(660,'2017-05-04 07:52:22.879762','237','237 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(661,'2017-05-04 07:52:22.881586','236','236 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(662,'2017-05-04 07:52:22.883084','235','235 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(663,'2017-05-04 07:52:22.884773','234','234 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(664,'2017-05-04 07:52:22.886251','233','233 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(665,'2017-05-04 07:52:22.888506','232','232 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(666,'2017-05-04 07:52:22.889787','231','231 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(667,'2017-05-04 07:52:22.890842','230','230 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(668,'2017-05-04 07:52:22.891865','229','229 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(669,'2017-05-04 07:52:22.892873','228','228 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(670,'2017-05-04 07:52:22.893891','227','227 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(671,'2017-05-04 07:52:22.894856','226','226 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(672,'2017-05-04 07:52:22.895861','225','225 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(673,'2017-05-04 07:52:22.896816','224','224 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(674,'2017-05-04 07:52:22.897744','223','223 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(675,'2017-05-04 07:52:22.898744','222','222 Goat Milk_Dry Honey_Dry',3,'',55,2),(676,'2017-05-04 07:52:22.899804','221','221 Goat Milk_Dry Honey_Dry',3,'',55,2),(677,'2017-05-04 07:52:22.900721','220','220 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(678,'2017-05-04 07:52:22.901727','219','219 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(679,'2017-05-04 07:52:22.902759','218','218 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(680,'2017-05-04 07:52:22.903804','217','217 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(681,'2017-05-04 07:52:22.904867','216','216 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(682,'2017-05-04 07:52:22.905762','215','215 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(683,'2017-05-04 07:52:22.907040','214','214 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(684,'2017-05-04 07:52:22.908207','209','209 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(685,'2017-05-04 07:52:22.909281','208','208 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(686,'2017-05-04 07:52:22.910420','207','207 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(687,'2017-05-04 07:52:22.911718','206','206 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(688,'2017-05-04 07:52:22.912897','205','205 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(689,'2017-05-04 07:52:22.914071','204','204 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(690,'2017-05-04 07:52:22.915198','203','203 Goat Milk_Dry Rose Water and Glycerine_Dry',3,'',55,2),(691,'2017-05-04 07:52:22.916145','202','202 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(692,'2017-05-04 07:52:22.917488','201','201 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(693,'2017-05-04 07:52:22.918997','200','200 White Kaolin Clay_Normal Rose water_Oily',3,'',55,2),(694,'2017-05-04 07:52:22.920084','198','198 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(695,'2017-05-04 07:52:22.921071','197','197 White Kaolin Clay_Normal Aloe vera gel_Normal',3,'',55,2),(696,'2017-05-04 07:52:22.922070','196','196 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(697,'2017-05-04 07:52:22.923029','195','195 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(698,'2017-05-04 07:52:22.923937','194','194 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(699,'2017-05-04 07:52:22.924850','192','192 Goat Milk_Dry Honey_Dry',3,'',55,2),(700,'2017-05-04 07:52:22.925844','191','191 Goat Milk_Dry Honey_Dry',3,'',55,2),(701,'2017-05-04 07:52:22.926833','186','186 Goat Milk_Dry Honey_Dry',3,'',55,2),(702,'2017-05-04 07:52:22.927740','185','185 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(703,'2017-05-04 07:52:22.928702','184','184 Goat Milk_Dry Honey_Dry',3,'',55,2),(704,'2017-05-04 07:52:22.929653','183','183 Goat Milk_Dry Honey_Dry',3,'',55,2),(705,'2017-05-04 07:52:22.930599','182','182 Goat Milk_Dry Honey_Dry',3,'',55,2),(706,'2017-05-04 07:52:22.931503','181','181 Goat Milk_Dry Honey_Dry',3,'',55,2),(707,'2017-05-04 07:52:22.932401','180','180 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(708,'2017-05-04 07:52:22.933448','179','179 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(709,'2017-05-04 07:52:22.934359','178','178 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(710,'2017-05-04 07:52:22.935264','177','177 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(711,'2017-05-04 07:52:22.936164','176','176 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(712,'2017-05-04 07:52:22.937229','175','175 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(713,'2017-05-04 07:52:22.938734','174','174 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(714,'2017-05-04 07:52:22.940359','173','173 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(715,'2017-05-04 07:52:22.941448','172','172 Rassoul Clay_Normal Honey_Normal',3,'',55,2),(716,'2017-05-04 07:52:22.942437','171','171 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(717,'2017-05-04 07:52:22.943404','170','170 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(718,'2017-05-04 07:52:22.944387','169','169 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(719,'2017-05-04 07:52:22.945561','168','168 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(720,'2017-05-04 07:52:22.946501','167','167 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(721,'2017-05-04 07:52:22.947407','166','166 Bentonite clay_Oily Rose water_Oily',3,'',55,2),(722,'2017-05-04 07:52:22.948509','165','165 Goat Milk_Dry Honey_Dry',3,'',55,2),(723,'2017-05-04 07:52:22.949700','164','164 Goat Milk_Dry Honey_Dry',3,'',55,2),(724,'2017-05-04 07:52:22.951051','163','163 Goat Milk_Dry Honey_Dry',3,'',55,2),(725,'2017-05-04 07:52:22.952452','162','162 Goat Milk_Dry Honey_Dry',3,'',55,2),(726,'2017-05-04 07:52:22.953875','161','161 Fuller\'s earth_Oily Rose water_Oily',3,'',55,2),(727,'2017-05-04 07:52:22.955047','160','160 Goat Milk_Dry Honey_Dry',3,'',55,2),(728,'2017-05-04 07:52:22.956049','159','159 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(729,'2017-05-04 07:52:22.957041','158','158 Goat Milk_Dry Honey_Dry',3,'',55,2),(730,'2017-05-04 07:52:22.958063','157','157 Goat Milk_Dry Honey_Dry',3,'',55,2),(731,'2017-05-04 07:52:22.959005','156','156 Goat Milk_Dry Honey_Dry',3,'',55,2),(732,'2017-05-04 07:52:22.959943','155','155 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(733,'2017-05-04 07:52:22.960865','154','154 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(734,'2017-05-04 07:52:22.961820','153','153 Goat Milk_Dry Honey_Dry',3,'',55,2),(735,'2017-05-04 07:52:22.962726','152','152 Goat Milk_Dry Honey_Dry',3,'',55,2),(736,'2017-05-04 07:52:22.963624','151','151 Goat Milk_Dry Honey_Dry',3,'',55,2),(737,'2017-05-04 07:52:22.964528','150','150 Goat Milk_Dry Honey_Dry',3,'',55,2),(738,'2017-05-04 07:52:22.965467','149','149 Goat Milk_Dry Honey_Dry',3,'',55,2),(739,'2017-05-04 07:52:22.969034','148','148 Goat Milk_Dry Honey_Dry',3,'',55,2),(740,'2017-05-04 07:52:22.971327','147','147 Goat Milk_Dry Honey_Dry',3,'',55,2),(741,'2017-05-04 07:52:22.973471','146','146 Goat Milk_Dry Honey_Dry',3,'',55,2),(742,'2017-05-04 07:52:22.975153','145','145 Goat Milk_Dry Honey_Dry',3,'',55,2),(743,'2017-05-04 07:52:22.976828','144','144 Goat Milk_Dry Honey_Dry',3,'',55,2),(744,'2017-05-04 07:52:22.978410','143','143 Goat Milk_Dry Honey_Dry',3,'',55,2),(745,'2017-05-04 07:52:22.979740','142','142 Goat Milk_Dry Honey_Dry',3,'',55,2),(746,'2017-05-04 07:52:22.981109','141','141 Goat Milk_Dry Honey_Dry',3,'',55,2),(747,'2017-05-04 07:52:22.982479','140','140 Goat Milk_Dry Honey_Dry',3,'',55,2),(748,'2017-05-04 07:52:22.983800','139','139 Goat Milk_Dry Honey_Dry',3,'',55,2),(749,'2017-05-04 07:52:22.985378','138','138 Goat Milk_Dry Honey_Dry',3,'',55,2),(750,'2017-05-04 07:52:22.986847','137','137 Goat Milk_Dry Honey_Dry',3,'',55,2),(751,'2017-05-04 07:52:22.988255','136','136 Goat Milk_Dry Honey_Dry',3,'',55,2),(752,'2017-05-04 08:02:25.238647','443','443 Goat Milk_Dry Honey_Dry',3,'',55,2),(753,'2017-05-04 08:02:25.245642','442','442 Goat Milk_Dry Honey_Dry',3,'',55,2),(754,'2017-05-04 08:13:18.487325','445','445 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(755,'2017-05-04 08:13:18.490787','444','444 French green clay (not for sensitive skin)_Oily Rose water_Oily',3,'',55,2),(756,'2017-05-11 19:17:51.541011','1','Title our story',1,'[{\"added\": {}}]',74,2),(757,'2017-05-11 19:18:24.347544','2','section-1 Is your skin the same as anyone else’s?',1,'[{\"added\": {}}]',74,2),(758,'2017-05-11 19:19:24.861279','3','section-2 You carry your skin your whole life',1,'[{\"added\": {}}]',74,2),(759,'2017-05-11 19:19:54.968661','4','section-3 Our philosophy',1,'[{\"added\": {}}]',74,2),(760,'2017-05-11 19:20:21.990785','5','section-4 The crew',1,'[{\"added\": {}}]',74,2),(761,'2017-05-11 19:21:28.459248','6','section-5 None',1,'[{\"added\": {}}]',74,2),(762,'2017-05-11 19:21:57.745793','7','section-6 We are starting with bringing fully customized mask solutions for your unique skin.',1,'[{\"added\": {}}]',74,2),(763,'2017-05-12 07:08:31.461130','2','section-1 Is your skin the same as anyone else’s?',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',74,2),(764,'2017-05-12 15:04:41.437722','2','section-1 Is your skin the same as anyone else’s?',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',74,2),(765,'2017-05-12 22:25:35.725262','5','section-4 The crew',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',74,2),(766,'2017-05-12 22:26:16.333567','5','section-4 The crew',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',74,2),(767,'2017-05-12 22:26:44.340202','5','section-4 The crew',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',74,2),(768,'2017-05-12 22:28:22.983207','5','section-4 The crew',2,'[{\"changed\": {\"fields\": [\"description\", \"description2\"]}}]',74,2),(769,'2017-05-12 22:36:53.568187','7','section-6 We are starting with bringing fully customized mask solutions for your unique skin.',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',74,2),(770,'2017-05-13 05:33:19.684368','459','459 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(771,'2017-05-13 05:33:42.394243','460','460 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(772,'2017-05-13 05:33:55.545462','461','461 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(773,'2017-05-13 05:34:10.042899','462','462 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(774,'2017-05-13 05:34:22.510509','463','463 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(775,'2017-05-13 05:35:30.161516','464','464 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(776,'2017-05-13 05:35:41.874757','465','465 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(777,'2017-05-13 05:35:54.838110','466','466 French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(778,'2017-05-13 05:40:23.042424','460','All Star Dry Skin French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"name\", \"image\"]}}]',55,2),(779,'2017-05-13 05:40:32.363612','459','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',55,2),(780,'2017-05-13 05:40:53.231092','461','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',55,2),(781,'2017-05-13 05:41:02.029724','462','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',55,2),(782,'2017-05-13 05:41:11.388078','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',55,2),(783,'2017-05-13 05:41:21.426299','464','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',55,2),(784,'2017-05-13 05:41:32.742889','465','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',55,2),(785,'2017-05-13 05:41:43.660144','466','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',55,2),(786,'2017-05-13 05:44:15.794712','4','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(787,'2017-05-13 05:44:28.040732','5','All Star Dry Skin French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(788,'2017-05-13 05:44:33.715778','6','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(789,'2017-05-13 05:44:39.312993','7','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(790,'2017-05-13 05:44:44.234882','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(791,'2017-05-13 05:44:50.239881','9','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(792,'2017-05-13 05:44:55.068229','10','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(793,'2017-05-13 05:45:00.162076','11','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(794,'2017-05-13 06:58:56.848725','466','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(795,'2017-05-13 06:59:06.648755','465','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(796,'2017-05-13 06:59:17.004606','464','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(797,'2017-05-13 06:59:18.987805','9','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,2),(798,'2017-05-13 06:59:30.385357','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(799,'2017-05-13 06:59:40.874340','462','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(800,'2017-05-13 06:59:50.010711','461','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(801,'2017-05-13 06:59:58.443658','460','All Star Dry Skin French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(802,'2017-05-13 07:00:08.351556','459','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\"]}}]',55,2),(803,'2017-05-15 16:03:42.780651','467','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(804,'2017-05-15 16:04:29.669407','468','All Star DS French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(805,'2017-05-15 16:05:42.555146','469','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(806,'2017-05-15 16:06:24.432803','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',55,2),(807,'2017-05-15 16:08:02.775983','12','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(808,'2017-05-15 16:08:09.398811','13','All Star DS French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(809,'2017-05-15 16:08:16.437481','14','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(810,'2017-05-15 16:08:21.685614','15','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',1,'[{\"added\": {}}]',56,2),(811,'2017-06-19 21:14:11.745809','1','Whaaat\'s your age?',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',48,1),(812,'2017-06-19 21:20:44.257994','1','What\'s your age?',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',48,1),(813,'2017-06-19 21:50:26.297351','43','E55ential Oils',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',41,1),(814,'2017-06-19 21:51:11.794689','43','Essential Oils',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',41,1),(815,'2017-06-19 21:51:59.707316','6','Whit3 Kaolin Clay_Normal',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',42,1),(816,'2017-06-28 02:46:41.091293','38','Trifala',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(817,'2017-06-28 02:46:41.498483','38','Trifala',2,'[]',41,1),(818,'2017-06-28 02:47:23.216286','38','Trifala',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',41,1),(819,'2017-06-28 02:50:40.218571','39','Turmeric',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(820,'2017-06-28 02:55:19.297480','44','Glycerine',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(821,'2017-06-28 02:55:30.702432','43','Essential Oils',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(822,'2017-06-28 02:58:04.373531','42','Orange Juice',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(823,'2017-06-28 02:58:08.219846','41','Yogurt',2,'[]',41,1),(824,'2017-06-28 02:58:27.284039','40','White Willow Tree Bark',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(825,'2017-06-28 02:58:31.047146','39','Turmeric',2,'[]',41,1),(826,'2017-06-28 02:58:35.111240','38','Trifala',2,'[]',41,1),(827,'2017-06-28 02:58:58.821525','37','Strawberry',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(828,'2017-06-28 02:59:17.054970','36','Silk Peptide',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(829,'2017-06-28 02:59:51.309541','35','Sandal Wood Powder',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(830,'2017-06-28 03:00:03.871145','33','Pomegranate',2,'[{\"changed\": {\"fields\": [\"name\", \"description\"]}}]',41,1),(831,'2017-06-28 03:00:23.922152','32','Papaya',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(832,'2017-06-28 03:00:34.129723','31','Orange Peel',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(833,'2017-06-28 03:00:45.838846','30','Oats',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(834,'2017-06-28 03:00:55.817146','29','Nutmeg',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(835,'2017-06-28 03:06:52.566938','28','Neem',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(836,'2017-06-28 03:07:22.685025','35','Sandal Wood Powder',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',41,1),(837,'2017-06-28 03:07:56.504771','42','Orange Juice',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',41,1),(838,'2017-06-28 03:08:25.829447','44','Glycerine',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',41,1),(839,'2017-06-28 03:09:22.190399','40','White Willow Tree Bark',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',41,1),(840,'2017-07-20 17:13:15.723571','1','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily Almonds',1,'[{\"added\": {}}]',75,2),(841,'2017-07-20 17:13:24.258440','2','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily Egg White',1,'[{\"added\": {}}]',75,2),(842,'2017-07-20 17:13:37.755909','3','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily Yogurt',1,'[{\"added\": {}}]',75,2),(843,'2017-07-20 17:13:51.995869','4','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily Goat Milk Powder',1,'[{\"added\": {}}]',75,2),(844,'2017-07-20 17:14:03.878117','5','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily Oats',1,'[{\"added\": {}}]',75,2),(845,'2017-07-20 17:14:11.793634','6','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily Egg Yolk',1,'[{\"added\": {}}]',75,2),(846,'2017-07-23 04:06:16.248770','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(847,'2017-07-23 04:07:04.958398','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',55,1),(848,'2017-07-23 04:07:08.274477','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(849,'2017-07-23 04:08:07.134200','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"made_with\", \"description\"]}}]',55,1),(850,'2017-07-23 04:09:20.076389','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(851,'2017-07-23 04:09:35.114637','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',55,1),(852,'2017-07-23 04:09:36.456887','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(853,'2017-07-23 04:10:33.270269','9','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(854,'2017-07-23 04:11:44.459026','464','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\", \"description\"]}}]',55,1),(855,'2017-07-23 04:11:47.378567','9','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(856,'2017-07-23 04:14:21.036744','10','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(857,'2017-07-23 04:15:11.274505','465','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\", \"description\"]}}]',55,1),(858,'2017-07-23 04:16:07.514585','10','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(859,'2017-07-23 04:16:44.793385','465','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',55,1),(860,'2017-07-23 04:16:45.863691','10','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(861,'2017-07-23 04:17:56.411939','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(862,'2017-07-23 04:18:18.981043','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',55,1),(863,'2017-07-23 04:19:43.576505','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(864,'2017-07-23 04:20:13.966863','464','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',55,1),(865,'2017-07-23 04:20:18.924469','9','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(866,'2017-07-23 04:22:11.556228','11','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(867,'2017-07-23 04:22:54.667749','466','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\", \"description\"]}}]',55,1),(868,'2017-07-23 04:23:52.619629','11','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(869,'2017-07-23 04:24:09.913573','466','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',55,1),(870,'2017-07-23 04:24:13.118725','11','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(871,'2017-07-23 04:39:27.100072','12','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(872,'2017-07-23 04:40:22.534661','467','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\", \"description\"]}}]',55,1),(873,'2017-07-23 04:40:28.278828','12','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(874,'2017-07-23 04:41:58.087109','469','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\", \"description\"]}}]',55,1),(875,'2017-07-23 04:42:03.047926','14','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(876,'2017-07-23 04:43:31.658237','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"made_with\", \"description\"]}}]',55,1),(877,'2017-07-23 04:44:08.732572','15','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(878,'2017-07-24 07:53:26.173375','6','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily Egg Yolk',3,'',75,2),(879,'2017-07-24 07:53:26.176790','5','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily Oats',3,'',75,2),(880,'2017-07-24 07:53:26.178944','4','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily Goat Milk Powder',3,'',75,2),(881,'2017-07-24 07:53:26.180677','3','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily Yogurt',3,'',75,2),(882,'2017-07-24 07:53:26.182421','2','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily Egg White',3,'',75,2),(883,'2017-07-24 07:53:26.183891','1','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily Almonds',3,'',75,2),(884,'2017-08-01 05:50:37.431828','1','How do I find my perfect mask? Take our quiz to help you find your perfect mask that suits your skin, environment and addresses your skin concerns. The mask quiz uses our proprietary algorithm to whip',1,'[{\"added\": {}}]',79,1),(885,'2017-08-01 05:50:58.522274','2','How often can I use my face mask? Since our face masks are made with all natural, organic ingredients sourced from nature, you can use it as often as needed. If you want an uninterrupted service of fa',1,'[{\"added\": {}}]',79,1),(886,'2017-08-01 05:51:16.044421','3','Can I subscribe to your service? Yes, if you want an uninterrupted service of face masks, made specially for you, you can select “never run out” option while checking out or for a featured creation of',1,'[{\"added\": {}}]',79,1),(887,'2017-08-01 05:51:32.177141','4','What are your face masks made of? Our face masks are made of natural potent ingredients that are free of chemicals and preservatives. Each mask is handmade with organic and natural ingredients. We app',1,'[{\"added\": {}}]',79,1),(888,'2017-08-01 05:51:47.092071','5','Why are your face masks in powdered form? Our face masks contain fruits and vegetables in freeze dried, powdered form so as to maintain their potency without the need to add any preservatives or chemi',1,'[{\"added\": {}}]',79,1),(889,'2017-08-01 05:52:01.493028','6','What does the masking kit contain? Our masking kit contains powdered face mask, a mixing agent to enhance the effect of face mask and a spoon. All our packaging is made of sustainable, recyclable mate',1,'[{\"added\": {}}]',79,1),(890,'2017-08-01 05:52:17.492285','7','Why do I need a face mask? Every beauty product works better if you have inherently healthy skin. Masking regularly ensures a radiant and healthy skin. So have some fun with the aroma and the tingle a',1,'[{\"added\": {}}]',79,1),(891,'2017-08-01 05:52:31.393782','8','Can I buy it as a gift? Yes, you can buy any of our personalized face masks or featured creation masks for your friends and family. Just enter their name and address while checking out and they will r',1,'[{\"added\": {}}]',79,1),(892,'2017-08-01 05:52:44.819297','9','What are featured creations? Featured creations are our most popular face masks. You can review the description of the face mask to see if it addresses your skin concerns. For a personalized service, ',1,'[{\"added\": {}}]',79,1),(893,'2017-08-01 05:53:03.291113','10','Why farms2face? We have unique fingerprints. We have distinct skin. There are a variety of skin care products available, some good and some poor, but almost always generic.  We have come up with a pro',1,'[{\"added\": {}}]',79,1),(894,'2017-08-01 23:37:03.089929','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(895,'2017-08-01 23:37:23.935165','469','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(896,'2017-08-01 23:37:32.861835','468','All Star DS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(897,'2017-08-01 23:37:45.109382','467','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(898,'2017-08-01 23:37:56.485903','466','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(899,'2017-08-01 23:38:03.919614','465','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(900,'2017-08-01 23:38:12.219147','464','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(901,'2017-08-01 23:38:22.206139','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\"]}}]',55,2),(902,'2017-08-01 23:46:19.721525','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_regular\", \"price_intense\"]}}]',55,2),(903,'2017-08-01 23:46:30.804768','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_regular\", \"price_intense\"]}}]',55,2),(904,'2017-08-01 23:46:38.635917','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_regular\"]}}]',55,2),(905,'2017-08-01 23:47:08.851864','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_regular\", \"price_intense\"]}}]',55,2),(906,'2017-08-01 23:52:50.198697','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_regular\", \"price_intense\"]}}]',55,2),(907,'2017-08-04 04:40:59.581920','183','Fulfilled | Ordered on: August 04, 2017 | By: rajiv.raja@gmail.com | FaceMask: Strawberry*  , Sandal Wood Powder*  , Coffee* , Goat Milk (Base) , Honey (MixingAgent) | Tracking: None',2,'[{\"changed\": {\"fields\": [\"is_fulfilled\"]}}]',46,2),(908,'2017-08-04 04:42:33.619088','183','Not Fulfilled | Ordered on: August 04, 2017 | By: rajiv.raja@gmail.com | FaceMask: Strawberry*  , Sandal Wood Powder*  , Coffee* , Goat Milk (Base) , Honey (MixingAgent) | Tracking: None',2,'[{\"changed\": {\"fields\": [\"is_fulfilled\"]}}]',46,2),(909,'2017-08-19 15:07:58.998201','44','Glycerine',2,'[]',41,1),(910,'2017-08-19 15:08:04.444646','43','Essential Oils',2,'[]',41,1),(911,'2017-08-19 15:08:15.162223','42','Orange Juice',2,'[]',41,1),(912,'2017-08-19 15:08:20.249332','41','Yogurt',2,'[]',41,1),(913,'2017-08-19 15:09:11.071954','40','White Willow Tree Bark',2,'[]',41,1),(914,'2017-08-19 15:09:16.653095','39','Turmeric',2,'[]',41,1),(915,'2017-08-19 15:09:22.346688','38','Trifala',2,'[]',41,1),(916,'2017-08-19 15:09:26.436861','37','Strawberry',2,'[]',41,1),(917,'2017-08-19 15:09:29.858004','36','Silk Peptide',2,'[]',41,1),(918,'2017-08-19 15:09:34.020437','35','Sandal Wood Powder',2,'[]',41,1),(919,'2017-08-19 15:09:41.730616','25','Mangosteen',2,'[]',41,1),(920,'2017-08-19 15:09:49.905895','33','Pomegranate',2,'[]',41,1),(921,'2017-08-19 15:09:56.886208','32','Papaya',2,'[]',41,1),(922,'2017-08-19 15:10:03.676934','31','Orange Peel',2,'[]',41,1),(923,'2017-08-19 15:10:09.847832','30','Oats',2,'[]',41,1),(924,'2017-08-19 15:10:16.672786','29','Nutmeg',2,'[]',41,1),(925,'2017-08-19 15:10:27.606927','28','Neem',2,'[]',41,1),(926,'2017-08-19 15:10:40.840135','27','Mint',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(927,'2017-08-19 15:11:08.939420','26','Matcha',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(928,'2017-08-19 15:11:48.200493','25','Mangosteen',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(929,'2017-08-19 15:17:39.657701','24','Lemon Juice',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(930,'2017-08-19 15:19:33.098808','23','Lavender Oil',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',41,1),(931,'2017-08-19 15:19:40.767783','23','Lavender Oil',2,'[]',41,1),(932,'2017-08-19 15:20:22.010560','22','Goat Milk Powder',2,'[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]',41,1),(933,'2017-08-19 15:20:56.392691','21','Flax Seeds',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(934,'2017-08-19 15:22:01.032070','20','Fenugreek',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',41,1),(935,'2017-08-19 15:22:38.373485','19','Egg Yolk',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(936,'2017-08-19 15:23:46.365866','18','Egg White',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',41,1),(937,'2017-08-19 15:24:53.394683','17','Cucumber',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(938,'2017-08-19 15:25:44.280270','16','Coffee',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(939,'2017-08-19 15:26:19.368401','15','Coconut Water',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(940,'2017-08-19 15:26:27.337649','14','Coconut Milk',2,'[]',41,1),(941,'2017-08-19 15:27:10.110467','13','Chamomile',2,'[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]',41,1),(942,'2017-08-19 15:27:34.499372','12','Carrots',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(943,'2017-08-19 15:28:15.268571','10','Cacao',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',41,1),(944,'2017-08-19 15:31:10.791246','8','Blueberries',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(945,'2017-08-19 15:32:53.889978','7','Chickpeas',2,'[{\"changed\": {\"fields\": [\"name\", \"description\"]}}]',41,1),(946,'2017-08-19 15:33:33.665184','6','Bergamot Peel Essential Oil',2,'[]',41,1),(947,'2017-08-19 15:34:21.763889','5','Banana',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(948,'2017-08-19 15:35:30.445183','4','Baking Soda',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',41,1),(949,'2017-08-19 15:37:33.720665','3','Avocado',2,'[]',41,1),(950,'2017-08-19 15:38:05.418282','6','Bergamot Peel Essential Oil',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',41,1),(951,'2017-08-19 15:39:10.559457','3','Avocado',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(952,'2017-08-19 15:39:49.062889','2','Aloe Powder',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\"]}}]',41,1),(953,'2017-08-19 15:39:59.081015','1','Almonds',2,'[]',41,1),(954,'2017-08-19 15:40:52.483174','6','White Kaolin Clay_Normal',2,'[{\"changed\": {\"fields\": [\"name\", \"helper\", \"description\", \"image\"]}}]',42,1),(955,'2017-08-19 15:40:58.515174','6','White Kaolin Clay_Normal',2,'[]',42,1),(956,'2017-08-19 15:41:33.768462','5','Goat Milk_Dry',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',42,1),(957,'2017-08-19 15:44:15.745816','4','Rassoul Clay_Normal',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',42,1),(958,'2017-08-19 15:45:33.604690','3','Fuller\'s earth_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',42,1),(959,'2017-08-19 15:46:09.192688','2','Bentonite clay_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',42,1),(960,'2017-08-19 15:49:25.804112','1','French green clay (not for sensitive skin)_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',42,1),(961,'2017-08-19 15:52:24.271176','6','Rose Water and Glycerine_Dry',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',44,1),(962,'2017-08-19 15:53:10.407239','5','Honey_Normal',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',44,1),(963,'2017-08-19 15:53:33.504587','4','Honey_Dry',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',44,1),(964,'2017-08-19 15:53:45.359420','6','Rose Water and Glycerine_Dry',2,'[]',44,1),(965,'2017-08-19 15:53:59.181476','3','Rose Water and Glycerine_Normal',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',44,1),(966,'2017-08-19 15:54:31.418636','2','Aloe vera gel_Normal',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',44,1),(967,'2017-08-19 15:54:54.659536','1','Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\", \"description\", \"image\"]}}]',44,1),(968,'2017-08-19 15:56:50.563544','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',55,1),(969,'2017-08-19 15:56:53.906937','15','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(970,'2017-08-19 15:57:11.053228','469','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',55,1),(971,'2017-08-19 15:58:43.903151','14','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(972,'2017-08-19 15:59:25.225109','470','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\", \"price_single\"]}}]',55,1),(973,'2017-08-19 15:59:30.232173','15','Nutty NS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(974,'2017-08-19 15:59:53.736444','469','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price\", \"price_single\"]}}]',55,1),(975,'2017-08-19 15:59:56.093621','14','Fruit Punch French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(976,'2017-08-19 16:00:51.732713','11','Wake Up Call French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(977,'2017-08-19 16:01:26.682622','465','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_single\"]}}]',55,1),(978,'2017-08-19 16:01:36.623790','10','Very Berry French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(979,'2017-08-19 16:02:09.011165','464','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_single\"]}}]',55,1),(980,'2017-08-19 16:02:10.719188','9','Skintillating Garlic French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(981,'2017-08-19 16:02:24.835586','463','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_single\"]}}]',55,1),(982,'2017-08-19 16:02:26.167567','8','Protein High French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(983,'2017-08-19 16:08:51.131413','13','All Star DS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"highlights\", \"who\", \"made_with\"]}}]',56,1),(984,'2017-08-19 16:09:51.818545','468','All Star DS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_single\", \"helper\", \"made_with\", \"description\"]}}]',55,1),(985,'2017-08-19 16:09:57.090645','13','All Star DS French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(986,'2017-08-19 16:10:40.481635','467','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"price_single\", \"description\"]}}]',55,1),(987,'2017-08-19 16:10:43.550434','12','All Star Acne French green clay (not for sensitive skin)_Oily Rose water_Oily',2,'[]',56,1),(988,'2017-08-19 16:54:41.804048','192','Fulfilled | Ordered on: August 19, 2017 | By: testing8.19@gmail.com | FaceMask: Coconut Milk , Orange Peel , Turmeric, White Kaolin Clay (Base) , Aloe vera gel (MixingAgent) | Tracking: None',2,'[{\"changed\": {\"fields\": [\"subtype\", \"is_fulfilled\"]}}]',46,1),(989,'2017-08-19 16:54:49.596218','192','Fulfilled | Ordered on: August 19, 2017 | By: testing8.19@gmail.com | FaceMask: Coconut Milk , Orange Peel , Turmeric, White Kaolin Clay (Base) , Aloe vera gel (MixingAgent) | Tracking: None',2,'[]',46,1),(990,'2017-08-20 05:32:46.077256','4','rupabhat@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_superuser\"]}}]',3,2),(991,'2017-08-20 05:33:00.302877','3','sudhabhat26@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]',3,2),(992,'2017-08-20 05:33:15.285443','346','rupabhat@yahoo.com',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]',3,2),(993,'2017-08-20 05:33:27.984073','4','rupabhat@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',3,2),(994,'2017-08-22 00:22:20.311540','4','4 Standard (2-8 business days)',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',60,2),(995,'2017-08-22 00:22:39.598939','3','3 3-5 business days',3,'',60,2),(996,'2017-08-22 00:22:39.606021','2','2 2 business days',3,'',60,2),(997,'2017-08-22 00:22:39.608843','1','1 1 business day',3,'',60,2),(998,'2017-08-22 00:24:09.422363','4','4 2-8 business days',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',60,2),(999,'2017-08-22 00:31:46.261301','1','FREE Shipping (Intro) 4.99',1,'[{\"added\": {}}]',80,2),(1000,'2017-08-22 00:32:14.512904','1','FREE Shipping (Intro) -4.99',2,'[{\"changed\": {\"fields\": [\"discount\"]}}]',80,2),(1001,'2017-08-22 00:32:20.727557','1','FREE Shipping (Intro) 4.99',2,'[{\"changed\": {\"fields\": [\"discount\"]}}]',80,2),(1002,'2017-08-22 00:44:20.184136','1','FREE Shipping (Intro) 4.99',2,'[{\"changed\": {\"fields\": [\"active\"]}}]',80,2),(1003,'2017-08-22 00:48:44.919072','1','FREE Shipping (Intro) 4.99',2,'[{\"changed\": {\"fields\": [\"active\"]}}]',80,2),(1004,'2017-08-22 00:49:10.133100','2','FREE test 10.00',1,'[{\"added\": {}}]',80,2),(1005,'2017-08-22 00:51:38.109906','2','FREE test 10.00',3,'',80,2),(1006,'2017-08-22 00:57:58.823180','1','Farms2Face is here to provide you more information and answer any questions you may have. Email: rupa.bhat@farms2face.com',1,'[{\"added\": {}}]',81,2),(1007,'2017-08-22 00:58:20.405959','1','Farms2Face is here to provide you more information and answer any questions you may have.',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',81,2),(1008,'2017-08-22 00:58:25.441859','2','Email: rupa.bhat@farms2face.com',1,'[{\"added\": {}}]',81,2),(1009,'2017-08-22 00:58:49.297203','1','Farms2Face creations are handmade with organic and natural ingredients. Consult your allergist or doctor before using any product if you have known allergies, including and not limited to gluten aller',1,'[{\"added\": {}}]',82,2),(1010,'2017-08-22 00:59:00.284905','2','Always test a small amount of each product first for sensitivity or allergic reaction before use.',1,'[{\"added\": {}}]',82,2),(1011,'2017-08-22 01:02:54.328791','1','Privacy We keep your persona',1,'[{\"added\": {}}]',83,2),(1012,'2017-08-22 01:03:05.779275','2','Privacy Our secure servers p',1,'[{\"added\": {}}]',83,2),(1013,'2017-08-22 01:03:19.695801','3','Privacy To keep you informed',1,'[{\"added\": {}}]',83,2),(1014,'2017-08-22 01:03:30.451132','4','Privacy We use \"cookies\" to ',1,'[{\"added\": {}}]',83,2),(1015,'2017-08-22 01:03:45.478963','5','Payments We accept Visa, Mast',1,'[{\"added\": {}}]',83,2),(1016,'2017-08-22 01:04:00.045382','6','Taxes We will automaticall',1,'[{\"added\": {}}]',83,2),(1017,'2017-08-22 01:04:11.560320','6','Taxes We will automaticall',2,'[]',83,2),(1018,'2017-08-22 01:04:40.648535','7','Returns If you are not satis',1,'[{\"added\": {}}]',83,2),(1019,'2017-08-22 02:23:07.585650','11','Any other questions? Please don’t hesitat...',1,'[{\"added\": {}}]',79,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(54,'cart','cart'),(5,'contenttypes','contenttype'),(49,'facepackwizard','option'),(48,'facepackwizard','question'),(52,'facepackwizard','questionnaire'),(58,'facepackwizard','questionnaireentry'),(59,'facepackwizard','questionnaireuserdata'),(50,'facepackwizard','skinconcern'),(51,'facepackwizard','skintype'),(42,'home','base'),(81,'home','contact'),(57,'home','customfacepack'),(82,'home','disclaimer'),(55,'home','facepack'),(79,'home','faq'),(41,'home','ingredient'),(37,'home','item'),(44,'home','mixingagent'),(56,'home','prepack'),(75,'home','prepackingredients'),(83,'home','privacy'),(38,'home','recipe'),(73,'home','skintypeconcerningredient'),(66,'home','skintypeingredient'),(69,'payments','creditcard'),(45,'payments','payment'),(68,'payments','paymenttype'),(70,'payments','paypal'),(80,'payments','promo'),(46,'payments','purchasehistory'),(60,'payments','shipping'),(72,'payments','stripe'),(76,'reviews','review'),(77,'reviews','reviewimage'),(6,'sessions','session'),(65,'social_auth','association'),(62,'social_auth','code'),(61,'social_auth','nonce'),(63,'social_auth','usersocialauth'),(74,'story','story'),(78,'userregistration','forgotpass'),(67,'userregistration','profile'),(71,'userregistration','shippingaddress');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (181,'contenttypes','0001_initial','2017-03-27 08:16:15.943949'),(182,'auth','0001_initial','2017-03-27 08:16:15.952337'),(183,'admin','0001_initial','2017-03-27 08:16:15.954932'),(184,'admin','0002_logentry_remove_auto_add','2017-03-27 08:16:15.957842'),(185,'contenttypes','0002_remove_content_type_name','2017-03-27 08:16:15.960776'),(186,'auth','0002_alter_permission_name_max_length','2017-03-27 08:16:15.963718'),(187,'auth','0003_alter_user_email_max_length','2017-03-27 08:16:15.966536'),(188,'auth','0004_alter_user_username_opts','2017-03-27 08:16:15.969010'),(189,'auth','0005_alter_user_last_login_null','2017-03-27 08:16:15.971355'),(190,'auth','0006_require_contenttypes_0002','2017-03-27 08:16:15.973785'),(191,'auth','0007_alter_validators_add_error_messages','2017-03-27 08:16:15.976661'),(192,'auth','0008_alter_user_username_max_length','2017-03-27 08:16:15.979828'),(193,'facepackwizard','0001_initial','2017-03-27 08:16:15.982579'),(194,'home','0001_initial','2017-03-27 08:16:15.985283'),(195,'home','0002_item_price','2017-03-27 08:16:15.987922'),(196,'cart','0001_initial','2017-03-27 08:16:15.990533'),(197,'facepackwizard','0002_auto_20170324_1812','2017-03-27 08:16:15.993217'),(198,'facepackwizard','0003_auto_20170324_1817','2017-03-27 08:16:15.995785'),(199,'facepackwizard','0004_auto_20170324_1818','2017-03-27 08:16:15.998454'),(200,'home','0003_auto_20170324_1808','2017-03-27 08:16:16.003605'),(201,'home','0004_auto_20170324_1810','2017-03-27 08:16:16.006627'),(202,'home','0005_customfacepack_prepack','2017-03-27 08:16:16.010018'),(203,'home','0006_auto_20170324_1813','2017-03-27 08:16:16.013534'),(204,'home','0007_auto_20170324_1818','2017-03-27 08:16:16.016497'),(205,'home','0008_item_real_type','2017-03-27 08:16:16.019467'),(206,'home','0009_remove_item_real_type','2017-03-27 08:16:16.021952'),(207,'home','0010_item_real_type','2017-03-27 08:16:16.024276'),(208,'home','0011_remove_item_real_type','2017-03-27 08:16:16.026473'),(209,'home','0012_customfacepack_user','2017-03-27 08:16:16.028676'),(210,'payments','0001_initial','2017-03-27 08:16:16.030896'),(211,'payments','0002_remove_payment_createdte2','2017-03-27 08:16:16.033014'),(212,'payments','0003_auto_20170326_1258','2017-03-27 08:16:16.035120'),(213,'sessions','0001_initial','2017-03-27 08:16:16.037932'),(214,'default','0001_initial','2017-03-27 08:32:12.237696'),(215,'default','0002_add_related_name','2017-03-27 08:32:12.304421'),(216,'default','0003_alter_email_max_length','2017-03-27 08:32:12.328308'),(217,'default','0004_auto_20160423_0400','2017-03-27 08:32:12.367364'),(218,'social_auth','0005_auto_20160727_2333','2017-03-27 08:32:12.389226'),(219,'social_auth','0001_initial','2017-03-27 08:32:12.393547'),(220,'social_auth','0003_alter_email_max_length','2017-03-27 08:32:12.396027'),(221,'social_auth','0004_auto_20160423_0400','2017-03-27 08:32:12.398379'),(222,'social_auth','0002_add_related_name','2017-03-27 08:32:12.400754'),(223,'home','0013_skintypeingredient','2017-03-28 16:29:45.711158'),(224,'payments','0004_payment_total','2017-04-03 23:34:49.580771'),(225,'userregistration','0001_initial','2017-04-05 01:41:16.596285'),(226,'userregistration','0002_auto_20170404_1844','2017-04-05 01:44:04.936656'),(227,'userregistration','0003_profile_subscription','2017-04-05 07:05:10.342618'),(228,'userregistration','0004_auto_20170405_0040','2017-04-05 07:40:58.468490'),(229,'userregistration','0005_auto_20170405_0916','2017-04-05 16:16:53.929126'),(230,'payments','0005_auto_20170405_1102','2017-04-05 18:02:36.883306'),(231,'payments','0006_auto_20170405_1109','2017-04-05 18:10:02.418721'),(232,'payments','0007_purchasehistory_user','2017-04-05 18:36:49.947549'),(233,'payments','0008_creditcard_owner_name','2017-04-05 18:38:49.988225'),(234,'payments','0009_auto_20170405_1141','2017-04-05 18:41:07.011712'),(235,'userregistration','0006_auto_20170406_0850','2017-04-06 15:50:57.499332'),(236,'userregistration','0007_auto_20170406_0855','2017-04-06 15:55:59.696776'),(237,'userregistration','0008_auto_20170406_1221','2017-04-06 19:21:37.376115'),(238,'payments','0010_auto_20170406_1926','2017-04-07 02:30:57.348448'),(239,'cart','0002_cart_type','2017-04-08 00:06:34.603506'),(240,'payments','0011_auto_20170408_0036','2017-04-08 07:36:30.028916'),(241,'payments','0012_purchasehistory_is_active','2017-04-08 15:58:13.203246'),(242,'payments','0013_purchasehistory_ship_date','2017-04-08 18:55:39.172326'),(243,'home','0014_ingredient_description','2017-04-18 09:17:36.798982'),(244,'home','0015_auto_20170425_1323','2017-04-25 20:23:41.667251'),(245,'payments','0014_stripe','2017-04-28 07:55:31.271057'),(246,'home','0016_skintypeconcerningredient','2017-05-02 20:18:42.506936'),(247,'home','0017_auto_20170502_2216','2017-05-03 05:16:16.713847'),(248,'story','0001_initial','2017-05-11 19:14:21.032352'),(249,'story','0002_auto_20170511_1216','2017-05-11 19:16:37.425758'),(250,'story','0003_story_description2','2017-05-12 22:28:03.407779'),(251,'home','0018_facepack_image','2017-05-13 05:38:43.119339'),(252,'home','0019_auto_20170512_2357','2017-05-13 06:57:07.156281'),(253,'home','0020_remove_facepack_description','2017-05-13 06:58:30.995280'),(254,'home','0021_facepack_description','2017-05-13 14:17:50.554923'),(255,'cart','0002_auto_20170719_2327','2017-07-20 15:24:34.725597'),(256,'home','0002_remove_prepack_description','2017-07-20 15:24:45.163074'),(257,'home','0003_prepack_description','2017-07-20 15:24:45.172337'),(258,'home','0004_remove_prepack_description','2017-07-20 15:24:45.175284'),(259,'home','0005_auto_20170720_0817','2017-07-20 15:24:45.178006'),(260,'reviews','0001_initial','2017-07-20 15:24:45.180769'),(261,'reviews','0002_auto_20170720_0817','2017-07-20 15:24:45.183472'),(262,'home','0006_auto_20170720_0825','2017-07-20 15:25:29.530318'),(263,'reviews','0003_review_reviewimage','2017-07-20 15:25:29.735331'),(264,'home','0007_remove_customfacepack_questionnaire','2017-07-20 15:28:03.963461'),(265,'home','0008_customfacepack_questionnaire','2017-07-20 15:28:13.301027'),(266,'payments','0002_auto_20170724_1113','2017-07-24 18:13:24.564237'),(267,'userregistration','0009_forgotpass','2017-07-31 20:50:29.057830'),(268,'home','0009_faq','2017-08-01 05:49:09.390315'),(269,'home','0010_auto_20170801_1645','2017-08-01 23:45:09.477673'),(270,'cart','0003_cart_subtype','2017-08-02 00:17:13.220420'),(271,'home','0011_auto_20170801_1717','2017-08-02 00:17:13.323919'),(272,'payments','0003_purchasehistory_subtype','2017-08-02 00:19:06.445370'),(273,'home','0012_item_price_single','2017-08-02 01:27:29.092194'),(274,'home','0013_auto_20170821_1729','2017-08-22 00:29:40.817030'),(275,'payments','0004_promo','2017-08-22 00:29:40.845131'),(276,'home','0014_contact_disclaimer_privacy','2017-08-22 00:56:44.211680');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_option`
--

DROP TABLE IF EXISTS `facepackwizard_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `helper` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_option`
--

LOCK TABLES `facepackwizard_option` WRITE;
/*!40000 ALTER TABLE `facepackwizard_option` DISABLE KEYS */;
INSERT INTO `facepackwizard_option` VALUES (1,'< 18',''),(2,'18-29',''),(3,'30-39',''),(4,'40-49',''),(5,'50-59',''),(6,'60 +',''),(7,'Male',''),(8,'Female',''),(9,'Dry',''),(10,'Humid',''),(11,'Neither Dry nor Humid',''),(12,'Tropical',''),(13,'Never',''),(14,'Rarely',''),(15,'Sometimes',''),(16,'Always',''),(17,'Minimal','Cleanse'),(18,'Basic','Cleanse + Moisturize'),(19,'Moderate','Cleanse + Exfoliate + Tone + Moisturize'),(20,'Advanced','Cleanse + Tone + Moisturize + Face Mask once or twice a week'),(22,'Not Applicable',''),(23,'Oily',''),(24,'Dry','Less or No Oil'),(25,'Normal','Neither Oily nor Dry'),(30,'Clog Pore',''),(31,'Mild Acne',''),(32,'Consistent Acne',''),(33,'Oily T-zone (forehead, nose & chin)',''),(34,'Anti-Aging',''),(35,'Redness',''),(36,'Sun Damage',''),(37,'Dehydrated',''),(38,'Large Pores',''),(39,'Tired and Dull',''),(40,'Sensitive Skin',''),(41,'Brown spots or blemishes','');
/*!40000 ALTER TABLE `facepackwizard_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_question`
--

DROP TABLE IF EXISTS `facepackwizard_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `why` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_question`
--

LOCK TABLES `facepackwizard_question` WRITE;
/*!40000 ALTER TABLE `facepackwizard_question` DISABLE KEYS */;
INSERT INTO `facepackwizard_question` VALUES (1,'What\'s your age?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(2,'What\'s your gender?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(3,'What is your current environment?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(4,'How often do you apply sunscreen?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(5,'What best describes your morning skin routine?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(6,'What best describes your evening skin routine?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(7,'What is your Skin Type?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(8,'Pick Your Top 3 Skin Concerns','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit');
/*!40000 ALTER TABLE `facepackwizard_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_questionnaire`
--

DROP TABLE IF EXISTS `facepackwizard_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_questionnaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facepackwizard_qu_option_id_2d213f38_fk_facepackwizard_option_id` (`option_id`),
  KEY `facepackwizar_question_id_d3625d75_fk_facepackwizard_question_id` (`question_id`),
  CONSTRAINT `facepackwizar_question_id_d3625d75_fk_facepackwizard_question_id` FOREIGN KEY (`question_id`) REFERENCES `facepackwizard_question` (`id`),
  CONSTRAINT `facepackwizard_qu_option_id_2d213f38_fk_facepackwizard_option_id` FOREIGN KEY (`option_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_questionnaire`
--

LOCK TABLES `facepackwizard_questionnaire` WRITE;
/*!40000 ALTER TABLE `facepackwizard_questionnaire` DISABLE KEYS */;
INSERT INTO `facepackwizard_questionnaire` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,2),(9,9,3),(10,10,3),(11,11,3),(12,12,3),(13,13,4),(14,14,4),(15,15,4),(16,16,4),(17,17,5),(18,18,5),(19,19,5),(20,20,5),(21,22,5),(22,17,6),(23,18,6),(24,19,6),(25,20,6),(26,22,6),(32,23,7),(33,24,7),(34,25,7),(37,30,8),(38,31,8),(39,32,8),(40,33,8),(41,34,8),(42,35,8),(43,36,8),(44,37,8),(45,38,8),(46,39,8),(47,40,8),(48,41,8);
/*!40000 ALTER TABLE `facepackwizard_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_questionnaireentry`
--

DROP TABLE IF EXISTS `facepackwizard_questionnaireentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_questionnaireentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `wizard_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facepackwizard_qu_option_id_b1ea392d_fk_facepackwizard_option_id` (`option_id`),
  KEY `facepackwizar_question_id_aa539d35_fk_facepackwizard_question_id` (`question_id`),
  KEY `fa_wizard_id_e619abf0_fk_facepackwizard_questionnaireuserdata_id` (`wizard_id`),
  CONSTRAINT `fa_wizard_id_e619abf0_fk_facepackwizard_questionnaireuserdata_id` FOREIGN KEY (`wizard_id`) REFERENCES `facepackwizard_questionnaireuserdata` (`id`),
  CONSTRAINT `facepackwizar_question_id_aa539d35_fk_facepackwizard_question_id` FOREIGN KEY (`question_id`) REFERENCES `facepackwizard_question` (`id`),
  CONSTRAINT `facepackwizard_qu_option_id_b1ea392d_fk_facepackwizard_option_id` FOREIGN KEY (`option_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1861 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_questionnaireentry`
--

LOCK TABLES `facepackwizard_questionnaireentry` WRITE;
/*!40000 ALTER TABLE `facepackwizard_questionnaireentry` DISABLE KEYS */;
INSERT INTO `facepackwizard_questionnaireentry` VALUES (211,3,1,22),(212,7,2,22),(213,10,3,22),(214,13,4,22),(215,17,5,22),(216,17,6,22),(217,25,7,22),(218,31,8,22),(219,33,8,22),(220,37,8,22),(221,3,1,23),(222,7,2,23),(223,10,3,23),(224,13,4,23),(225,17,5,23),(226,17,6,23),(227,24,7,23),(228,31,8,23),(229,37,8,23),(230,39,8,23),(231,4,1,24),(232,8,2,24),(233,11,3,24),(234,15,4,24),(235,20,5,24),(236,20,6,24),(237,25,7,24),(238,33,8,24),(239,34,8,24),(240,40,8,24),(241,4,1,25),(242,8,2,25),(243,11,3,25),(244,15,4,25),(245,19,5,25),(246,19,6,25),(247,24,7,25),(248,32,8,25),(249,33,8,25),(250,38,8,25),(251,4,1,26),(252,8,2,26),(253,11,3,26),(254,15,4,26),(255,19,5,26),(256,19,6,26),(257,24,7,26),(258,33,8,26),(259,38,8,26),(260,39,8,26),(261,4,1,27),(262,8,2,27),(263,11,3,27),(264,15,4,27),(265,19,5,27),(266,19,6,27),(267,24,7,27),(268,33,8,27),(269,34,8,27),(270,40,8,27),(271,3,1,28),(272,7,2,28),(273,10,3,28),(274,14,4,28),(275,19,5,28),(276,19,6,28),(277,24,7,28),(278,32,8,28),(279,33,8,28),(280,38,8,28),(281,3,1,29),(282,7,2,29),(283,10,3,29),(284,14,4,29),(285,19,5,29),(286,19,6,29),(287,24,7,29),(288,32,8,29),(289,33,8,29),(290,38,8,29),(291,3,1,30),(292,7,2,30),(293,10,3,30),(294,14,4,30),(295,19,5,30),(296,19,6,30),(297,24,7,30),(298,32,8,30),(299,33,8,30),(300,38,8,30),(301,3,1,31),(302,7,2,31),(303,10,3,31),(304,14,4,31),(305,19,5,31),(306,19,6,31),(307,24,7,31),(308,32,8,31),(309,33,8,31),(310,39,8,31),(311,4,1,32),(312,8,2,32),(313,11,3,32),(314,15,4,32),(315,19,5,32),(316,19,6,32),(317,24,7,32),(318,33,8,32),(319,34,8,32),(320,40,8,32),(321,3,1,33),(322,7,2,33),(323,10,3,33),(324,14,4,33),(325,18,5,33),(326,18,6,33),(327,23,7,33),(328,30,8,33),(329,31,8,33),(330,37,8,33),(331,3,1,34),(332,7,2,34),(333,10,3,34),(334,14,4,34),(335,19,5,34),(336,19,6,34),(337,24,7,34),(338,32,8,34),(339,33,8,34),(340,38,8,34),(341,4,1,35),(342,8,2,35),(343,11,3,35),(344,15,4,35),(345,19,5,35),(346,19,6,35),(347,24,7,35),(348,33,8,35),(349,39,8,35),(350,40,8,35),(351,3,1,36),(352,7,2,36),(353,10,3,36),(354,14,4,36),(355,18,5,36),(356,18,6,36),(357,23,7,36),(358,32,8,36),(359,33,8,36),(360,34,8,36),(361,3,1,37),(362,7,2,37),(363,10,3,37),(364,14,4,37),(365,19,5,37),(366,19,6,37),(367,24,7,37),(368,32,8,37),(369,33,8,37),(370,38,8,37),(371,3,1,38),(372,7,2,38),(373,10,3,38),(374,14,4,38),(375,18,5,38),(376,18,6,38),(377,23,7,38),(378,32,8,38),(379,38,8,38),(380,39,8,38),(381,3,1,39),(382,7,2,39),(383,10,3,39),(384,14,4,39),(385,19,5,39),(386,19,6,39),(387,24,7,39),(388,32,8,39),(389,33,8,39),(390,38,8,39),(391,3,1,40),(392,7,2,40),(393,10,3,40),(394,14,4,40),(395,19,5,40),(396,19,6,40),(397,24,7,40),(398,32,8,40),(399,33,8,40),(400,39,8,40),(401,4,1,41),(402,8,2,41),(403,11,3,41),(404,15,4,41),(405,19,5,41),(406,19,6,41),(407,24,7,41),(408,33,8,41),(409,34,8,41),(410,40,8,41),(411,2,1,42),(412,7,2,42),(413,10,3,42),(414,14,4,42),(415,18,5,42),(416,18,6,42),(417,23,7,42),(418,32,8,42),(419,33,8,42),(420,39,8,42),(421,3,1,43),(422,7,2,43),(423,10,3,43),(424,14,4,43),(425,18,5,43),(426,18,6,43),(427,23,7,43),(428,32,8,43),(429,33,8,43),(430,39,8,43),(431,4,1,44),(432,8,2,44),(433,11,3,44),(434,15,4,44),(435,20,5,44),(436,20,6,44),(437,25,7,44),(438,34,8,44),(439,38,8,44),(440,39,8,44),(441,4,1,45),(442,8,2,45),(443,11,3,45),(444,15,4,45),(445,20,5,45),(446,20,6,45),(447,25,7,45),(448,33,8,45),(449,34,8,45),(450,40,8,45),(451,3,1,46),(452,7,2,46),(453,10,3,46),(454,14,4,46),(455,18,5,46),(456,18,6,46),(457,23,7,46),(458,32,8,46),(459,33,8,46),(460,40,8,46),(461,3,1,47),(462,7,2,47),(463,10,3,47),(464,14,4,47),(465,19,5,47),(466,19,6,47),(467,24,7,47),(468,32,8,47),(469,33,8,47),(470,40,8,47),(471,3,1,48),(472,7,2,48),(473,10,3,48),(474,14,4,48),(475,19,5,48),(476,19,6,48),(477,24,7,48),(478,33,8,48),(479,39,8,48),(480,41,8,48),(481,4,1,49),(482,8,2,49),(483,11,3,49),(484,15,4,49),(485,20,5,49),(486,20,6,49),(487,25,7,49),(488,33,8,49),(489,34,8,49),(490,39,8,49),(491,3,1,50),(492,7,2,50),(493,10,3,50),(494,14,4,50),(495,19,5,50),(496,19,6,50),(497,24,7,50),(498,32,8,50),(499,33,8,50),(500,39,8,50),(501,4,1,51),(502,8,2,51),(503,11,3,51),(504,15,4,51),(505,19,5,51),(506,19,6,51),(507,24,7,51),(508,33,8,51),(509,39,8,51),(510,40,8,51),(511,4,1,52),(512,8,2,52),(513,11,3,52),(514,15,4,52),(515,20,5,52),(516,20,6,52),(517,25,7,52),(518,32,8,52),(519,34,8,52),(520,38,8,52),(521,4,1,53),(522,8,2,53),(523,11,3,53),(524,15,4,53),(525,19,5,53),(526,19,6,53),(527,24,7,53),(528,33,8,53),(529,38,8,53),(530,39,8,53),(531,4,1,54),(532,8,2,54),(533,11,3,54),(534,15,4,54),(535,19,5,54),(536,19,6,54),(537,24,7,54),(538,33,8,54),(539,39,8,54),(540,40,8,54),(541,4,1,55),(542,8,2,55),(543,11,3,55),(544,15,4,55),(545,19,5,55),(546,19,6,55),(547,24,7,55),(548,33,8,55),(549,39,8,55),(550,40,8,55),(551,4,1,56),(552,8,2,56),(553,11,3,56),(554,15,4,56),(555,20,5,56),(556,20,6,56),(557,23,7,56),(558,30,8,56),(559,31,8,56),(560,37,8,56),(561,4,1,57),(562,8,2,57),(563,11,3,57),(564,15,4,57),(565,20,5,57),(566,20,6,57),(567,25,7,57),(568,33,8,57),(569,34,8,57),(570,39,8,57),(571,3,1,58),(572,7,2,58),(573,10,3,58),(574,14,4,58),(575,18,5,58),(576,19,6,58),(577,24,7,58),(578,33,8,58),(579,38,8,58),(580,39,8,58),(581,3,1,59),(582,7,2,59),(583,10,3,59),(584,14,4,59),(585,18,5,59),(586,19,6,59),(587,24,7,59),(588,33,8,59),(589,38,8,59),(590,39,8,59),(591,3,1,60),(592,7,2,60),(593,10,3,60),(594,14,4,60),(595,18,5,60),(596,18,6,60),(597,23,7,60),(598,32,8,60),(599,33,8,60),(600,39,8,60),(601,3,1,61),(602,7,2,61),(603,10,3,61),(604,14,4,61),(605,19,5,61),(606,19,6,61),(607,24,7,61),(608,33,8,61),(609,38,8,61),(610,39,8,61),(611,4,1,62),(612,8,2,62),(613,11,3,62),(614,15,4,62),(615,19,5,62),(616,19,6,62),(617,24,7,62),(618,33,8,62),(619,39,8,62),(620,40,8,62),(621,3,1,63),(622,7,2,63),(623,10,3,63),(624,14,4,63),(625,19,5,63),(626,19,6,63),(627,24,7,63),(628,33,8,63),(629,39,8,63),(630,40,8,63),(631,3,1,64),(632,7,2,64),(633,10,3,64),(634,14,4,64),(635,18,5,64),(636,18,6,64),(637,23,7,64),(638,32,8,64),(639,38,8,64),(640,39,8,64),(641,4,1,65),(642,8,2,65),(643,11,3,65),(644,15,4,65),(645,19,5,65),(646,19,6,65),(647,24,7,65),(648,33,8,65),(649,39,8,65),(650,40,8,65),(651,3,1,66),(652,7,2,66),(653,10,3,66),(654,14,4,66),(655,19,5,66),(656,19,6,66),(657,25,7,66),(658,34,8,66),(659,35,8,66),(660,40,8,66),(661,3,1,67),(662,7,2,67),(663,10,3,67),(664,14,4,67),(665,19,5,67),(666,19,6,67),(667,25,7,67),(668,34,8,67),(669,35,8,67),(670,40,8,67),(671,4,1,68),(672,8,2,68),(673,11,3,68),(674,15,4,68),(675,19,5,68),(676,19,6,68),(677,25,7,68),(678,33,8,68),(679,39,8,68),(680,40,8,68),(681,3,1,69),(682,7,2,69),(683,10,3,69),(684,14,4,69),(685,18,5,69),(686,18,6,69),(687,25,7,69),(688,34,8,69),(689,35,8,69),(690,40,8,69),(691,3,1,70),(692,7,2,70),(693,10,3,70),(694,14,4,70),(695,19,5,70),(696,19,6,70),(697,24,7,70),(698,33,8,70),(699,39,8,70),(700,40,8,70),(701,4,1,71),(702,8,2,71),(703,11,3,71),(704,15,4,71),(705,19,5,71),(706,19,6,71),(707,23,7,71),(708,30,8,71),(709,31,8,71),(710,40,8,71),(711,3,1,72),(712,7,2,72),(713,10,3,72),(714,14,4,72),(715,19,5,72),(716,19,6,72),(717,24,7,72),(718,33,8,72),(719,39,8,72),(720,40,8,72),(721,3,1,73),(722,7,2,73),(723,10,3,73),(724,14,4,73),(725,19,5,73),(726,19,6,73),(727,24,7,73),(728,32,8,73),(729,39,8,73),(730,40,8,73),(731,4,1,74),(732,8,2,74),(733,11,3,74),(734,15,4,74),(735,19,5,74),(736,19,6,74),(737,24,7,74),(738,33,8,74),(739,39,8,74),(740,40,8,74),(741,3,1,75),(742,8,2,75),(743,10,3,75),(744,15,4,75),(745,19,5,75),(746,18,6,75),(747,25,7,75),(748,33,8,75),(749,39,8,75),(750,40,8,75),(751,3,1,76),(752,7,2,76),(753,10,3,76),(754,14,4,76),(755,19,5,76),(756,19,6,76),(757,24,7,76),(758,32,8,76),(759,33,8,76),(760,39,8,76),(761,3,1,77),(762,8,2,77),(763,10,3,77),(764,16,4,77),(765,20,5,77),(766,20,6,77),(767,24,7,77),(768,30,8,77),(769,34,8,77),(770,40,8,77),(771,3,1,78),(772,8,2,78),(773,10,3,78),(774,14,4,78),(775,19,5,78),(776,20,6,78),(777,25,7,78),(778,31,8,78),(779,37,8,78),(780,40,8,78),(781,3,1,79),(782,8,2,79),(783,10,3,79),(784,15,4,79),(785,19,5,79),(786,20,6,79),(787,25,7,79),(788,31,8,79),(789,35,8,79),(790,40,8,79),(791,3,1,80),(792,7,2,80),(793,11,3,80),(794,14,4,80),(795,19,5,80),(796,18,6,80),(797,23,7,80),(798,33,8,80),(799,35,8,80),(800,40,8,80),(801,3,1,81),(802,8,2,81),(803,10,3,81),(804,14,4,81),(805,19,5,81),(806,20,6,81),(807,24,7,81),(808,35,8,81),(809,36,8,81),(810,40,8,81),(811,3,1,82),(812,7,2,82),(813,10,3,82),(814,14,4,82),(815,19,5,82),(816,19,6,82),(817,24,7,82),(818,30,8,82),(819,31,8,82),(820,37,8,82),(821,3,1,83),(822,7,2,83),(823,10,3,83),(824,14,4,83),(825,18,5,83),(826,18,6,83),(827,23,7,83),(828,32,8,83),(829,33,8,83),(830,39,8,83),(831,3,1,84),(832,7,2,84),(833,10,3,84),(834,15,4,84),(835,19,5,84),(836,19,6,84),(837,24,7,84),(838,33,8,84),(839,40,8,84),(840,41,8,84),(841,3,1,85),(842,7,2,85),(843,10,3,85),(844,14,4,85),(845,19,5,85),(846,19,6,85),(847,24,7,85),(848,32,8,85),(849,38,8,85),(850,40,8,85),(851,4,1,86),(852,7,2,86),(853,10,3,86),(854,14,4,86),(855,18,5,86),(856,17,6,86),(857,23,7,86),(858,34,8,86),(859,35,8,86),(860,40,8,86),(861,3,1,87),(862,7,2,87),(863,9,3,87),(864,15,4,87),(865,17,5,87),(866,17,6,87),(867,23,7,87),(868,34,8,87),(869,39,8,87),(870,40,8,87),(871,3,1,88),(872,7,2,88),(873,9,3,88),(874,15,4,88),(875,22,5,88),(876,20,6,88),(877,25,7,88),(878,30,8,88),(879,34,8,88),(880,38,8,88),(881,3,1,89),(882,7,2,89),(883,10,3,89),(884,13,4,89),(885,19,5,89),(886,18,6,89),(887,23,7,89),(888,32,8,89),(889,37,8,89),(890,38,8,89),(891,4,1,90),(892,8,2,90),(893,11,3,90),(894,15,4,90),(895,19,5,90),(896,19,6,90),(897,24,7,90),(898,33,8,90),(899,38,8,90),(900,39,8,90),(901,3,1,91),(902,7,2,91),(903,10,3,91),(904,14,4,91),(905,18,5,91),(906,18,6,91),(907,23,7,91),(908,32,8,91),(909,39,8,91),(910,40,8,91),(911,3,1,92),(912,7,2,92),(913,10,3,92),(914,14,4,92),(915,18,5,92),(916,19,6,92),(917,24,7,92),(918,32,8,92),(919,38,8,92),(920,39,8,92),(921,4,1,93),(922,8,2,93),(923,11,3,93),(924,15,4,93),(925,19,5,93),(926,19,6,93),(927,24,7,93),(928,33,8,93),(929,39,8,93),(930,40,8,93),(931,4,1,94),(932,8,2,94),(933,11,3,94),(934,15,4,94),(935,19,5,94),(936,19,6,94),(937,24,7,94),(938,33,8,94),(939,39,8,94),(940,40,8,94),(941,2,1,95),(942,7,2,95),(943,10,3,95),(944,14,4,95),(945,18,5,95),(946,18,6,95),(947,23,7,95),(948,31,8,95),(949,35,8,95),(950,36,8,95),(951,3,1,96),(952,7,2,96),(953,10,3,96),(954,14,4,96),(955,18,5,96),(956,18,6,96),(957,23,7,96),(958,32,8,96),(959,38,8,96),(960,40,8,96),(961,3,1,97),(962,7,2,97),(963,9,3,97),(964,14,4,97),(965,18,5,97),(966,18,6,97),(967,24,7,97),(968,31,8,97),(969,38,8,97),(970,40,8,97),(971,3,1,98),(972,7,2,98),(973,10,3,98),(974,14,4,98),(975,19,5,98),(976,19,6,98),(977,24,7,98),(978,33,8,98),(979,39,8,98),(980,40,8,98),(981,3,1,99),(982,8,2,99),(983,10,3,99),(984,15,4,99),(985,19,5,99),(986,19,6,99),(987,24,7,99),(988,34,8,99),(989,39,8,99),(990,40,8,99),(991,3,1,100),(992,7,2,100),(993,10,3,100),(994,14,4,100),(995,18,5,100),(996,18,6,100),(997,23,7,100),(998,30,8,100),(999,31,8,100),(1000,37,8,100),(1001,3,1,101),(1002,7,2,101),(1003,10,3,101),(1004,14,4,101),(1005,18,5,101),(1006,18,6,101),(1007,23,7,101),(1008,32,8,101),(1009,39,8,101),(1010,40,8,101),(1011,4,1,102),(1012,8,2,102),(1013,11,3,102),(1014,15,4,102),(1015,20,5,102),(1016,20,6,102),(1017,25,7,102),(1018,34,8,102),(1019,39,8,102),(1020,40,8,102),(1021,3,1,103),(1022,7,2,103),(1023,10,3,103),(1024,14,4,103),(1025,19,5,103),(1026,19,6,103),(1027,24,7,103),(1028,33,8,103),(1029,37,8,103),(1030,38,8,103),(1031,3,1,104),(1032,7,2,104),(1033,10,3,104),(1034,14,4,104),(1035,19,5,104),(1036,19,6,104),(1037,24,7,104),(1038,33,8,104),(1039,39,8,104),(1040,40,8,104),(1041,3,1,105),(1042,7,2,105),(1043,10,3,105),(1044,14,4,105),(1045,19,5,105),(1046,19,6,105),(1047,24,7,105),(1048,33,8,105),(1049,39,8,105),(1050,40,8,105),(1051,3,1,106),(1052,7,2,106),(1053,10,3,106),(1054,14,4,106),(1055,18,5,106),(1056,18,6,106),(1057,23,7,106),(1058,33,8,106),(1059,39,8,106),(1060,40,8,106),(1061,3,1,107),(1062,7,2,107),(1063,10,3,107),(1064,14,4,107),(1065,18,5,107),(1066,19,6,107),(1067,24,7,107),(1068,32,8,107),(1069,38,8,107),(1070,39,8,107),(1071,3,1,108),(1072,7,2,108),(1073,10,3,108),(1074,14,4,108),(1075,19,5,108),(1076,19,6,108),(1077,24,7,108),(1078,32,8,108),(1079,38,8,108),(1080,39,8,108),(1081,2,1,109),(1082,7,2,109),(1083,10,3,109),(1084,14,4,109),(1085,18,5,109),(1086,18,6,109),(1087,23,7,109),(1088,31,8,109),(1089,35,8,109),(1090,36,8,109),(1091,4,1,110),(1092,8,2,110),(1093,11,3,110),(1094,15,4,110),(1095,19,5,110),(1096,19,6,110),(1097,24,7,110),(1098,32,8,110),(1099,33,8,110),(1100,39,8,110),(1101,2,1,111),(1102,7,2,111),(1103,10,3,111),(1104,14,4,111),(1105,18,5,111),(1106,18,6,111),(1107,23,7,111),(1108,31,8,111),(1109,35,8,111),(1110,39,8,111),(1111,3,1,112),(1112,7,2,112),(1113,10,3,112),(1114,14,4,112),(1115,18,5,112),(1116,18,6,112),(1117,23,7,112),(1118,32,8,112),(1119,33,8,112),(1120,39,8,112),(1121,3,1,113),(1122,7,2,113),(1123,10,3,113),(1124,14,4,113),(1125,18,5,113),(1126,19,6,113),(1127,24,7,113),(1128,31,8,113),(1129,32,8,113),(1130,36,8,113),(1131,2,1,114),(1132,7,2,114),(1133,10,3,114),(1134,14,4,114),(1135,18,5,114),(1136,18,6,114),(1137,23,7,114),(1138,32,8,114),(1139,35,8,114),(1140,36,8,114),(1141,3,1,115),(1142,7,2,115),(1143,10,3,115),(1144,14,4,115),(1145,19,5,115),(1146,19,6,115),(1147,24,7,115),(1148,32,8,115),(1149,33,8,115),(1150,39,8,115),(1151,3,1,116),(1152,7,2,116),(1153,10,3,116),(1154,14,4,116),(1155,19,5,116),(1156,19,6,116),(1157,24,7,116),(1158,32,8,116),(1159,38,8,116),(1160,39,8,116),(1161,3,1,117),(1162,7,2,117),(1163,10,3,117),(1164,14,4,117),(1165,18,5,117),(1166,18,6,117),(1167,23,7,117),(1168,32,8,117),(1169,33,8,117),(1170,39,8,117),(1171,3,1,118),(1172,8,2,118),(1173,10,3,118),(1174,14,4,118),(1175,19,5,118),(1176,19,6,118),(1177,24,7,118),(1178,32,8,118),(1179,38,8,118),(1180,39,8,118),(1181,3,1,119),(1182,7,2,119),(1183,10,3,119),(1184,14,4,119),(1185,19,5,119),(1186,19,6,119),(1187,24,7,119),(1188,32,8,119),(1189,33,8,119),(1190,38,8,119),(1191,3,1,120),(1192,7,2,120),(1193,10,3,120),(1194,14,4,120),(1195,19,5,120),(1196,19,6,120),(1197,24,7,120),(1198,32,8,120),(1199,33,8,120),(1200,38,8,120),(1201,3,1,121),(1202,7,2,121),(1203,10,3,121),(1204,14,4,121),(1205,19,5,121),(1206,19,6,121),(1207,24,7,121),(1208,32,8,121),(1209,33,8,121),(1210,38,8,121),(1211,3,1,122),(1212,7,2,122),(1213,10,3,122),(1214,14,4,122),(1215,19,5,122),(1216,19,6,122),(1217,24,7,122),(1218,32,8,122),(1219,33,8,122),(1220,38,8,122),(1221,3,1,123),(1222,7,2,123),(1223,10,3,123),(1224,14,4,123),(1225,19,5,123),(1226,19,6,123),(1227,24,7,123),(1228,32,8,123),(1229,33,8,123),(1230,38,8,123),(1231,3,1,124),(1232,7,2,124),(1233,10,3,124),(1234,14,4,124),(1235,19,5,124),(1236,19,6,124),(1237,24,7,124),(1238,32,8,124),(1239,33,8,124),(1240,38,8,124),(1241,3,1,125),(1242,7,2,125),(1243,10,3,125),(1244,14,4,125),(1245,19,5,125),(1246,19,6,125),(1247,24,7,125),(1248,32,8,125),(1249,33,8,125),(1250,34,8,125),(1251,3,1,126),(1252,7,2,126),(1253,10,3,126),(1254,14,4,126),(1255,18,5,126),(1256,18,6,126),(1257,23,7,126),(1258,32,8,126),(1259,33,8,126),(1260,41,8,126),(1261,3,1,127),(1262,8,2,127),(1263,10,3,127),(1264,14,4,127),(1265,18,5,127),(1266,18,6,127),(1267,24,7,127),(1268,32,8,127),(1269,37,8,127),(1270,41,8,127),(1271,3,1,128),(1272,7,2,128),(1273,10,3,128),(1274,14,4,128),(1275,19,5,128),(1276,19,6,128),(1277,24,7,128),(1278,32,8,128),(1279,33,8,128),(1280,41,8,128),(1281,3,1,129),(1282,7,2,129),(1283,10,3,129),(1284,14,4,129),(1285,19,5,129),(1286,19,6,129),(1287,24,7,129),(1288,32,8,129),(1289,33,8,129),(1290,41,8,129),(1291,3,1,130),(1292,7,2,130),(1293,10,3,130),(1294,14,4,130),(1295,18,5,130),(1296,18,6,130),(1297,24,7,130),(1298,31,8,130),(1299,34,8,130),(1300,39,8,130),(1301,3,1,131),(1302,7,2,131),(1303,10,3,131),(1304,14,4,131),(1305,19,5,131),(1306,18,6,131),(1307,24,7,131),(1308,32,8,131),(1309,35,8,131),(1310,40,8,131),(1311,2,1,132),(1312,7,2,132),(1313,10,3,132),(1314,14,4,132),(1315,18,5,132),(1316,18,6,132),(1317,23,7,132),(1318,34,8,132),(1319,40,8,132),(1320,41,8,132),(1321,3,1,133),(1322,7,2,133),(1323,10,3,133),(1324,14,4,133),(1325,19,5,133),(1326,19,6,133),(1327,24,7,133),(1328,32,8,133),(1329,33,8,133),(1330,38,8,133),(1331,3,1,134),(1332,7,2,134),(1333,11,3,134),(1334,14,4,134),(1335,18,5,134),(1336,19,6,134),(1337,24,7,134),(1338,31,8,134),(1339,32,8,134),(1340,38,8,134),(1341,3,1,135),(1342,7,2,135),(1343,11,3,135),(1344,13,4,135),(1345,18,5,135),(1346,18,6,135),(1347,25,7,135),(1348,30,8,135),(1349,32,8,135),(1350,37,8,135),(1351,2,1,136),(1352,7,2,136),(1353,10,3,136),(1354,14,4,136),(1355,17,5,136),(1356,19,6,136),(1357,24,7,136),(1358,31,8,136),(1359,35,8,136),(1360,40,8,136),(1361,2,1,137),(1362,7,2,137),(1363,10,3,137),(1364,14,4,137),(1365,19,5,137),(1366,19,6,137),(1367,24,7,137),(1368,31,8,137),(1369,32,8,137),(1370,33,8,137),(1371,3,1,138),(1372,7,2,138),(1373,9,3,138),(1374,14,4,138),(1375,17,5,138),(1376,17,6,138),(1377,25,7,138),(1378,34,8,138),(1379,37,8,138),(1380,39,8,138),(1381,3,1,139),(1382,8,2,139),(1383,10,3,139),(1384,14,4,139),(1385,18,5,139),(1386,19,6,139),(1387,23,7,139),(1388,33,8,139),(1389,37,8,139),(1390,39,8,139),(1391,3,1,140),(1392,7,2,140),(1393,10,3,140),(1394,14,4,140),(1395,19,5,140),(1396,19,6,140),(1397,25,7,140),(1398,33,8,140),(1399,40,8,140),(1400,41,8,140),(1401,2,1,141),(1402,8,2,141),(1403,9,3,141),(1404,13,4,141),(1405,17,5,141),(1406,17,6,141),(1407,25,7,141),(1408,33,8,141),(1409,34,8,141),(1410,41,8,141),(1411,3,1,142),(1412,8,2,142),(1413,11,3,142),(1414,15,4,142),(1415,19,5,142),(1416,19,6,142),(1417,25,7,142),(1418,39,8,142),(1419,40,8,142),(1420,41,8,142),(1421,3,1,143),(1422,7,2,143),(1423,10,3,143),(1424,14,4,143),(1425,18,5,143),(1426,18,6,143),(1427,24,7,143),(1428,31,8,143),(1429,32,8,143),(1430,33,8,143),(1431,3,1,144),(1432,7,2,144),(1433,10,3,144),(1434,14,4,144),(1435,19,5,144),(1436,19,6,144),(1437,24,7,144),(1438,32,8,144),(1439,33,8,144),(1440,34,8,144),(1441,3,1,145),(1442,7,2,145),(1443,11,3,145),(1444,14,4,145),(1445,19,5,145),(1446,19,6,145),(1447,24,7,145),(1448,31,8,145),(1449,32,8,145),(1450,33,8,145),(1451,3,1,146),(1452,7,2,146),(1453,10,3,146),(1454,14,4,146),(1455,18,5,146),(1456,19,6,146),(1457,24,7,146),(1458,32,8,146),(1459,33,8,146),(1460,34,8,146),(1461,3,1,147),(1462,7,2,147),(1463,10,3,147),(1464,14,4,147),(1465,19,5,147),(1466,19,6,147),(1467,24,7,147),(1468,33,8,147),(1469,34,8,147),(1470,39,8,147),(1471,3,1,148),(1472,7,2,148),(1473,10,3,148),(1474,14,4,148),(1475,18,5,148),(1476,19,6,148),(1477,24,7,148),(1478,32,8,148),(1479,33,8,148),(1480,38,8,148),(1481,4,1,149),(1482,8,2,149),(1483,11,3,149),(1484,15,4,149),(1485,19,5,149),(1486,19,6,149),(1487,24,7,149),(1488,32,8,149),(1489,33,8,149),(1490,34,8,149),(1491,3,1,150),(1492,8,2,150),(1493,11,3,150),(1494,15,4,150),(1495,20,5,150),(1496,20,6,150),(1497,25,7,150),(1498,31,8,150),(1499,34,8,150),(1500,41,8,150),(1501,3,1,151),(1502,7,2,151),(1503,10,3,151),(1504,15,4,151),(1505,19,5,151),(1506,20,6,151),(1507,25,7,151),(1508,33,8,151),(1509,37,8,151),(1510,41,8,151),(1511,2,1,152),(1512,8,2,152),(1513,11,3,152),(1514,15,4,152),(1515,18,5,152),(1516,19,6,152),(1517,23,7,152),(1518,34,8,152),(1519,39,8,152),(1520,40,8,152),(1521,3,1,153),(1522,7,2,153),(1523,10,3,153),(1524,14,4,153),(1525,19,5,153),(1526,19,6,153),(1527,24,7,153),(1528,33,8,153),(1529,34,8,153),(1530,40,8,153),(1531,3,1,154),(1532,8,2,154),(1533,10,3,154),(1534,16,4,154),(1535,18,5,154),(1536,18,6,154),(1537,24,7,154),(1538,34,8,154),(1539,35,8,154),(1540,37,8,154),(1541,3,1,155),(1542,7,2,155),(1543,11,3,155),(1544,15,4,155),(1545,20,5,155),(1546,18,6,155),(1547,24,7,155),(1548,32,8,155),(1549,33,8,155),(1550,34,8,155),(1551,3,1,156),(1552,7,2,156),(1553,10,3,156),(1554,14,4,156),(1555,18,5,156),(1556,18,6,156),(1557,23,7,156),(1558,32,8,156),(1559,33,8,156),(1560,39,8,156),(1561,3,1,157),(1562,7,2,157),(1563,10,3,157),(1564,14,4,157),(1565,19,5,157),(1566,19,6,157),(1567,24,7,157),(1568,32,8,157),(1569,33,8,157),(1570,34,8,157),(1571,4,1,158),(1572,7,2,158),(1573,11,3,158),(1574,15,4,158),(1575,19,5,158),(1576,19,6,158),(1577,23,7,158),(1578,32,8,158),(1579,33,8,158),(1580,34,8,158),(1581,3,1,159),(1582,8,2,159),(1583,11,3,159),(1584,15,4,159),(1585,19,5,159),(1586,19,6,159),(1587,23,7,159),(1588,32,8,159),(1589,33,8,159),(1590,34,8,159),(1591,3,1,160),(1592,8,2,160),(1593,10,3,160),(1594,14,4,160),(1595,19,5,160),(1596,19,6,160),(1597,25,7,160),(1598,33,8,160),(1599,37,8,160),(1600,39,8,160),(1601,3,1,161),(1602,7,2,161),(1603,10,3,161),(1604,15,4,161),(1605,20,5,161),(1606,20,6,161),(1607,24,7,161),(1608,33,8,161),(1609,35,8,161),(1610,37,8,161),(1611,3,1,162),(1612,8,2,162),(1613,11,3,162),(1614,14,4,162),(1615,18,5,162),(1616,18,6,162),(1617,24,7,162),(1618,33,8,162),(1619,34,8,162),(1620,41,8,162),(1621,3,1,163),(1622,7,2,163),(1623,11,3,163),(1624,15,4,163),(1625,19,5,163),(1626,19,6,163),(1627,24,7,163),(1628,33,8,163),(1629,36,8,163),(1630,40,8,163),(1631,3,1,164),(1632,8,2,164),(1633,9,3,164),(1634,15,4,164),(1635,19,5,164),(1636,19,6,164),(1637,23,7,164),(1638,34,8,164),(1639,38,8,164),(1640,39,8,164),(1641,3,1,165),(1642,8,2,165),(1643,10,3,165),(1644,13,4,165),(1645,17,5,165),(1646,18,6,165),(1647,23,7,165),(1648,30,8,165),(1649,32,8,165),(1650,39,8,165),(1651,3,1,166),(1652,7,2,166),(1653,10,3,166),(1654,14,4,166),(1655,19,5,166),(1656,19,6,166),(1657,24,7,166),(1658,33,8,166),(1659,39,8,166),(1660,40,8,166),(1661,3,1,167),(1662,7,2,167),(1663,10,3,167),(1664,14,4,167),(1665,19,5,167),(1666,19,6,167),(1667,24,7,167),(1668,32,8,167),(1669,33,8,167),(1670,39,8,167),(1671,3,1,168),(1672,7,2,168),(1673,10,3,168),(1674,14,4,168),(1675,18,5,168),(1676,18,6,168),(1677,23,7,168),(1678,32,8,168),(1679,33,8,168),(1680,34,8,168),(1681,3,1,169),(1682,7,2,169),(1683,10,3,169),(1684,14,4,169),(1685,19,5,169),(1686,19,6,169),(1687,24,7,169),(1688,32,8,169),(1689,33,8,169),(1690,39,8,169),(1691,3,1,170),(1692,7,2,170),(1693,10,3,170),(1694,14,4,170),(1695,19,5,170),(1696,19,6,170),(1697,24,7,170),(1698,31,8,170),(1699,32,8,170),(1700,33,8,170),(1701,2,1,171),(1702,7,2,171),(1703,10,3,171),(1704,14,4,171),(1705,18,5,171),(1706,18,6,171),(1707,23,7,171),(1708,30,8,171),(1709,31,8,171),(1710,32,8,171),(1711,2,1,172),(1712,7,2,172),(1713,10,3,172),(1714,15,4,172),(1715,19,5,172),(1716,19,6,172),(1717,25,7,172),(1718,34,8,172),(1719,35,8,172),(1720,36,8,172),(1721,4,1,173),(1722,8,2,173),(1723,11,3,173),(1724,15,4,173),(1725,19,5,173),(1726,19,6,173),(1727,24,7,173),(1728,33,8,173),(1729,34,8,173),(1730,40,8,173),(1731,2,1,174),(1732,7,2,174),(1733,10,3,174),(1734,16,4,174),(1735,19,5,174),(1736,19,6,174),(1737,25,7,174),(1738,30,8,174),(1739,31,8,174),(1740,36,8,174),(1741,3,1,175),(1742,8,2,175),(1743,11,3,175),(1744,15,4,175),(1745,20,5,175),(1746,20,6,175),(1747,23,7,175),(1748,31,8,175),(1749,38,8,175),(1750,39,8,175),(1751,3,1,176),(1752,7,2,176),(1753,10,3,176),(1754,14,4,176),(1755,19,5,176),(1756,19,6,176),(1757,24,7,176),(1758,32,8,176),(1759,33,8,176),(1760,38,8,176),(1761,3,1,177),(1762,7,2,177),(1763,9,3,177),(1764,14,4,177),(1765,18,5,177),(1766,22,6,177),(1767,25,7,177),(1768,34,8,177),(1769,38,8,177),(1770,41,8,177),(1771,3,1,178),(1772,8,2,178),(1773,11,3,178),(1774,15,4,178),(1775,19,5,178),(1776,19,6,178),(1777,23,7,178),(1778,32,8,178),(1779,33,8,178),(1780,37,8,178),(1781,2,1,179),(1782,7,2,179),(1783,9,3,179),(1784,13,4,179),(1785,17,5,179),(1786,17,6,179),(1787,24,7,179),(1788,34,8,179),(1789,36,8,179),(1790,37,8,179),(1791,2,1,180),(1792,8,2,180),(1793,10,3,180),(1794,15,4,180),(1795,19,5,180),(1796,18,6,180),(1797,24,7,180),(1798,31,8,180),(1799,32,8,180),(1800,33,8,180),(1801,3,1,181),(1802,8,2,181),(1803,9,3,181),(1804,13,4,181),(1805,18,5,181),(1806,18,6,181),(1807,25,7,181),(1808,32,8,181),(1809,33,8,181),(1810,38,8,181),(1811,3,1,182),(1812,8,2,182),(1813,11,3,182),(1814,14,4,182),(1815,19,5,182),(1816,19,6,182),(1817,25,7,182),(1818,33,8,182),(1819,37,8,182),(1820,41,8,182),(1821,3,1,183),(1822,8,2,183),(1823,10,3,183),(1824,14,4,183),(1825,19,5,183),(1826,19,6,183),(1827,25,7,183),(1828,33,8,183),(1829,39,8,183),(1830,41,8,183),(1831,3,1,184),(1832,7,2,184),(1833,10,3,184),(1834,14,4,184),(1835,19,5,184),(1836,19,6,184),(1837,23,7,184),(1838,33,8,184),(1839,34,8,184),(1840,35,8,184),(1841,4,1,185),(1842,8,2,185),(1843,11,3,185),(1844,15,4,185),(1845,19,5,185),(1846,19,6,185),(1847,24,7,185),(1848,33,8,185),(1849,34,8,185),(1850,35,8,185),(1851,3,1,186),(1852,8,2,186),(1853,11,3,186),(1854,15,4,186),(1855,20,5,186),(1856,20,6,186),(1857,25,7,186),(1858,34,8,186),(1859,35,8,186),(1860,36,8,186);
/*!40000 ALTER TABLE `facepackwizard_questionnaireentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_questionnaireuserdata`
--

DROP TABLE IF EXISTS `facepackwizard_questionnaireuserdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_questionnaireuserdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdte` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facepackwizard_questionnaireuse_user_id_9c612c78_fk_auth_user_id` (`user_id`),
  CONSTRAINT `facepackwizard_questionnaireuse_user_id_9c612c78_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_questionnaireuserdata`
--

LOCK TABLES `facepackwizard_questionnaireuserdata` WRITE;
/*!40000 ALTER TABLE `facepackwizard_questionnaireuserdata` DISABLE KEYS */;
INSERT INTO `facepackwizard_questionnaireuserdata` VALUES (22,'2017-03-27 03:07:22.221344',2),(23,'2017-03-27 03:08:04.415462',2),(24,'2017-03-27 10:46:44.282338',2),(25,'2017-03-27 18:27:02.288941',NULL),(26,'2017-03-27 18:52:23.508208',NULL),(27,'2017-03-27 18:53:48.684633',NULL),(28,'2017-03-28 03:51:21.780021',NULL),(29,'2017-03-28 04:44:56.226889',NULL),(30,'2017-03-28 04:53:26.769509',NULL),(31,'2017-03-28 04:55:46.649578',NULL),(32,'2017-03-28 05:35:33.039542',NULL),(33,'2017-03-28 05:39:16.053483',NULL),(34,'2017-03-28 05:54:54.483432',NULL),(35,'2017-03-28 06:00:54.267612',NULL),(36,'2017-03-28 06:03:02.994196',NULL),(37,'2017-03-28 06:06:01.804523',NULL),(38,'2017-03-28 06:07:57.933148',NULL),(39,'2017-03-28 06:09:07.492552',NULL),(40,'2017-03-28 06:38:36.892278',NULL),(41,'2017-03-28 06:40:23.919357',NULL),(42,'2017-03-28 06:46:29.713604',NULL),(43,'2017-03-28 06:48:18.952272',NULL),(44,'2017-03-28 06:49:25.112560',NULL),(45,'2017-03-28 06:50:31.668343',NULL),(46,'2017-03-28 06:52:11.265205',NULL),(47,'2017-03-28 06:55:18.190278',NULL),(48,'2017-03-28 07:00:26.026318',NULL),(49,'2017-03-28 07:02:17.210086',NULL),(50,'2017-03-28 07:11:17.131388',NULL),(51,'2017-03-28 07:14:09.752134',2),(52,'2017-03-28 07:14:56.845383',2),(53,'2017-03-28 17:50:35.766361',NULL),(54,'2017-03-28 17:51:09.281467',NULL),(55,'2017-03-28 17:51:26.445961',NULL),(56,'2017-03-28 17:52:12.192255',NULL),(57,'2017-03-28 17:52:43.718747',NULL),(58,'2017-03-28 17:53:15.114172',NULL),(59,'2017-03-28 17:53:15.225951',NULL),(60,'2017-03-28 18:00:19.775949',NULL),(61,'2017-03-28 18:00:40.140250',NULL),(62,'2017-03-28 18:00:50.752061',NULL),(63,'2017-04-03 20:11:19.451585',2),(64,'2017-04-03 21:17:49.958839',1),(65,'2017-04-03 21:53:54.232230',1),(66,'2017-04-03 21:54:27.720982',1),(67,'2017-04-03 21:55:56.317739',1),(68,'2017-04-03 21:56:38.065764',1),(69,'2017-04-03 21:56:56.432094',1),(70,'2017-04-03 21:58:02.476861',1),(71,'2017-04-03 21:58:19.023668',1),(72,'2017-04-03 22:01:09.854798',1),(73,'2017-04-04 18:07:51.042245',2),(74,'2017-04-05 04:11:25.812479',NULL),(75,'2017-04-05 08:15:21.087669',3),(76,'2017-04-05 08:16:40.885433',3),(77,'2017-04-05 08:18:33.570240',3),(78,'2017-04-05 17:41:57.221662',6),(79,'2017-04-05 17:42:40.639547',6),(80,'2017-04-05 20:22:59.081247',2),(81,'2017-04-05 21:45:28.005887',6),(82,'2017-04-05 22:26:11.501948',2),(83,'2017-04-05 22:51:16.816520',NULL),(84,'2017-04-06 06:17:43.541355',2),(85,'2017-04-06 06:54:17.464266',2),(86,'2017-04-07 07:24:41.720872',2),(87,'2017-04-07 08:48:30.515680',2),(88,'2017-04-07 08:51:26.308284',2),(89,'2017-04-07 16:35:54.321621',193),(90,'2017-04-07 16:47:00.734560',2),(91,'2017-04-07 16:53:56.531469',2),(92,'2017-04-07 17:04:40.392594',2),(93,'2017-04-07 19:46:39.830445',2),(94,'2017-04-07 20:03:38.747762',2),(95,'2017-04-07 20:14:54.728447',2),(96,'2017-04-07 23:24:42.087524',2),(97,'2017-04-08 21:49:17.269753',2),(98,'2017-04-09 01:24:43.654708',2),(99,'2017-04-09 01:29:40.300451',3),(100,'2017-04-10 00:10:21.424740',2),(101,'2017-04-10 07:28:52.015152',2),(102,'2017-04-10 07:30:47.695571',2),(103,'2017-04-10 08:33:16.173255',2),(104,'2017-04-10 16:43:12.791612',2),(105,'2017-04-14 06:38:02.975094',2),(106,'2017-04-18 06:25:38.168875',1),(107,'2017-04-18 08:49:27.311125',2),(108,'2017-04-18 09:07:29.383005',2),(109,'2017-04-18 17:54:53.664870',2),(110,'2017-04-19 04:25:01.841899',2),(111,'2017-04-19 06:31:36.989960',1),(112,'2017-04-25 20:14:20.219814',2),(113,'2017-04-27 04:23:17.847752',2),(114,'2017-04-27 07:09:14.090536',2),(115,'2017-04-27 18:49:31.574928',2),(116,'2017-04-28 17:23:44.720619',243),(117,'2017-04-30 06:47:08.638814',2),(118,'2017-05-02 05:49:59.185921',2),(119,'2017-05-04 07:24:09.234015',2),(120,'2017-05-04 07:26:11.717311',2),(121,'2017-05-04 07:27:02.592732',2),(122,'2017-05-04 07:27:34.881660',2),(123,'2017-05-04 07:28:01.829179',2),(124,'2017-05-04 07:28:50.346255',2),(125,'2017-05-04 07:34:14.675009',2),(126,'2017-05-04 08:02:48.320943',2),(127,'2017-05-04 08:13:57.587434',2),(128,'2017-05-04 08:41:20.518102',2),(129,'2017-05-04 23:16:58.674002',2),(130,'2017-05-05 04:45:31.114070',2),(131,'2017-05-13 04:47:54.215038',2),(132,'2017-05-13 04:59:48.464039',2),(133,'2017-05-16 02:41:57.180374',2),(134,'2017-06-19 21:50:45.280153',1),(135,'2017-06-19 21:52:22.099179',1),(136,'2017-06-21 20:09:45.572130',2),(137,'2017-06-23 05:55:45.958459',2),(138,'2017-06-25 19:04:34.168236',307),(139,'2017-06-28 02:48:23.934147',308),(140,'2017-06-28 03:03:39.542779',309),(141,'2017-06-28 03:04:16.553764',310),(142,'2017-06-28 03:04:50.813293',311),(143,'2017-07-20 15:33:21.768611',312),(144,'2017-07-20 15:38:15.199180',2),(145,'2017-07-20 15:39:19.793834',2),(146,'2017-07-20 15:41:16.523836',2),(147,'2017-07-20 15:43:05.583912',2),(148,'2017-07-20 16:50:05.275725',2),(149,'2017-07-20 17:49:21.192338',2),(150,'2017-07-20 17:49:54.039504',317),(151,'2017-07-20 17:52:59.835874',317),(152,'2017-07-20 23:27:40.152395',318),(153,'2017-07-20 23:28:41.898498',2),(154,'2017-07-20 23:52:44.872230',6),(155,'2017-07-20 23:57:13.582005',6),(156,'2017-07-21 04:18:06.229101',321),(157,'2017-07-21 04:45:36.061622',323),(158,'2017-07-21 04:46:40.391563',323),(159,'2017-07-21 04:49:06.399351',323),(160,'2017-07-21 19:06:07.353915',326),(161,'2017-07-22 04:30:02.645130',2),(162,'2017-07-22 20:03:51.417433',327),(163,'2017-07-22 23:02:17.095534',328),(164,'2017-07-23 04:52:34.609399',330),(165,'2017-07-24 00:52:45.530750',331),(166,'2017-07-24 07:54:50.352076',2),(167,'2017-07-27 00:17:39.196949',334),(168,'2017-07-27 06:41:34.747913',2),(169,'2017-08-01 06:19:36.634845',2),(170,'2017-08-01 23:20:01.192208',NULL),(171,'2017-08-01 23:57:04.656191',2),(172,'2017-08-02 02:41:48.274559',2),(173,'2017-08-02 02:53:51.117163',2),(174,'2017-08-03 08:14:38.277504',2),(175,'2017-08-04 03:32:37.853398',NULL),(176,'2017-08-04 04:22:22.690875',2),(177,'2017-08-06 20:26:47.318239',345),(178,'2017-08-06 23:24:37.529242',346),(179,'2017-08-11 03:19:08.452718',347),(180,'2017-08-11 03:29:05.770373',347),(181,'2017-08-19 16:14:01.620129',348),(182,'2017-08-19 16:36:22.901732',349),(183,'2017-08-19 16:40:09.719247',350),(184,'2017-08-19 21:55:37.531372',351),(185,'2017-08-20 05:12:53.817609',2),(186,'2017-08-20 22:28:29.452791',2);
/*!40000 ALTER TABLE `facepackwizard_questionnaireuserdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_skinconcern`
--

DROP TABLE IF EXISTS `facepackwizard_skinconcern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_skinconcern` (
  `option_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`option_ptr_id`),
  CONSTRAINT `facepackwizar_option_ptr_id_f17147c2_fk_facepackwizard_option_id` FOREIGN KEY (`option_ptr_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_skinconcern`
--

LOCK TABLES `facepackwizard_skinconcern` WRITE;
/*!40000 ALTER TABLE `facepackwizard_skinconcern` DISABLE KEYS */;
INSERT INTO `facepackwizard_skinconcern` VALUES (30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41);
/*!40000 ALTER TABLE `facepackwizard_skinconcern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_skintype`
--

DROP TABLE IF EXISTS `facepackwizard_skintype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_skintype` (
  `option_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`option_ptr_id`),
  CONSTRAINT `facepackwizar_option_ptr_id_d9cbbe6c_fk_facepackwizard_option_id` FOREIGN KEY (`option_ptr_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_skintype`
--

LOCK TABLES `facepackwizard_skintype` WRITE;
/*!40000 ALTER TABLE `facepackwizard_skintype` DISABLE KEYS */;
INSERT INTO `facepackwizard_skintype` VALUES (23),(24),(25);
/*!40000 ALTER TABLE `facepackwizard_skintype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_base`
--

DROP TABLE IF EXISTS `home_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `skin_type_id` int(11) DEFAULT NULL,
  `helper` varchar(1000) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f_skin_type_id_46513bb4_fk_facepackwizard_skintype_option_ptr_id` (`skin_type_id`),
  CONSTRAINT `f_skin_type_id_46513bb4_fk_facepackwizard_skintype_option_ptr_id` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_base`
--

LOCK TABLES `home_base` WRITE;
/*!40000 ALTER TABLE `home_base` DISABLE KEYS */;
INSERT INTO `home_base` VALUES (1,'French green clay (not for sensitive skin)',23,'This is a unique blend of minerals that exfoliates, tightens pores and detoxifies while drinking up excess oil making way to a cleaner, fresher skin','images/base/F2F_Ingredients-french-green-clay_LcuWM9p.jpg','This is a unique blend of minerals that exfoliates, tightens pores and detoxifies while drinking up excess oil making way to a cleaner, fresher skin'),(2,'Bentonite clay',23,'This clay provides healing minerals to the skin and detoxifies to reveal clear, bright skin','images/base/F2F_Ingredients-Bentonite-Powder.jpg','This clay provides healing minerals to the skin and detoxifies to reveal clear, bright skin'),(3,'Fuller\'s earth',23,'Also known as beauty mud, Fuller\'s earth revitalizes the skin and leaves it polished and smooth','images/base/F2F_Ingredients-fullers-earth_9OXOVUG.jpg','Also known as beauty mud, Fuller\'s earth revitalizes the skin and leaves it polished and smooth'),(4,'Rassoul Clay',25,'Increases skin elasticity, evens skin tone, reduces blemishes and skin dryness or flakiness. This clay is negatively charged and draws out blackheads and toxins.','images/base/F2F_Ingredients-rhassoul-clay_PAIXUGw.jpg','Increases skin elasticity, evens skin tone, reduces blemishes and skin dryness or flakiness. This clay is negatively charged and draws out blackheads and toxins.'),(5,'Goat Milk',24,'Hydrates, brightens and firms skin','images/base/F2F_Ingredients-goat-milk_PsPwFSi.jpg','Hydrates, brightens and firms skin'),(6,'White Kaolin Clay',25,'Gently nourishes and calms the skin. Exfoliates without drying the skin.','images/base/F2F_Ingredients-white-kaolin-clay_deVZ913.jpg','Gently nourishes and calms the skin. Exfoliates without drying the skin.');
/*!40000 ALTER TABLE `home_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_contact`
--

DROP TABLE IF EXISTS `home_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_contact`
--

LOCK TABLES `home_contact` WRITE;
/*!40000 ALTER TABLE `home_contact` DISABLE KEYS */;
INSERT INTO `home_contact` VALUES (1,'Farms2Face is here to provide you more information and answer any questions you may have.'),(2,'Email: rupa.bhat@farms2face.com');
/*!40000 ALTER TABLE `home_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_customfacepack`
--

DROP TABLE IF EXISTS `home_customfacepack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_customfacepack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facepack_id` int(11) NOT NULL,
  `optional_ingredient_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `questionnaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_customfac_facepack_id_8dd71573_fk_home_facepack_item_ptr_id` (`facepack_id`),
  KEY `home_custo_optional_ingredient_id_256af5c6_fk_home_ingredient_id` (`optional_ingredient_id`),
  KEY `home_customfacepack_user_id_15ab891a_fk_auth_user_id` (`user_id`),
  KEY `home_customfacepack_recipe_id_be82e4a4_fk_home_recipe_id` (`recipe_id`),
  KEY `home_customfacepack_questionnaire_id_fb359e53_fk_facepackw` (`questionnaire_id`),
  CONSTRAINT `home_custo_optional_ingredient_id_256af5c6_fk_home_ingredient_id` FOREIGN KEY (`optional_ingredient_id`) REFERENCES `home_ingredient` (`id`),
  CONSTRAINT `home_customfac_facepack_id_8dd71573_fk_home_facepack_item_ptr_id` FOREIGN KEY (`facepack_id`) REFERENCES `home_facepack` (`item_ptr_id`),
  CONSTRAINT `home_customfacepack_questionnaire_id_fb359e53_fk_facepackw` FOREIGN KEY (`questionnaire_id`) REFERENCES `facepackwizard_questionnaireuserdata` (`id`),
  CONSTRAINT `home_customfacepack_recipe_id_be82e4a4_fk_home_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `home_recipe` (`id`),
  CONSTRAINT `home_customfacepack_user_id_15ab891a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1475 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_customfacepack`
--

LOCK TABLES `home_customfacepack` WRITE;
/*!40000 ALTER TABLE `home_customfacepack` DISABLE KEYS */;
INSERT INTO `home_customfacepack` VALUES (1295,446,NULL,15,2,NULL),(1296,446,NULL,20,2,NULL),(1297,446,NULL,24,2,NULL),(1298,447,NULL,15,2,NULL),(1299,447,NULL,20,2,NULL),(1300,447,NULL,24,2,NULL),(1301,448,2,15,2,NULL),(1302,448,5,20,2,NULL),(1303,448,31,24,2,NULL),(1304,449,NULL,15,2,NULL),(1305,449,NULL,20,2,NULL),(1306,449,NULL,24,2,NULL),(1307,450,2,15,2,NULL),(1308,450,5,20,2,NULL),(1309,450,31,24,2,NULL),(1313,452,NULL,15,2,NULL),(1314,452,NULL,16,2,NULL),(1315,452,NULL,17,2,NULL),(1316,453,NULL,15,2,NULL),(1317,453,NULL,16,2,NULL),(1318,453,NULL,24,2,NULL),(1319,454,NULL,14,2,NULL),(1320,454,NULL,17,2,NULL),(1321,454,NULL,22,2,NULL),(1322,455,8,14,2,NULL),(1323,455,19,17,2,NULL),(1324,455,30,22,2,NULL),(1325,456,NULL,15,294,NULL),(1326,456,NULL,16,294,NULL),(1327,456,NULL,17,294,NULL),(1328,457,NULL,15,2,NULL),(1329,457,NULL,18,2,NULL),(1330,457,NULL,23,2,NULL),(1331,458,NULL,5,2,NULL),(1332,458,NULL,11,2,NULL),(1333,458,NULL,12,2,NULL),(1334,471,NULL,15,2,NULL),(1335,471,NULL,16,2,NULL),(1336,471,NULL,21,2,NULL),(1337,472,NULL,14,2,NULL),(1338,472,NULL,18,2,NULL),(1339,472,NULL,23,2,NULL),(1340,473,2,14,2,NULL),(1341,473,8,15,2,NULL),(1342,473,38,16,2,NULL),(1343,474,5,29,307,NULL),(1344,474,10,32,307,NULL),(1345,474,14,34,307,NULL),(1346,475,NULL,14,312,143),(1347,475,NULL,15,312,143),(1348,475,NULL,16,312,143),(1349,476,2,14,312,143),(1350,476,8,15,312,143),(1351,476,38,16,312,143),(1352,477,NULL,14,2,145),(1353,477,NULL,15,2,145),(1354,477,NULL,16,2,145),(1355,478,2,14,2,145),(1356,478,8,15,2,145),(1357,478,38,16,2,145),(1358,479,NULL,26,317,150),(1359,479,NULL,29,317,150),(1360,479,NULL,36,317,150),(1361,480,10,26,317,150),(1362,480,15,29,317,150),(1363,480,27,36,317,150),(1364,481,NULL,17,6,154),(1365,481,NULL,18,6,154),(1366,481,NULL,20,6,154),(1367,482,NULL,3,321,156),(1368,482,NULL,4,321,156),(1369,482,NULL,10,321,156),(1370,483,NULL,3,323,158),(1371,483,NULL,4,323,158),(1372,483,NULL,5,323,158),(1376,485,NULL,1,331,165),(1377,485,NULL,3,331,165),(1378,485,NULL,10,331,165),(1403,494,7,1,340,171),(1404,494,20,2,340,171),(1405,494,25,3,340,171),(1412,497,NULL,1,341,171),(1413,497,NULL,2,341,171),(1414,497,NULL,3,341,171),(1418,499,NULL,1,2,171),(1419,499,NULL,2,2,171),(1420,499,NULL,3,2,171),(1421,500,NULL,29,2,172),(1422,500,NULL,30,2,172),(1423,500,NULL,31,2,172),(1424,501,3,29,2,172),(1425,501,12,30,2,172),(1426,501,13,31,2,172),(1427,502,12,25,2,174),(1428,502,15,26,2,174),(1429,502,32,31,2,174),(1430,503,NULL,15,2,176),(1431,503,NULL,16,2,176),(1432,503,NULL,21,2,176),(1433,504,NULL,15,2,176),(1434,504,NULL,16,2,176),(1435,504,NULL,21,2,176),(1436,505,NULL,15,2,176),(1437,505,NULL,16,2,176),(1438,505,NULL,21,2,176),(1439,506,2,15,2,176),(1440,506,30,16,2,176),(1441,506,38,21,2,176),(1442,507,NULL,15,2,176),(1443,507,NULL,16,2,176),(1444,507,NULL,21,2,176),(1445,508,NULL,15,2,176),(1446,508,NULL,16,2,176),(1447,508,NULL,21,2,176),(1448,509,NULL,29,345,177),(1449,509,NULL,33,345,177),(1450,509,NULL,36,345,177),(1451,510,NULL,14,347,180),(1452,510,NULL,15,347,180),(1453,510,NULL,16,347,180),(1454,511,22,28,349,182),(1455,511,31,32,349,182),(1456,511,32,36,349,182),(1457,512,14,28,350,183),(1458,512,31,34,350,183),(1459,512,39,36,350,183),(1460,513,NULL,16,2,185),(1461,513,NULL,17,2,185),(1462,513,NULL,18,2,185),(1463,514,19,16,2,185),(1464,514,26,17,2,185),(1465,514,38,18,2,185),(1466,515,19,16,2,185),(1467,515,26,17,2,185),(1468,515,38,18,2,185),(1469,516,NULL,16,2,185),(1470,516,NULL,17,2,185),(1471,516,NULL,18,2,185),(1472,517,NULL,16,2,185),(1473,517,NULL,17,2,185),(1474,517,NULL,18,2,185);
/*!40000 ALTER TABLE `home_customfacepack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_disclaimer`
--

DROP TABLE IF EXISTS `home_disclaimer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_disclaimer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_disclaimer`
--

LOCK TABLES `home_disclaimer` WRITE;
/*!40000 ALTER TABLE `home_disclaimer` DISABLE KEYS */;
INSERT INTO `home_disclaimer` VALUES (1,'Farms2Face creations are handmade with organic and natural ingredients. Consult your allergist or doctor before using any product if you have known allergies, including and not limited to gluten allergies, Celiac disease, fruit allergies, floral allergies, marine allergies, caffeine allergy, and more. Unless otherwise indicated, products are not recommended for pregnant women or children under 2 years old.'),(2,'Always test a small amount of each product first for sensitivity or allergic reaction before use.');
/*!40000 ALTER TABLE `home_disclaimer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_facepack`
--

DROP TABLE IF EXISTS `home_facepack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_facepack` (
  `item_ptr_id` int(11) NOT NULL,
  `base_id` int(11) NOT NULL,
  `mixing_agent_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `made_with` varchar(5000) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`item_ptr_id`),
  KEY `home_facepack_base_id_d44f4387_fk_home_base_id` (`base_id`),
  KEY `home_facepack_mixing_agent_id_b743bc1b_fk_home_mixingagent_id` (`mixing_agent_id`),
  CONSTRAINT `home_facepack_base_id_d44f4387_fk_home_base_id` FOREIGN KEY (`base_id`) REFERENCES `home_base` (`id`),
  CONSTRAINT `home_facepack_item_ptr_id_b939e1a6_fk_home_item_id` FOREIGN KEY (`item_ptr_id`) REFERENCES `home_item` (`id`),
  CONSTRAINT `home_facepack_mixing_agent_id_b743bc1b_fk_home_mixingagent_id` FOREIGN KEY (`mixing_agent_id`) REFERENCES `home_mixingagent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_facepack`
--

LOCK TABLES `home_facepack` WRITE;
/*!40000 ALTER TABLE `home_facepack` DISABLE KEYS */;
INSERT INTO `home_facepack` VALUES (446,5,4,NULL,NULL,NULL),(447,5,4,NULL,NULL,NULL),(448,5,4,NULL,NULL,NULL),(449,5,4,NULL,NULL,NULL),(450,5,4,NULL,NULL,NULL),(452,5,4,NULL,NULL,NULL),(453,5,4,NULL,NULL,NULL),(454,5,4,NULL,NULL,NULL),(455,5,4,NULL,NULL,NULL),(456,5,4,NULL,NULL,NULL),(457,5,6,NULL,NULL,NULL),(458,6,1,NULL,NULL,NULL),(463,1,1,'images/prepacks/F2F_feat_ProteinHigh.png','Goat milk , Farm fresh eggs, Banana, Carrot, Orange peel, Silk peptide, Vitamin E','This mask is packed with proteins derived from raw silk to help balance skin’s moisture and farm fresh eggs will lock moisture into dry skin cells, thereby nourishing and repairing your skin naturally. Vitamins from bananas, carrots and oranges infused with Vit. E oil will fight free radical damage and wrinkles thereby making way for a firmer skin. Lactic acid in goat milk will add glow and naturally hydrate the skin.'),(464,1,1,'images/prepacks/F2F_feat_SkinGarlic.png','Bentonite Clay, Strawberry, Garlic, Egg White, Glycerin, Tea tree oil, Honey','This mask features Garlic as it’s star ingredient. Garlic blended with fresh strawberries combats acne and prevents pores from clogging, reducing blackheads. Tea tree oil help lighten blemishes and acne scars while restoring skin’s natural oil balance. Smear this face mask to get a blemish free, healthy skin.'),(465,1,1,'images/prepacks/F2F_feat_VeryBerry.png','Blueberry, Pomegranate, Strawberry, Banana, Kaolin clay, Honey','This yummy mask is packed with anti-oxidants and vitamins from fresh blueberries and pomegranates.  While blueberries fight free radicals, pomegranates plump up the skin and boost your blood supply to get rid of that tired look. Folic acid in strawberries aids in cell regeneration, thus nourishing and revitalizing your skin. Bananas in this mask will moisturize and battle wrinkles effectively. This unique blend of fruits will reveal a younger, brighter you'),(466,1,1,'images/prepacks/F2F_feat_WakeUpCall.png','Oats, Coffee, Coconut water, Goat milk, Rassoul clay, Honey','Wake up your skin with this coffee and oat filled mask.  Coffee will help brighten and tighten the skin, while oats will deep cleanse the pores, gently exfoliate, and soften the skin revealing a fresher, brighter you. Coconut water and goat milk will hydrate and add a dewy glow to the skin. Smooth this mask all over your face to make way for a radiant you'),(467,1,1,'images/prepacks/F2F_feat_AllStarAcne_e5rJLRx.png','All-star mask that fights acne and clears face of blemishes','This mask brings the potency and wellness of Ayurvedic herbs to fight oh so hard to get rid of acne and blemishes. A perfect blend of potent ayurvedic ingredients restores oil balance, removes dead skin, cleanses clogged pores and tightens to reveal a bright skin.This mask brings the potency and wellness of Ayurvedic herbs to fight oh so hard to get rid of acne and blemishes. A perfect blend of potent ayurvedic ingredients restores oil balance, removes dead skin, cleanses clogged pores and tightens to reveal a bright skin.'),(468,1,1,'images/prepacks/F2F_feat_AllStarDS_CJwp8xs.png','Mint, Anantmul, Gulab, Chandan, Jamoon, Kachoor sugandhi, Manjishta, Korphad, Nagarmotha, Junsing, Khus, Neem, Lodra','This mask brings the potency and wellness of Ayurvedic herbs to brighten and tighten the skin. A perfect blend of ayurvedic ingredients provide minerals for skin cell regeneration, reduces fine lines for a healthy glowing skin.'),(469,1,1,'images/prepacks/F2F_feat_FruitPunch_6A4eyMX.png','Strawberry, Orange juice, Pomegranate, Coconut water, Papaya, Egg white, Fuller’s earth, Rose water','This mask contains powerful fruit enzymes, especially papain from papaya that acts as a gentle peel for tired skin and Vitamin C rich orange juice fights free radicals, making way for a fresher, firmer skin. Salicylic acid from strawberries helps fight acne and blemishes. Egg whites will tighten the skin by shrinking pore size. Antioxidants and vitamins in pomegranate and coconut water hydrates and revives dull skin.  Smear this on your face and say hello to revitalized, fresh skin.'),(470,1,1,'images/prepacks/F2F_feat_NuttyNS_KoTPBB9.png','Goat milk, Almonds, Walnuts, Pistachios, Cashews, Pumpkin seeds, Orange juice, Saffron, Silk peptide, Lavender essential oil','This mask is packed with nuts – Almond is its star ingredient packed with Vit. E that helps in preventing cell damage. It hydrates and adds a soft glow to skin. The nourishing fats and Vit. B packed walnuts moisturizes and delays skin aging. Vitamins in Cashews and Pistachios fights free radicals. Essential fatty acids in Pumpkin seeds help control the production of oil while maintain your skin’s moisture. Saffron strands soaked in goat milk makes way for a glowing skin.'),(471,5,4,'',NULL,NULL),(472,5,4,'',NULL,NULL),(473,5,6,'',NULL,NULL),(474,6,3,'',NULL,NULL),(475,5,6,'',NULL,NULL),(476,5,6,'',NULL,NULL),(477,5,4,'',NULL,NULL),(478,5,4,'',NULL,NULL),(479,6,3,'',NULL,NULL),(480,6,3,'',NULL,NULL),(481,5,4,'',NULL,NULL),(482,3,1,'',NULL,NULL),(483,3,1,'',NULL,NULL),(485,3,1,'',NULL,NULL),(494,1,1,'',NULL,NULL),(497,1,1,'',NULL,NULL),(499,1,1,'',NULL,NULL),(500,4,3,'',NULL,NULL),(501,4,3,'',NULL,NULL),(502,6,3,'',NULL,NULL),(503,5,4,'',NULL,NULL),(504,5,4,'',NULL,NULL),(505,5,4,'',NULL,NULL),(506,5,4,'',NULL,NULL),(507,5,4,'',NULL,NULL),(508,5,4,'',NULL,NULL),(509,6,3,'',NULL,NULL),(510,5,6,'',NULL,NULL),(511,4,3,'',NULL,NULL),(512,6,2,'',NULL,NULL),(513,5,4,'',NULL,NULL),(514,5,4,'',NULL,NULL),(515,5,4,'',NULL,NULL),(516,5,4,'',NULL,NULL),(517,5,4,'',NULL,NULL);
/*!40000 ALTER TABLE `home_facepack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_faq`
--

DROP TABLE IF EXISTS `home_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_faq`
--

LOCK TABLES `home_faq` WRITE;
/*!40000 ALTER TABLE `home_faq` DISABLE KEYS */;
INSERT INTO `home_faq` VALUES (1,'How do I find my perfect mask?','Take our quiz to help you find your perfect mask that suits your skin, environment and addresses your skin concerns. The mask quiz uses our proprietary algorithm to whip up a mask best suited for your unique skin based on your answers to the quiz.'),(2,'How often can I use my face mask?','Since our face masks are made with all natural, organic ingredients sourced from nature, you can use it as often as needed. If you want an uninterrupted service of face masks, made specially for you, you can select “never run out” option while checking out or for a featured creation of your choice. You can then select from regular care or intense care options depending on your masking needs. If you are a person who only wants to apply mask once a week, we suggest selecting Regular care. If you are looking for more intense care, select Intense care option that you can use twice a week.'),(3,'Can I subscribe to your service?','Yes, if you want an uninterrupted service of face masks, made specially for you, you can select “never run out” option while checking out or for a featured creation of your choice. You can then select from regular care or intense care options depending on your masking needs. If you are a person who only wants to apply mask once a week, we suggest selecting Regular care. If you are looking for more intense care, select Intense care option that you can use twice a week.'),(4,'What are your face masks made of?','Our face masks are made of natural potent ingredients that are free of chemicals and preservatives. Each mask is handmade with organic and natural ingredients. We apply nature to nurture.'),(5,'Why are your face masks in powdered form?','Our face masks contain fruits and vegetables in freeze dried, powdered form so as to maintain their potency without the need to add any preservatives or chemicals to prolong their shelf life.'),(6,'What does the masking kit contain?','Our masking kit contains powdered face mask, a mixing agent to enhance the effect of face mask and a spoon. All our packaging is made of sustainable, recyclable materials.'),(7,'Why do I need a face mask?','Every beauty product works better if you have inherently healthy skin. Masking regularly ensures a radiant and healthy skin. So have some fun with the aroma and the tingle as relax your way into a glowing skin.'),(8,'Can I buy it as a gift?','Yes, you can buy any of our personalized face masks or featured creation masks for your friends and family. Just enter their name and address while checking out and they will receive their mask kit at their door step.'),(9,'What are featured creations?','Featured creations are our most popular face masks. You can review the description of the face mask to see if it addresses your skin concerns. For a personalized service, please take the quiz for a mask that is formulated specially for your skin.'),(10,'Why farms2face?','We have unique fingerprints. We have distinct skin. There are a variety of skin care products available, some good and some poor, but almost always generic.  We have come up with a proprietary algorithm to formulate precise masking for your unique skin. Simply put, we match ingredients to your skin. This creation for you is handmade with organic and natural ingredients. Our masks are preservative free and do not contain any harmful chemicals.'),(11,'Any other questions?','Please don’t hesitate to contact us at rupa.bhat@farms2face.com');
/*!40000 ALTER TABLE `home_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_ingredient`
--

DROP TABLE IF EXISTS `home_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `helper` varchar(1000) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_ingredient`
--

LOCK TABLES `home_ingredient` WRITE;
/*!40000 ALTER TABLE `home_ingredient` DISABLE KEYS */;
INSERT INTO `home_ingredient` VALUES (1,'Almonds','','images/ingredients/apples_eIqOvIp.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),(2,'Aloe Powder','Moisturizes, brightens skin and increases collagen','images/ingredients/F2F_Ingredients-Aloe-vera.jpg','Moisturizes, brightens skin and increases collagen'),(3,'Avocado','Deeply moisturizing and boosts collagen','images/ingredients/F2F_Ingredients-Avacado.jpg','Deeply moisturizing, rich in nutrients and boosts collagen'),(4,'Baking Soda','Fights acne, exfoliates skin & clears pores','images/ingredients/F2F_Ingredients-baking-soda.jpg','Fights acne, exfoliates skin & clears pores'),(5,'Banana','Reduces fine lines revealing smoother skin','images/ingredients/F2F_Ingredients-banana.jpg','Rich in vitamins, reduces fine lines revealing smoother skin'),(6,'Bergamot Peel Essential Oil','Unclogs pores and restores natural oil balance','images/ingredients/F2F_Ingredients-essential-oils_amC56kM.jpg','Natural cleanser, helps remove dirt & impurities from skin. Unclog pores and restores natural oil balance'),(7,'Chickpeas','Tones, brightens and clarifies','images/ingredients/F2F_Ingredients-Besan.jpg','Tones, brightens and clarifies'),(8,'Blueberries','Crucial in collagen production and shields skin from free radicals','images/ingredients/F2F_Ingredients-blueberries.jpg','Crucial in collagen production and shields skin from free radicals'),(10,'Cacao','Fights free radicals revealing fresher, healthier skin','images/ingredients/F2F_Ingredients-cacao.jpg','Fights free radicals revealing fresher, healthier skin'),(12,'Carrots','Packed with antioxidants, adds glow','images/ingredients/F2F_Ingredients-Carrot.jpg','Packed with antioxidants, adds glow'),(13,'Chamomile','A powerhouse herb that purifies and soothes your skin','images/ingredients/F2F_Ingredients-Chamomile_0gjF3LT.jpg','A powerhouse herb that purifies and soothes your skin'),(14,'Coconut Milk','','images/ingredients/apples_eIqOvIp.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),(15,'Coconut Water','Hydrating, nourishing and adds glow','images/ingredients/apples_eIqOvIp.jpg','Hydrating, nourishing and adds glow'),(16,'Coffee','Reduces cellulite for a smooth, bright and youthful glow','images/ingredients/F2F_Ingredients-Coffee.jpg','Reduces cellulite for a smooth, bright and youthful glow'),(17,'Cucumber','Hydrates, calms and moisturizes the skin','images/ingredients/F2F_Ingredients-Cucumber.jpg','Hydrates, calms and moisturizes the skin'),(18,'Egg White','Tightens skin and reduces pore size','images/ingredients/F2F_Ingredients-eggs_ClaGYcr.jpg','Effective astringent that tightens skin and reduces pore size'),(19,'Egg Yolk','Rich in vitamin A, pure proteins and nutrients','images/ingredients/F2F_Ingredients-eggs.jpg','Rich in vitamin A, pure proteins and nutrients'),(20,'Fenugreek','Draws out toxins and repairs damaged cells','images/ingredients/F2F_Ingredients-fenugreek_Mkno5bv.jpg','Helps draw out toxins, repairs damaged cells and combats acne effectively'),(21,'Flax Seeds','Hydrates, tightens and anti aging','images/ingredients/F2F_Ingredients-flax-seeds.jpg','Keeps skin hydrated and smooth, tightens large pores, anti aging and fights acne'),(22,'Goat Milk Powder','Hydrates, brightens and firms','images/ingredients/F2F_Ingredients-goat-milk_7z6QfVR.jpg','Hydrates, brightens and firms'),(23,'Lavender Oil','Nourishing and clarifying. Antibacterial, antimicrobial, heals skin','images/ingredients/F2F_Ingredients-Lavender-oil_l2HQljM.jpg','Nourishing and clarifying. Antibacterial, antimicrobial, heals skin'),(24,'Lemon Juice','Antibacterial, fights acne and brightens skin','images/ingredients/F2F_Ingredients_Lemon-2.jpg','Packed with Vit. C, Lemon juice is antibacterial, fights acne and brightens skin'),(25,'Mangosteen','Clears acne and soothes irritated skin','images/ingredients/F2F_Ingredients-mango-steen-powder.jpg','Anti-bacterial properties clears acne and soothes irritated skin'),(26,'Matcha','A powerful detoxifier, calming and soothing','images/ingredients/F2F_Ingredients-Matcha-Tea.jpg','A powerful detoxifier, calming and soothing'),(27,'Mint','Nourishing, soothing with anti bacterial benefits','images/ingredients/F2F_Ingredients-mint.jpg','Nourishing, soothing with anti bacterial benefits'),(28,'Neem','Helps fight acne making way for soft supple skin','images/ingredients/F2F_Ingredients-Neem-Powder.jpg','Power ingredient for soft, supple skin clear of acne and blemishes'),(29,'Nutmeg','Lightens blemishes/scars with anti-inflammatory properties','images/ingredients/F2F_Ingredients-nutmeg.jpg','Lightens blemishes/scars with anti-inflammatory properties'),(30,'Oats','Gently exfoliates, hydrates and softens skin','images/ingredients/F2F_Ingredients-oats.jpg','Gently exfoliates, hydrates and softens skin'),(31,'Orange Peel','Adds firmness and moisture to skin, clears clogged pores','images/ingredients/F2F_Ingredients-Orange-peel_1.jpg','Adds firmness and moisture to skin, clears clogged pores'),(32,'Papaya','Great for tired skin with powerful fruit enzymes','images/ingredients/F2F_Ingredients-Papaya.jpg','Great for tired skin with powerful fruit enzymes'),(33,'Pomegranate','Packed with antioxidants and vitamins to make way for radiant skin','images/ingredients/apples_eIqOvIp.jpg','Packed with antioxidants and vitamins to make way for radiant skin'),(35,'Sandal Wood Powder','Ayurvedic secret helps fight acne, blemishes & spots','images/ingredients/F2F_Ingredients-sandalwood-powder.jpg','Ancient ayurvedic secret that helps fight acne, blemishes & spots by absorbing excess oil from skin'),(36,'Silk Peptide','Silk proteins derived from raw silk help balance skin\'s moisture, giving it a silky glow','images/ingredients/F2F_Ingredients-silk-peptide.jpg','Silk proteins derived from raw silk help balance skin\'s moisture, giving it a silky glow'),(37,'Strawberry','Sloughs off dead cells making way for a brighter, fresh looking skin','images/ingredients/F2F_Ingredients-strawberry.jpg','Sloughs off dead cells making way for a brighter, fresh looking skin'),(38,'Trifala','Balancing, detoxifying and nourishing','images/ingredients/F2F_Ingredients-Triphala.jpg','Three fruits Amalaki, Haritaki and Bibhitaki with amplified effect when mixed. Balancing, detoxifying and nourishing.'),(39,'Turmeric','Clarifies, anti aging properties','images/ingredients/F2F_Ingredients-turmeric.jpg','Clarifies, anti aging properties'),(40,'White Willow Tree Bark','Natural exfoliant that reduces inflammation','images/ingredients/F2F_Ingredients-willow-bark.jpg','Natural exfoliant that helps combat acne and reduces inflammation'),(41,'Yogurt','','images/ingredients/apples_eIqOvIp.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),(42,'Orange Juice','Adds firmness and moisture, clears clogged pores','images/ingredients/F2F_Ingredients-Orange.jpg','Deeply moisturizing, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen'),(43,'Essential Oils','This face mask is infused with a blend of essential oils and organic, dried flowers','images/ingredients/F2F_Ingredients-essential-oils.jpg','This face mask is infused with a blend of essential oils and organic, dried flowers'),(44,'Glycerine','Moisturizes and stabilizes collagen','images/ingredients/F2F_Ingredients-Glycerine_2qxpr22.jpg','Natural humectant, attracts moisture to skin, by absorbing water from air');
/*!40000 ALTER TABLE `home_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_item`
--

DROP TABLE IF EXISTS `home_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `helper` varchar(1000) NOT NULL,
  `createdte` datetime(6) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `price_intense` decimal(6,2) NOT NULL,
  `price_regular` decimal(6,2) NOT NULL,
  `price_single` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_item`
--

LOCK TABLES `home_item` WRITE;
/*!40000 ALTER TABLE `home_item` DISABLE KEYS */;
INSERT INTO `home_item` VALUES (446,'CFP_015020024000005004','','2017-05-04 08:22:25.062434',13.99,0.00,0.00,29.00),(447,'CFP_015020024000005004','','2017-05-04 08:34:14.038055',21.99,0.00,0.00,29.00),(448,'CFP_015020024111005004','','2017-05-04 08:36:48.111919',16.99,0.00,0.00,29.00),(449,'CFP_015020024000005004','','2017-05-04 08:39:54.461052',26.99,0.00,0.00,29.00),(450,'CFP_015020024111005004','','2017-05-04 08:40:01.170787',22.99,0.00,0.00,29.00),(452,'CFP_015016017000005004','','2017-05-04 09:04:57.985594',26.99,0.00,0.00,29.00),(453,'CFP_015016024000005004','','2017-05-04 23:17:16.120435',22.99,0.00,0.00,29.00),(454,'CFP_014017022000005004','','2017-05-05 04:47:14.691321',17.99,0.00,0.00,29.00),(455,'CFP_014017022111005004','','2017-05-05 04:47:24.186419',23.99,0.00,0.00,29.00),(456,'CFP_015016017000005004','','2017-05-05 05:54:37.296077',29.99,0.00,0.00,29.00),(457,'CFP_015018023000005006','','2017-05-13 04:48:00.212588',27.99,0.00,0.00,29.00),(458,'CFP_005011012000006001','','2017-05-13 05:00:19.107116',15.99,0.00,0.00,29.00),(463,'Protein High','Protein and Vitamin packed mask to moisturize and repair dry skin cells naturally','2017-05-13 05:34:10.000000',34.00,48.00,29.00,34.00),(464,'Skintillating Garlic','A mask tailor made for treating acne and blemishes to make way for a clearer, healthier skin','2017-05-13 05:34:22.000000',34.00,48.00,29.00,34.00),(465,'Very Berry','Antioxidant and vitamin rich mask to reveal a younger, fresher you','2017-05-13 05:35:30.000000',29.00,48.00,29.00,34.00),(466,'Wake Up Call','Brightens, hydrates and adds glow while reducing pore size','2017-05-13 05:35:41.000000',34.00,48.00,29.00,29.00),(467,'All Star Acne','All-star mask that fights acne and clears face of blemishes','2017-05-15 16:01:40.000000',34.00,48.00,29.00,34.00),(468,'All Star DS','Regenerate skin cells while tightening and brightening your skin','2017-05-15 16:03:42.000000',34.00,48.00,29.00,34.00),(469,'Fruit Punch','Enzymes and vitamin rich mask to battle acne while reducing pore size and making way for a fresher looking skin','2017-05-15 16:05:21.000000',34.00,48.00,29.00,34.00),(470,'Nutty NS','Refreshing and bright skin on demand that helps you own the moment','2017-05-15 16:05:59.000000',39.00,55.00,34.00,39.00),(471,'CFP_015016021000005004','','2017-05-16 02:42:52.411862',27.99,0.00,0.00,29.00),(472,'CFP_014018023000005004','','2017-06-21 20:09:56.594494',22.99,0.00,0.00,29.00),(473,'CFP_014015016111005006','','2017-06-23 05:55:55.056865',21.99,0.00,0.00,29.00),(474,'CFP_029032034111006003','','2017-06-25 19:05:20.203450',23.99,0.00,0.00,29.00),(475,'CFP_014015016000005006','','2017-07-20 15:33:49.282892',25.99,0.00,0.00,29.00),(476,'CFP_014015016111005006','','2017-07-20 15:33:52.903130',28.99,0.00,0.00,29.00),(477,'CFP_014015016000005004','','2017-07-20 15:39:24.931462',13.99,0.00,0.00,29.00),(478,'CFP_014015016111005004','','2017-07-20 15:39:28.572012',26.99,0.00,0.00,29.00),(479,'CFP_026029036000006003','','2017-07-20 17:49:56.061333',13.99,0.00,0.00,29.00),(480,'CFP_026029036111006003','','2017-07-20 17:49:59.698659',26.99,0.00,0.00,29.00),(481,'CFP_017018020000005004','','2017-07-20 23:53:08.891174',19.99,0.00,0.00,29.00),(482,'CFP_003004010000003001','','2017-07-21 04:19:16.261414',20.99,0.00,0.00,29.00),(483,'CFP_003004005000003001','','2017-07-21 04:46:48.087283',25.99,0.00,0.00,29.00),(485,'CFP_001003010000003001','','2017-07-24 00:54:10.006079',26.99,0.00,0.00,29.00),(494,'CFP_001002003111001001','','2017-08-02 00:13:45.807032',29.00,48.00,29.00,29.00),(497,'CFP_001002003000001001','','2017-08-02 00:33:17.801983',48.00,48.00,29.00,29.00),(499,'CFP_001002003000001001','','2017-08-02 01:37:45.017157',34.00,48.00,29.00,34.00),(500,'CFP_029030031000004003','','2017-08-02 02:41:50.487420',48.00,48.00,29.00,34.00),(501,'CFP_029030031111004003','','2017-08-02 02:41:58.776853',34.00,48.00,29.00,34.00),(502,'CFP_025026031111006003','','2017-08-03 08:15:18.470543',29.00,48.00,29.00,34.00),(503,'CFP_015016021000005004','','2017-08-04 04:34:03.222950',48.00,48.00,29.00,34.00),(504,'CFP_015016021000005004','','2017-08-04 04:46:47.874147',34.00,48.00,29.00,34.00),(505,'CFP_015016021000005004','','2017-08-04 08:33:59.822002',34.00,48.00,29.00,34.00),(506,'CFP_015016021111005004','','2017-08-04 08:34:06.186279',29.00,48.00,29.00,34.00),(507,'CFP_015016021000005004','','2017-08-05 07:22:17.803713',29.00,48.00,29.00,34.00),(508,'CFP_015016021000005004','','2017-08-05 07:25:38.004539',34.00,48.00,29.00,34.00),(509,'CFP_029033036000006003','','2017-08-06 20:27:08.203871',34.00,48.00,29.00,34.00),(510,'CFP_014015016000005006','','2017-08-11 03:29:17.582427',34.00,48.00,29.00,34.00),(511,'CFP_028032036111004003','','2017-08-19 16:37:14.637735',34.00,48.00,29.00,34.00),(512,'CFP_028034036111006002','','2017-08-19 16:40:25.159852',34.00,48.00,29.00,34.00),(513,'CFP_016017018000005004','','2017-08-20 05:12:55.906620',34.00,48.00,29.00,34.00),(514,'CFP_016017018111005004','','2017-08-20 05:12:59.523218',29.00,48.00,29.00,34.00),(515,'CFP_016017018111005004','','2017-08-20 05:14:41.765110',29.00,48.00,29.00,34.00),(516,'CFP_016017018000005004','','2017-08-20 05:14:45.467504',34.00,48.00,29.00,34.00),(517,'CFP_016017018000005004','','2017-08-20 05:37:21.590849',34.00,48.00,29.00,34.00);
/*!40000 ALTER TABLE `home_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_mixingagent`
--

DROP TABLE IF EXISTS `home_mixingagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_mixingagent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `skin_type_id` int(11) DEFAULT NULL,
  `helper` varchar(1000) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f_skin_type_id_69320806_fk_facepackwizard_skintype_option_ptr_id` (`skin_type_id`),
  CONSTRAINT `f_skin_type_id_69320806_fk_facepackwizard_skintype_option_ptr_id` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_mixingagent`
--

LOCK TABLES `home_mixingagent` WRITE;
/*!40000 ALTER TABLE `home_mixingagent` DISABLE KEYS */;
INSERT INTO `home_mixingagent` VALUES (1,'Rose water',23,'Super ingredient that hydrates and softens skin, giving it a natural, healthy glow','images/mixing_agents/F2F_Ingredients-rose-water_fXoD7oK.jpg','Super ingredient that hydrates and softens skin, giving it a natural, healthy glow'),(2,'Aloe vera gel',25,'Natural moisturizer, brightens skins and increases collagen production','images/mixing_agents/F2F_Ingredients-Aloe-vera_CURcINI.jpg','Natural moisturizer, brightens skins and increases collagen production'),(3,'Rose Water and Glycerine',25,'Glycerin helps in moisturizing and stabilizing collagen while rose water hydrates and softens skin, giving it a natural, healthy glow','images/mixing_agents/F2F_Ingredients-rose-water_WAeLknz.jpg','Glycerin helps in moisturizing and stabilizing collagen while rose water hydrates and softens skin, giving it a natural, healthy glow'),(4,'Honey',24,'Natural humectant, makes skin soft supple and hydrated','images/mixing_agents/F2F_Ingredients-honey_TxInZn0.jpg','Natural humectant, makes skin soft supple and hydrated'),(5,'Honey',25,'Natural humectant, makes skin soft supple and hydrated','images/mixing_agents/F2F_Ingredients-honey_8qH8YPS.jpg','Natural humectant, makes skin soft supple and hydrated'),(6,'Rose Water and Glycerine',24,'Glycerin helps in moisturizing and stabilizing collagen while rose water hydrates and softens skin, giving it a natural, healthy glow','images/mixing_agents/F2F_Ingredients-rose-water_zNXV01O.jpg','Glycerin helps in moisturizing and stabilizing collagen while rose water hydrates and softens skin, giving it a natural, healthy glow');
/*!40000 ALTER TABLE `home_mixingagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_prepack`
--

DROP TABLE IF EXISTS `home_prepack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_prepack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facepack_id` int(11) NOT NULL,
  `highlights` varchar(1000) DEFAULT NULL,
  `made_with` varchar(1000) DEFAULT NULL,
  `who` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_prepack_facepack_id_e5afc497_fk_home_facepack_item_ptr_id` (`facepack_id`),
  CONSTRAINT `home_prepack_facepack_id_e5afc497_fk_home_facepack_item_ptr_id` FOREIGN KEY (`facepack_id`) REFERENCES `home_facepack` (`item_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_prepack`
--

LOCK TABLES `home_prepack` WRITE;
/*!40000 ALTER TABLE `home_prepack` DISABLE KEYS */;
INSERT INTO `home_prepack` VALUES (8,463,'Protein and Vitamin packed mask to moisturize and repair dry skin cells naturally','Goat milk , Farm fresh eggs, Banana, Carrot, Orange peel, Silk peptide, Vitamin E','Anyone with dry skin'),(9,464,'A mask tailor made for treating acne and blemishes to make way for a clearer, healthier skin','Bentonite Clay, Strawberry, Garlic, Egg White, Glycerin, Tea tree oil, Honey','Anyone with oily or acne prone skin'),(10,465,'Antioxidant and vitamin rich mask to reveal a younger, fresher you','Blueberry, Pomegranate, Strawberry, Banana, Kaolin clay, Honey','Anyone with Normal skin'),(11,466,'Brightens, hydrates and adds glow while reducing pore size','Oats, Coffee, Coconut water, Goat milk, Rassoul clay, Honey','Anyone with Normal skin'),(12,467,'All-star mask that fights acne and clears face of blemishes','Ashwagandha, Chandan, Triphala, Tulsi, Jeshtamadh, Manjishta, Neem, Kachoor sugandhi, Arjun, Gorakh Mundi, Jamoon, Rakta Chandan, Anant mul, Vekhand, Gulab, Khus, Bawachi, Nagarmotha, Keolon, Orange peel.','Anyone with oily or acne prone skin'),(13,468,'Regenerate skin cells while tightening and brightening your skin','Mint, Anantmul, Gulab, Chandan, Jamoon, Kachoor sugandhi, Manjishta, Korphad, Nagarmotha, Junsing, Khus, Neem, Lodra','Anyone with normal to dry skin'),(14,469,'Enzymes and vitamin rich mask to battle acne while reducing pore size and making way for a fresher looking skin','Strawberry, Orange juice, Pomegranate, Coconut water, Papaya, Egg white, Fuller’s earth, Rose water','Anyone with oily or acne prone skin'),(15,470,'Refreshing and bright skin on demand that helps you own the moment','Goat milk, Almonds, Walnuts, Pistachios, Cashews, Pumpkin seeds, Orange juice, Saffron, Silk peptide, Lavender essential oil','Anyone with normal skin');
/*!40000 ALTER TABLE `home_prepack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_prepackingredients`
--

DROP TABLE IF EXISTS `home_prepackingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_prepackingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) NOT NULL,
  `prepack_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_prepackingredie_ingredient_id_36779030_fk_home_ingr` (`ingredient_id`),
  KEY `home_prepackingredients_prepack_id_05555a2d_fk_home_prepack_id` (`prepack_id`),
  CONSTRAINT `home_prepackingredie_ingredient_id_36779030_fk_home_ingr` FOREIGN KEY (`ingredient_id`) REFERENCES `home_ingredient` (`id`),
  CONSTRAINT `home_prepackingredients_prepack_id_05555a2d_fk_home_prepack_id` FOREIGN KEY (`prepack_id`) REFERENCES `home_prepack` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_prepackingredients`
--

LOCK TABLES `home_prepackingredients` WRITE;
/*!40000 ALTER TABLE `home_prepackingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_prepackingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_privacy`
--

DROP TABLE IF EXISTS `home_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_privacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `details` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_privacy`
--

LOCK TABLES `home_privacy` WRITE;
/*!40000 ALTER TABLE `home_privacy` DISABLE KEYS */;
INSERT INTO `home_privacy` VALUES (1,'Privacy','We keep your personal information private and secure. When you make a purchase from our site, you provide your name, email address, credit card information, address, phone number, and a password. We use this information to process your orders, to keep you updated on your orders and to personalize your shopping experience.'),(2,'Privacy','Our secure servers protect your information using advanced encryption techniques and firewall technology.'),(3,'Privacy','To keep you informed about our latest offers, we may notify you of current promotions, specials and new additions to the Farms2Face creations.'),(4,'Privacy','We use \"cookies\" to keep track of your current shopping session to personalize your experience and so that you may retrieve your shopping cart at any time.'),(5,'Payments','We accept Visa, MasterCard, American Express and Discover. Please be sure to provide your exact billing address and telephone number (i.e. the address and phone number your credit card bank has on file for you). Incorrect information will cause a delay in processing your order.'),(6,'Taxes','We will automatically charge and withhold the applicable sales tax.'),(7,'Returns','If you are not satisfied with your Farms2Face creation, tell us why and you can return it within 15 days of purchase.Please note that you will be responsible for return shipping.  Please contact us at rupa.bhat@farms2face.com.');
/*!40000 ALTER TABLE `home_privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_recipe`
--

DROP TABLE IF EXISTS `home_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mandatory_ingredient_id` int(11) NOT NULL,
  `skin_concern_id` int(11) NOT NULL,
  `skin_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `D4f283763afac08bf883b67606cf515f` (`mandatory_ingredient_id`),
  KEY `a171dab0dba8828cd73064dbe8f1039e` (`skin_concern_id`),
  KEY `f_skin_type_id_55b9f863_fk_facepackwizard_skintype_option_ptr_id` (`skin_type_id`),
  CONSTRAINT `D4f283763afac08bf883b67606cf515f` FOREIGN KEY (`mandatory_ingredient_id`) REFERENCES `home_ingredient` (`id`),
  CONSTRAINT `a171dab0dba8828cd73064dbe8f1039e` FOREIGN KEY (`skin_concern_id`) REFERENCES `facepackwizard_skinconcern` (`option_ptr_id`),
  CONSTRAINT `f_skin_type_id_55b9f863_fk_facepackwizard_skintype_option_ptr_id` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_recipe`
--

LOCK TABLES `home_recipe` WRITE;
/*!40000 ALTER TABLE `home_recipe` DISABLE KEYS */;
INSERT INTO `home_recipe` VALUES (1,31,30,23),(2,40,31,23),(3,20,32,23),(4,38,33,23),(5,12,34,23),(6,26,35,23),(7,17,36,23),(8,15,37,23),(9,18,38,23),(10,30,39,23),(11,27,40,23),(12,35,41,23),(13,30,30,24),(14,7,31,24),(15,37,32,24),(16,35,33,24),(17,3,34,24),(18,13,35,24),(19,5,36,24),(20,22,37,24),(21,16,38,24),(22,32,39,24),(23,29,40,24),(24,7,41,24),(25,10,30,25),(26,8,31,25),(27,21,32,25),(28,25,33,25),(29,16,34,25),(30,17,35,25),(31,2,36,25),(32,15,37,25),(33,18,38,25),(34,33,39,25),(35,27,40,25),(36,29,41,25);
/*!40000 ALTER TABLE `home_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_skintypeconcerningredient`
--

DROP TABLE IF EXISTS `home_skintypeconcerningredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_skintypeconcerningredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) NOT NULL,
  `skin_concern_id` int(11) NOT NULL,
  `skin_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_skintypeconcern_ingredient_id_43abd551_fk_home_ingr` (`ingredient_id`),
  KEY `home_skintypeconcern_skin_concern_id_c5302c6f_fk_facepackw` (`skin_concern_id`),
  KEY `home_skintypeconcern_skin_type_id_6e8591c6_fk_facepackw` (`skin_type_id`),
  CONSTRAINT `home_skintypeconcern_ingredient_id_43abd551_fk_home_ingr` FOREIGN KEY (`ingredient_id`) REFERENCES `home_ingredient` (`id`),
  CONSTRAINT `home_skintypeconcern_skin_concern_id_c5302c6f_fk_facepackw` FOREIGN KEY (`skin_concern_id`) REFERENCES `facepackwizard_skinconcern` (`option_ptr_id`),
  CONSTRAINT `home_skintypeconcern_skin_type_id_6e8591c6_fk_facepackw` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_skintypeconcerningredient`
--

LOCK TABLES `home_skintypeconcerningredient` WRITE;
/*!40000 ALTER TABLE `home_skintypeconcerningredient` DISABLE KEYS */;
INSERT INTO `home_skintypeconcerningredient` VALUES (1,31,30,23),(2,7,30,23),(3,28,30,23),(4,40,30,23),(5,40,31,23),(6,21,31,23),(7,20,31,23),(8,26,31,23),(9,20,32,23),(10,37,32,23),(11,25,32,23),(12,38,33,23),(13,39,33,23),(14,35,33,23),(15,4,33,23),(16,12,34,23),(17,40,34,23),(18,8,34,23),(19,16,34,23),(20,26,35,23),(21,13,35,23),(22,17,35,23),(23,17,36,23),(24,23,36,23),(25,13,36,23),(26,42,36,23),(27,15,37,23),(28,17,37,23),(29,18,38,23),(30,30,38,23),(31,21,38,23),(32,30,39,23),(33,31,39,23),(34,24,39,23),(35,16,39,23),(36,6,39,23),(37,27,40,23),(38,29,40,23),(39,20,40,23),(40,35,41,23),(41,27,41,23),(42,7,41,23),(43,16,41,23),(44,30,30,24),(45,40,30,24),(46,7,30,24),(47,1,30,24),(48,7,31,24),(49,8,31,24),(50,37,32,24),(51,2,32,24),(52,35,33,24),(53,38,33,24),(54,3,34,24),(55,19,34,24),(56,16,34,24),(57,13,35,24),(58,30,35,24),(59,26,35,24),(60,17,35,24),(61,5,36,24),(62,33,36,24),(63,15,36,24),(64,31,36,24),(65,22,37,24),(66,3,37,24),(67,5,37,24),(68,16,38,24),(69,18,38,24),(70,30,38,24),(71,32,39,24),(72,30,39,24),(73,36,39,24),(74,29,40,24),(75,17,40,24),(76,7,41,24),(77,27,41,24),(78,20,41,24),(79,31,41,24),(80,10,30,25),(81,40,30,25),(82,32,30,25),(83,7,30,25),(84,8,31,25),(85,16,31,25),(86,15,31,25),(87,21,32,25),(88,35,32,25),(89,39,32,25),(90,25,33,25),(91,39,33,25),(92,31,33,25),(93,16,34,25),(94,10,34,25),(95,26,34,25),(96,3,34,25),(97,17,35,25),(98,39,35,25),(99,26,35,25),(100,13,35,25),(101,2,36,25),(102,13,36,25),(103,12,36,25),(104,23,36,25),(105,15,37,25),(106,5,37,25),(107,32,37,25),(108,3,37,25),(109,18,38,25),(110,30,38,25),(111,16,38,25),(112,33,39,25),(113,36,39,25),(114,14,39,25),(115,32,39,25),(116,16,39,25),(117,27,40,25),(118,30,40,25),(119,22,40,25),(120,29,40,25),(121,17,40,25),(122,29,41,25),(123,27,41,25),(124,22,41,25),(125,20,41,25),(126,31,41,25);
/*!40000 ALTER TABLE `home_skintypeconcerningredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_skintypeingredient`
--

DROP TABLE IF EXISTS `home_skintypeingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_skintypeingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(11) NOT NULL,
  `skin_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_skintypeingred_ingredient_id_acc8a3de_fk_home_ingredient_id` (`ingredient_id`),
  KEY `h_skin_type_id_720caea1_fk_facepackwizard_skintype_option_ptr_id` (`skin_type_id`),
  CONSTRAINT `h_skin_type_id_720caea1_fk_facepackwizard_skintype_option_ptr_id` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`),
  CONSTRAINT `home_skintypeingred_ingredient_id_acc8a3de_fk_home_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `home_ingredient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_skintypeingredient`
--

LOCK TABLES `home_skintypeingredient` WRITE;
/*!40000 ALTER TABLE `home_skintypeingredient` DISABLE KEYS */;
INSERT INTO `home_skintypeingredient` VALUES (1,4,23),(2,6,23),(3,7,23),(4,8,23),(5,12,23),(6,13,23),(7,15,23),(8,16,23),(9,17,23),(10,18,23),(11,20,23),(12,21,23),(13,23,23),(14,24,23),(15,25,23),(16,26,23),(17,27,23),(18,28,23),(19,29,23),(20,30,23),(21,31,23),(22,35,23),(23,37,23),(24,38,23),(25,39,23),(26,40,23),(27,42,23),(28,1,24),(29,2,24),(30,3,24),(31,5,24),(32,7,24),(33,8,24),(34,13,24),(35,15,24),(36,16,24),(37,17,24),(38,18,24),(39,19,24),(40,20,24),(42,26,24),(43,27,24),(44,29,24),(45,30,24),(46,31,24),(47,32,24),(48,33,24),(49,35,24),(50,36,24),(51,37,24),(52,38,24),(53,40,24),(54,2,25),(55,3,25),(56,5,25),(57,7,25),(58,8,25),(59,10,25),(60,12,25),(61,13,25),(62,14,25),(63,15,25),(64,16,25),(65,17,25),(66,18,25),(67,20,25),(68,21,25),(69,22,25),(70,23,25),(71,25,25),(72,26,25),(73,27,25),(74,29,25),(75,30,25),(76,31,25),(77,32,25),(78,33,25),(79,35,25),(80,36,25),(81,39,25),(82,40,25);
/*!40000 ALTER TABLE `home_skintypeingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_creditcard`
--

DROP TABLE IF EXISTS `payments_creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_creditcard` (
  `paymenttype_ptr_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `number` varchar(16) NOT NULL,
  `cvv` int(11) NOT NULL,
  `expiry` date NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  PRIMARY KEY (`paymenttype_ptr_id`),
  CONSTRAINT `payments__paymenttype_ptr_id_54eb0b8d_fk_payments_paymenttype_id` FOREIGN KEY (`paymenttype_ptr_id`) REFERENCES `payments_paymenttype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_creditcard`
--

LOCK TABLES `payments_creditcard` WRITE;
/*!40000 ALTER TABLE `payments_creditcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_creditcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_payment`
--

DROP TABLE IF EXISTS `payments_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdte` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `total` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_payment_user_id_f9db060a_fk_auth_user_id` (`user_id`),
  KEY `payments_payment_type_id_c0969163_uniq` (`type_id`),
  CONSTRAINT `payments_payment_type_id_c0969163_fk_payments_paymenttype_id` FOREIGN KEY (`type_id`) REFERENCES `payments_paymenttype` (`id`),
  CONSTRAINT `payments_payment_user_id_f9db060a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_payment`
--

LOCK TABLES `payments_payment` WRITE;
/*!40000 ALTER TABLE `payments_payment` DISABLE KEYS */;
INSERT INTO `payments_payment` VALUES (66,'2017-07-20 15:28:36.158016',2,41,123.94),(67,'2017-07-20 15:30:18.293367',2,41,32.99),(68,'2017-07-20 15:34:03.452547',312,42,285.94),(69,'2017-07-20 15:39:36.354817',2,41,176.91),(70,'2017-07-20 17:51:06.967937',317,43,154.94),(71,'2017-07-20 23:54:07.762501',6,44,24.98),(72,'2017-07-21 04:28:17.854534',322,45,92.99),(73,'2017-07-21 04:46:57.185547',323,46,38.98),(74,'2017-07-23 04:49:56.211987',330,47,32.99),(75,'2017-08-02 02:01:29.981920',2,41,123.99),(76,'2017-08-02 02:42:22.462493',2,41,152.99),(77,'2017-08-03 08:15:46.644414',2,41,41.99),(78,'2017-08-04 03:43:26.701300',330,47,60.99),(79,'2017-08-04 04:35:31.581377',2,41,89.99),(80,'2017-08-04 06:06:16.339450',2,41,75.99),(81,'2017-08-04 08:34:21.348713',2,41,104.99),(82,'2017-08-04 22:19:07.606370',2,41,41.99),(83,'2017-08-05 07:22:25.664997',2,41,41.99),(84,'2017-08-05 07:25:44.730469',2,41,46.99),(85,'2017-08-19 16:42:42.247279',350,48,38.99),(86,'2017-08-19 16:56:27.080260',350,48,33.99),(87,'2017-08-20 05:13:08.789905',2,41,109.99),(88,'2017-08-20 05:15:15.803830',2,41,104.99),(89,'2017-08-20 05:16:52.125119',2,41,46.99),(90,'2017-08-20 05:37:36.258705',2,41,75.99);
/*!40000 ALTER TABLE `payments_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_paymenttype`
--

DROP TABLE IF EXISTS `payments_paymenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_paymenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_paymenttype_user_id_56a087f5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `payments_paymenttype_user_id_56a087f5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_paymenttype`
--

LOCK TABLES `payments_paymenttype` WRITE;
/*!40000 ALTER TABLE `payments_paymenttype` DISABLE KEYS */;
INSERT INTO `payments_paymenttype` VALUES (41,1,2,'San Francisco','United States','CA','731 Ellsworth st','94102'),(42,1,312,'San Francisco','United States','CA','731 Ellsworth st','94102'),(43,1,317,'San Francisco','United States','CA','731 Ellsworth st','94102'),(44,1,6,'San Francisco','United States','CA','731 Ellsworth st','94102'),(45,1,322,'Belmont','United States','CA','1833 Mezes avenue','94002'),(46,1,323,'San Francisco','United States','CA','731 Ellsworth st','94102'),(47,1,330,'Belmont','United States','CA','1833 Mezes Ave','94002'),(48,1,350,'belmpnt','United States','CA','xyz','94002');
/*!40000 ALTER TABLE `payments_paymenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_paypal`
--

DROP TABLE IF EXISTS `payments_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_paypal` (
  `paymenttype_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`paymenttype_ptr_id`),
  CONSTRAINT `payments__paymenttype_ptr_id_10c47590_fk_payments_paymenttype_id` FOREIGN KEY (`paymenttype_ptr_id`) REFERENCES `payments_paymenttype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_paypal`
--

LOCK TABLES `payments_paypal` WRITE;
/*!40000 ALTER TABLE `payments_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_promo`
--

DROP TABLE IF EXISTS `payments_promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `discount` decimal(6,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_promo`
--

LOCK TABLES `payments_promo` WRITE;
/*!40000 ALTER TABLE `payments_promo` DISABLE KEYS */;
INSERT INTO `payments_promo` VALUES (1,'FREE Shipping (Intro)',4.99,1);
/*!40000 ALTER TABLE `payments_promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_purchasehistory`
--

DROP TABLE IF EXISTS `payments_purchasehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_purchasehistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `ship_date` date DEFAULT NULL,
  `is_fulfilled` tinyint(1) NOT NULL,
  `subtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_purchasehistory_item_id_1ac80778_fk_home_item_id` (`item_id`),
  KEY `payments_purchasehist_payment_id_a8ecb1e9_fk_payments_payment_id` (`payment_id`),
  KEY `payments_purchasehistory_user_id_6f7e3e35_fk_auth_user_id` (`user_id`),
  CONSTRAINT `payments_purchasehist_payment_id_a8ecb1e9_fk_payments_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payments_payment` (`id`),
  CONSTRAINT `payments_purchasehistory_item_id_1ac80778_fk_home_item_id` FOREIGN KEY (`item_id`) REFERENCES `home_item` (`id`),
  CONSTRAINT `payments_purchasehistory_user_id_6f7e3e35_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_purchasehistory`
--

LOCK TABLES `payments_purchasehistory` WRITE;
/*!40000 ALTER TABLE `payments_purchasehistory` DISABLE KEYS */;
INSERT INTO `payments_purchasehistory` VALUES (169,1,481,71,6,4,'buy','2017-07-27',0,NULL),(192,1,512,85,350,4,'buy','2017-08-26',1,'ala carte'),(193,1,464,86,350,4,'subscribe','2017-08-26',0,'regular');
/*!40000 ALTER TABLE `payments_purchasehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_shipping`
--

DROP TABLE IF EXISTS `payments_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(1000) NOT NULL,
  `cost` decimal(6,2) NOT NULL,
  `helper` varchar(1000) DEFAULT NULL,
  `tracking` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_shipping`
--

LOCK TABLES `payments_shipping` WRITE;
/*!40000 ALTER TABLE `payments_shipping` DISABLE KEYS */;
INSERT INTO `payments_shipping` VALUES (4,'2-8 business days',4.99,'Standard USPS mail',NULL);
/*!40000 ALTER TABLE `payments_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_stripe`
--

DROP TABLE IF EXISTS `payments_stripe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_stripe` (
  `paymenttype_ptr_id` int(11) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` varchar(20) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `number` varchar(16) NOT NULL,
  `expiry` date NOT NULL,
  PRIMARY KEY (`paymenttype_ptr_id`),
  CONSTRAINT `payments_stripe_paymenttype_ptr_id_b51e68d1_fk_payments_` FOREIGN KEY (`paymenttype_ptr_id`) REFERENCES `payments_paymenttype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_stripe`
--

LOCK TABLES `payments_stripe` WRITE;
/*!40000 ALTER TABLE `payments_stripe` DISABLE KEYS */;
INSERT INTO `payments_stripe` VALUES (41,'cus_B3oCk0Lp4otNKe','Visa','1500564516','Rajiv Raja','4242','2019-08-01'),(42,'cus_B3oHXde7DWwLKq','Visa','1500564843','Rajiv Raja','4242','2019-08-01'),(43,'cus_B3qUEBQO8rlfLl','Visa','1500573020','Rajiv Raja','4242','2019-08-01'),(44,'cus_B3wL1ofq0yPgPy','Visa','1500594847','Rajiv Raja','4242','2019-08-01'),(45,'cus_B40jvkepXFBu3I','Visa','1500611134','Rupa Bhat','4242','2019-08-01'),(46,'cus_B414whSHcQv5Jh','Visa','1500612416','Rajiv Raja','4242','2019-08-01'),(47,'cus_B4lZeiTH6DnD1y','Visa','1500785360','Hambir Chavan','4242','2019-08-01'),(48,'cus_BF49spuIzP2QhR','Visa','1503160900','rupa','4242','2019-08-01');
/*!40000 ALTER TABLE `payments_stripe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_review`
--

DROP TABLE IF EXISTS `reviews_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headline` varchar(100) NOT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `useful` int(11) NOT NULL,
  `not_useful` int(11) NOT NULL,
  `createdte` datetime(6) NOT NULL,
  `fp_id` int(11) NOT NULL,
  `ph_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_review_fp_id_ca9c33ea_fk_home_facepack_item_ptr_id` (`fp_id`),
  KEY `reviews_review_ph_id_1117b574_fk_payments_purchasehistory_id` (`ph_id`),
  CONSTRAINT `reviews_review_fp_id_ca9c33ea_fk_home_facepack_item_ptr_id` FOREIGN KEY (`fp_id`) REFERENCES `home_facepack` (`item_ptr_id`),
  CONSTRAINT `reviews_review_ph_id_1117b574_fk_payments_purchasehistory_id` FOREIGN KEY (`ph_id`) REFERENCES `payments_purchasehistory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_review`
--

LOCK TABLES `reviews_review` WRITE;
/*!40000 ALTER TABLE `reviews_review` DISABLE KEYS */;
INSERT INTO `reviews_review` VALUES (15,'wow..just wow','my skin has never felt this soft and hydrated!!!!thank you farms 2 face!!! i will never go anywhere else for my skin care',5,2,0,'2017-07-20 23:55:41.322399',481,169);
/*!40000 ALTER TABLE `reviews_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_reviewimage`
--

DROP TABLE IF EXISTS `reviews_reviewimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews_reviewimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_reviewimage_review_id_57e63bb2_fk_reviews_review_id` (`review_id`),
  KEY `reviews_reviewimage_user_id_f19d13f8_fk_auth_user_id` (`user_id`),
  CONSTRAINT `reviews_reviewimage_review_id_57e63bb2_fk_reviews_review_id` FOREIGN KEY (`review_id`) REFERENCES `reviews_review` (`id`),
  CONSTRAINT `reviews_reviewimage_user_id_f19d13f8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_reviewimage`
--

LOCK TABLES `reviews_reviewimage` WRITE;
/*!40000 ALTER TABLE `reviews_reviewimage` DISABLE KEYS */;
INSERT INTO `reviews_reviewimage` VALUES (11,'images/reviews/rs_600x600-170703064626-634-BigPic-MK070317_0002_Layer_1.jpg',15,6);
/*!40000 ALTER TABLE `reviews_reviewimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_c1336794` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (49,'facebook','10102534254770084','{\"access_token\": \"EAABn4Jjpp78BAPs6pDeVyilPrcl6FPWhLyJ1QBcMZByDWFAV7qtfbpSlUh6wmurWR0qZB5ZB6NyonMLOl81wKUSpeleK9rQ5ZCVZBSbhYMGbQpzoRCeJZCq08lzacc02w6MQi03eZB6jzYUpszbxrQbwaNnMGz29bsZD\", \"expires\": null, \"token_type\": null, \"id\": \"10102534254770084\", \"auth_time\": 1493318338, \"granted_scopes\": [\"email\", \"public_profile\"], \"denied_scopes\": null}',2),(50,'facebook','10155307675260039','{\"access_token\": \"EAABn4Jjpp78BAHzZCgxeEm046sMHaQDTiSfHGklJ2erHBk74hdJOvM1BhWLO8fZAomvYno2sQMR03xBY7wmDJZCtuayyOStGL3i6vSfrPXhkzSBdPQCIQGftOS1wIm2aaeDaMCK69uSnk2dG3uXegXfuEfQB7oZD\", \"expires\": null, \"token_type\": null, \"id\": \"10155307675260039\"}',6),(52,'facebook','10102535660747494','{\"access_token\": \"EAAOYb3mXibgBAMlnzVTbx2QaoBuaEqzdrFZB5UdNlRZCopZBNpCYPBHw2n97rtbm5Gbl6sDZCF4tZC7ZAjQgRbVBZBaoZBaI71TzKvfKHfgcmIzRZCbCCaQthsZAqCgxgxWbafZCAYnlQ8wYZAq2TFqDrGGAhMZB6NNpZCSAwZD\", \"expires\": null, \"id\": \"10102535660747494\", \"token_type\": null}',2),(53,'facebook','10154792775758743','{\"id\": \"10154792775758743\", \"token_type\": null, \"access_token\": \"EAAOYb3mXibgBALGJo9G10BYILuRsmQ0H5hmWAgXlKKuetS449eVPIX79mL2E3SYWvQTy2CZAQgcYvBTPfd51pZBfZBrM5SdZAB2mZA4FO62B3fGtcMlnl9y9JvYhYHr2f8MZBOl2WkZAOzuSr8zlTrbwCF2IN4p7l8ZD\", \"expires\": null}',346);
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story_story`
--

DROP TABLE IF EXISTS `story_story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `description2` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_story`
--

LOCK TABLES `story_story` WRITE;
/*!40000 ALTER TABLE `story_story` DISABLE KEYS */;
INSERT INTO `story_story` VALUES (1,'Title','our story','images/story/IMG_0942.jpg',NULL,NULL),(2,'section-1','Is your skin the same as anyone else’s?','images/story/About_Us_fingerprint.png','We have unique  fingerprints. We have distinct skin. There are a variety of skin care products available, some good and some poor, but almost always generic. How often do we seek a product that worked so well for someone only to  and it does so little for us?',NULL),(3,'section-2','You carry your skin your whole life','images/story/F2F_CarryYourSkin.png','Every beauty product that you apply will work better if you have inherently healthy skin. We believe that skin care solutions should be as unique as your skin. We started Farms2Face to make personalized skin care with farm fresh ingredients possible!',NULL),(4,'section-3','Our philosophy','images/story/IMG_1010.jpg','A strong belief that nature has potent ingredients which can be e ectively harnessed to improve skin health. We have come up with a proprietary algorithm to formulate precise masking for your unique skin. Simply put, we match ingredients to your skin. This creation for you is handmade with organic and natural ingredients. Our masks are preservative free and do not contain any harmful chemicals. It’s about going back to our roots: applying nature to nurture.',NULL),(5,'section-4','The crew','images/story/F2F_RR_polaroid.png','Rupa Bhat has worked in high fashion retail for many years before starting on this new exciting journey. The seeds were sown many years ago in her childhood, when she helped her mom create a line of organic natural products.','Sudharani Bhat is a trained skin care aesthetician who worked with her mom for many years. She then worked in corporate roles before getting back into skin care with Farms2Face.'),(6,'section-5','None','images/story/F2F_Aayi_polaroid.png','Growing up, we saw, helped and learnt the art of creating all natural organic skin care treatments with our mom who has a lifetime of experience as a naturopathic skin care aesthetician. We became more conscious of our environment and the harmful chemicals in our personal care products as we welcomed our daughters into this world. Going back to our roots, we started making our own skin care products. We are now bringing our traditions into your lives.',NULL),(7,'section-6','We are starting with bringing fully customized mask solutions for your unique skin.','images/story/Scroll_Fade.psd','Because it’s Personal!',NULL);
/*!40000 ALTER TABLE `story_story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userregistration_forgotpass`
--

DROP TABLE IF EXISTS `userregistration_forgotpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userregistration_forgotpass` (
  `id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `userregistration_forgotpass_user_id_b4b2a041_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userregistration_forgotpass`
--

LOCK TABLES `userregistration_forgotpass` WRITE;
/*!40000 ALTER TABLE `userregistration_forgotpass` DISABLE KEYS */;
INSERT INTO `userregistration_forgotpass` VALUES ('81a646a537b84d5a9d9859e283de9517',2),('888ab83490fe43d797b5ff5fbee3aa64',312);
/*!40000 ALTER TABLE `userregistration_forgotpass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userregistration_profile`
--

DROP TABLE IF EXISTS `userregistration_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userregistration_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `location` varchar(30) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `questionnaire_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `subscription` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `D42afe1a0503102569281e3f24b0ab91` (`questionnaire_id`),
  CONSTRAINT `D42afe1a0503102569281e3f24b0ab91` FOREIGN KEY (`questionnaire_id`) REFERENCES `facepackwizard_questionnaireuserdata` (`id`),
  CONSTRAINT `userregistration_profile_user_id_d0b768c1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userregistration_profile`
--

LOCK TABLES `userregistration_profile` WRITE;
/*!40000 ALTER TABLE `userregistration_profile` DISABLE KEYS */;
INSERT INTO `userregistration_profile` VALUES (1,'images/profile/rajiv.rajagmail.com_social_00bwAw4_r50CCVd_zEfpL6X_zkOAlvX_ZEaLVyp.jpg','','1984-05-13','Female',NULL,2,'Yes'),(2,'images/profile/mridulakulkarnigmail.com_social.jpg','',NULL,'Female',NULL,6,''),(3,'images/profile/yoda.jpg','',NULL,'Male',NULL,1,''),(4,'images/profile/yoda_usvNUUg_o3BbE0N.jpg','','1980-03-26','Female',NULL,3,''),(6,'','',NULL,NULL,NULL,192,''),(7,'','',NULL,'Male',NULL,193,''),(8,'images/profile/yoda_gnkmBMr_EmD7sf2_hDaJsDf.jpg','',NULL,NULL,NULL,213,''),(9,'images/profile/yoda_oA3FP6a.jpg','',NULL,'Male',NULL,312,''),(10,'','',NULL,'Male',NULL,317,''),(11,'','',NULL,'Male',NULL,323,''),(12,'','',NULL,'Female',NULL,330,''),(13,'','',NULL,'Female',NULL,350,'');
/*!40000 ALTER TABLE `userregistration_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userregistration_shippingaddress`
--

DROP TABLE IF EXISTS `userregistration_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userregistration_shippingaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street1` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userregistrat_profile_id_7c94c91e_fk_userregistration_profile_id` (`profile_id`),
  CONSTRAINT `userregistrat_profile_id_7c94c91e_fk_userregistration_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `userregistration_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userregistration_shippingaddress`
--

LOCK TABLES `userregistration_shippingaddress` WRITE;
/*!40000 ALTER TABLE `userregistration_shippingaddress` DISABLE KEYS */;
INSERT INTO `userregistration_shippingaddress` VALUES (30,'731 Ellsworth st','','San Francisco','CA','United States','94102','',1,1,'Rajiv','Raja'),(31,'731 Ellsworth st','','San Francisco','CA','United States','94102','',1,9,'Rajiv','Raja'),(32,'731 Ellsworth st','','San Francisco','CA','United States','94102','',1,2,'Rajiv','Raja'),(33,'731 Ellsworth st','','San Francisco','CA','United States','94102','',1,11,'Rajiv','Raja');
/*!40000 ALTER TABLE `userregistration_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-21 19:23:39
