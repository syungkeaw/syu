/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : moviesyum

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-07-16 15:28:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ####movie_omdb
-- ----------------------------
DROP TABLE IF EXISTS `####movie_omdb`;
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

-- ----------------------------
-- Records of ####movie_omdb
-- ----------------------------

-- ----------------------------
-- Table structure for cast
-- ----------------------------
DROP TABLE IF EXISTS `cast`;
CREATE TABLE `cast` (
  `cast_id` varchar(10) NOT NULL,
  `cast_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cast
-- ----------------------------

-- ----------------------------
-- Table structure for cast_star
-- ----------------------------
DROP TABLE IF EXISTS `cast_star`;
CREATE TABLE `cast_star` (
  `title_id` varchar(10) NOT NULL,
  `cast_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`cast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cast_star
-- ----------------------------

-- ----------------------------
-- Table structure for genre
-- ----------------------------
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `genre_id` int(3) NOT NULL AUTO_INCREMENT,
  `genre_label` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`,`genre_label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genre
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1436539696');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1436539784');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1436539814');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1436539826');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1436539832');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1436539835');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1436539835');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1436539838');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `title_id` varchar(10) NOT NULL,
  `title` varchar(150) NOT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `mpaa_rating` varchar(50) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `plot` text,
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

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('tt0499549', 'Avatar', '', '2009', '7.9', 'PG-13', '2009-12-17', 'Enter the World', 'A Paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home..', 'http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1._SY200.jpg', '162', '3', '83', '106', '797652', '1437034638', '1437034638');
INSERT INTO `movie` VALUES ('tt0800369', 'Thor', '', '2011', '7', 'PG-13', '2011-04-28', 'Two worlds. One hero.', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', 'http://ia.media-imdb.com/images/M/MV5BMTYxMjA5NDMzNV5BMl5BanBnXkFtZTcwOTk2Mjk3NA@@._V1._SY200.jpg', '115', '', '5', '29', '460039', '1437034774', '1437034774');
INSERT INTO `movie` VALUES ('tt0478970', 'Ant-Man', '', '2015', '8', 'PG-13', '2015-07-30', 'This July, heroes don&#x27;t come any bigger.', 'Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.', 'http://ia.media-imdb.com/images/M/MV5BMjM2NTQ5Mzc2M15BMl5BanBnXkFtZTgwNTcxMDI2NTE@._V1._SY200.jpg', '117', '', '', '', '3033', '1437035076', '1437035076');

-- ----------------------------
-- Table structure for movie_cast
-- ----------------------------
DROP TABLE IF EXISTS `movie_cast`;
CREATE TABLE `movie_cast` (
  `title_id` varchar(10) NOT NULL,
  `cast_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`cast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_cast
-- ----------------------------

-- ----------------------------
-- Table structure for movie_clip
-- ----------------------------
DROP TABLE IF EXISTS `movie_clip`;
CREATE TABLE `movie_clip` (
  `clip_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_id` int(11) NOT NULL,
  `clip_url` varchar(255) NOT NULL,
  PRIMARY KEY (`clip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_clip
-- ----------------------------

-- ----------------------------
-- Table structure for movie_director
-- ----------------------------
DROP TABLE IF EXISTS `movie_director`;
CREATE TABLE `movie_director` (
  `title_id` varchar(10) NOT NULL,
  `crew_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_director
-- ----------------------------

-- ----------------------------
-- Table structure for movie_editor
-- ----------------------------
DROP TABLE IF EXISTS `movie_editor`;
CREATE TABLE `movie_editor` (
  `title_id` varchar(10) NOT NULL,
  `crew_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_editor
-- ----------------------------

-- ----------------------------
-- Table structure for movie_genre
-- ----------------------------
DROP TABLE IF EXISTS `movie_genre`;
CREATE TABLE `movie_genre` (
  `title_id` varchar(10) NOT NULL,
  `genre_id` int(5) NOT NULL,
  PRIMARY KEY (`title_id`,`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_genre
-- ----------------------------

-- ----------------------------
-- Table structure for movie_image
-- ----------------------------
DROP TABLE IF EXISTS `movie_image`;
CREATE TABLE `movie_image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_id` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `xxx` (`title_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_image
-- ----------------------------

-- ----------------------------
-- Table structure for movie_musician
-- ----------------------------
DROP TABLE IF EXISTS `movie_musician`;
CREATE TABLE `movie_musician` (
  `title_id` varchar(10) NOT NULL,
  `crew_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_musician
-- ----------------------------

-- ----------------------------
-- Table structure for movie_writer
-- ----------------------------
DROP TABLE IF EXISTS `movie_writer`;
CREATE TABLE `movie_writer` (
  `title_id` varchar(10) NOT NULL,
  `crew_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_writer
-- ----------------------------

-- ----------------------------
-- Table structure for production_crew
-- ----------------------------
DROP TABLE IF EXISTS `production_crew`;
CREATE TABLE `production_crew` (
  `crew_id` varchar(10) NOT NULL,
  `crew_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of production_crew
-- ----------------------------

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
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

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'Supachai', '', 'syungkeaw@gmail.com', '75fba3a6ba00e3ea0c721bd2cb3b586a', 'xx', 'http://www.moviesyum.com', '');
INSERT INTO `profile` VALUES ('2', null, null, 'eggmenth@gmail.com', '43f86d6e9a2e4ee933372a3c9d1ac91f', null, null, null);
INSERT INTO `profile` VALUES ('3', null, null, 'test@mail.com', '97dfebf4098c0f5c16bca61e2b76c373', null, null, null);

-- ----------------------------
-- Table structure for recommended_title
-- ----------------------------
DROP TABLE IF EXISTS `recommended_title`;
CREATE TABLE `recommended_title` (
  `title_id` varchar(10) NOT NULL,
  `req_title_id` varchar(10) NOT NULL,
  PRIMARY KEY (`title_id`,`req_title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommended_title
-- ----------------------------

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
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

-- ----------------------------
-- Records of social_account
-- ----------------------------
INSERT INTO `social_account` VALUES ('1', '1', 'facebook', '1505269113072383', '{\"id\":\"1505269113072383\",\"email\":\"syungkeaw@gmail.com\",\"favorite_athletes\":[{\"id\":\"369516459755031\",\"name\":\"Banchamek Gym\"}],\"first_name\":\"Supachai\",\"gender\":\"male\",\"last_name\":\"Yungkeaw\",\"link\":\"https:\\/\\/www.facebook.com\\/app_scoped_user_id\\/1505269113072383\\/\",\"locale\":\"th_TH\",\"name\":\"Supachai Yungkeaw\",\"timezone\":7,\"updated_time\":\"2015-07-04T03:33:40+0000\",\"verified\":true}');
INSERT INTO `social_account` VALUES ('2', '2', 'facebook', '1463419787310675', '{\"id\":\"1463419787310675\",\"email\":\"eggmenth@gmail.com\",\"first_name\":\"Fof\",\"gender\":\"male\",\"last_name\":\"Master\",\"link\":\"https:\\/\\/www.facebook.com\\/app_scoped_user_id\\/1463419787310675\\/\",\"locale\":\"th_TH\",\"name\":\"Fof Master\",\"timezone\":7,\"updated_time\":\"2015-03-21T09:51:35+0000\",\"verified\":false}');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '00hgHPf8I07EuWu1uij0M_EQ0PE5iTXO', '1436544270', '0');
INSERT INTO `token` VALUES ('1', '3qDltN92XGDINmCjWyM2-HxvqZfj6_1E', '1436540785', '0');
INSERT INTO `token` VALUES ('1', '7DhiTV7EJDk5bWHDUF61FeU1UmA5ZNuo', '1436542992', '0');
INSERT INTO `token` VALUES ('1', 'bYbG-ncbAMlobxDBtMH7xC_WVcMKK7ms', '1436543573', '0');
INSERT INTO `token` VALUES ('1', 'C1_LQdfFpkZS6tcQW0ovfKQVS2MMNLFy', '1436542767', '0');
INSERT INTO `token` VALUES ('1', 'du3iTNE8eNcTjD_1ZBoc_Uen-Y_symT3', '1436543423', '0');
INSERT INTO `token` VALUES ('1', 'e-dvin1cVgXpYukHoDAWOfESEavpwunT', '1436543513', '0');
INSERT INTO `token` VALUES ('1', 'IXQRakZG_eJMTSlEGVfBkPqVBH6QYSX-', '1436543301', '0');
INSERT INTO `token` VALUES ('1', 'jzNzF3Yza_i_i1n_I8zroPuQTuLNtQb8', '1436541032', '0');
INSERT INTO `token` VALUES ('1', 'SAgAlHZYRUTlmu2Y8X3BzIlj9-jEqAk1', '1436544175', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
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

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin2', 'syungkeaw@gmail.com', '$2y$10$wg0k3TyRqpy3PzG.7aCY5eXd9FgVZ0Zile6J2IDprl6MkIxI/Hf76', 'VWCs3T8EMWQBy2DGZU_t0eZiKU0KTIZN', '1436544410', null, null, '::1', '1436540784', '1436544984', '0');
INSERT INTO `user` VALUES ('2', 'eggmenth', 'eggmenth@gmail.com', '$2y$10$OpQ55E3U85Uu9nM1dGxnaeG3gAkZLEr6lnstQ11ve2hZxTFmwGq9e', 'Ht1hRFf3CBx8iM_a3R7AEfXDL-PQ4ys1', '1436545626', null, null, '::1', '1436545626', '1436545626', '0');
INSERT INTO `user` VALUES ('3', 'test', 'test@mail.com', '$2y$10$oUTyHAI6Yt5RFpHZp2clK.tJtbdnzjN23i0rQXte7m0fA2GSaxa0u', 'poFDwsQvhebBbx9q9ZYxu0geoDlgjn51', '1436546176', null, null, '::1', '1436546176', '1436546176', '0');
