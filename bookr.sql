-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 11, 2022 at 04:52 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookr`
--
CREATE DATABASE IF NOT EXISTS `bookr` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookr`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'ouma'),
(2, 'Add Review');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 37),
(2, 2, 40),
(3, 2, 37),
(4, 2, 38),
(5, 2, 39);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add publisher', 7, 'add_publisher'),
(26, 'Can change publisher', 7, 'change_publisher'),
(27, 'Can delete publisher', 7, 'delete_publisher'),
(28, 'Can view publisher', 7, 'view_publisher'),
(29, 'Can add book', 8, 'add_book'),
(30, 'Can change book', 8, 'change_book'),
(31, 'Can delete book', 8, 'delete_book'),
(32, 'Can view book', 8, 'view_book'),
(33, 'Can add contributor', 9, 'add_contributor'),
(34, 'Can change contributor', 9, 'change_contributor'),
(35, 'Can delete contributor', 9, 'delete_contributor'),
(36, 'Can view contributor', 9, 'view_contributor'),
(37, 'Can add review', 10, 'add_review'),
(38, 'Can change review', 10, 'change_review'),
(39, 'Can delete review', 10, 'delete_review'),
(40, 'Can view review', 10, 'view_review'),
(41, 'Can add book contributor', 11, 'add_bookcontributor'),
(42, 'Can change book contributor', 11, 'change_bookcontributor'),
(43, 'Can delete book contributor', 11, 'delete_bookcontributor'),
(44, 'Can view book contributor', 11, 'view_bookcontributor');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$7zyW9hUbDtTT$euQGCoDVvW+ZICW4wuTsXYaRy2iCeWjJXkMhLn/2nIU=', '2022-06-11 06:25:11.982908', 1, 'admin', 'Barasa', 'Peter', 'oumabaros@gmail.com', 1, 1, '2022-06-10 03:04:16.000000'),
(2, '', NULL, 0, 'peterjones@test.com', '', '', 'peterjones@test.com', 0, 1, '2022-06-10 03:06:15.398873'),
(3, '', NULL, 0, 'marksandler@test.com', '', '', 'marksandler@test.com', 0, 1, '2022-06-10 03:06:15.458251'),
(4, 'pbkdf2_sha256$216000$3HpeV4UV7a8X$mA5K8ScZ0FMjmOsLuC9BOToMn7QSPIvRB5Rfme+0aMw=', '2022-06-10 05:25:41.000000', 0, 'ouma', 'Barasa', 'Peter', 'oumabaros@gmail.com', 0, 1, '2022-06-10 05:15:53.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-10 05:15:54.346502', '4', 'ouma', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-06-10 05:23:33.583108', '1', 'ouma', 1, '[{\"added\": {}}]', 3, 1),
(3, '2022-06-10 05:24:29.321741', '2', 'Add Review', 1, '[{\"added\": {}}]', 3, 1),
(4, '2022-06-10 05:25:45.053221', '4', 'ouma', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\", \"Last login\"]}}]', 4, 1),
(5, '2022-06-10 05:26:25.831028', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'reviews', 'publisher'),
(8, 'reviews', 'book'),
(9, 'reviews', 'contributor'),
(10, 'reviews', 'review'),
(11, 'reviews', 'bookcontributor');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-10 03:03:37.115625'),
(2, 'auth', '0001_initial', '2022-06-10 03:03:37.624458'),
(3, 'admin', '0001_initial', '2022-06-10 03:03:39.557659'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-10 03:03:39.995291'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-10 03:03:40.014280'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-10 03:03:40.281997'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-10 03:03:40.482866'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-10 03:03:40.880931'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-10 03:03:40.899917'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-10 03:03:41.006014'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-10 03:03:41.011016'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-10 03:03:41.033997'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-10 03:03:41.140935'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-10 03:03:41.272480'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-10 03:03:41.365347'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-10 03:03:41.383334'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-10 03:03:41.481273'),
(18, 'reviews', '0001_initial', '2022-06-10 03:03:41.548454'),
(19, 'reviews', '0002_auto_20220609_0827', '2022-06-10 03:03:42.144898'),
(20, 'reviews', '0003_auto_20220609_0836', '2022-06-10 03:03:43.138669'),
(21, 'sessions', '0001_initial', '2022-06-10 03:03:43.225620');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2pdt622qjacubo15i8l3ysi5ssg1urq1', '.eJxVjEEOwiAQRe_C2pABoVCX7nsGMsyMUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLMur0yzLSU-ou-IH1Pmma6jKPWe-JPmzTw8Tyuh7t30HBVrY1GOzRSWYgEzzfzhyAc9eZYG0QYooeN-6yF4JeAkRkn703ZJ2AierzBfX4OCA:1nzuYZ:kII_qB26UErOgntKqd8yzLCLaclRlRSPqOPmvdBwMiQ', '2022-06-25 06:25:11.985906');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_book`
--

DROP TABLE IF EXISTS `reviews_book`;
CREATE TABLE IF NOT EXISTS `reviews_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `publication_date` date NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_book_publisher_id_a3cbe35c` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_book`
--

INSERT INTO `reviews_book` (`id`, `title`, `publication_date`, `isbn`, `publisher_id`) VALUES
(1, 'Advanced Deep Learning with Keras', '2018-10-31', '9781788629416', 1),
(2, 'Hands-On Machine Learning for Algorithmic Trading', '2018-12-31', '9781789346411', 1),
(3, 'Architects of Intelligence', '2018-11-23', '9781789954531', 1),
(4, 'Deep Reinforcement Learning Hands-On', '2018-06-20', '9781788834247', 1),
(5, 'Natural Language Processing with TensorFlow', '2018-05-30', '9781788478311', 1),
(6, 'Hands-On Reinforcement Learning with Python', '2018-06-27', '9781788836524', 1),
(7, 'Brave New World', '2006-10-18', '9780060850524', 2),
(8, 'The Grapes of Wrath', '2006-03-28', '9780143039433', 3),
(9, 'For Whom The Bell Tolls', '2019-07-16', '9781476787770', 4),
(10, 'To Kill A Mocking Bird', '2002-01-01', '9780060935467', 2),
(11, 'The Great Gatsby', '2004-09-30', '9780743273565', 4),
(12, 'The Catcher in the Rye', '2001-01-30', '9780316769174', 5),
(13, 'Farenheit 451', '2012-01-10', '9781451673319', 6),
(14, 'Pride and Prejudice', '2002-12-31', '9780141439518', 3),
(15, '1984', '2017-04-04', '9781328869333', 7),
(16, 'Animal Farm: A Fairy Story', '1996-04-18', '9780151002177', 7),
(17, 'Paul Clifford', '2018-05-12', '9781719053167', 8),
(18, 'The Talisman', '2012-09-25', '9781451697216', 9);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_bookcontributor`
--

DROP TABLE IF EXISTS `reviews_bookcontributor`;
CREATE TABLE IF NOT EXISTS `reviews_bookcontributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) NOT NULL,
  `book_id` int(11) NOT NULL,
  `contributor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_bookcontributor_book_id_e7bfc5b2` (`book_id`),
  KEY `reviews_bookcontributor_contributor_id_e3ee3341` (`contributor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_bookcontributor`
--

INSERT INTO `reviews_bookcontributor` (`id`, `role`, `book_id`, `contributor_id`) VALUES
(1, 'AUTHOR', 1, 1),
(2, 'AUTHOR', 2, 4),
(3, 'AUTHOR', 3, 5),
(4, 'AUTHOR', 4, 6),
(5, 'AUTHOR', 5, 7),
(6, 'AUTHOR', 6, 8),
(7, 'AUTHOR', 7, 9),
(8, 'AUTHOR', 8, 10),
(9, 'AUTHOR', 9, 11),
(10, 'AUTHOR', 10, 12),
(11, 'AUTHOR', 11, 13),
(12, 'AUTHOR', 12, 14),
(13, 'AUTHOR', 13, 15),
(14, 'AUTHOR', 14, 16),
(15, 'AUTHOR', 15, 18),
(16, 'AUTHOR', 17, 19),
(17, 'COMMENTATOR', 14, 17),
(18, 'CO_AUTHOR', 18, 21),
(19, 'CO_AUTHOR', 18, 20);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_contributor`
--

DROP TABLE IF EXISTS `reviews_contributor`;
CREATE TABLE IF NOT EXISTS `reviews_contributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_names` varchar(50) NOT NULL,
  `last_names` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_contributor`
--

INSERT INTO `reviews_contributor` (`id`, `first_names`, `last_names`, `email`) VALUES
(1, 'Rowel', 'Atienza', 'RowelAtienza@example.com'),
(2, 'Packt', 'Example Editor', 'PacktEditor@example.com'),
(3, 'Packtp', 'Editor Example', 'PacktEditor2@example.com'),
(4, 'Jansen', 'Stefan', 'StefanJansen@example.com'),
(5, 'Martin', 'Ford', 'MartinFord@example.com'),
(6, 'Maxim', 'Lapan', 'MaximLapan@example.com'),
(7, 'Thushan', 'Ganegedara', 'ThushanGanegedara@example.com'),
(8, 'Sudharsan', 'Ravichandiran', 'SudharsanRavichandiran@example.com'),
(9, 'Aldous', 'Huxley', 'AldousHuxley@example.com'),
(10, 'John', 'Steinbeck', 'JSteinbeck@example.com'),
(11, 'Ernest', 'Hemingway', 'ErnestHemingway@example.com'),
(12, 'Harper', 'Lee', 'HarperLee@example.com'),
(13, 'Franics Scott', 'Fitzgerald', 'FScottFitzgerald@example.com'),
(14, 'Jerome David', 'Salinger', 'JDSalinger@example.com'),
(15, 'Ray', 'Bradbury', 'RayBradbury@example.com'),
(16, 'Jane', 'Austen', 'JaneAusten@example.com'),
(17, 'Tony', 'Tanner', 'TonyTanner@example.com'),
(18, 'George', 'Orwell', 'GeorgeOrwell@example.com'),
(19, 'Edward', 'Bulwer Lytton', 'EdwardBulwerLytton@example.com'),
(20, 'Stephen', 'King', 'StephenKing@example.com'),
(21, 'Peter', 'Straub', 'PeterStraub@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_publisher`
--

DROP TABLE IF EXISTS `reviews_publisher`;
CREATE TABLE IF NOT EXISTS `reviews_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_publisher`
--

INSERT INTO `reviews_publisher` (`id`, `name`, `website`, `email`) VALUES
(1, 'Packt Publishing', 'https://www.packtpub.com/', 'info@packtpub.com'),
(2, 'Harper Collins', 'https://www.harpercollins.com', 'feedback@harpercollins.com'),
(3, 'Penguin Classics', 'http://www.penguinclassics.com', 'contact@penguinclassics.com'),
(4, 'Scribner', 'https://www.simonandschusterpublishing.com/scribner/', 'ScribnerPublicity@SimonandSchuster.com.'),
(5, 'Bay Back Books', 'https://www.hachettebookgroup.com/imprint/little-brown-and-company/back-bay-books/', 'customer.service@hbgusa.com.'),
(6, 'Simon and Schuster', 'https://www.simonandschuster.com', 'contact@simonandschuster.com'),
(7, 'Houghton Mifflin Harcourt', 'https://www.hmhco.com', 'techsupport@hmhco.com'),
(8, 'CreateSpace Independent Publishing Platform', 'https://www.createspace.com', 'info@createspace.com'),
(9, 'Pocket Books', 'https://pocketbookssampleurl.com', 'pocketbook@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_review`
--

DROP TABLE IF EXISTS `reviews_review`;
CREATE TABLE IF NOT EXISTS `reviews_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_edited` datetime(6) DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_review_book_id_9a657eea` (`book_id`),
  KEY `reviews_review_creator_id_46914a15` (`creator_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_review`
--

INSERT INTO `reviews_review` (`id`, `content`, `rating`, `date_created`, `date_edited`, `book_id`, `creator_id`) VALUES
(1, 'A must read for all', 5, '2022-06-10 03:06:15.409871', '2020-01-04 16:31:40.376237', 1, 2),
(2, 'An ok read', 3, '2022-06-10 03:06:15.465250', '2020-01-04 16:31:40.376237', 1, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
