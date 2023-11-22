-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 04:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reach_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `algo_beach`
--

CREATE TABLE `algo_beach` (
  `id` bigint(20) NOT NULL,
  `beach_name` varchar(255) NOT NULL,
  `beach_location` varchar(255) NOT NULL,
  `beach_rating` decimal(3,2) NOT NULL,
  `beach_image` varchar(100) NOT NULL,
  `facebook_page_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `algo_beach`
--

INSERT INTO `algo_beach` (`id`, `beach_name`, `beach_location`, `beach_rating`, `beach_image`, `facebook_page_id`) VALUES
(2, 'Mampang Whitesand  Beach Resort', 'Del Pilar Village,Estrada compound Masepla,Mampang, Zamboanga City, Philippines', 2.00, 'br_pic/2023-17-Mampang_Whitesand__Beach_Resort-mampang-fPOOIbmQ9y.jpg', '100065431721482'),
(3, 'Kayawan Beach Resort', 'Boundary of Brgy Sinubong and Brgy Patalon. After 2 Bridges, fronting CARED PHARMACY. Left side, Zamboanga City, Philippines', 3.00, 'br_pic/2023-18-Kayawan_Beach_Resort-kayawan-zz83ZZFr18.jpg', '100064165746516'),
(4, 'The Beach House at West Coast Patalon', 'Sitio Malandi,Barangay Patalon., Zamboanga City, Philippines', 4.05, 'br_pic/2023-19-The_Beach_House_at_West_Coast_Patalon-beachhouse-O00vVbojRk.jpg', '100063941023937'),
(5, 'Puerto Villa Beach Resort', 'Patalon, Zamboanga City, Philippines', 3.16, 'br_pic/2023-43-Puerto_Villa_Beach_Resort-puerto-TUXNDh0ZlK.jpg', '100064584767000'),
(6, 'Azzura Beach Resort', 'Barangay Bolong, Zamboanga City, Philippines', 3.00, 'br_pic/2023-45-Azzura_Beach_Resort-azurra-olgzNIGLaV.jpg', '100069111910985'),
(7algo_beachandresort, 'SJ White Sand Island Cottages and Sand Bar Beach', 'SJ White Sand Island Cottages and Sand Bar Beach, Arena Blanco ZC, Zamboanga City, Philippines', 4.00, 'br_pic/2023-46-SJ_White_Sand_Island_Cottages_and_Sand_Bar_Beach-sj-Z1Fw1G56y8.jpg', '100078001923904'),
(8, 'Alintanaqa Beach', 'Patalon, Zamboanga City, Zamboanga Peninsula, Philippines, Patalon, Philippines', 3.00, 'br_pic/2023-47-Alintanaqa_Beach-alintaqua-egR7ZdJ8Dt.jpg', '100077980874293'),
(9, 'Pink Sand Beach Sta Cruz Island', 'Sta Cruz Island, Zamboanga City, Philippines', 3.00, 'br_pic/2023-47-Pink_Sand_Beach_Sta_Cruz_Island-pink-omKXRIPaEG.png', '100066694352656'),
(10, 'Vista Del Mar Resort and Recreation Center', 'Labuan-Limpapa National Road, Zamboanga City, Philippines', 4.23, 'br_pic/2023-48-Vista_Del_Mar_Resort_and_Recreation_Center-Vista-orTynP77GJ.jpg', '100079326946930'),
(11, 'DanMar Beach and Resort', 'talisayan, Zamboanga City, Philippines', 5.00, 'br_pic/2023-50-DanMar_Beach_and_Resort-danmar-o6VsRlGLTq.jpg', '100064329572985'),
(12, 'Pitas Island', 'Bolong, 7000 Zamboanga City, Philippines, Bolong, Philippines', 4.50, 'br_pic/2023-50-Pitas_Island-pitas-BFtX817d2o.jpg', '100064940263398');

-- --------------------------------------------------------

--
-- Table structure for table `algo_beachandresort`
--

CREATE TABLE `algo_beachandresort` (
  `id` bigint(20) NOT NULL,
  `BandR_name` varchar(255) NOT NULL,
  `BandR_location` varchar(255) NOT NULL,
  `BandR_rating` decimal(3,2) NOT NULL,
  `BandR_image` varchar(100) NOT NULL,
  `facebook_page_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `algo_beachandresort`
--

INSERT INTO `algo_beachandresort` (`id`, `BandR_name`, `BandR_location`, `BandR_rating`, `BandR_image`, `facebook_page_id`) VALUES
(1, 'Mampang Whitesand Beach Resort', 'Del Pilar Village,Estrada compound Masepla,Mampang, Zamboanga City, Philippines', 2.25, 'br_pic/2023-34-Mampang_Whitesand_Beach_Resort-mampang-oJJAMcdVRP.jpg', '100065431721482'),
(2, 'Pink Sand Beach Sta Cruz Island', 'Sta Cruz Island, Zamboanga City, Philippines', 4.10, 'br_pic/2023-43-Pink_Sand_Beach_Sta_Cruz_Island-pink-pxqy1N8gcj.png', '100066694352656'),
(3, 'Kayawan Beach Resort', 'Boundary of Brgy Sinubong and Brgy Patalon. After 2 Bridges, fronting CARED PHARMACY. Left side, Zamboanga City, Philippines', 1.20, 'br_pic/2023-44-Kayawan_Beach_Resort-kayawan-O2BeYHJ7sK.jpg', '100064165746516'),
(4, 'Azzura Beach Resort', 'Barangay Bolong, Zamboanga City, Philippines', 5.00, 'br_pic/2023-03-Azzura_Beach_Resort-azurra-30GTcjW5FZ.jpg', '100069111910985'),
(5, 'DanMar Beach and Resort', 'Talisayan, Zamboanga City', 5.00, 'br_pic/2023-06-DanMar_Beach_and_Resort-danmar-7evRwzRrv4.jpg', '100064329572985'),
(6, 'Puerto Villa Beach Resort', 'Patalon, Zamboanga City, Philippines', 4.23, 'br_pic/2023-07-Puerto_Villa_Beach_Resort-puerto-foZXQJgqoW.jpg', '100064584767000'),
(7, 'Vista Del Mar Resort and Recreation Center', 'Labuan-Limpapa National Road, Zamboanga City, Phil...', 3.00, 'br_pic/2023-09-Vista_Del_Mar_Resort_and_Recreation_Center-Vista-fv4ec11FXm.jpg', '100079326946930'),
(8, 'Alintanaqa Beach', 'Patalon, Zamboanga City, Zamboanga Peninsula, Philippines, Patalon, Philippines', 2.13, 'br_pic/2023-11-Alintanaqa_Beach-alintaqua-2uecB5lzNr.jpg', '100077980874293');

-- --------------------------------------------------------

--
-- Table structure for table `algo_resort`
--

CREATE TABLE `algo_resort` (
  `id` bigint(20) NOT NULL,
  `resort_name` varchar(255) NOT NULL,
  `resort_location` varchar(255) NOT NULL,
  `resort_rating` decimal(3,2) NOT NULL,
  `resort_image` varchar(100) NOT NULL,
  `facebook_page_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `algo_resort`
--

INSERT INTO `algo_resort` (`id`, `resort_name`, `resort_location`, `resort_rating`, `resort_image`, `facebook_page_id`) VALUES
(1, 'Garden Orchid Resorts', 'Gov. Camins Ave., Zamboanga City, Philippines', 5.00, 'br_pic/2023-44-Garden_Orchid_Resorts-garden-ZUUb6rlQ1d.jpg', '100066839372756'),
(2, 'Brea View Resorts', 'Purok 7, Lumayang , Zamboanga City, Philippines', 3.00, 'br_pic/2023-45-Brea_View_Resorts-brea-Gjp7h4jHTI.jpg', '100084289009289'),
(3, 'Woodland Resort', 'Boalan Zamboanga City, Philippines', 4.00, 'br_pic/2023-46-Woodland_Resort-wood-YBENVKBVE2.jpg', '100064535508135'),
(4, 'La Vista Del Monte Resort', 'Lapaz, Km7, Zamboanga City, Philippines', 5.00, 'br_pic/2023-51-La_Vista_Del_Monte_Resort-del_monte-JG5ntqL85z.jpg', '100057741816282'),
(5, 'Bemack Resort', 'Lapaz, Km 7, Zamboanga City, Philippines', 2.25, 'br_pic/2023-52-Bemack_Resort-bemack-ZV2BAhSC0w.jpg', '100064306051979'),
(6, 'Sunrise Family Resort', '46-A Sunrise Village, Guiwan, Zamboanga City, Philippines', 3.00, 'br_pic/2023-53-Sunrise_Family_Resort-sunrise-Xpaxl81IDH.jpg', '100063966816643'),
(7, 'LM Metro Hotel', 'Don Toribio St, Tetuan, Zamboanga City, Philippines', 5.00, 'br_pic/2023-54-LM_Metro_Hotel-LM-EyLFlPJqmN.jpg', '100064644313486'),
(8, 'W Hotel Resort', 'Veterans Avenue, Zamboanga City, Philippines', 3.00, 'br_pic/2023-57-W_Hotel_Resort-w-ufo5DAm7ky.jpg', '100064164966048'),
(9, 'DanMar Beach and Resort', 'talisayan, Zamboanga City, Philippines', 4.25, 'br_pic/2023-59-DanMar_Beach_and_Resort-danmar-y4WEIZUNyp.jpg', '100064329572985'),
(10, 'Margareeta\'s Family Resort', 'Cabaluay, Zamboanga City, Philippines', 5.00, 'br_pic/2023-00-Margareetas_Family_Resort-Margareetas-qcZSpdmOLs.jpg', '100057608643346'),
(11, 'Monte Verde Resort', 'BARANGAY GUISAO, Zamboanga City, Philippines', 2.75, 'br_pic/2023-02-Monte_Verde_Resort-Monte-dTLnggNT4O.jpg', '100063848078771'),
(12, '3mjd Hillsite Resort', 'La Paz, Zamboanga City, Philippines', 5.00, 'br_pic/2023-04-3mjd_Hillsite_Resort-3mjd-X1Ddz3v14B.jpg', '100064937833600'),
(13, 'Sky View Resort', 'Corote,San roque , Zamboanga City, Philippines', 4.15, 'br_pic/2023-05-Sky_View_Resort-Sky-CtqOhTxPdF.jpg', '100063647214137'),
(14, 'Puerto Villa Beach Resort', 'Patalon, Zamboanga City, Philippines', 4.00, 'br_pic/2023-06-Puerto_Villa_Beach_Resort-puerto-FZXlyoD1T4.jpg', '100064584767000'),
(15, 'Vista Del Mar Resort and Recreation Center', 'Labuan-Limpapa National Road, Zamboanga City, Philippines', 4.15, 'br_pic/2023-07-Vista_Del_Mar_Resort_and_Recreation_Center-Vista-F0k4LI2Snc.jpg', '100079326946930'),
(16, 'Bamboo Resorts and Restaurant', 'Zamboanga City, Philippines', 5.00, 'br_pic/2023-09-Bamboo_Resorts_and_Restaurant-bamboo-4TzqIG1FRP.jpg', '100066860530528'),
(17, 'Azzura Beach Resort', 'Barangay Bolong, Zamboanga City, Philippines', 3.00, 'br_pic/2023-10-Azzura_Beach_Resort-azurra-cUUFuvv8Kv.jpg', '100069111910985'),
(18, 'Kayawan Beach Resort', 'Boundary of Brgy Sinubong and Brgy Patalon. After 2 Bridges, fronting CARED PHARMACY. Left side, Zamboanga City, Philippines', 2.50, 'br_pic/2023-11-Kayawan_Beach_Resort-kayawan-bh1eQgCi39.jpg', '100064165746516'),
(19, 'Mampang Whitesand Beach Resort', 'Del Pilar Village,Estrada compound Masepla,Mampang, Zamboanga City, Philippines', 3.25, 'br_pic/2023-11-Mampang_Whitesand_Beach_Resort-mampang-XXx0mS3iPP.jpg', '100065431721482'),
(20, 'Pink Sand Beach Sta Cruz Island', 'Sta Cruz Island, Zamboanga City, Philippines', 4.50, 'br_pic/2023-12-Pink_Sand_Beach_Sta_Cruz_Island-pink-bokyNIK2T1.png', '100066694352656'),
(21, 'Alintanaqa Beach', 'Patalon, Zamboanga City, Zamboanga Peninsula, Philippines, Patalon, Philippines', 3.00, 'br_pic/2023-13-Alintanaqa_Beach-alintaqua-4QpzLrpEbQ.jpg', '100077980874293');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add beach', 7, 'add_beach'),
(26, 'Can change beach', 7, 'change_beach'),
(27, 'Can delete beach', 7, 'delete_beach'),
(28, 'Can view beach', 7, 'view_beach'),
(29, 'Can add beach and resort', 8, 'add_beachandresort'),
(30, 'Can change beach and resort', 8, 'change_beachandresort'),
(31, 'Can delete beach and resort', 8, 'delete_beachandresort'),
(32, 'Can view beach and resort', 8, 'view_beachandresort'),
(33, 'Can add resort', 9, 'add_resort'),
(34, 'Can change resort', 9, 'change_resort'),
(35, 'Can delete resort', 9, 'delete_resort'),
(36, 'Can view resort', 9, 'view_resort');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$EK7gpc8YPKtYLTJHvZBg70$fLnbkLZcZ3k7dKmw3Mt7icixNll82wD1m6hOKIe09Zk=', '2023-10-27 02:26:24.833347', 1, '639362241046', '', '', 'waromarvin@gmail.com', 1, 1, '2023-10-20 13:19:50.609869');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-20 14:35:40.339446', '1', 'dfgsdf', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-10-20 14:36:46.981189', '1', 'dfgsdf', 3, '', 7, 1),
(3, '2023-10-20 16:34:59.850204', '1', 'Mampang Whitesand Beach Resort', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-10-20 16:43:16.740718', '2', 'Pink Sand Beach Sta Cruz Island', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-10-20 16:44:39.381254', '3', 'Kayawan Beach Resort', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-10-20 17:03:44.302611', '4', 'Azzura Beach Resort', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-10-20 17:06:07.232569', '5', 'DanMar Beach and Resort', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-10-20 17:07:29.675610', '6', 'Puerto Villa Beach Resort', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-10-20 17:09:02.859822', '7', 'Vista Del Mar Resort and Recreation Center', 1, '[{\"added\": {}}]', 8, 1),
(10, '2023-10-20 17:11:27.296161', '8', 'Alintanaqa Beach', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-10-20 17:17:56.078376', '2', 'Mampang Whitesand  Beach Resort', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-10-20 17:18:30.142744', '3', 'Kayawan Beach Resort', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-10-20 17:19:28.833570', '4', 'The Beach House at West Coast Patalon', 1, '[{\"added\": {}}]', 7, 1),
(14, '2023-10-20 17:43:50.359533', '5', 'Puerto Villa Beach Resort', 1, '[{\"added\": {}}]', 7, 1),
(15, '2023-10-20 17:45:33.352710', '6', 'Azzura Beach Resort', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-10-20 17:46:22.507060', '7', 'SJ White Sand Island Cottages and Sand Bar Beach', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-10-20 17:47:26.728608', '8', 'Alintanaqa Beach', 1, '[{\"added\": {}}]', 7, 1),
(18, '2023-10-20 17:47:58.718596', '9', 'Pink Sand Beach Sta Cruz Island', 1, '[{\"added\": {}}]', 7, 1),
(19, '2023-10-20 17:48:39.441270', '10', 'Vista Del Mar Resort and Recreation Center', 1, '[{\"added\": {}}]', 7, 1),
(20, '2023-10-20 17:50:03.969339', '11', 'DanMar Beach and Resort', 1, '[{\"added\": {}}]', 7, 1),
(21, '2023-10-20 17:50:46.706522', '12', 'Pitas Island', 1, '[{\"added\": {}}]', 7, 1),
(22, '2023-10-20 22:44:34.983027', '1', 'Garden Orchid Resorts', 1, '[{\"added\": {}}]', 9, 1),
(23, '2023-10-20 22:45:28.207976', '2', 'Brea View Resorts', 1, '[{\"added\": {}}]', 9, 1),
(24, '2023-10-20 22:46:35.394806', '3', 'Woodland Resort', 1, '[{\"added\": {}}]', 9, 1),
(25, '2023-10-20 22:51:33.873459', '4', 'La Vista Del Monte Resort', 1, '[{\"added\": {}}]', 9, 1),
(26, '2023-10-20 22:52:24.372989', '5', 'Bemack Resort', 1, '[{\"added\": {}}]', 9, 1),
(27, '2023-10-20 22:53:48.181978', '6', 'Sunrise Family Resort', 1, '[{\"added\": {}}]', 9, 1),
(28, '2023-10-20 22:54:28.122806', '7', 'LM Metro Hotel', 1, '[{\"added\": {}}]', 9, 1),
(29, '2023-10-20 22:57:30.812821', '8', 'W Hotel Resort', 1, '[{\"added\": {}}]', 9, 1),
(30, '2023-10-20 22:59:02.818910', '9', 'DanMar Beach and Resort', 1, '[{\"added\": {}}]', 9, 1),
(31, '2023-10-20 23:00:28.432662', '10', 'Margareeta\'s Family Resort', 1, '[{\"added\": {}}]', 9, 1),
(32, '2023-10-20 23:02:37.229134', '11', 'Monte Verde Resort', 1, '[{\"added\": {}}]', 9, 1),
(33, '2023-10-20 23:04:28.548523', '12', '3mjd Hillsite Resort', 1, '[{\"added\": {}}]', 9, 1),
(34, '2023-10-20 23:05:16.208872', '13', 'Sky View Resort', 1, '[{\"added\": {}}]', 9, 1),
(35, '2023-10-20 23:06:20.123088', '14', 'Puerto Villa Beach Resort', 1, '[{\"added\": {}}]', 9, 1),
(36, '2023-10-20 23:07:16.173689', '15', 'Vista Del Mar Resort and Recreation Center', 1, '[{\"added\": {}}]', 9, 1),
(37, '2023-10-20 23:09:53.743494', '16', 'Bamboo Resorts and Restaurant', 1, '[{\"added\": {}}]', 9, 1),
(38, '2023-10-20 23:10:28.776859', '17', 'Azzura Beach Resort', 1, '[{\"added\": {}}]', 9, 1),
(39, '2023-10-20 23:11:13.408504', '18', 'Kayawan Beach Resort', 1, '[{\"added\": {}}]', 9, 1),
(40, '2023-10-20 23:11:53.782262', '19', 'Mampang Whitesand Beach Resort', 1, '[{\"added\": {}}]', 9, 1),
(41, '2023-10-20 23:12:28.308951', '20', 'Pink Sand Beach Sta Cruz Island', 1, '[{\"added\": {}}]', 9, 1),
(42, '2023-10-20 23:13:21.330410', '21', 'Alintanaqa Beach', 1, '[{\"added\": {}}]', 9, 1),
(43, '2023-10-27 02:27:05.803933', '9', 'sample', 1, '[{\"added\": {}}]', 8, 1),
(44, '2023-10-27 02:29:16.462398', '9', 'sample', 3, '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'algo', 'beach'),
(8, 'algo', 'beachandresort'),
(9, 'algo', 'resort'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-20 13:14:56.454537'),
(2, 'auth', '0001_initial', '2023-10-20 13:14:57.221388'),
(3, 'admin', '0001_initial', '2023-10-20 13:14:57.402788'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-20 13:14:57.416563'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-20 13:14:57.433347'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-20 13:14:57.570154'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-20 13:14:57.633103'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-20 13:14:57.677037'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-20 13:14:57.683575'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-20 13:14:57.749337'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-20 13:14:57.749337'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-20 13:14:57.766997'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-20 13:14:57.799706'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-20 13:14:57.838072'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-20 13:14:57.865911'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-20 13:14:57.876098'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-20 13:14:57.904808'),
(18, 'sessions', '0001_initial', '2023-10-20 13:14:57.949078'),
(19, 'algo', '0001_initial', '2023-10-20 14:32:38.035353');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1zd16ygrh5ewb0276bl87vht6ja4ceen', '.eJxVjEEOwiAQRe_C2pAZSgm4dO8ZCAODVA0kpV013t026UK3773_N-HDuhS_dp79lMRVoLj8MgrxxfUQ6Rnqo8nY6jJPJI9EnrbLe0v8vp3t30EJvexriMZQsJytsugw56Q5Ewwad8IqDoAhu8Eh6FGzVQTkOIJhUKOzrMXnC-eHN6A:1qwCYK:2Ps7iQQG6qjsVIItUBfEJ7LydigkJVUAxNvj5UFCsHY', '2023-11-10 02:26:24.841874'),
('n8iudhrovbzpdr39v4xz7b1bm55j5iqv', '.eJxVjEEOwiAQRe_C2pAZSgm4dO8ZCAODVA0kpV013t026UK3773_N-HDuhS_dp79lMRVoLj8MgrxxfUQ6Rnqo8nY6jJPJI9EnrbLe0v8vp3t30EJvexriMZQsJytsugw56Q5Ewwad8IqDoAhu8Eh6FGzVQTkOIJhUKOzrMXnC-eHN6A:1qtstq:qGwXr_yqBqIEMGvESWk729X10XiG8AFXZ0AH-guLsF4', '2023-11-03 17:03:02.789217');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `algo_beach`
--
ALTER TABLE `algo_beach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `algo_beachandresort`
--
ALTER TABLE `algo_beachandresort`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `algo_resort`
--
ALTER TABLE `algo_resort`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `algo_beach`
--
ALTER TABLE `algo_beach`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `algo_beachandresort`
--
ALTER TABLE `algo_beachandresort`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `algo_resort`
--
ALTER TABLE `algo_resort`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
