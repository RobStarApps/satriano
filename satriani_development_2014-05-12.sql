# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.37-0ubuntu0.12.04.1)
# Datenbank: satriani_development
# Erstellungsdauer: 2014-05-12 16:06:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle conversations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `conversations`;

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `body` text,
  `subject` varchar(255) DEFAULT '',
  `sender_id` int(11) DEFAULT NULL,
  `sender_type` varchar(255) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `draft` tinyint(1) DEFAULT '0',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `notified_object_id` int(11) DEFAULT NULL,
  `notified_object_type` varchar(255) DEFAULT NULL,
  `notification_code` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `global` tinyint(1) DEFAULT '0',
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notifications_on_conversation_id` (`conversation_id`),
  CONSTRAINT `notifications_on_conversation_id` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle receipts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipts`;

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver_id` int(11) DEFAULT NULL,
  `receiver_type` varchar(255) DEFAULT NULL,
  `notification_id` int(11) NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `trashed` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(25) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_receipts_on_notification_id` (`notification_id`),
  CONSTRAINT `receipts_on_notification_id` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20140506123349'),
	('20140507093104'),
	('20140507094755'),
	('20140507111307'),
	('20140508113657'),
	('20140508131907'),
	('20140509093355'),
	('20140509093356'),
	('20140509093357'),
	('20140509093358'),
	('20140509093359'),
	('20140509093360'),
	('20140509100401'),
	('20140509114826'),
	('20140509115223'),
	('20140509115321'),
	('20140509115404'),
	('20140509150108'),
	('20140509151118'),
	('20140509151237');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle skills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skills`;

CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_skills_on_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;

INSERT INTO `skills` (`id`, `created_at`, `updated_at`, `slug`, `type_id`)
VALUES
	(1,NULL,NULL,'guitar',1),
	(2,NULL,NULL,'piano',1),
	(3,NULL,NULL,'bass_guitar',1),
	(4,NULL,NULL,'singing',1),
	(5,NULL,NULL,'keyboard',1),
	(6,NULL,NULL,'violine',1),
	(7,NULL,NULL,'doublebass',1),
	(8,NULL,NULL,'drums',1),
	(9,NULL,NULL,'classical_guitar',1),
	(10,NULL,NULL,'professionals',4),
	(11,NULL,NULL,'beginner',4),
	(12,NULL,NULL,'kids',4),
	(13,NULL,NULL,'teenager',4),
	(14,NULL,NULL,'disabled',4),
	(15,NULL,NULL,'grownups',4),
	(16,NULL,NULL,'fullday',5),
	(17,NULL,NULL,'mornings',5),
	(18,NULL,NULL,'afternoons',5),
	(19,NULL,NULL,'evenings',5),
	(20,NULL,NULL,'nights',5),
	(21,NULL,NULL,'oncall',5),
	(22,NULL,NULL,'addresses_only',2),
	(23,NULL,NULL,'comes_around',2),
	(24,NULL,NULL,'lends_instruments',3),
	(25,NULL,NULL,'german',6),
	(26,NULL,NULL,'english',6),
	(27,NULL,NULL,'french',6),
	(28,NULL,NULL,'czech',6),
	(29,NULL,NULL,'polish',6),
	(30,NULL,NULL,'swedisch',6),
	(31,NULL,NULL,'russian',6),
	(32,NULL,NULL,'finish',6),
	(33,NULL,NULL,'norwegian',6),
	(34,NULL,NULL,'dutch',6),
	(35,NULL,NULL,'spanish',6),
	(36,NULL,NULL,'italian',6),
	(37,NULL,NULL,'bulgarian',6),
	(38,NULL,NULL,'romainian',6);

/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;

INSERT INTO `types` (`id`, `created_at`, `updated_at`, `slug`)
VALUES
	(1,NULL,NULL,'instrument'),
	(2,NULL,NULL,'transportation'),
	(3,NULL,NULL,'other'),
	(4,NULL,NULL,'targets'),
	(5,NULL,NULL,'availability'),
	(6,NULL,NULL,'languages');

/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle user_addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_addresses`;

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `street_number` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_addresses_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;

INSERT INTO `user_addresses` (`id`, `created_at`, `updated_at`, `street`, `street_number`, `postcode`, `city`, `country`, `phone`, `user_id`, `latitude`, `longitude`)
VALUES
	(6,'2014-05-09 10:12:03','2014-05-09 10:12:03','Bahnhofstrasse 6','6','49699','Lindern','Deutschland',NULL,1,52.8433,7.77762),
	(7,'2014-05-12 09:42:32','2014-05-12 09:42:32','Bahnhofstrasse 6','6','49699','Lindern','Deutschland',NULL,1,52.8433,7.77762);

/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle user_skills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_skills`;

CREATE TABLE `user_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_skills_on_skill_id` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_skills` WRITE;
/*!40000 ALTER TABLE `user_skills` DISABLE KEYS */;

INSERT INTO `user_skills` (`id`, `created_at`, `updated_at`, `user_id`, `skill_id`)
VALUES
	(7,'2014-05-12 09:58:40','2014-05-12 09:58:40',1,8),
	(10,'2014-05-12 11:45:23','2014-05-12 11:45:23',1,7),
	(11,'2014-05-12 15:14:34','2014-05-12 15:14:34',1,3),
	(12,'2014-05-12 15:37:21','2014-05-12 15:37:21',1,2);

/*!40000 ALTER TABLE `user_skills` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `first_name`, `last_name`)
VALUES
	(1,'meyborg@syborgstudios.com','$2a$10$oBaR4GRoerqB3y2Cn9m1reg6SmFbIG/nGDykSXHAcEnhLwl0g2oeu',NULL,NULL,NULL,4,'2014-05-12 08:26:52','2014-05-09 08:56:06','10.0.2.2','10.0.2.2','2014-05-07 09:03:31','2014-05-12 08:26:52','Simon','Meyborg');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
