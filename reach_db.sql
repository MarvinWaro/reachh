-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 03:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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

-- --------------------------------------------------------

--
-- Table structure for table `algo_place`
--

CREATE TABLE `algo_place` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `facebook_page_id` varchar(50) DEFAULT NULL,
  `is_beach` tinyint(1) NOT NULL,
  `is_resort` tinyint(1) NOT NULL,
  `place_identifier` varchar(50) NOT NULL,
  `keywords` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `algo_place`
--

INSERT INTO `algo_place` (`id`, `name`, `location`, `rating`, `image`, `facebook_page_id`, `is_beach`, `is_resort`, `place_identifier`, `keywords`) VALUES
(2, 'Alintanaqa Beach', 'Patalon, Zamboanga City, Zamboanga Peninsula, Philippines, Patalon, Philippines', 4.79, 'br_pic/2023-07-Alintanaqa_Beach-296710113_160601606551744_8209641019643427370_n_1-nCY4IfRJ03.jpg', 'alintanaqa', 1, 0, 'alintanaqa', 'events'),
(3, 'Azzura Beach Resort and Hotel', 'Barangay Bolong, Zamboanga City, Philippines', 2.77, 'br_pic/2023-11-Azzura_Beach_Resort_and_Hotel-240386735_423341372534953_30121464615930780_fqtbpTV.jpg', 'azzurabeachresort', 1, 1, 'azzurabeachresort', 'rooms, villa, cottage, recreation, shopping'),
(4, 'Mampang Natural Whitesand BEACH', 'Del Pilar Village,Estrada compound Masepla,Mampang, Zamboanga City, Philippines', 4.25, 'br_pic/2023-02-Mampang_Natural_Whitesand_BEACH-mampang-wypcZYQ1fs.jpg', 'HugotBeachHouse', 1, 0, 'HugotBeachHouse', 'pools, villa, cottage, attractions, recreation, shopping'),
(5, 'Pink Sand Beach', 'Sta Cruz Island, Zamboanga City, Philippines', 4.36, 'br_pic/2023-30-Pink_Sand_Beach-309609401_429763875923421_2069246932611994858_n-u4kAgrCwez.jpg', 'PinkSandBeachStaCruzIsland', 1, 0, 'PinkSandBeachStaCruzIsland', 'rooms, recreation, shopping'),
(6, 'Pitas Island', 'Bolong, 7000 Zamboanga City, Philippines, Bolong, Philippines', 3.24, 'br_pic/2023-21-Pitas_Island-322698920_685971096387431_7994070547141349944_n-G4je6Rcsmb.jpg', 'pitasisland', 1, 0, 'pitasisland', 'cottage, recreation'),
(7, 'Puerto Villa Beach Resort', 'Patalon, Zamboanga City, Philippines, 7000', 4.08, 'br_pic/2023-02-Puerto_Villa_Beach_Resort-puerto-7odCQaRKUb.jpg', 'PuertoVillaBeachResortOfficial', 1, 1, 'PuertoVillaBeachResortOfficial', 'pools, rooms, villa, cottage, recreation, shopping'),
(8, 'SJ White Sand Island Cottages and Sand Bar Beach', 'SJ White Sand Island Cottages and Sand Bar Beach, Arena Blanco ZC, Zamboanga City, Philippines', 4.53, 'br_pic/2023-02-SJ_White_Sand_Island_Cottages_and_Sand_Bar_Beach-sj-rON5rU3QRr.jpg', 'Shariffjane', 1, 1, 'Shariffjane', 'cottage, recreation'),
(9, 'The Beach House at West Coast Patalon', 'Sitio Malandi,Barangay Patalon., Zamboanga City, Philippines', 3.05, 'br_pic/2023-01-The_Beach_House_at_West_Coast_Patalon-beachhouse-HDy0GsLSXS.jpg', 'thebeachhouseatwestcoastpatalon', 1, 1, 'thebeachhouseatwestcoastpatalon', 'pools, recreation'),
(10, 'Vista Del Mar Resort and Recreation Center', 'Labuan-Limpapa National Road, Zamboanga City, Phil...', 3.52, 'br_pic/2023-26-Vista_Del_Mar_Resort_and_Recreation_Center-327260747_886872255685741_2085_ZVUVmdb.jpg', 'vistadelmarresortzamboanga', 1, 1, 'vistadelmarresortzamboanga', 'rooms, cottage, recreation, food'),
(11, '3mjd Hillsite Resort', 'La Paz, Zamboanga City, Philippines', 4.02, 'br_pic/2023-01-3mjd_Hillsite_Resort-3mjd-zwJYpqRKV0.jpg', '3mjdhillsiteresort', 0, 1, '3mjdhillsiteresort', 'cottage, attractions'),
(12, 'Garden Orchid Hotel', 'Gov. Camins Ave., Zamboanga City, Philippines', 4.03, 'br_pic/2023-00-Garden_Orchid_Hotel-garden-RwmMUJEBVv.jpg', 'gardenorchidhotels', 0, 1, 'gardenorchidhotels', 'rooms, dining, food'),
(13, 'LM Metro Hotel', 'Don Toribio St, Tetuan, Zamboanga City, Philippines', 4.26, 'br_pic/2023-59-LM_Metro_Hotel-LM-YX9ts4hpdX.jpg', 'OfficialLMMetroHotel', 0, 1, 'OfficialLMMetroHotel', 'pools, cottage, rooms, recreation, dining, food'),
(14, 'Antulang Beach Resort', 'Siit, Siaton 6219 Siaton, Philippines', 4.18, 'br_pic/2024-12-Antulang_Beach_Resort-antulang-87zWjCjswU.png', 'antulangbeach', 1, 1, 'antulangbeach', 'pools, cottage, recreation, food'),
(15, 'Bawbawon Beach Resort', 'Plaridel, 7209 Misamis Occidental', 4.58, 'br_pic/image.jpg', 'BawbawonBeachResort', 1, 1, 'BawbawonBeachResort', 'villa, cottage, recreation, dining, food'),
(16, 'Dakak Park & Beach Resort', 'Barangay, Dapitan City, 7101 Zamboanga del Norte', 3.95, 'br_pic/image.jpg', 'DakakParkandBeachResort', 1, 1, 'DakakParkandBeachResort', 'pools, recreation, food'),
(17, 'Royal Farm Resort', 'Dipolog - Polanco - Oroquieta Rd, Dipolog City, Zamboanga del Norte', 3.63, 'br_pic/image.jpg', 'royalfarmresort', 0, 1, 'royalfarmresort', 'pools, recreation'),
(18, 'Lagag Spring Mountain Resort', 'Sindangan, Zamboanga del Norte', 5.00, 'br_pic/image.jpg', 'LAGAGSpringMountainResort', 0, 1, 'LAGAGSpringMountainResort', ''),
(19, 'Balucan Beach Resort', 'Unnamed Road, Gutalac, Zamboanga del Norte', 2.43, 'br_pic/image.jpg', 'balucanbeachresort', 1, 1, 'balucanbeachresort', 'rooms'),
(20, 'Hunasan Beach Resort', 'Labason - Liloy Rd, Labason, Zamboanga del Norte', 3.92, 'br_pic/image.jpg', 'hunasanresort1224', 1, 1, 'hunasanresort1224', 'cottage, food'),
(21, 'SOLAJ Beach Resort', 'Labason - Liloy Rd, Liloy, Zamboanga del Norte', 4.21, 'br_pic/image.jpg', 'solaj.resort', 1, 1, 'solaj.resort', 'cottage, recreation, food, dining'),
(22, 'Plus Beach Resort', 'Timan Beach, Liloy, 7115 Zamboanga del Norte', 4.19, 'br_pic/image.jpg', 'plusbeachresort', 1, 1, 'plusbeachresort', 'villa, rooms, events, attractions, shopping'),
(23, 'KyRO Mountain View Resort', 'Sindangan, Zamboanga del Norte', 3.94, 'br_pic/image.jpg', 'caluaninfinitypool', 0, 1, 'caluaninfinitypool', 'pools, cottage, events, recreation'),
(24, 'Maligro Ocean View Resort', 'Katipunan, Zamboanga del Norte', 4.53, 'br_pic/image.jpg', 'maligroresort', 0, 1, 'maligroresort', 'rooms, recreation'),
(25, 'Barcelona Springs Farm', 'Dapitan City, Zamboanga del Norte', 4.24, 'br_pic/image.jpg', 'BarcelonaSpringFarm', 0, 1, 'BarcelonaSpringFarm', 'pools, recreation, food'),
(26, 'Casa ElCora Highland Resort', 'Casa ElCora Highland Resort, San Pedro, Polanco, 7106 Zamboanga del Norte', 4.02, 'br_pic/image.jpg', 'casaelcorahighlandresort', 0, 1, 'casaelcorahighlandresort', 'cottage, recreation'),
(27, 'Villa Pablea Mountain Resort', 'Rizal, Zamboanga del Norte', 4.40, 'br_pic/image.jpg', 'villapableamountainresort', 0, 1, 'villapableamountainresort', 'villa, recreation, shopping, food'),
(28, 'Calumba Beach Resort', 'Unnamed Road, Labason, Zamboanga del Norte', 4.54, 'br_pic/image.jpg', 'calumbabeachresort', 1, 1, 'calumbabeachresort', ''),
(29, 'Bazak Resort', 'Titay, Zamboanga del Norte', 0.00, 'br_pic/image.jpg', 'bazakfarmresort.ph', 0, 1, 'bazakfarmresort.ph', 'none'),
(30, 'Gratum Beach Resort', 'Dapitan City, Zamboanga del Norte', 4.35, 'br_pic/image.jpg', 'GratumBeachResort', 1, 1, 'GratumBeachResort', 'rooms, villa, camping, recreation, dining'),
(31, 'Bethesda Beach', 'Talinga, Leon B. Postigo, Zamboanga del Norte', 4.14, 'br_pic/image.jpg', 'bethesdapooltibanga', 1, 1, 'bethesdapooltibanga', 'pools, cottage, recreation, shopping'),
(32, 'Tubbud Floating Cottage', 'Sittio Tubbud Tigbucay, Tungawan, 7018 Zamboanga Sibugay', 4.45, 'br_pic/image.jpg', 'TubbudFloatingCottage', 1, 1, 'TubbudFloatingCottage', 'pools, cottage, recreation'),
(33, 'Gee Farm Resort', 'Ipil, Zamboanga Sibugay', 4.47, 'br_pic/image.jpg', 'Geefarmresort', 0, 1, 'Geefarmresort', 'events'),
(34, 'Lumbia Garden Resort', 'Ipil, Zamboanga Sibugay', 4.28, 'br_pic/image.jpg', 'lumbiahillgardenresort', 0, 1, 'lumbiahillgardenresort', 'villa, cottage, rooms, recreation, shopping'),
(35, 'Garbemco Hotspring Resort', 'Kabasalan, Zamboanga Sibugay', 3.07, 'br_pic/image.jpg', 'garbemcoswimmingpool', 0, 1, 'garbemcoswimmingpool', ''),
(36, 'Brent\'s Garden and Resorts', 'Pitogo, Zamboanga del Sur', 4.38, 'br_pic/image.jpg', 'brentsgardenresorts', 0, 1, 'brentsgardenresorts', ''),
(37, 'Benuel\'s Beach Resort', 'Tobo-tobo Limbayan, Pitogo, 7033 Zamboanga del Sur', 4.18, 'br_pic/image.jpg', 'BenuelsBeach', 1, 1, 'BenuelsBeach', 'attractions, recreation'),
(38, 'Talizay Beach Resort', 'Tabina, Zamboanga del Sur', 4.51, 'br_pic/image.jpg', 'TalizayBeachResortTabina', 1, 1, 'TalizayBeachResortTabina', 'food'),
(39, 'La Piscinas Resort', 'Purok Sikatuna Zamboanga del Sur PH, Dumalinao, 7015', 4.28, 'br_pic/image.jpg', 'LaPiscinasResort', 0, 1, 'LaPiscinasResort', 'pools, cottage, recreation'),
(40, 'Jehoven’s Resort', 'Pagadian City, Zamboanga del Sur', 4.20, 'br_pic/image.jpg', 'jehovengardenresortofc', 0, 1, 'jehovengardenresortofc', 'rooms, recreation'),
(41, 'Donel\'s Beach Resort', 'Unnamed Road, Tukuran, Zamboanga del Sur', 4.20, 'br_pic/image.jpg', 'DonelBeachResort', 1, 1, 'DonelBeachResort', 'tent, cottage, events, recreation'),
(42, 'Eriberta Spring Resort', 'Tuboran, Mahayag, Zamboanga del Sur 7026, Mahayag, Zamboanga del Sur', 3.65, 'br_pic/image.jpg', 'EribertaSpringsOfficial', 0, 1, 'EribertaSpringsOfficial', 'pools, cottage'),
(43, 'Tambulig Mountain Spring Resort', 'Tambulig, Zamboanga del Sur', 4.21, 'br_pic/image.jpg', 'TambuligMountainSpringResort', 0, 1, 'TambuligMountainSpringResort', 'pools, cottage, recreation'),
(44, 'Pahali Resort', 'Malamawi, Isabela City, Basilan', 2.85, 'br_pic/image.jpg', 'PahaliResortBasilan', 1, 1, 'PahaliResortBasilan', 'villa, cottage, shopping'),
(45, 'Kaylee’s Palm Resort', 'Alegria Falls Street, Pagadian City, 7016 Zamboanga del Sur', 4.44, 'br_pic/image.jpg', 'kayleespalmresort', 0, 1, 'kayleespalmresort', 'villa, recreation'),
(46, 'Paloma\'s BEACH Resort', 'Tukuran 7016 Pagadian City, Philippines', 4.28, 'br_pic/image.jpg', 'palomasbeachresort', 1, 1, 'palomasbeachresort', 'pools, villa, cottage, recreation, festivals'),
(47, 'Don Nathaniel\'s Beach Resort', 'Tambunan, Tabina, 7034 Zamboanga del Sur', 4.26, 'br_pic/image.jpg', 'DonNathanielsPH', 1, 1, 'DonNathanielsPH', 'recreation'),
(48, 'Muni Muni Beach Resort - Samal Island', 'Brgy. Aundanao 8119 Samal, Philippines', 4.37, 'br_pic/image.jpg', 'munimuniresort', 1, 1, 'munimuniresort', 'cottage, recreation'),
(49, 'Woodland Resort', 'Boalan, Zamboanga City', 3.50, 'br_pic/image.jpg', 'woodlandresort', 0, 1, 'woodlandresort', 'pools, cottage, recreation, food'),
(50, 'Margareeta\'s Family Resort', 'Cabaluay, Zamboanga City, Philippines', 3.22, 'br_pic/image.jpg', 'margareetasfamilyresort', 0, 1, 'margareetasfamilyresort', 'pools, rooms, cottage, recreation'),
(51, 'Monte Verde Resort', 'BARANGAY GUISAO, Zamboanga City, Philippines', 4.19, 'br_pic/image.jpg', 'monteverderesort', 0, 1, 'monteverderesort', 'pools, cottage, rooms, recreation, shopping');

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
(36, 'Can view resort', 9, 'view_resort'),
(37, 'Can add place', 10, 'add_place'),
(38, 'Can change place', 10, 'change_place'),
(39, 'Can delete place', 10, 'delete_place'),
(40, 'Can view place', 10, 'view_place');

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
(1, 'pbkdf2_sha256$600000$oD7GdJrH6nophyQhZspLje$g4D4ksDywOZFVzGw1XV1ehq8EKNRZdpCrg/9HnOnlS4=', '2024-02-02 18:24:01.173128', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2023-11-16 11:48:25.730313'),
(2, 'pbkdf2_sha256$600000$BxgYmSz3sAT9E6bOvFXNDd$irpcEmY/2dCE3OzZFiIHpoLkcxjLLBjjQavzScmrrjY=', '2023-11-23 03:54:56.673709', 1, 'admin123', '', '', 'admin123@yahoo.com', 1, 1, '2023-11-23 03:54:42.657883');

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
(1, '2023-11-16 12:15:34.125788', '1', 'rere', 1, '[{\"added\": {}}]', 10, 1),
(2, '2023-11-16 12:15:52.652909', '1', 'rere', 3, '', 10, 1),
(3, '2023-11-16 16:51:22.451094', '13', 'LM Metro Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(4, '2023-11-16 16:51:36.464322', '12', 'Garden Orchid Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(5, '2023-11-16 16:51:57.772677', '11', '3mjd Hillsite Resort', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(6, '2023-11-16 16:52:40.227271', '9', 'The Beach House at West Coast Patalon', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(7, '2023-11-16 16:52:59.231488', '8', 'SJ White Sand Island Cottages and Sand Bar Beach', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(8, '2023-11-16 16:53:15.681133', '4', 'Mampang Natural Whitesand BEACH', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(9, '2023-11-16 16:54:38.162369', '13', 'LM Metro Hotel', 2, '[{\"changed\": {\"fields\": [\"Rating\", \"Keywords\"]}}]', 10, 1),
(10, '2023-11-17 06:26:15.382897', '7', 'Vista Del Mar Resort and Recreation Center', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(11, '2023-11-17 06:26:36.231606', '9', 'The Beach House at West Coast Patalon', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(12, '2023-11-17 06:26:54.833461', '11', '3mjd Hillsite Resort', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(13, '2023-11-17 06:27:16.055917', '12', 'Garden Orchid Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(14, '2023-11-17 06:27:41.197307', '13', 'LM Metro Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(15, '2023-11-17 06:27:54.603823', '8', 'SJ White Sand Island Cottages and Sand Bar Beach', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(16, '2023-11-17 06:28:10.365661', '4', 'Mampang Natural Whitesand BEACH', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(17, '2023-11-22 17:20:13.070098', '4', 'Mampang Natural Whitesand BEACH', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(18, '2023-11-22 17:20:34.191949', '7', 'Vista Del Mar Resort and Recreation Center', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(19, '2023-11-22 17:21:05.463098', '8', 'SJ White Sand Island Cottages and Sand Bar Beach', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(20, '2023-11-22 17:21:26.301471', '9', 'The Beach House at West Coast Patalon', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(21, '2023-11-22 17:22:35.989289', '11', '3mjd Hillsite Resort', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(22, '2023-11-22 17:23:49.759379', '7', 'Puerto Villa Beach Resort', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Location\"]}}]', 10, 1),
(23, '2023-11-22 17:45:37.593183', '12', 'Garden Orchid Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(24, '2023-11-22 17:45:56.760997', '13', 'LM Metro Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 1),
(25, '2023-11-23 03:59:38.618259', '13', 'LM Metro Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 2),
(26, '2023-11-23 04:00:06.240192', '12', 'Garden Orchid Hotel', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 2),
(27, '2023-11-23 04:01:15.423682', '11', '3mjd Hillsite Resort', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 2),
(28, '2023-11-23 04:01:42.497019', '9', 'The Beach House at West Coast Patalon', 2, '[{\"changed\": {\"fields\": [\"Photo\", \"Is Resort\"]}}]', 10, 2),
(29, '2023-11-23 04:02:07.741936', '8', 'SJ White Sand Island Cottages and Sand Bar Beach', 2, '[{\"changed\": {\"fields\": [\"Photo\", \"Is Beach\", \"Is Resort\"]}}]', 10, 2),
(30, '2023-11-23 04:02:32.180518', '7', 'Puerto Villa Beach Resort', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 2),
(31, '2023-11-23 04:02:49.282083', '4', 'Mampang Natural Whitesand BEACH', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 10, 2),
(32, '2024-02-02 19:12:19.005386', '14', 'Antulang Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(33, '2024-02-02 19:22:09.541636', '15', 'Bawbawon Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(34, '2024-02-02 19:22:37.900780', '16', 'Dakak Park & Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(35, '2024-02-02 19:23:29.518680', '17', 'Royal Farm Resort', 1, '[{\"added\": {}}]', 10, 1),
(36, '2024-02-02 19:24:12.272374', '18', 'Lagag Spring Mountain Resort', 1, '[{\"added\": {}}]', 10, 1),
(37, '2024-02-02 19:25:13.475448', '19', 'Balucan Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(38, '2024-02-02 19:25:49.063830', '20', 'Hunasan Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(39, '2024-02-02 19:28:18.464396', '21', 'SOLAJ Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(40, '2024-02-02 19:32:32.426814', '22', 'Plus Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(41, '2024-02-02 19:33:43.499009', '23', 'KyRO Mountain View Resort', 1, '[{\"added\": {}}]', 10, 1),
(42, '2024-02-02 23:55:03.129967', '24', 'Maligro Ocean View Resort', 1, '[{\"added\": {}}]', 10, 1),
(43, '2024-02-02 23:56:12.274398', '25', 'Barcelona Springs Farm', 1, '[{\"added\": {}}]', 10, 1),
(44, '2024-02-02 23:56:48.855606', '26', 'Casa ElCora Highland Resort', 1, '[{\"added\": {}}]', 10, 1),
(45, '2024-02-02 23:58:09.079008', '27', 'Villa Pablea Mountain Resort', 1, '[{\"added\": {}}]', 10, 1),
(46, '2024-02-02 23:59:06.232834', '28', 'Calumba Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(47, '2024-02-03 00:01:01.020517', '29', 'Bazak Resort', 1, '[{\"added\": {}}]', 10, 1),
(48, '2024-02-03 00:01:43.669697', '30', 'Gratum Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(49, '2024-02-03 00:02:31.464055', '31', 'Bethesda Beach', 1, '[{\"added\": {}}]', 10, 1),
(50, '2024-02-03 00:11:25.050788', '32', 'Tubbud Floating Cottage', 1, '[{\"added\": {}}]', 10, 1),
(51, '2024-02-03 00:13:35.918048', '33', 'Gee Farm Resort', 1, '[{\"added\": {}}]', 10, 1),
(52, '2024-02-03 00:16:32.914648', '34', 'Lumbia Garden Resort', 1, '[{\"added\": {}}]', 10, 1),
(53, '2024-02-03 00:17:07.004303', '35', 'Garbemco Hotspring Resort', 1, '[{\"added\": {}}]', 10, 1),
(54, '2024-02-03 00:25:21.033205', '36', 'Brent\'s Garden and Resorts', 1, '[{\"added\": {}}]', 10, 1),
(55, '2024-02-03 00:29:24.241554', '37', 'Benuel\'s Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(56, '2024-02-03 01:17:46.096862', '38', 'Talizay Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(57, '2024-02-03 01:20:38.093264', '39', 'La Piscinas Resort', 1, '[{\"added\": {}}]', 10, 1),
(58, '2024-02-03 01:21:20.492979', '40', 'Jehoven’s Resort', 1, '[{\"added\": {}}]', 10, 1),
(59, '2024-02-03 01:22:51.113145', '41', 'Donel\'s Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(60, '2024-02-03 01:23:47.227907', '42', 'Eriberta Spring Resort', 1, '[{\"added\": {}}]', 10, 1),
(61, '2024-02-03 01:24:25.173243', '43', 'Tambulig Mountain Spring Resort', 1, '[{\"added\": {}}]', 10, 1),
(62, '2024-02-03 01:24:55.114962', '44', 'Pahali Resort', 1, '[{\"added\": {}}]', 10, 1),
(63, '2024-02-03 01:25:28.191529', '45', 'Kaylee’s Palm Resort', 1, '[{\"added\": {}}]', 10, 1),
(64, '2024-02-03 01:26:49.233657', '46', 'Paloma\'s BEACH Resort', 1, '[{\"added\": {}}]', 10, 1),
(65, '2024-02-03 01:29:07.728196', '47', 'Don Nathaniel\'s Beach Resort', 1, '[{\"added\": {}}]', 10, 1),
(66, '2024-02-03 01:31:03.871594', '48', 'Muni Muni Beach Resort - Samal Island', 1, '[{\"added\": {}}]', 10, 1),
(67, '2024-02-03 02:17:19.062560', '49', 'Woodland Resort', 1, '[{\"added\": {}}]', 10, 1),
(68, '2024-02-03 02:19:30.073057', '50', 'Margareeta\'s Family Resort', 1, '[{\"added\": {}}]', 10, 1),
(69, '2024-02-03 02:21:13.017955', '51', 'Monte Verde Resort', 1, '[{\"added\": {}}]', 10, 1);

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
(10, 'algo', 'place'),
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
(1, 'contenttypes', '0001_initial', '2023-11-16 11:45:03.334561'),
(2, 'auth', '0001_initial', '2023-11-16 11:45:03.907510'),
(3, 'admin', '0001_initial', '2023-11-16 11:45:04.048556'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-16 11:45:04.064127'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-16 11:45:04.076099'),
(6, 'algo', '0001_initial', '2023-11-16 11:45:04.131982'),
(7, 'algo', '0002_place', '2023-11-16 11:45:04.173724'),
(8, 'algo', '0003_alter_place_place_identifier', '2023-11-16 11:45:04.197968'),
(9, 'algo', '0004_alter_place_facebook_page_id_and_more', '2023-11-16 11:45:04.238471'),
(10, 'algo', '0005_place_keywords', '2023-11-16 11:45:04.280453'),
(11, 'contenttypes', '0002_remove_content_type_name', '2023-11-16 11:45:04.393726'),
(12, 'auth', '0002_alter_permission_name_max_length', '2023-11-16 11:45:04.458506'),
(13, 'auth', '0003_alter_user_email_max_length', '2023-11-16 11:45:04.491262'),
(14, 'auth', '0004_alter_user_username_opts', '2023-11-16 11:45:04.505407'),
(15, 'auth', '0005_alter_user_last_login_null', '2023-11-16 11:45:04.564581'),
(16, 'auth', '0006_require_contenttypes_0002', '2023-11-16 11:45:04.567735'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2023-11-16 11:45:04.581449'),
(18, 'auth', '0008_alter_user_username_max_length', '2023-11-16 11:45:04.608460'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2023-11-16 11:45:04.643420'),
(20, 'auth', '0010_alter_group_name_max_length', '2023-11-16 11:45:04.671488'),
(21, 'auth', '0011_update_proxy_permissions', '2023-11-16 11:45:04.685695'),
(22, 'auth', '0012_alter_user_first_name_max_length', '2023-11-16 11:45:04.715865'),
(23, 'sessions', '0001_initial', '2023-11-16 11:45:04.755875');

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
('03j15kwkxvhpp776zeu9fyj4kws94usq', '.eJxVjDsOwjAQBe_iGlnrmDVrSnrOYK0_iwPIkeKkQtwdIqWA9s3Me6nA61LD2sscxqzOyqjD7xY5PUrbQL5zu006TW2Zx6g3Re-06-uUy_Oyu38HlXv91sV7IC6CfkDvRBhFLNkBfAaGRAgQkZI7HRMwxUjOgqARFEORSlLvD-A8N-Q:1r3asd:_mGEz8tjb0i07omO513uslA4YuFBo_cuLEwXxu_e4yw', '2023-11-30 11:49:55.232904'),
('0hr9610lxwpo6ucmr9s3vj9rkj2lk7fj', '.eJxVjDsOwjAQBe_iGlnrmDVrSnrOYK0_iwPIkeKkQtwdIqWA9s3Me6nA61LD2sscxqzOyqjD7xY5PUrbQL5zu006TW2Zx6g3Re-06-uUy_Oyu38HlXv91sV7IC6CfkDvRBhFLNkBfAaGRAgQkZI7HRMwxUjOgqARFEORSlLvD-A8N-Q:1rVyCn:Pu_WOytE3Nm7tP8HpM5E6aLC6CzmAsWVpeRw9mdZHPI', '2024-02-16 18:24:01.180306'),
('6mifbkzvq3yu5cvi3inhn5t4r1mwogij', '.eJxVjDsOwjAQBe_iGlnrmDVrSnrOYK0_iwPIkeKkQtwdIqWA9s3Me6nA61LD2sscxqzOyqjD7xY5PUrbQL5zu006TW2Zx6g3Re-06-uUy_Oyu38HlXv91sV7IC6CfkDvRBhFLNkBfAaGRAgQkZI7HRMwxUjOgqARFEORSlLvD-A8N-Q:1rVyBI:Q7lqlstK1JuqaOpgWwTZZdsxVnw1hLZQ5hnWQtPJDy4', '2024-02-16 18:22:28.084543'),
('j9mrr6dgt3i2b5us6u90cufn1jfzxndg', '.eJxVjMsOwiAQRf-FtSEDlkdduvcbyAwDUjWQlHZl_HdD0oVu7znnvkXAfSth72kNC4uL0OL0uxHGZ6oD8APrvcnY6rYuJIciD9rlrXF6XQ_376BgL6POZ9DKOAfEmBn9FBlsBmCvos3EhGAQcDYZwdpI2syTZ8U2O6tRi88X_-s4dw:1r60no:A34-wjZ5jV0YUpA8SJOV8KFpLgWhyBGXYfhX3e5tzcc', '2023-12-07 03:54:56.680088');

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
-- Indexes for table `algo_place`
--
ALTER TABLE `algo_place`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place_identifier` (`place_identifier`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `algo_beachandresort`
--
ALTER TABLE `algo_beachandresort`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `algo_place`
--
ALTER TABLE `algo_place`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `algo_resort`
--
ALTER TABLE `algo_resort`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
