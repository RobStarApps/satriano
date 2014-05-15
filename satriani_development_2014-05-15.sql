# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.37-0ubuntu0.12.04.1)
# Datenbank: satriani_development
# Erstellungsdauer: 2014-05-15 15:55:58 +0000
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



# Export von Tabelle countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `printable_name` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `iso`, `name`, `printable_name`, `iso3`, `numcode`)
VALUES
	(1,'AF','AFGHANISTAN','Afghanistan','AFG',4),
	(2,'AL','ALBANIA','Albania','ALB',8),
	(3,'DZ','ALGERIA','Algeria','DZA',12),
	(4,'AS','AMERICAN SAMOA','American Samoa','ASM',16),
	(5,'AD','ANDORRA','Andorra','AND',20),
	(6,'AO','ANGOLA','Angola','AGO',24),
	(7,'AI','ANGUILLA','Anguilla','AIA',660),
	(8,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28),
	(9,'AR','ARGENTINA','Argentina','ARG',32),
	(10,'AM','ARMENIA','Armenia','ARM',51),
	(11,'AW','ARUBA','Aruba','ABW',533),
	(12,'AU','AUSTRALIA','Australia','AUS',36),
	(13,'AT','AUSTRIA','Austria','AUT',40),
	(14,'AZ','AZERBAIJAN','Azerbaijan','AZE',31),
	(15,'BS','BAHAMAS','Bahamas','BHS',44),
	(16,'BH','BAHRAIN','Bahrain','BHR',48),
	(17,'BD','BANGLADESH','Bangladesh','BGD',50),
	(18,'BB','BARBADOS','Barbados','BRB',52),
	(19,'BY','BELARUS','Belarus','BLR',112),
	(20,'BE','BELGIUM','Belgium','BEL',56),
	(21,'BZ','BELIZE','Belize','BLZ',84),
	(22,'BJ','BENIN','Benin','BEN',204),
	(23,'BM','BERMUDA','Bermuda','BMU',60),
	(24,'BT','BHUTAN','Bhutan','BTN',64),
	(25,'BO','BOLIVIA','Bolivia','BOL',68),
	(26,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70),
	(27,'BW','BOTSWANA','Botswana','BWA',72),
	(28,'BR','BRAZIL','Brazil','BRA',76),
	(29,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96),
	(30,'BG','BULGARIA','Bulgaria','BGR',100),
	(31,'BF','BURKINA FASO','Burkina Faso','BFA',854),
	(32,'BI','BURUNDI','Burundi','BDI',108),
	(33,'KH','CAMBODIA','Cambodia','KHM',116),
	(34,'CM','CAMEROON','Cameroon','CMR',120),
	(35,'CA','CANADA','Canada','CAN',124),
	(36,'CV','CAPE VERDE','Cape Verde','CPV',132),
	(37,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136),
	(38,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140),
	(39,'TD','CHAD','Chad','TCD',148),
	(40,'CL','CHILE','Chile','CHL',152),
	(41,'CN','CHINA','China','CHN',156),
	(42,'CO','COLOMBIA','Colombia','COL',170),
	(43,'KM','COMOROS','Comoros','COM',174),
	(44,'CG','CONGO','Congo','COG',178),
	(45,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180),
	(46,'CK','COOK ISLANDS','Cook Islands','COK',184),
	(47,'CR','COSTA RICA','Costa Rica','CRI',188),
	(48,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384),
	(49,'HR','CROATIA','Croatia','HRV',191),
	(50,'CU','CUBA','Cuba','CUB',192),
	(51,'CY','CYPRUS','Cyprus','CYP',196),
	(52,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203),
	(53,'DK','DENMARK','Denmark','DNK',208),
	(54,'DJ','DJIBOUTI','Djibouti','DJI',262),
	(55,'DM','DOMINICA','Dominica','DMA',212),
	(56,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214),
	(57,'EC','ECUADOR','Ecuador','ECU',218),
	(58,'EG','EGYPT','Egypt','EGY',818),
	(59,'SV','EL SALVADOR','El Salvador','SLV',222),
	(60,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226),
	(61,'ER','ERITREA','Eritrea','ERI',232),
	(62,'EE','ESTONIA','Estonia','EST',233),
	(63,'ET','ETHIOPIA','Ethiopia','ETH',231),
	(64,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238),
	(65,'FO','FAROE ISLANDS','Faroe Islands','FRO',234),
	(66,'FJ','FIJI','Fiji','FJI',242),
	(67,'FI','FINLAND','Finland','FIN',246),
	(68,'FR','FRANCE','France','FRA',250),
	(69,'GF','FRENCH GUIANA','French Guiana','GUF',254),
	(70,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258),
	(71,'GA','GABON','Gabon','GAB',266),
	(72,'GM','GAMBIA','Gambia','GMB',270),
	(73,'GE','GEORGIA','Georgia','GEO',268),
	(74,'DE','GERMANY','Germany','DEU',276),
	(75,'GH','GHANA','Ghana','GHA',288),
	(76,'GI','GIBRALTAR','Gibraltar','GIB',292),
	(77,'GR','GREECE','Greece','GRC',300),
	(78,'GL','GREENLAND','Greenland','GRL',304),
	(79,'GD','GRENADA','Grenada','GRD',308),
	(80,'GP','GUADELOUPE','Guadeloupe','GLP',312),
	(81,'GU','GUAM','Guam','GUM',316),
	(82,'GT','GUATEMALA','Guatemala','GTM',320),
	(83,'GN','GUINEA','Guinea','GIN',324),
	(84,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624),
	(85,'GY','GUYANA','Guyana','GUY',328),
	(86,'HT','HAITI','Haiti','HTI',332),
	(87,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336),
	(88,'HN','HONDURAS','Honduras','HND',340),
	(89,'HK','HONG KONG','Hong Kong','HKG',344),
	(90,'HU','HUNGARY','Hungary','HUN',348),
	(91,'IS','ICELAND','Iceland','ISL',352),
	(92,'IN','INDIA','India','IND',356),
	(93,'ID','INDONESIA','Indonesia','IDN',360),
	(94,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364),
	(95,'IQ','IRAQ','Iraq','IRQ',368),
	(96,'IE','IRELAND','Ireland','IRL',372),
	(97,'IL','ISRAEL','Israel','ISR',376),
	(98,'IT','ITALY','Italy','ITA',380),
	(99,'JM','JAMAICA','Jamaica','JAM',388),
	(100,'JP','JAPAN','Japan','JPN',392),
	(101,'JO','JORDAN','Jordan','JOR',400),
	(102,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398),
	(103,'KE','KENYA','Kenya','KEN',404),
	(104,'KI','KIRIBATI','Kiribati','KIR',296),
	(105,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408),
	(106,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410),
	(107,'KW','KUWAIT','Kuwait','KWT',414),
	(108,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417),
	(109,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418),
	(110,'LV','LATVIA','Latvia','LVA',428),
	(111,'LB','LEBANON','Lebanon','LBN',422),
	(112,'LS','LESOTHO','Lesotho','LSO',426),
	(113,'LR','LIBERIA','Liberia','LBR',430),
	(114,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434),
	(115,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438),
	(116,'LT','LITHUANIA','Lithuania','LTU',440),
	(117,'LU','LUXEMBOURG','Luxembourg','LUX',442),
	(118,'MO','MACAO','Macao','MAC',446),
	(119,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807),
	(120,'MG','MADAGASCAR','Madagascar','MDG',450),
	(121,'MW','MALAWI','Malawi','MWI',454),
	(122,'MY','MALAYSIA','Malaysia','MYS',458),
	(123,'MV','MALDIVES','Maldives','MDV',462),
	(124,'ML','MALI','Mali','MLI',466),
	(125,'MT','MALTA','Malta','MLT',470),
	(126,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584),
	(127,'MQ','MARTINIQUE','Martinique','MTQ',474),
	(128,'MR','MAURITANIA','Mauritania','MRT',478),
	(129,'MU','MAURITIUS','Mauritius','MUS',480),
	(130,'MX','MEXICO','Mexico','MEX',484),
	(131,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583),
	(132,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498),
	(133,'MC','MONACO','Monaco','MCO',492),
	(134,'MN','MONGOLIA','Mongolia','MNG',496),
	(135,'MS','MONTSERRAT','Montserrat','MSR',500),
	(136,'MA','MOROCCO','Morocco','MAR',504),
	(137,'MZ','MOZAMBIQUE','Mozambique','MOZ',508),
	(138,'MM','MYANMAR','Myanmar','MMR',104),
	(139,'NA','NAMIBIA','Namibia','NAM',516),
	(140,'NR','NAURU','Nauru','NRU',520),
	(141,'NP','NEPAL','Nepal','NPL',524),
	(142,'NL','NETHERLANDS','Netherlands','NLD',528),
	(143,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530),
	(144,'NC','NEW CALEDONIA','New Caledonia','NCL',540),
	(145,'NZ','NEW ZEALAND','New Zealand','NZL',554),
	(146,'NI','NICARAGUA','Nicaragua','NIC',558),
	(147,'NE','NIGER','Niger','NER',562),
	(148,'NG','NIGERIA','Nigeria','NGA',566),
	(149,'NU','NIUE','Niue','NIU',570),
	(150,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574),
	(151,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580),
	(152,'NO','NORWAY','Norway','NOR',578),
	(153,'OM','OMAN','Oman','OMN',512),
	(154,'PK','PAKISTAN','Pakistan','PAK',586),
	(155,'PW','PALAU','Palau','PLW',585),
	(156,'PA','PANAMA','Panama','PAN',591),
	(157,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598),
	(158,'PY','PARAGUAY','Paraguay','PRY',600),
	(159,'PE','PERU','Peru','PER',604),
	(160,'PH','PHILIPPINES','Philippines','PHL',608),
	(161,'PN','PITCAIRN','Pitcairn','PCN',612),
	(162,'PL','POLAND','Poland','POL',616),
	(163,'PT','PORTUGAL','Portugal','PRT',620),
	(164,'PR','PUERTO RICO','Puerto Rico','PRI',630),
	(165,'QA','QATAR','Qatar','QAT',634),
	(166,'RE','REUNION','Reunion','REU',638),
	(167,'RO','ROMANIA','Romania','ROM',642),
	(168,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643),
	(169,'RW','RWANDA','Rwanda','RWA',646),
	(170,'SH','SAINT HELENA','Saint Helena','SHN',654),
	(171,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659),
	(172,'LC','SAINT LUCIA','Saint Lucia','LCA',662),
	(173,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666),
	(174,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670),
	(175,'WS','SAMOA','Samoa','WSM',882),
	(176,'SM','SAN MARINO','San Marino','SMR',674),
	(177,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678),
	(178,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682),
	(179,'SN','SENEGAL','Senegal','SEN',686),
	(180,'SC','SEYCHELLES','Seychelles','SYC',690),
	(181,'SL','SIERRA LEONE','Sierra Leone','SLE',694),
	(182,'SG','SINGAPORE','Singapore','SGP',702),
	(183,'SK','SLOVAKIA','Slovakia','SVK',703),
	(184,'SI','SLOVENIA','Slovenia','SVN',705),
	(185,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90),
	(186,'SO','SOMALIA','Somalia','SOM',706),
	(187,'ZA','SOUTH AFRICA','South Africa','ZAF',710),
	(188,'ES','SPAIN','Spain','ESP',724),
	(189,'LK','SRI LANKA','Sri Lanka','LKA',144),
	(190,'SD','SUDAN','Sudan','SDN',736),
	(191,'SR','SURINAME','Suriname','SUR',740),
	(192,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744),
	(193,'SZ','SWAZILAND','Swaziland','SWZ',748),
	(194,'SE','SWEDEN','Sweden','SWE',752),
	(195,'CH','SWITZERLAND','Switzerland','CHE',756),
	(196,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760),
	(197,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158),
	(198,'TJ','TAJIKISTAN','Tajikistan','TJK',762),
	(199,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834),
	(200,'TH','THAILAND','Thailand','THA',764),
	(201,'TG','TOGO','Togo','TGO',768),
	(202,'TK','TOKELAU','Tokelau','TKL',772),
	(203,'TO','TONGA','Tonga','TON',776),
	(204,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780),
	(205,'TN','TUNISIA','Tunisia','TUN',788),
	(206,'TR','TURKEY','Turkey','TUR',792),
	(207,'TM','TURKMENISTAN','Turkmenistan','TKM',795),
	(208,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796),
	(209,'TV','TUVALU','Tuvalu','TUV',798),
	(210,'UG','UGANDA','Uganda','UGA',800),
	(211,'UA','UKRAINE','Ukraine','UKR',804),
	(212,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784),
	(213,'GB','UNITED KINGDOM','United Kingdom','GBR',826),
	(214,'US','UNITED STATES','United States','USA',840),
	(215,'UY','URUGUAY','Uruguay','URY',858),
	(216,'UZ','UZBEKISTAN','Uzbekistan','UZB',860),
	(217,'VU','VANUATU','Vanuatu','VUT',548),
	(218,'VE','VENEZUELA','Venezuela','VEN',862),
	(219,'VN','VIET NAM','Viet Nam','VNM',704),
	(220,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92),
	(221,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850),
	(222,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876),
	(223,'EH','WESTERN SAHARA','Western Sahara','ESH',732),
	(224,'YE','YEMEN','Yemen','YEM',887),
	(225,'ZM','ZAMBIA','Zambia','ZMB',894),
	(226,'ZW','ZIMBABWE','Zimbabwe','ZWE',716);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle landingpages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `landingpages`;

CREATE TABLE `landingpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
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
	('20140509151237'),
	('20140513141026'),
	('20140513141723'),
	('20140513145959'),
	('20140514154703');

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
	(30,NULL,NULL,'swedish',6),
	(31,NULL,NULL,'russian',6),
	(32,NULL,NULL,'finish',6),
	(33,NULL,NULL,'norwegian',6),
	(34,NULL,NULL,'dutch',6),
	(35,NULL,NULL,'spanish',6),
	(36,NULL,NULL,'italian',6),
	(37,NULL,NULL,'bulgarian',6),
	(38,NULL,NULL,'romainian',6),
	(39,NULL,NULL,'skilled',4),
	(40,NULL,NULL,'all',4),
	(41,NULL,NULL,'group_lessions',3);

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
	(4,NULL,NULL,'target'),
	(5,NULL,NULL,'availability'),
	(6,NULL,NULL,'language');

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
  `phone` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_addresses_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;

INSERT INTO `user_addresses` (`id`, `created_at`, `updated_at`, `street`, `street_number`, `postcode`, `city`, `phone`, `user_id`, `latitude`, `longitude`, `country_id`)
VALUES
	(6,'2014-05-09 10:12:03','2014-05-09 10:12:03','Bahnhofstrasse 6','6','49699','Lindern',NULL,1,52.8433,7.77762,74),
	(7,'2014-05-12 09:42:32','2014-05-12 09:42:32','Bahnhofstrasse 6','6','49699','Lindern',NULL,1,52.8433,7.77762,74),
	(8,'2014-05-13 14:58:39','2014-05-13 14:58:39','Fischers Allee','85','22763','Hamburg',NULL,1,53.5526,9.92219,74);

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
	(12,'2014-05-12 15:37:21','2014-05-12 15:37:21',1,2),
	(13,'2014-05-13 12:16:00','2014-05-13 12:16:00',1,18),
	(14,'2014-05-14 15:36:13','2014-05-14 15:36:13',1,18);

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
	(1,'meyborg@syborgstudios.com','$2a$10$oBaR4GRoerqB3y2Cn9m1reg6SmFbIG/nGDykSXHAcEnhLwl0g2oeu',NULL,NULL,NULL,6,'2014-05-14 12:38:11','2014-05-13 11:11:38','10.0.2.2','10.0.2.2','2014-05-07 09:03:31','2014-05-14 12:38:11','Simon','Meyborg');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
