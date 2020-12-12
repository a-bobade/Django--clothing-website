-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2020 at 02:32 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add feature', 7, 'add_feature'),
(26, 'Can change feature', 7, 'change_feature'),
(27, 'Can delete feature', 7, 'delete_feature'),
(28, 'Can view feature', 7, 'view_feature'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add boys clothing', 9, 'add_boysclothing'),
(34, 'Can change boys clothing', 9, 'change_boysclothing'),
(35, 'Can delete boys clothing', 9, 'delete_boysclothing'),
(36, 'Can view boys clothing', 9, 'view_boysclothing'),
(37, 'Can add boys shoe', 10, 'add_boysshoe'),
(38, 'Can change boys shoe', 10, 'change_boysshoe'),
(39, 'Can delete boys shoe', 10, 'delete_boysshoe'),
(40, 'Can view boys shoe', 10, 'view_boysshoe'),
(41, 'Can add girls clothing', 11, 'add_girlsclothing'),
(42, 'Can change girls clothing', 11, 'change_girlsclothing'),
(43, 'Can delete girls clothing', 11, 'delete_girlsclothing'),
(44, 'Can view girls clothing', 11, 'view_girlsclothing'),
(45, 'Can add girls shoe', 12, 'add_girlsshoe'),
(46, 'Can change girls shoe', 12, 'change_girlsshoe'),
(47, 'Can delete girls shoe', 12, 'delete_girlsshoe'),
(48, 'Can view girls shoe', 12, 'view_girlsshoe'),
(49, 'Can add jersey', 13, 'add_jersey'),
(50, 'Can change jersey', 13, 'change_jersey'),
(51, 'Can delete jersey', 13, 'delete_jersey'),
(52, 'Can view jersey', 13, 'view_jersey'),
(53, 'Can add men jean', 14, 'add_menjean'),
(54, 'Can change men jean', 14, 'change_menjean'),
(55, 'Can delete men jean', 14, 'delete_menjean'),
(56, 'Can view men jean', 14, 'view_menjean'),
(57, 'Can add men jogger', 15, 'add_menjogger'),
(58, 'Can change men jogger', 15, 'change_menjogger'),
(59, 'Can delete men jogger', 15, 'delete_menjogger'),
(60, 'Can view men jogger', 15, 'view_menjogger'),
(61, 'Can add men polo', 16, 'add_menpolo'),
(62, 'Can change men polo', 16, 'change_menpolo'),
(63, 'Can delete men polo', 16, 'delete_menpolo'),
(64, 'Can view men polo', 16, 'view_menpolo'),
(65, 'Can add men shirt', 17, 'add_menshirt'),
(66, 'Can change men shirt', 17, 'change_menshirt'),
(67, 'Can delete men shirt', 17, 'delete_menshirt'),
(68, 'Can view men shirt', 17, 'view_menshirt'),
(69, 'Can add men shoe', 18, 'add_menshoe'),
(70, 'Can change men shoe', 18, 'change_menshoe'),
(71, 'Can delete men shoe', 18, 'delete_menshoe'),
(72, 'Can view men shoe', 18, 'view_menshoe'),
(73, 'Can add men short', 19, 'add_menshort'),
(74, 'Can change men short', 19, 'change_menshort'),
(75, 'Can delete men short', 19, 'delete_menshort'),
(76, 'Can view men short', 19, 'view_menshort'),
(77, 'Can add men sneaker', 20, 'add_mensneaker'),
(78, 'Can change men sneaker', 20, 'change_mensneaker'),
(79, 'Can delete men sneaker', 20, 'delete_mensneaker'),
(80, 'Can view men sneaker', 20, 'view_mensneaker'),
(81, 'Can add men suit', 21, 'add_mensuit'),
(82, 'Can change men suit', 21, 'change_mensuit'),
(83, 'Can delete men suit', 21, 'delete_mensuit'),
(84, 'Can view men suit', 21, 'view_mensuit'),
(85, 'Can add men sunglasse', 22, 'add_mensunglasse'),
(86, 'Can change men sunglasse', 22, 'change_mensunglasse'),
(87, 'Can delete men sunglasse', 22, 'delete_mensunglasse'),
(88, 'Can view men sunglasse', 22, 'view_mensunglasse'),
(89, 'Can add men trouser', 23, 'add_mentrouser'),
(90, 'Can change men trouser', 23, 'change_mentrouser'),
(91, 'Can delete men trouser', 23, 'delete_mentrouser'),
(92, 'Can view men trouser', 23, 'view_mentrouser'),
(93, 'Can add men watche', 24, 'add_menwatche'),
(94, 'Can change men watche', 24, 'change_menwatche'),
(95, 'Can delete men watche', 24, 'delete_menwatche'),
(96, 'Can view men watche', 24, 'view_menwatche'),
(97, 'Can add bag', 25, 'add_bag'),
(98, 'Can change bag', 25, 'change_bag'),
(99, 'Can delete bag', 25, 'delete_bag'),
(100, 'Can view bag', 25, 'view_bag'),
(101, 'Can add jewellerie', 26, 'add_jewellerie'),
(102, 'Can change jewellerie', 26, 'change_jewellerie'),
(103, 'Can delete jewellerie', 26, 'delete_jewellerie'),
(104, 'Can view jewellerie', 26, 'view_jewellerie'),
(105, 'Can add women jean', 27, 'add_womenjean'),
(106, 'Can change women jean', 27, 'change_womenjean'),
(107, 'Can delete women jean', 27, 'delete_womenjean'),
(108, 'Can view women jean', 27, 'view_womenjean'),
(109, 'Can add women jogger', 28, 'add_womenjogger'),
(110, 'Can change women jogger', 28, 'change_womenjogger'),
(111, 'Can delete women jogger', 28, 'delete_womenjogger'),
(112, 'Can view women jogger', 28, 'view_womenjogger'),
(113, 'Can add women shirt', 29, 'add_womenshirt'),
(114, 'Can change women shirt', 29, 'change_womenshirt'),
(115, 'Can delete women shirt', 29, 'delete_womenshirt'),
(116, 'Can view women shirt', 29, 'view_womenshirt'),
(117, 'Can add women shoe', 30, 'add_womenshoe'),
(118, 'Can change women shoe', 30, 'change_womenshoe'),
(119, 'Can delete women shoe', 30, 'delete_womenshoe'),
(120, 'Can view women shoe', 30, 'view_womenshoe'),
(121, 'Can add women sneaker', 31, 'add_womensneaker'),
(122, 'Can change women sneaker', 31, 'change_womensneaker'),
(123, 'Can delete women sneaker', 31, 'delete_womensneaker'),
(124, 'Can view women sneaker', 31, 'view_womensneaker'),
(125, 'Can add women suit', 32, 'add_womensuit'),
(126, 'Can change women suit', 32, 'change_womensuit'),
(127, 'Can delete women suit', 32, 'delete_womensuit'),
(128, 'Can view women suit', 32, 'view_womensuit'),
(129, 'Can add women sunglasse', 33, 'add_womensunglasse'),
(130, 'Can change women sunglasse', 33, 'change_womensunglasse'),
(131, 'Can delete women sunglasse', 33, 'delete_womensunglasse'),
(132, 'Can view women sunglasse', 33, 'view_womensunglasse'),
(133, 'Can add women top', 34, 'add_womentop'),
(134, 'Can change women top', 34, 'change_womentop'),
(135, 'Can delete women top', 34, 'delete_womentop'),
(136, 'Can view women top', 34, 'view_womentop'),
(137, 'Can add women trouser', 35, 'add_womentrouser'),
(138, 'Can change women trouser', 35, 'change_womentrouser'),
(139, 'Can delete women trouser', 35, 'delete_womentrouser'),
(140, 'Can view women trouser', 35, 'view_womentrouser'),
(141, 'Can add women watche', 36, 'add_womenwatche'),
(142, 'Can change women watche', 36, 'change_womenwatche'),
(143, 'Can delete women watche', 36, 'delete_womenwatche'),
(144, 'Can view women watche', 36, 'view_womenwatche'),
(145, 'Can add customer info', 37, 'add_customerinfo'),
(146, 'Can change customer info', 37, 'change_customerinfo'),
(147, 'Can delete customer info', 37, 'delete_customerinfo'),
(148, 'Can view customer info', 37, 'view_customerinfo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$2G82EU1tr5GL$I3bPFkM5s0ZPt5lS2ec0zAcB7CzB/9kNUY48MPxgTRg=', '2020-12-12 09:07:54.250500', 1, 'admin', '', '', 'emmanuelabobade@gmail.com', 1, 1, '2020-12-12 09:07:41.755265');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-12 09:14:41.691670', '1', 'BoysClothing object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-12-12 09:15:17.570161', '2', 'BoysClothing object (2)', 1, '[{\"added\": {}}]', 9, 1),
(3, '2020-12-12 09:15:47.139664', '3', 'BoysClothing object (3)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-12-12 09:16:27.223832', '4', 'BoysClothing object (4)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2020-12-12 09:17:02.391524', '5', 'BoysClothing object (5)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-12-12 09:17:27.602441', '6', 'BoysClothing object (6)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2020-12-12 09:18:03.779174', '7', 'BoysClothing object (7)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-12-12 09:18:34.444839', '8', 'BoysClothing object (8)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-12-12 09:19:02.303729', '9', 'BoysClothing object (9)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-12-12 09:20:19.368066', '1', 'BoysShoe object (1)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2020-12-12 09:20:44.307617', '2', 'BoysShoe object (2)', 1, '[{\"added\": {}}]', 10, 1),
(12, '2020-12-12 09:21:08.574356', '3', 'BoysShoe object (3)', 1, '[{\"added\": {}}]', 10, 1),
(13, '2020-12-12 09:21:35.830110', '4', 'BoysShoe object (4)', 1, '[{\"added\": {}}]', 10, 1),
(14, '2020-12-12 09:22:02.966573', '5', 'BoysShoe object (5)', 1, '[{\"added\": {}}]', 10, 1),
(15, '2020-12-12 09:22:31.601227', '6', 'BoysShoe object (6)', 1, '[{\"added\": {}}]', 10, 1),
(16, '2020-12-12 09:23:05.631601', '7', 'BoysShoe object (7)', 1, '[{\"added\": {}}]', 10, 1),
(17, '2020-12-12 09:23:45.863657', '8', 'BoysShoe object (8)', 1, '[{\"added\": {}}]', 10, 1),
(18, '2020-12-12 09:24:09.530405', '9', 'BoysShoe object (9)', 1, '[{\"added\": {}}]', 10, 1),
(19, '2020-12-12 09:24:47.274343', '1', 'GirlsClothing object (1)', 1, '[{\"added\": {}}]', 11, 1),
(20, '2020-12-12 09:25:14.972667', '2', 'GirlsClothing object (2)', 1, '[{\"added\": {}}]', 11, 1),
(21, '2020-12-12 09:25:58.546455', '3', 'GirlsClothing object (3)', 1, '[{\"added\": {}}]', 11, 1),
(22, '2020-12-12 09:26:25.722440', '4', 'GirlsClothing object (4)', 1, '[{\"added\": {}}]', 11, 1),
(23, '2020-12-12 09:26:48.757824', '5', 'GirlsClothing object (5)', 1, '[{\"added\": {}}]', 11, 1),
(24, '2020-12-12 09:27:26.716773', '6', 'GirlsClothing object (6)', 1, '[{\"added\": {}}]', 11, 1),
(25, '2020-12-12 09:27:57.657244', '7', 'GirlsClothing object (7)', 1, '[{\"added\": {}}]', 11, 1),
(26, '2020-12-12 09:28:19.847307', '8', 'GirlsClothing object (8)', 1, '[{\"added\": {}}]', 11, 1),
(27, '2020-12-12 09:28:45.159829', '9', 'GirlsClothing object (9)', 1, '[{\"added\": {}}]', 11, 1),
(28, '2020-12-12 09:29:29.808850', '1', 'GirlsShoe object (1)', 1, '[{\"added\": {}}]', 12, 1),
(29, '2020-12-12 09:29:50.860046', '2', 'GirlsShoe object (2)', 1, '[{\"added\": {}}]', 12, 1),
(30, '2020-12-12 09:30:31.423115', '3', 'GirlsShoe object (3)', 1, '[{\"added\": {}}]', 12, 1),
(31, '2020-12-12 09:32:46.974519', '2', 'BoysShoe object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(32, '2020-12-12 09:34:46.956502', '5', 'BoysShoe object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(33, '2020-12-12 09:36:03.569975', '4', 'GirlsShoe object (4)', 1, '[{\"added\": {}}]', 12, 1),
(34, '2020-12-12 09:36:33.034380', '5', 'GirlsShoe object (5)', 1, '[{\"added\": {}}]', 12, 1),
(35, '2020-12-12 09:36:54.653548', '6', 'GirlsShoe object (6)', 1, '[{\"added\": {}}]', 12, 1),
(36, '2020-12-12 09:37:15.347311', '7', 'GirlsShoe object (7)', 1, '[{\"added\": {}}]', 12, 1),
(37, '2020-12-12 09:37:35.805072', '8', 'GirlsShoe object (8)', 1, '[{\"added\": {}}]', 12, 1),
(38, '2020-12-12 09:38:08.172105', '9', 'GirlsShoe object (9)', 1, '[{\"added\": {}}]', 12, 1),
(39, '2020-12-12 09:39:21.150556', '1', 'Jersey object (1)', 1, '[{\"added\": {}}]', 13, 1),
(40, '2020-12-12 09:39:57.578285', '2', 'Jersey object (2)', 1, '[{\"added\": {}}]', 13, 1),
(41, '2020-12-12 09:40:19.079479', '3', 'Jersey object (3)', 1, '[{\"added\": {}}]', 13, 1),
(42, '2020-12-12 09:40:34.088146', '3', 'Jersey object (3)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 13, 1),
(43, '2020-12-12 09:41:02.408171', '4', 'Jersey object (4)', 1, '[{\"added\": {}}]', 13, 1),
(44, '2020-12-12 09:41:21.602056', '5', 'Jersey object (5)', 1, '[{\"added\": {}}]', 13, 1),
(45, '2020-12-12 09:41:43.944060', '6', 'Jersey object (6)', 1, '[{\"added\": {}}]', 13, 1),
(46, '2020-12-12 09:42:06.710930', '7', 'Jersey object (7)', 1, '[{\"added\": {}}]', 13, 1),
(47, '2020-12-12 09:42:31.744661', '8', 'Jersey object (8)', 1, '[{\"added\": {}}]', 13, 1),
(48, '2020-12-12 09:42:53.309675', '9', 'Jersey object (9)', 1, '[{\"added\": {}}]', 13, 1),
(49, '2020-12-12 09:43:24.366187', '2', 'Jersey object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 13, 1),
(50, '2020-12-12 09:48:23.077738', '1', 'MenJean object (1)', 1, '[{\"added\": {}}]', 14, 1),
(51, '2020-12-12 09:48:47.709271', '2', 'MenJean object (2)', 1, '[{\"added\": {}}]', 14, 1),
(52, '2020-12-12 09:49:06.776456', '3', 'MenJean object (3)', 1, '[{\"added\": {}}]', 14, 1),
(53, '2020-12-12 09:49:27.253044', '4', 'MenJean object (4)', 1, '[{\"added\": {}}]', 14, 1),
(54, '2020-12-12 09:49:53.286061', '5', 'MenJean object (5)', 1, '[{\"added\": {}}]', 14, 1),
(55, '2020-12-12 09:50:17.587420', '6', 'MenJean object (6)', 1, '[{\"added\": {}}]', 14, 1),
(56, '2020-12-12 09:50:39.129462', '7', 'MenJean object (7)', 1, '[{\"added\": {}}]', 14, 1),
(57, '2020-12-12 09:50:59.703077', '8', 'MenJean object (8)', 1, '[{\"added\": {}}]', 14, 1),
(58, '2020-12-12 09:51:20.058204', '9', 'MenJean object (9)', 1, '[{\"added\": {}}]', 14, 1),
(59, '2020-12-12 09:52:05.427719', '1', 'MenJogger object (1)', 1, '[{\"added\": {}}]', 15, 1),
(60, '2020-12-12 09:52:26.372952', '2', 'MenJogger object (2)', 1, '[{\"added\": {}}]', 15, 1),
(61, '2020-12-12 09:52:47.591769', '3', 'MenJogger object (3)', 1, '[{\"added\": {}}]', 15, 1),
(62, '2020-12-12 09:53:09.606428', '4', 'MenJogger object (4)', 1, '[{\"added\": {}}]', 15, 1),
(63, '2020-12-12 09:53:33.467650', '5', 'MenJogger object (5)', 1, '[{\"added\": {}}]', 15, 1),
(64, '2020-12-12 09:54:00.931304', '6', 'MenJogger object (6)', 1, '[{\"added\": {}}]', 15, 1),
(65, '2020-12-12 09:54:25.930036', '7', 'MenJogger object (7)', 1, '[{\"added\": {}}]', 15, 1),
(66, '2020-12-12 09:54:46.450191', '8', 'MenJogger object (8)', 1, '[{\"added\": {}}]', 15, 1),
(67, '2020-12-12 09:55:09.062711', '9', 'MenJogger object (9)', 1, '[{\"added\": {}}]', 15, 1),
(68, '2020-12-12 09:56:32.900229', '2', 'MenJogger object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(69, '2020-12-12 09:57:24.558808', '1', 'MenPolo object (1)', 1, '[{\"added\": {}}]', 16, 1),
(70, '2020-12-12 09:57:45.592213', '2', 'MenPolo object (2)', 1, '[{\"added\": {}}]', 16, 1),
(71, '2020-12-12 09:58:03.564466', '3', 'MenPolo object (3)', 1, '[{\"added\": {}}]', 16, 1),
(72, '2020-12-12 09:58:24.010053', '4', 'MenPolo object (4)', 1, '[{\"added\": {}}]', 16, 1),
(73, '2020-12-12 09:58:47.453055', '5', 'MenPolo object (5)', 1, '[{\"added\": {}}]', 16, 1),
(74, '2020-12-12 09:59:05.880619', '6', 'MenPolo object (6)', 1, '[{\"added\": {}}]', 16, 1),
(75, '2020-12-12 09:59:24.753451', '7', 'MenPolo object (7)', 1, '[{\"added\": {}}]', 16, 1),
(76, '2020-12-12 09:59:45.574784', '8', 'MenPolo object (8)', 1, '[{\"added\": {}}]', 16, 1),
(77, '2020-12-12 10:00:14.770443', '9', 'MenPolo object (9)', 1, '[{\"added\": {}}]', 16, 1),
(78, '2020-12-12 10:01:16.639247', '1', 'MenShirt object (1)', 1, '[{\"added\": {}}]', 17, 1),
(79, '2020-12-12 10:01:35.948525', '2', 'MenShirt object (2)', 1, '[{\"added\": {}}]', 17, 1),
(80, '2020-12-12 10:01:57.809726', '3', 'MenShirt object (3)', 1, '[{\"added\": {}}]', 17, 1),
(81, '2020-12-12 10:02:19.539867', '4', 'MenShirt object (4)', 1, '[{\"added\": {}}]', 17, 1),
(82, '2020-12-12 10:02:42.690971', '5', 'MenShirt object (5)', 1, '[{\"added\": {}}]', 17, 1),
(83, '2020-12-12 10:03:58.935642', '6', 'MenShirt object (6)', 1, '[{\"added\": {}}]', 17, 1),
(84, '2020-12-12 10:04:24.602327', '7', 'MenShirt object (7)', 1, '[{\"added\": {}}]', 17, 1),
(85, '2020-12-12 10:04:47.108571', '8', 'MenShirt object (8)', 1, '[{\"added\": {}}]', 17, 1),
(86, '2020-12-12 10:05:17.426243', '9', 'MenShirt object (9)', 1, '[{\"added\": {}}]', 17, 1),
(87, '2020-12-12 10:06:43.893392', '2', 'MenShirt object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 17, 1),
(88, '2020-12-12 10:07:32.415202', '1', 'MenShirt object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 17, 1),
(89, '2020-12-12 10:07:55.570615', '4', 'MenShirt object (4)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 17, 1),
(90, '2020-12-12 10:09:00.348540', '1', 'MenShoe object (1)', 1, '[{\"added\": {}}]', 18, 1),
(91, '2020-12-12 10:09:41.548624', '2', 'MenShoe object (2)', 1, '[{\"added\": {}}]', 18, 1),
(92, '2020-12-12 10:10:09.702537', '3', 'MenShoe object (3)', 1, '[{\"added\": {}}]', 18, 1),
(93, '2020-12-12 10:10:31.461559', '4', 'MenShoe object (4)', 1, '[{\"added\": {}}]', 18, 1),
(94, '2020-12-12 10:10:56.640709', '5', 'MenShoe object (5)', 1, '[{\"added\": {}}]', 18, 1),
(95, '2020-12-12 10:11:14.426574', '6', 'MenShoe object (6)', 1, '[{\"added\": {}}]', 18, 1),
(96, '2020-12-12 10:11:39.757411', '7', 'MenShoe object (7)', 1, '[{\"added\": {}}]', 18, 1),
(97, '2020-12-12 10:12:05.186845', '8', 'MenShoe object (8)', 1, '[{\"added\": {}}]', 18, 1),
(98, '2020-12-12 10:12:27.792653', '9', 'MenShoe object (9)', 1, '[{\"added\": {}}]', 18, 1),
(99, '2020-12-12 10:13:22.526076', '2', 'MenShoe object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 18, 1),
(100, '2020-12-12 10:13:55.238081', '9', 'MenShoe object (9)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 18, 1),
(101, '2020-12-12 10:15:02.138127', '1', 'MenShort object (1)', 1, '[{\"added\": {}}]', 19, 1),
(102, '2020-12-12 10:15:25.561316', '2', 'MenShort object (2)', 1, '[{\"added\": {}}]', 19, 1),
(103, '2020-12-12 10:15:50.724686', '3', 'MenShort object (3)', 1, '[{\"added\": {}}]', 19, 1),
(104, '2020-12-12 10:16:53.671257', '1', 'MenSneaker object (1)', 1, '[{\"added\": {}}]', 20, 1),
(105, '2020-12-12 10:17:22.264702', '2', 'MenSneaker object (2)', 1, '[{\"added\": {}}]', 20, 1),
(106, '2020-12-12 10:17:46.480788', '3', 'MenSneaker object (3)', 1, '[{\"added\": {}}]', 20, 1),
(107, '2020-12-12 10:18:19.893885', '4', 'MenSneaker object (4)', 1, '[{\"added\": {}}]', 20, 1),
(108, '2020-12-12 10:18:47.883588', '5', 'MenSneaker object (5)', 1, '[{\"added\": {}}]', 20, 1),
(109, '2020-12-12 10:19:11.766305', '6', 'MenSneaker object (6)', 1, '[{\"added\": {}}]', 20, 1),
(110, '2020-12-12 10:19:50.175745', '7', 'MenSneaker object (7)', 1, '[{\"added\": {}}]', 20, 1),
(111, '2020-12-12 10:20:19.462067', '8', 'MenSneaker object (8)', 1, '[{\"added\": {}}]', 20, 1),
(112, '2020-12-12 10:20:49.467910', '9', 'MenSneaker object (9)', 1, '[{\"added\": {}}]', 20, 1),
(113, '2020-12-12 10:22:04.127797', '1', 'MenSuit object (1)', 1, '[{\"added\": {}}]', 21, 1),
(114, '2020-12-12 10:22:27.101093', '2', 'MenSuit object (2)', 1, '[{\"added\": {}}]', 21, 1),
(115, '2020-12-12 10:22:55.409947', '3', 'MenSuit object (3)', 1, '[{\"added\": {}}]', 21, 1),
(116, '2020-12-12 10:23:25.380481', '4', 'MenSuit object (4)', 1, '[{\"added\": {}}]', 21, 1),
(117, '2020-12-12 10:23:47.515789', '5', 'MenSuit object (5)', 1, '[{\"added\": {}}]', 21, 1),
(118, '2020-12-12 10:24:08.817861', '6', 'MenSuit object (6)', 1, '[{\"added\": {}}]', 21, 1),
(119, '2020-12-12 10:25:40.717424', '1', 'MenSunglasse object (1)', 1, '[{\"added\": {}}]', 22, 1),
(120, '2020-12-12 10:26:01.490720', '2', 'MenSunglasse object (2)', 1, '[{\"added\": {}}]', 22, 1),
(121, '2020-12-12 10:26:24.748643', '3', 'MenSunglasse object (3)', 1, '[{\"added\": {}}]', 22, 1),
(122, '2020-12-12 10:26:49.911213', '4', 'MenSunglasse object (4)', 1, '[{\"added\": {}}]', 22, 1),
(123, '2020-12-12 10:27:21.086202', '5', 'MenSunglasse object (5)', 1, '[{\"added\": {}}]', 22, 1),
(124, '2020-12-12 10:27:43.898649', '6', 'MenSunglasse object (6)', 1, '[{\"added\": {}}]', 22, 1),
(125, '2020-12-12 10:28:06.440998', '7', 'MenSunglasse object (7)', 1, '[{\"added\": {}}]', 22, 1),
(126, '2020-12-12 10:28:29.126381', '8', 'MenSunglasse object (8)', 1, '[{\"added\": {}}]', 22, 1),
(127, '2020-12-12 10:29:00.458853', '9', 'MenSunglasse object (9)', 1, '[{\"added\": {}}]', 22, 1),
(128, '2020-12-12 10:48:12.827490', '1', 'MenTrouser object (1)', 1, '[{\"added\": {}}]', 23, 1),
(129, '2020-12-12 10:48:34.337666', '2', 'MenTrouser object (2)', 1, '[{\"added\": {}}]', 23, 1),
(130, '2020-12-12 10:48:54.737218', '3', 'MenTrouser object (3)', 1, '[{\"added\": {}}]', 23, 1),
(131, '2020-12-12 10:49:35.188615', '4', 'MenTrouser object (4)', 1, '[{\"added\": {}}]', 23, 1),
(132, '2020-12-12 10:49:59.963219', '5', 'MenTrouser object (5)', 1, '[{\"added\": {}}]', 23, 1),
(133, '2020-12-12 10:50:28.154644', '6', 'MenTrouser object (6)', 1, '[{\"added\": {}}]', 23, 1),
(134, '2020-12-12 10:51:22.368035', '1', 'MenWatche object (1)', 1, '[{\"added\": {}}]', 24, 1),
(135, '2020-12-12 10:51:41.911072', '2', 'MenWatche object (2)', 1, '[{\"added\": {}}]', 24, 1),
(136, '2020-12-12 10:52:00.545424', '3', 'MenWatche object (3)', 1, '[{\"added\": {}}]', 24, 1),
(137, '2020-12-12 10:52:21.557856', '4', 'MenWatche object (4)', 1, '[{\"added\": {}}]', 24, 1),
(138, '2020-12-12 10:52:41.147512', '5', 'MenWatche object (5)', 1, '[{\"added\": {}}]', 24, 1),
(139, '2020-12-12 10:53:02.414090', '6', 'MenWatche object (6)', 1, '[{\"added\": {}}]', 24, 1),
(140, '2020-12-12 10:53:32.812645', '7', 'MenWatche object (7)', 1, '[{\"added\": {}}]', 24, 1),
(141, '2020-12-12 10:54:03.317818', '8', 'MenWatche object (8)', 1, '[{\"added\": {}}]', 24, 1),
(142, '2020-12-12 10:54:25.041299', '9', 'MenWatche object (9)', 1, '[{\"added\": {}}]', 24, 1),
(143, '2020-12-12 10:55:37.517587', '1', 'Feature object (1)', 1, '[{\"added\": {}}]', 7, 1),
(144, '2020-12-12 10:56:07.432019', '2', 'Feature object (2)', 1, '[{\"added\": {}}]', 7, 1),
(145, '2020-12-12 10:56:34.896361', '3', 'Feature object (3)', 1, '[{\"added\": {}}]', 7, 1),
(146, '2020-12-12 10:57:04.299787', '4', 'Feature object (4)', 1, '[{\"added\": {}}]', 7, 1),
(147, '2020-12-12 11:01:38.876340', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 8, 1),
(148, '2020-12-12 11:02:00.061491', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 8, 1),
(149, '2020-12-12 11:02:20.399367', '3', 'Product object (3)', 1, '[{\"added\": {}}]', 8, 1),
(150, '2020-12-12 11:02:39.539964', '4', 'Product object (4)', 1, '[{\"added\": {}}]', 8, 1),
(151, '2020-12-12 11:02:56.669346', '5', 'Product object (5)', 1, '[{\"added\": {}}]', 8, 1),
(152, '2020-12-12 11:04:17.848014', '6', 'Product object (6)', 1, '[{\"added\": {}}]', 8, 1),
(153, '2020-12-12 11:04:34.892227', '7', 'Product object (7)', 1, '[{\"added\": {}}]', 8, 1),
(154, '2020-12-12 11:04:51.081045', '8', 'Product object (8)', 1, '[{\"added\": {}}]', 8, 1),
(155, '2020-12-12 11:05:10.372493', '9', 'Product object (9)', 1, '[{\"added\": {}}]', 8, 1),
(156, '2020-12-12 11:18:48.215868', '1', 'Feature object (1)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(157, '2020-12-12 11:19:18.699680', '1', 'Feature object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(158, '2020-12-12 12:35:02.689722', '1', 'Bag object (1)', 1, '[{\"added\": {}}]', 25, 1),
(159, '2020-12-12 12:35:29.877897', '2', 'Bag object (2)', 1, '[{\"added\": {}}]', 25, 1),
(160, '2020-12-12 12:35:58.375383', '3', 'Bag object (3)', 1, '[{\"added\": {}}]', 25, 1),
(161, '2020-12-12 12:36:49.554839', '4', 'Bag object (4)', 1, '[{\"added\": {}}]', 25, 1),
(162, '2020-12-12 12:37:22.808816', '5', 'Bag object (5)', 1, '[{\"added\": {}}]', 25, 1),
(163, '2020-12-12 12:37:43.691123', '6', 'Bag object (6)', 1, '[{\"added\": {}}]', 25, 1),
(164, '2020-12-12 12:38:05.894143', '7', 'Bag object (7)', 1, '[{\"added\": {}}]', 25, 1),
(165, '2020-12-12 12:38:30.127288', '8', 'Bag object (8)', 1, '[{\"added\": {}}]', 25, 1),
(166, '2020-12-12 12:38:59.269804', '9', 'Bag object (9)', 1, '[{\"added\": {}}]', 25, 1),
(167, '2020-12-12 12:41:36.072958', '1', 'Jewellerie object (1)', 1, '[{\"added\": {}}]', 26, 1),
(168, '2020-12-12 12:41:57.179602', '2', 'Jewellerie object (2)', 1, '[{\"added\": {}}]', 26, 1),
(169, '2020-12-12 12:42:20.699164', '3', 'Jewellerie object (3)', 1, '[{\"added\": {}}]', 26, 1),
(170, '2020-12-12 12:42:43.883188', '4', 'Jewellerie object (4)', 1, '[{\"added\": {}}]', 26, 1),
(171, '2020-12-12 12:43:03.798310', '5', 'Jewellerie object (5)', 1, '[{\"added\": {}}]', 26, 1),
(172, '2020-12-12 12:43:26.527116', '6', 'Jewellerie object (6)', 1, '[{\"added\": {}}]', 26, 1),
(173, '2020-12-12 12:43:50.608674', '7', 'Jewellerie object (7)', 1, '[{\"added\": {}}]', 26, 1),
(174, '2020-12-12 12:44:20.635573', '8', 'Jewellerie object (8)', 1, '[{\"added\": {}}]', 26, 1),
(175, '2020-12-12 12:44:47.830949', '9', 'Jewellerie object (9)', 1, '[{\"added\": {}}]', 26, 1),
(176, '2020-12-12 12:45:24.524548', '4', 'Jewellerie object (4)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 26, 1),
(177, '2020-12-12 12:47:20.594386', '1', 'WomenJean object (1)', 1, '[{\"added\": {}}]', 27, 1),
(178, '2020-12-12 12:47:54.709719', '2', 'WomenJean object (2)', 1, '[{\"added\": {}}]', 27, 1),
(179, '2020-12-12 12:48:25.898129', '3', 'WomenJean object (3)', 1, '[{\"added\": {}}]', 27, 1),
(180, '2020-12-12 12:48:44.744448', '4', 'WomenJean object (4)', 1, '[{\"added\": {}}]', 27, 1),
(181, '2020-12-12 12:49:04.372012', '5', 'WomenJean object (5)', 1, '[{\"added\": {}}]', 27, 1),
(182, '2020-12-12 12:49:27.002957', '6', 'WomenJean object (6)', 1, '[{\"added\": {}}]', 27, 1),
(183, '2020-12-12 12:50:05.103284', '7', 'WomenJean object (7)', 1, '[{\"added\": {}}]', 27, 1),
(184, '2020-12-12 12:50:34.755052', '8', 'WomenJean object (8)', 1, '[{\"added\": {}}]', 27, 1),
(185, '2020-12-12 12:50:54.068032', '9', 'WomenJean object (9)', 1, '[{\"added\": {}}]', 27, 1),
(186, '2020-12-12 12:51:34.139670', '4', 'WomenJean object (4)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 27, 1),
(187, '2020-12-12 12:52:39.114739', '1', 'WomenJogger object (1)', 1, '[{\"added\": {}}]', 28, 1),
(188, '2020-12-12 12:53:20.313635', '2', 'WomenJogger object (2)', 1, '[{\"added\": {}}]', 28, 1),
(189, '2020-12-12 12:53:53.857188', '3', 'WomenJogger object (3)', 1, '[{\"added\": {}}]', 28, 1),
(190, '2020-12-12 12:54:31.214612', '4', 'WomenJogger object (4)', 1, '[{\"added\": {}}]', 28, 1),
(191, '2020-12-12 12:55:06.073165', '5', 'WomenJogger object (5)', 1, '[{\"added\": {}}]', 28, 1),
(192, '2020-12-12 12:55:35.152837', '6', 'WomenJogger object (6)', 1, '[{\"added\": {}}]', 28, 1),
(193, '2020-12-12 12:56:03.353729', '7', 'WomenJogger object (7)', 1, '[{\"added\": {}}]', 28, 1),
(194, '2020-12-12 12:56:43.266211', '8', 'WomenJogger object (8)', 1, '[{\"added\": {}}]', 28, 1),
(195, '2020-12-12 12:57:09.962886', '9', 'WomenJogger object (9)', 1, '[{\"added\": {}}]', 28, 1),
(196, '2020-12-12 12:57:51.200413', '2', 'WomenJogger object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 28, 1),
(197, '2020-12-12 12:58:21.339056', '5', 'WomenJogger object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 28, 1),
(198, '2020-12-12 12:59:09.828119', '1', 'WomenShirt object (1)', 1, '[{\"added\": {}}]', 29, 1),
(199, '2020-12-12 12:59:52.958918', '2', 'WomenShirt object (2)', 1, '[{\"added\": {}}]', 29, 1),
(200, '2020-12-12 13:00:10.689054', '3', 'WomenShirt object (3)', 1, '[{\"added\": {}}]', 29, 1),
(201, '2020-12-12 13:00:29.920112', '4', 'WomenShirt object (4)', 1, '[{\"added\": {}}]', 29, 1),
(202, '2020-12-12 13:01:42.615221', '5', 'WomenShirt object (5)', 1, '[{\"added\": {}}]', 29, 1),
(203, '2020-12-12 13:02:13.145614', '6', 'WomenShirt object (6)', 1, '[{\"added\": {}}]', 29, 1),
(204, '2020-12-12 13:02:35.194934', '7', 'WomenShirt object (7)', 1, '[{\"added\": {}}]', 29, 1),
(205, '2020-12-12 13:02:56.136382', '8', 'WomenShirt object (8)', 1, '[{\"added\": {}}]', 29, 1),
(206, '2020-12-12 13:03:17.837737', '9', 'WomenShirt object (9)', 1, '[{\"added\": {}}]', 29, 1),
(207, '2020-12-12 13:05:06.349767', '1', 'WomenShoe object (1)', 1, '[{\"added\": {}}]', 30, 1),
(208, '2020-12-12 13:05:40.786060', '2', 'WomenShoe object (2)', 1, '[{\"added\": {}}]', 30, 1),
(209, '2020-12-12 13:06:13.323373', '3', 'WomenShoe object (3)', 1, '[{\"added\": {}}]', 30, 1),
(210, '2020-12-12 13:06:44.249608', '4', 'WomenShoe object (4)', 1, '[{\"added\": {}}]', 30, 1),
(211, '2020-12-12 13:07:11.977976', '5', 'WomenShoe object (5)', 1, '[{\"added\": {}}]', 30, 1),
(212, '2020-12-12 13:07:52.954941', '6', 'WomenShoe object (6)', 1, '[{\"added\": {}}]', 30, 1),
(213, '2020-12-12 13:08:45.842241', '7', 'WomenShoe object (7)', 1, '[{\"added\": {}}]', 30, 1),
(214, '2020-12-12 13:09:27.211742', '8', 'WomenShoe object (8)', 1, '[{\"added\": {}}]', 30, 1),
(215, '2020-12-12 13:09:56.412476', '9', 'WomenShoe object (9)', 1, '[{\"added\": {}}]', 30, 1),
(216, '2020-12-12 13:11:12.275816', '1', 'WomenSneaker object (1)', 1, '[{\"added\": {}}]', 31, 1),
(217, '2020-12-12 13:11:37.442906', '2', 'WomenSneaker object (2)', 1, '[{\"added\": {}}]', 31, 1),
(218, '2020-12-12 13:12:02.064773', '3', 'WomenSneaker object (3)', 1, '[{\"added\": {}}]', 31, 1),
(219, '2020-12-12 13:12:27.950057', '4', 'WomenSneaker object (4)', 1, '[{\"added\": {}}]', 31, 1),
(220, '2020-12-12 13:12:56.570580', '5', 'WomenSneaker object (5)', 1, '[{\"added\": {}}]', 31, 1),
(221, '2020-12-12 13:13:44.639157', '6', 'WomenSneaker object (6)', 1, '[{\"added\": {}}]', 31, 1),
(222, '2020-12-12 13:14:49.185943', '7', 'WomenSneaker object (7)', 1, '[{\"added\": {}}]', 31, 1),
(223, '2020-12-12 13:15:15.600124', '8', 'WomenSneaker object (8)', 1, '[{\"added\": {}}]', 31, 1),
(224, '2020-12-12 13:15:50.800176', '9', 'WomenSneaker object (9)', 1, '[{\"added\": {}}]', 31, 1),
(225, '2020-12-12 13:16:40.000574', '9', 'WomenSneaker object (9)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 31, 1),
(226, '2020-12-12 13:17:34.354877', '1', 'WomenSuit object (1)', 1, '[{\"added\": {}}]', 32, 1),
(227, '2020-12-12 13:18:15.209173', '2', 'WomenSuit object (2)', 1, '[{\"added\": {}}]', 32, 1),
(228, '2020-12-12 13:18:44.369810', '3', 'WomenSuit object (3)', 1, '[{\"added\": {}}]', 32, 1),
(229, '2020-12-12 13:19:26.326710', '4', 'WomenSuit object (4)', 1, '[{\"added\": {}}]', 32, 1),
(230, '2020-12-12 13:19:53.158320', '5', 'WomenSuit object (5)', 1, '[{\"added\": {}}]', 32, 1),
(231, '2020-12-12 13:20:17.980984', '6', 'WomenSuit object (6)', 1, '[{\"added\": {}}]', 32, 1),
(232, '2020-12-12 13:20:46.885055', '7', 'WomenSuit object (7)', 1, '[{\"added\": {}}]', 32, 1),
(233, '2020-12-12 13:21:06.801950', '8', 'WomenSuit object (8)', 1, '[{\"added\": {}}]', 32, 1),
(234, '2020-12-12 13:21:34.196219', '9', 'WomenSuit object (9)', 1, '[{\"added\": {}}]', 32, 1),
(235, '2020-12-12 13:22:31.097612', '1', 'WomenSunglasse object (1)', 1, '[{\"added\": {}}]', 33, 1),
(236, '2020-12-12 13:22:51.270797', '2', 'WomenSunglasse object (2)', 1, '[{\"added\": {}}]', 33, 1),
(237, '2020-12-12 13:23:24.084122', '3', 'WomenSunglasse object (3)', 1, '[{\"added\": {}}]', 33, 1),
(238, '2020-12-12 13:23:46.525027', '4', 'WomenSunglasse object (4)', 1, '[{\"added\": {}}]', 33, 1),
(239, '2020-12-12 13:24:04.784725', '5', 'WomenSunglasse object (5)', 1, '[{\"added\": {}}]', 33, 1),
(240, '2020-12-12 13:24:22.503672', '6', 'WomenSunglasse object (6)', 1, '[{\"added\": {}}]', 33, 1),
(241, '2020-12-12 13:24:47.636501', '7', 'WomenSunglasse object (7)', 1, '[{\"added\": {}}]', 33, 1),
(242, '2020-12-12 13:25:07.806432', '8', 'WomenSunglasse object (8)', 1, '[{\"added\": {}}]', 33, 1),
(243, '2020-12-12 13:25:30.519153', '9', 'WomenSunglasse object (9)', 1, '[{\"added\": {}}]', 33, 1),
(244, '2020-12-12 13:26:20.820686', '1', 'WomenTop object (1)', 1, '[{\"added\": {}}]', 34, 1),
(245, '2020-12-12 13:26:43.678298', '2', 'WomenTop object (2)', 1, '[{\"added\": {}}]', 34, 1),
(246, '2020-12-12 13:27:04.701549', '3', 'WomenTop object (3)', 1, '[{\"added\": {}}]', 34, 1),
(247, '2020-12-12 13:27:40.428329', '4', 'WomenTop object (4)', 1, '[{\"added\": {}}]', 34, 1),
(248, '2020-12-12 13:28:04.223183', '5', 'WomenTop object (5)', 1, '[{\"added\": {}}]', 34, 1),
(249, '2020-12-12 13:28:32.092126', '6', 'WomenTop object (6)', 1, '[{\"added\": {}}]', 34, 1),
(250, '2020-12-12 13:29:02.449870', '7', 'WomenTop object (7)', 1, '[{\"added\": {}}]', 34, 1),
(251, '2020-12-12 13:29:26.692786', '8', 'WomenTop object (8)', 1, '[{\"added\": {}}]', 34, 1),
(252, '2020-12-12 13:30:27.717421', '9', 'WomenTop object (9)', 1, '[{\"added\": {}}]', 34, 1),
(253, '2020-12-12 13:31:19.204852', '1', 'WomenTrouser object (1)', 1, '[{\"added\": {}}]', 35, 1),
(254, '2020-12-12 13:31:38.021977', '2', 'WomenTrouser object (2)', 1, '[{\"added\": {}}]', 35, 1),
(255, '2020-12-12 13:31:55.651299', '3', 'WomenTrouser object (3)', 1, '[{\"added\": {}}]', 35, 1),
(256, '2020-12-12 13:32:14.143418', '4', 'WomenTrouser object (4)', 1, '[{\"added\": {}}]', 35, 1),
(257, '2020-12-12 13:32:33.824642', '5', 'WomenTrouser object (5)', 1, '[{\"added\": {}}]', 35, 1),
(258, '2020-12-12 13:32:53.670841', '6', 'WomenTrouser object (6)', 1, '[{\"added\": {}}]', 35, 1),
(259, '2020-12-12 13:33:17.918969', '7', 'WomenTrouser object (7)', 1, '[{\"added\": {}}]', 35, 1),
(260, '2020-12-12 13:33:38.739812', '8', 'WomenTrouser object (8)', 1, '[{\"added\": {}}]', 35, 1),
(261, '2020-12-12 13:34:00.147268', '9', 'WomenTrouser object (9)', 1, '[{\"added\": {}}]', 35, 1),
(262, '2020-12-12 13:35:26.592177', '1', 'WomenWatche object (1)', 1, '[{\"added\": {}}]', 36, 1),
(263, '2020-12-12 13:36:03.489830', '2', 'WomenWatche object (2)', 1, '[{\"added\": {}}]', 36, 1),
(264, '2020-12-12 13:36:30.555976', '3', 'WomenWatche object (3)', 1, '[{\"added\": {}}]', 36, 1),
(265, '2020-12-12 13:36:50.154807', '4', 'WomenWatche object (4)', 1, '[{\"added\": {}}]', 36, 1),
(266, '2020-12-12 13:37:11.291387', '5', 'WomenWatche object (5)', 1, '[{\"added\": {}}]', 36, 1),
(267, '2020-12-12 13:37:46.520880', '6', 'WomenWatche object (6)', 1, '[{\"added\": {}}]', 36, 1),
(268, '2020-12-12 13:38:04.028968', '7', 'WomenWatche object (7)', 1, '[{\"added\": {}}]', 36, 1),
(269, '2020-12-12 13:38:28.462059', '8', 'WomenWatche object (8)', 1, '[{\"added\": {}}]', 36, 1),
(270, '2020-12-12 13:38:50.482793', '9', 'WomenWatche object (9)', 1, '[{\"added\": {}}]', 36, 1),
(271, '2020-12-12 13:40:47.702663', '3', 'Jersey object (3)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(7, 'shop', 'feature'),
(8, 'shop', 'product'),
(9, 'kids', 'boysclothing'),
(10, 'kids', 'boysshoe'),
(11, 'kids', 'girlsclothing'),
(12, 'kids', 'girlsshoe'),
(13, 'men', 'jersey'),
(14, 'men', 'menjean'),
(15, 'men', 'menjogger'),
(16, 'men', 'menpolo'),
(17, 'men', 'menshirt'),
(18, 'men', 'menshoe'),
(19, 'men', 'menshort'),
(20, 'men', 'mensneaker'),
(21, 'men', 'mensuit'),
(22, 'men', 'mensunglasse'),
(23, 'men', 'mentrouser'),
(24, 'men', 'menwatche'),
(25, 'women', 'bag'),
(26, 'women', 'jewellerie'),
(27, 'women', 'womenjean'),
(28, 'women', 'womenjogger'),
(29, 'women', 'womenshirt'),
(30, 'women', 'womenshoe'),
(31, 'women', 'womensneaker'),
(32, 'women', 'womensuit'),
(33, 'women', 'womensunglasse'),
(34, 'women', 'womentop'),
(35, 'women', 'womentrouser'),
(36, 'women', 'womenwatche'),
(37, 'paystack', 'customerinfo');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-12 09:03:44.235741'),
(2, 'auth', '0001_initial', '2020-12-12 09:03:45.269107'),
(3, 'admin', '0001_initial', '2020-12-12 09:03:51.995139'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-12 09:03:54.647221'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-12 09:03:54.657217'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-12 09:03:55.591275'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-12 09:03:56.027640'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-12 09:03:56.356448'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-12 09:03:56.367442'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-12 09:03:56.790196'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-12 09:03:56.793194'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-12 09:03:56.804187'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-12 09:03:57.179955'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-12 09:03:57.529466'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-12 09:03:57.962202'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-12 09:03:57.975194'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-12 09:03:58.380157'),
(18, 'kids', '0001_initial', '2020-12-12 09:03:58.913339'),
(19, 'men', '0001_initial', '2020-12-12 09:04:00.762201'),
(20, 'paystack', '0001_initial', '2020-12-12 09:04:00.926101'),
(21, 'sessions', '0001_initial', '2020-12-12 09:04:01.067014'),
(22, 'shop', '0001_initial', '2020-12-12 09:04:01.829551'),
(23, 'women', '0001_initial', '2020-12-12 09:04:03.456274');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kids_boysclothing`
--

DROP TABLE IF EXISTS `kids_boysclothing`;
CREATE TABLE IF NOT EXISTS `kids_boysclothing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kids_boysclothing`
--

INSERT INTO `kids_boysclothing` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Checkered Shirt', 'Checkered Shirt + Overcoat and Jean.', 'media/checkered_shirt_.jpg', 12, '15000'),
(2, 'Boys Casual Shirt', 'Boys Moschino Cartoon  shirt', 'media/cartoon_kid.jpg', 10, '12000'),
(3, 'Baby Boy Outfit', 'Short Sleeve Shirt + Long Pants XO Sport', 'media/baby_boy_outfit.jpg', 12, '11000'),
(4, 'Boys Hoodie', 'Baby boy clothes, Straight Up Mama\'s Boy hoodie and pants', 'media/boys_hoodie.jpg', 10, '9000'),
(5, 'Boys Shirt', 'Boys shirt + Bowtie + Suspender pants. 4pcs outfits suit set', 'media/four_pieces_cloth.jpg', 8, '11000'),
(6, 'Boys Sweater', 'Baby boys sweater clothes, high quality spring autumn', 'media/kids-sweater-baby_dbfQR05.jpg', 11, '12000'),
(7, 'Boys Long Sleeve Shirt', 'Boys shirt, long sleeve single breasted shirts', 'media/boys-long-sleeve-shirt_nb18N7U.jpg', 16, '7000'),
(8, 'Sweatshirts', 'Black Sweatshirts for baby boys', 'media/boys-sweatshirts.jpg', 13, '9000'),
(9, 'Summer Cloth', 'Baby boys Summer clothing', 'media/boy-summer-clothing.jpg', 9, '10000');

-- --------------------------------------------------------

--
-- Table structure for table `kids_boysshoe`
--

DROP TABLE IF EXISTS `kids_boysshoe`;
CREATE TABLE IF NOT EXISTS `kids_boysshoe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kids_boysshoe`
--

INSERT INTO `kids_boysshoe` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Boys Canvas Shoe', 'Bubble kids canvas shoe for boys', 'media/boy-canvas-shoe.jpg', 12, '7000'),
(2, 'Deck Shoe', 'Deck shoe for boys made in leather', 'media/deck-shoes.jpg', 15, '8000'),
(3, 'Moccasin Shoe', 'Baby boys Moccasin shoe with linen', 'media/moccasin-with-linen.jpg', 16, '9000'),
(4, 'Velcro Shoe', 'Boys Velcro shoe made in leather', 'media/boy-velcro-leather-shoe.jpg', 14, '8000'),
(5, 'Bubble Deck Shoe', 'black and white Bubble Deck shoe', 'media/boys-deck-shoesjpg.jpg', 15, '9000'),
(6, 'Pablosky Sport Shoe', 'Boys sport Pablosky shoe', 'media/pablosky-shoejpg.jpg', 15, '7000'),
(7, 'Yumas Austin Sneakers', 'Boys Yumas Austin Sneakers made in leather and textile', 'media/yumas-austin.jpg', 15, '8000'),
(8, 'Vans Shoe', 'Vans style canvas shoe with white sole', 'media/canvas-shoes.jpg', 17, '7000'),
(9, 'Pablosky Boots', 'Pablosky boys booties', 'media/pablosky-boys-booties.jpg', 11, '8000');

-- --------------------------------------------------------

--
-- Table structure for table `kids_girlsclothing`
--

DROP TABLE IF EXISTS `kids_girlsclothing`;
CREATE TABLE IF NOT EXISTS `kids_girlsclothing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kids_girlsclothing`
--

INSERT INTO `kids_girlsclothing` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Long Sleeve Dress', 'Girls dress, long sleeve cotton kids outfit autumn', 'media/girls-dress-long-sleeve.jpg', 14, '7000'),
(2, 'Girls Romper', 'Knitted autumn pompom girl romper jumpsuit', 'media/girl-romper.jpg', 20, '6000'),
(3, 'Summer Girls Clothing', 'Summer girls clothing fashionable plaid dresses for girls', 'media/summer-girl.jpg', 17, '7000'),
(4, 'Girls Party Lace Dress', 'Baby girls party lace dress, wedding bridesmaid dresses', 'media/girls-party-lace-dress.jpg', 14, '9000'),
(5, 'Princess Dress', 'Black Christmas princess dresses for baby girls', 'media/princess-dresses.jpg', 13, '8000'),
(6, 'Girls Elegant Dress', 'Summer girls elegant short sleeve dress turn down collar', 'media/girls-elegant-dress.jpg', 22, '9000'),
(7, 'Girls Hoodie', 'Baby girls carton set infant solid long sleeve hoodie', 'media/baby-girls-hoodie.jpg', 14, '10000'),
(8, 'Designer Girls Dress', 'Bow cute elegant designers girls dress', 'media/designer-girl.jpg', 15, '8000'),
(9, 'Elegant Princess Dress', 'Elegant new year Princess Girls party dress', 'media/elegant-new-year-princess.jpg', 23, '10000');

-- --------------------------------------------------------

--
-- Table structure for table `kids_girlsshoe`
--

DROP TABLE IF EXISTS `kids_girlsshoe`;
CREATE TABLE IF NOT EXISTS `kids_girlsshoe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kids_girlsshoe`
--

INSERT INTO `kids_girlsshoe` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Bubble Shoe', 'Baby Mary Jane Bubble girls shoe', 'media/baby-mary-jane.jpg', 17, '7000'),
(2, 'Ballet Canvas', 'Ballet Canvas for girls', 'media/ballet-canvas.jpg', 20, '6000'),
(3, 'Canvas Shoe', 'Andy Lace Canvas shoe for girls', 'media/canvas-shoes-andy.jpg', 18, '8000'),
(4, 'Casual Boots', 'Girls Conguitos casual boots', 'media/casual-boots-conguitos.jpg', 15, '8000'),
(5, 'Mustang Shoe', 'Girls Canvas Mustang shoe', 'media/canvas-shoes-mustang.jpg', 19, '7000'),
(6, 'School Shoe', 'Pablosky School shoe for girls', 'media/girls-school-shoes-pablosky.jpg', 12, '6000'),
(7, 'Angelitos Shoe', 'Angelitos shoe for girls', 'media/angelitos-shoe.jpg', 17, '7000'),
(8, 'Pool Clog Shoe', 'Beach pool clog shoe for girls', 'media/beach-pool-clog.jpg', 17, '8000'),
(9, 'Moccasin Shoe', 'Moccasin Bubble shoe for girls made in patent leather', 'media/girl-moccasin.jpg', 16, '10000');

-- --------------------------------------------------------

--
-- Table structure for table `men_jersey`
--

DROP TABLE IF EXISTS `men_jersey`;
CREATE TABLE IF NOT EXISTS `men_jersey` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_jersey`
--

INSERT INTO `men_jersey` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'arsenal', 'adidas arsenal 2021 home jersey', 'media/arsenal.jpg', 15, '19000'),
(2, 'manchester united', 'manchester united home jersey', 'media/man-utd.jpg', 15, '19000'),
(3, 'manchester city', 'puma manchester city home jersey', 'media/man.city.jpg', 13, '15000'),
(4, 'chelsea', 'nike chelsea home jersey', 'media/chelsea.jpg', 14, '17000'),
(5, 'psg', 'nike p.s.g home jersey', 'media/psg.jpg', 13, '19000'),
(6, 'real madrid', 'adidas real madrid home jersey', 'media/madrid.jpg', 14, '19000'),
(7, 'juventus', 'adidas juventus home jersey', 'media/juve.jpg', 12, '15000'),
(8, 'bayern munich', 'adidas bayern munich home jersey', 'media/bayern.jpg', 15, '19000'),
(9, 'liverpool', 'nike liverpool home jersey', 'media/liverpool.jpg', 18, '15000');

-- --------------------------------------------------------

--
-- Table structure for table `men_menjean`
--

DROP TABLE IF EXISTS `men_menjean`;
CREATE TABLE IF NOT EXISTS `men_menjean` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_menjean`
--

INSERT INTO `men_menjean` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'straight jean', 'Division straight jean for men', 'media/division-jean.jpg', 12, '4500'),
(2, 'Stock Jean', 'stock washed blue denim jeans', 'media/Stock-jeans.jpg', 21, '5000'),
(3, 'navy jeans', 'old navy jeans for men - black', 'media/navy-jeans.jpg', 11, '3000'),
(4, 'stylish jean', 'stylish jean for men', 'media/stylish-jean.jpg', 13, '9000'),
(5, 'skinny jean', 'straight skinny jean for men', 'media/skinny-jean.jpg', 14, '6000'),
(6, 'Ripped Jean', 'ripped dope stretchy jean for men', 'media/ripped-jean.jpg', 13, '7000'),
(7, 'Male jeans', 'Quality black male jean', 'media/quality-jean.jpg', 12, '5000'),
(8, 'pencil jean', 'black authentic pencil jean for men', 'media/slim-pencil-jean.jpg', 31, '6000'),
(9, 'collectibles stock jean', 'black collectibles stock jean for men', 'media/collectibles.jpg', 12, '5000');

-- --------------------------------------------------------

--
-- Table structure for table `men_menjogger`
--

DROP TABLE IF EXISTS `men_menjogger`;
CREATE TABLE IF NOT EXISTS `men_menjogger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_menjogger`
--

INSERT INTO `men_menjogger` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'grey joggers', 'grey joggers with black band', 'media/Grey-Joggers-with-Black-Band-5504031.jpg', 12, '4000'),
(2, 'fashion house', 'Black Hoodie With Yellow Stripes', 'media/fahion_house.jpg', 12, '7000'),
(3, 'black jogger', 'Black jogger With White Stripe', 'media/black_jogger.jpg', 11, '4500'),
(4, 'mauton carton', 'Mauton Carton Brown crested Joggers', 'media/mauton_jogger.jpg', 9, '4000'),
(5, 'grey plain jogger', 'plain joggers for men - grey', 'media/grey_plain_jogger.jpg', 12, '7000'),
(6, 'men hoodie', 'set of 2 hoodies for men', 'media/men_hoodie.jpg', 12, '12000'),
(7, 'marshmallow hoodie', 'Marshmallow Print Red Hoodie', 'media/marshmallow_hoodie.jpg', 14, '8000'),
(8, 'andrezzy joggers', 'Andrezzy Stitches Joggers With Strips', 'media/andrezzy.jpg', 8, '5000'),
(9, 'biril hoodie', 'Biril Crested Hoodie -Black', 'media/biril_hoodie.jpg', 14, '6000');

-- --------------------------------------------------------

--
-- Table structure for table `men_menpolo`
--

DROP TABLE IF EXISTS `men_menpolo`;
CREATE TABLE IF NOT EXISTS `men_menpolo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_menpolo`
--

INSERT INTO `men_menpolo` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'White polo', 'white polo for men', 'media/white_polo.jpg', 30, '4500'),
(2, 'men T-shirts', '3-in-1 t shirts for men', 'media/3in1.jpg', 30, '5000'),
(3, 'V-neck T-shirt', 'plain v-neck t-shirt - ash', 'media/v-neck.jpg', 24, '2000'),
(4, 'Striped polo', 'red and black striped polo t-shirt', 'media/polo-red.jpg', 32, '4500'),
(5, 'chrysolite polo', 'chrysolite designs polo t-shirt', 'media/chrysolite-design-loyalty.jpg', 22, '2500'),
(6, 'round neck T-shirt', 'quality round neck t-shirt for men', 'media/round-neck.jpg', 32, '4000'),
(7, 'turtle neck', 'maroon crested turtle neck t-shirt', 'media/turtle_neck.jpg', 21, '3000'),
(8, 'culture t-shirt', 'culture design white t-shirt', 'media/culture_t-shirt.jpg', 18, '2500'),
(9, 'joker t-shirt', 'joker t-shirt for men - black', 'media/joker-t-shirt.jpg', 18, '2500');

-- --------------------------------------------------------

--
-- Table structure for table `men_menshirt`
--

DROP TABLE IF EXISTS `men_menshirt`;
CREATE TABLE IF NOT EXISTS `men_menshirt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_menshirt`
--

INSERT INTO `men_menshirt` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'ralph lauren', 'Ralph Lauren Embroidered Shirt', 'media/ralph_shirt.jpg', 13, '15000'),
(2, 'Lacoste', 'Lacoste Check Print Regular Fit Shirt', 'media/lacoste_shirt.jpg', 15, '14000'),
(3, 'Short sleeve shirt', 'denim short sleeve shirt - Blue', 'media/denim_shortsleeve.jpg', 14, '4000'),
(4, 'Greator', 'greator vintage long sleeve shirt', 'media/greator_shirt.jpg', 16, '5000'),
(5, 'Turkey Shirt', 'Turkey shirt for men', 'media/turkey_shirt.jpg', 12, '9000'),
(6, 'Long Sleeve shirt', 'long sleeve shirt for men', 'media/long_sleeve.jpg', 17, '4000'),
(7, 'Solid shirt', 'Solid Regular Fit Shirt With Button Flap - Grey', 'media/solid_shirt.jpg', 15, '5000'),
(8, 'ralph lauren', 'Ralph Lauren Mens Oxford Shirt In Regular Fit', 'media/ralph_oxford_shirt.jpg', 19, '15000'),
(9, 'club room', 'Club Room Men\'s Lazulite Check Shirt - Blue', 'media/club_room.jpg', 15, '19000');

-- --------------------------------------------------------

--
-- Table structure for table `men_menshoe`
--

DROP TABLE IF EXISTS `men_menshoe`;
CREATE TABLE IF NOT EXISTS `men_menshoe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_menshoe`
--

INSERT INTO `men_menshoe` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'cochise', 'Cochise Croc Leather Derby Shoes', 'media/cochise_shoe.jpg', 19, '7000'),
(2, 'red tape', 'Bateman Leather Chelsea Boots', 'media/red_tape.jpg', 11, '24000'),
(3, 'cochise loafers', 'Cochise Loafers for men - Black', 'media/cochise_loafers.jpg', 23, '5000'),
(4, 'leather shoe', 'Formal Leather Shoes - Carton Brown', 'media/carton_brown.jpg', 11, '5000'),
(5, 'red tape brogues', 'Red Tape Carlton Leather Brogues Shoe', 'media/red_tape_brogues.jpg', 7, '20000'),
(6, 'valacci', 'Valacci Breathable Official Casual Shoes', 'media/valacci.jpg', 14, '7000'),
(7, 'cochise leather shoe', 'Cochise Bi Texture Leather Shoe', 'media/cochise_leather.jpg', 17, '7000'),
(8, 'dolphine', 'Dolphine Leather Loafers - Black', 'media/Leather-Loafers.jpg', 17, '7000'),
(9, 'fashion pride', 'Fashion Pride Authentic Suede Shoe', 'media/fashion_pride.jpg', 9, '15000');

-- --------------------------------------------------------

--
-- Table structure for table `men_menshort`
--

DROP TABLE IF EXISTS `men_menshort`;
CREATE TABLE IF NOT EXISTS `men_menshort` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_menshort`
--

INSERT INTO `men_menshort` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'combo shorts', 'Teefazz urban combo shorts for men', 'media/combo-short.jpg', 12, '11000'),
(2, 'Burton burgundy', 'burton burgundy jersey shorts', 'media/burton_burgundy.jpg', 13, '11000'),
(3, 'combat shorts', 'fashion smart combat cargo shorts', 'media/combat_shorts.jpg', 12, '5500');

-- --------------------------------------------------------

--
-- Table structure for table `men_mensneaker`
--

DROP TABLE IF EXISTS `men_mensneaker`;
CREATE TABLE IF NOT EXISTS `men_mensneaker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_mensneaker`
--

INSERT INTO `men_mensneaker` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'nike', 'Nike Sneakers For Men - Black', 'media/nike_sneakers.jpg', 20, '15000'),
(2, 'black sneakers', 'Sneakers For Men - Black', 'media/sneakersjpg.jpg', 14, '12000'),
(3, 'call it spring', 'Zenne Blue Casual Sneakers For Men', 'media/call_it_spring.jpg', 14, '38000'),
(4, 'black and white sneakers', 'Sneakers For Men - White & Black', 'media/black_white.jpg', 7, '16500'),
(5, 'men sneakers', 'Sneakers For Men - Black', 'media/sneaker.jpg', 13, '20000'),
(6, 'hzb', 'h.z.b sneakers for men', 'media/hzb.jpg', 13, '13000'),
(7, 'nike sport', 'nike Sport Sneakers For Men', 'media/nike.jpg', 19, '18000'),
(8, 'converse', 'Laceup Sneakers for Men - Black', 'media/converse.jpg', 12, '5000'),
(9, 'men black sneakers', 'Black Sneakers for Men', 'media/men_black.jpg', 12, '15000');

-- --------------------------------------------------------

--
-- Table structure for table `men_mensuit`
--

DROP TABLE IF EXISTS `men_mensuit`;
CREATE TABLE IF NOT EXISTS `men_mensuit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_mensuit`
--

INSERT INTO `men_mensuit` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Casilla suit', 'Casilla Men Suit - navy blue', 'media/cassila_suit.jpg', 10, '22000'),
(2, 'black suit', '2 pieces black suit for men', 'media/men_2pieces.jpg', 12, '17000'),
(3, 'die caprie', 'Die Caprie Fitted Suit - Navy blue', 'media/die_caprie.jpg', 12, '17000'),
(4, 'shinny suit', 'Shinny Grey Suit for men', 'media/Men-s-Shinny-Suit--Grey-7972143_1.jpg', 9, '11000'),
(5, 'giovanni', 'Giovanni Suit- Navy Blue Black', 'media/giovanni_suit.jpg', 12, '12000'),
(6, 'grey suit', 'grey suit for men', 'media/grey_suit.jpg', 13, '20000');

-- --------------------------------------------------------

--
-- Table structure for table `men_mensunglasse`
--

DROP TABLE IF EXISTS `men_mensunglasse`;
CREATE TABLE IF NOT EXISTS `men_mensunglasse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_mensunglasse`
--

INSERT INTO `men_mensunglasse` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Retro Sunglasses', 'Retro Polarized Aviator Sunglasses', 'media/Retro-Men-s-Polarized-Aviator-Sunglasses-6692587.jpg', 20, '5500'),
(2, 'Aviator sunglasses', 'Ray Ban Aviator Sunglasses', 'media/Aviator-Sunglasses.jpg', 23, '22000'),
(3, 'wayfarer sunglasses', 'Glossy Dark Frames Wayfarer Sunglasses', 'media/Wayfarer.jpg', 16, '6000'),
(4, 'Fashion sunglasses', 'Square Fashion Sunglasses - Black', 'media/fashion-sunglasses.jpg', 16, '4000'),
(5, 'aa sunglasses', 'AA Men\'s See Through Rectangle Shape', 'media/AA.jpg', 17, '4000'),
(6, 'Polarized Sunglasses', 'Super Light Thin Tac Polarized Sunglasses', 'media/polarized-sunglasses.jpg', 20, '7500'),
(7, 'rimless sunglasses', 'Square Rimless Sunglasses - Crystal Clear', 'media/rimless-sunglasses.jpg', 19, '4500'),
(8, 'round sunglasses', 'Iced Stones Round Sunglasses', 'media/ice_-stoned.jpg', 20, '12000'),
(9, 'Ray ban', 'Ray Ban Folding Aviator Sunglasses', 'media/Folding-Aviator-Sunglasses.jpg', 17, '22000');

-- --------------------------------------------------------

--
-- Table structure for table `men_mentrouser`
--

DROP TABLE IF EXISTS `men_mentrouser`;
CREATE TABLE IF NOT EXISTS `men_mentrouser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_mentrouser`
--

INSERT INTO `men_mentrouser` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Chinos Trousers', 'quality black chinos trouser', 'media/Chinos-Trouser.jpg', 15, '4000'),
(2, 'vickers', 'vickers slim fit chinos - army green', 'media/Slim-Fit-Chinos---Army-Green-2452762_3.jpg', 23, '4000'),
(3, 'ralph lauren', 'Ralph Lauren khaki Chinos Pants', 'media/ralph_lauren_chinos.jpg', 14, '13000'),
(4, 'Navy blue chinos', 'navy blue chinos for men', 'media/men_chinos.jpg', 19, '8000'),
(5, 'formal trouser', 'Royal Blue Formal Trouser for men', 'media/men_trouser.jpg', 16, '5000'),
(6, '5 in 1 trousers', '5 In 1 (3pant Trouser, 1 Jean, 1 Chinos)', 'media/5in1.jpg', 17, '14000');

-- --------------------------------------------------------

--
-- Table structure for table `men_menwatche`
--

DROP TABLE IF EXISTS `men_menwatche`;
CREATE TABLE IF NOT EXISTS `men_menwatche` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `men_menwatche`
--

INSERT INTO `men_menwatche` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Soxy', 'Soxy Men Wristwatch - Black Leather', 'media/soxy.jpg', 15, '2000'),
(2, 'Yazole', 'Yazole Men Fashion Watch - Black', 'media/yozale.jpg', 23, '3000'),
(3, 'lorus', 'Lorus Men Blue Silicone Strap Watch', 'media/lorus.jpg', 13, '30000'),
(4, 'Michael Kors', 'Michael Kors Dylan Black Silicon Strap Men Watch', 'media/Michael_Kors.jpg', 15, '30000'),
(5, 'Gigasport', 'Gigasport Digital Sports Wristwatch - Black', 'media/gigasport.jpg', 14, '1500'),
(6, 'Smart Watch', 'A1 Smart Phone Watch + Free S530 Earpiece - Black', 'media/smart-watch.jpg', 13, '7500'),
(7, 'Sport watch', 'Led Electronic Unisex Sport Watch - Black & gold', 'media/led-watch.jpg', 14, '2000'),
(8, 'Casio classic', 'Casio classic wristwatch for men', 'media/casio_Tyby0AA.jpg', 15, '17000'),
(9, 'Android Watch', 'Android Smart Watch - Black', 'media/Android-Smart-Watch.jpg', 20, '18000');

-- --------------------------------------------------------

--
-- Table structure for table `paystack_customerinfo`
--

DROP TABLE IF EXISTS `paystack_customerinfo`;
CREATE TABLE IF NOT EXISTS `paystack_customerinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paystack_customerinfo`
--

INSERT INTO `paystack_customerinfo` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `amount`) VALUES
(1, 'Emmanuel', 'Abobade', 'emmanuelabobade@gmail.com', 'False', 172000);

-- --------------------------------------------------------

--
-- Table structure for table `shop_feature`
--

DROP TABLE IF EXISTS `shop_feature`;
CREATE TABLE IF NOT EXISTS `shop_feature` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_feature`
--

INSERT INTO `shop_feature` (`id`, `name`, `description`, `image`, `price`) VALUES
(1, 'reebok', 'White reebok sneakers for men', 'media/reebok_sneakers.jpg', '15000'),
(2, 'adidas T-shirt', 'black oversized Adidas round neck', 'media/adidas_T-Shirt.jpg', '3500'),
(3, 'G-shock', 'G-Shock Rangeman, a perfect wristwatch for you', 'media/g_shock.jpg', '7000'),
(4, 'Nike T-shirt', 'nike summer T-shirt, perfect for summer outings', 'media/Nike_summer_T-Shirt.jpg', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `description`, `image`, `price`) VALUES
(1, 'men suits', 'men elegant suit', 'media/men_elegant_suits.jpg', '16000'),
(2, 'Adidas Campus', 'Sleek Adidas campus sneakers', 'media/adidas_campus.jpg', '14000'),
(3, 'Adidas Hoodie', 'white Adidas hoodie', 'media/adidas_hoodie.jpg', '8000'),
(4, 'Women Shoe', 'white shoe for classy women', 'media/women_shoes.jpg', '8000'),
(5, 'Wedding Necklace', 'Wedding silver necklace', 'media/wedding_silver_necklacejpg.jpg', '7000'),
(6, 'durable stock jean', 'durable stock jean for men', 'media/men_stock_jeans.jpg', '8000'),
(7, 'Nike Airmax', 'Black Nike Airmax 90 sneakers', 'media/nike_airmax.jpg', '15000'),
(8, 'Rolex ladies watch', 'rolex wrist watch for ladies', 'media/rolex_lady_watch.jpg', '17000'),
(9, 'boys shirt', 'classy shirt for boys', 'media/boys_shirt_.jpg', '7000');

-- --------------------------------------------------------

--
-- Table structure for table `women_bag`
--

DROP TABLE IF EXISTS `women_bag`;
CREATE TABLE IF NOT EXISTS `women_bag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_bag`
--

INSERT INTO `women_bag` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'Scarf bag', 'Mini Ladies Scarf Bag - Black', 'media/mini_scarf_bag.jpg', 24, '3000'),
(2, 'shoulder handbag', 'Ladies\' Shoulder Handbag - Black', 'media/shoulder_handbag.jpg', 15, '8000'),
(3, 'leather handbag', 'Marvelous Ladies Leather Handbag - Black', 'media/marvelous_bag.jpg', 20, '7000'),
(4, 'Aldo Hafsia', 'Aldo Hafsia Tote Bag-skin', 'media/aldo_bag.jpg', 11, '26000'),
(5, 'handbag', '3 In 1 Ladies Handbag - Grey', 'media/3in1_handbag.jpg', 13, '6000'),
(6, 'cross body bag', 'Handle Cross Body Bag With Deer Pendant', 'media/deer_pendant_bag.jpg', 21, '8000'),
(7, 'reptile design bag', 'Reptile Design Bag For Ladies\'-Black', 'media/reptile_design_bag.jpg', 11, '18000'),
(8, 'swipe design bag', 'Swipe Design Bag (game)', 'media/swipe_design_bag.jpg', 21, '12000'),
(9, 'aldo kula', 'Aldo Kula Midi Handbag', 'media/aldo_killa_bag.jpg', 12, '29000');

-- --------------------------------------------------------

--
-- Table structure for table `women_jewellerie`
--

DROP TABLE IF EXISTS `women_jewellerie`;
CREATE TABLE IF NOT EXISTS `women_jewellerie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_jewellerie`
--

INSERT INTO `women_jewellerie` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'ring', 'Wedding & Engagement Ring- Set Of 2', 'media/wedding_ring.jpg', 15, '18000'),
(2, 'cream jewellery', 'Cream With Gold Finding', 'media/cream_finding.jpg', 16, '18000'),
(3, 'furla bracelet', 'Ladies Furla Bracelet', 'media/Ladies-Furla-Bracelet-6717969_1.jpg', 32, '11000'),
(4, 'gold wedding ring', 'Crystal Studded Golden Wedding Ring', 'media/Crystal-Studded-Gold-Filled-Wedding-Ring-Set-7175158.jpg', 11, '15000'),
(5, 'choker', 'Miami Cuban Link Choker For Women', 'media/miami_choker.jpg', 14, '12000'),
(6, 'jewelry organizer', 'With Necklace Hooks & Ring Pouch', 'media/jewellery_organizer.jpg', 14, '10000'),
(7, 'earring sets', '18k Real Plated Earring Sets - Gold', 'media/real_plated_earring.jpg', 17, '15000'),
(8, 'necklace set', 'Plated Necklace Set - Gold', 'media/plated_necklace.jpg', 21, '15000'),
(9, 'tennis chain', 'Silver Tennis Chain With Iced Butterfly Chain', 'media/silver_tennis.jpg', 19, '10000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womenjean`
--

DROP TABLE IF EXISTS `women_womenjean`;
CREATE TABLE IF NOT EXISTS `women_womenjean` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womenjean`
--

INSERT INTO `women_womenjean` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'denim jeans', 'Denim Jeans For Women - Grey', 'media/denim_jean.jpg', 28, '7000'),
(2, 'angels jean', 'Angels Boot-cut Jeans For Women', 'media/angels_jean.jpg', 15, '14000'),
(3, 'skinny jean', 'Skinny Blue Jeans For Women', 'media/skinny_jeans.jpg', 13, '4000'),
(4, 'stone wash jeans', 'Stylish Stone Wash Faux Jeans', 'media/Stylish-Stone-Wash-Faux-Jeans-Leggings---Black-7746941.jpg', 23, '3000'),
(5, 'women jeans', 'Long & Lean Women\'s Jeans', 'media/long_lean_jean.jpg', 24, '4000'),
(6, 'white skinny jeans', 'Ladies Skinny Jeans Trouser-White', 'media/skinny_jeans_white.jpg', 21, '5000'),
(7, 'premium flare', 'Premium Flare Women Jeans', 'media/premium_jeans.jpg', 15, '4000'),
(8, 'stretchy bootcut', 'Stretchy Bootcut Jean - Sky-Blue', 'media/women_bootcut.jpg', 18, '7000'),
(9, 's & co', 'S & Co Hi-Waist Skinny Ripped Jean', 'media/Hi-Waist-Skinny-Sky-Blue-Ripped-Jean-4199465_1.jpg', 16, '6000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womenjogger`
--

DROP TABLE IF EXISTS `women_womenjogger`;
CREATE TABLE IF NOT EXISTS `women_womenjogger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womenjogger`
--

INSERT INTO `women_womenjogger` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'green joggers', 'Ladies 3-In-1 Joggers - Green', 'media/138977_1584605652.jpg', 12, '5000'),
(2, 'primark', 'Primark Brushed Fleece Joggers', 'media/3379_1584095210.jpg', 14, '8000'),
(3, 'wanna hoodie', 'Crop Hoodie With Joggers', 'media/146239_1583585082.jpg', 17, '9000'),
(4, 'ocean pacific', 'ocean Pacific Cotton Stretch Jogger', 'media/81866_1596539450.jpg', 19, '6000'),
(5, 'wanna sweatshirt', 'Wanna Female Sweatshirt + Joggers', 'media/146239_1583653694.jpg', 16, '9000'),
(6, 'orange joggers', 'orange Joggers Set', 'media/2217_1605714127.jpg', 15, '10000'),
(7, 'joggers set', 'Two Piece Joggers Set', 'media/2217_1605713901.jpg', 11, '12000'),
(8, 'wanna turtle-neck', 'Turtle Neck Sweatshirt + Joggers Set', 'media/146239_1583583154.jpg', 17, '9000'),
(9, 'fashion front', 'Fashion Front Women Joggers', 'media/162241_1593082656.jpg', 18, '6000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womenshirt`
--

DROP TABLE IF EXISTS `women_womenshirt`;
CREATE TABLE IF NOT EXISTS `women_womenshirt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womenshirt`
--

INSERT INTO `women_womenshirt` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'denim shirt', 'Rose Embroidery Denim Shirt', 'media/Rose-Embroidery-Denim-Shirt-6846667_2.jpg', 21, '8000'),
(2, 'Red Checkered Shirt', 'Ladies Checkered Shirt - Red', 'media/ladies_checkered.jpg', 18, '7500'),
(3, 'the wardrobe', 'Peplum Striped Long Sleeve Shirt', 'media/Peplum-Striped-Long-Sleeve-Shirt---Multicolour-7744120.jpg', 17, '8000'),
(4, 'Long Sleeve shirt', 'Long Sleeve Shirt for Women', 'media/Long-Sleeve-Shirt-for-Women-7747282_1.jpg', 21, '3000'),
(5, 'pink shirt', 'Long Sleeve Fitted Shirt For Women', 'media/long_fittedjpg.jpg', 27, '3000'),
(6, 'Short sleeve shirt', 'short Sleeve Shirt For Women', 'media/short_shirt.jpg', 27, '3000'),
(7, 'simon jersey', 'Convertible Collar Long Sleeve Shirt - Blue', 'media/Women-s-Convertible-Collar-Long-Sleeve-Shirt---Blue-7948530.jpg', 23, '7500'),
(8, 'floral fitted shirt', 'Long Sleeve Floral Fitted Shirt For Women', 'media/floral_shirtjpg.jpg', 21, '3000'),
(9, 'Short sleeve shirt', 'Short Sleeve Floral Fitted Shirt For Women', 'media/short_floral.jpg', 24, '3000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womenshoe`
--

DROP TABLE IF EXISTS `women_womenshoe`;
CREATE TABLE IF NOT EXISTS `women_womenshoe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womenshoe`
--

INSERT INTO `women_womenshoe` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'black and silver shoe', 'Shoe And Bag With Flower Design', 'media/3023_1582814242.jpg', 6, '137000'),
(2, 'gold sandals', 'Sandals With Rose-gold Accessories', 'media/3023_1582793086.jpg', 9, '139000'),
(3, 'designers shoe', 'Navy And Teal Blue Shoe And Bag', 'media/3023_1582796268.jpg', 16, '140000'),
(4, 'sing Back Sandal', 'Sandal With Clutch Purse', 'media/70783_1598080150.jpg', 12, '21000'),
(5, 'fashion woman', 'Fashion Ladies Shoe -Wine', 'media/70783_1538828861.jpg', 12, '20000'),
(6, 'apricot shoe', 'Apricot With Diamond Stones', 'media/153127_1555678285.jpg', 16, '10000'),
(7, 'fashion woman Heels', 'Bridal Kitten Heels Shoe + Matching  Bag', 'media/70783_1568791112.jpg', 11, '20000'),
(8, 'honey beauty', 'Bridal Kitten Heels Shoe + Matching Purse', 'media/70783_1568321604.jpg', 10, '19000'),
(9, 'Raimondo Buccelli Shoe', 'Raimondo Buccelli Shoe & Bag - Pink', 'media/3023_1575834234.jpg', 12, '145000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womensneaker`
--

DROP TABLE IF EXISTS `women_womensneaker`;
CREATE TABLE IF NOT EXISTS `women_womensneaker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womensneaker`
--

INSERT INTO `women_womensneaker` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'women sneakers', 'Sneakers For Women', 'media/144940_1590247414.jpg', 16, '15000'),
(2, 'classic sports', 'Casual Sneakers For Women', 'media/147878_1558468993.jpg', 18, '7000'),
(3, 'blue sneakers', 'Sneakers For Women- blue', 'media/144940_1573046414.jpg', 16, '12000'),
(4, 'lightweight sneakers', 'Breathable Sneakers For Women', 'media/156129_1605174323.jpg', 19, '6000'),
(5, 'breathable sneakers', 'Lightweight Sneakers For Women', 'media/156129_1605174995.jpg', 23, '6000'),
(6, 'nike multicolor', 'multicolor sneakers for women', 'media/70783_1604701962.jpg', 16, '17000'),
(7, 'trendy sneakers', 'Adorable Black Sneakers For Women', 'media/179390_1601479766.jpg', 13, '8000'),
(8, 'leopard print sneakers', 'Leopard Print Sneakers for Women', 'media/Leopard-Print-Sneakers-for-Women---Brown-7719292.jpg', 21, '8000'),
(9, 'trendy multicolor', 'Adorable Multicolor Sneakers For Women', 'media/179390_1601915078.jpg', 18, '8000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womensuit`
--

DROP TABLE IF EXISTS `women_womensuit`;
CREATE TABLE IF NOT EXISTS `women_womensuit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womensuit`
--

INSERT INTO `women_womensuit` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'black blazer', 'Long Sleeve Blazer- Black', 'media/5318_1603053737.jpg', 16, '7000'),
(2, 'ladies blazer', 'Side Pockets Blazer- Black', 'media/5318_1603054372.jpg', 21, '7000'),
(3, 'pink blazers', 'Lapel Front Pink Blazer', 'media/115539_1522939437.jpg', 12, '4500'),
(4, 'aww blazer', 'Long Sleeve Blazer- Grey', 'media/5318_1606206048.jpg', 17, '7000'),
(5, 'aww', 'Long Sleeve Blazer- Cobalt Blue', 'media/5318_1574767975.jpg', 17, '7000'),
(6, 'sleeve blazer', 'Open Front 3/4 Sleeve Blazer', 'media/103657_1524670030.jpg', 16, '5000'),
(7, 'Pleated Shoulder blazer', 'Pleated Shoulder Tux Style Blazer', 'media/102518_1551212780.jpg', 16, '5000'),
(8, 'pinstripe jacket', 'Twin Button Pinstripe Jacket & Trouser', 'media/Twin-Button-Pinstripe-Jacket-Trouser-5244342.jpg', 16, '12000'),
(9, 'peplum jacket', 'black Peplum Belted Jacket & Skirt', 'media/Black-Peplum-Belted-Jacket-Skirt-7661260_2.jpg', 17, '14000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womensunglasse`
--

DROP TABLE IF EXISTS `women_womensunglasse`;
CREATE TABLE IF NOT EXISTS `women_womensunglasse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womensunglasse`
--

INSERT INTO `women_womensunglasse` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'ladies sunglasses', 'Ladies Sunglasses + Gift Of Earrings', 'media/sunglasses.jpg', 13, '5000'),
(2, 'stylish frame sunglasses', 'Stylish Frame Women\'s Sunglasses', 'media/stylish_frame.jpg', 15, '5000'),
(3, 'vintage retro', 'Vintage Retro Glasses - White', 'media/retro_glasses.jpg', 31, '4000'),
(4, 'cat eye glasses', 'Cat Eye Leopard Print Glasses', 'media/cat_eye_glass.jpg', 24, '4000'),
(5, 'Tea Sunglasses', 'Ladies\' Trendy Tea Sunglasses', 'media/tea_sunglasses.jpg', 21, '3000'),
(6, 'anti blue glasses', 'Anti Blue Glasses for ladies', 'media/anti_blue.jpg', 13, '4500'),
(7, 'Fashion sunglasses', 'Fashion Sunglasses For Women', 'media/fashion_glasses.jpg', 15, '6000'),
(8, 'trendy sunglasses', 'Square Trendy Sunglasses - Black', 'media/trendy_glasses.jpg', 21, '3000'),
(9, 'sunberry frame', 'Oversize Sunberry Frame Sunglasses', 'media/sunberry_frame.jpg', 31, '7000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womentop`
--

DROP TABLE IF EXISTS `women_womentop`;
CREATE TABLE IF NOT EXISTS `women_womentop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womentop`
--

INSERT INTO `women_womentop` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'fashion house', '4in1 So T-shirts Round Neck Tees', 'media/fashion_house_xWB95QW.jpg', 32, '9000'),
(2, 'undiz', 'Undiz Orange Tank Top', 'media/undiz_top.jpg', 15, '2000'),
(3, 'scotch and soda', 'Scotch & Soda Off-the-shoulder Top', 'media/scotch_soda.jpg', 12, '17000'),
(4, 'Ankara Beaded Top', 'Flare Sleeve Quality Ladies Top', 'media/flare_sleeve.jpg', 14, '13000'),
(5, 'bodysuit', 'Puffy Sleeves Bodysuit – Mustard', 'media/puffy_sleeve.jpg', 21, '7000'),
(6, 'shein', 'Shein Always Adored Top', 'media/shein_top.jpg', 21, '10000'),
(7, 'planet', 'Planet Ladies Satin Top - Red', 'media/planet.jpg', 25, '9000'),
(8, 'vince camuto', 'Mixed Media Chiffon Long Sleeve Blouse', 'media/vince_camuto.jpg', 24, '18000'),
(9, 'new look', 'Mixed Media Chiffon Long Sleeve Blouse', 'media/new_look.jpg', 24, '10000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womentrouser`
--

DROP TABLE IF EXISTS `women_womentrouser`;
CREATE TABLE IF NOT EXISTS `women_womentrouser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womentrouser`
--

INSERT INTO `women_womentrouser` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'green trouser', 'High Waist Pant', 'media/highwaist.jpg', 21, '5500'),
(2, 'black trouser', 'Belted Corporate Pant', 'media/belted.jpg', 14, '6000'),
(3, 'brown trouser', 'Classic Ladies Corporate Trouser', 'media/Classic-Ladies-Corporate-Trouser---Brown-7975123.jpg', 18, '4500'),
(4, 'pallazo trouser', 'Pallazo Trouser For Female', 'media/pallazo.jpg', 17, '7500'),
(5, 'jeggings', 'Women Jeggings - Navy Blue', 'media/jeggings.jpg', 12, '5000'),
(6, 'blue trouser', 'Womens Trousers Slimfit | Blue', 'media/trouser_slimfit.jpg', 24, '3000'),
(7, 'dmg', 'Madison Three Quarter Palazzo Pants', 'media/dmg.jpg', 16, '2000'),
(8, 'canill', 'High Waist Palazzo Trousers', 'media/canill.jpg', 12, '3000'),
(9, 'yessica', 'Ladies Stretch Cotton Trousers - Black', 'media/Ladies-Stretch-Cotton-Jeans---Black--7732055.jpg', 25, '12000');

-- --------------------------------------------------------

--
-- Table structure for table `women_womenwatche`
--

DROP TABLE IF EXISTS `women_womenwatche`;
CREATE TABLE IF NOT EXISTS `women_womenwatche` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `price` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `women_womenwatche`
--

INSERT INTO `women_womenwatche` (`id`, `name`, `description`, `image`, `stock`, `price`) VALUES
(1, 'pink wristwatch', 'Exclusive Ladies Wrist Watch - Pink', 'media/Exclusive-Ladies-Wrist-Watch---Pink-5629793_3.jpg', 14, '3000'),
(2, 'Casio Collection', 'Casio Collection Ladies Watch', 'media/Collection-Ladies-Watch---LTP-1154PE-7BEF-3623929_5.jpg', 14, '12000'),
(3, 'gold quartz', 'Women\'s Quartz Wristwatch-Gold', 'media/quartz_watch.jpg', 23, '11000'),
(4, 'anne klein', 'Anne Klein Bracelet Watch', 'media/anne_klein.jpg', 11, '15000'),
(5, 'curren', 'Curren Ladies Bracelet Wrist Watch', 'media/curren_watch.jpg', 21, '11000'),
(6, 'Casio Ladies', 'Casio Collection Ladies\' Watch', 'media/Collection-LTP-1302L-7BVEF-Ladies-Watch-3613567_5.jpg', 11, '15000'),
(7, 'geneva', 'Geneva Female Bracelet Wrist Watch - Gold', 'media/geneva_watch.jpg', 14, '3000'),
(8, 'Quartz', 'Crystal Leather Quartz Wristwatch - Blue', 'media/geometry_leather_watch.jpg', 18, '5000'),
(9, 'Luxury Watch', 'Luxury Watch With Free Bracelet - Silver', 'media/silver_watch.jpg', 11, '10000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
