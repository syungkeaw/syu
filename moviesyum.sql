-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: moviesyum
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `####movie_omdb`
--

DROP TABLE IF EXISTS `####movie_omdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `####movie_omdb` (
  `imdbID` varchar(9) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `Rated` varchar(100) DEFAULT NULL,
  `Released` varchar(50) DEFAULT NULL,
  `Runtime` varchar(50) DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Director` varchar(100) DEFAULT NULL,
  `Writer` varchar(255) DEFAULT NULL,
  `Actors` varchar(255) DEFAULT NULL,
  `Plot` text,
  `Language` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Awards` varchar(255) DEFAULT NULL,
  `Poster` varchar(255) DEFAULT NULL,
  `Metascore` varchar(255) DEFAULT NULL,
  `imdbRating` float DEFAULT NULL,
  `imdbVotes` int(11) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `tomatoMeter` int(11) DEFAULT NULL,
  `tomatoImage` varchar(255) DEFAULT NULL,
  `tomatoRating` float DEFAULT NULL,
  `tomatoReviews` int(11) DEFAULT NULL,
  `tomatoFresh` int(11) DEFAULT NULL,
  `tomatoRotten` int(11) DEFAULT NULL,
  `tomatoConsensus` varchar(255) DEFAULT NULL,
  `tomatoUserMeter` varchar(255) DEFAULT NULL,
  `tomatoUserRating` float DEFAULT NULL,
  `tomatoUserReviews` int(11) DEFAULT NULL,
  `DVD` varchar(255) DEFAULT NULL,
  `BoxOffice` varchar(255) DEFAULT NULL,
  `Production` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`imdbID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `####movie_omdb`
--

LOCK TABLES `####movie_omdb` WRITE;
/*!40000 ALTER TABLE `####movie_omdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `####movie_omdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast`
--

DROP TABLE IF EXISTS `cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cast` (
  `cast_id` varchar(10) NOT NULL,
  `cast_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast`
--

LOCK TABLES `cast` WRITE;
/*!40000 ALTER TABLE `cast` DISABLE KEYS */;
/*!40000 ALTER TABLE `cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genre_id` int(3) NOT NULL AUTO_INCREMENT,
  `genre_label` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`,`genre_label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1436539696),('m140209_132017_init',1436539784),('m140403_174025_create_account_table',1436539814),('m140504_113157_update_tables',1436539826),('m140504_130429_create_token_table',1436539832),('m140830_171933_fix_ip_field',1436539835),('m140830_172703_change_account_table_name',1436539835),('m141222_110026_update_ip_field',1436539838);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `title_id` varchar(10) NOT NULL,
  `title` varchar(150) NOT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `mpaa_rating` varchar(50) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `runtime` varchar(255) DEFAULT NULL,
  `oscars` varchar(255) DEFAULT NULL,
  `awards` varchar(255) DEFAULT NULL,
  `nominations` varchar(255) DEFAULT NULL,
  `votes` int(10) DEFAULT NULL,
  `updated_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('tt0499549','Avatar','',2009,7.9,'PG-13','2009-12-17','http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1._SY200.jpg','162','3','83','106',797652,1437034638,1437034638),('tt0800369','Thor','',2011,7,'PG-13','2011-04-28','http://ia.media-imdb.com/images/M/MV5BMTYxMjA5NDMzNV5BMl5BanBnXkFtZTcwOTk2Mjk3NA@@._V1._SY200.jpg','115','','5','29',460039,1437034774,1437034774),('tt0478970','Ant-Man','',2015,8,'PG-13','2015-07-30','http://ia.media-imdb.com/images/M/MV5BMjM2NTQ5Mzc2M15BMl5BanBnXkFtZTgwNTcxMDI2NTE@._V1._SY200.jpg','117','','','',3033,1437035076,1437035076),('tt0417299','&#x22;Avatar: The Last Airbender&#x22;','',2005,9.2,'','2005-02-21','http://ia.media-imdb.com/images/M/MV5BMTM3MTc3OTc0NF5BMl5BanBnXkFtZTcwOTQ0OTM1MQ@@._V1._SY200.jpg','23','','6','5',103466,1438931756,1438931756),('tt0120347','Tomorrow Never Dies','',1997,6.5,'PG-13','1998-03-06','http://ia.media-imdb.com/images/M/MV5BMTM1MTk2ODQxNV5BMl5BanBnXkFtZTcwOTY5MDg0NA@@._V1._SY200.jpg','119','','6','9',136054,1438931779,1438931779),('tt1981115','Thor: The Dark World','',2013,7.1,'PG-13','2013-11-07','http://ia.media-imdb.com/images/M/MV5BMTQyNzAwOTUxOF5BMl5BanBnXkFtZTcwMTE0OTc5OQ@@._V1._SY200.jpg','112','','2','18',349486,1438931818,1438931818),('tt0460909','Prisoner','',2007,5,'','1970-01-01','http://ia.media-imdb.com/images/M/MV5BMjAxNDAxMzgyM15BMl5BanBnXkFtZTcwNTYyODk5Mg@@._V1._SY200.jpg','94','','','',408,1438931917,1438931917),('tt1392214','Prisoners','',2013,8.1,'R','2013-10-03','http://ia.media-imdb.com/images/M/MV5BMTg0NTIzMjQ1NV5BMl5BanBnXkFtZTcwNDc3MzM5OQ@@._V1._SY200.jpg','153','','13','30',312073,1438931997,1438931997);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_cast` (
  `title_id` varchar(10) NOT NULL,
  `cast_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`cast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_director`
--

DROP TABLE IF EXISTS `movie_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_director` (
  `title_id` varchar(10) NOT NULL,
  `crew_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_director`
--

LOCK TABLES `movie_director` WRITE;
/*!40000 ALTER TABLE `movie_director` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genre` (
  `title_id` varchar(10) NOT NULL,
  `genre_id` int(5) NOT NULL,
  PRIMARY KEY (`title_id`,`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_crew`
--

DROP TABLE IF EXISTS `production_crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production_crew` (
  `title_id` varchar(10) NOT NULL,
  `crew_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`crew_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_crew`
--

LOCK TABLES `production_crew` WRITE;
/*!40000 ALTER TABLE `production_crew` DISABLE KEYS */;
/*!40000 ALTER TABLE `production_crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Supachai','','syungkeaw@gmail.com','75fba3a6ba00e3ea0c721bd2cb3b586a','xx','http://www.moviesyum.com',''),(2,NULL,NULL,'eggmenth@gmail.com','43f86d6e9a2e4ee933372a3c9d1ac91f',NULL,NULL,NULL),(3,NULL,NULL,'test@mail.com','97dfebf4098c0f5c16bca61e2b76c373',NULL,NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommended_title`
--

DROP TABLE IF EXISTS `recommended_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommended_title` (
  `title_id` varchar(10) NOT NULL,
  `req_title_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`req_title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommended_title`
--

LOCK TABLES `recommended_title` WRITE;
/*!40000 ALTER TABLE `recommended_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommended_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_account`
--

LOCK TABLES `social_account` WRITE;
/*!40000 ALTER TABLE `social_account` DISABLE KEYS */;
INSERT INTO `social_account` VALUES (1,1,'facebook','1505269113072383','{\"id\":\"1505269113072383\",\"email\":\"syungkeaw@gmail.com\",\"favorite_athletes\":[{\"id\":\"369516459755031\",\"name\":\"Banchamek Gym\"}],\"first_name\":\"Supachai\",\"gender\":\"male\",\"last_name\":\"Yungkeaw\",\"link\":\"https:\\/\\/www.facebook.com\\/app_scoped_user_id\\/1505269113072383\\/\",\"locale\":\"th_TH\",\"name\":\"Supachai Yungkeaw\",\"timezone\":7,\"updated_time\":\"2015-07-04T03:33:40+0000\",\"verified\":true}'),(2,2,'facebook','1463419787310675','{\"id\":\"1463419787310675\",\"email\":\"eggmenth@gmail.com\",\"first_name\":\"Fof\",\"gender\":\"male\",\"last_name\":\"Master\",\"link\":\"https:\\/\\/www.facebook.com\\/app_scoped_user_id\\/1463419787310675\\/\",\"locale\":\"th_TH\",\"name\":\"Fof Master\",\"timezone\":7,\"updated_time\":\"2015-03-21T09:51:35+0000\",\"verified\":false}');
/*!40000 ALTER TABLE `social_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,'00hgHPf8I07EuWu1uij0M_EQ0PE5iTXO',1436544270,0),(1,'3qDltN92XGDINmCjWyM2-HxvqZfj6_1E',1436540785,0),(1,'7DhiTV7EJDk5bWHDUF61FeU1UmA5ZNuo',1436542992,0),(1,'bYbG-ncbAMlobxDBtMH7xC_WVcMKK7ms',1436543573,0),(1,'C1_LQdfFpkZS6tcQW0ovfKQVS2MMNLFy',1436542767,0),(1,'du3iTNE8eNcTjD_1ZBoc_Uen-Y_symT3',1436543423,0),(1,'e-dvin1cVgXpYukHoDAWOfESEavpwunT',1436543513,0),(1,'IXQRakZG_eJMTSlEGVfBkPqVBH6QYSX-',1436543301,0),(1,'jzNzF3Yza_i_i1n_I8zroPuQTuLNtQb8',1436541032,0),(1,'SAgAlHZYRUTlmu2Y8X3BzIlj9-jEqAk1',1436544175,0);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin2','syungkeaw@gmail.com','$2y$10$wg0k3TyRqpy3PzG.7aCY5eXd9FgVZ0Zile6J2IDprl6MkIxI/Hf76','VWCs3T8EMWQBy2DGZU_t0eZiKU0KTIZN',1436544410,NULL,NULL,'::1',1436540784,1436544984,0),(2,'eggmenth','eggmenth@gmail.com','$2y$10$OpQ55E3U85Uu9nM1dGxnaeG3gAkZLEr6lnstQ11ve2hZxTFmwGq9e','Ht1hRFf3CBx8iM_a3R7AEfXDL-PQ4ys1',1436545626,NULL,NULL,'::1',1436545626,1436545626,0),(3,'test','test@mail.com','$2y$10$oUTyHAI6Yt5RFpHZp2clK.tJtbdnzjN23i0rQXte7m0fA2GSaxa0u','poFDwsQvhebBbx9q9ZYxu0geoDlgjn51',1436546176,NULL,NULL,'::1',1436546176,1436546176,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-07 14:28:24
