-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 12:23 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_sampradaya_old`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_recorder`
--

CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT 0,
  `entry_zone_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `myid` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `adminType` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`myid`, `user_name`, `first_name`, `last_name`, `email`, `password`, `isActive`, `address`, `city`, `state`, `zip`, `country`, `phone`, `image`, `adminType`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'Admin', '', 'demo@ecommerce.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '0312 6545 874', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'z0D6diEg9S0cKXGc9fP8xDD1wbSp1sZkjahwSePevqjamIdKtGm8KR5rtZXW', '0000-00-00 00:00:00', '2017-12-18 15:02:50'),
(8, 'Admin', 'Admin', '', 'demo@android.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', NULL, NULL),
(9, 'admin2', 'Admin', '', 'demo@demo.com', '$2y$10$lDQP7tByP4asmGFvSB1U2OY73PctvYXxjwmam95E/p4jXtbW6Qaoq', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, '0bTNJEecJNucszwE4pmAdOMSs8BADnPhjPA4FcUVhnnzefk70mLZqL414xgX', NULL, NULL),
(10, 'ukart', 'Universal', 'Kart', 'ukart@gmail.com', '$2y$10$TKJBNrT7bkFqz49XazJL7.mTa49DI9CeCcZipjuFer1h.OeZWsaHC', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_types`
--

CREATE TABLE `admin_types` (
  `admin_type_id` int(100) NOT NULL,
  `admin_type_name` varchar(255) NOT NULL,
  `created_at` int(30) DEFAULT NULL,
  `updated_at` int(30) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_types`
--

INSERT INTO `admin_types` (`admin_type_id`, `admin_type_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Sub Admin', 1534777027, 1542637734, 1),
(3, 'Data Entry', 1538390209, NULL, 1),
(5, 'Meharzada', 1542965906, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(100) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT 0,
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_notification` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_email` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_notification` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_email` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_notification` tinyint(1) NOT NULL DEFAULT 0,
  `news_email` tinyint(1) NOT NULL DEFAULT 0,
  `news_notification` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_email` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_notification` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(100) NOT NULL,
  `nonce` text NOT NULL,
  `url` varchar(64) NOT NULL,
  `device_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_calls_list`
--

INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1, '1542703036092', 'getallproducts', 'device id of the app', '2018-11-20 02:07:17'),
(2, '1542703036087', 'getbanners', 'device id of the app', '2018-11-20 02:07:17'),
(3, '1542703036093', 'getallproducts', 'device id of the app', '2018-11-20 02:07:17'),
(4, '1542703036094', 'getallproducts', 'device id of the app', '2018-11-20 02:07:17'),
(5, '1542703036095', 'allcategories', 'device id of the app', '2018-11-20 02:07:17'),
(6, '1542703036296', 'sitesetting', 'device id of the app', '2018-11-20 02:07:17'),
(7, '1542703036096', 'getallpages', 'device id of the app', '2018-11-20 02:07:17'),
(8, '1542703038099', 'getallproducts', 'device id of the app', '2018-11-20 02:07:18'),
(9, '1542703068528', 'getbanners', 'device id of the app', '2018-11-20 02:07:49'),
(10, '1542703068531', 'getallproducts', 'device id of the app', '2018-11-20 02:07:49'),
(11, '1542703068535', 'getallproducts', 'device id of the app', '2018-11-20 02:07:49'),
(12, '1542703068534', 'getallproducts', 'device id of the app', '2018-11-20 02:07:49'),
(13, '1542703068537', 'allcategories', 'device id of the app', '2018-11-20 02:07:50'),
(14, '1542703068536', 'getallproducts', 'device id of the app', '2018-11-20 02:07:50'),
(15, '1542703068683', 'sitesetting', 'device id of the app', '2018-11-20 02:07:50'),
(16, '1542703068540', 'getallpages', 'device id of the app', '2018-11-20 02:07:50'),
(17, '1542703070604', 'getallproducts', 'device id of the app', '2018-11-20 02:07:50'),
(18, '1542703130429', 'getbanners', 'device id of the app', '2018-11-20 02:08:51'),
(19, '1542703130433', 'getallproducts', 'device id of the app', '2018-11-20 02:08:51'),
(20, '1542703130434', 'getallproducts', 'device id of the app', '2018-11-20 02:08:51'),
(21, '1542703130436', 'getallproducts', 'device id of the app', '2018-11-20 02:08:51'),
(22, '1542703130437', 'allcategories', 'device id of the app', '2018-11-20 02:08:52'),
(23, '1542703130438', 'getallpages', 'device id of the app', '2018-11-20 02:08:52'),
(24, '1542703130661', 'sitesetting', 'device id of the app', '2018-11-20 02:08:52'),
(25, '1542703132538', 'getallproducts', 'device id of the app', '2018-11-20 02:08:52'),
(26, '1542703275799', 'getbanners', 'device id of the app', '2018-11-20 02:11:17'),
(27, '1542703275803', 'getallproducts', 'device id of the app', '2018-11-20 02:11:17'),
(28, '1542703275805', 'getallproducts', 'device id of the app', '2018-11-20 02:11:17'),
(29, '1542703275804', 'getallproducts', 'device id of the app', '2018-11-20 02:11:17'),
(30, '1542703275807', 'getallproducts', 'device id of the app', '2018-11-20 02:11:17'),
(31, '1542703275808', 'allcategories', 'device id of the app', '2018-11-20 02:11:17'),
(32, '1542703275809', 'getallpages', 'device id of the app', '2018-11-20 02:11:17'),
(33, '1542703276053', 'sitesetting', 'device id of the app', '2018-11-20 02:11:17'),
(34, '1542703277848', 'getallproducts', 'device id of the app', '2018-11-20 02:11:18'),
(35, '1542704088084', 'getallproducts', 'device id of the app', '2018-11-20 02:24:49'),
(36, '1542704088080', 'getbanners', 'device id of the app', '2018-11-20 02:24:49'),
(37, '1542704088087', 'getallproducts', 'device id of the app', '2018-11-20 02:24:49'),
(38, '1542704088085', 'getallproducts', 'device id of the app', '2018-11-20 02:24:49'),
(39, '1542704088086', 'getallproducts', 'device id of the app', '2018-11-20 02:24:49'),
(40, '1542704088089', 'getallpages', 'device id of the app', '2018-11-20 02:24:49'),
(41, '1542704088087', 'allcategories', 'device id of the app', '2018-11-20 02:24:49'),
(42, '1542704088196', 'sitesetting', 'device id of the app', '2018-11-20 02:24:49'),
(43, '1542704089817', 'getallproducts', 'device id of the app', '2018-11-20 02:24:50'),
(44, '1542704094492', 'getallproducts', 'device id of the app', '2018-11-20 02:24:55'),
(45, '1542704107718', 'getallproducts', 'device id of the app', '2018-11-20 02:25:08'),
(46, '1542704111722', 'getallproducts', 'device id of the app', '2018-11-20 02:25:11'),
(47, '1542704128010', 'getallproducts', 'device id of the app', '2018-11-20 02:25:28'),
(48, '1542704137536', 'getallproducts', 'device id of the app', '2018-11-20 02:25:38'),
(49, '1542704140731', 'getallproducts', 'device id of the app', '2018-11-20 02:25:41'),
(50, '1542704165486', 'getallproducts', 'device id of the app', '2018-11-20 02:26:06'),
(51, '1542704165488', 'getfilters', 'device id of the app', '2018-11-20 02:26:06'),
(52, '1542704168030', 'getallproducts', 'device id of the app', '2018-11-20 02:26:08'),
(53, '1542704176007', 'getallproducts', 'device id of the app', '2018-11-20 02:26:19'),
(54, '1542704181006', 'getallproducts', 'device id of the app', '2018-11-20 02:26:21'),
(55, '1542704216442', 'getallproducts', 'device id of the app', '2018-11-20 02:26:57'),
(56, '1542704218715', 'getallproducts', 'device id of the app', '2018-11-20 02:26:58'),
(57, '1542704224785', 'getallproducts', 'device id of the app', '2018-11-20 02:27:05'),
(58, '1542704228163', 'getallproducts', 'device id of the app', '2018-11-20 02:27:08'),
(59, '1542704231723', 'getallproducts', 'device id of the app', '2018-11-20 02:27:12'),
(60, '1542704243875', 'getallproducts', 'device id of the app', '2018-11-20 02:27:24'),
(61, '1542708606031', 'getallproducts', 'device id of the app', '2018-11-20 03:40:08'),
(62, '1542708606034', 'getallproducts', 'device id of the app', '2018-11-20 03:40:08'),
(63, '1542708606025', 'getbanners', 'device id of the app', '2018-11-20 03:40:08'),
(64, '1542708606033', 'getallproducts', 'device id of the app', '2018-11-20 03:40:08'),
(65, '1542708606036', 'getallproducts', 'device id of the app', '2018-11-20 03:40:08'),
(66, '1542708606223', 'sitesetting', 'device id of the app', '2018-11-20 03:40:08'),
(67, '1542708606037', 'allcategories', 'device id of the app', '2018-11-20 03:40:08'),
(68, '1542708606038', 'getallpages', 'device id of the app', '2018-11-20 03:40:08'),
(69, '1542708608950', 'getallproducts', 'device id of the app', '2018-11-20 03:40:09'),
(70, '1542708625810', 'getallproducts', 'device id of the app', '2018-11-20 03:40:27'),
(71, '1542708625812', 'getallproducts', 'device id of the app', '2018-11-20 03:40:27'),
(72, '1542708625807', 'getbanners', 'device id of the app', '2018-11-20 03:40:27'),
(73, '1542708625813', 'getallproducts', 'device id of the app', '2018-11-20 03:40:27'),
(74, '1542708625814', 'allcategories', 'device id of the app', '2018-11-20 03:40:27'),
(75, '1542708625814', 'getallpages', 'device id of the app', '2018-11-20 03:40:27'),
(76, '1542708625958', 'sitesetting', 'device id of the app', '2018-11-20 03:40:27'),
(77, '1542708627933', 'getallproducts', 'device id of the app', '2018-11-20 03:40:28'),
(78, '1542708641026', 'processlogin', 'device id of the app', '2018-11-20 03:40:41'),
(79, '1542708650335', 'processlogin', 'device id of the app', '2018-11-20 03:40:51'),
(80, '1542708658006', 'processlogin', 'device id of the app', '2018-11-20 03:40:58'),
(81, '1542708667221', 'processlogin', 'device id of the app', '2018-11-20 03:41:07'),
(82, '1542708674612', 'processlogin', 'device id of the app', '2018-11-20 03:41:15'),
(83, '1542708910260', 'processregistration', 'device id of the app', '2018-11-20 03:45:11'),
(84, '1542708914869', 'getalladdress', 'device id of the app', '2018-11-20 03:45:15'),
(85, '1542708952330', 'addshippingaddress', 'device id of the app', '2018-11-20 03:45:53'),
(86, '1542708953787', 'getalladdress', 'device id of the app', '2018-11-20 03:45:54'),
(87, '1542708958714', 'getalladdress', 'device id of the app', '2018-11-20 03:45:58'),
(88, '1542708969253', 'getrate', 'device id of the app', '2018-11-20 03:46:10'),
(89, '1542709261928', 'getallproducts', 'device id of the app', '2018-11-20 03:51:03'),
(90, '1542709261924', 'getbanners', 'device id of the app', '2018-11-20 03:51:03'),
(91, '1542709261931', 'getallproducts', 'device id of the app', '2018-11-20 03:51:03'),
(92, '1542709261929', 'getallproducts', 'device id of the app', '2018-11-20 03:51:03'),
(93, '1542709261930', 'getallproducts', 'device id of the app', '2018-11-20 03:51:03'),
(94, '1542709261932', 'getallpages', 'device id of the app', '2018-11-20 03:51:03'),
(95, '1542709262145', 'sitesetting', 'device id of the app', '2018-11-20 03:51:03'),
(96, '1542709261931', 'allcategories', 'device id of the app', '2018-11-20 03:51:04'),
(97, '1542709264210', 'getallproducts', 'device id of the app', '2018-11-20 03:51:04'),
(98, '1542709286135', 'getalladdress', 'device id of the app', '2018-11-20 03:51:27'),
(99, '1542709300520', 'getrate', 'device id of the app', '2018-11-20 03:51:41'),
(100, '1542709413914', 'getallproducts', 'device id of the app', '2018-11-20 03:53:35'),
(101, '1542709413910', 'getbanners', 'device id of the app', '2018-11-20 03:53:35'),
(102, '1542709413918', 'getallproducts', 'device id of the app', '2018-11-20 03:53:35'),
(103, '1542709413916', 'getallproducts', 'device id of the app', '2018-11-20 03:53:35'),
(104, '1542709413917', 'getallproducts', 'device id of the app', '2018-11-20 03:53:35'),
(105, '1542709413920', 'getallpages', 'device id of the app', '2018-11-20 03:53:35'),
(106, '1542709414127', 'sitesetting', 'device id of the app', '2018-11-20 03:53:36'),
(107, '1542709413919', 'allcategories', 'device id of the app', '2018-11-20 03:53:36'),
(108, '1542709416228', 'getallproducts', 'device id of the app', '2018-11-20 03:53:36'),
(109, '1542710141463', 'getallproducts', 'device id of the app', '2018-11-20 04:05:43'),
(110, '1542710145224', 'getallproducts', 'device id of the app', '2018-11-20 04:05:45'),
(111, '1542710149470', 'getallproducts', 'device id of the app', '2018-11-20 04:05:51'),
(112, '1542710165502', 'getallproducts', 'device id of the app', '2018-11-20 04:06:08'),
(113, '1542710170701', 'getallproducts', 'device id of the app', '2018-11-20 04:06:10'),
(114, '1542710183196', 'getalladdress', 'device id of the app', '2018-11-20 04:06:24'),
(115, '1542710188700', 'getrate', 'device id of the app', '2018-11-20 04:06:29'),
(116, '1542710230522', 'getpaymentmethods', 'device id of the app', '2018-11-20 04:07:11'),
(117, '1542710245328', 'addtoorder', 'device id of the app', '2018-11-20 04:07:26'),
(118, '1542710257340', 'getallproducts', 'device id of the app', '2018-11-20 04:07:38'),
(119, '1542710260853', 'getallproducts', 'device id of the app', '2018-11-20 04:07:41'),
(120, '1542710283196', 'getallproducts', 'device id of the app', '2018-11-20 04:08:04'),
(121, '1542710283197', 'getfilters', 'device id of the app', '2018-11-20 04:08:04'),
(122, '1542710300852', 'getallproducts', 'device id of the app', '2018-11-20 04:08:21'),
(123, '1542710305369', 'getallproducts', 'device id of the app', '2018-11-20 04:08:25'),
(124, '1542710305370', 'getfilters', 'device id of the app', '2018-11-20 04:08:26'),
(125, '1542710307577', 'getallproducts', 'device id of the app', '2018-11-20 04:08:28'),
(126, '1542710326447', 'getallproducts', 'device id of the app', '2018-11-20 04:08:47'),
(127, '1542711056038', 'getallproducts', 'device id of the app', '2018-11-20 04:20:57'),
(128, '1542711056040', 'getfilters', 'device id of the app', '2018-11-20 04:20:57'),
(129, '1542711058435', 'getallproducts', 'device id of the app', '2018-11-20 04:20:58'),
(130, '1542711137056', 'getalladdress', 'device id of the app', '2018-11-20 04:22:19'),
(131, '1542711145162', 'getrate', 'device id of the app', '2018-11-20 04:22:25'),
(132, '1542711149226', 'getpaymentmethods', 'device id of the app', '2018-11-20 04:22:29'),
(133, '1542712576790', 'getbanners', 'device id of the app', '2018-11-20 04:46:18'),
(134, '1542712576794', 'getallproducts', 'device id of the app', '2018-11-20 04:46:18'),
(135, '1542712576795', 'getallproducts', 'device id of the app', '2018-11-20 04:46:18'),
(136, '1542712576796', 'getallproducts', 'device id of the app', '2018-11-20 04:46:18'),
(137, '1542712576797', 'allcategories', 'device id of the app', '2018-11-20 04:46:18'),
(138, '1542712576798', 'getallpages', 'device id of the app', '2018-11-20 04:46:18'),
(139, '1542712577063', 'sitesetting', 'device id of the app', '2018-11-20 04:46:18'),
(140, '1542712578922', 'getallproducts', 'device id of the app', '2018-11-20 04:46:19'),
(141, '1542712695450', 'getalladdress', 'device id of the app', '2018-11-20 04:48:16'),
(142, '1542712701643', 'getrate', 'device id of the app', '2018-11-20 04:48:22'),
(143, '1542712705643', 'getpaymentmethods', 'device id of the app', '2018-11-20 04:48:26'),
(144, '1542712744517', 'getallproducts', 'device id of the app', '2018-11-20 04:49:05'),
(145, '1542712744513', 'getbanners', 'device id of the app', '2018-11-20 04:49:05'),
(146, '1542712744519', 'getallproducts', 'device id of the app', '2018-11-20 04:49:05'),
(147, '1542712744518', 'getallproducts', 'device id of the app', '2018-11-20 04:49:06'),
(148, '1542712744521', 'allcategories', 'device id of the app', '2018-11-20 04:49:06'),
(149, '1542712744522', 'getallpages', 'device id of the app', '2018-11-20 04:49:06'),
(150, '1542712744744', 'sitesetting', 'device id of the app', '2018-11-20 04:49:06'),
(151, '1542712746718', 'getallproducts', 'device id of the app', '2018-11-20 04:49:06'),
(152, '1542712750938', 'getalladdress', 'device id of the app', '2018-11-20 04:49:11'),
(153, '1542712757554', 'getrate', 'device id of the app', '2018-11-20 04:49:18'),
(154, '1542712760890', 'getpaymentmethods', 'device id of the app', '2018-11-20 04:49:21'),
(155, '1542712960441', 'getallproducts', 'device id of the app', '2018-11-20 04:52:42'),
(156, '1542712960435', 'getbanners', 'device id of the app', '2018-11-20 04:52:42'),
(157, '1542712960446', 'getallpages', 'device id of the app', '2018-11-20 04:52:42'),
(158, '1542712960440', 'getallproducts', 'device id of the app', '2018-11-20 04:52:42'),
(159, '1542712960790', 'sitesetting', 'device id of the app', '2018-11-20 04:52:42'),
(160, '1542712960442', 'getallproducts', 'device id of the app', '2018-11-20 04:52:43'),
(161, '1542712960444', 'getallproducts', 'device id of the app', '2018-11-20 04:52:43'),
(162, '1542712960446', 'allcategories', 'device id of the app', '2018-11-20 04:52:43'),
(163, '1542713024471', 'getallproducts', 'device id of the app', '2018-11-20 04:53:45'),
(164, '1542713024470', 'getallproducts', 'device id of the app', '2018-11-20 04:53:45'),
(165, '1542713024465', 'getbanners', 'device id of the app', '2018-11-20 04:53:45'),
(166, '1542713024469', 'getallproducts', 'device id of the app', '2018-11-20 04:53:46'),
(167, '1542713024473', 'allcategories', 'device id of the app', '2018-11-20 04:53:46'),
(168, '1542713024474', 'getallpages', 'device id of the app', '2018-11-20 04:53:46'),
(169, '1542713024673', 'sitesetting', 'device id of the app', '2018-11-20 04:53:46'),
(170, '1542713026608', 'getallproducts', 'device id of the app', '2018-11-20 04:53:46'),
(171, '1542713318206', 'getalladdress', 'device id of the app', '2018-11-20 04:58:39'),
(172, '1542713333151', 'getrate', 'device id of the app', '2018-11-20 04:58:54'),
(173, '1542713336316', 'getpaymentmethods', 'device id of the app', '2018-11-20 04:58:56'),
(174, '1542713421131', 'getbanners', 'device id of the app', '2018-11-20 05:00:22'),
(175, '1542713421136', 'getallproducts', 'device id of the app', '2018-11-20 05:00:22'),
(176, '1542713421134', 'getallproducts', 'device id of the app', '2018-11-20 05:00:22'),
(177, '1542713421138', 'getallproducts', 'device id of the app', '2018-11-20 05:00:22'),
(178, '1542713421140', 'getallproducts', 'device id of the app', '2018-11-20 05:00:22'),
(179, '1542713421142', 'allcategories', 'device id of the app', '2018-11-20 05:00:22'),
(180, '1542713421144', 'getallpages', 'device id of the app', '2018-11-20 05:00:23'),
(181, '1542713421507', 'sitesetting', 'device id of the app', '2018-11-20 05:00:23'),
(182, '1542713423351', 'getallproducts', 'device id of the app', '2018-11-20 05:00:23'),
(183, '1542713430253', 'getalladdress', 'device id of the app', '2018-11-20 05:00:31'),
(184, '1542713456876', 'getrate', 'device id of the app', '2018-11-20 05:00:57'),
(185, '1542713460261', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:01:00'),
(186, '1542713895018', 'getallproducts', 'device id of the app', '2018-11-20 05:08:15'),
(187, '1542713895020', 'getallproducts', 'device id of the app', '2018-11-20 05:08:15'),
(188, '1542713895021', 'allcategories', 'device id of the app', '2018-11-20 05:08:15'),
(189, '1542713895023', 'getallpages', 'device id of the app', '2018-11-20 05:08:15'),
(190, '1542713895010', 'getbanners', 'device id of the app', '2018-11-20 05:08:15'),
(191, '1542713895795', 'sitesetting', 'device id of the app', '2018-11-20 05:08:16'),
(192, '1542713897266', 'getallproducts', 'device id of the app', '2018-11-20 05:08:16'),
(193, '1542713917448', 'processlogin', 'device id of the app', '2018-11-20 05:08:37'),
(194, '1542713918549', 'registerdevices', 'device id of the app', '2018-11-20 05:08:37'),
(195, '1542713930807', 'getalladdress', 'device id of the app', '2018-11-20 05:08:50'),
(196, '1542713937954', 'getrate', 'device id of the app', '2018-11-20 05:08:57'),
(197, '1542713940314', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:08:59'),
(198, '1542714078342', 'getallproducts', 'device id of the app', '2018-11-20 05:11:19'),
(199, '1542714078344', 'getallproducts', 'device id of the app', '2018-11-20 05:11:19'),
(200, '1542714078339', 'getbanners', 'device id of the app', '2018-11-20 05:11:19'),
(201, '1542714078344', 'allcategories', 'device id of the app', '2018-11-20 05:11:20'),
(202, '1542714078345', 'getallpages', 'device id of the app', '2018-11-20 05:11:20'),
(203, '1542714078436', 'sitesetting', 'device id of the app', '2018-11-20 05:11:20'),
(204, '1542714096784', 'getallproducts', 'device id of the app', '2018-11-20 05:11:37'),
(205, '1542714108346', 'processlogin', 'device id of the app', '2018-11-20 05:11:49'),
(206, '1542714110804', 'getalladdress', 'device id of the app', '2018-11-20 05:11:51'),
(207, '1542714115181', 'getrate', 'device id of the app', '2018-11-20 05:11:55'),
(208, '1542714121510', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:12:02'),
(209, '1542714197263', 'getbanners', 'device id of the app', '2018-11-20 05:13:18'),
(210, '1542714197275', 'getallproducts', 'device id of the app', '2018-11-20 05:13:18'),
(211, '1542714197272', 'getallproducts', 'device id of the app', '2018-11-20 05:13:18'),
(212, '1542714197276', 'getallproducts', 'device id of the app', '2018-11-20 05:13:19'),
(213, '1542714197691', 'sitesetting', 'device id of the app', '2018-11-20 05:13:19'),
(214, '1542714197277', 'getallproducts', 'device id of the app', '2018-11-20 05:13:19'),
(215, '1542714197282', 'getallpages', 'device id of the app', '2018-11-20 05:13:19'),
(216, '1542714197279', 'allcategories', 'device id of the app', '2018-11-20 05:13:19'),
(217, '1542714199592', 'getallproducts', 'device id of the app', '2018-11-20 05:13:19'),
(218, '1542714282330', 'getalladdress', 'device id of the app', '2018-11-20 05:14:43'),
(219, '1542714287899', 'getrate', 'device id of the app', '2018-11-20 05:14:48'),
(220, '1542714290683', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:14:51'),
(221, '1542714334890', 'getallproducts', 'device id of the app', '2018-11-20 05:15:36'),
(222, '1542714334893', 'getallproducts', 'device id of the app', '2018-11-20 05:15:36'),
(223, '1542714334886', 'getbanners', 'device id of the app', '2018-11-20 05:15:36'),
(224, '1542714334891', 'getallproducts', 'device id of the app', '2018-11-20 05:15:36'),
(225, '1542714334896', 'getallpages', 'device id of the app', '2018-11-20 05:15:36'),
(226, '1542714334895', 'allcategories', 'device id of the app', '2018-11-20 05:15:36'),
(227, '1542714335096', 'sitesetting', 'device id of the app', '2018-11-20 05:15:36'),
(228, '1542714337169', 'getallproducts', 'device id of the app', '2018-11-20 05:15:37'),
(229, '1542714342440', 'getalladdress', 'device id of the app', '2018-11-20 05:15:43'),
(230, '1542714348289', 'getrate', 'device id of the app', '2018-11-20 05:15:49'),
(231, '1542714351285', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:15:51'),
(232, '1542714395377', 'getbanners', 'device id of the app', '2018-11-20 05:16:36'),
(233, '1542714395386', 'getallproducts', 'device id of the app', '2018-11-20 05:16:36'),
(234, '1542714395382', 'getallproducts', 'device id of the app', '2018-11-20 05:16:36'),
(235, '1542714395384', 'getallproducts', 'device id of the app', '2018-11-20 05:16:37'),
(236, '1542714395389', 'allcategories', 'device id of the app', '2018-11-20 05:16:37'),
(237, '1542714395390', 'getallpages', 'device id of the app', '2018-11-20 05:16:37'),
(238, '1542714395637', 'sitesetting', 'device id of the app', '2018-11-20 05:16:37'),
(239, '1542714397596', 'getallproducts', 'device id of the app', '2018-11-20 05:16:37'),
(240, '1542714424344', 'getalladdress', 'device id of the app', '2018-11-20 05:17:05'),
(241, '1542714444439', 'getrate', 'device id of the app', '2018-11-20 05:17:25'),
(242, '1542714447304', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:17:28'),
(243, '1542715567503', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:36:11'),
(244, '1542716133582', 'allcategories', 'device id of the app', '2018-11-20 05:45:37'),
(245, '1542716133576', 'getallproducts', 'device id of the app', '2018-11-20 05:45:37'),
(246, '1542716133578', 'getallproducts', 'device id of the app', '2018-11-20 05:45:37'),
(247, '1542716133573', 'getbanners', 'device id of the app', '2018-11-20 05:45:39'),
(248, '1542716133579', 'getallproducts', 'device id of the app', '2018-11-20 05:45:39'),
(249, '1542716133581', 'getallproducts', 'device id of the app', '2018-11-20 05:45:39'),
(250, '1542716133583', 'getallpages', 'device id of the app', '2018-11-20 05:45:39'),
(251, '1542716133943', 'sitesetting', 'device id of the app', '2018-11-20 05:45:39'),
(252, '1542716140000', 'getallproducts', 'device id of the app', '2018-11-20 05:45:40'),
(253, '1542716152188', 'getalladdress', 'device id of the app', '2018-11-20 05:45:55'),
(254, '1542716161298', 'getrate', 'device id of the app', '2018-11-20 05:46:03'),
(255, '1542716166180', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:46:07'),
(256, '1542716246947', 'getbanners', 'device id of the app', '2018-11-20 05:47:28'),
(257, '1542716246953', 'getallproducts', 'device id of the app', '2018-11-20 05:47:28'),
(258, '1542716246952', 'getallproducts', 'device id of the app', '2018-11-20 05:47:28'),
(259, '1542716246955', 'getallproducts', 'device id of the app', '2018-11-20 05:47:28'),
(260, '1542716246956', 'allcategories', 'device id of the app', '2018-11-20 05:47:28'),
(261, '1542716246956', 'getallpages', 'device id of the app', '2018-11-20 05:47:28'),
(262, '1542716247096', 'sitesetting', 'device id of the app', '2018-11-20 05:47:28'),
(263, '1542716249068', 'getallproducts', 'device id of the app', '2018-11-20 05:47:29'),
(264, '1542716252952', 'getalladdress', 'device id of the app', '2018-11-20 05:47:33'),
(265, '1542716258575', 'getrate', 'device id of the app', '2018-11-20 05:47:39'),
(266, '1542716261911', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:47:42'),
(267, '1542716407186', 'getallproducts', 'device id of the app', '2018-11-20 05:50:08'),
(268, '1542716407180', 'getbanners', 'device id of the app', '2018-11-20 05:50:08'),
(269, '1542716407184', 'getallproducts', 'device id of the app', '2018-11-20 05:50:08'),
(270, '1542716407185', 'getallproducts', 'device id of the app', '2018-11-20 05:50:09'),
(271, '1542716407187', 'allcategories', 'device id of the app', '2018-11-20 05:50:09'),
(272, '1542716407384', 'sitesetting', 'device id of the app', '2018-11-20 05:50:09'),
(273, '1542716407188', 'getallpages', 'device id of the app', '2018-11-20 05:50:09'),
(274, '1542716409688', 'getallproducts', 'device id of the app', '2018-11-20 05:50:10'),
(275, '1542716427447', 'getalladdress', 'device id of the app', '2018-11-20 05:50:28'),
(276, '1542716432606', 'getrate', 'device id of the app', '2018-11-20 05:50:33'),
(277, '1542716435343', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:50:36'),
(278, '1542716557639', 'getallproducts', 'device id of the app', '2018-11-20 05:52:39'),
(279, '1542716557637', 'getbanners', 'device id of the app', '2018-11-20 05:52:39'),
(280, '1542716557641', 'getallproducts', 'device id of the app', '2018-11-20 05:52:39'),
(281, '1542716557858', 'sitesetting', 'device id of the app', '2018-11-20 05:52:41'),
(282, '1542716557644', 'getallpages', 'device id of the app', '2018-11-20 05:52:41'),
(283, '1542716557643', 'allcategories', 'device id of the app', '2018-11-20 05:52:41'),
(284, '1542716557642', 'getallproducts', 'device id of the app', '2018-11-20 05:52:41'),
(285, '1542716561470', 'getallproducts', 'device id of the app', '2018-11-20 05:52:41'),
(286, '1542716565861', 'getalladdress', 'device id of the app', '2018-11-20 05:52:47'),
(287, '1542716596705', 'getrate', 'device id of the app', '2018-11-20 05:53:19'),
(288, '1542716603197', 'getpaymentmethods', 'device id of the app', '2018-11-20 05:53:24'),
(289, '1542716647926', 'getbanners', 'device id of the app', '2018-11-20 05:54:10'),
(290, '1542716647930', 'getallproducts', 'device id of the app', '2018-11-20 05:54:10'),
(291, '1542716647933', 'allcategories', 'device id of the app', '2018-11-20 05:54:10'),
(292, '1542716647934', 'getallpages', 'device id of the app', '2018-11-20 05:54:10'),
(293, '1542716647933', 'getallproducts', 'device id of the app', '2018-11-20 05:54:10'),
(294, '1542716648136', 'sitesetting', 'device id of the app', '2018-11-20 05:54:10'),
(295, '1542716651147', 'getallproducts', 'device id of the app', '2018-11-20 05:54:11'),
(296, '1542716647931', 'getallproducts', 'device id of the app', '2018-11-20 05:54:13'),
(297, '1542717105095', 'getbanners', 'device id of the app', '2018-11-20 06:01:46'),
(298, '1542717105101', 'getallproducts', 'device id of the app', '2018-11-20 06:01:46'),
(299, '1542717105102', 'getallproducts', 'device id of the app', '2018-11-20 06:01:46'),
(300, '1542717105104', 'getallproducts', 'device id of the app', '2018-11-20 06:01:46'),
(301, '1542717105105', 'getallproducts', 'device id of the app', '2018-11-20 06:01:47'),
(302, '1542717105106', 'getallpages', 'device id of the app', '2018-11-20 06:01:47'),
(303, '1542717105106', 'allcategories', 'device id of the app', '2018-11-20 06:01:47'),
(304, '1542717105524', 'sitesetting', 'device id of the app', '2018-11-20 06:01:47'),
(305, '1542717107698', 'getallproducts', 'device id of the app', '2018-11-20 06:01:48'),
(306, '1542717174553', 'getallproducts', 'device id of the app', '2018-11-20 06:02:56'),
(307, '1542717174549', 'getbanners', 'device id of the app', '2018-11-20 06:02:56'),
(308, '1542717174556', 'getallproducts', 'device id of the app', '2018-11-20 06:02:56'),
(309, '1542717174557', 'getallproducts', 'device id of the app', '2018-11-20 06:02:56'),
(310, '1542717174555', 'getallproducts', 'device id of the app', '2018-11-20 06:02:56'),
(311, '1542717174558', 'allcategories', 'device id of the app', '2018-11-20 06:02:56'),
(312, '1542717174849', 'sitesetting', 'device id of the app', '2018-11-20 06:02:56'),
(313, '1542717174559', 'getallpages', 'device id of the app', '2018-11-20 06:02:56'),
(314, '1542717177021', 'getallproducts', 'device id of the app', '2018-11-20 06:02:57'),
(315, '1542717180267', 'getalladdress', 'device id of the app', '2018-11-20 06:03:00'),
(316, '1542717184236', 'getrate', 'device id of the app', '2018-11-20 06:03:04'),
(317, '1542717186713', 'getpaymentmethods', 'device id of the app', '2018-11-20 06:03:07'),
(318, '1542718517874', 'getallproducts', 'device id of the app', '2018-11-20 06:25:19'),
(319, '1542718517870', 'getbanners', 'device id of the app', '2018-11-20 06:25:19'),
(320, '1542718517873', 'getallproducts', 'device id of the app', '2018-11-20 06:25:19'),
(321, '1542718517875', 'getallproducts', 'device id of the app', '2018-11-20 06:25:19'),
(322, '1542718517876', 'getallproducts', 'device id of the app', '2018-11-20 06:25:20'),
(323, '1542718517877', 'allcategories', 'device id of the app', '2018-11-20 06:25:20'),
(324, '1542718517878', 'getallpages', 'device id of the app', '2018-11-20 06:25:20'),
(325, '1542718518073', 'sitesetting', 'device id of the app', '2018-11-20 06:25:20'),
(326, '1542718520879', 'getallproducts', 'device id of the app', '2018-11-20 06:25:21'),
(327, '1542718531076', 'getalladdress', 'device id of the app', '2018-11-20 06:25:32'),
(328, '1542718535789', 'getrate', 'device id of the app', '2018-11-20 06:25:36'),
(329, '1542718539099', 'getpaymentmethods', 'device id of the app', '2018-11-20 06:25:39'),
(330, '1542718614218', 'getbanners', 'device id of the app', '2018-11-20 06:26:55'),
(331, '1542718614224', 'getallproducts', 'device id of the app', '2018-11-20 06:26:55'),
(332, '1542718614227', 'getallproducts', 'device id of the app', '2018-11-20 06:26:55'),
(333, '1542718614222', 'getallproducts', 'device id of the app', '2018-11-20 06:26:55'),
(334, '1542718614229', 'getallpages', 'device id of the app', '2018-11-20 06:26:56'),
(335, '1542718614228', 'allcategories', 'device id of the app', '2018-11-20 06:26:56'),
(336, '1542718614492', 'sitesetting', 'device id of the app', '2018-11-20 06:26:56'),
(337, '1542718616488', 'getallproducts', 'device id of the app', '2018-11-20 06:26:56'),
(338, '1542719580381', 'getalladdress', 'device id of the app', '2018-11-19 18:43:01'),
(339, '1542719584909', 'getrate', 'device id of the app', '2018-11-19 18:43:05'),
(340, '1542719591167', 'getpaymentmethods', 'device id of the app', '2018-11-19 18:43:12'),
(341, '1542871785859', 'getallproducts', 'device id of the app', '2018-11-22 00:59:47'),
(342, '1542871785858', 'getallproducts', 'device id of the app', '2018-11-22 00:59:47'),
(343, '1542871785861', 'allcategories', 'device id of the app', '2018-11-22 00:59:47'),
(344, '1542871785854', 'getbanners', 'device id of the app', '2018-11-22 00:59:47'),
(345, '1542871785861', 'getallproducts', 'device id of the app', '2018-11-22 00:59:47'),
(346, '1542871786251', 'sitesetting', 'device id of the app', '2018-11-22 00:59:48'),
(347, '1542871785863', 'getallpages', 'device id of the app', '2018-11-22 00:59:48'),
(348, '1542871788392', 'getallproducts', 'device id of the app', '2018-11-22 00:59:48'),
(349, '1542871812400', 'processlogin', 'device id of the app', '2018-11-22 01:00:13'),
(350, '1542871816332', 'getalladdress', 'device id of the app', '2018-11-22 01:00:16'),
(351, '1542871826163', 'getrate', 'device id of the app', '2018-11-22 01:00:27'),
(352, '1542871829120', 'getpaymentmethods', 'device id of the app', '2018-11-22 01:00:29'),
(353, '1542871830003', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:00:30'),
(354, '1542871830004', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:00:31'),
(355, '1542872650759', 'getallproducts', 'device id of the app', '2018-11-22 01:14:12'),
(356, '1542872650755', 'getbanners', 'device id of the app', '2018-11-22 01:14:12'),
(357, '1542872650760', 'getallproducts', 'device id of the app', '2018-11-22 01:14:12'),
(358, '1542872650761', 'getallproducts', 'device id of the app', '2018-11-22 01:14:12'),
(359, '1542872650762', 'getallproducts', 'device id of the app', '2018-11-22 01:14:12'),
(360, '1542872650763', 'allcategories', 'device id of the app', '2018-11-22 01:14:12'),
(361, '1542872650765', 'getallpages', 'device id of the app', '2018-11-22 01:14:12'),
(362, '1542872651064', 'sitesetting', 'device id of the app', '2018-11-22 01:14:13'),
(363, '1542872653273', 'getallproducts', 'device id of the app', '2018-11-22 01:14:13'),
(364, '1542872656641', 'getalladdress', 'device id of the app', '2018-11-22 01:14:17'),
(365, '1542872666793', 'getrate', 'device id of the app', '2018-11-22 01:14:27'),
(366, '1542872670110', 'getpaymentmethods', 'device id of the app', '2018-11-22 01:14:31'),
(367, '1542872671987', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:14:32'),
(368, '1542872671988', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:14:34'),
(369, '1542872730447', 'getbanners', 'device id of the app', '2018-11-22 01:15:31'),
(370, '1542872730452', 'getallproducts', 'device id of the app', '2018-11-22 01:15:31'),
(371, '1542872730451', 'getallproducts', 'device id of the app', '2018-11-22 01:15:32'),
(372, '1542872730454', 'getallproducts', 'device id of the app', '2018-11-22 01:15:32'),
(373, '1542872730455', 'allcategories', 'device id of the app', '2018-11-22 01:15:32'),
(374, '1542872730456', 'getallpages', 'device id of the app', '2018-11-22 01:15:32'),
(375, '1542872730653', 'sitesetting', 'device id of the app', '2018-11-22 01:15:32'),
(376, '1542872732891', 'getallproducts', 'device id of the app', '2018-11-22 01:15:33'),
(377, '1542872736056', 'getalladdress', 'device id of the app', '2018-11-22 01:15:36'),
(378, '1542872742489', 'getrate', 'device id of the app', '2018-11-22 01:15:43'),
(379, '1542872746518', 'getpaymentmethods', 'device id of the app', '2018-11-22 01:15:47'),
(380, '1542872747408', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:15:49'),
(381, '1542872747409', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:15:50'),
(382, '1542872836742', 'getbanners', 'device id of the app', '2018-11-22 01:17:18'),
(383, '1542872836745', 'getallproducts', 'device id of the app', '2018-11-22 01:17:18'),
(384, '1542872836746', 'getallproducts', 'device id of the app', '2018-11-22 01:17:18'),
(385, '1542872836747', 'getallproducts', 'device id of the app', '2018-11-22 01:17:18'),
(386, '1542872836748', 'getallproducts', 'device id of the app', '2018-11-22 01:17:18'),
(387, '1542872836749', 'allcategories', 'device id of the app', '2018-11-22 01:17:18'),
(388, '1542872836752', 'getallpages', 'device id of the app', '2018-11-22 01:17:18'),
(389, '1542872836946', 'sitesetting', 'device id of the app', '2018-11-22 01:17:18'),
(390, '1542872839260', 'getallproducts', 'device id of the app', '2018-11-22 01:17:19'),
(391, '1542872843055', 'getalladdress', 'device id of the app', '2018-11-22 01:17:23'),
(392, '1542872854535', 'getrate', 'device id of the app', '2018-11-22 01:17:35'),
(393, '1542872857775', 'getpaymentmethods', 'device id of the app', '2018-11-22 01:17:38'),
(394, '1542872859759', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:17:40'),
(395, '1542872859760', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:17:41'),
(396, '1542873013298', 'getbanners', 'device id of the app', '2018-11-22 01:20:14'),
(397, '1542873013301', 'getallproducts', 'device id of the app', '2018-11-22 01:20:14'),
(398, '1542873013302', 'getallproducts', 'device id of the app', '2018-11-22 01:20:14'),
(399, '1542873013305', 'allcategories', 'device id of the app', '2018-11-22 01:20:15'),
(400, '1542873013303', 'getallproducts', 'device id of the app', '2018-11-22 01:20:15'),
(401, '1542873013305', 'getallpages', 'device id of the app', '2018-11-22 01:20:15'),
(402, '1542873013723', 'sitesetting', 'device id of the app', '2018-11-22 01:20:15'),
(403, '1542873015774', 'getallproducts', 'device id of the app', '2018-11-22 01:20:16'),
(404, '1542873316908', 'getbanners', 'device id of the app', '2018-11-22 01:25:18'),
(405, '1542873316913', 'getallproducts', 'device id of the app', '2018-11-22 01:25:18'),
(406, '1542873316911', 'getallproducts', 'device id of the app', '2018-11-22 01:25:18'),
(407, '1542873316915', 'getallproducts', 'device id of the app', '2018-11-22 01:25:18'),
(408, '1542873316915', 'allcategories', 'device id of the app', '2018-11-22 01:25:18'),
(409, '1542873316916', 'getallpages', 'device id of the app', '2018-11-22 01:25:19'),
(410, '1542873317135', 'sitesetting', 'device id of the app', '2018-11-22 01:25:19'),
(411, '1542873319497', 'getallproducts', 'device id of the app', '2018-11-22 01:25:19'),
(412, '1542873406538', 'getalladdress', 'device id of the app', '2018-11-22 01:26:47'),
(413, '1542873415686', 'getrate', 'device id of the app', '2018-11-22 01:26:56'),
(414, '1542873420057', 'getpaymentmethods', 'device id of the app', '2018-11-22 01:27:00'),
(415, '1542873420902', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:27:01'),
(416, '1542873804556', 'getbanners', 'device id of the app', '2018-11-22 01:33:26'),
(417, '1542873804562', 'getallproducts', 'device id of the app', '2018-11-22 01:33:26'),
(418, '1542873804559', 'getallproducts', 'device id of the app', '2018-11-22 01:33:26'),
(419, '1542873804561', 'getallproducts', 'device id of the app', '2018-11-22 01:33:26'),
(420, '1542873804563', 'allcategories', 'device id of the app', '2018-11-22 01:33:26'),
(421, '1542873804564', 'getallpages', 'device id of the app', '2018-11-22 01:33:26'),
(422, '1542873804662', 'sitesetting', 'device id of the app', '2018-11-22 01:33:26'),
(423, '1542873806970', 'getallproducts', 'device id of the app', '2018-11-22 01:33:27'),
(424, '1542873810905', 'getalladdress', 'device id of the app', '2018-11-22 01:33:31'),
(425, '1542873824361', 'getrate', 'device id of the app', '2018-11-22 01:33:45'),
(426, '1542873827477', 'getpaymentmethods', 'device id of the app', '2018-11-22 01:33:48'),
(427, '1542873830328', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:33:51'),
(428, '1542873830329', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:33:52'),
(429, '1542875084859', 'getbanners', 'device id of the app', '2018-11-22 01:54:44'),
(430, '1542875084871', 'getallproducts', 'device id of the app', '2018-11-22 01:54:44'),
(431, '1542875084866', 'getallproducts', 'device id of the app', '2018-11-22 01:54:44'),
(432, '1542875084870', 'getallproducts', 'device id of the app', '2018-11-22 01:54:44'),
(433, '1542875084873', 'allcategories', 'device id of the app', '2018-11-22 01:54:45'),
(434, '1542875084873', 'getallpages', 'device id of the app', '2018-11-22 01:54:45'),
(435, '1542875085588', 'sitesetting', 'device id of the app', '2018-11-22 01:54:45'),
(436, '1542875087320', 'getallproducts', 'device id of the app', '2018-11-22 01:54:46'),
(437, '1542875131300', 'processlogin', 'device id of the app', '2018-11-22 01:55:30'),
(438, '1542875132390', 'registerdevices', 'device id of the app', '2018-11-22 01:55:31'),
(439, '1542875133586', 'getalladdress', 'device id of the app', '2018-11-22 01:55:32'),
(440, '1542875141676', 'getrate', 'device id of the app', '2018-11-22 01:55:40'),
(441, '1542875144315', 'getpaymentmethods', 'device id of the app', '2018-11-22 01:55:43'),
(442, '1542875144795', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:55:43'),
(443, '1542875144797', 'generatebraintreetoken', 'device id of the app', '2018-11-22 01:55:45'),
(444, '1542875557294', 'getbanners', 'device id of the app', '2018-11-22 02:02:36'),
(445, '1542875557302', 'getallproducts', 'device id of the app', '2018-11-22 02:02:36'),
(446, '1542875557300', 'getallproducts', 'device id of the app', '2018-11-22 02:02:36'),
(447, '1542875557301', 'getallproducts', 'device id of the app', '2018-11-22 02:02:36'),
(448, '1542875557303', 'getallproducts', 'device id of the app', '2018-11-22 02:02:36'),
(449, '1542875557303', 'allcategories', 'device id of the app', '2018-11-22 02:02:37'),
(450, '1542875558665', 'sitesetting', 'device id of the app', '2018-11-22 02:02:37'),
(451, '1542875557305', 'getallpages', 'device id of the app', '2018-11-22 02:02:37'),
(452, '1542875559477', 'getallproducts', 'device id of the app', '2018-11-22 02:02:38'),
(453, '1542875781963', 'getalladdress', 'device id of the app', '2018-11-22 02:06:21'),
(454, '1542875790762', 'getrate', 'device id of the app', '2018-11-22 02:06:29'),
(455, '1542875794238', 'getpaymentmethods', 'device id of the app', '2018-11-22 02:06:33'),
(456, '1542875794738', 'generatebraintreetoken', 'device id of the app', '2018-11-22 02:06:33'),
(457, '1542875794739', 'generatebraintreetoken', 'device id of the app', '2018-11-22 02:06:34'),
(458, '1542876607177', 'getbanners', 'device id of the app', '2018-11-22 02:20:06'),
(459, '1542876607185', 'getallproducts', 'device id of the app', '2018-11-22 02:20:06'),
(460, '1542876607184', 'getallproducts', 'device id of the app', '2018-11-22 02:20:06'),
(461, '1542876607182', 'getallproducts', 'device id of the app', '2018-11-22 02:20:06'),
(462, '1542876607186', 'allcategories', 'device id of the app', '2018-11-22 02:20:07'),
(463, '1542876607187', 'getallpages', 'device id of the app', '2018-11-22 02:20:07'),
(464, '1542876608630', 'sitesetting', 'device id of the app', '2018-11-22 02:20:07'),
(465, '1542876609257', 'getallproducts', 'device id of the app', '2018-11-22 02:20:08'),
(466, '1542876627445', 'getalladdress', 'device id of the app', '2018-11-22 02:20:26'),
(467, '1542876634468', 'getrate', 'device id of the app', '2018-11-22 02:20:33'),
(468, '1542876636927', 'getpaymentmethods', 'device id of the app', '2018-11-22 02:20:35'),
(469, '1542876637396', 'generatebraintreetoken', 'device id of the app', '2018-11-22 02:20:36'),
(470, '1542876637399', 'generatebraintreetoken', 'device id of the app', '2018-11-22 02:20:37'),
(471, '1542876818159', 'getallproducts', 'device id of the app', '2018-11-22 02:23:37'),
(472, '1542876818161', 'getallproducts', 'device id of the app', '2018-11-22 02:23:37'),
(473, '1542876818154', 'getbanners', 'device id of the app', '2018-11-22 02:23:37'),
(474, '1542876818162', 'getallproducts', 'device id of the app', '2018-11-22 02:23:37'),
(475, '1542876818164', 'getallpages', 'device id of the app', '2018-11-22 02:23:37'),
(476, '1542876818163', 'getallproducts', 'device id of the app', '2018-11-22 02:23:37'),
(477, '1542876818163', 'allcategories', 'device id of the app', '2018-11-22 02:23:38'),
(478, '1542876819334', 'sitesetting', 'device id of the app', '2018-11-22 02:23:38'),
(479, '1542876820013', 'getallproducts', 'device id of the app', '2018-11-22 02:23:38'),
(480, '1542876826985', 'getalladdress', 'device id of the app', '2018-11-22 02:23:46'),
(481, '1542876836162', 'getrate', 'device id of the app', '2018-11-22 02:23:54'),
(482, '1542876838537', 'getpaymentmethods', 'device id of the app', '2018-11-22 02:23:57'),
(483, '1542876838985', 'generatebraintreetoken', 'device id of the app', '2018-11-22 02:23:57'),
(484, '1542876838987', 'generatebraintreetoken', 'device id of the app', '2018-11-22 02:23:58'),
(485, '1542877187797', 'allcategories', 'device id of the app', '2018-11-22 02:29:48'),
(486, '1542877187794', 'getallproducts', 'device id of the app', '2018-11-22 02:29:48'),
(487, '1542877187787', 'getbanners', 'device id of the app', '2018-11-22 02:29:48'),
(488, '1542877187797', 'getallproducts', 'device id of the app', '2018-11-22 02:29:49'),
(489, '1542877187796', 'getallproducts', 'device id of the app', '2018-11-22 02:29:49'),
(490, '1542877187795', 'getallproducts', 'device id of the app', '2018-11-22 02:29:49'),
(491, '1542877187798', 'getallpages', 'device id of the app', '2018-11-22 02:29:49'),
(492, '1542877188434', 'sitesetting', 'device id of the app', '2018-11-22 02:29:50'),
(493, '1542877192298', 'getallproducts', 'device id of the app', '2018-11-22 02:29:51'),
(494, '1542879191624', 'getallproducts', 'device id of the app', '2018-11-22 03:03:11'),
(495, '1542879191618', 'getbanners', 'device id of the app', '2018-11-22 03:03:11'),
(496, '1542879191625', 'getallproducts', 'device id of the app', '2018-11-22 03:03:11'),
(497, '1542879191626', 'getallproducts', 'device id of the app', '2018-11-22 03:03:11'),
(498, '1542879191628', 'allcategories', 'device id of the app', '2018-11-22 03:03:11'),
(499, '1542879191628', 'getallproducts', 'device id of the app', '2018-11-22 03:03:11'),
(500, '1542879192127', 'sitesetting', 'device id of the app', '2018-11-22 03:03:12'),
(501, '1542879191630', 'getallpages', 'device id of the app', '2018-11-22 03:03:12'),
(502, '1542879194032', 'getallproducts', 'device id of the app', '2018-11-22 03:03:12'),
(503, '1542879198683', 'getalladdress', 'device id of the app', '2018-11-22 03:03:17'),
(504, '1542879205295', 'getrate', 'device id of the app', '2018-11-22 03:03:24'),
(505, '1542879207933', 'getpaymentmethods', 'device id of the app', '2018-11-22 03:03:26'),
(506, '1542879208421', 'generatebraintreetoken', 'device id of the app', '2018-11-22 03:03:27'),
(507, '1542879208422', 'generatebraintreetoken', 'device id of the app', '2018-11-22 03:03:28'),
(508, '1542879311413', 'getbanners', 'device id of the app', '2018-11-22 03:05:10'),
(509, '1542879311421', 'getallproducts', 'device id of the app', '2018-11-22 03:05:10'),
(510, '1542879311419', 'getallproducts', 'device id of the app', '2018-11-22 03:05:10'),
(511, '1542879311423', 'allcategories', 'device id of the app', '2018-11-22 03:05:11'),
(512, '1542879311422', 'getallproducts', 'device id of the app', '2018-11-22 03:05:11'),
(513, '1542879311424', 'getallpages', 'device id of the app', '2018-11-22 03:05:11'),
(514, '1542879312730', 'sitesetting', 'device id of the app', '2018-11-22 03:05:11'),
(515, '1542879313432', 'getallproducts', 'device id of the app', '2018-11-22 03:05:12'),
(516, '1542879379058', 'getallproducts', 'device id of the app', '2018-11-22 03:06:19'),
(517, '1542879379056', 'getallproducts', 'device id of the app', '2018-11-22 03:06:19'),
(518, '1542879379060', 'getallpages', 'device id of the app', '2018-11-22 03:06:19'),
(519, '1542879379054', 'getallproducts', 'device id of the app', '2018-11-22 03:06:20'),
(520, '1542879379059', 'allcategories', 'device id of the app', '2018-11-22 03:06:20'),
(521, '1542879379046', 'getbanners', 'device id of the app', '2018-11-22 03:06:20'),
(522, '1542879379057', 'getallproducts', 'device id of the app', '2018-11-22 03:06:20'),
(523, '1542879381730', 'sitesetting', 'device id of the app', '2018-11-22 03:06:20'),
(524, '1542879382344', 'getallproducts', 'device id of the app', '2018-11-22 03:06:21'),
(525, '1542879388888', 'getalladdress', 'device id of the app', '2018-11-22 03:06:27'),
(526, '1542879396138', 'getrate', 'device id of the app', '2018-11-22 03:06:34'),
(527, '1542879398366', 'getpaymentmethods', 'device id of the app', '2018-11-22 03:06:37'),
(528, '1542879398830', 'generatebraintreetoken', 'device id of the app', '2018-11-22 03:06:37'),
(529, '1542879398832', 'generatebraintreetoken', 'device id of the app', '2018-11-22 03:06:38'),
(530, '1542879475507', 'addtoorder', 'device id of the app', '2018-11-22 03:07:54'),
(531, '1542879481840', 'getorders', 'device id of the app', '2018-11-22 03:08:00'),
(532, '1542879504933', 'getallproducts', 'device id of the app', '2018-11-22 03:08:24'),
(533, '1542879513841', 'getalladdress', 'device id of the app', '2018-11-22 03:08:32'),
(534, '1542879520207', 'getrate', 'device id of the app', '2018-11-22 03:08:39'),
(535, '1542879522587', 'getpaymentmethods', 'device id of the app', '2018-11-22 03:08:41'),
(536, '1542879523051', 'generatebraintreetoken', 'device id of the app', '2018-11-22 03:08:41'),
(537, '1542879523053', 'generatebraintreetoken', 'device id of the app', '2018-11-22 03:08:42'),
(538, '1542880224489', 'getallproducts', 'device id of the app', '2018-11-22 03:20:23'),
(539, '1542880224486', 'getallproducts', 'device id of the app', '2018-11-22 03:20:23'),
(540, '1542880224479', 'getbanners', 'device id of the app', '2018-11-22 03:20:23'),
(541, '1542880224488', 'getallproducts', 'device id of the app', '2018-11-22 03:20:23'),
(542, '1542880224484', 'getallproducts', 'device id of the app', '2018-11-22 03:20:23'),
(543, '1542880224490', 'allcategories', 'device id of the app', '2018-11-22 03:20:24'),
(544, '1542880224491', 'getallpages', 'device id of the app', '2018-11-22 03:20:24'),
(545, '1542880225723', 'sitesetting', 'device id of the app', '2018-11-22 03:20:24'),
(546, '1542880226339', 'getallproducts', 'device id of the app', '2018-11-22 03:20:25'),
(547, '1542883668228', 'getalladdress', 'device id of the app', '2018-11-22 04:17:51'),
(548, '1542883680439', 'getrate', 'device id of the app', '2018-11-22 04:17:59'),
(549, '1542883683407', 'getpaymentmethods', 'device id of the app', '2018-11-22 04:18:02'),
(550, '1542883684214', 'generatebraintreetoken', 'device id of the app', '2018-11-22 04:18:03'),
(551, '1542883684215', 'generatebraintreetoken', 'device id of the app', '2018-11-22 04:18:05'),
(552, '1542883746309', 'addtoorder', 'device id of the app', '2018-11-22 04:19:05'),
(553, '1542883752350', 'getorders', 'device id of the app', '2018-11-22 04:19:11'),
(554, '1542883767460', 'getallproducts', 'device id of the app', '2018-11-22 04:19:26'),
(555, '1542883770853', 'getallproducts', 'device id of the app', '2018-11-22 04:19:29'),
(556, '1542883776280', 'getallproducts', 'device id of the app', '2018-11-22 04:19:35'),
(557, '1542883783766', 'getallproducts', 'device id of the app', '2018-11-22 04:19:42'),
(558, '1542883788940', 'getallproducts', 'device id of the app', '2018-11-22 04:19:48'),
(559, '1542883792847', 'getallproducts', 'device id of the app', '2018-11-22 04:19:51'),
(560, '1542883796682', 'getallproducts', 'device id of the app', '2018-11-22 04:19:56'),
(561, '1542883828119', 'getallproducts', 'device id of the app', '2018-11-22 04:20:27'),
(562, '1542883855162', 'getallproducts', 'device id of the app', '2018-11-22 04:20:54'),
(563, '1542883923474', 'getbanners', 'device id of the app', '2018-11-22 04:22:05'),
(564, '1542883923478', 'getallproducts', 'device id of the app', '2018-11-22 04:22:05'),
(565, '1542883923479', 'getallproducts', 'device id of the app', '2018-11-22 04:22:06'),
(566, '1542883923477', 'getallproducts', 'device id of the app', '2018-11-22 04:22:06'),
(567, '1542883923481', 'allcategories', 'device id of the app', '2018-11-22 04:22:06'),
(568, '1542883923482', 'getallpages', 'device id of the app', '2018-11-22 04:22:06'),
(569, '1542883923577', 'sitesetting', 'device id of the app', '2018-11-22 04:22:07'),
(570, '1542883927306', 'getallproducts', 'device id of the app', '2018-11-22 04:22:07'),
(571, '1542883939184', 'getallproducts', 'device id of the app', '2018-11-22 04:22:21'),
(572, '1542883939180', 'getbanners', 'device id of the app', '2018-11-22 04:22:21'),
(573, '1542883939187', 'getallproducts', 'device id of the app', '2018-11-22 04:22:21'),
(574, '1542883939185', 'getallproducts', 'device id of the app', '2018-11-22 04:22:22'),
(575, '1542883939188', 'allcategories', 'device id of the app', '2018-11-22 04:22:22'),
(576, '1542883939189', 'getallpages', 'device id of the app', '2018-11-22 04:22:22'),
(577, '1542883939424', 'sitesetting', 'device id of the app', '2018-11-22 04:22:22'),
(578, '1542883943086', 'getallproducts', 'device id of the app', '2018-11-22 04:22:23'),
(579, '1542883956519', 'getallproducts', 'device id of the app', '2018-11-22 04:22:37'),
(580, '1542883959912', 'getallproducts', 'device id of the app', '2018-11-22 04:22:40');
INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(581, '1542883967422', 'getalladdress', 'device id of the app', '2018-11-22 04:22:48'),
(582, '1542884064560', 'getallproducts', 'device id of the app', '2018-11-22 04:24:27'),
(583, '1542884064554', 'getbanners', 'device id of the app', '2018-11-22 04:24:27'),
(584, '1542884064563', 'getallproducts', 'device id of the app', '2018-11-22 04:24:27'),
(585, '1542884064567', 'allcategories', 'device id of the app', '2018-11-22 04:24:27'),
(586, '1542884064565', 'getallproducts', 'device id of the app', '2018-11-22 04:24:27'),
(587, '1542884064566', 'getallproducts', 'device id of the app', '2018-11-22 04:24:27'),
(588, '1542884064569', 'getallpages', 'device id of the app', '2018-11-22 04:24:28'),
(589, '1542884064965', 'sitesetting', 'device id of the app', '2018-11-22 04:24:28'),
(590, '1542884068445', 'getallproducts', 'device id of the app', '2018-11-22 04:24:28'),
(591, '1542884123450', 'getbanners', 'device id of the app', '2018-11-22 04:25:25'),
(592, '1542884123456', 'getallproducts', 'device id of the app', '2018-11-22 04:25:25'),
(593, '1542884123459', 'allcategories', 'device id of the app', '2018-11-22 04:25:26'),
(594, '1542884123454', 'getallproducts', 'device id of the app', '2018-11-22 04:25:26'),
(595, '1542884123457', 'getallproducts', 'device id of the app', '2018-11-22 04:25:26'),
(596, '1542884123458', 'getallproducts', 'device id of the app', '2018-11-22 04:25:26'),
(597, '1542884123461', 'getallpages', 'device id of the app', '2018-11-22 04:25:26'),
(598, '1542884123733', 'sitesetting', 'device id of the app', '2018-11-22 04:25:26'),
(599, '1542884127163', 'getallproducts', 'device id of the app', '2018-11-22 04:25:27'),
(600, '1542884135838', 'getallproducts', 'device id of the app', '2018-11-22 04:25:37'),
(601, '1542884151898', 'allcategories', 'device id of the app', '2018-11-22 04:25:54'),
(602, '1542884151894', 'getallproducts', 'device id of the app', '2018-11-22 04:25:54'),
(603, '1542884151890', 'getbanners', 'device id of the app', '2018-11-22 04:25:55'),
(604, '1542884151892', 'getallproducts', 'device id of the app', '2018-11-22 04:25:55'),
(605, '1542884151895', 'getallproducts', 'device id of the app', '2018-11-22 04:25:55'),
(606, '1542884151896', 'getallproducts', 'device id of the app', '2018-11-22 04:25:55'),
(607, '1542884151899', 'getallpages', 'device id of the app', '2018-11-22 04:25:55'),
(608, '1542884152211', 'sitesetting', 'device id of the app', '2018-11-22 04:25:55'),
(609, '1542884156152', 'getallproducts', 'device id of the app', '2018-11-22 04:25:56'),
(610, '1542884265923', 'getallproducts', 'device id of the app', '2018-11-22 04:27:45'),
(611, '1542884265925', 'getallproducts', 'device id of the app', '2018-11-22 04:27:45'),
(612, '1542884265927', 'getallproducts', 'device id of the app', '2018-11-22 04:27:45'),
(613, '1542884265926', 'getallproducts', 'device id of the app', '2018-11-22 04:27:45'),
(614, '1542884265918', 'getbanners', 'device id of the app', '2018-11-22 04:27:46'),
(615, '1542884265928', 'getallpages', 'device id of the app', '2018-11-22 04:27:46'),
(616, '1542884265927', 'allcategories', 'device id of the app', '2018-11-22 04:27:46'),
(617, '1542884266449', 'sitesetting', 'device id of the app', '2018-11-22 04:27:46'),
(618, '1542884268579', 'getallproducts', 'device id of the app', '2018-11-22 04:27:47'),
(619, '1542885888026', 'getalladdress', 'device id of the app', '2018-11-22 04:54:51'),
(620, '1542885899300', 'getrate', 'device id of the app', '2018-11-22 04:54:59'),
(621, '1542885902377', 'getpaymentmethods', 'device id of the app', '2018-11-22 04:55:01'),
(622, '1542885903499', 'generatebraintreetoken', 'device id of the app', '2018-11-22 04:55:02'),
(623, '1542885903502', 'generatebraintreetoken', 'device id of the app', '2018-11-22 04:55:05'),
(624, '1542885989608', 'getorders', 'device id of the app', '2018-11-22 04:56:31'),
(625, '1542886017596', 'getallproducts', 'device id of the app', '2018-11-22 04:56:58'),
(626, '1542886046388', 'getallproducts', 'device id of the app', '2018-11-22 04:57:26'),
(627, '1542886075772', 'getlanguages', 'device id of the app', '2018-11-22 04:57:59'),
(628, '1542886095782', 'getallproducts', 'device id of the app', '2018-11-22 04:58:17'),
(629, '1542886095774', 'getbanners', 'device id of the app', '2018-11-22 04:58:18'),
(630, '1542886095783', 'getallproducts', 'device id of the app', '2018-11-22 04:58:18'),
(631, '1542886095784', 'getallproducts', 'device id of the app', '2018-11-22 04:58:18'),
(632, '1542886095785', 'allcategories', 'device id of the app', '2018-11-22 04:58:19'),
(633, '1542886095781', 'getallproducts', 'device id of the app', '2018-11-22 04:58:19'),
(634, '1542886095785', 'getallpages', 'device id of the app', '2018-11-22 04:58:19'),
(635, '1542886100529', 'sitesetting', 'device id of the app', '2018-11-22 04:58:20'),
(636, '1542886101998', 'getallproducts', 'device id of the app', '2018-11-22 04:58:21'),
(637, '1542886112976', 'getallproducts', 'device id of the app', '2018-11-22 04:58:32'),
(638, '1542886121982', 'getallproducts', 'device id of the app', '2018-11-22 04:58:41'),
(639, '1542888574816', 'getbanners', 'device id of the app', '2018-11-22 05:39:30'),
(640, '1542888574820', 'getallproducts', 'device id of the app', '2018-11-22 05:39:30'),
(641, '1542888574821', 'getallproducts', 'device id of the app', '2018-11-22 05:39:30'),
(642, '1542888574822', 'getallproducts', 'device id of the app', '2018-11-22 05:39:30'),
(643, '1542888574823', 'getallproducts', 'device id of the app', '2018-11-22 05:39:30'),
(644, '1542888574825', 'getallpages', 'device id of the app', '2018-11-22 05:39:31'),
(645, '1542888574824', 'allcategories', 'device id of the app', '2018-11-22 05:39:31'),
(646, '1542888575045', 'sitesetting', 'device id of the app', '2018-11-22 05:39:31'),
(647, '1542888581076', 'getallproducts', 'device id of the app', '2018-11-22 05:39:34'),
(648, '1542888788928', 'getbanners', 'device id of the app', '2018-11-22 05:43:03'),
(649, '1542888788933', 'getallproducts', 'device id of the app', '2018-11-22 05:43:04'),
(650, '1542888788931', 'getallproducts', 'device id of the app', '2018-11-22 05:43:04'),
(651, '1542888788934', 'getallproducts', 'device id of the app', '2018-11-22 05:43:04'),
(652, '1542888788935', 'allcategories', 'device id of the app', '2018-11-22 05:43:04'),
(653, '1542888788936', 'getallpages', 'device id of the app', '2018-11-22 05:43:05'),
(654, '1542888789164', 'sitesetting', 'device id of the app', '2018-11-22 05:43:05'),
(655, '1542888793011', 'getallproducts', 'device id of the app', '2018-11-22 05:43:06'),
(656, '1542888805928', 'getallproducts', 'device id of the app', '2018-11-22 05:43:20'),
(657, '1542891977440', 'allcategories', 'device id of the app', '2018-11-21 18:36:13'),
(658, '1542891977435', 'getallproducts', 'device id of the app', '2018-11-21 18:36:13'),
(659, '1542891977438', 'getallproducts', 'device id of the app', '2018-11-21 18:36:13'),
(660, '1542891977436', 'getallproducts', 'device id of the app', '2018-11-21 18:36:13'),
(661, '1542891977434', 'getallproducts', 'device id of the app', '2018-11-21 18:36:13'),
(662, '1542891977431', 'getbanners', 'device id of the app', '2018-11-21 18:36:13'),
(663, '1542891977442', 'getallpages', 'device id of the app', '2018-11-21 18:36:13'),
(664, '1542891980433', 'sitesetting', 'device id of the app', '2018-11-21 18:36:14'),
(665, '1542891982214', 'getallproducts', 'device id of the app', '2018-11-21 18:36:15'),
(666, '1542892070026', 'getallproducts', 'device id of the app', '2018-11-21 18:37:44'),
(667, '1542892070022', 'getbanners', 'device id of the app', '2018-11-21 18:37:44'),
(668, '1542892070027', 'getallproducts', 'device id of the app', '2018-11-21 18:37:44'),
(669, '1542892070028', 'getallproducts', 'device id of the app', '2018-11-21 18:37:44'),
(670, '1542892070029', 'allcategories', 'device id of the app', '2018-11-21 18:37:44'),
(671, '1542892070030', 'getallpages', 'device id of the app', '2018-11-21 18:37:44'),
(672, '1542892070265', 'sitesetting', 'device id of the app', '2018-11-21 18:37:44'),
(673, '1542892072253', 'getallproducts', 'device id of the app', '2018-11-21 18:37:45'),
(674, '1542892303978', 'getallproducts', 'device id of the app', '2018-11-21 18:41:38'),
(675, '1542892303974', 'getbanners', 'device id of the app', '2018-11-21 18:41:38'),
(676, '1542892303980', 'getallproducts', 'device id of the app', '2018-11-21 18:41:38'),
(677, '1542892303982', 'allcategories', 'device id of the app', '2018-11-21 18:41:39'),
(678, '1542892303981', 'getallproducts', 'device id of the app', '2018-11-21 18:41:39'),
(679, '1542892304140', 'sitesetting', 'device id of the app', '2018-11-21 18:41:39'),
(680, '1542892303983', 'getallpages', 'device id of the app', '2018-11-21 18:41:39'),
(681, '1542892307027', 'getallproducts', 'device id of the app', '2018-11-21 18:41:39'),
(682, '1542892322413', 'getbanners', 'device id of the app', '2018-11-21 18:41:56'),
(683, '1542892322418', 'getallproducts', 'device id of the app', '2018-11-21 18:41:56'),
(684, '1542892322420', 'getallproducts', 'device id of the app', '2018-11-21 18:41:56'),
(685, '1542892322419', 'getallproducts', 'device id of the app', '2018-11-21 18:41:57'),
(686, '1542892322422', 'allcategories', 'device id of the app', '2018-11-21 18:41:57'),
(687, '1542892322658', 'sitesetting', 'device id of the app', '2018-11-21 18:41:57'),
(688, '1542892322423', 'getallpages', 'device id of the app', '2018-11-21 18:41:57'),
(689, '1542892324975', 'getallproducts', 'device id of the app', '2018-11-21 18:41:57'),
(690, '1542892340375', 'getbanners', 'device id of the app', '2018-11-21 18:42:15'),
(691, '1542892340380', 'getallproducts', 'device id of the app', '2018-11-21 18:42:15'),
(692, '1542892340382', 'getallproducts', 'device id of the app', '2018-11-21 18:42:15'),
(693, '1542892340383', 'allcategories', 'device id of the app', '2018-11-21 18:42:15'),
(694, '1542892340625', 'sitesetting', 'device id of the app', '2018-11-21 18:42:16'),
(695, '1542892340383', 'getallpages', 'device id of the app', '2018-11-21 18:42:16'),
(696, '1542892343761', 'getallproducts', 'device id of the app', '2018-11-21 18:42:16'),
(697, '1542892352891', 'getallproducts', 'device id of the app', '2018-11-21 18:42:26'),
(698, '1542892352887', 'getbanners', 'device id of the app', '2018-11-21 18:42:26'),
(699, '1542892352892', 'getallproducts', 'device id of the app', '2018-11-21 18:42:27'),
(700, '1542892352895', 'allcategories', 'device id of the app', '2018-11-21 18:42:27'),
(701, '1542892352897', 'getallpages', 'device id of the app', '2018-11-21 18:42:27'),
(702, '1542892352893', 'getallproducts', 'device id of the app', '2018-11-21 18:42:27'),
(703, '1542892352895', 'getallproducts', 'device id of the app', '2018-11-21 18:42:27'),
(704, '1542892353145', 'sitesetting', 'device id of the app', '2018-11-21 18:42:28'),
(705, '1542892355883', 'getallproducts', 'device id of the app', '2018-11-21 18:42:28'),
(706, '1542892368346', 'getallproducts', 'device id of the app', '2018-11-21 18:42:42'),
(707, '1542892368340', 'getbanners', 'device id of the app', '2018-11-21 18:42:42'),
(708, '1542892368348', 'getallproducts', 'device id of the app', '2018-11-21 18:42:42'),
(709, '1542892368345', 'getallproducts', 'device id of the app', '2018-11-21 18:42:42'),
(710, '1542892368350', 'allcategories', 'device id of the app', '2018-11-21 18:42:42'),
(711, '1542892368349', 'getallproducts', 'device id of the app', '2018-11-21 18:42:42'),
(712, '1542892368622', 'sitesetting', 'device id of the app', '2018-11-21 18:42:42'),
(713, '1542892368350', 'getallpages', 'device id of the app', '2018-11-21 18:42:42'),
(714, '1542892370381', 'getallproducts', 'device id of the app', '2018-11-21 18:42:43'),
(715, '1542892394347', 'getbanners', 'device id of the app', '2018-11-21 18:43:08'),
(716, '1542892394351', 'getallproducts', 'device id of the app', '2018-11-21 18:43:08'),
(717, '1542892394354', 'getallproducts', 'device id of the app', '2018-11-21 18:43:08'),
(718, '1542892394352', 'getallproducts', 'device id of the app', '2018-11-21 18:43:08'),
(719, '1542892394353', 'getallproducts', 'device id of the app', '2018-11-21 18:43:08'),
(720, '1542892394355', 'allcategories', 'device id of the app', '2018-11-21 18:43:08'),
(721, '1542892394605', 'sitesetting', 'device id of the app', '2018-11-21 18:43:08'),
(722, '1542892394355', 'getallpages', 'device id of the app', '2018-11-21 18:43:08'),
(723, '1542892396599', 'getallproducts', 'device id of the app', '2018-11-21 18:43:09'),
(724, '1542892405548', 'getbanners', 'device id of the app', '2018-11-21 18:43:19'),
(725, '1542892405553', 'getallproducts', 'device id of the app', '2018-11-21 18:43:19'),
(726, '1542892405552', 'getallproducts', 'device id of the app', '2018-11-21 18:43:19'),
(727, '1542892405556', 'allcategories', 'device id of the app', '2018-11-21 18:43:19'),
(728, '1542892405555', 'getallproducts', 'device id of the app', '2018-11-21 18:43:20'),
(729, '1542892405556', 'getallpages', 'device id of the app', '2018-11-21 18:43:20'),
(730, '1542892405804', 'sitesetting', 'device id of the app', '2018-11-21 18:43:20'),
(731, '1542892407836', 'getallproducts', 'device id of the app', '2018-11-21 18:43:20'),
(732, '1542892417119', 'getallproducts', 'device id of the app', '2018-11-21 18:43:31'),
(733, '1542892417116', 'getallproducts', 'device id of the app', '2018-11-21 18:43:31'),
(734, '1542892417113', 'getbanners', 'device id of the app', '2018-11-21 18:43:31'),
(735, '1542892417118', 'getallproducts', 'device id of the app', '2018-11-21 18:43:31'),
(736, '1542892417120', 'allcategories', 'device id of the app', '2018-11-21 18:43:31'),
(737, '1542892417121', 'getallpages', 'device id of the app', '2018-11-21 18:43:31'),
(738, '1542892417248', 'sitesetting', 'device id of the app', '2018-11-21 18:43:31'),
(739, '1542892419289', 'getallproducts', 'device id of the app', '2018-11-21 18:43:32'),
(740, '1542892430082', 'getbanners', 'device id of the app', '2018-11-21 18:43:44'),
(741, '1542892430086', 'getallproducts', 'device id of the app', '2018-11-21 18:43:44'),
(742, '1542892430087', 'getallproducts', 'device id of the app', '2018-11-21 18:43:45'),
(743, '1542892430090', 'allcategories', 'device id of the app', '2018-11-21 18:43:45'),
(744, '1542892430088', 'getallproducts', 'device id of the app', '2018-11-21 18:43:45'),
(745, '1542892430091', 'getallpages', 'device id of the app', '2018-11-21 18:43:45'),
(746, '1542892430330', 'sitesetting', 'device id of the app', '2018-11-21 18:43:45'),
(747, '1542892433599', 'getallproducts', 'device id of the app', '2018-11-21 18:43:46'),
(748, '1542892443578', 'getallproducts', 'device id of the app', '2018-11-21 18:43:57'),
(749, '1542892443579', 'getallproducts', 'device id of the app', '2018-11-21 18:43:57'),
(750, '1542892443581', 'getallproducts', 'device id of the app', '2018-11-21 18:43:57'),
(751, '1542892443575', 'getbanners', 'device id of the app', '2018-11-21 18:43:58'),
(752, '1542892443583', 'getallpages', 'device id of the app', '2018-11-21 18:43:58'),
(753, '1542892443581', 'allcategories', 'device id of the app', '2018-11-21 18:43:58'),
(754, '1542892443835', 'sitesetting', 'device id of the app', '2018-11-21 18:43:58'),
(755, '1542892446169', 'getallproducts', 'device id of the app', '2018-11-21 18:43:59'),
(756, '1542892455664', 'getallproducts', 'device id of the app', '2018-11-21 18:44:09'),
(757, '1542892455666', 'getallproducts', 'device id of the app', '2018-11-21 18:44:09'),
(758, '1542892455667', 'getallproducts', 'device id of the app', '2018-11-21 18:44:09'),
(759, '1542892455660', 'getbanners', 'device id of the app', '2018-11-21 18:44:09'),
(760, '1542892455669', 'allcategories', 'device id of the app', '2018-11-21 18:44:09'),
(761, '1542892455668', 'getallproducts', 'device id of the app', '2018-11-21 18:44:10'),
(762, '1542892455809', 'sitesetting', 'device id of the app', '2018-11-21 18:44:10'),
(763, '1542892455670', 'getallpages', 'device id of the app', '2018-11-21 18:44:10'),
(764, '1542892457841', 'getallproducts', 'device id of the app', '2018-11-21 18:44:10'),
(765, '1542892465534', 'getallproducts', 'device id of the app', '2018-11-21 18:44:20'),
(766, '1542892465529', 'getbanners', 'device id of the app', '2018-11-21 18:44:21'),
(767, '1542892465535', 'getallproducts', 'device id of the app', '2018-11-21 18:44:21'),
(768, '1542892465533', 'getallproducts', 'device id of the app', '2018-11-21 18:44:21'),
(769, '1542892465536', 'allcategories', 'device id of the app', '2018-11-21 18:44:21'),
(770, '1542892465537', 'getallpages', 'device id of the app', '2018-11-21 18:44:21'),
(771, '1542892465680', 'sitesetting', 'device id of the app', '2018-11-21 18:44:22'),
(772, '1542892470096', 'getallproducts', 'device id of the app', '2018-11-21 18:44:23'),
(773, '1542892481000', 'getbanners', 'device id of the app', '2018-11-21 18:44:34'),
(774, '1542892481004', 'getallproducts', 'device id of the app', '2018-11-21 18:44:34'),
(775, '1542892481005', 'getallproducts', 'device id of the app', '2018-11-21 18:44:35'),
(776, '1542892481007', 'getallproducts', 'device id of the app', '2018-11-21 18:44:35'),
(777, '1542892481009', 'getallproducts', 'device id of the app', '2018-11-21 18:44:35'),
(778, '1542892481010', 'allcategories', 'device id of the app', '2018-11-21 18:44:35'),
(779, '1542892481014', 'getallpages', 'device id of the app', '2018-11-21 18:44:35'),
(780, '1542892481153', 'sitesetting', 'device id of the app', '2018-11-21 18:44:35'),
(781, '1542892483124', 'getallproducts', 'device id of the app', '2018-11-21 18:44:35'),
(782, '1542892512066', 'getallproducts', 'device id of the app', '2018-11-21 18:45:06'),
(783, '1542892512058', 'getbanners', 'device id of the app', '2018-11-21 18:45:06'),
(784, '1542892512065', 'getallproducts', 'device id of the app', '2018-11-21 18:45:06'),
(785, '1542892512062', 'getallproducts', 'device id of the app', '2018-11-21 18:45:06'),
(786, '1542892512064', 'getallproducts', 'device id of the app', '2018-11-21 18:45:06'),
(787, '1542892512067', 'allcategories', 'device id of the app', '2018-11-21 18:45:06'),
(788, '1542892512312', 'sitesetting', 'device id of the app', '2018-11-21 18:45:06'),
(789, '1542892512069', 'getallpages', 'device id of the app', '2018-11-21 18:45:06'),
(790, '1542892514378', 'getallproducts', 'device id of the app', '2018-11-21 18:45:07'),
(791, '1542892572443', 'getbanners', 'device id of the app', '2018-11-21 18:46:06'),
(792, '1542892572448', 'getallproducts', 'device id of the app', '2018-11-21 18:46:06'),
(793, '1542892572446', 'getallproducts', 'device id of the app', '2018-11-21 18:46:06'),
(794, '1542892572450', 'getallproducts', 'device id of the app', '2018-11-21 18:46:07'),
(795, '1542892572450', 'allcategories', 'device id of the app', '2018-11-21 18:46:07'),
(796, '1542892572451', 'getallpages', 'device id of the app', '2018-11-21 18:46:07'),
(797, '1542892572724', 'sitesetting', 'device id of the app', '2018-11-21 18:46:07'),
(798, '1542892575381', 'getallproducts', 'device id of the app', '2018-11-21 18:46:08'),
(799, '1542893105022', 'getbanners', 'device id of the app', '2018-11-21 18:54:59'),
(800, '1542893105026', 'getallproducts', 'device id of the app', '2018-11-21 18:54:59'),
(801, '1542893105028', 'getallproducts', 'device id of the app', '2018-11-21 18:54:59'),
(802, '1542893105027', 'getallproducts', 'device id of the app', '2018-11-21 18:54:59'),
(803, '1542893105030', 'getallproducts', 'device id of the app', '2018-11-21 18:54:59'),
(804, '1542893105031', 'allcategories', 'device id of the app', '2018-11-21 18:54:59'),
(805, '1542893105040', 'getallpages', 'device id of the app', '2018-11-21 18:54:59'),
(806, '1542893105215', 'sitesetting', 'device id of the app', '2018-11-21 18:54:59'),
(807, '1542893107367', 'getallproducts', 'device id of the app', '2018-11-21 18:55:00'),
(808, '1542893181981', 'getallproducts', 'device id of the app', '2018-11-21 18:56:15'),
(809, '1542893181979', 'getallproducts', 'device id of the app', '2018-11-21 18:56:16'),
(810, '1542893181975', 'getbanners', 'device id of the app', '2018-11-21 18:56:16'),
(811, '1542893181982', 'allcategories', 'device id of the app', '2018-11-21 18:56:16'),
(812, '1542893181983', 'getallpages', 'device id of the app', '2018-11-21 18:56:16'),
(813, '1542893182275', 'sitesetting', 'device id of the app', '2018-11-21 18:56:16'),
(814, '1542893184186', 'getallproducts', 'device id of the app', '2018-11-21 18:56:17'),
(815, '1542893202419', 'getallproducts', 'device id of the app', '2018-11-21 18:56:36'),
(816, '1542893202414', 'getbanners', 'device id of the app', '2018-11-21 18:56:36'),
(817, '1542893202422', 'getallproducts', 'device id of the app', '2018-11-21 18:56:36'),
(818, '1542893202423', 'getallproducts', 'device id of the app', '2018-11-21 18:56:36'),
(819, '1542893202424', 'getallproducts', 'device id of the app', '2018-11-21 18:56:37'),
(820, '1542893202713', 'sitesetting', 'device id of the app', '2018-11-21 18:56:37'),
(821, '1542893202424', 'allcategories', 'device id of the app', '2018-11-21 18:56:37'),
(822, '1542893202425', 'getallpages', 'device id of the app', '2018-11-21 18:56:37'),
(823, '1542893204884', 'getallproducts', 'device id of the app', '2018-11-21 18:56:37'),
(824, '1542893268812', 'getbanners', 'device id of the app', '2018-11-21 18:57:42'),
(825, '1542893268817', 'getallproducts', 'device id of the app', '2018-11-21 18:57:42'),
(826, '1542893268816', 'getallproducts', 'device id of the app', '2018-11-21 18:57:42'),
(827, '1542893268815', 'getallproducts', 'device id of the app', '2018-11-21 18:57:43'),
(828, '1542893268818', 'getallproducts', 'device id of the app', '2018-11-21 18:57:43'),
(829, '1542893268818', 'allcategories', 'device id of the app', '2018-11-21 18:57:43'),
(830, '1542893268819', 'getallpages', 'device id of the app', '2018-11-21 18:57:43'),
(831, '1542893269361', 'sitesetting', 'device id of the app', '2018-11-21 18:57:43'),
(832, '1542893271086', 'getallproducts', 'device id of the app', '2018-11-21 18:57:43'),
(833, '1542893311206', 'getallproducts', 'device id of the app', '2018-11-21 18:58:24'),
(834, '1542893311208', 'getfilters', 'device id of the app', '2018-11-21 18:58:24'),
(835, '1542893385170', 'getallproducts', 'device id of the app', '2018-11-21 18:59:39'),
(836, '1542893385171', 'getallproducts', 'device id of the app', '2018-11-21 18:59:39'),
(837, '1542893385166', 'getbanners', 'device id of the app', '2018-11-21 18:59:39'),
(838, '1542893385172', 'getallproducts', 'device id of the app', '2018-11-21 18:59:39'),
(839, '1542893385173', 'allcategories', 'device id of the app', '2018-11-21 18:59:39'),
(840, '1542893385174', 'getallpages', 'device id of the app', '2018-11-21 18:59:39'),
(841, '1542893385710', 'sitesetting', 'device id of the app', '2018-11-21 18:59:39'),
(842, '1542893481204', 'getallproducts', 'device id of the app', '2018-11-21 19:01:15'),
(843, '1542893481205', 'getallproducts', 'device id of the app', '2018-11-21 19:01:15'),
(844, '1542893481200', 'getbanners', 'device id of the app', '2018-11-21 19:01:15'),
(845, '1542893481207', 'allcategories', 'device id of the app', '2018-11-21 19:01:15'),
(846, '1542893481206', 'getallproducts', 'device id of the app', '2018-11-21 19:01:15'),
(847, '1542893481209', 'getallpages', 'device id of the app', '2018-11-21 19:01:15'),
(848, '1542893481452', 'sitesetting', 'device id of the app', '2018-11-21 19:01:15'),
(849, '1542893483397', 'getallproducts', 'device id of the app', '2018-11-21 19:01:16'),
(850, '1542893486886', 'getallproducts', 'device id of the app', '2018-11-21 19:01:19'),
(851, '1542893486887', 'getfilters', 'device id of the app', '2018-11-21 19:01:20'),
(852, '1542893611726', 'getbanners', 'device id of the app', '2018-11-21 19:03:25'),
(853, '1542893611734', 'allcategories', 'device id of the app', '2018-11-21 19:03:25'),
(854, '1542893611731', 'getallproducts', 'device id of the app', '2018-11-21 19:03:25'),
(855, '1542893611732', 'getallproducts', 'device id of the app', '2018-11-21 19:03:25'),
(856, '1542893611976', 'sitesetting', 'device id of the app', '2018-11-21 19:03:26'),
(857, '1542893611734', 'getallpages', 'device id of the app', '2018-11-21 19:03:26'),
(858, '1542893627766', 'getallproducts', 'device id of the app', '2018-11-21 19:03:41'),
(859, '1542893627763', 'getbanners', 'device id of the app', '2018-11-21 19:03:41'),
(860, '1542893627768', 'getallproducts', 'device id of the app', '2018-11-21 19:03:41'),
(861, '1542893627769', 'getallproducts', 'device id of the app', '2018-11-21 19:03:41'),
(862, '1542893627767', 'getallproducts', 'device id of the app', '2018-11-21 19:03:42'),
(863, '1542893627770', 'allcategories', 'device id of the app', '2018-11-21 19:03:42'),
(864, '1542893627771', 'getallpages', 'device id of the app', '2018-11-21 19:03:42'),
(865, '1542893628030', 'sitesetting', 'device id of the app', '2018-11-21 19:03:42'),
(866, '1542893630032', 'getallproducts', 'device id of the app', '2018-11-21 19:03:42'),
(867, '1542893641877', 'processlogin', 'device id of the app', '2018-11-21 19:03:55'),
(868, '1542893735283', 'getallproducts', 'device id of the app', '2018-11-21 19:05:28'),
(869, '1542893738335', 'getallproducts', 'device id of the app', '2018-11-21 19:05:31'),
(870, '1542893757612', 'getbanners', 'device id of the app', '2018-11-21 19:05:51'),
(871, '1542893757618', 'getallproducts', 'device id of the app', '2018-11-21 19:05:51'),
(872, '1542893757617', 'getallproducts', 'device id of the app', '2018-11-21 19:05:51'),
(873, '1542893757620', 'getallproducts', 'device id of the app', '2018-11-21 19:05:51'),
(874, '1542893757620', 'allcategories', 'device id of the app', '2018-11-21 19:05:51'),
(875, '1542893757621', 'getallpages', 'device id of the app', '2018-11-21 19:05:52'),
(876, '1542893757873', 'sitesetting', 'device id of the app', '2018-11-21 19:05:52'),
(877, '1542893759777', 'getallproducts', 'device id of the app', '2018-11-21 19:05:52'),
(878, '1542893767371', 'processlogin', 'device id of the app', '2018-11-21 19:06:01'),
(879, '1542893784918', 'getallproducts', 'device id of the app', '2018-11-21 19:06:18'),
(880, '1542893797340', 'getallproducts', 'device id of the app', '2018-11-21 19:06:31'),
(881, '1542893797336', 'getbanners', 'device id of the app', '2018-11-21 19:06:31'),
(882, '1542893797342', 'getallproducts', 'device id of the app', '2018-11-21 19:06:31'),
(883, '1542893797343', 'getallproducts', 'device id of the app', '2018-11-21 19:06:31'),
(884, '1542893797344', 'getallproducts', 'device id of the app', '2018-11-21 19:06:31'),
(885, '1542893797345', 'allcategories', 'device id of the app', '2018-11-21 19:06:31'),
(886, '1542893797346', 'getallpages', 'device id of the app', '2018-11-21 19:06:32'),
(887, '1542893797669', 'sitesetting', 'device id of the app', '2018-11-21 19:06:32'),
(888, '1542893799803', 'getallproducts', 'device id of the app', '2018-11-21 19:06:32'),
(889, '1542893882123', 'getbanners', 'device id of the app', '2018-11-21 19:07:56'),
(890, '1542893882127', 'getallproducts', 'device id of the app', '2018-11-21 19:07:57'),
(891, '1542893882126', 'getallproducts', 'device id of the app', '2018-11-21 19:07:57'),
(892, '1542893882368', 'sitesetting', 'device id of the app', '2018-11-21 19:07:57'),
(893, '1542893882130', 'getallpages', 'device id of the app', '2018-11-21 19:07:57'),
(894, '1542893882128', 'getallproducts', 'device id of the app', '2018-11-21 19:07:57'),
(895, '1542893882129', 'allcategories', 'device id of the app', '2018-11-21 19:07:57'),
(896, '1542893885468', 'getallproducts', 'device id of the app', '2018-11-21 19:07:58'),
(897, '1542893901468', 'getbanners', 'device id of the app', '2018-11-21 19:08:15'),
(898, '1542893901471', 'getallproducts', 'device id of the app', '2018-11-21 19:08:15'),
(899, '1542893901473', 'getallproducts', 'device id of the app', '2018-11-21 19:08:15'),
(900, '1542893901474', 'getallproducts', 'device id of the app', '2018-11-21 19:08:15'),
(901, '1542893901475', 'allcategories', 'device id of the app', '2018-11-21 19:08:15'),
(902, '1542893901476', 'getallpages', 'device id of the app', '2018-11-21 19:08:16'),
(903, '1542893901730', 'sitesetting', 'device id of the app', '2018-11-21 19:08:16'),
(904, '1542893903701', 'getallproducts', 'device id of the app', '2018-11-21 19:08:16'),
(905, '1542893932899', 'getallproducts', 'device id of the app', '2018-11-21 19:08:46'),
(906, '1542893934757', 'getallproducts', 'device id of the app', '2018-11-21 19:08:47'),
(907, '1542893936321', 'getallproducts', 'device id of the app', '2018-11-21 19:08:49'),
(908, '1542893939242', 'getallproducts', 'device id of the app', '2018-11-21 19:08:52'),
(909, '1542893985256', 'getallproducts', 'device id of the app', '2018-11-21 19:09:39'),
(910, '1542893988680', 'getallnews', 'device id of the app', '2018-11-21 19:09:42'),
(911, '1542893988681', 'getallnews', 'device id of the app', '2018-11-21 19:09:42'),
(912, '1542893988682', 'allnewscategories', 'device id of the app', '2018-11-21 19:09:43'),
(913, '1542893990724', 'allnewscategories', 'device id of the app', '2018-11-21 19:09:43'),
(914, '1542893999256', 'getallproducts', 'device id of the app', '2018-11-21 19:09:53'),
(915, '1542895377109', 'getalladdress', 'device id of the app', '2018-11-21 19:32:50'),
(916, '1542895736757', 'getallproducts', 'device id of the app', '2018-11-21 19:38:50'),
(917, '1542895736751', 'getbanners', 'device id of the app', '2018-11-21 19:38:50'),
(918, '1542895736755', 'getallproducts', 'device id of the app', '2018-11-21 19:38:50'),
(919, '1542895736758', 'getallproducts', 'device id of the app', '2018-11-21 19:38:51'),
(920, '1542895736756', 'getallproducts', 'device id of the app', '2018-11-21 19:38:51'),
(921, '1542895736759', 'allcategories', 'device id of the app', '2018-11-21 19:38:51'),
(922, '1542895736760', 'getallpages', 'device id of the app', '2018-11-21 19:38:51'),
(923, '1542895736947', 'sitesetting', 'device id of the app', '2018-11-21 19:38:51'),
(924, '1542895739005', 'getallproducts', 'device id of the app', '2018-11-21 19:38:51'),
(925, '1542895788731', 'getbanners', 'device id of the app', '2018-11-21 19:39:42'),
(926, '1542895788735', 'getallproducts', 'device id of the app', '2018-11-21 19:39:42'),
(927, '1542895788736', 'getallproducts', 'device id of the app', '2018-11-21 19:39:42'),
(928, '1542895788737', 'getallproducts', 'device id of the app', '2018-11-21 19:39:43'),
(929, '1542895788738', 'allcategories', 'device id of the app', '2018-11-21 19:39:43'),
(930, '1542895788743', 'getallpages', 'device id of the app', '2018-11-21 19:39:43'),
(931, '1542895789012', 'sitesetting', 'device id of the app', '2018-11-21 19:39:43'),
(932, '1542895790993', 'getallproducts', 'device id of the app', '2018-11-21 19:39:43'),
(933, '1542895800304', 'getallproducts', 'device id of the app', '2018-11-21 19:39:54'),
(934, '1542895800307', 'getallproducts', 'device id of the app', '2018-11-21 19:39:54'),
(935, '1542895800301', 'getbanners', 'device id of the app', '2018-11-21 19:39:54'),
(936, '1542895800305', 'getallproducts', 'device id of the app', '2018-11-21 19:39:54'),
(937, '1542895800308', 'getallproducts', 'device id of the app', '2018-11-21 19:39:54'),
(938, '1542895800309', 'allcategories', 'device id of the app', '2018-11-21 19:39:54'),
(939, '1542895800311', 'getallpages', 'device id of the app', '2018-11-21 19:39:54'),
(940, '1542895800578', 'sitesetting', 'device id of the app', '2018-11-21 19:39:54'),
(941, '1542895802564', 'getallproducts', 'device id of the app', '2018-11-21 19:39:55'),
(942, '1542895851256', 'getbanners', 'device id of the app', '2018-11-21 19:40:45'),
(943, '1542895851261', 'getallproducts', 'device id of the app', '2018-11-21 19:40:45'),
(944, '1542895851263', 'getallproducts', 'device id of the app', '2018-11-21 19:40:45'),
(945, '1542895851264', 'getallproducts', 'device id of the app', '2018-11-21 19:40:45'),
(946, '1542895851265', 'allcategories', 'device id of the app', '2018-11-21 19:40:45'),
(947, '1542895851262', 'getallproducts', 'device id of the app', '2018-11-21 19:40:45'),
(948, '1542895851529', 'sitesetting', 'device id of the app', '2018-11-21 19:40:46'),
(949, '1542895851265', 'getallpages', 'device id of the app', '2018-11-21 19:40:46'),
(950, '1542895853663', 'getallproducts', 'device id of the app', '2018-11-21 19:40:46'),
(951, '1542895857917', 'getalladdress', 'device id of the app', '2018-11-21 19:40:51'),
(952, '1542896813355', 'getallproducts', 'device id of the app', '2018-11-21 19:56:53'),
(953, '1542896813356', 'getallproducts', 'device id of the app', '2018-11-21 19:56:53'),
(954, '1542896813357', 'getallproducts', 'device id of the app', '2018-11-21 19:56:53'),
(955, '1542896813331', 'getbanners', 'device id of the app', '2018-11-21 19:56:53'),
(956, '1542896813343', 'getallproducts', 'device id of the app', '2018-11-21 19:56:53'),
(957, '1542896813358', 'allcategories', 'device id of the app', '2018-11-21 19:56:53'),
(958, '1542896813359', 'getallpages', 'device id of the app', '2018-11-21 19:56:53'),
(959, '1542896814055', 'sitesetting', 'device id of the app', '2018-11-21 19:56:53'),
(960, '1542896815746', 'getallproducts', 'device id of the app', '2018-11-21 19:56:54'),
(961, '1542896828942', 'getallnews', 'device id of the app', '2018-11-21 19:57:08'),
(962, '1542896828946', 'getallnews', 'device id of the app', '2018-11-21 19:57:08'),
(963, '1542896828948', 'allnewscategories', 'device id of the app', '2018-11-21 19:57:08'),
(964, '1542896829943', 'allnewscategories', 'device id of the app', '2018-11-21 19:57:09'),
(965, '1542896832787', 'getallnews', 'device id of the app', '2018-11-21 19:57:11'),
(966, '1542896833468', 'getallproducts', 'device id of the app', '2018-11-21 19:57:12'),
(967, '1542896833469', 'getfilters', 'device id of the app', '2018-11-21 19:57:12'),
(968, '1542896836129', 'getallproducts', 'device id of the app', '2018-11-21 19:57:15'),
(969, '1542896838572', 'getfilters', 'device id of the app', '2018-11-21 19:57:17'),
(970, '1542896838570', 'getallproducts', 'device id of the app', '2018-11-21 19:57:17'),
(971, '1542896843034', 'getallproducts', 'device id of the app', '2018-11-21 19:57:21'),
(972, '1542896843036', 'getfilters', 'device id of the app', '2018-11-21 19:57:21'),
(973, '1542896845321', 'getallproducts', 'device id of the app', '2018-11-21 19:57:24'),
(974, '1542896873189', 'getallproducts', 'device id of the app', '2018-11-21 19:57:52'),
(975, '1542897020678', 'getallproducts', 'device id of the app', '2018-11-21 20:00:20'),
(976, '1542897020678', 'getallproducts', 'device id of the app', '2018-11-21 20:00:20'),
(977, '1542897020676', 'getallproducts', 'device id of the app', '2018-11-21 20:00:20'),
(978, '1542897020671', 'getbanners', 'device id of the app', '2018-11-21 20:00:20'),
(979, '1542897020680', 'allcategories', 'device id of the app', '2018-11-21 20:00:20'),
(980, '1542897020680', 'getallpages', 'device id of the app', '2018-11-21 20:00:20'),
(981, '1542897021459', 'sitesetting', 'device id of the app', '2018-11-21 20:00:20'),
(982, '1542897022461', 'getallproducts', 'device id of the app', '2018-11-21 20:00:21'),
(983, '1542897093991', 'getallproducts', 'device id of the app', '2018-11-21 20:01:33'),
(984, '1542897093988', 'getbanners', 'device id of the app', '2018-11-21 20:01:33'),
(985, '1542897093993', 'getallproducts', 'device id of the app', '2018-11-21 20:01:34'),
(986, '1542897093992', 'getallproducts', 'device id of the app', '2018-11-21 20:01:34'),
(987, '1542897093993', 'allcategories', 'device id of the app', '2018-11-21 20:01:34'),
(988, '1542897093994', 'getallpages', 'device id of the app', '2018-11-21 20:01:34'),
(989, '1542897094963', 'sitesetting', 'device id of the app', '2018-11-21 20:01:34'),
(990, '1542897096235', 'getallproducts', 'device id of the app', '2018-11-21 20:01:35'),
(991, '1542897134401', 'processlogin', 'device id of the app', '2018-11-21 20:02:13'),
(992, '1542897150885', 'processlogin', 'device id of the app', '2018-11-21 20:02:30'),
(993, '1542897193787', 'processregistration', 'device id of the app', '2018-11-21 20:03:13'),
(994, '1542897219466', 'processregistration', 'device id of the app', '2018-11-21 20:03:38'),
(995, '1542897237096', 'processregistration', 'device id of the app', '2018-11-21 20:03:56'),
(996, '1542897375994', 'processregistration', 'device id of the app', '2018-11-21 20:06:15'),
(997, '1542897376971', 'registerdevices', 'device id of the app', '2018-11-21 20:06:15'),
(998, '1542898612836', 'getallproducts', 'device id of the app', '2018-11-21 20:26:53'),
(999, '1542898612835', 'getallproducts', 'device id of the app', '2018-11-21 20:26:53'),
(1000, '1542898612834', 'getallproducts', 'device id of the app', '2018-11-21 20:26:53'),
(1001, '1542898612828', 'getbanners', 'device id of the app', '2018-11-21 20:26:53'),
(1002, '1542898612838', 'allcategories', 'device id of the app', '2018-11-21 20:26:53'),
(1003, '1542898613349', 'sitesetting', 'device id of the app', '2018-11-21 20:26:54'),
(1004, '1542898612838', 'getallpages', 'device id of the app', '2018-11-21 20:26:54'),
(1005, '1542898615886', 'getallproducts', 'device id of the app', '2018-11-21 20:26:54'),
(1006, '1542898686037', 'updatecustomerinfo', 'device id of the app', '2018-11-21 20:28:06'),
(1007, '1542898688309', 'registerdevices', 'device id of the app', '2018-11-21 20:28:07'),
(1008, '1542898698481', 'updatecustomerinfo', 'device id of the app', '2018-11-21 20:28:20'),
(1009, '1542898703685', 'registerdevices', 'device id of the app', '2018-11-21 20:28:23'),
(1010, '1542898711036', 'getlanguages', 'device id of the app', '2018-11-21 20:28:34'),
(1011, '1542898728739', 'getbanners', 'device id of the app', '2018-11-21 20:28:48'),
(1012, '1542898728745', 'getallproducts', 'device id of the app', '2018-11-21 20:28:48'),
(1013, '1542898728746', 'getallproducts', 'device id of the app', '2018-11-21 20:28:48'),
(1014, '1542898728747', 'getallproducts', 'device id of the app', '2018-11-21 20:28:48'),
(1015, '1542898728748', 'getallproducts', 'device id of the app', '2018-11-21 20:28:48'),
(1016, '1542898728749', 'allcategories', 'device id of the app', '2018-11-21 20:28:48'),
(1017, '1542898728751', 'getallpages', 'device id of the app', '2018-11-21 20:28:48'),
(1018, '1542898728935', 'sitesetting', 'device id of the app', '2018-11-21 20:28:48'),
(1019, '1542898730589', 'getallproducts', 'device id of the app', '2018-11-21 20:28:49'),
(1020, '1542898739810', 'getallproducts', 'device id of the app', '2018-11-21 20:28:59'),
(1021, '1542898746868', 'getallproducts', 'device id of the app', '2018-11-21 20:29:06'),
(1022, '1542898762389', 'getlanguages', 'device id of the app', '2018-11-21 20:29:21'),
(1023, '1542898782765', 'getbanners', 'device id of the app', '2018-11-21 20:29:42'),
(1024, '1542898782771', 'getallproducts', 'device id of the app', '2018-11-21 20:29:42'),
(1025, '1542898782774', 'getallproducts', 'device id of the app', '2018-11-21 20:29:42'),
(1026, '1542898782776', 'getallproducts', 'device id of the app', '2018-11-21 20:29:42'),
(1027, '1542898782786', 'getallpages', 'device id of the app', '2018-11-21 20:29:42'),
(1028, '1542898782779', 'getallproducts', 'device id of the app', '2018-11-21 20:29:42'),
(1029, '1542898782782', 'allcategories', 'device id of the app', '2018-11-21 20:29:42'),
(1030, '1542898784335', 'sitesetting', 'device id of the app', '2018-11-21 20:29:43'),
(1031, '1542898784971', 'getallproducts', 'device id of the app', '2018-11-21 20:29:43'),
(1032, '1542898802759', 'getallproducts', 'device id of the app', '2018-11-21 20:30:01'),
(1033, '1542898807786', 'getallproducts', 'device id of the app', '2018-11-21 20:30:06'),
(1034, '1542898810706', 'getallproducts', 'device id of the app', '2018-11-21 20:30:09'),
(1035, '1542898816469', 'getallproducts', 'device id of the app', '2018-11-21 20:30:15'),
(1036, '1542898819303', 'getallproducts', 'device id of the app', '2018-11-21 20:30:18'),
(1037, '1542898823600', 'getallproducts', 'device id of the app', '2018-11-21 20:30:22'),
(1038, '1542898825674', 'getallproducts', 'device id of the app', '2018-11-21 20:30:24'),
(1039, '1542898854117', 'getallproducts', 'device id of the app', '2018-11-21 20:30:53'),
(1040, '1542898874054', 'getallproducts', 'device id of the app', '2018-11-21 20:31:13'),
(1041, '1542898874057', 'getfilters', 'device id of the app', '2018-11-21 20:31:13'),
(1042, '1542898875864', 'getallproducts', 'device id of the app', '2018-11-21 20:31:15'),
(1043, '1542898881029', 'getallproducts', 'device id of the app', '2018-11-21 20:31:19'),
(1044, '1542898881031', 'getfilters', 'device id of the app', '2018-11-21 20:31:20'),
(1045, '1542898883717', 'getallproducts', 'device id of the app', '2018-11-21 20:31:22'),
(1046, '1542898883720', 'getfilters', 'device id of the app', '2018-11-21 20:31:22'),
(1047, '1542898908398', 'getallproducts', 'device id of the app', '2018-11-21 20:31:47'),
(1048, '1542898908400', 'getfilters', 'device id of the app', '2018-11-21 20:31:47'),
(1049, '1542898911068', 'getallproducts', 'device id of the app', '2018-11-21 20:31:49'),
(1050, '1542898911071', 'getfilters', 'device id of the app', '2018-11-21 20:31:49'),
(1051, '1542898912572', 'getallproducts', 'device id of the app', '2018-11-21 20:31:51'),
(1052, '1542898922919', 'getallproducts', 'device id of the app', '2018-11-21 20:32:02'),
(1053, '1542898922922', 'getfilters', 'device id of the app', '2018-11-21 20:32:02'),
(1054, '1542898924881', 'getallproducts', 'device id of the app', '2018-11-21 20:32:03'),
(1055, '1542898928018', 'getfilters', 'device id of the app', '2018-11-21 20:32:06'),
(1056, '1542898928017', 'getallproducts', 'device id of the app', '2018-11-21 20:32:06'),
(1057, '1542898939177', 'getallproducts', 'device id of the app', '2018-11-21 20:32:18'),
(1058, '1542898939178', 'getfilters', 'device id of the app', '2018-11-21 20:32:18'),
(1059, '1542898940713', 'getallproducts', 'device id of the app', '2018-11-21 20:32:19'),
(1060, '1542898957297', 'getallproducts', 'device id of the app', '2018-11-21 20:32:36'),
(1061, '1542898958603', 'getallproducts', 'device id of the app', '2018-11-21 20:32:37'),
(1062, '1542898964942', 'getallproducts', 'device id of the app', '2018-11-21 20:32:43'),
(1063, '1542898964944', 'getfilters', 'device id of the app', '2018-11-21 20:32:44'),
(1064, '1542898968273', 'getallproducts', 'device id of the app', '2018-11-21 20:32:47'),
(1065, '1542898975344', 'getallproducts', 'device id of the app', '2018-11-21 20:32:54'),
(1066, '1542898975346', 'getfilters', 'device id of the app', '2018-11-21 20:32:54'),
(1067, '1542898980436', 'getfilters', 'device id of the app', '2018-11-21 20:32:59'),
(1068, '1542898980433', 'getallproducts', 'device id of the app', '2018-11-21 20:32:59'),
(1069, '1542899021137', 'getallproducts', 'device id of the app', '2018-11-21 20:33:41'),
(1070, '1542899021140', 'getfilters', 'device id of the app', '2018-11-21 20:33:41'),
(1071, '1542899027960', 'getfilters', 'device id of the app', '2018-11-21 20:33:46'),
(1072, '1542899027958', 'getallproducts', 'device id of the app', '2018-11-21 20:33:46'),
(1073, '1542899030316', 'getfilters', 'device id of the app', '2018-11-21 20:33:49'),
(1074, '1542899030314', 'getallproducts', 'device id of the app', '2018-11-21 20:33:49'),
(1075, '1542899034609', 'getfilters', 'device id of the app', '2018-11-21 20:33:53'),
(1076, '1542899034606', 'getallproducts', 'device id of the app', '2018-11-21 20:33:53'),
(1077, '1542899058265', 'getallproducts', 'device id of the app', '2018-11-21 20:34:17'),
(1078, '1542899058266', 'getfilters', 'device id of the app', '2018-11-21 20:34:17'),
(1079, '1542899064447', 'getallnews', 'device id of the app', '2018-11-21 20:34:23'),
(1080, '1542899064449', 'getallnews', 'device id of the app', '2018-11-21 20:34:23'),
(1081, '1542899064451', 'allnewscategories', 'device id of the app', '2018-11-21 20:34:23'),
(1082, '1542899065401', 'allnewscategories', 'device id of the app', '2018-11-21 20:34:24'),
(1083, '1542899073353', 'getallnews', 'device id of the app', '2018-11-21 20:34:32'),
(1084, '1542899081604', 'getallnews', 'device id of the app', '2018-11-21 20:34:40'),
(1085, '1542899084084', 'getallnews', 'device id of the app', '2018-11-21 20:34:42'),
(1086, '1542899090994', 'getallnews', 'device id of the app', '2018-11-21 20:34:49'),
(1087, '1542899102641', 'getallproducts', 'device id of the app', '2018-11-21 20:35:02'),
(1088, '1542899107381', 'getallproducts', 'device id of the app', '2018-11-21 20:35:06'),
(1089, '1542899112626', 'getfilters', 'device id of the app', '2018-11-21 20:35:11'),
(1090, '1542899112624', 'getallproducts', 'device id of the app', '2018-11-21 20:35:12'),
(1091, '1542899121255', 'getallproducts', 'device id of the app', '2018-11-21 20:35:20'),
(1092, '1542899129280', 'getalladdress', 'device id of the app', '2018-11-21 20:35:28'),
(1093, '1542899163506', 'addshippingaddress', 'device id of the app', '2018-11-21 20:36:02'),
(1094, '1542899164593', 'getalladdress', 'device id of the app', '2018-11-21 20:36:03'),
(1095, '1542899170398', 'updatedefaultaddress', 'device id of the app', '2018-11-21 20:36:09'),
(1096, '1542899170922', 'getalladdress', 'device id of the app', '2018-11-21 20:36:09'),
(1097, '1542899182637', 'getallproducts', 'device id of the app', '2018-11-21 20:36:21'),
(1098, '1542899182640', 'getfilters', 'device id of the app', '2018-11-21 20:36:21'),
(1099, '1542899200538', 'getallproducts', 'device id of the app', '2018-11-21 20:36:39'),
(1100, '1542899200540', 'getfilters', 'device id of the app', '2018-11-21 20:36:39'),
(1101, '1542899204441', 'getallproducts', 'device id of the app', '2018-11-21 20:36:43'),
(1102, '1542899204443', 'getfilters', 'device id of the app', '2018-11-21 20:36:43'),
(1103, '1542899207304', 'getfilters', 'device id of the app', '2018-11-21 20:36:46'),
(1104, '1542899207303', 'getallproducts', 'device id of the app', '2018-11-21 20:36:46'),
(1105, '1542899211820', 'getfilters', 'device id of the app', '2018-11-21 20:36:50'),
(1106, '1542899211818', 'getallproducts', 'device id of the app', '2018-11-21 20:36:50'),
(1107, '1542899217210', 'getfilters', 'device id of the app', '2018-11-21 20:36:56'),
(1108, '1542899217208', 'getallproducts', 'device id of the app', '2018-11-21 20:36:56'),
(1109, '1542899219090', 'getallproducts', 'device id of the app', '2018-11-21 20:36:57'),
(1110, '1542899222523', 'getfilters', 'device id of the app', '2018-11-21 20:37:01'),
(1111, '1542899222521', 'getallproducts', 'device id of the app', '2018-11-21 20:37:01'),
(1112, '1542899224946', 'getallproducts', 'device id of the app', '2018-11-21 20:37:03'),
(1113, '1542899224947', 'getfilters', 'device id of the app', '2018-11-21 20:37:03'),
(1114, '1542899227274', 'getfilters', 'device id of the app', '2018-11-21 20:37:06'),
(1115, '1542899227272', 'getallproducts', 'device id of the app', '2018-11-21 20:37:06'),
(1116, '1542899228986', 'getallproducts', 'device id of the app', '2018-11-21 20:37:07'),
(1117, '1542899232878', 'getallproducts', 'device id of the app', '2018-11-21 20:37:11'),
(1118, '1542899232879', 'getfilters', 'device id of the app', '2018-11-21 20:37:12'),
(1119, '1542899234685', 'getallproducts', 'device id of the app', '2018-11-21 20:37:13'),
(1120, '1542899237185', 'getallproducts', 'device id of the app', '2018-11-21 20:37:16'),
(1121, '1542899237187', 'getfilters', 'device id of the app', '2018-11-21 20:37:16'),
(1122, '1542899239309', 'getallproducts', 'device id of the app', '2018-11-21 20:37:18'),
(1123, '1542899243730', 'getalladdress', 'device id of the app', '2018-11-21 20:37:22'),
(1124, '1542899253581', 'getorders', 'device id of the app', '2018-11-21 20:37:32'),
(1125, '1542899255457', 'getfilters', 'device id of the app', '2018-11-21 20:37:34'),
(1126, '1542899255455', 'getallproducts', 'device id of the app', '2018-11-21 20:37:34'),
(1127, '1542899299193', 'getallnews', 'device id of the app', '2018-11-21 20:38:18'),
(1128, '1542899299195', 'allnewscategories', 'device id of the app', '2018-11-21 20:38:18'),
(1129, '1542899299190', 'getallnews', 'device id of the app', '2018-11-21 20:38:18'),
(1130, '1542899300188', 'allnewscategories', 'device id of the app', '2018-11-21 20:38:18'),
(1131, '1542899305701', 'getallproducts', 'device id of the app', '2018-11-21 20:38:24'),
(1132, '1542899368497', 'getallproducts', 'device id of the app', '2018-11-21 20:39:27'),
(1133, '1542899368500', 'getfilters', 'device id of the app', '2018-11-21 20:39:27'),
(1134, '1542899392787', 'likeproduct', 'device id of the app', '2018-11-21 20:39:51'),
(1135, '1542899394530', 'likeproduct', 'device id of the app', '2018-11-21 20:39:53'),
(1136, '1542899398053', 'getallproducts', 'device id of the app', '2018-11-21 20:39:56'),
(1137, '1542899412259', 'getallproducts', 'device id of the app', '2018-11-21 20:40:11'),
(1138, '1542899415659', 'likeproduct', 'device id of the app', '2018-11-21 20:40:14'),
(1139, '1542899416936', 'likeproduct', 'device id of the app', '2018-11-21 20:40:15'),
(1140, '1542899421828', 'getallproducts', 'device id of the app', '2018-11-21 20:40:20'),
(1141, '1542899433326', 'getallproducts', 'device id of the app', '2018-11-21 20:40:32'),
(1142, '1542899433328', 'getfilters', 'device id of the app', '2018-11-21 20:40:32'),
(1143, '1542899449634', 'likeproduct', 'device id of the app', '2018-11-21 20:40:48'),
(1144, '1542899465547', 'getallproducts', 'device id of the app', '2018-11-21 20:41:04'),
(1145, '1542899471055', 'getalladdress', 'device id of the app', '2018-11-21 20:41:09'),
(1146, '1542899487384', 'getrate', 'device id of the app', '2018-11-21 20:41:26'),
(1147, '1542899519644', 'getpaymentmethods', 'device id of the app', '2018-11-21 20:41:58'),
(1148, '1542899520535', 'generatebraintreetoken', 'device id of the app', '2018-11-21 20:41:59'),
(1149, '1542899520538', 'generatebraintreetoken', 'device id of the app', '2018-11-21 20:42:00'),
(1150, '1542899574298', 'addtoorder', 'device id of the app', '2018-11-21 20:42:53'),
(1151, '1542899584126', 'getallproducts', 'device id of the app', '2018-11-21 20:43:02'),
(1152, '1542899592118', 'getorders', 'device id of the app', '2018-11-21 20:43:11'),
(1153, '1542899702642', 'getallproducts', 'device id of the app', '2018-11-21 20:45:02'),
(1154, '1542899702596', 'getbanners', 'device id of the app', '2018-11-21 20:45:02'),
(1155, '1542899702626', 'getallproducts', 'device id of the app', '2018-11-21 20:45:02'),
(1156, '1542899702654', 'getallproducts', 'device id of the app', '2018-11-21 20:45:02'),
(1157, '1542899702667', 'getallproducts', 'device id of the app', '2018-11-21 20:45:03'),
(1158, '1542899702679', 'allcategories', 'device id of the app', '2018-11-21 20:45:03'),
(1159, '1542899703216', 'sitesetting', 'device id of the app', '2018-11-21 20:45:03');
INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1160, '1542899702693', 'getallpages', 'device id of the app', '2018-11-21 20:45:03'),
(1161, '1542899705613', 'getallproducts', 'device id of the app', '2018-11-21 20:45:04'),
(1162, '1542899899954', 'getorders', 'device id of the app', '2018-11-21 20:48:19'),
(1163, '1542965318697', 'getbanners', 'device id of the app', '2018-11-23 02:58:31'),
(1164, '1542965318703', 'getallproducts', 'device id of the app', '2018-11-23 02:58:31'),
(1165, '1542965318704', 'getallproducts', 'device id of the app', '2018-11-23 02:58:31'),
(1166, '1542965318701', 'getallproducts', 'device id of the app', '2018-11-23 02:58:31'),
(1167, '1542965318705', 'allcategories', 'device id of the app', '2018-11-23 02:58:31'),
(1168, '1542965318706', 'getallpages', 'device id of the app', '2018-11-23 02:58:32'),
(1169, '1542965318864', 'sitesetting', 'device id of the app', '2018-11-23 02:58:32'),
(1170, '1542965320929', 'getallproducts', 'device id of the app', '2018-11-23 02:58:32'),
(1171, '1542965643911', 'getallproducts', 'device id of the app', '2018-11-23 03:03:56'),
(1172, '1542965643908', 'getbanners', 'device id of the app', '2018-11-23 03:03:56'),
(1173, '1542965643914', 'getallproducts', 'device id of the app', '2018-11-23 03:03:57'),
(1174, '1542965643912', 'getallproducts', 'device id of the app', '2018-11-23 03:03:57'),
(1175, '1542965643915', 'allcategories', 'device id of the app', '2018-11-23 03:03:57'),
(1176, '1542965643915', 'getallpages', 'device id of the app', '2018-11-23 03:03:57'),
(1177, '1542965644158', 'sitesetting', 'device id of the app', '2018-11-23 03:03:57'),
(1178, '1542965646879', 'getallproducts', 'device id of the app', '2018-11-23 03:03:59'),
(1179, '1542965770707', 'getbanners', 'device id of the app', '2018-11-23 03:06:03'),
(1180, '1542965770712', 'getallproducts', 'device id of the app', '2018-11-23 03:06:03'),
(1181, '1542965770713', 'getallproducts', 'device id of the app', '2018-11-23 03:06:04'),
(1182, '1542965770714', 'getallproducts', 'device id of the app', '2018-11-23 03:06:04'),
(1183, '1542965770710', 'getallproducts', 'device id of the app', '2018-11-23 03:06:04'),
(1184, '1542965770715', 'getallpages', 'device id of the app', '2018-11-23 03:06:04'),
(1185, '1542965770714', 'allcategories', 'device id of the app', '2018-11-23 03:06:04'),
(1186, '1542965770958', 'sitesetting', 'device id of the app', '2018-11-23 03:06:04'),
(1187, '1542965777466', 'getallproducts', 'device id of the app', '2018-11-23 03:06:10'),
(1188, '1542965777464', 'getallproducts', 'device id of the app', '2018-11-23 03:06:10'),
(1189, '1542965777468', 'allcategories', 'device id of the app', '2018-11-23 03:06:10'),
(1190, '1542965777460', 'getbanners', 'device id of the app', '2018-11-23 03:06:10'),
(1191, '1542965777467', 'getallproducts', 'device id of the app', '2018-11-23 03:06:10'),
(1192, '1542965777722', 'sitesetting', 'device id of the app', '2018-11-23 03:06:10'),
(1193, '1542965777468', 'getallpages', 'device id of the app', '2018-11-23 03:06:10'),
(1194, '1542965779681', 'getallproducts', 'device id of the app', '2018-11-23 03:06:11'),
(1195, '1542965793070', 'getbanners', 'device id of the app', '2018-11-23 03:06:25'),
(1196, '1542965793074', 'getallproducts', 'device id of the app', '2018-11-23 03:06:25'),
(1197, '1542965793075', 'getallproducts', 'device id of the app', '2018-11-23 03:06:25'),
(1198, '1542965793073', 'getallproducts', 'device id of the app', '2018-11-23 03:06:26'),
(1199, '1542965793076', 'allcategories', 'device id of the app', '2018-11-23 03:06:26'),
(1200, '1542965793077', 'getallpages', 'device id of the app', '2018-11-23 03:06:26'),
(1201, '1542965793345', 'sitesetting', 'device id of the app', '2018-11-23 03:06:26'),
(1202, '1542965795333', 'getallproducts', 'device id of the app', '2018-11-23 03:06:26'),
(1203, '1542965857568', 'getallproducts', 'device id of the app', '2018-11-23 03:07:31'),
(1204, '1542965857570', 'getallproducts', 'device id of the app', '2018-11-23 03:07:31'),
(1205, '1542965857565', 'getbanners', 'device id of the app', '2018-11-23 03:07:31'),
(1206, '1542965857572', 'getallproducts', 'device id of the app', '2018-11-23 03:07:31'),
(1207, '1542965857572', 'allcategories', 'device id of the app', '2018-11-23 03:07:31'),
(1208, '1542965857573', 'getallpages', 'device id of the app', '2018-11-23 03:07:31'),
(1209, '1542965857829', 'sitesetting', 'device id of the app', '2018-11-23 03:07:32'),
(1210, '1542965860896', 'getallproducts', 'device id of the app', '2018-11-23 03:07:32'),
(1211, '1542965865146', 'getalladdress', 'device id of the app', '2018-11-23 03:07:37'),
(1212, '1542966050767', 'getallproducts', 'device id of the app', '2018-11-23 03:10:43'),
(1213, '1542966050761', 'getbanners', 'device id of the app', '2018-11-23 03:10:43'),
(1214, '1542966050765', 'getallproducts', 'device id of the app', '2018-11-23 03:10:43'),
(1215, '1542966050766', 'getallproducts', 'device id of the app', '2018-11-23 03:10:43'),
(1216, '1542966050768', 'allcategories', 'device id of the app', '2018-11-23 03:10:43'),
(1217, '1542966050768', 'getallproducts', 'device id of the app', '2018-11-23 03:10:43'),
(1218, '1542966050769', 'getallpages', 'device id of the app', '2018-11-23 03:10:44'),
(1219, '1542966051024', 'sitesetting', 'device id of the app', '2018-11-23 03:10:44'),
(1220, '1542966052946', 'getallproducts', 'device id of the app', '2018-11-23 03:10:44'),
(1221, '1542966093341', 'getallproducts', 'device id of the app', '2018-11-23 03:11:26'),
(1222, '1542966093340', 'getallproducts', 'device id of the app', '2018-11-23 03:11:26'),
(1223, '1542966093336', 'getbanners', 'device id of the app', '2018-11-23 03:11:26'),
(1224, '1542966093342', 'getallproducts', 'device id of the app', '2018-11-23 03:11:26'),
(1225, '1542966093343', 'allcategories', 'device id of the app', '2018-11-23 03:11:26'),
(1226, '1542966093343', 'getallpages', 'device id of the app', '2018-11-23 03:11:26'),
(1227, '1542966093502', 'sitesetting', 'device id of the app', '2018-11-23 03:11:26'),
(1228, '1542966095499', 'getallproducts', 'device id of the app', '2018-11-23 03:11:27'),
(1229, '1542966099374', 'getalladdress', 'device id of the app', '2018-11-23 03:11:31'),
(1230, '1542966178929', 'getbanners', 'device id of the app', '2018-11-23 03:12:51'),
(1231, '1542966178933', 'getallproducts', 'device id of the app', '2018-11-23 03:12:51'),
(1232, '1542966178936', 'getallproducts', 'device id of the app', '2018-11-23 03:12:51'),
(1233, '1542966178935', 'getallproducts', 'device id of the app', '2018-11-23 03:12:52'),
(1234, '1542966178939', 'getallpages', 'device id of the app', '2018-11-23 03:12:52'),
(1235, '1542966179460', 'sitesetting', 'device id of the app', '2018-11-23 03:12:52'),
(1236, '1542966178938', 'allcategories', 'device id of the app', '2018-11-23 03:12:52'),
(1237, '1542966181101', 'getallproducts', 'device id of the app', '2018-11-23 03:12:52'),
(1238, '1542966197058', 'getallproducts', 'device id of the app', '2018-11-23 03:13:09'),
(1239, '1542966197052', 'getbanners', 'device id of the app', '2018-11-23 03:13:09'),
(1240, '1542966197056', 'getallproducts', 'device id of the app', '2018-11-23 03:13:09'),
(1241, '1542966197057', 'getallproducts', 'device id of the app', '2018-11-23 03:13:10'),
(1242, '1542966197059', 'allcategories', 'device id of the app', '2018-11-23 03:13:10'),
(1243, '1542966197092', 'getallpages', 'device id of the app', '2018-11-23 03:13:10'),
(1244, '1542966197273', 'sitesetting', 'device id of the app', '2018-11-23 03:13:10'),
(1245, '1542966199236', 'getallproducts', 'device id of the app', '2018-11-23 03:13:10'),
(1246, '1542966202932', 'getalladdress', 'device id of the app', '2018-11-23 03:13:15'),
(1247, '1542966322377', 'getalladdress', 'device id of the app', '2018-11-23 03:15:14'),
(1248, '1542966332579', 'getrate', 'device id of the app', '2018-11-23 03:15:24'),
(1249, '1542966355398', 'getpaymentmethods', 'device id of the app', '2018-11-23 03:15:47'),
(1250, '1542966356548', 'generatebraintreetoken', 'device id of the app', '2018-11-23 03:15:48'),
(1251, '1542966356550', 'generatebraintreetoken', 'device id of the app', '2018-11-23 03:15:49'),
(1252, '1542966581309', 'getallproducts', 'device id of the app', '2018-11-23 03:19:36'),
(1253, '1542966912220', 'getallproducts', 'device id of the app', '2018-11-23 03:25:04'),
(1254, '1542967191569', 'getallproducts', 'device id of the app', '2018-11-23 03:29:44'),
(1255, '1542967410401', 'getallproducts', 'device id of the app', '2018-11-23 03:33:23'),
(1256, '1542967410398', 'getbanners', 'device id of the app', '2018-11-23 03:33:23'),
(1257, '1542967410405', 'allcategories', 'device id of the app', '2018-11-23 03:33:23'),
(1258, '1542967410404', 'getallproducts', 'device id of the app', '2018-11-23 03:33:23'),
(1259, '1542967410403', 'getallproducts', 'device id of the app', '2018-11-23 03:33:23'),
(1260, '1542967410411', 'getallpages', 'device id of the app', '2018-11-23 03:33:23'),
(1261, '1542967410893', 'sitesetting', 'device id of the app', '2018-11-23 03:33:23'),
(1262, '1542967412599', 'getallproducts', 'device id of the app', '2018-11-23 03:33:24'),
(1263, '1542967484325', 'getbanners', 'device id of the app', '2018-11-23 03:34:37'),
(1264, '1542967484329', 'getallproducts', 'device id of the app', '2018-11-23 03:34:37'),
(1265, '1542967484330', 'getallproducts', 'device id of the app', '2018-11-23 03:34:37'),
(1266, '1542967484331', 'getallproducts', 'device id of the app', '2018-11-23 03:34:37'),
(1267, '1542967484332', 'allcategories', 'device id of the app', '2018-11-23 03:34:37'),
(1268, '1542967484849', 'sitesetting', 'device id of the app', '2018-11-23 03:34:37'),
(1269, '1542967484334', 'getallpages', 'device id of the app', '2018-11-23 03:34:37'),
(1270, '1542967486482', 'getallproducts', 'device id of the app', '2018-11-23 03:34:38'),
(1271, '1542967500388', 'getbanners', 'device id of the app', '2018-11-23 03:34:53'),
(1272, '1542967500392', 'getallproducts', 'device id of the app', '2018-11-23 03:34:53'),
(1273, '1542967500395', 'getallproducts', 'device id of the app', '2018-11-23 03:34:53'),
(1274, '1542967500394', 'getallproducts', 'device id of the app', '2018-11-23 03:34:53'),
(1275, '1542967500401', 'allcategories', 'device id of the app', '2018-11-23 03:34:53'),
(1276, '1542967500403', 'getallpages', 'device id of the app', '2018-11-23 03:34:53'),
(1277, '1542967500581', 'sitesetting', 'device id of the app', '2018-11-23 03:34:53'),
(1278, '1542967502555', 'getallproducts', 'device id of the app', '2018-11-23 03:34:54'),
(1279, '1542967619270', 'getallnews', 'device id of the app', '2018-11-23 03:36:51'),
(1280, '1542967619271', 'allnewscategories', 'device id of the app', '2018-11-23 03:36:51'),
(1281, '1542967619269', 'getallnews', 'device id of the app', '2018-11-23 03:36:51'),
(1282, '1542967620837', 'allnewscategories', 'device id of the app', '2018-11-23 03:36:52'),
(1283, '1542967643039', 'getbanners', 'device id of the app', '2018-11-23 03:37:15'),
(1284, '1542967643043', 'getallproducts', 'device id of the app', '2018-11-23 03:37:15'),
(1285, '1542967643044', 'getallproducts', 'device id of the app', '2018-11-23 03:37:15'),
(1286, '1542967643045', 'getallproducts', 'device id of the app', '2018-11-23 03:37:15'),
(1287, '1542967643046', 'allcategories', 'device id of the app', '2018-11-23 03:37:16'),
(1288, '1542967643535', 'sitesetting', 'device id of the app', '2018-11-23 03:37:16'),
(1289, '1542967643047', 'getallpages', 'device id of the app', '2018-11-23 03:37:16'),
(1290, '1542967645087', 'getallproducts', 'device id of the app', '2018-11-23 03:37:16'),
(1291, '1542967667525', 'getallproducts', 'device id of the app', '2018-11-23 03:37:40'),
(1292, '1542967667527', 'getallproducts', 'device id of the app', '2018-11-23 03:37:40'),
(1293, '1542967667522', 'getbanners', 'device id of the app', '2018-11-23 03:37:40'),
(1294, '1542967667526', 'getallproducts', 'device id of the app', '2018-11-23 03:37:40'),
(1295, '1542967667528', 'getallproducts', 'device id of the app', '2018-11-23 03:37:40'),
(1296, '1542967667528', 'allcategories', 'device id of the app', '2018-11-23 03:37:40'),
(1297, '1542967667529', 'getallpages', 'device id of the app', '2018-11-23 03:37:40'),
(1298, '1542967667738', 'sitesetting', 'device id of the app', '2018-11-23 03:37:40'),
(1299, '1542967669717', 'getallproducts', 'device id of the app', '2018-11-23 03:37:41'),
(1300, '1542967679615', 'allnewscategories', 'device id of the app', '2018-11-23 03:37:52'),
(1301, '1542967679613', 'getallnews', 'device id of the app', '2018-11-23 03:37:52'),
(1302, '1542967679614', 'getallnews', 'device id of the app', '2018-11-23 03:37:52'),
(1303, '1542967680887', 'allnewscategories', 'device id of the app', '2018-11-23 03:37:52'),
(1304, '1542967795113', 'getallproducts', 'device id of the app', '2018-11-23 03:39:48'),
(1305, '1542967795110', 'getbanners', 'device id of the app', '2018-11-23 03:39:48'),
(1306, '1542967795115', 'getallproducts', 'device id of the app', '2018-11-23 03:39:48'),
(1307, '1542967795117', 'allcategories', 'device id of the app', '2018-11-23 03:39:48'),
(1308, '1542967795116', 'getallproducts', 'device id of the app', '2018-11-23 03:39:48'),
(1309, '1542967795248', 'sitesetting', 'device id of the app', '2018-11-23 03:39:48'),
(1310, '1542967795117', 'getallpages', 'device id of the app', '2018-11-23 03:39:48'),
(1311, '1542967797419', 'getallproducts', 'device id of the app', '2018-11-23 03:39:49'),
(1312, '1542967808969', 'getallnews', 'device id of the app', '2018-11-23 03:40:01'),
(1313, '1542967808970', 'getallnews', 'device id of the app', '2018-11-23 03:40:01'),
(1314, '1542967808971', 'allnewscategories', 'device id of the app', '2018-11-23 03:40:01'),
(1315, '1542967810593', 'allnewscategories', 'device id of the app', '2018-11-23 03:40:02'),
(1316, '1542967895610', 'getallproducts', 'device id of the app', '2018-11-23 03:41:28'),
(1317, '1542967895605', 'getbanners', 'device id of the app', '2018-11-23 03:41:28'),
(1318, '1542967895613', 'getallproducts', 'device id of the app', '2018-11-23 03:41:28'),
(1319, '1542967895611', 'getallproducts', 'device id of the app', '2018-11-23 03:41:28'),
(1320, '1542967895612', 'getallproducts', 'device id of the app', '2018-11-23 03:41:28'),
(1321, '1542967895613', 'allcategories', 'device id of the app', '2018-11-23 03:41:28'),
(1322, '1542967895614', 'getallpages', 'device id of the app', '2018-11-23 03:41:28'),
(1323, '1542967895833', 'sitesetting', 'device id of the app', '2018-11-23 03:41:28'),
(1324, '1542967897767', 'getallproducts', 'device id of the app', '2018-11-23 03:41:29'),
(1325, '1542967902682', 'getallnews', 'device id of the app', '2018-11-23 03:41:34'),
(1326, '1542967902684', 'getallnews', 'device id of the app', '2018-11-23 03:41:35'),
(1327, '1542967902684', 'allnewscategories', 'device id of the app', '2018-11-23 03:41:35'),
(1328, '1542967903954', 'allnewscategories', 'device id of the app', '2018-11-23 03:41:35'),
(1329, '1542967969546', 'getbanners', 'device id of the app', '2018-11-23 03:42:42'),
(1330, '1542967969549', 'getallproducts', 'device id of the app', '2018-11-23 03:42:42'),
(1331, '1542967969550', 'getallproducts', 'device id of the app', '2018-11-23 03:42:42'),
(1332, '1542967969551', 'getallproducts', 'device id of the app', '2018-11-23 03:42:42'),
(1333, '1542967969552', 'getallproducts', 'device id of the app', '2018-11-23 03:42:42'),
(1334, '1542967969552', 'allcategories', 'device id of the app', '2018-11-23 03:42:42'),
(1335, '1542967969553', 'getallpages', 'device id of the app', '2018-11-23 03:42:42'),
(1336, '1542967970066', 'sitesetting', 'device id of the app', '2018-11-23 03:42:42'),
(1337, '1542967971761', 'getallproducts', 'device id of the app', '2018-11-23 03:42:43'),
(1338, '1542968095153', 'getbanners', 'device id of the app', '2018-11-23 03:44:48'),
(1339, '1542968095158', 'getallproducts', 'device id of the app', '2018-11-23 03:44:48'),
(1340, '1542968095159', 'getallproducts', 'device id of the app', '2018-11-23 03:44:48'),
(1341, '1542968095160', 'allcategories', 'device id of the app', '2018-11-23 03:44:48'),
(1342, '1542968095157', 'getallproducts', 'device id of the app', '2018-11-23 03:44:48'),
(1343, '1542968095160', 'getallproducts', 'device id of the app', '2018-11-23 03:44:48'),
(1344, '1542968095161', 'getallpages', 'device id of the app', '2018-11-23 03:44:48'),
(1345, '1542968095369', 'sitesetting', 'device id of the app', '2018-11-23 03:44:48'),
(1346, '1542968097403', 'getallproducts', 'device id of the app', '2018-11-23 03:44:49'),
(1347, '1542968109315', 'getallproducts', 'device id of the app', '2018-11-23 03:45:02'),
(1348, '1542968109316', 'getallproducts', 'device id of the app', '2018-11-23 03:45:02'),
(1349, '1542968109312', 'getbanners', 'device id of the app', '2018-11-23 03:45:02'),
(1350, '1542968109318', 'getallproducts', 'device id of the app', '2018-11-23 03:45:02'),
(1351, '1542968109319', 'getallpages', 'device id of the app', '2018-11-23 03:45:02'),
(1352, '1542968109318', 'allcategories', 'device id of the app', '2018-11-23 03:45:02'),
(1353, '1542968109797', 'sitesetting', 'device id of the app', '2018-11-23 03:45:02'),
(1354, '1542968111792', 'getallproducts', 'device id of the app', '2018-11-23 03:45:03'),
(1355, '1542968279206', 'getbanners', 'device id of the app', '2018-11-23 03:47:51'),
(1356, '1542968279215', 'getallproducts', 'device id of the app', '2018-11-23 03:47:52'),
(1357, '1542968279209', 'getallproducts', 'device id of the app', '2018-11-23 03:47:52'),
(1358, '1542968279214', 'getallproducts', 'device id of the app', '2018-11-23 03:47:52'),
(1359, '1542968279216', 'allcategories', 'device id of the app', '2018-11-23 03:47:52'),
(1360, '1542968279217', 'getallpages', 'device id of the app', '2018-11-23 03:47:52'),
(1361, '1542968279771', 'sitesetting', 'device id of the app', '2018-11-23 03:47:52'),
(1362, '1542968281398', 'getallproducts', 'device id of the app', '2018-11-23 03:47:53'),
(1363, '1542968289184', 'getallproducts', 'device id of the app', '2018-11-23 03:48:02'),
(1364, '1542968289185', 'getallproducts', 'device id of the app', '2018-11-23 03:48:02'),
(1365, '1542968289186', 'getallproducts', 'device id of the app', '2018-11-23 03:48:02'),
(1366, '1542968289180', 'getbanners', 'device id of the app', '2018-11-23 03:48:02'),
(1367, '1542968289188', 'getallpages', 'device id of the app', '2018-11-23 03:48:02'),
(1368, '1542968289188', 'allcategories', 'device id of the app', '2018-11-23 03:48:02'),
(1369, '1542968289758', 'sitesetting', 'device id of the app', '2018-11-23 03:48:02'),
(1370, '1542968291826', 'getallproducts', 'device id of the app', '2018-11-23 03:48:03'),
(1371, '1542968349461', 'getallproducts', 'device id of the app', '2018-11-23 03:49:02'),
(1372, '1542968349459', 'getallproducts', 'device id of the app', '2018-11-23 03:49:02'),
(1373, '1542968349454', 'getbanners', 'device id of the app', '2018-11-23 03:49:02'),
(1374, '1542968349460', 'getallproducts', 'device id of the app', '2018-11-23 03:49:02'),
(1375, '1542968349462', 'allcategories', 'device id of the app', '2018-11-23 03:49:02'),
(1376, '1542968349463', 'getallpages', 'device id of the app', '2018-11-23 03:49:02'),
(1377, '1542968350033', 'sitesetting', 'device id of the app', '2018-11-23 03:49:02'),
(1378, '1542968351721', 'getallproducts', 'device id of the app', '2018-11-23 03:49:03'),
(1379, '1542968477084', 'getbanners', 'device id of the app', '2018-11-23 03:51:09'),
(1380, '1542968477088', 'getallproducts', 'device id of the app', '2018-11-23 03:51:09'),
(1381, '1542968477089', 'getallproducts', 'device id of the app', '2018-11-23 03:51:09'),
(1382, '1542968477090', 'getallproducts', 'device id of the app', '2018-11-23 03:51:10'),
(1383, '1542968477092', 'allcategories', 'device id of the app', '2018-11-23 03:51:10'),
(1384, '1542968477092', 'getallpages', 'device id of the app', '2018-11-23 03:51:10'),
(1385, '1542968477595', 'sitesetting', 'device id of the app', '2018-11-23 03:51:10'),
(1386, '1542968479224', 'getallproducts', 'device id of the app', '2018-11-23 03:51:10'),
(1387, '1542969364274', 'getallproducts', 'device id of the app', '2018-11-23 04:05:57'),
(1388, '1542969364276', 'getallproducts', 'device id of the app', '2018-11-23 04:05:57'),
(1389, '1542969364270', 'getbanners', 'device id of the app', '2018-11-23 04:05:57'),
(1390, '1542969364275', 'getallproducts', 'device id of the app', '2018-11-23 04:05:57'),
(1391, '1542969364278', 'getallpages', 'device id of the app', '2018-11-23 04:05:57'),
(1392, '1542969364802', 'sitesetting', 'device id of the app', '2018-11-23 04:05:57'),
(1393, '1542969364277', 'allcategories', 'device id of the app', '2018-11-23 04:05:57'),
(1394, '1542969366567', 'getallproducts', 'device id of the app', '2018-11-23 04:05:58'),
(1395, '1542969491007', 'getallproducts', 'device id of the app', '2018-11-23 04:08:12'),
(1396, '1542969491005', 'getallproducts', 'device id of the app', '2018-11-23 04:08:12'),
(1397, '1542969491001', 'getbanners', 'device id of the app', '2018-11-23 04:08:12'),
(1398, '1542969491010', 'getallproducts', 'device id of the app', '2018-11-23 04:08:13'),
(1399, '1542969491008', 'getallproducts', 'device id of the app', '2018-11-23 04:08:13'),
(1400, '1542969491011', 'allcategories', 'device id of the app', '2018-11-23 04:08:13'),
(1401, '1542969491012', 'getallpages', 'device id of the app', '2018-11-23 04:08:13'),
(1402, '1542969491134', 'sitesetting', 'device id of the app', '2018-11-23 04:08:13'),
(1403, '1542969493577', 'getallproducts', 'device id of the app', '2018-11-23 04:08:13'),
(1404, '1542969554249', 'getbanners', 'device id of the app', '2018-11-23 04:09:15'),
(1405, '1542969554255', 'getallproducts', 'device id of the app', '2018-11-23 04:09:15'),
(1406, '1542969554254', 'getallproducts', 'device id of the app', '2018-11-23 04:09:15'),
(1407, '1542969554252', 'getallproducts', 'device id of the app', '2018-11-23 04:09:15'),
(1408, '1542969554256', 'allcategories', 'device id of the app', '2018-11-23 04:09:16'),
(1409, '1542969554257', 'getallpages', 'device id of the app', '2018-11-23 04:09:16'),
(1410, '1542969554426', 'sitesetting', 'device id of the app', '2018-11-23 04:09:16'),
(1411, '1542969556495', 'getallproducts', 'device id of the app', '2018-11-23 04:09:16'),
(1412, '1542969572317', 'getbanners', 'device id of the app', '2018-11-23 04:09:33'),
(1413, '1542969572322', 'getallproducts', 'device id of the app', '2018-11-23 04:09:33'),
(1414, '1542969572321', 'getallproducts', 'device id of the app', '2018-11-23 04:09:33'),
(1415, '1542969572323', 'getallproducts', 'device id of the app', '2018-11-23 04:09:34'),
(1416, '1542969572324', 'getallproducts', 'device id of the app', '2018-11-23 04:09:34'),
(1417, '1542969572326', 'allcategories', 'device id of the app', '2018-11-23 04:09:34'),
(1418, '1542969572328', 'getallpages', 'device id of the app', '2018-11-23 04:09:34'),
(1419, '1542969572905', 'sitesetting', 'device id of the app', '2018-11-23 04:09:34'),
(1420, '1542969643866', 'getbanners', 'device id of the app', '2018-11-23 04:10:49'),
(1421, '1542969643870', 'getallproducts', 'device id of the app', '2018-11-23 04:10:49'),
(1422, '1542969643871', 'getallproducts', 'device id of the app', '2018-11-23 04:10:49'),
(1423, '1542969643872', 'getallproducts', 'device id of the app', '2018-11-23 04:10:49'),
(1424, '1542969643873', 'getallproducts', 'device id of the app', '2018-11-23 04:10:49'),
(1425, '1542969643874', 'getallpages', 'device id of the app', '2018-11-23 04:10:49'),
(1426, '1542969644114', 'sitesetting', 'device id of the app', '2018-11-23 04:10:49'),
(1427, '1542969643874', 'allcategories', 'device id of the app', '2018-11-23 04:10:49'),
(1428, '1542969650530', 'getallproducts', 'device id of the app', '2018-11-23 04:10:50'),
(1429, '1542969669156', 'getallproducts', 'device id of the app', '2018-11-23 04:11:11'),
(1430, '1542969669154', 'getallproducts', 'device id of the app', '2018-11-23 04:11:11'),
(1431, '1542969669153', 'getallproducts', 'device id of the app', '2018-11-23 04:11:11'),
(1432, '1542969669149', 'getbanners', 'device id of the app', '2018-11-23 04:11:11'),
(1433, '1542969669158', 'allcategories', 'device id of the app', '2018-11-23 04:11:11'),
(1434, '1542969669479', 'sitesetting', 'device id of the app', '2018-11-23 04:11:12'),
(1435, '1542969669157', 'getallproducts', 'device id of the app', '2018-11-23 04:11:12'),
(1436, '1542969669159', 'getallpages', 'device id of the app', '2018-11-23 04:11:12'),
(1437, '1542969672596', 'getallproducts', 'device id of the app', '2018-11-23 04:11:12'),
(1438, '1542969728279', 'getallproducts', 'device id of the app', '2018-11-23 04:12:10'),
(1439, '1542969728280', 'getallproducts', 'device id of the app', '2018-11-23 04:12:10'),
(1440, '1542969728277', 'getallproducts', 'device id of the app', '2018-11-23 04:12:10'),
(1441, '1542969728274', 'getbanners', 'device id of the app', '2018-11-23 04:12:11'),
(1442, '1542969728281', 'allcategories', 'device id of the app', '2018-11-23 04:12:11'),
(1443, '1542969728663', 'sitesetting', 'device id of the app', '2018-11-23 04:12:11'),
(1444, '1542969728282', 'getallpages', 'device id of the app', '2018-11-23 04:12:11'),
(1445, '1542969731536', 'getallproducts', 'device id of the app', '2018-11-23 04:12:11'),
(1446, '1542969743143', 'getallproducts', 'device id of the app', '2018-11-23 04:12:25'),
(1447, '1542969743144', 'getallproducts', 'device id of the app', '2018-11-23 04:12:25'),
(1448, '1542969743139', 'getbanners', 'device id of the app', '2018-11-23 04:12:26'),
(1449, '1542969743145', 'getallproducts', 'device id of the app', '2018-11-23 04:12:26'),
(1450, '1542969743146', 'allcategories', 'device id of the app', '2018-11-23 04:12:26'),
(1451, '1542969743147', 'getallpages', 'device id of the app', '2018-11-23 04:12:26'),
(1452, '1542969743146', 'getallproducts', 'device id of the app', '2018-11-23 04:12:26'),
(1453, '1542969743404', 'sitesetting', 'device id of the app', '2018-11-23 04:12:27'),
(1454, '1542969748312', 'getallproducts', 'device id of the app', '2018-11-23 04:12:28'),
(1455, '1542969750740', 'getallproducts', 'device id of the app', '2018-11-23 04:12:32'),
(1456, '1542969761724', 'getallproducts', 'device id of the app', '2018-11-23 04:12:44'),
(1457, '1542969773810', 'processlogin', 'device id of the app', '2018-11-23 04:12:55'),
(1458, '1542969777292', 'getalladdress', 'device id of the app', '2018-11-23 04:12:58'),
(1459, '1542969785930', 'getrate', 'device id of the app', '2018-11-23 04:13:07'),
(1460, '1542969790981', 'getpaymentmethods', 'device id of the app', '2018-11-23 04:13:11'),
(1461, '1542969792135', 'generatebraintreetoken', 'device id of the app', '2018-11-23 04:13:13'),
(1462, '1542969792137', 'generatebraintreetoken', 'device id of the app', '2018-11-23 04:13:16'),
(1463, '1542969825245', 'getallproducts', 'device id of the app', '2018-11-23 04:13:47'),
(1464, '1542969830544', 'getallproducts', 'device id of the app', '2018-11-23 04:13:51'),
(1465, '1542969881994', 'getallproducts', 'device id of the app', '2018-11-23 04:14:44'),
(1466, '1542969881996', 'getallproducts', 'device id of the app', '2018-11-23 04:14:44'),
(1467, '1542969881991', 'getbanners', 'device id of the app', '2018-11-23 04:14:44'),
(1468, '1542969881998', 'getallproducts', 'device id of the app', '2018-11-23 04:14:45'),
(1469, '1542969881998', 'allcategories', 'device id of the app', '2018-11-23 04:14:45'),
(1470, '1542969881999', 'getallpages', 'device id of the app', '2018-11-23 04:14:45'),
(1471, '1542969882143', 'sitesetting', 'device id of the app', '2018-11-23 04:14:45'),
(1472, '1542969886237', 'getallproducts', 'device id of the app', '2018-11-23 04:14:46'),
(1473, '1542970034060', 'getallproducts', 'device id of the app', '2018-11-23 04:17:15'),
(1474, '1542970034055', 'getbanners', 'device id of the app', '2018-11-23 04:17:15'),
(1475, '1542970034058', 'getallproducts', 'device id of the app', '2018-11-23 04:17:15'),
(1476, '1542970034061', 'getallproducts', 'device id of the app', '2018-11-23 04:17:15'),
(1477, '1542970034064', 'allcategories', 'device id of the app', '2018-11-23 04:17:16'),
(1478, '1542970034065', 'getallpages', 'device id of the app', '2018-11-23 04:17:16'),
(1479, '1542970034189', 'sitesetting', 'device id of the app', '2018-11-23 04:17:16'),
(1480, '1542970036602', 'getallproducts', 'device id of the app', '2018-11-23 04:17:16'),
(1481, '1542970082595', 'getbanners', 'device id of the app', '2018-11-23 04:18:03'),
(1482, '1542970082599', 'getallproducts', 'device id of the app', '2018-11-23 04:18:04'),
(1483, '1542970082602', 'getallproducts', 'device id of the app', '2018-11-23 04:18:04'),
(1484, '1542970082601', 'getallproducts', 'device id of the app', '2018-11-23 04:18:04'),
(1485, '1542970082604', 'getallpages', 'device id of the app', '2018-11-23 04:18:04'),
(1486, '1542970082603', 'allcategories', 'device id of the app', '2018-11-23 04:18:04'),
(1487, '1542970082719', 'sitesetting', 'device id of the app', '2018-11-23 04:18:04'),
(1488, '1542970084800', 'getallproducts', 'device id of the app', '2018-11-23 04:18:05'),
(1489, '1542970087695', 'getallproducts', 'device id of the app', '2018-11-23 04:18:08'),
(1490, '1542970087694', 'getallproducts', 'device id of the app', '2018-11-23 04:18:08'),
(1491, '1542970087689', 'getbanners', 'device id of the app', '2018-11-23 04:18:09'),
(1492, '1542970087692', 'getallproducts', 'device id of the app', '2018-11-23 04:18:09'),
(1493, '1542970087696', 'allcategories', 'device id of the app', '2018-11-23 04:18:09'),
(1494, '1542970087698', 'getallpages', 'device id of the app', '2018-11-23 04:18:09'),
(1495, '1542970087850', 'sitesetting', 'device id of the app', '2018-11-23 04:18:09'),
(1496, '1542970089777', 'getallproducts', 'device id of the app', '2018-11-23 04:18:10'),
(1497, '1542970168144', 'getbanners', 'device id of the app', '2018-11-23 04:19:29'),
(1498, '1542970168148', 'getallproducts', 'device id of the app', '2018-11-23 04:19:29'),
(1499, '1542970168151', 'getallproducts', 'device id of the app', '2018-11-23 04:19:29'),
(1500, '1542970168153', 'getallproducts', 'device id of the app', '2018-11-23 04:19:30'),
(1501, '1542970168154', 'getallproducts', 'device id of the app', '2018-11-23 04:19:30'),
(1502, '1542970168155', 'allcategories', 'device id of the app', '2018-11-23 04:19:30'),
(1503, '1542970168156', 'getallpages', 'device id of the app', '2018-11-23 04:19:30'),
(1504, '1542970168520', 'sitesetting', 'device id of the app', '2018-11-23 04:19:30'),
(1505, '1542970170691', 'getallproducts', 'device id of the app', '2018-11-23 04:19:30'),
(1506, '1542970200667', 'getbanners', 'device id of the app', '2018-11-23 04:20:02'),
(1507, '1542970200672', 'getallproducts', 'device id of the app', '2018-11-23 04:20:02'),
(1508, '1542970200671', 'getallproducts', 'device id of the app', '2018-11-23 04:20:02'),
(1509, '1542970200674', 'getallpages', 'device id of the app', '2018-11-23 04:20:02'),
(1510, '1542970200799', 'sitesetting', 'device id of the app', '2018-11-23 04:20:02'),
(1511, '1542970200673', 'getallproducts', 'device id of the app', '2018-11-23 04:20:02'),
(1512, '1542970200673', 'allcategories', 'device id of the app', '2018-11-23 04:20:03'),
(1513, '1542970203299', 'getallproducts', 'device id of the app', '2018-11-23 04:20:03'),
(1514, '1542970209905', 'getallproducts', 'device id of the app', '2018-11-23 04:20:11'),
(1515, '1542970209903', 'getallproducts', 'device id of the app', '2018-11-23 04:20:11'),
(1516, '1542970209900', 'getbanners', 'device id of the app', '2018-11-23 04:20:11'),
(1517, '1542970209904', 'getallproducts', 'device id of the app', '2018-11-23 04:20:11'),
(1518, '1542970209906', 'allcategories', 'device id of the app', '2018-11-23 04:20:11'),
(1519, '1542970209907', 'getallpages', 'device id of the app', '2018-11-23 04:20:11'),
(1520, '1542970210120', 'sitesetting', 'device id of the app', '2018-11-23 04:20:11'),
(1521, '1542970212063', 'getallproducts', 'device id of the app', '2018-11-23 04:20:12'),
(1522, '1542970236291', 'getallproducts', 'device id of the app', '2018-11-23 04:20:37'),
(1523, '1542970236293', 'getallproducts', 'device id of the app', '2018-11-23 04:20:37'),
(1524, '1542970236287', 'getbanners', 'device id of the app', '2018-11-23 04:20:37'),
(1525, '1542970236292', 'getallproducts', 'device id of the app', '2018-11-23 04:20:38'),
(1526, '1542970236295', 'allcategories', 'device id of the app', '2018-11-23 04:20:38'),
(1527, '1542970236294', 'getallproducts', 'device id of the app', '2018-11-23 04:20:38'),
(1528, '1542970236297', 'getallpages', 'device id of the app', '2018-11-23 04:20:38'),
(1529, '1542970236761', 'sitesetting', 'device id of the app', '2018-11-23 04:20:38'),
(1530, '1542970238632', 'getallproducts', 'device id of the app', '2018-11-23 04:20:38'),
(1531, '1542970364954', 'getallproducts', 'device id of the app', '2018-11-23 04:22:49'),
(1532, '1542970364956', 'getallproducts', 'device id of the app', '2018-11-23 04:22:49'),
(1533, '1542970364958', 'getallproducts', 'device id of the app', '2018-11-23 04:22:49'),
(1534, '1542970364949', 'getbanners', 'device id of the app', '2018-11-23 04:22:50'),
(1535, '1542970365360', 'sitesetting', 'device id of the app', '2018-11-23 04:22:50'),
(1536, '1542970364961', 'getallpages', 'device id of the app', '2018-11-23 04:22:50'),
(1537, '1542970364960', 'allcategories', 'device id of the app', '2018-11-23 04:22:50'),
(1538, '1542970364959', 'getallproducts', 'device id of the app', '2018-11-23 04:22:50'),
(1539, '1542970370500', 'getallproducts', 'device id of the app', '2018-11-23 04:22:50'),
(1540, '1542970575554', 'getbanners', 'device id of the app', '2018-11-23 04:26:17'),
(1541, '1542970575557', 'getallproducts', 'device id of the app', '2018-11-23 04:26:17'),
(1542, '1542970575559', 'getallproducts', 'device id of the app', '2018-11-23 04:26:17'),
(1543, '1542970575558', 'getallproducts', 'device id of the app', '2018-11-23 04:26:17'),
(1544, '1542970575560', 'getallproducts', 'device id of the app', '2018-11-23 04:26:17'),
(1545, '1542970575561', 'allcategories', 'device id of the app', '2018-11-23 04:26:17'),
(1546, '1542970575562', 'getallpages', 'device id of the app', '2018-11-23 04:26:17'),
(1547, '1542970575760', 'sitesetting', 'device id of the app', '2018-11-23 04:26:17'),
(1548, '1542970578108', 'getallproducts', 'device id of the app', '2018-11-23 04:26:18'),
(1549, '1542970650066', 'getallnews', 'device id of the app', '2018-11-23 04:27:31'),
(1550, '1542970650064', 'getallnews', 'device id of the app', '2018-11-23 04:27:31'),
(1551, '1542970650066', 'allnewscategories', 'device id of the app', '2018-11-23 04:27:31'),
(1552, '1542970651698', 'allnewscategories', 'device id of the app', '2018-11-23 04:27:31'),
(1553, '1542970654030', 'getallproducts', 'device id of the app', '2018-11-23 04:27:34'),
(1554, '1542970660131', 'getallproducts', 'device id of the app', '2018-11-23 04:27:40'),
(1555, '1542970660132', 'getfilters', 'device id of the app', '2018-11-23 04:27:41'),
(1556, '1542970667394', 'getallproducts', 'device id of the app', '2018-11-23 04:27:48'),
(1557, '1542970670802', 'getallproducts', 'device id of the app', '2018-11-23 04:27:51'),
(1558, '1542970796503', 'getallproducts', 'device id of the app', '2018-11-23 04:29:58'),
(1559, '1542970796499', 'getbanners', 'device id of the app', '2018-11-23 04:29:58'),
(1560, '1542970796504', 'getallproducts', 'device id of the app', '2018-11-23 04:29:58'),
(1561, '1542970796506', 'allcategories', 'device id of the app', '2018-11-23 04:29:58'),
(1562, '1542970796505', 'getallproducts', 'device id of the app', '2018-11-23 04:29:58'),
(1563, '1542970796507', 'getallpages', 'device id of the app', '2018-11-23 04:29:58'),
(1564, '1542970796749', 'sitesetting', 'device id of the app', '2018-11-23 04:29:58'),
(1565, '1542970799016', 'getallproducts', 'device id of the app', '2018-11-23 04:29:59'),
(1566, '1542970838376', 'getallproducts', 'device id of the app', '2018-11-23 04:30:39'),
(1567, '1542970838373', 'getbanners', 'device id of the app', '2018-11-23 04:30:39'),
(1568, '1542970838377', 'getallproducts', 'device id of the app', '2018-11-23 04:30:39'),
(1569, '1542970838378', 'getallproducts', 'device id of the app', '2018-11-23 04:30:39'),
(1570, '1542970838381', 'getallproducts', 'device id of the app', '2018-11-23 04:30:40'),
(1571, '1542970838383', 'allcategories', 'device id of the app', '2018-11-23 04:30:40'),
(1572, '1542970838384', 'getallpages', 'device id of the app', '2018-11-23 04:30:40'),
(1573, '1542970838962', 'sitesetting', 'device id of the app', '2018-11-23 04:30:40'),
(1574, '1542970840553', 'getallproducts', 'device id of the app', '2018-11-23 04:30:40'),
(1575, '1542970888777', 'getallproducts', 'device id of the app', '2018-11-23 04:31:30'),
(1576, '1542970888775', 'getallproducts', 'device id of the app', '2018-11-23 04:31:30'),
(1577, '1542970888776', 'getallproducts', 'device id of the app', '2018-11-23 04:31:30'),
(1578, '1542970888772', 'getbanners', 'device id of the app', '2018-11-23 04:31:30'),
(1579, '1542970888780', 'allcategories', 'device id of the app', '2018-11-23 04:31:30'),
(1580, '1542970888779', 'getallproducts', 'device id of the app', '2018-11-23 04:31:30'),
(1581, '1542970888780', 'getallpages', 'device id of the app', '2018-11-23 04:31:30'),
(1582, '1542970888906', 'sitesetting', 'device id of the app', '2018-11-23 04:31:30'),
(1583, '1542970890948', 'getallproducts', 'device id of the app', '2018-11-23 04:31:31'),
(1584, '1542970949258', 'getbanners', 'device id of the app', '2018-11-23 04:32:30'),
(1585, '1542970949261', 'getallproducts', 'device id of the app', '2018-11-23 04:32:30'),
(1586, '1542970949263', 'getallproducts', 'device id of the app', '2018-11-23 04:32:30'),
(1587, '1542970949267', 'getallproducts', 'device id of the app', '2018-11-23 04:32:30'),
(1588, '1542970949265', 'getallproducts', 'device id of the app', '2018-11-23 04:32:31'),
(1589, '1542970949269', 'allcategories', 'device id of the app', '2018-11-23 04:32:31'),
(1590, '1542970949270', 'getallpages', 'device id of the app', '2018-11-23 04:32:31'),
(1591, '1542970949583', 'sitesetting', 'device id of the app', '2018-11-23 04:32:31'),
(1592, '1542970951503', 'getallproducts', 'device id of the app', '2018-11-23 04:32:31'),
(1593, '1542971005134', 'getbanners', 'device id of the app', '2018-11-23 04:33:26'),
(1594, '1542971005137', 'getallproducts', 'device id of the app', '2018-11-23 04:33:26'),
(1595, '1542971005139', 'getallproducts', 'device id of the app', '2018-11-23 04:33:26'),
(1596, '1542971005142', 'getallpages', 'device id of the app', '2018-11-23 04:33:27'),
(1597, '1542971005141', 'allcategories', 'device id of the app', '2018-11-23 04:33:27'),
(1598, '1542971005140', 'getallproducts', 'device id of the app', '2018-11-23 04:33:27'),
(1599, '1542971005369', 'sitesetting', 'device id of the app', '2018-11-23 04:33:27'),
(1600, '1542971007379', 'getallproducts', 'device id of the app', '2018-11-23 04:33:27'),
(1601, '1542971169976', 'getallproducts', 'device id of the app', '2018-11-23 04:36:11'),
(1602, '1542971169977', 'getallproducts', 'device id of the app', '2018-11-23 04:36:11'),
(1603, '1542971169971', 'getbanners', 'device id of the app', '2018-11-23 04:36:11'),
(1604, '1542971169978', 'getallproducts', 'device id of the app', '2018-11-23 04:36:11'),
(1605, '1542971169980', 'getallproducts', 'device id of the app', '2018-11-23 04:36:12'),
(1606, '1542971169981', 'allcategories', 'device id of the app', '2018-11-23 04:36:12'),
(1607, '1542971169982', 'getallpages', 'device id of the app', '2018-11-23 04:36:12'),
(1608, '1542971170104', 'sitesetting', 'device id of the app', '2018-11-23 04:36:12'),
(1609, '1542971172603', 'getallproducts', 'device id of the app', '2018-11-23 04:36:12'),
(1610, '1542971179175', 'getallproducts', 'device id of the app', '2018-11-23 04:36:20'),
(1611, '1542971179176', 'getallproducts', 'device id of the app', '2018-11-23 04:36:20'),
(1612, '1542971179174', 'getallproducts', 'device id of the app', '2018-11-23 04:36:20'),
(1613, '1542971179171', 'getbanners', 'device id of the app', '2018-11-23 04:36:20'),
(1614, '1542971179177', 'getallproducts', 'device id of the app', '2018-11-23 04:36:20'),
(1615, '1542971179177', 'allcategories', 'device id of the app', '2018-11-23 04:36:20'),
(1616, '1542971179179', 'getallpages', 'device id of the app', '2018-11-23 04:36:21'),
(1617, '1542971179411', 'sitesetting', 'device id of the app', '2018-11-23 04:36:21'),
(1618, '1542971181274', 'getallproducts', 'device id of the app', '2018-11-23 04:36:21'),
(1619, '1542971187422', 'getallproducts', 'device id of the app', '2018-11-23 04:36:28'),
(1620, '1542971200380', 'getalladdress', 'device id of the app', '2018-11-23 04:36:41'),
(1621, '1542971207092', 'getrate', 'device id of the app', '2018-11-23 04:36:47'),
(1622, '1542971211111', 'getpaymentmethods', 'device id of the app', '2018-11-23 04:36:51'),
(1623, '1542971212008', 'generatebraintreetoken', 'device id of the app', '2018-11-23 04:36:52'),
(1624, '1542971953071', 'getallproducts', 'device id of the app', '2018-11-23 04:49:12'),
(1625, '1542971953064', 'getbanners', 'device id of the app', '2018-11-23 04:49:12'),
(1626, '1542971953070', 'getallproducts', 'device id of the app', '2018-11-23 04:49:12'),
(1627, '1542971953072', 'getallproducts', 'device id of the app', '2018-11-23 04:49:13'),
(1628, '1542971953073', 'getallproducts', 'device id of the app', '2018-11-23 04:49:13'),
(1629, '1542971953073', 'allcategories', 'device id of the app', '2018-11-23 04:49:13'),
(1630, '1542971953942', 'sitesetting', 'device id of the app', '2018-11-23 04:49:13'),
(1631, '1542971953074', 'getallpages', 'device id of the app', '2018-11-23 04:49:13'),
(1632, '1542971955360', 'getallproducts', 'device id of the app', '2018-11-23 04:49:14'),
(1633, '1542972002768', 'getallproducts', 'device id of the app', '2018-11-23 04:50:01'),
(1634, '1542972005685', 'getallproducts', 'device id of the app', '2018-11-23 04:50:04'),
(1635, '1542972008564', 'getallproducts', 'device id of the app', '2018-11-23 04:50:07'),
(1636, '1542972011505', 'getallproducts', 'device id of the app', '2018-11-23 04:50:10'),
(1637, '1542972017137', 'getallproducts', 'device id of the app', '2018-11-23 04:50:15'),
(1638, '1542972019473', 'getallproducts', 'device id of the app', '2018-11-23 04:50:18'),
(1639, '1542972021632', 'getallproducts', 'device id of the app', '2018-11-23 04:50:20'),
(1640, '1542972023805', 'getallproducts', 'device id of the app', '2018-11-23 04:50:22'),
(1641, '1542972029802', 'getallproducts', 'device id of the app', '2018-11-23 04:50:28'),
(1642, '1542972080352', 'processlogin', 'device id of the app', '2018-11-23 04:51:19'),
(1643, '1542972081387', 'registerdevices', 'device id of the app', '2018-11-23 04:51:20'),
(1644, '1542972082442', 'getalladdress', 'device id of the app', '2018-11-23 04:51:21'),
(1645, '1542972091148', 'getrate', 'device id of the app', '2018-11-23 04:51:30'),
(1646, '1542972094377', 'getpaymentmethods', 'device id of the app', '2018-11-23 04:51:33'),
(1647, '1542972094835', 'generatebraintreetoken', 'device id of the app', '2018-11-23 04:51:33'),
(1648, '1542972094837', 'generatebraintreetoken', 'device id of the app', '2018-11-23 04:51:36'),
(1649, '1542972217452', 'addtoorder', 'device id of the app', '2018-11-23 04:53:36'),
(1650, '1542972224135', 'getorders', 'device id of the app', '2018-11-23 04:53:42'),
(1651, '1542973002530', 'getallproducts', 'device id of the app', '2018-11-23 05:06:44'),
(1652, '1542973002526', 'getallproducts', 'device id of the app', '2018-11-23 05:06:44'),
(1653, '1542973002521', 'getbanners', 'device id of the app', '2018-11-23 05:06:44'),
(1654, '1542973002528', 'getallproducts', 'device id of the app', '2018-11-23 05:06:44'),
(1655, '1542973002538', 'allcategories', 'device id of the app', '2018-11-23 05:06:44'),
(1656, '1542973002532', 'getallproducts', 'device id of the app', '2018-11-23 05:06:44'),
(1657, '1542973002542', 'getallpages', 'device id of the app', '2018-11-23 05:06:44'),
(1658, '1542973002765', 'sitesetting', 'device id of the app', '2018-11-23 05:06:44'),
(1659, '1542973004939', 'getallproducts', 'device id of the app', '2018-11-23 05:06:45'),
(1660, '1542973107718', 'getallproducts', 'device id of the app', '2018-11-23 05:08:29'),
(1661, '1542973107716', 'getallproducts', 'device id of the app', '2018-11-23 05:08:29'),
(1662, '1542973107705', 'getbanners', 'device id of the app', '2018-11-23 05:08:29'),
(1663, '1542973107719', 'getallproducts', 'device id of the app', '2018-11-23 05:08:29'),
(1664, '1542973107722', 'allcategories', 'device id of the app', '2018-11-23 05:08:29'),
(1665, '1542973107720', 'getallproducts', 'device id of the app', '2018-11-23 05:08:29'),
(1666, '1542973107866', 'sitesetting', 'device id of the app', '2018-11-23 05:08:29'),
(1667, '1542973107729', 'getallpages', 'device id of the app', '2018-11-23 05:08:29'),
(1668, '1542973109946', 'getallproducts', 'device id of the app', '2018-11-23 05:08:30'),
(1669, '1542973204823', 'getbanners', 'device id of the app', '2018-11-23 05:10:06'),
(1670, '1542973204830', 'getallproducts', 'device id of the app', '2018-11-23 05:10:06'),
(1671, '1542973204827', 'getallproducts', 'device id of the app', '2018-11-23 05:10:06'),
(1672, '1542973204831', 'getallproducts', 'device id of the app', '2018-11-23 05:10:06'),
(1673, '1542973204834', 'allcategories', 'device id of the app', '2018-11-23 05:10:06'),
(1674, '1542973204832', 'getallproducts', 'device id of the app', '2018-11-23 05:10:06'),
(1675, '1542973204835', 'getallpages', 'device id of the app', '2018-11-23 05:10:06'),
(1676, '1542973205148', 'sitesetting', 'device id of the app', '2018-11-23 05:10:06'),
(1677, '1542973206938', 'getallproducts', 'device id of the app', '2018-11-23 05:10:07'),
(1678, '1542973699992', 'getallproducts', 'device id of the app', '2018-11-23 05:18:21'),
(1679, '1542973699994', 'getallproducts', 'device id of the app', '2018-11-23 05:18:21'),
(1680, '1542973699988', 'getbanners', 'device id of the app', '2018-11-23 05:18:21'),
(1681, '1542973699993', 'getallproducts', 'device id of the app', '2018-11-23 05:18:21'),
(1682, '1542973699995', 'allcategories', 'device id of the app', '2018-11-23 05:18:21'),
(1683, '1542973699997', 'getallpages', 'device id of the app', '2018-11-23 05:18:21'),
(1684, '1542973700232', 'sitesetting', 'device id of the app', '2018-11-23 05:18:21'),
(1685, '1542973702152', 'getallproducts', 'device id of the app', '2018-11-23 05:18:22'),
(1686, '1542973757954', 'getallproducts', 'device id of the app', '2018-11-23 05:19:17'),
(1687, '1542973757946', 'getbanners', 'device id of the app', '2018-11-23 05:19:17'),
(1688, '1542973757952', 'getallproducts', 'device id of the app', '2018-11-23 05:19:17'),
(1689, '1542973757955', 'getallproducts', 'device id of the app', '2018-11-23 05:19:17'),
(1690, '1542973757955', 'allcategories', 'device id of the app', '2018-11-23 05:19:17'),
(1691, '1542973757957', 'getallpages', 'device id of the app', '2018-11-23 05:19:18'),
(1692, '1542973758613', 'sitesetting', 'device id of the app', '2018-11-23 05:19:18'),
(1693, '1542973760028', 'getallproducts', 'device id of the app', '2018-11-23 05:19:18'),
(1694, '1542973782270', 'getallproducts', 'device id of the app', '2018-11-23 05:19:41'),
(1695, '1542973942610', 'getbanners', 'device id of the app', '2018-11-23 05:22:21'),
(1696, '1542973942622', 'getallproducts', 'device id of the app', '2018-11-23 05:22:21'),
(1697, '1542973942626', 'getallproducts', 'device id of the app', '2018-11-23 05:22:21'),
(1698, '1542973942619', 'getallproducts', 'device id of the app', '2018-11-23 05:22:21'),
(1699, '1542973942627', 'allcategories', 'device id of the app', '2018-11-23 05:22:22'),
(1700, '1542973942624', 'getallproducts', 'device id of the app', '2018-11-23 05:22:22'),
(1701, '1542973942630', 'getallpages', 'device id of the app', '2018-11-23 05:22:22'),
(1702, '1542973943735', 'sitesetting', 'device id of the app', '2018-11-23 05:22:22'),
(1703, '1542973944345', 'getallproducts', 'device id of the app', '2018-11-23 05:22:23'),
(1704, '1542974311236', 'getallproducts', 'device id of the app', '2018-11-23 05:28:33'),
(1705, '1542974311235', 'getallproducts', 'device id of the app', '2018-11-23 05:28:33'),
(1706, '1542974311239', 'getallproducts', 'device id of the app', '2018-11-23 05:28:33'),
(1707, '1542974311232', 'getbanners', 'device id of the app', '2018-11-23 05:28:33'),
(1708, '1542974311237', 'getallproducts', 'device id of the app', '2018-11-23 05:28:33'),
(1709, '1542974311240', 'allcategories', 'device id of the app', '2018-11-23 05:28:33'),
(1710, '1542974311241', 'getallpages', 'device id of the app', '2018-11-23 05:28:33'),
(1711, '1542974311444', 'sitesetting', 'device id of the app', '2018-11-23 05:28:33'),
(1712, '1542974313851', 'getallproducts', 'device id of the app', '2018-11-23 05:28:34'),
(1713, '1542974336233', 'getbanners', 'device id of the app', '2018-11-23 05:28:57'),
(1714, '1542974336239', 'getallproducts', 'device id of the app', '2018-11-23 05:28:57'),
(1715, '1542974336237', 'getallproducts', 'device id of the app', '2018-11-23 05:28:57'),
(1716, '1542974336241', 'allcategories', 'device id of the app', '2018-11-23 05:28:57'),
(1717, '1542974336240', 'getallproducts', 'device id of the app', '2018-11-23 05:28:58'),
(1718, '1542974336243', 'getallpages', 'device id of the app', '2018-11-23 05:28:58'),
(1719, '1542974336497', 'sitesetting', 'device id of the app', '2018-11-23 05:28:58'),
(1720, '1542974338386', 'getallproducts', 'device id of the app', '2018-11-23 05:28:58'),
(1721, '1542974415370', 'getbanners', 'device id of the app', '2018-11-23 05:30:16'),
(1722, '1542974415375', 'getallproducts', 'device id of the app', '2018-11-23 05:30:16'),
(1723, '1542974415380', 'getallproducts', 'device id of the app', '2018-11-23 05:30:16'),
(1724, '1542974415383', 'allcategories', 'device id of the app', '2018-11-23 05:30:16'),
(1725, '1542974415379', 'getallproducts', 'device id of the app', '2018-11-23 05:30:16'),
(1726, '1542974415377', 'getallproducts', 'device id of the app', '2018-11-23 05:30:17'),
(1727, '1542974415385', 'getallpages', 'device id of the app', '2018-11-23 05:30:17'),
(1728, '1542974415676', 'sitesetting', 'device id of the app', '2018-11-23 05:30:17'),
(1729, '1542974417434', 'getallproducts', 'device id of the app', '2018-11-23 05:30:17'),
(1730, '1542974468006', 'getallproducts', 'device id of the app', '2018-11-23 05:31:09'),
(1731, '1542974468007', 'getallproducts', 'device id of the app', '2018-11-23 05:31:09'),
(1732, '1542974468001', 'getbanners', 'device id of the app', '2018-11-23 05:31:09'),
(1733, '1542974468008', 'getallproducts', 'device id of the app', '2018-11-23 05:31:09');
INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1734, '1542974468009', 'getallproducts', 'device id of the app', '2018-11-23 05:31:09'),
(1735, '1542974468010', 'allcategories', 'device id of the app', '2018-11-23 05:31:09'),
(1736, '1542974468014', 'getallpages', 'device id of the app', '2018-11-23 05:31:09'),
(1737, '1542974468390', 'sitesetting', 'device id of the app', '2018-11-23 05:31:09'),
(1738, '1542974470193', 'getallproducts', 'device id of the app', '2018-11-23 05:31:10'),
(1739, '1542974484355', 'getallproducts', 'device id of the app', '2018-11-23 05:31:25'),
(1740, '1542974484358', 'getallproducts', 'device id of the app', '2018-11-23 05:31:25'),
(1741, '1542974484353', 'getbanners', 'device id of the app', '2018-11-23 05:31:25'),
(1742, '1542974484359', 'getallproducts', 'device id of the app', '2018-11-23 05:31:25'),
(1743, '1542974484361', 'allcategories', 'device id of the app', '2018-11-23 05:31:26'),
(1744, '1542974484360', 'getallproducts', 'device id of the app', '2018-11-23 05:31:26'),
(1745, '1542974484363', 'getallpages', 'device id of the app', '2018-11-23 05:31:26'),
(1746, '1542974484605', 'sitesetting', 'device id of the app', '2018-11-23 05:31:26'),
(1747, '1542974486534', 'getallproducts', 'device id of the app', '2018-11-23 05:31:26'),
(1748, '1542974636485', 'getbanners', 'device id of the app', '2018-11-23 05:33:57'),
(1749, '1542974636489', 'getallproducts', 'device id of the app', '2018-11-23 05:33:57'),
(1750, '1542974636491', 'getallproducts', 'device id of the app', '2018-11-23 05:33:57'),
(1751, '1542974636492', 'getallproducts', 'device id of the app', '2018-11-23 05:33:58'),
(1752, '1542974636494', 'getallproducts', 'device id of the app', '2018-11-23 05:33:58'),
(1753, '1542974636495', 'allcategories', 'device id of the app', '2018-11-23 05:33:58'),
(1754, '1542974636497', 'getallpages', 'device id of the app', '2018-11-23 05:33:58'),
(1755, '1542974636726', 'sitesetting', 'device id of the app', '2018-11-23 05:33:58'),
(1756, '1542974638638', 'getallproducts', 'device id of the app', '2018-11-23 05:33:58'),
(1757, '1542974667966', 'getbanners', 'device id of the app', '2018-11-23 05:34:29'),
(1758, '1542974667972', 'getallproducts', 'device id of the app', '2018-11-23 05:34:29'),
(1759, '1542974667969', 'getallproducts', 'device id of the app', '2018-11-23 05:34:29'),
(1760, '1542974667971', 'getallproducts', 'device id of the app', '2018-11-23 05:34:29'),
(1761, '1542974667973', 'getallproducts', 'device id of the app', '2018-11-23 05:34:29'),
(1762, '1542974667973', 'allcategories', 'device id of the app', '2018-11-23 05:34:29'),
(1763, '1542974667974', 'getallpages', 'device id of the app', '2018-11-23 05:34:29'),
(1764, '1542974668259', 'sitesetting', 'device id of the app', '2018-11-23 05:34:29'),
(1765, '1542974670215', 'getallproducts', 'device id of the app', '2018-11-23 05:34:30'),
(1766, '1542974716095', 'getbanners', 'device id of the app', '2018-11-23 05:35:17'),
(1767, '1542974716100', 'getallproducts', 'device id of the app', '2018-11-23 05:35:17'),
(1768, '1542974716103', 'getallproducts', 'device id of the app', '2018-11-23 05:35:17'),
(1769, '1542974716104', 'getallproducts', 'device id of the app', '2018-11-23 05:35:17'),
(1770, '1542974716102', 'getallproducts', 'device id of the app', '2018-11-23 05:35:18'),
(1771, '1542974716106', 'allcategories', 'device id of the app', '2018-11-23 05:35:18'),
(1772, '1542974716107', 'getallpages', 'device id of the app', '2018-11-23 05:35:18'),
(1773, '1542974716542', 'sitesetting', 'device id of the app', '2018-11-23 05:35:18'),
(1774, '1542974718504', 'getallproducts', 'device id of the app', '2018-11-23 05:35:18'),
(1775, '1542974732286', 'getbanners', 'device id of the app', '2018-11-23 05:35:33'),
(1776, '1542974732294', 'allcategories', 'device id of the app', '2018-11-23 05:35:33'),
(1777, '1542974732290', 'getallproducts', 'device id of the app', '2018-11-23 05:35:34'),
(1778, '1542974732291', 'getallproducts', 'device id of the app', '2018-11-23 05:35:34'),
(1779, '1542974732295', 'getallpages', 'device id of the app', '2018-11-23 05:35:34'),
(1780, '1542974732293', 'getallproducts', 'device id of the app', '2018-11-23 05:35:34'),
(1781, '1542974732509', 'sitesetting', 'device id of the app', '2018-11-23 05:35:34'),
(1782, '1542974732292', 'getallproducts', 'device id of the app', '2018-11-23 05:35:34'),
(1783, '1542974734979', 'getallproducts', 'device id of the app', '2018-11-23 05:35:35'),
(1784, '1542974756618', 'getallproducts', 'device id of the app', '2018-11-23 05:35:57'),
(1785, '1542974793571', 'getallproducts', 'device id of the app', '2018-11-23 05:36:35'),
(1786, '1542974795629', 'getallproducts', 'device id of the app', '2018-11-23 05:36:36'),
(1787, '1542974827695', 'getbanners', 'device id of the app', '2018-11-23 05:37:07'),
(1788, '1542974827700', 'getallproducts', 'device id of the app', '2018-11-23 05:37:07'),
(1789, '1542974827701', 'getallproducts', 'device id of the app', '2018-11-23 05:37:07'),
(1790, '1542974827704', 'allcategories', 'device id of the app', '2018-11-23 05:37:08'),
(1791, '1542974827704', 'getallpages', 'device id of the app', '2018-11-23 05:37:08'),
(1792, '1542974827702', 'getallproducts', 'device id of the app', '2018-11-23 05:37:08'),
(1793, '1542974827703', 'getallproducts', 'device id of the app', '2018-11-23 05:37:08'),
(1794, '1542974829839', 'sitesetting', 'device id of the app', '2018-11-23 05:37:08'),
(1795, '1542974830447', 'getallproducts', 'device id of the app', '2018-11-23 05:37:09'),
(1796, '1542974863727', 'getallproducts', 'device id of the app', '2018-11-23 05:37:45'),
(1797, '1542974863721', 'getbanners', 'device id of the app', '2018-11-23 05:37:45'),
(1798, '1542974863726', 'getallproducts', 'device id of the app', '2018-11-23 05:37:45'),
(1799, '1542974863729', 'getallproducts', 'device id of the app', '2018-11-23 05:37:45'),
(1800, '1542974863728', 'getallproducts', 'device id of the app', '2018-11-23 05:37:45'),
(1801, '1542974863732', 'getallpages', 'device id of the app', '2018-11-23 05:37:45'),
(1802, '1542974863730', 'allcategories', 'device id of the app', '2018-11-23 05:37:45'),
(1803, '1542974863918', 'sitesetting', 'device id of the app', '2018-11-23 05:37:45'),
(1804, '1542974865958', 'getallproducts', 'device id of the app', '2018-11-23 05:37:46'),
(1805, '1542974872546', 'getallproducts', 'device id of the app', '2018-11-23 05:37:53'),
(1806, '1542974875305', 'getallproducts', 'device id of the app', '2018-11-23 05:37:55'),
(1807, '1542974877778', 'getallproducts', 'device id of the app', '2018-11-23 05:37:58'),
(1808, '1542974879283', 'getallproducts', 'device id of the app', '2018-11-23 05:37:59'),
(1809, '1542974882042', 'getallproducts', 'device id of the app', '2018-11-23 05:38:02'),
(1810, '1542974884131', 'getallproducts', 'device id of the app', '2018-11-23 05:38:04'),
(1811, '1542974887925', 'getallproducts', 'device id of the app', '2018-11-23 05:38:08'),
(1812, '1542974889932', 'getallproducts', 'device id of the app', '2018-11-23 05:38:10'),
(1813, '1542974949647', 'getallproducts', 'device id of the app', '2018-11-23 05:39:10'),
(1814, '1542976576886', 'getallproducts', 'device id of the app', '2018-11-23 06:06:18'),
(1815, '1542976576887', 'getallproducts', 'device id of the app', '2018-11-23 06:06:18'),
(1816, '1542976576888', 'getallproducts', 'device id of the app', '2018-11-23 06:06:18'),
(1817, '1542976576882', 'getbanners', 'device id of the app', '2018-11-23 06:06:18'),
(1818, '1542976576889', 'allcategories', 'device id of the app', '2018-11-23 06:06:18'),
(1819, '1542976576890', 'getallpages', 'device id of the app', '2018-11-23 06:06:18'),
(1820, '1542976577084', 'sitesetting', 'device id of the app', '2018-11-23 06:06:18'),
(1821, '1542976579215', 'getallproducts', 'device id of the app', '2018-11-23 06:06:19'),
(1822, '1542976660466', 'getallproducts', 'device id of the app', '2018-11-23 06:07:40'),
(1823, '1542976660456', 'getbanners', 'device id of the app', '2018-11-23 06:07:40'),
(1824, '1542976660465', 'getallproducts', 'device id of the app', '2018-11-23 06:07:40'),
(1825, '1542976660468', 'getallproducts', 'device id of the app', '2018-11-23 06:07:40'),
(1826, '1542976660470', 'allcategories', 'device id of the app', '2018-11-23 06:07:40'),
(1827, '1542976660471', 'getallpages', 'device id of the app', '2018-11-23 06:07:40'),
(1828, '1542976661010', 'sitesetting', 'device id of the app', '2018-11-23 06:07:40'),
(1829, '1542976662845', 'getallproducts', 'device id of the app', '2018-11-23 06:07:41'),
(1830, '1542976695427', 'getallproducts', 'device id of the app', '2018-11-23 06:08:14'),
(1831, '1542976695428', 'getallproducts', 'device id of the app', '2018-11-23 06:08:14'),
(1832, '1542976695426', 'getallproducts', 'device id of the app', '2018-11-23 06:08:14'),
(1833, '1542976695430', 'getallproducts', 'device id of the app', '2018-11-23 06:08:14'),
(1834, '1542976695431', 'allcategories', 'device id of the app', '2018-11-23 06:08:14'),
(1835, '1542976695419', 'getbanners', 'device id of the app', '2018-11-23 06:08:14'),
(1836, '1542976695432', 'getallpages', 'device id of the app', '2018-11-23 06:08:15'),
(1837, '1542976696559', 'sitesetting', 'device id of the app', '2018-11-23 06:08:15'),
(1838, '1542976697140', 'getallproducts', 'device id of the app', '2018-11-23 06:08:15'),
(1839, '1542976728043', 'getallproducts', 'device id of the app', '2018-11-23 06:08:47'),
(1840, '1542976728045', 'getallproducts', 'device id of the app', '2018-11-23 06:08:47'),
(1841, '1542976728046', 'allcategories', 'device id of the app', '2018-11-23 06:08:47'),
(1842, '1542976728041', 'getallproducts', 'device id of the app', '2018-11-23 06:08:47'),
(1843, '1542976728034', 'getbanners', 'device id of the app', '2018-11-23 06:08:47'),
(1844, '1542976728048', 'getallpages', 'device id of the app', '2018-11-23 06:08:47'),
(1845, '1542976729296', 'sitesetting', 'device id of the app', '2018-11-23 06:08:48'),
(1846, '1542976729934', 'getallproducts', 'device id of the app', '2018-11-23 06:08:48'),
(1847, '1542976767330', 'getallproducts', 'device id of the app', '2018-11-23 06:09:28'),
(1848, '1542976934430', 'getbanners', 'device id of the app', '2018-11-23 06:12:17'),
(1849, '1542976934449', 'getallproducts', 'device id of the app', '2018-11-23 06:12:17'),
(1850, '1542976934447', 'getallproducts', 'device id of the app', '2018-11-23 06:12:17'),
(1851, '1542976934445', 'getallproducts', 'device id of the app', '2018-11-23 06:12:17'),
(1852, '1542976934452', 'allcategories', 'device id of the app', '2018-11-23 06:12:17'),
(1853, '1542976934450', 'getallproducts', 'device id of the app', '2018-11-23 06:12:17'),
(1854, '1542976934455', 'getallpages', 'device id of the app', '2018-11-23 06:12:17'),
(1855, '1542976935404', 'sitesetting', 'device id of the app', '2018-11-23 06:12:18'),
(1856, '1542976944987', 'registerdevices', 'device id of the app', '2018-11-23 06:12:27'),
(1857, '1542978119360', 'getallproducts', 'device id of the app', '2018-11-22 18:32:01'),
(1858, '1542978215993', 'getallproducts', 'device id of the app', '2018-11-22 18:33:37'),
(1859, '1542978215990', 'getallproducts', 'device id of the app', '2018-11-22 18:33:37'),
(1860, '1542978215986', 'getbanners', 'device id of the app', '2018-11-22 18:33:37'),
(1861, '1542978215994', 'getallproducts', 'device id of the app', '2018-11-22 18:33:37'),
(1862, '1542978215995', 'allcategories', 'device id of the app', '2018-11-22 18:33:37'),
(1863, '1542978215989', 'getallproducts', 'device id of the app', '2018-11-22 18:33:37'),
(1864, '1542978215996', 'getallpages', 'device id of the app', '2018-11-22 18:33:37'),
(1865, '1542978216235', 'sitesetting', 'device id of the app', '2018-11-22 18:33:37'),
(1866, '1542978218136', 'getallproducts', 'device id of the app', '2018-11-22 18:33:38'),
(1867, '1542978236639', 'getallproducts', 'device id of the app', '2018-11-22 18:33:57'),
(1868, '1542978304860', 'getalladdress', 'device id of the app', '2018-11-22 18:35:05'),
(1869, '1542978310797', 'getrate', 'device id of the app', '2018-11-22 18:35:11'),
(1870, '1542978319763', 'getpaymentmethods', 'device id of the app', '2018-11-22 18:35:20'),
(1871, '1542978321044', 'generatebraintreetoken', 'device id of the app', '2018-11-22 18:35:21'),
(1872, '1542978321043', 'generatebraintreetoken', 'device id of the app', '2018-11-22 18:35:22'),
(1873, '1542978393416', 'getallproducts', 'device id of the app', '2018-11-22 18:36:34'),
(1874, '1542978393412', 'getbanners', 'device id of the app', '2018-11-22 18:36:34'),
(1875, '1542978393423', 'getallproducts', 'device id of the app', '2018-11-22 18:36:34'),
(1876, '1542978393418', 'getallproducts', 'device id of the app', '2018-11-22 18:36:34'),
(1877, '1542978393419', 'getallproducts', 'device id of the app', '2018-11-22 18:36:35'),
(1878, '1542978393425', 'getallpages', 'device id of the app', '2018-11-22 18:36:35'),
(1879, '1542978393424', 'allcategories', 'device id of the app', '2018-11-22 18:36:35'),
(1880, '1542978393788', 'sitesetting', 'device id of the app', '2018-11-22 18:36:35'),
(1881, '1542978395618', 'getallproducts', 'device id of the app', '2018-11-22 18:36:35'),
(1882, '1542978534385', 'getallproducts', 'device id of the app', '2018-11-22 18:38:54'),
(1883, '1542978534388', 'getallproducts', 'device id of the app', '2018-11-22 18:38:54'),
(1884, '1542978534387', 'getallproducts', 'device id of the app', '2018-11-22 18:38:54'),
(1885, '1542978534389', 'allcategories', 'device id of the app', '2018-11-22 18:38:54'),
(1886, '1542978534379', 'getbanners', 'device id of the app', '2018-11-22 18:38:54'),
(1887, '1542978534390', 'getallpages', 'device id of the app', '2018-11-22 18:38:54'),
(1888, '1542978535298', 'sitesetting', 'device id of the app', '2018-11-22 18:38:54'),
(1889, '1542978536583', 'getallproducts', 'device id of the app', '2018-11-22 18:38:55'),
(1890, '1542978563668', 'getallproducts', 'device id of the app', '2018-11-22 18:39:22'),
(1891, '1542978566739', 'getallproducts', 'device id of the app', '2018-11-22 18:39:25'),
(1892, '1542978589230', 'getfilters', 'device id of the app', '2018-11-22 18:39:48'),
(1893, '1542978589228', 'getallproducts', 'device id of the app', '2018-11-22 18:39:48'),
(1894, '1542978714556', 'getallproducts', 'device id of the app', '2018-11-22 18:41:53'),
(1895, '1542978714558', 'getfilters', 'device id of the app', '2018-11-22 18:41:53'),
(1896, '1542978719410', 'getallproducts', 'device id of the app', '2018-11-22 18:42:00'),
(1897, '1542978719411', 'getfilters', 'device id of the app', '2018-11-22 18:42:00'),
(1898, '1542978724923', 'getallproducts', 'device id of the app', '2018-11-22 18:42:03'),
(1899, '1542978724925', 'getfilters', 'device id of the app', '2018-11-22 18:42:04'),
(1900, '1542978729215', 'getfilters', 'device id of the app', '2018-11-22 18:42:07'),
(1901, '1542978729214', 'getallproducts', 'device id of the app', '2018-11-22 18:42:08'),
(1902, '1542978730738', 'getallproducts', 'device id of the app', '2018-11-22 18:42:09'),
(1903, '1542978742789', 'getallproducts', 'device id of the app', '2018-11-22 18:42:21'),
(1904, '1542978742791', 'getfilters', 'device id of the app', '2018-11-22 18:42:21'),
(1905, '1542978750723', 'getallproducts', 'device id of the app', '2018-11-22 18:42:29'),
(1906, '1542978750726', 'getfilters', 'device id of the app', '2018-11-22 18:42:29'),
(1907, '1542978776870', 'getallproducts', 'device id of the app', '2018-11-22 18:42:55'),
(1908, '1542978776873', 'getfilters', 'device id of the app', '2018-11-22 18:42:55'),
(1909, '1542978779860', 'getallproducts', 'device id of the app', '2018-11-22 18:42:58'),
(1910, '1542978779863', 'getfilters', 'device id of the app', '2018-11-22 18:42:58'),
(1911, '1542978821238', 'getallproducts', 'device id of the app', '2018-11-22 18:43:42'),
(1912, '1542978935303', 'getallproducts', 'device id of the app', '2018-11-22 18:45:36'),
(1913, '1542978935305', 'getallproducts', 'device id of the app', '2018-11-22 18:45:36'),
(1914, '1542978935299', 'getbanners', 'device id of the app', '2018-11-22 18:45:36'),
(1915, '1542978935307', 'getallproducts', 'device id of the app', '2018-11-22 18:45:37'),
(1916, '1542978935307', 'allcategories', 'device id of the app', '2018-11-22 18:45:37'),
(1917, '1542978935308', 'getallpages', 'device id of the app', '2018-11-22 18:45:37'),
(1918, '1542978935708', 'sitesetting', 'device id of the app', '2018-11-22 18:45:37'),
(1919, '1542978937571', 'getallproducts', 'device id of the app', '2018-11-22 18:45:37'),
(1920, '1542978990639', 'getbanners', 'device id of the app', '2018-11-22 18:46:31'),
(1921, '1542978990646', 'getallproducts', 'device id of the app', '2018-11-22 18:46:31'),
(1922, '1542978990648', 'getallproducts', 'device id of the app', '2018-11-22 18:46:32'),
(1923, '1542978990642', 'getallproducts', 'device id of the app', '2018-11-22 18:46:32'),
(1924, '1542978990644', 'getallproducts', 'device id of the app', '2018-11-22 18:46:32'),
(1925, '1542978990652', 'getallpages', 'device id of the app', '2018-11-22 18:46:32'),
(1926, '1542978990650', 'allcategories', 'device id of the app', '2018-11-22 18:46:32'),
(1927, '1542978990887', 'sitesetting', 'device id of the app', '2018-11-22 18:46:32'),
(1928, '1542978992755', 'getallproducts', 'device id of the app', '2018-11-22 18:46:33'),
(1929, '1542979016225', 'getallproducts', 'device id of the app', '2018-11-22 18:46:57'),
(1930, '1542979016222', 'getallproducts', 'device id of the app', '2018-11-22 18:46:57'),
(1931, '1542979016223', 'getallproducts', 'device id of the app', '2018-11-22 18:46:57'),
(1932, '1542979016218', 'getbanners', 'device id of the app', '2018-11-22 18:46:58'),
(1933, '1542979016467', 'sitesetting', 'device id of the app', '2018-11-22 18:46:58'),
(1934, '1542979016227', 'getallpages', 'device id of the app', '2018-11-22 18:46:58'),
(1935, '1542979016226', 'allcategories', 'device id of the app', '2018-11-22 18:46:58'),
(1936, '1542979018637', 'getallproducts', 'device id of the app', '2018-11-22 18:46:58'),
(1937, '1542979025821', 'getallnews', 'device id of the app', '2018-11-22 18:47:06'),
(1938, '1542979025822', 'allnewscategories', 'device id of the app', '2018-11-22 18:47:06'),
(1939, '1542979027119', 'allnewscategories', 'device id of the app', '2018-11-22 18:47:07'),
(1940, '1542979076880', 'getbanners', 'device id of the app', '2018-11-22 18:47:58'),
(1941, '1542979076886', 'getallproducts', 'device id of the app', '2018-11-22 18:47:58'),
(1942, '1542979076884', 'getallproducts', 'device id of the app', '2018-11-22 18:47:58'),
(1943, '1542979076885', 'getallproducts', 'device id of the app', '2018-11-22 18:47:58'),
(1944, '1542979076887', 'getallproducts', 'device id of the app', '2018-11-22 18:47:58'),
(1945, '1542979076894', 'getallpages', 'device id of the app', '2018-11-22 18:47:58'),
(1946, '1542979076890', 'allcategories', 'device id of the app', '2018-11-22 18:47:58'),
(1947, '1542979077333', 'sitesetting', 'device id of the app', '2018-11-22 18:47:58'),
(1948, '1542979078994', 'getallproducts', 'device id of the app', '2018-11-22 18:47:59'),
(1949, '1542979091655', 'getbanners', 'device id of the app', '2018-11-22 18:48:13'),
(1950, '1542979091661', 'getallproducts', 'device id of the app', '2018-11-22 18:48:13'),
(1951, '1542979091659', 'getallproducts', 'device id of the app', '2018-11-22 18:48:13'),
(1952, '1542979091668', 'getallpages', 'device id of the app', '2018-11-22 18:48:13'),
(1953, '1542979091662', 'getallproducts', 'device id of the app', '2018-11-22 18:48:13'),
(1954, '1542979091665', 'allcategories', 'device id of the app', '2018-11-22 18:48:13'),
(1955, '1542979092050', 'sitesetting', 'device id of the app', '2018-11-22 18:48:14'),
(1956, '1542979091664', 'getallproducts', 'device id of the app', '2018-11-22 18:48:14'),
(1957, '1542979094253', 'getallproducts', 'device id of the app', '2018-11-22 18:48:14'),
(1958, '1542979114093', 'getbanners', 'device id of the app', '2018-11-22 18:48:35'),
(1959, '1542979114097', 'getallproducts', 'device id of the app', '2018-11-22 18:48:35'),
(1960, '1542979114099', 'getallproducts', 'device id of the app', '2018-11-22 18:48:35'),
(1961, '1542979114105', 'getallpages', 'device id of the app', '2018-11-22 18:48:35'),
(1962, '1542979114103', 'getallproducts', 'device id of the app', '2018-11-22 18:48:36'),
(1963, '1542979114104', 'allcategories', 'device id of the app', '2018-11-22 18:48:36'),
(1964, '1542979114330', 'sitesetting', 'device id of the app', '2018-11-22 18:48:36'),
(1965, '1542979116737', 'getallproducts', 'device id of the app', '2018-11-22 18:48:36'),
(1966, '1542979168404', 'getallproducts', 'device id of the app', '2018-11-22 18:49:30'),
(1967, '1542979168394', 'getbanners', 'device id of the app', '2018-11-22 18:49:30'),
(1968, '1542979168401', 'getallproducts', 'device id of the app', '2018-11-22 18:49:30'),
(1969, '1542979168405', 'getallproducts', 'device id of the app', '2018-11-22 18:49:31'),
(1970, '1542979168406', 'getallproducts', 'device id of the app', '2018-11-22 18:49:31'),
(1971, '1542979168408', 'allcategories', 'device id of the app', '2018-11-22 18:49:31'),
(1972, '1542979169094', 'sitesetting', 'device id of the app', '2018-11-22 18:49:31'),
(1973, '1542979168409', 'getallpages', 'device id of the app', '2018-11-22 18:49:31'),
(1974, '1542979170388', 'getallproducts', 'device id of the app', '2018-11-22 18:49:32'),
(1975, '1542979202616', 'getallproducts', 'device id of the app', '2018-11-22 18:50:04'),
(1976, '1542979403818', 'getallproducts', 'device id of the app', '2018-11-22 18:53:25'),
(1977, '1542979403825', 'getallproducts', 'device id of the app', '2018-11-22 18:53:25'),
(1978, '1542979403809', 'getbanners', 'device id of the app', '2018-11-22 18:53:25'),
(1979, '1542979403821', 'getallproducts', 'device id of the app', '2018-11-22 18:53:25'),
(1980, '1542979403822', 'getallproducts', 'device id of the app', '2018-11-22 18:53:25'),
(1981, '1542979403830', 'allcategories', 'device id of the app', '2018-11-22 18:53:26'),
(1982, '1542979403837', 'getallpages', 'device id of the app', '2018-11-22 18:53:26'),
(1983, '1542979404130', 'sitesetting', 'device id of the app', '2018-11-22 18:53:26'),
(1984, '1542979406382', 'getallproducts', 'device id of the app', '2018-11-22 18:53:26'),
(1985, '1542979435280', 'getallproducts', 'device id of the app', '2018-11-22 18:53:54'),
(1986, '1542979435281', 'getallproducts', 'device id of the app', '2018-11-22 18:53:54'),
(1987, '1542979435283', 'getallproducts', 'device id of the app', '2018-11-22 18:53:54'),
(1988, '1542979435275', 'getbanners', 'device id of the app', '2018-11-22 18:53:54'),
(1989, '1542979435284', 'allcategories', 'device id of the app', '2018-11-22 18:53:54'),
(1990, '1542979435284', 'getallproducts', 'device id of the app', '2018-11-22 18:53:54'),
(1991, '1542979435285', 'getallpages', 'device id of the app', '2018-11-22 18:53:55'),
(1992, '1542979436478', 'sitesetting', 'device id of the app', '2018-11-22 18:53:55'),
(1993, '1542979437021', 'getallproducts', 'device id of the app', '2018-11-22 18:53:55'),
(1994, '1542979448649', 'getallproducts', 'device id of the app', '2018-11-22 18:54:10'),
(1995, '1542979448651', 'getallproducts', 'device id of the app', '2018-11-22 18:54:10'),
(1996, '1542979448648', 'getallproducts', 'device id of the app', '2018-11-22 18:54:11'),
(1997, '1542979448640', 'getbanners', 'device id of the app', '2018-11-22 18:54:11'),
(1998, '1542979448653', 'getallproducts', 'device id of the app', '2018-11-22 18:54:11'),
(1999, '1542979448654', 'allcategories', 'device id of the app', '2018-11-22 18:54:11'),
(2000, '1542979448656', 'getallpages', 'device id of the app', '2018-11-22 18:54:11'),
(2001, '1542979449563', 'sitesetting', 'device id of the app', '2018-11-22 18:54:11'),
(2002, '1542979450456', 'getallproducts', 'device id of the app', '2018-11-22 18:54:12'),
(2003, '1542979511249', 'getbanners', 'device id of the app', '2018-11-22 18:55:13'),
(2004, '1542979511259', 'getallproducts', 'device id of the app', '2018-11-22 18:55:13'),
(2005, '1542979511262', 'getallproducts', 'device id of the app', '2018-11-22 18:55:13'),
(2006, '1542979511264', 'getallproducts', 'device id of the app', '2018-11-22 18:55:13'),
(2007, '1542979511265', 'getallproducts', 'device id of the app', '2018-11-22 18:55:13'),
(2008, '1542979511271', 'getallpages', 'device id of the app', '2018-11-22 18:55:13'),
(2009, '1542979511767', 'sitesetting', 'device id of the app', '2018-11-22 18:55:14'),
(2010, '1542979511268', 'allcategories', 'device id of the app', '2018-11-22 18:55:14'),
(2011, '1542979512921', 'getallproducts', 'device id of the app', '2018-11-22 18:55:14'),
(2012, '1542979532898', 'getlanguages', 'device id of the app', '2018-11-22 18:55:34'),
(2013, '1542979548299', 'getallproducts', 'device id of the app', '2018-11-22 18:55:50'),
(2014, '1542979548302', 'getallproducts', 'device id of the app', '2018-11-22 18:55:50'),
(2015, '1542979548296', 'getbanners', 'device id of the app', '2018-11-22 18:55:50'),
(2016, '1542979548306', 'getallproducts', 'device id of the app', '2018-11-22 18:55:50'),
(2017, '1542979548304', 'getallproducts', 'device id of the app', '2018-11-22 18:55:50'),
(2018, '1542979548309', 'allcategories', 'device id of the app', '2018-11-22 18:55:50'),
(2019, '1542979548848', 'sitesetting', 'device id of the app', '2018-11-22 18:55:51'),
(2020, '1542979548310', 'getallpages', 'device id of the app', '2018-11-22 18:55:51'),
(2021, '1542979550074', 'getallproducts', 'device id of the app', '2018-11-22 18:55:51'),
(2022, '1542979636729', 'getfilters', 'device id of the app', '2018-11-22 18:57:18'),
(2023, '1542979636727', 'getallproducts', 'device id of the app', '2018-11-22 18:57:18'),
(2024, '1542979652368', 'getallproducts', 'device id of the app', '2018-11-22 18:57:34'),
(2025, '1542979779677', 'getallproducts', 'device id of the app', '2018-11-22 18:59:38'),
(2026, '1542979779678', 'getallproducts', 'device id of the app', '2018-11-22 18:59:39'),
(2027, '1542979779679', 'getallproducts', 'device id of the app', '2018-11-22 18:59:39'),
(2028, '1542979779670', 'getbanners', 'device id of the app', '2018-11-22 18:59:39'),
(2029, '1542979779680', 'getallproducts', 'device id of the app', '2018-11-22 18:59:39'),
(2030, '1542979779680', 'allcategories', 'device id of the app', '2018-11-22 18:59:39'),
(2031, '1542979779685', 'getallpages', 'device id of the app', '2018-11-22 18:59:39'),
(2032, '1542979780883', 'sitesetting', 'device id of the app', '2018-11-22 18:59:39'),
(2033, '1542979781511', 'getallproducts', 'device id of the app', '2018-11-22 18:59:40'),
(2034, '1542979821118', 'getallproducts', 'device id of the app', '2018-11-22 19:00:19'),
(2035, '1542979827460', 'getallproducts', 'device id of the app', '2018-11-22 19:00:26'),
(2036, '1542979825354', 'getbanners', 'device id of the app', '2018-11-22 19:00:26'),
(2037, '1542979827462', 'getfilters', 'device id of the app', '2018-11-22 19:00:26'),
(2038, '1542979825357', 'getallproducts', 'device id of the app', '2018-11-22 19:00:27'),
(2039, '1542979825360', 'getallproducts', 'device id of the app', '2018-11-22 19:00:27'),
(2040, '1542979825361', 'allcategories', 'device id of the app', '2018-11-22 19:00:27'),
(2041, '1542979825362', 'getallpages', 'device id of the app', '2018-11-22 19:00:27'),
(2042, '1542979825359', 'getallproducts', 'device id of the app', '2018-11-22 19:00:27'),
(2043, '1542979825358', 'getallproducts', 'device id of the app', '2018-11-22 19:00:27'),
(2044, '1542979825786', 'sitesetting', 'device id of the app', '2018-11-22 19:00:27'),
(2045, '1542979827824', 'getallproducts', 'device id of the app', '2018-11-22 19:00:28'),
(2046, '1542979834589', 'getallproducts', 'device id of the app', '2018-11-22 19:00:35'),
(2047, '1542979834595', 'getallproducts', 'device id of the app', '2018-11-22 19:00:35'),
(2048, '1542979834594', 'getallproducts', 'device id of the app', '2018-11-22 19:00:36'),
(2049, '1542979834585', 'getbanners', 'device id of the app', '2018-11-22 19:00:36'),
(2050, '1542979834596', 'allcategories', 'device id of the app', '2018-11-22 19:00:36'),
(2051, '1542979835088', 'sitesetting', 'device id of the app', '2018-11-22 19:00:36'),
(2052, '1542979834597', 'getallpages', 'device id of the app', '2018-11-22 19:00:36'),
(2053, '1542979836781', 'getallproducts', 'device id of the app', '2018-11-22 19:00:37'),
(2054, '1542979853107', 'getbanners', 'device id of the app', '2018-11-22 19:00:54'),
(2055, '1542979853110', 'getallproducts', 'device id of the app', '2018-11-22 19:00:54'),
(2056, '1542979853113', 'getallproducts', 'device id of the app', '2018-11-22 19:00:54'),
(2057, '1542979853112', 'getallproducts', 'device id of the app', '2018-11-22 19:00:54'),
(2058, '1542979853115', 'allcategories', 'device id of the app', '2018-11-22 19:00:54'),
(2059, '1542979853116', 'getallpages', 'device id of the app', '2018-11-22 19:00:54'),
(2060, '1542979853114', 'getallproducts', 'device id of the app', '2018-11-22 19:00:54'),
(2061, '1542979853341', 'sitesetting', 'device id of the app', '2018-11-22 19:00:54'),
(2062, '1542979854943', 'getallproducts', 'device id of the app', '2018-11-22 19:00:55'),
(2063, '1542979859769', 'getlanguages', 'device id of the app', '2018-11-22 19:01:00'),
(2064, '1542979867836', 'getbanners', 'device id of the app', '2018-11-22 19:01:09'),
(2065, '1542979867839', 'getallproducts', 'device id of the app', '2018-11-22 19:01:09'),
(2066, '1542979867841', 'getallproducts', 'device id of the app', '2018-11-22 19:01:09'),
(2067, '1542979867842', 'getallproducts', 'device id of the app', '2018-11-22 19:01:09'),
(2068, '1542979867843', 'allcategories', 'device id of the app', '2018-11-22 19:01:09'),
(2069, '1542979868094', 'sitesetting', 'device id of the app', '2018-11-22 19:01:09'),
(2070, '1542979867844', 'getallpages', 'device id of the app', '2018-11-22 19:01:09'),
(2071, '1542979869920', 'getallproducts', 'device id of the app', '2018-11-22 19:01:10'),
(2072, '1542979879091', 'getallproducts', 'device id of the app', '2018-11-22 19:01:20'),
(2073, '1542979886161', 'getallproducts', 'device id of the app', '2018-11-22 19:01:26'),
(2074, '1542979900597', 'getallproducts', 'device id of the app', '2018-11-22 19:01:41'),
(2075, '1542979900598', 'getallproducts', 'device id of the app', '2018-11-22 19:01:42'),
(2076, '1542979900594', 'getbanners', 'device id of the app', '2018-11-22 19:01:42'),
(2077, '1542979900601', 'allcategories', 'device id of the app', '2018-11-22 19:01:42'),
(2078, '1542979900599', 'getallproducts', 'device id of the app', '2018-11-22 19:01:42'),
(2079, '1542979900601', 'getallpages', 'device id of the app', '2018-11-22 19:01:42'),
(2080, '1542979900942', 'sitesetting', 'device id of the app', '2018-11-22 19:01:42'),
(2081, '1542979902781', 'getallproducts', 'device id of the app', '2018-11-22 19:01:43'),
(2082, '1542979945772', 'getbanners', 'device id of the app', '2018-11-22 19:02:27'),
(2083, '1542979945778', 'getallproducts', 'device id of the app', '2018-11-22 19:02:27'),
(2084, '1542979945779', 'getallproducts', 'device id of the app', '2018-11-22 19:02:27'),
(2085, '1542979945780', 'getallproducts', 'device id of the app', '2018-11-22 19:02:27'),
(2086, '1542979945781', 'allcategories', 'device id of the app', '2018-11-22 19:02:27'),
(2087, '1542979945782', 'getallpages', 'device id of the app', '2018-11-22 19:02:27'),
(2088, '1542979946065', 'sitesetting', 'device id of the app', '2018-11-22 19:02:27'),
(2089, '1542979947878', 'getallproducts', 'device id of the app', '2018-11-22 19:02:28'),
(2090, '1542979954733', 'getallproducts', 'device id of the app', '2018-11-22 19:02:35'),
(2091, '1542980029892', 'getallproducts', 'device id of the app', '2018-11-22 19:03:51'),
(2092, '1542980029887', 'getbanners', 'device id of the app', '2018-11-22 19:03:51'),
(2093, '1542980029891', 'getallproducts', 'device id of the app', '2018-11-22 19:03:51'),
(2094, '1542980029893', 'getallproducts', 'device id of the app', '2018-11-22 19:03:51'),
(2095, '1542980029894', 'allcategories', 'device id of the app', '2018-11-22 19:03:51'),
(2096, '1542980029895', 'getallpages', 'device id of the app', '2018-11-22 19:03:51'),
(2097, '1542980030016', 'sitesetting', 'device id of the app', '2018-11-22 19:03:51'),
(2098, '1542980032005', 'getallproducts', 'device id of the app', '2018-11-22 19:03:52'),
(2099, '1542980048843', 'processlogin', 'device id of the app', '2018-11-22 19:04:10'),
(2100, '1542980049850', 'registerdevices', 'device id of the app', '2018-11-22 19:04:11'),
(2101, '1542980051214', 'getalladdress', 'device id of the app', '2018-11-22 19:04:12'),
(2102, '1542980092171', 'getbanners', 'device id of the app', '2018-11-22 19:04:53'),
(2103, '1542980092176', 'getallproducts', 'device id of the app', '2018-11-22 19:04:53'),
(2104, '1542980092177', 'getallproducts', 'device id of the app', '2018-11-22 19:04:53'),
(2105, '1542980092178', 'getallproducts', 'device id of the app', '2018-11-22 19:04:53'),
(2106, '1542980092180', 'allcategories', 'device id of the app', '2018-11-22 19:04:53'),
(2107, '1542980092179', 'getallproducts', 'device id of the app', '2018-11-22 19:04:54'),
(2108, '1542980092181', 'getallpages', 'device id of the app', '2018-11-22 19:04:54'),
(2109, '1542980092456', 'sitesetting', 'device id of the app', '2018-11-22 19:04:54'),
(2110, '1542980094496', 'getallproducts', 'device id of the app', '2018-11-22 19:04:54'),
(2111, '1542980169702', 'getbanners', 'device id of the app', '2018-11-22 19:06:11'),
(2112, '1542980169706', 'getallproducts', 'device id of the app', '2018-11-22 19:06:11'),
(2113, '1542980169708', 'getallproducts', 'device id of the app', '2018-11-22 19:06:11'),
(2114, '1542980169710', 'getallproducts', 'device id of the app', '2018-11-22 19:06:11'),
(2115, '1542980169710', 'allcategories', 'device id of the app', '2018-11-22 19:06:11'),
(2116, '1542980169711', 'getallpages', 'device id of the app', '2018-11-22 19:06:11'),
(2117, '1542980169921', 'sitesetting', 'device id of the app', '2018-11-22 19:06:11'),
(2118, '1542980172007', 'getallproducts', 'device id of the app', '2018-11-22 19:06:12'),
(2119, '1542980184014', 'getrate', 'device id of the app', '2018-11-22 19:06:26'),
(2120, '1542980188598', 'getpaymentmethods', 'device id of the app', '2018-11-22 19:06:30'),
(2121, '1542980189047', 'generatebraintreetoken', 'device id of the app', '2018-11-22 19:06:30'),
(2122, '1542980189053', 'generatebraintreetoken', 'device id of the app', '2018-11-22 19:06:31'),
(2123, '1542980430764', 'getallproducts', 'device id of the app', '2018-11-22 19:10:32'),
(2124, '1542980430760', 'getbanners', 'device id of the app', '2018-11-22 19:10:32'),
(2125, '1542980430765', 'getallproducts', 'device id of the app', '2018-11-22 19:10:32'),
(2126, '1542980430769', 'getallproducts', 'device id of the app', '2018-11-22 19:10:32'),
(2127, '1542980430767', 'getallproducts', 'device id of the app', '2018-11-22 19:10:32'),
(2128, '1542980430772', 'getallpages', 'device id of the app', '2018-11-22 19:10:32'),
(2129, '1542980430770', 'allcategories', 'device id of the app', '2018-11-22 19:10:32'),
(2130, '1542980431144', 'sitesetting', 'device id of the app', '2018-11-22 19:10:33'),
(2131, '1542980433254', 'getallproducts', 'device id of the app', '2018-11-22 19:10:33'),
(2132, '1542980567436', 'getbanners', 'device id of the app', '2018-11-22 19:12:48'),
(2133, '1542980567444', 'getallproducts', 'device id of the app', '2018-11-22 19:12:48'),
(2134, '1542980567440', 'getallproducts', 'device id of the app', '2018-11-22 19:12:48'),
(2135, '1542980567443', 'getallproducts', 'device id of the app', '2018-11-22 19:12:49'),
(2136, '1542980567441', 'getallproducts', 'device id of the app', '2018-11-22 19:12:49'),
(2137, '1542980567445', 'allcategories', 'device id of the app', '2018-11-22 19:12:49'),
(2138, '1542980567447', 'getallpages', 'device id of the app', '2018-11-22 19:12:49'),
(2139, '1542980567801', 'sitesetting', 'device id of the app', '2018-11-22 19:12:49'),
(2140, '1542980569697', 'getallproducts', 'device id of the app', '2018-11-22 19:12:49'),
(2141, '1542980587801', 'getallproducts', 'device id of the app', '2018-11-22 19:13:09'),
(2142, '1542980587796', 'getbanners', 'device id of the app', '2018-11-22 19:13:09'),
(2143, '1542980587800', 'getallproducts', 'device id of the app', '2018-11-22 19:13:09'),
(2144, '1542980587802', 'getallproducts', 'device id of the app', '2018-11-22 19:13:09'),
(2145, '1542980587803', 'allcategories', 'device id of the app', '2018-11-22 19:13:09'),
(2146, '1542980588070', 'sitesetting', 'device id of the app', '2018-11-22 19:13:09'),
(2147, '1542980587804', 'getallpages', 'device id of the app', '2018-11-22 19:13:09'),
(2148, '1542980590059', 'getallproducts', 'device id of the app', '2018-11-22 19:13:10'),
(2149, '1542980811255', 'getallproducts', 'device id of the app', '2018-11-22 19:16:51'),
(2150, '1542980811260', 'getallproducts', 'device id of the app', '2018-11-22 19:16:51'),
(2151, '1542980811259', 'getallproducts', 'device id of the app', '2018-11-22 19:16:51'),
(2152, '1542980811257', 'getallproducts', 'device id of the app', '2018-11-22 19:16:51'),
(2153, '1542980811250', 'getbanners', 'device id of the app', '2018-11-22 19:16:51'),
(2154, '1542980811261', 'allcategories', 'device id of the app', '2018-11-22 19:16:51'),
(2155, '1542980811262', 'getallpages', 'device id of the app', '2018-11-22 19:16:51'),
(2156, '1542980811842', 'sitesetting', 'device id of the app', '2018-11-22 19:16:51'),
(2157, '1542980813671', 'getallproducts', 'device id of the app', '2018-11-22 19:16:52'),
(2158, '1542981303654', 'getallproducts', 'device id of the app', '2018-11-22 19:25:02'),
(2159, '1542981307811', 'getallproducts', 'device id of the app', '2018-11-22 19:25:06'),
(2160, '1542981334536', 'getallproducts', 'device id of the app', '2018-11-22 19:25:33'),
(2161, '1542981340795', 'getallproducts', 'device id of the app', '2018-11-22 19:25:39'),
(2162, '1542981344577', 'getallproducts', 'device id of the app', '2018-11-22 19:25:43'),
(2163, '1542981346294', 'getallproducts', 'device id of the app', '2018-11-22 19:25:45'),
(2164, '1542981348553', 'getallproducts', 'device id of the app', '2018-11-22 19:25:47'),
(2165, '1542981990265', 'allcategories', 'device id of the app', '2018-11-22 19:36:31'),
(2166, '1542981990224', 'getallproducts', 'device id of the app', '2018-11-22 19:36:31'),
(2167, '1542981990140', 'getbanners', 'device id of the app', '2018-11-22 19:36:31'),
(2168, '1542981990250', 'getallproducts', 'device id of the app', '2018-11-22 19:36:31'),
(2169, '1542981990237', 'getallproducts', 'device id of the app', '2018-11-22 19:36:31'),
(2170, '1542981990218', 'getallproducts', 'device id of the app', '2018-11-22 19:36:31'),
(2171, '1542981990271', 'getallpages', 'device id of the app', '2018-11-22 19:36:31'),
(2172, '1542981991790', 'sitesetting', 'device id of the app', '2018-11-22 19:36:32'),
(2173, '1542981994622', 'registerdevices', 'device id of the app', '2018-11-22 19:36:34'),
(2174, '1542982010594', 'getallproducts', 'device id of the app', '2018-11-22 19:36:51'),
(2175, '1542982328733', 'addtoorder', 'device id of the app', '2018-11-22 19:42:11'),
(2176, '1542982335293', 'getorders', 'device id of the app', '2018-11-22 19:42:17'),
(2177, '1542982581409', 'getallproducts', 'device id of the app', '2018-11-22 19:46:23'),
(2178, '1542982900874', 'getbanners', 'device id of the app', '2018-11-22 19:51:43'),
(2179, '1542982900910', 'getallproducts', 'device id of the app', '2018-11-22 19:51:44'),
(2180, '1542982900911', 'getallproducts', 'device id of the app', '2018-11-22 19:51:44'),
(2181, '1542982900900', 'getallproducts', 'device id of the app', '2018-11-22 19:51:44'),
(2182, '1542982900913', 'getallpages', 'device id of the app', '2018-11-22 19:51:44'),
(2183, '1542982900912', 'allcategories', 'device id of the app', '2018-11-22 19:51:44'),
(2184, '1542982901023', 'sitesetting', 'device id of the app', '2018-11-22 19:51:45'),
(2185, '1542982905590', 'getallproducts', 'device id of the app', '2018-11-22 19:51:45'),
(2186, '1542982952010', 'getallproducts', 'device id of the app', '2018-11-22 19:52:33'),
(2187, '1542982952005', 'getbanners', 'device id of the app', '2018-11-22 19:52:33'),
(2188, '1542982952014', 'allcategories', 'device id of the app', '2018-11-22 19:52:33'),
(2189, '1542982952011', 'getallproducts', 'device id of the app', '2018-11-22 19:52:33'),
(2190, '1542982952012', 'getallproducts', 'device id of the app', '2018-11-22 19:52:33'),
(2191, '1542982952241', 'sitesetting', 'device id of the app', '2018-11-22 19:52:33'),
(2192, '1542982952016', 'getallpages', 'device id of the app', '2018-11-22 19:52:34'),
(2193, '1542982954286', 'getallproducts', 'device id of the app', '2018-11-22 19:52:34'),
(2194, '1542982964966', 'getorders', 'device id of the app', '2018-11-22 19:52:45'),
(2195, '1542983087265', 'getallproducts', 'device id of the app', '2018-11-22 19:54:48'),
(2196, '1542983087261', 'getbanners', 'device id of the app', '2018-11-22 19:54:48'),
(2197, '1542983087269', 'getallproducts', 'device id of the app', '2018-11-22 19:54:48'),
(2198, '1542983087268', 'getallproducts', 'device id of the app', '2018-11-22 19:54:48'),
(2199, '1542983087271', 'getallproducts', 'device id of the app', '2018-11-22 19:54:48'),
(2200, '1542983087273', 'allcategories', 'device id of the app', '2018-11-22 19:54:49'),
(2201, '1542983087277', 'getallpages', 'device id of the app', '2018-11-22 19:54:49'),
(2202, '1542983087387', 'sitesetting', 'device id of the app', '2018-11-22 19:54:49'),
(2203, '1542983089445', 'getallproducts', 'device id of the app', '2018-11-22 19:54:49'),
(2204, '1542983120101', 'getbanners', 'device id of the app', '2018-11-22 19:55:21'),
(2205, '1542983120104', 'getallproducts', 'device id of the app', '2018-11-22 19:55:21'),
(2206, '1542983120106', 'getallproducts', 'device id of the app', '2018-11-22 19:55:21'),
(2207, '1542983120109', 'getallproducts', 'device id of the app', '2018-11-22 19:55:21'),
(2208, '1542983120110', 'getallproducts', 'device id of the app', '2018-11-22 19:55:21'),
(2209, '1542983120112', 'allcategories', 'device id of the app', '2018-11-22 19:55:22'),
(2210, '1542983120113', 'getallpages', 'device id of the app', '2018-11-22 19:55:22'),
(2211, '1542983120415', 'sitesetting', 'device id of the app', '2018-11-22 19:55:22'),
(2212, '1542983122476', 'getallproducts', 'device id of the app', '2018-11-22 19:55:22'),
(2213, '1542983221556', 'getallproducts', 'device id of the app', '2018-11-22 19:57:04'),
(2214, '1542983221544', 'getbanners', 'device id of the app', '2018-11-22 19:57:04'),
(2215, '1542983221554', 'getallproducts', 'device id of the app', '2018-11-22 19:57:04'),
(2216, '1542983221552', 'getallproducts', 'device id of the app', '2018-11-22 19:57:04'),
(2217, '1542983221558', 'getallproducts', 'device id of the app', '2018-11-22 19:57:04'),
(2218, '1542983221559', 'allcategories', 'device id of the app', '2018-11-22 19:57:04'),
(2219, '1542983221561', 'getallpages', 'device id of the app', '2018-11-22 19:57:04'),
(2220, '1542983222226', 'sitesetting', 'device id of the app', '2018-11-22 19:57:05'),
(2221, '1542983223307', 'getallproducts', 'device id of the app', '2018-11-22 19:57:05'),
(2222, '1542983255126', 'getallproducts', 'device id of the app', '2018-11-22 19:57:37'),
(2223, '1542983267953', 'getallproducts', 'device id of the app', '2018-11-22 19:57:50'),
(2224, '1542983267954', 'getfilters', 'device id of the app', '2018-11-22 19:57:50'),
(2225, '1542983269823', 'getallproducts', 'device id of the app', '2018-11-22 19:57:52'),
(2226, '1542983291604', 'getfilters', 'device id of the app', '2018-11-22 19:58:13'),
(2227, '1542983291602', 'getallproducts', 'device id of the app', '2018-11-22 19:58:13'),
(2228, '1542983662150', 'getorders', 'device id of the app', '2018-11-22 20:04:23'),
(2229, '1542983829739', 'getallproducts', 'device id of the app', '2018-11-22 20:07:12'),
(2230, '1542983833276', 'getallproducts', 'device id of the app', '2018-11-22 20:07:15'),
(2231, '1542983840506', 'getallproducts', 'device id of the app', '2018-11-22 20:07:23'),
(2232, '1542983941416', 'getallproducts', 'device id of the app', '2018-11-22 20:09:00'),
(2233, '1542983941423', 'getallproducts', 'device id of the app', '2018-11-22 20:09:01'),
(2234, '1542983941430', 'getallproducts', 'device id of the app', '2018-11-22 20:09:01'),
(2235, '1542983941436', 'getallproducts', 'device id of the app', '2018-11-22 20:09:01'),
(2236, '1542983941397', 'getbanners', 'device id of the app', '2018-11-22 20:09:01'),
(2237, '1542983941442', 'allcategories', 'device id of the app', '2018-11-22 20:09:01'),
(2238, '1542983941449', 'getallpages', 'device id of the app', '2018-11-22 20:09:01'),
(2239, '1542983942352', 'sitesetting', 'device id of the app', '2018-11-22 20:09:01'),
(2240, '1542983943459', 'getallproducts', 'device id of the app', '2018-11-22 20:09:02'),
(2241, '1542983969617', 'getallproducts', 'device id of the app', '2018-11-22 20:09:28'),
(2242, '1542984121580', 'getallproducts', 'device id of the app', '2018-11-22 20:12:00'),
(2243, '1542984128688', 'getallproducts', 'device id of the app', '2018-11-22 20:12:07'),
(2244, '1542984260272', 'getallproducts', 'device id of the app', '2018-11-22 20:14:19'),
(2245, '1542984279006', 'getallproducts', 'device id of the app', '2018-11-22 20:14:38'),
(2246, '1543320621571', 'getallproducts', 'device id of the app', '2018-11-27 05:40:46'),
(2247, '1543320621565', 'getallproducts', 'device id of the app', '2018-11-27 05:40:46'),
(2248, '1543320621575', 'getallproducts', 'device id of the app', '2018-11-27 05:40:46'),
(2249, '1543320621573', 'getallproducts', 'device id of the app', '2018-11-27 05:40:46'),
(2250, '1543320621578', 'allcategories', 'device id of the app', '2018-11-27 05:40:46'),
(2251, '1543320621581', 'getallpages', 'device id of the app', '2018-11-27 05:40:46'),
(2252, '1543320621555', 'getbanners', 'device id of the app', '2018-11-27 05:40:46'),
(2253, '1543320622657', 'sitesetting', 'device id of the app', '2018-11-27 05:40:47'),
(2254, '1543320623420', 'getallproducts', 'device id of the app', '2018-11-27 05:40:47'),
(2255, '1543320629240', 'getallproducts', 'device id of the app', '2018-11-27 05:40:54'),
(2256, '1562567372824', 'getbanners', 'device id of the app', '2019-07-07 17:29:37'),
(2257, '1562567372837', 'getallproducts', 'device id of the app', '2019-07-07 17:29:37'),
(2258, '1562567372835', 'getallproducts', 'device id of the app', '2019-07-07 17:29:37'),
(2259, '1562567372838', 'getallproducts', 'device id of the app', '2019-07-07 17:29:37'),
(2260, '1562567372839', 'getallproducts', 'device id of the app', '2019-07-07 17:29:38'),
(2261, '1562567372840', 'allcategories', 'device id of the app', '2019-07-07 17:29:38'),
(2262, '1562567372843', 'getallpages', 'device id of the app', '2019-07-07 17:29:39'),
(2263, '1562567375767', 'sitesetting', 'device id of the app', '2019-07-07 17:29:39'),
(2264, '1562567378606', 'registerdevices', 'device id of the app', '2019-07-07 17:29:40'),
(2265, '1562567390460', 'getallproducts', 'device id of the app', '2019-07-07 17:29:54'),
(2266, '1562567403466', 'getallproducts', 'device id of the app', '2019-07-07 17:30:10'),
(2267, '1562567503802', 'getallproducts', 'device id of the app', '2019-07-07 17:31:45'),
(2268, '1562567503806', 'getfilters', 'device id of the app', '2019-07-07 17:31:46'),
(2269, '1562567526238', 'getallproducts', 'device id of the app', '2019-07-07 17:32:09'),
(2270, '1562567526239', 'getallproducts', 'device id of the app', '2019-07-07 17:32:09'),
(2271, '1562567526236', 'getallproducts', 'device id of the app', '2019-07-07 17:32:09'),
(2272, '1562567526240', 'getallproducts', 'device id of the app', '2019-07-07 17:32:09'),
(2273, '1562567526230', 'getbanners', 'device id of the app', '2019-07-07 17:32:09'),
(2274, '1562567526241', 'allcategories', 'device id of the app', '2019-07-07 17:32:09'),
(2275, '1562567526244', 'getallpages', 'device id of the app', '2019-07-07 17:32:12'),
(2276, '1562567529843', 'sitesetting', 'device id of the app', '2019-07-07 17:32:13'),
(2277, '1562567532185', 'getallproducts', 'device id of the app', '2019-07-07 17:32:14'),
(2278, '1562570406331', 'getbanners', 'device id of the app', '2019-07-07 18:20:07'),
(2279, '1562570406345', 'getallproducts', 'device id of the app', '2019-07-07 18:20:07'),
(2280, '1562570406350', 'getallproducts', 'device id of the app', '2019-07-07 18:20:07'),
(2281, '1562570406354', 'getallproducts', 'device id of the app', '2019-07-07 18:20:07'),
(2282, '1562570406361', 'allcategories', 'device id of the app', '2019-07-07 18:20:07'),
(2283, '1562570406357', 'getallproducts', 'device id of the app', '2019-07-07 18:20:12'),
(2284, '1562570411739', 'sitesetting', 'device id of the app', '2019-07-07 18:20:18'),
(2285, '1562570427500', 'registerdevices', 'device id of the app', '2019-07-07 18:20:28'),
(2286, '1562572056089', 'getallproducts', 'device id of the app', '2019-07-07 18:47:37'),
(2287, '1562572056083', 'getbanners', 'device id of the app', '2019-07-07 18:47:38'),
(2288, '1562572056091', 'getallproducts', 'device id of the app', '2019-07-07 18:47:39'),
(2289, '1562572056092', 'getallproducts', 'device id of the app', '2019-07-07 18:47:40'),
(2290, '1562572056093', 'getallproducts', 'device id of the app', '2019-07-07 18:47:40'),
(2291, '1562572056096', 'getallpages', 'device id of the app', '2019-07-07 18:47:40'),
(2292, '1562572056094', 'allcategories', 'device id of the app', '2019-07-07 18:47:40'),
(2293, '1562572057133', 'sitesetting', 'device id of the app', '2019-07-07 18:47:53'),
(2294, '1562572073169', 'getallproducts', 'device id of the app', '2019-07-07 18:47:54'),
(2295, '1562572260612', 'getallproducts', 'device id of the app', '2019-07-07 18:51:02'),
(2296, '1562572260608', 'getallproducts', 'device id of the app', '2019-07-07 18:51:02'),
(2297, '1562572260599', 'getbanners', 'device id of the app', '2019-07-07 18:51:02'),
(2298, '1562572260613', 'getallproducts', 'device id of the app', '2019-07-07 18:51:02'),
(2299, '1562572260610', 'getallproducts', 'device id of the app', '2019-07-07 18:51:02'),
(2300, '1562572260615', 'allcategories', 'device id of the app', '2019-07-07 18:51:02'),
(2301, '1562572260617', 'getallpages', 'device id of the app', '2019-07-07 18:51:02'),
(2302, '1562572261291', 'sitesetting', 'device id of the app', '2019-07-07 18:51:37'),
(2303, '1562572304137', 'registerdevices', 'device id of the app', '2019-07-07 18:51:45'),
(2304, '1562572370138', 'getallproducts', 'device id of the app', '2019-07-07 18:52:50'),
(2305, '1562572580127', 'getallproducts', 'device id of the app', '2019-07-07 18:56:21'),
(2306, '1562572580125', 'getallproducts', 'device id of the app', '2019-07-07 18:56:21'),
(2307, '1562572580129', 'getallproducts', 'device id of the app', '2019-07-07 18:56:21');
INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(2308, '1562572580131', 'allcategories', 'device id of the app', '2019-07-07 18:56:21'),
(2309, '1562572580128', 'getallproducts', 'device id of the app', '2019-07-07 18:56:21'),
(2310, '1562572580119', 'getbanners', 'device id of the app', '2019-07-07 18:56:22'),
(2311, '1562572582021', 'sitesetting', 'device id of the app', '2019-07-07 18:56:25'),
(2312, '1562572580133', 'getallpages', 'device id of the app', '2019-07-07 18:56:25'),
(2313, '1562572586316', 'getallproducts', 'device id of the app', '2019-07-07 18:56:37'),
(2314, '1562573154255', 'getbanners', 'device id of the app', '2019-07-07 19:05:56'),
(2315, '1562573154264', 'getallproducts', 'device id of the app', '2019-07-07 19:05:56'),
(2316, '1562573154263', 'getallproducts', 'device id of the app', '2019-07-07 19:05:56'),
(2317, '1562573154261', 'getallproducts', 'device id of the app', '2019-07-07 19:05:56'),
(2318, '1562573154266', 'getallproducts', 'device id of the app', '2019-07-07 19:05:56'),
(2319, '1562573154267', 'allcategories', 'device id of the app', '2019-07-07 19:05:56'),
(2320, '1562573154269', 'getallpages', 'device id of the app', '2019-07-07 19:05:56'),
(2321, '1562573156169', 'sitesetting', 'device id of the app', '2019-07-07 19:05:57'),
(2322, '1562573158984', 'getallproducts', 'device id of the app', '2019-07-07 19:06:01'),
(2323, '1562573165851', 'getallproducts', 'device id of the app', '2019-07-07 19:06:07'),
(2324, '1562573170258', 'getallproducts', 'device id of the app', '2019-07-07 19:06:13'),
(2325, '1562573317558', 'getfilters', 'device id of the app', '2019-07-07 19:08:47'),
(2326, '1562573330441', 'getallproducts', 'device id of the app', '2019-07-07 19:09:04'),
(2327, '1562573317554', 'getallproducts', 'device id of the app', '2019-07-07 19:09:05'),
(2328, '1562573330442', 'getfilters', 'device id of the app', '2019-07-07 19:09:05'),
(2329, '1562573345335', 'getallproducts', 'device id of the app', '2019-07-07 19:09:16'),
(2330, '1562573396415', 'getallproducts', 'device id of the app', '2019-07-07 19:10:13'),
(2331, '1562573467705', 'getallproducts', 'device id of the app', '2019-07-07 19:11:09'),
(2332, '1562573467707', 'getallproducts', 'device id of the app', '2019-07-07 19:11:10'),
(2333, '1562573467700', 'getbanners', 'device id of the app', '2019-07-07 19:11:10'),
(2334, '1562573467709', 'getallproducts', 'device id of the app', '2019-07-07 19:11:10'),
(2335, '1562573467711', 'allcategories', 'device id of the app', '2019-07-07 19:11:10'),
(2336, '1562573467708', 'getallproducts', 'device id of the app', '2019-07-07 19:11:10'),
(2337, '1562573467713', 'getallpages', 'device id of the app', '2019-07-07 19:11:10'),
(2338, '1562573468996', 'sitesetting', 'device id of the app', '2019-07-07 19:11:14'),
(2339, '1562573480515', 'getallproducts', 'device id of the app', '2019-07-07 19:11:30'),
(2340, '1562573655873', 'getbanners', 'device id of the app', '2019-07-07 19:14:17'),
(2341, '1562573655880', 'getallproducts', 'device id of the app', '2019-07-07 19:14:17'),
(2342, '1562573655890', 'getallproducts', 'device id of the app', '2019-07-07 19:14:18'),
(2343, '1562573655894', 'getallproducts', 'device id of the app', '2019-07-07 19:14:18'),
(2344, '1562573655896', 'allcategories', 'device id of the app', '2019-07-07 19:14:18'),
(2345, '1562573655892', 'getallproducts', 'device id of the app', '2019-07-07 19:14:18'),
(2346, '1562573655899', 'getallpages', 'device id of the app', '2019-07-07 19:14:20'),
(2347, '1562573656790', 'sitesetting', 'device id of the app', '2019-07-07 19:14:21'),
(2348, '1562573666089', 'getallproducts', 'device id of the app', '2019-07-07 19:14:32'),
(2349, '1562573761439', 'getallproducts', 'device id of the app', '2019-07-07 19:16:03'),
(2350, '1562573761442', 'allcategories', 'device id of the app', '2019-07-07 19:16:03'),
(2351, '1562573761444', 'getallpages', 'device id of the app', '2019-07-07 19:16:03'),
(2352, '1562573761440', 'getallproducts', 'device id of the app', '2019-07-07 19:16:03'),
(2353, '1562573761438', 'getallproducts', 'device id of the app', '2019-07-07 19:16:03'),
(2354, '1562573761436', 'getallproducts', 'device id of the app', '2019-07-07 19:16:03'),
(2355, '1562573761431', 'getbanners', 'device id of the app', '2019-07-07 19:16:03'),
(2356, '1562573762401', 'sitesetting', 'device id of the app', '2019-07-07 19:16:04'),
(2357, '1562573764890', 'getallproducts', 'device id of the app', '2019-07-07 19:16:06'),
(2358, '1562573807479', 'getallproducts', 'device id of the app', '2019-07-07 19:16:49'),
(2359, '1562573813176', 'getallproducts', 'device id of the app', '2019-07-07 19:16:54'),
(2360, '1562573820416', 'getallproducts', 'device id of the app', '2019-07-07 19:17:02'),
(2361, '1562573820418', 'getfilters', 'device id of the app', '2019-07-07 19:17:02'),
(2362, '1562574348618', 'getallproducts', 'device id of the app', '2019-07-07 19:25:49'),
(2363, '1562574348603', 'getbanners', 'device id of the app', '2019-07-07 19:25:49'),
(2364, '1562574348621', 'getallproducts', 'device id of the app', '2019-07-07 19:25:49'),
(2365, '1562574348622', 'getallproducts', 'device id of the app', '2019-07-07 19:25:49'),
(2366, '1562574348620', 'getallproducts', 'device id of the app', '2019-07-07 19:25:49'),
(2367, '1562574348623', 'allcategories', 'device id of the app', '2019-07-07 19:25:49'),
(2368, '1562574348625', 'getallpages', 'device id of the app', '2019-07-07 19:25:50'),
(2369, '1562574349432', 'sitesetting', 'device id of the app', '2019-07-07 19:25:50'),
(2370, '1562574350920', 'getallproducts', 'device id of the app', '2019-07-07 19:25:51'),
(2371, '1562574358819', 'getfilters', 'device id of the app', '2019-07-07 19:25:59'),
(2372, '1562574358817', 'getallproducts', 'device id of the app', '2019-07-07 19:25:59'),
(2373, '1562574366018', 'allnewscategories', 'device id of the app', '2019-07-07 19:26:07'),
(2374, '1562574366012', 'getallnews', 'device id of the app', '2019-07-07 19:26:07'),
(2375, '1562574366015', 'getallnews', 'device id of the app', '2019-07-07 19:26:07'),
(2376, '1562574366336', 'allnewscategories', 'device id of the app', '2019-07-07 19:26:07'),
(2377, '1562574379450', 'getallnews', 'device id of the app', '2019-07-07 19:26:20'),
(2378, '1562574387532', 'getallnews', 'device id of the app', '2019-07-07 19:26:28'),
(2379, '1562574407929', 'getallnews', 'device id of the app', '2019-07-07 19:26:48'),
(2380, '1562574429119', 'getallnews', 'device id of the app', '2019-07-07 19:27:10'),
(2381, '1562574429124', 'allnewscategories', 'device id of the app', '2019-07-07 19:27:10'),
(2382, '1562574429122', 'getallnews', 'device id of the app', '2019-07-07 19:27:10'),
(2383, '1562574429505', 'allnewscategories', 'device id of the app', '2019-07-07 19:27:10'),
(2384, '1562574443218', 'getallproducts', 'device id of the app', '2019-07-07 19:27:24'),
(2385, '1562574754436', 'getallproducts', 'device id of the app', '2019-07-07 19:32:35'),
(2386, '1562576999026', 'getbanners', 'device id of the app', '2019-07-07 20:10:02'),
(2387, '1562576999039', 'getallproducts', 'device id of the app', '2019-07-07 20:10:02'),
(2388, '1562576999052', 'getallproducts', 'device id of the app', '2019-07-07 20:10:02'),
(2389, '1562576999063', 'getallpages', 'device id of the app', '2019-07-07 20:10:02'),
(2390, '1562576999047', 'getallproducts', 'device id of the app', '2019-07-07 20:10:02'),
(2391, '1562576999054', 'getallproducts', 'device id of the app', '2019-07-07 20:10:02'),
(2392, '1562576999056', 'allcategories', 'device id of the app', '2019-07-07 20:10:02'),
(2393, '1562577000086', 'sitesetting', 'device id of the app', '2019-07-07 20:10:02'),
(2394, '1562577009750', 'registerdevices', 'device id of the app', '2019-07-07 20:10:11'),
(2395, '1562577024543', 'getallproducts', 'device id of the app', '2019-07-07 20:10:26'),
(2396, '1562577086595', 'getallproducts', 'device id of the app', '2019-07-07 20:11:28'),
(2397, '1562577098395', 'getallproducts', 'device id of the app', '2019-07-07 20:11:40'),
(2398, '1562577098399', 'getfilters', 'device id of the app', '2019-07-07 20:11:40'),
(2399, '1562577112127', 'getallproducts', 'device id of the app', '2019-07-07 20:11:53'),
(2400, '1562577112129', 'getfilters', 'device id of the app', '2019-07-07 20:11:53'),
(2401, '1562577114122', 'getallproducts', 'device id of the app', '2019-07-07 20:11:55'),
(2402, '1562577114124', 'getfilters', 'device id of the app', '2019-07-07 20:11:55'),
(2403, '1562577115614', 'getfilters', 'device id of the app', '2019-07-07 20:11:57'),
(2404, '1562577115611', 'getallproducts', 'device id of the app', '2019-07-07 20:11:57'),
(2405, '1562577120265', 'getallnews', 'device id of the app', '2019-07-07 20:12:01'),
(2406, '1562577120267', 'getallnews', 'device id of the app', '2019-07-07 20:12:01'),
(2407, '1562577120270', 'allnewscategories', 'device id of the app', '2019-07-07 20:12:01'),
(2408, '1562577120931', 'allnewscategories', 'device id of the app', '2019-07-07 20:12:02'),
(2409, '1562577318329', 'getallproducts', 'device id of the app', '2019-07-07 20:15:37'),
(2410, '1562577318332', 'getfilters', 'device id of the app', '2019-07-07 20:15:43'),
(2411, '1562577404515', 'getallproducts', 'device id of the app', '2019-07-07 20:16:47'),
(2412, '1562577404510', 'getallproducts', 'device id of the app', '2019-07-07 20:16:47'),
(2413, '1562577404518', 'getallproducts', 'device id of the app', '2019-07-07 20:16:47'),
(2414, '1562577404521', 'getallproducts', 'device id of the app', '2019-07-07 20:16:47'),
(2415, '1562577404499', 'getbanners', 'device id of the app', '2019-07-07 20:16:47'),
(2416, '1562577404524', 'allcategories', 'device id of the app', '2019-07-07 20:16:47'),
(2417, '1562577404529', 'getallpages', 'device id of the app', '2019-07-07 20:16:47'),
(2418, '1562577405438', 'sitesetting', 'device id of the app', '2019-07-07 20:16:48'),
(2419, '1562577405898', 'getallproducts', 'device id of the app', '2019-07-07 20:16:48'),
(2420, '1562577412478', 'getallnews', 'device id of the app', '2019-07-07 20:16:55'),
(2421, '1562577412481', 'getallnews', 'device id of the app', '2019-07-07 20:16:55'),
(2422, '1562577412483', 'allnewscategories', 'device id of the app', '2019-07-07 20:16:55'),
(2423, '1562577412969', 'allnewscategories', 'device id of the app', '2019-07-07 20:16:55'),
(2424, '1562577446669', 'getallproducts', 'device id of the app', '2019-07-07 20:17:28'),
(2425, '1562577446671', 'getfilters', 'device id of the app', '2019-07-07 20:17:28'),
(2426, '1562577454704', 'getallproducts', 'device id of the app', '2019-07-07 20:17:35'),
(2427, '1562577808472', 'getallproducts', 'device id of the app', '2019-07-07 20:23:29'),
(2428, '1562577814306', 'getallproducts', 'device id of the app', '2019-07-07 20:23:35'),
(2429, '1562577873332', 'getallproducts', 'device id of the app', '2019-07-07 20:24:34'),
(2430, '1562578842243', 'getbanners', 'device id of the app', '2019-07-07 20:40:43'),
(2431, '1562578842263', 'getallproducts', 'device id of the app', '2019-07-07 20:40:43'),
(2432, '1562578842255', 'getallproducts', 'device id of the app', '2019-07-07 20:40:43'),
(2433, '1562578842267', 'allcategories', 'device id of the app', '2019-07-07 20:40:43'),
(2434, '1562578842259', 'getallproducts', 'device id of the app', '2019-07-07 20:40:43'),
(2435, '1562578842261', 'getallproducts', 'device id of the app', '2019-07-07 20:40:43'),
(2436, '1562578842273', 'getallpages', 'device id of the app', '2019-07-07 20:40:44'),
(2437, '1562578843095', 'sitesetting', 'device id of the app', '2019-07-07 20:40:44'),
(2438, '1562578843511', 'getallproducts', 'device id of the app', '2019-07-07 20:40:44'),
(2439, '1562579002638', 'getallnews', 'device id of the app', '2019-07-07 20:43:23'),
(2440, '1562579002646', 'allnewscategories', 'device id of the app', '2019-07-07 20:43:23'),
(2441, '1562579002642', 'getallnews', 'device id of the app', '2019-07-07 20:43:24'),
(2442, '1562579003074', 'allnewscategories', 'device id of the app', '2019-07-07 20:43:24'),
(2443, '1562579034598', 'getallnews', 'device id of the app', '2019-07-07 20:43:55'),
(2444, '1562579047605', 'getallnews', 'device id of the app', '2019-07-07 20:44:08'),
(2445, '1562579060723', 'getallnews', 'device id of the app', '2019-07-07 20:44:21'),
(2446, '1562579073380', 'getallnews', 'device id of the app', '2019-07-07 20:44:34'),
(2447, '1562579073384', 'allnewscategories', 'device id of the app', '2019-07-07 20:44:34'),
(2448, '1562579073382', 'getallnews', 'device id of the app', '2019-07-07 20:44:34'),
(2449, '1562579073667', 'allnewscategories', 'device id of the app', '2019-07-07 20:44:34'),
(2450, '1562581599658', 'getallproducts', 'device id of the app', '2019-07-07 21:26:41'),
(2451, '1562581736699', 'getallproducts', 'device id of the app', '2019-07-07 21:28:58'),
(2452, '1562581736689', 'getbanners', 'device id of the app', '2019-07-07 21:28:58'),
(2453, '1562581736701', 'getallproducts', 'device id of the app', '2019-07-07 21:28:58'),
(2454, '1562581736702', 'getallproducts', 'device id of the app', '2019-07-07 21:28:59'),
(2455, '1562581736704', 'getallproducts', 'device id of the app', '2019-07-07 21:28:59'),
(2456, '1562581736705', 'allcategories', 'device id of the app', '2019-07-07 21:28:59'),
(2457, '1562581736707', 'getallpages', 'device id of the app', '2019-07-07 21:28:59'),
(2458, '1562581737369', 'sitesetting', 'device id of the app', '2019-07-07 21:29:00'),
(2459, '1562581738900', 'getallproducts', 'device id of the app', '2019-07-07 21:29:00'),
(2460, '1562581821532', 'getallproducts', 'device id of the app', '2019-07-07 21:30:22'),
(2461, '1562581821535', 'allcategories', 'device id of the app', '2019-07-07 21:30:22'),
(2462, '1562581821524', 'getbanners', 'device id of the app', '2019-07-07 21:30:22'),
(2463, '1562581821534', 'getallproducts', 'device id of the app', '2019-07-07 21:30:22'),
(2464, '1562581821530', 'getallproducts', 'device id of the app', '2019-07-07 21:30:22'),
(2465, '1562581821533', 'getallproducts', 'device id of the app', '2019-07-07 21:30:22'),
(2466, '1562581821537', 'getallpages', 'device id of the app', '2019-07-07 21:30:22'),
(2467, '1562581822117', 'sitesetting', 'device id of the app', '2019-07-07 21:30:23'),
(2468, '1562581822904', 'getallproducts', 'device id of the app', '2019-07-07 21:30:23'),
(2469, '1562581829023', 'getallproducts', 'device id of the app', '2019-07-07 21:30:29'),
(2470, '1562582168877', 'getallproducts', 'device id of the app', '2019-07-07 21:36:09'),
(2471, '1562582168878', 'getallproducts', 'device id of the app', '2019-07-07 21:36:09'),
(2472, '1562582168880', 'getallproducts', 'device id of the app', '2019-07-07 21:36:09'),
(2473, '1562582168881', 'getallproducts', 'device id of the app', '2019-07-07 21:36:10'),
(2474, '1562582168870', 'getbanners', 'device id of the app', '2019-07-07 21:36:10'),
(2475, '1562582168882', 'allcategories', 'device id of the app', '2019-07-07 21:36:10'),
(2476, '1562582168884', 'getallpages', 'device id of the app', '2019-07-07 21:36:10'),
(2477, '1562582169869', 'sitesetting', 'device id of the app', '2019-07-07 21:36:10'),
(2478, '1562582170194', 'getallproducts', 'device id of the app', '2019-07-07 21:36:10'),
(2479, '1562582465812', 'getallproducts', 'device id of the app', '2019-07-07 21:41:06'),
(2480, '1562582465810', 'getallproducts', 'device id of the app', '2019-07-07 21:41:06'),
(2481, '1562582465803', 'getbanners', 'device id of the app', '2019-07-07 21:41:06'),
(2482, '1562582465813', 'getallproducts', 'device id of the app', '2019-07-07 21:41:06'),
(2483, '1562582465814', 'getallproducts', 'device id of the app', '2019-07-07 21:41:07'),
(2484, '1562582465818', 'getallpages', 'device id of the app', '2019-07-07 21:41:07'),
(2485, '1562582465816', 'allcategories', 'device id of the app', '2019-07-07 21:41:07'),
(2486, '1562582466710', 'sitesetting', 'device id of the app', '2019-07-07 21:41:07'),
(2487, '1562582467043', 'getallproducts', 'device id of the app', '2019-07-07 21:41:07'),
(2488, '1562582618345', 'getallproducts', 'device id of the app', '2019-07-07 21:43:39'),
(2489, '1562582618346', 'getallproducts', 'device id of the app', '2019-07-07 21:43:39'),
(2490, '1562582618335', 'getbanners', 'device id of the app', '2019-07-07 21:43:39'),
(2491, '1562582618347', 'getallproducts', 'device id of the app', '2019-07-07 21:43:39'),
(2492, '1562582618342', 'getallproducts', 'device id of the app', '2019-07-07 21:43:39'),
(2493, '1562582618349', 'allcategories', 'device id of the app', '2019-07-07 21:43:39'),
(2494, '1562582618351', 'getallpages', 'device id of the app', '2019-07-07 21:43:39'),
(2495, '1562582619365', 'sitesetting', 'device id of the app', '2019-07-07 21:43:40'),
(2496, '1562582619766', 'getallproducts', 'device id of the app', '2019-07-07 21:43:40'),
(2497, '1562582693739', 'getallproducts', 'device id of the app', '2019-07-07 21:44:55'),
(2498, '1562582693733', 'getbanners', 'device id of the app', '2019-07-07 21:44:55'),
(2499, '1562582693741', 'getallproducts', 'device id of the app', '2019-07-07 21:44:55'),
(2500, '1562582693742', 'getallproducts', 'device id of the app', '2019-07-07 21:44:55'),
(2501, '1562582693745', 'allcategories', 'device id of the app', '2019-07-07 21:44:55'),
(2502, '1562582693743', 'getallproducts', 'device id of the app', '2019-07-07 21:44:55'),
(2503, '1562582693747', 'getallpages', 'device id of the app', '2019-07-07 21:44:55'),
(2504, '1562582694650', 'sitesetting', 'device id of the app', '2019-07-07 21:44:56'),
(2505, '1562582694944', 'getallproducts', 'device id of the app', '2019-07-07 21:44:56'),
(2506, '1562583571237', 'getallproducts', 'device id of the app', '2019-07-07 21:59:33'),
(2507, '1562583571234', 'getallproducts', 'device id of the app', '2019-07-07 21:59:33'),
(2508, '1562583571239', 'getallproducts', 'device id of the app', '2019-07-07 21:59:33'),
(2509, '1562583571223', 'getbanners', 'device id of the app', '2019-07-07 21:59:33'),
(2510, '1562583571236', 'getallproducts', 'device id of the app', '2019-07-07 21:59:33'),
(2511, '1562583571240', 'allcategories', 'device id of the app', '2019-07-07 21:59:33'),
(2512, '1562583571242', 'getallpages', 'device id of the app', '2019-07-07 21:59:33'),
(2513, '1562583571788', 'sitesetting', 'device id of the app', '2019-07-07 21:59:33'),
(2514, '1562583572326', 'getallproducts', 'device id of the app', '2019-07-07 21:59:34'),
(2515, '1562583585032', 'getallproducts', 'device id of the app', '2019-07-07 21:59:46'),
(2516, '1562583585036', 'getfilters', 'device id of the app', '2019-07-07 21:59:46'),
(2517, '1562583591176', 'getallproducts', 'device id of the app', '2019-07-07 21:59:52'),
(2518, '1562583810979', 'getallproducts', 'device id of the app', '2019-07-07 22:03:34'),
(2519, '1562583810984', 'getallproducts', 'device id of the app', '2019-07-07 22:03:34'),
(2520, '1562583810981', 'getallproducts', 'device id of the app', '2019-07-07 22:03:34'),
(2521, '1562583810982', 'getallproducts', 'device id of the app', '2019-07-07 22:03:34'),
(2522, '1562583810973', 'getbanners', 'device id of the app', '2019-07-07 22:03:34'),
(2523, '1562583810985', 'allcategories', 'device id of the app', '2019-07-07 22:03:34'),
(2524, '1562583810987', 'getallpages', 'device id of the app', '2019-07-07 22:03:35'),
(2525, '1562583811875', 'sitesetting', 'device id of the app', '2019-07-07 22:03:35'),
(2526, '1562583814213', 'getallproducts', 'device id of the app', '2019-07-07 22:03:35'),
(2527, '1562584833417', 'getallproducts', 'device id of the app', '2019-07-07 22:20:35'),
(2528, '1562584833409', 'getbanners', 'device id of the app', '2019-07-07 22:20:35'),
(2529, '1562584833419', 'getallproducts', 'device id of the app', '2019-07-07 22:20:35'),
(2530, '1562584833425', 'getallpages', 'device id of the app', '2019-07-07 22:20:35'),
(2531, '1562584833423', 'allcategories', 'device id of the app', '2019-07-07 22:20:35'),
(2532, '1562584833422', 'getallproducts', 'device id of the app', '2019-07-07 22:20:35'),
(2533, '1562584833420', 'getallproducts', 'device id of the app', '2019-07-07 22:20:35'),
(2534, '1562584834420', 'sitesetting', 'device id of the app', '2019-07-07 22:20:36'),
(2535, '1562584835098', 'getallproducts', 'device id of the app', '2019-07-07 22:20:36'),
(2536, '1562584938334', 'getbanners', 'device id of the app', '2019-07-07 22:22:21'),
(2537, '1562584938345', 'getallproducts', 'device id of the app', '2019-07-07 22:22:21'),
(2538, '1562584938343', 'getallproducts', 'device id of the app', '2019-07-07 22:22:21'),
(2539, '1562584938349', 'allcategories', 'device id of the app', '2019-07-07 22:22:21'),
(2540, '1562584938346', 'getallproducts', 'device id of the app', '2019-07-07 22:22:21'),
(2541, '1562584938348', 'getallproducts', 'device id of the app', '2019-07-07 22:22:21'),
(2542, '1562584938351', 'getallpages', 'device id of the app', '2019-07-07 22:22:21'),
(2543, '1562584939265', 'sitesetting', 'device id of the app', '2019-07-07 22:22:23'),
(2544, '1562584942537', 'getallproducts', 'device id of the app', '2019-07-07 22:22:31'),
(2545, '1562585230044', 'getbanners', 'device id of the app', '2019-07-07 22:27:14'),
(2546, '1562585230056', 'getallproducts', 'device id of the app', '2019-07-07 22:27:14'),
(2547, '1562585230055', 'getallproducts', 'device id of the app', '2019-07-07 22:27:14'),
(2548, '1562585230053', 'getallproducts', 'device id of the app', '2019-07-07 22:27:14'),
(2549, '1562585230057', 'allcategories', 'device id of the app', '2019-07-07 22:27:14'),
(2550, '1562585230051', 'getallproducts', 'device id of the app', '2019-07-07 22:27:14'),
(2551, '1562585230059', 'getallpages', 'device id of the app', '2019-07-07 22:27:14'),
(2552, '1562585230972', 'sitesetting', 'device id of the app', '2019-07-07 22:27:15'),
(2553, '1562585234394', 'getallproducts', 'device id of the app', '2019-07-07 22:27:15'),
(2554, '1562585431730', 'getbanners', 'device id of the app', '2019-07-07 22:30:33'),
(2555, '1562585431741', 'getallproducts', 'device id of the app', '2019-07-07 22:30:33'),
(2556, '1562585431739', 'getallproducts', 'device id of the app', '2019-07-07 22:30:33'),
(2557, '1562585431737', 'getallproducts', 'device id of the app', '2019-07-07 22:30:33'),
(2558, '1562585431744', 'allcategories', 'device id of the app', '2019-07-07 22:30:33'),
(2559, '1562585431742', 'getallproducts', 'device id of the app', '2019-07-07 22:30:33'),
(2560, '1562585431748', 'getallpages', 'device id of the app', '2019-07-07 22:30:33'),
(2561, '1562585432387', 'sitesetting', 'device id of the app', '2019-07-07 22:30:34'),
(2562, '1562585433356', 'getallproducts', 'device id of the app', '2019-07-07 22:30:34'),
(2563, '1562585985813', 'allcategories', 'device id of the app', '2019-07-07 22:39:49'),
(2564, '1562585985809', 'getallproducts', 'device id of the app', '2019-07-07 22:39:49'),
(2565, '1562585985812', 'getallproducts', 'device id of the app', '2019-07-07 22:39:49'),
(2566, '1562585985807', 'getallproducts', 'device id of the app', '2019-07-07 22:39:49'),
(2567, '1562585985802', 'getbanners', 'device id of the app', '2019-07-07 22:39:49'),
(2568, '1562585985810', 'getallproducts', 'device id of the app', '2019-07-07 22:39:49'),
(2569, '1562585985815', 'getallpages', 'device id of the app', '2019-07-07 22:39:49'),
(2570, '1562585986678', 'sitesetting', 'device id of the app', '2019-07-07 22:39:49'),
(2571, '1562585987143', 'getallproducts', 'device id of the app', '2019-07-07 22:39:49'),
(2572, '1562586125565', 'getallproducts', 'device id of the app', '2019-07-07 22:42:08'),
(2573, '1562586125572', 'allcategories', 'device id of the app', '2019-07-07 22:42:08'),
(2574, '1562586125569', 'getallproducts', 'device id of the app', '2019-07-07 22:42:08'),
(2575, '1562586125559', 'getbanners', 'device id of the app', '2019-07-07 22:42:08'),
(2576, '1562586125571', 'getallproducts', 'device id of the app', '2019-07-07 22:42:08'),
(2577, '1562586125568', 'getallproducts', 'device id of the app', '2019-07-07 22:42:08'),
(2578, '1562586125574', 'getallpages', 'device id of the app', '2019-07-07 22:42:08'),
(2579, '1562586126462', 'sitesetting', 'device id of the app', '2019-07-07 22:42:09'),
(2580, '1562586127301', 'getallproducts', 'device id of the app', '2019-07-07 22:42:09'),
(2581, '1562586190318', 'getallproducts', 'device id of the app', '2019-07-07 22:43:13'),
(2582, '1562586193505', 'getallproducts', 'device id of the app', '2019-07-07 22:43:16'),
(2583, '1562586193507', 'getfilters', 'device id of the app', '2019-07-07 22:43:16'),
(2584, '1562586689933', 'getbanners', 'device id of the app', '2019-07-07 22:51:31'),
(2585, '1562586689945', 'getallproducts', 'device id of the app', '2019-07-07 22:51:31'),
(2586, '1562586689946', 'getallproducts', 'device id of the app', '2019-07-07 22:51:31'),
(2587, '1562586689942', 'getallproducts', 'device id of the app', '2019-07-07 22:51:31'),
(2588, '1562586689948', 'getallproducts', 'device id of the app', '2019-07-07 22:51:31'),
(2589, '1562586689949', 'allcategories', 'device id of the app', '2019-07-07 22:51:31'),
(2590, '1562586689951', 'getallpages', 'device id of the app', '2019-07-07 22:51:31'),
(2591, '1562586690799', 'sitesetting', 'device id of the app', '2019-07-07 22:51:32'),
(2592, '1562586694036', 'getallproducts', 'device id of the app', '2019-07-07 22:51:35'),
(2593, '1562586698497', 'getallproducts', 'device id of the app', '2019-07-07 22:51:39'),
(2594, '1562586698668', 'registerdevices', 'device id of the app', '2019-07-07 22:51:40'),
(2595, '1562586702894', 'getallproducts', 'device id of the app', '2019-07-07 22:51:44'),
(2596, '1562586702897', 'getfilters', 'device id of the app', '2019-07-07 22:51:44'),
(2597, '1562586707999', 'getallproducts', 'device id of the app', '2019-07-07 22:51:49'),
(2598, '1562586717888', 'getallproducts', 'device id of the app', '2019-07-07 22:51:59'),
(2599, '1562586717890', 'getfilters', 'device id of the app', '2019-07-07 22:51:59'),
(2600, '1562586727219', 'getallproducts', 'device id of the app', '2019-07-07 22:52:08'),
(2601, '1562586741778', 'getallproducts', 'device id of the app', '2019-07-07 22:52:23'),
(2602, '1562586947905', 'getallproducts', 'device id of the app', '2019-07-07 22:55:49'),
(2603, '1562586950030', 'getallproducts', 'device id of the app', '2019-07-07 22:55:52'),
(2604, '1562586972658', 'getallproducts', 'device id of the app', '2019-07-07 22:56:14'),
(2605, '1562586972662', 'getallproducts', 'device id of the app', '2019-07-07 22:56:14'),
(2606, '1562586972661', 'getallproducts', 'device id of the app', '2019-07-07 22:56:14'),
(2607, '1562586972666', 'allcategories', 'device id of the app', '2019-07-07 22:56:14'),
(2608, '1562586972664', 'getallproducts', 'device id of the app', '2019-07-07 22:56:14'),
(2609, '1562586972649', 'getbanners', 'device id of the app', '2019-07-07 22:56:14'),
(2610, '1562586972668', 'getallpages', 'device id of the app', '2019-07-07 22:56:14'),
(2611, '1562586973697', 'sitesetting', 'device id of the app', '2019-07-07 22:56:15'),
(2612, '1562586974021', 'getallproducts', 'device id of the app', '2019-07-07 22:56:15'),
(2613, '1562587051715', 'getallproducts', 'device id of the app', '2019-07-07 22:57:33'),
(2614, '1562587051712', 'getallproducts', 'device id of the app', '2019-07-07 22:57:33'),
(2615, '1562587051714', 'getallproducts', 'device id of the app', '2019-07-07 22:57:33'),
(2616, '1562587051707', 'getbanners', 'device id of the app', '2019-07-07 22:57:33'),
(2617, '1562587051717', 'getallproducts', 'device id of the app', '2019-07-07 22:57:33'),
(2618, '1562587051719', 'allcategories', 'device id of the app', '2019-07-07 22:57:33'),
(2619, '1562587051721', 'getallpages', 'device id of the app', '2019-07-07 22:57:33'),
(2620, '1562587052659', 'sitesetting', 'device id of the app', '2019-07-07 22:57:34'),
(2621, '1562587053005', 'getallproducts', 'device id of the app', '2019-07-07 22:57:34'),
(2622, '1562587191940', 'getallproducts', 'device id of the app', '2019-07-07 22:59:53'),
(2623, '1562587191953', 'getfilters', 'device id of the app', '2019-07-07 22:59:53'),
(2624, '1562587271001', 'getallproducts', 'device id of the app', '2019-07-07 23:01:11'),
(2625, '1562587270994', 'getbanners', 'device id of the app', '2019-07-07 23:01:11'),
(2626, '1562587271003', 'getallproducts', 'device id of the app', '2019-07-07 23:01:11'),
(2627, '1562587271007', 'getallproducts', 'device id of the app', '2019-07-07 23:01:11'),
(2628, '1562587271004', 'getallproducts', 'device id of the app', '2019-07-07 23:01:11'),
(2629, '1562587271010', 'getallpages', 'device id of the app', '2019-07-07 23:01:12'),
(2630, '1562587272024', 'sitesetting', 'device id of the app', '2019-07-07 23:01:12'),
(2631, '1562587272830', 'getallproducts', 'device id of the app', '2019-07-07 23:01:13'),
(2632, '1562587317520', 'getallproducts', 'device id of the app', '2019-07-07 23:01:57'),
(2633, '1562587320530', 'getfilters', 'device id of the app', '2019-07-07 23:02:00'),
(2634, '1562587320527', 'getallproducts', 'device id of the app', '2019-07-07 23:02:00'),
(2635, '1562587324812', 'getallproducts', 'device id of the app', '2019-07-07 23:02:05'),
(2636, '1562587540617', 'processregistration', 'device id of the app', '2019-07-07 23:05:40'),
(2637, '1562587541194', 'registerdevices', 'device id of the app', '2019-07-07 23:05:41'),
(2638, '1562587552803', 'getorders', 'device id of the app', '2019-07-07 23:05:53'),
(2639, '1562587556431', 'getallproducts', 'device id of the app', '2019-07-07 23:05:56'),
(2640, '1562587558802', 'getalladdress', 'device id of the app', '2019-07-07 23:05:59'),
(2641, '1562587563649', 'getalladdress', 'device id of the app', '2019-07-07 23:06:03'),
(2642, '1562587572417', 'getalladdress', 'device id of the app', '2019-07-07 23:06:12'),
(2643, '1562587579744', 'getallproducts', 'device id of the app', '2019-07-07 23:06:20'),
(2644, '1562587579747', 'getfilters', 'device id of the app', '2019-07-07 23:06:20'),
(2645, '1562587627364', 'processlogin', 'device id of the app', '2019-07-07 23:07:08'),
(2646, '1562587663938', 'processlogin', 'device id of the app', '2019-07-07 23:07:44'),
(2647, '1562587664834', 'registerdevices', 'device id of the app', '2019-07-07 23:07:45'),
(2648, '1562587670465', 'getallproducts', 'device id of the app', '2019-07-07 23:07:51'),
(2649, '1562587670468', 'getfilters', 'device id of the app', '2019-07-07 23:07:51'),
(2650, '1562587911406', 'getallproducts', 'device id of the app', '2019-07-07 23:11:52'),
(2651, '1562587911397', 'getbanners', 'device id of the app', '2019-07-07 23:11:52'),
(2652, '1562587911409', 'getallproducts', 'device id of the app', '2019-07-07 23:11:52'),
(2653, '1562587911410', 'getallproducts', 'device id of the app', '2019-07-07 23:11:52'),
(2654, '1562587911408', 'getallproducts', 'device id of the app', '2019-07-07 23:11:52'),
(2655, '1562587911412', 'allcategories', 'device id of the app', '2019-07-07 23:11:52'),
(2656, '1562587911414', 'getallpages', 'device id of the app', '2019-07-07 23:11:52'),
(2657, '1562587912038', 'sitesetting', 'device id of the app', '2019-07-07 23:11:53'),
(2658, '1562587949182', 'registerdevices', 'device id of the app', '2019-07-07 23:12:30'),
(2659, '1562589284056', 'getallproducts', 'device id of the app', '2019-07-07 23:34:45'),
(2660, '1562589306998', 'getfilters', 'device id of the app', '2019-07-07 23:35:08'),
(2661, '1562589306995', 'getallproducts', 'device id of the app', '2019-07-07 23:35:08'),
(2662, '1562589310044', 'getfilters', 'device id of the app', '2019-07-07 23:35:11'),
(2663, '1562589310041', 'getallproducts', 'device id of the app', '2019-07-07 23:35:11'),
(2664, '1562589502679', 'sitesetting', 'device id of the app', '2019-07-07 23:38:53'),
(2665, '1562589501803', 'getallpages', 'device id of the app', '2019-07-07 23:38:53'),
(2666, '1562589565024', 'getallproducts', 'device id of the app', '2019-07-07 23:39:26'),
(2667, '1562589565012', 'getbanners', 'device id of the app', '2019-07-07 23:39:26'),
(2668, '1562589565028', 'getallproducts', 'device id of the app', '2019-07-07 23:39:26'),
(2669, '1562589565031', 'getallproducts', 'device id of the app', '2019-07-07 23:39:28'),
(2670, '1562589565034', 'getallproducts', 'device id of the app', '2019-07-07 23:39:28'),
(2671, '1562589565038', 'allcategories', 'device id of the app', '2019-07-07 23:39:28'),
(2672, '1562589565045', 'getallpages', 'device id of the app', '2019-07-07 23:39:28'),
(2673, '1562589565851', 'sitesetting', 'device id of the app', '2019-07-07 23:39:29'),
(2674, '1562589568556', 'getallproducts', 'device id of the app', '2019-07-07 23:39:29'),
(2675, '1562589614355', 'getallproducts', 'device id of the app', '2019-07-07 23:40:15'),
(2676, '1562589614349', 'getbanners', 'device id of the app', '2019-07-07 23:40:15'),
(2677, '1562589614357', 'getallproducts', 'device id of the app', '2019-07-07 23:40:15'),
(2678, '1562589614358', 'getallproducts', 'device id of the app', '2019-07-07 23:40:15'),
(2679, '1562589614359', 'getallproducts', 'device id of the app', '2019-07-07 23:40:15'),
(2680, '1562589614360', 'allcategories', 'device id of the app', '2019-07-07 23:40:15'),
(2681, '1562589614362', 'getallpages', 'device id of the app', '2019-07-07 23:40:15'),
(2682, '1562589615264', 'sitesetting', 'device id of the app', '2019-07-07 23:40:15'),
(2683, '1562589616188', 'getallproducts', 'device id of the app', '2019-07-07 23:40:16'),
(2684, '1562589662551', 'getbanners', 'device id of the app', '2019-07-07 23:41:03'),
(2685, '1562589662564', 'allcategories', 'device id of the app', '2019-07-07 23:41:03'),
(2686, '1562589662558', 'getallproducts', 'device id of the app', '2019-07-07 23:41:03'),
(2687, '1562589662561', 'getallproducts', 'device id of the app', '2019-07-07 23:41:03'),
(2688, '1562589662560', 'getallproducts', 'device id of the app', '2019-07-07 23:41:03'),
(2689, '1562589662562', 'getallproducts', 'device id of the app', '2019-07-07 23:41:03'),
(2690, '1562589662565', 'getallpages', 'device id of the app', '2019-07-07 23:41:03'),
(2691, '1562589663120', 'sitesetting', 'device id of the app', '2019-07-07 23:41:03'),
(2692, '1562589670004', 'registerdevices', 'device id of the app', '2019-07-07 23:41:10'),
(2693, '1562590018507', 'getallproducts', 'device id of the app', '2019-07-07 23:46:59'),
(2694, '1562590018502', 'getallproducts', 'device id of the app', '2019-07-07 23:46:59'),
(2695, '1562590018487', 'getbanners', 'device id of the app', '2019-07-07 23:46:59'),
(2696, '1562590018505', 'getallproducts', 'device id of the app', '2019-07-07 23:46:59'),
(2697, '1562590018508', 'allcategories', 'device id of the app', '2019-07-07 23:46:59'),
(2698, '1562590018504', 'getallproducts', 'device id of the app', '2019-07-07 23:46:59'),
(2699, '1562590018511', 'getallpages', 'device id of the app', '2019-07-07 23:46:59'),
(2700, '1562590019230', 'sitesetting', 'device id of the app', '2019-07-07 23:46:59'),
(2701, '1562590026402', 'registerdevices', 'device id of the app', '2019-07-07 23:47:07'),
(2702, '1562590027842', 'getallproducts', 'device id of the app', '2019-07-07 23:47:08'),
(2703, '1562590072339', 'getallproducts', 'device id of the app', '2019-07-07 23:47:53'),
(2704, '1562590072344', 'getfilters', 'device id of the app', '2019-07-07 23:47:53'),
(2705, '1562590084729', 'getfilters', 'device id of the app', '2019-07-07 23:48:05'),
(2706, '1562590084719', 'getallproducts', 'device id of the app', '2019-07-07 23:48:05'),
(2707, '1562590103080', 'getallproducts', 'device id of the app', '2019-07-07 23:48:23'),
(2708, '1562590103093', 'getfilters', 'device id of the app', '2019-07-07 23:48:23'),
(2709, '1562590138565', 'getallproducts', 'device id of the app', '2019-07-07 23:48:59'),
(2710, '1562590140824', 'getfilters', 'device id of the app', '2019-07-07 23:49:01'),
(2711, '1562590140822', 'getallproducts', 'device id of the app', '2019-07-07 23:49:01'),
(2712, '1562590146739', 'getallproducts', 'device id of the app', '2019-07-07 23:49:07'),
(2713, '1562590146740', 'getfilters', 'device id of the app', '2019-07-07 23:49:07'),
(2714, '1562590204685', 'processlogin', 'device id of the app', '2019-07-07 23:50:05'),
(2715, '1562590210707', 'processlogin', 'device id of the app', '2019-07-07 23:50:12'),
(2716, '1562590212632', 'registerdevices', 'device id of the app', '2019-07-07 23:50:14'),
(2717, '1562590214225', 'getalladdress', 'device id of the app', '2019-07-07 23:50:19'),
(2718, '1562590292780', 'getrate', 'device id of the app', '2019-07-07 23:51:34'),
(2719, '1562590356924', 'getrate', 'device id of the app', '2019-07-07 23:52:38'),
(2720, '1562590871567', 'getbanners', 'device id of the app', '2019-07-07 12:01:12'),
(2721, '1562590871575', 'getallproducts', 'device id of the app', '2019-07-07 12:01:12'),
(2722, '1562590871576', 'getallproducts', 'device id of the app', '2019-07-07 12:01:13'),
(2723, '1562590871573', 'getallproducts', 'device id of the app', '2019-07-07 12:01:13'),
(2724, '1562590871577', 'getallproducts', 'device id of the app', '2019-07-07 12:01:13'),
(2725, '1562590871578', 'allcategories', 'device id of the app', '2019-07-07 12:01:13'),
(2726, '1562590871580', 'getallpages', 'device id of the app', '2019-07-07 12:01:13'),
(2727, '1562590872746', 'sitesetting', 'device id of the app', '2019-07-07 12:01:13'),
(2728, '1562590873266', 'getallproducts', 'device id of the app', '2019-07-07 12:01:14'),
(2729, '1562590877613', 'getalladdress', 'device id of the app', '2019-07-07 12:01:19'),
(2730, '1562590923344', 'getrate', 'device id of the app', '2019-07-07 12:02:04'),
(2731, '1562590926287', 'getpaymentmethods', 'device id of the app', '2019-07-07 12:02:07'),
(2732, '1562590940577', 'addtoorder', 'device id of the app', '2019-07-07 12:02:21'),
(2733, '1562590952460', 'addtoorder', 'device id of the app', '2019-07-07 12:02:33'),
(2734, '1562590962663', 'addtoorder', 'device id of the app', '2019-07-07 12:02:44'),
(2735, '1562590971185', 'addtoorder', 'device id of the app', '2019-07-07 12:02:52'),
(2736, '1563779292969', 'getallproducts', 'device id of the app', '2019-07-21 23:38:13'),
(2737, '1563779292965', 'getallproducts', 'device id of the app', '2019-07-21 23:38:13'),
(2738, '1563779292973', 'allcategories', 'device id of the app', '2019-07-21 23:38:13'),
(2739, '1563779292961', 'getbanners', 'device id of the app', '2019-07-21 23:38:14'),
(2740, '1563779292967', 'getallproducts', 'device id of the app', '2019-07-21 23:38:14'),
(2741, '1563779292971', 'getallproducts', 'device id of the app', '2019-07-21 23:38:14'),
(2742, '1563779292975', 'getallpages', 'device id of the app', '2019-07-21 23:38:14'),
(2743, '1563779293135', 'sitesetting', 'device id of the app', '2019-07-21 23:38:14'),
(2744, '1563779296045', 'getallproducts', 'device id of the app', '2019-07-21 23:38:15'),
(2745, '1563780437032', 'getallproducts', 'device id of the app', '2019-07-21 23:57:17'),
(2746, '1563780437035', 'getallproducts', 'device id of the app', '2019-07-21 23:57:17'),
(2747, '1563780437034', 'getallproducts', 'device id of the app', '2019-07-21 23:57:17'),
(2748, '1563780437022', 'getbanners', 'device id of the app', '2019-07-21 23:57:17'),
(2749, '1563780437029', 'getallproducts', 'device id of the app', '2019-07-21 23:57:17'),
(2750, '1563780437037', 'allcategories', 'device id of the app', '2019-07-21 23:57:18'),
(2751, '1563780437040', 'getallpages', 'device id of the app', '2019-07-21 23:57:18'),
(2752, '1563780438634', 'sitesetting', 'device id of the app', '2019-07-21 23:57:18'),
(2753, '1563780439478', 'getallproducts', 'device id of the app', '2019-07-21 23:57:19'),
(2754, '1563780900083', 'getbanners', 'device id of the app', '2019-07-22 00:05:11'),
(2755, '1563780900086', 'getallproducts', 'device id of the app', '2019-07-22 00:05:17'),
(2756, '1563780900090', 'getallproducts', 'device id of the app', '2019-07-22 00:05:17'),
(2757, '1563780900087', 'getallproducts', 'device id of the app', '2019-07-22 00:05:17'),
(2758, '1563780900092', 'getallpages', 'device id of the app', '2019-07-22 00:05:17'),
(2759, '1563780900091', 'allcategories', 'device id of the app', '2019-07-22 00:05:17'),
(2760, '1563780912124', 'sitesetting', 'device id of the app', '2019-07-22 00:05:17'),
(2761, '1563780956098', 'getallproducts', 'device id of the app', '2019-07-22 00:06:21'),
(2762, '1563781564502', 'processregistration', 'device id of the app', '2019-07-22 00:16:04'),
(2763, '1563781565811', 'registerdevices', 'device id of the app', '2019-07-22 00:16:05'),
(2764, '1563781567581', 'getalladdress', 'device id of the app', '2019-07-22 00:16:07'),
(2765, '1563781617439', 'getrate', 'device id of the app', '2019-07-22 00:16:57'),
(2766, '1563781642896', 'getpaymentmethods', 'device id of the app', '2019-07-22 00:17:22'),
(2767, '1563781820338', 'getrate', 'device id of the app', '2019-07-22 00:20:20'),
(2768, '1563782116638', 'getrate', 'device id of the app', '2019-07-22 00:25:17'),
(2769, '1563782350839', 'getalladdress', 'device id of the app', '2019-07-22 00:29:11'),
(2770, '1563782366232', 'getrate', 'device id of the app', '2019-07-22 00:29:26'),
(2771, '1563782650322', 'getallproducts', 'device id of the app', '2019-07-22 00:34:11'),
(2772, '1563782650311', 'getallproducts', 'device id of the app', '2019-07-22 00:34:11'),
(2773, '1563782650284', 'getallproducts', 'device id of the app', '2019-07-22 00:34:11'),
(2774, '1563782650337', 'allcategories', 'device id of the app', '2019-07-22 00:34:11'),
(2775, '1563782650331', 'getallproducts', 'device id of the app', '2019-07-22 00:34:11'),
(2776, '1563782650344', 'getallpages', 'device id of the app', '2019-07-22 00:34:11'),
(2777, '1563782650259', 'getbanners', 'device id of the app', '2019-07-22 00:34:12'),
(2778, '1563782654415', 'sitesetting', 'device id of the app', '2019-07-22 00:34:14'),
(2779, '1563782655278', 'getallproducts', 'device id of the app', '2019-07-22 00:34:15'),
(2780, '1563784860247', 'getallproducts', 'device id of the app', '2019-07-22 01:10:59'),
(2781, '1563784894717', 'getallproducts', 'device id of the app', '2019-07-22 01:11:34'),
(2782, '1563784899899', 'getallproducts', 'device id of the app', '2019-07-22 01:11:39'),
(2783, '1563784902797', 'getallproducts', 'device id of the app', '2019-07-22 01:11:42'),
(2784, '1563784905863', 'getallproducts', 'device id of the app', '2019-07-22 01:11:45'),
(2785, '1563784908412', 'getallproducts', 'device id of the app', '2019-07-22 01:11:47'),
(2786, '1563784915810', 'getallproducts', 'device id of the app', '2019-07-22 01:11:55'),
(2787, '1563784938589', 'getallproducts', 'device id of the app', '2019-07-22 01:12:18'),
(2788, '1563784938591', 'getfilters', 'device id of the app', '2019-07-22 01:12:18'),
(2789, '1563784943333', 'getallproducts', 'device id of the app', '2019-07-22 01:12:22'),
(2790, '1563784949558', 'getallproducts', 'device id of the app', '2019-07-22 01:12:29'),
(2791, '1563784957870', 'getallproducts', 'device id of the app', '2019-07-22 01:12:37'),
(2792, '1563785028106', 'getallproducts', 'device id of the app', '2019-07-22 01:13:47'),
(2793, '1563785037304', 'getallproducts', 'device id of the app', '2019-07-22 01:13:56'),
(2794, '1563785037306', 'getfilters', 'device id of the app', '2019-07-22 01:13:57'),
(2795, '1563785038391', 'getallproducts', 'device id of the app', '2019-07-22 01:13:57'),
(2796, '1563785061058', 'getallproducts', 'device id of the app', '2019-07-22 01:14:20'),
(2797, '1563785061059', 'getfilters', 'device id of the app', '2019-07-22 01:14:20'),
(2798, '1563785065214', 'getallproducts', 'device id of the app', '2019-07-22 01:14:24'),
(2799, '1563785065216', 'getfilters', 'device id of the app', '2019-07-22 01:14:24'),
(2800, '1563785080106', 'getallproducts', 'device id of the app', '2019-07-22 01:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_impressions` int(7) DEFAULT 0,
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banners_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT 0,
  `banners_clicked` int(5) NOT NULL DEFAULT 0,
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`) VALUES
(34, '', '', 0, NULL, '2018-10-03 10:58:12', NULL, 'n-a'),
(37, 'resources/assets/images/category_images/1568806381.special-6.jpg', 'resources/assets/images/category_icons/1565076453.1528806529.mobile-phone.png', 0, NULL, '2019-08-06 05:39:47', '2019-09-18 11:33:01', 'sweets'),
(38, 'resources/assets/images/category_images/1568806356.special-4.jpg', 'resources/assets/images/category_icons/1565076464.1528806529.mobile-phone.png', 0, NULL, '2019-08-06 05:40:25', '2019-09-18 11:32:36', 'pickles'),
(41, 'resources/assets/images/category_images/1568806371.special-5.jpg', '', 0, NULL, '2019-08-28 02:56:56', '2019-09-18 11:32:51', 'karapodulu');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Men\'s Clothing'),
(4, 2, 1, 'Women\'s Clothing'),
(7, 3, 1, 'Boy\'s Clothing'),
(10, 4, 1, 'Girl\'s Clothing'),
(13, 5, 1, 'Baby & Mother'),
(16, 6, 1, 'Household Merchandises'),
(19, 7, 1, 'Men Polo shirts'),
(22, 8, 1, 'Men Polo shirts'),
(25, 9, 1, 'Men Jeans'),
(28, 10, 1, 'Men Shoes'),
(31, 11, 1, 'Sunglasses & Glasses'),
(34, 12, 1, 'Women Dresses'),
(37, 13, 1, 'Women Shirts & Tops'),
(40, 14, 1, 'Women Jeans'),
(43, 15, 1, 'Women Hand Bags'),
(46, 16, 1, 'New Born'),
(49, 17, 1, 'Baby Dresses'),
(52, 18, 1, 'Baby Blankets & Swaddles'),
(55, 19, 1, 'Bedding Collections'),
(58, 20, 1, 'Throws & Pillows'),
(61, 21, 1, 'Bath Robes'),
(64, 22, 1, 'Boy Polo shirts'),
(67, 23, 1, 'Boy Casual Shirts'),
(70, 24, 1, 'Boy Pants & Jeans'),
(73, 25, 1, 'Boy Shoes'),
(76, 26, 1, 'Dresses & Rompers'),
(79, 27, 1, 'Shorts & Skirts'),
(82, 28, 1, 'Sweaters'),
(85, 29, 1, 'Health & Beauty, Hair'),
(88, 30, 1, 'Automobiles & Motorcycles'),
(91, 31, 1, 'Jewelry & Watches'),
(94, 32, 1, 'Cellphones & Accessories'),
(97, 33, 1, 'Computer, Office, Security'),
(100, 35, 1, 'Test Category1'),
(101, 36, 1, 'Test Sub Cat'),
(102, 37, 1, 'Sweets'),
(103, 38, 1, 'Pickles'),
(104, 39, 1, 'Test category'),
(106, 41, 1, 'Karapodulu');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` mediumtext NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(100) NOT NULL,
  `banners_title` varchar(255) NOT NULL,
  `banners_url` mediumtext NOT NULL,
  `banners_image` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, '1', '', 'resources/assets/images/constant_banners/1567064816.midbanner.png', '2019-08-29 07:46:56', 1, 1, '1'),
(2, '1', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492230.side_banner_1_ar.jpg', '2018-10-02 14:57:10', 1, 4, '1'),
(3, '2', '', 'resources/assets/images/constant_banners/1567064830.midbanner.png', '2019-08-29 07:47:10', 1, 1, '2'),
(4, '2', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538490891.side_banner_2_ar.jpg', '2018-10-02 14:34:51', 1, 4, '2'),
(6, '3', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492609.banner_1_ar.jpg', '2018-10-02 15:03:29', 1, 4, '3'),
(7, '5', '', 'resources/assets/images/constant_banners/1567064725.patch1.png', '2019-08-29 07:45:25', 1, 1, '5'),
(8, '5', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538491176.banner_3_ar.jpg', '2018-10-02 14:39:36', 1, 4, '5'),
(9, '4', '', 'resources/assets/images/constant_banners/1567064707.patch1.png', '2019-08-29 07:45:07', 1, 1, '4'),
(10, '4', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492571.banner_2_ar.jpg', '2018-10-02 15:02:51', 1, 4, '4'),
(11, '6', '', 'resources/assets/images/constant_banners/1567049970.Punjabi-ghasitaram-banner1.png', '2019-08-29 03:39:30', 1, 1, '6'),
(12, '6', 'shop', 'resources/assets/images/constant_banners/1538642686.sale_banners_ar.jpg', '2018-10-04 08:44:46', 1, 4, '6'),
(13, '7', '', 'resources/assets/images/constant_banners/1567064333.midbanner.png', '2019-08-29 07:38:53', 1, 1, '7'),
(14, '7', 'shop', 'resources/assets/images/constant_banners/1538642734.large_banner_ar.jpg', '2018-10-04 08:45:34', 1, 4, '7'),
(15, '3', '', 'resources/assets/images/constant_banners/1567064718.patch1.png', '2019-08-29 07:45:18', 1, 1, '3');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(100) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(100) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(100) NOT NULL,
  `usage_limit_per_user` int(100) NOT NULL,
  `limit_usage_to_x_items` int(100) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `used_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', NULL, '.', '.', '2', NULL, '2017-02-09 00:00:00'),
(2, 'Euro', 'EUR', NULL, '€', '.', '.', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_picture` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(100) NOT NULL,
  `updated_at` int(100) NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `email`, `user_name`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `password`, `customers_newsletter`, `isActive`, `fb_id`, `google_id`, `customers_picture`, `created_at`, `updated_at`, `is_seen`, `remember_token`) VALUES
(2, '0', 'customer', 'customer', '', 'customer@gmail.com', 'customer@gmail.com', NULL, '', NULL, '$2y$10$1QopgKQOmrMJiiD/9psUQ.WOUUkRmd2BQ0xWHo52gGeJi1wloXg0.', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/default_user.png', 19, 19, 1, 'hMgvPBkCMj4VboUzYQAwN2K0GCZZmIVxPoPurSQoUIuW07pCpU8nL0aZUcUa'),
(5, '0', 'Niranjan', 'niranjan', '', 'user@user.com', '', NULL, '', NULL, '$2y$10$1QopgKQOmrMJiiD/9psUQ.WOUUkRmd2BQ0xWHo52gGeJi1wloXg0.', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/default_user.png', 19, 19, 1, '2bLjNcyLrYCeumMCvVB5Ne6PKyY7No5WRCcBTEnXJxYLMQrNwIdlEDThXi9E');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT 0,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(1, 1, '1', 2, '85.00', '2019-07-08', 1, 'ZWHZdBTbYQkLXwdBXcXuPUF5a6UiLXJqKp0SY0TW'),
(2, 1, '77', 2, '56.00', '2019-07-08', 1, 'ZWHZdBTbYQkLXwdBXcXuPUF5a6UiLXJqKp0SY0TW'),
(3, 0, '76', 2, '49.50', '2019-07-10', 0, 'oWOoIuf9odJWg7yNpdo6hTRXHw0NB57fFDNFgebd'),
(4, 0, '73', 1, '23.50', '2019-07-10', 0, 'oWOoIuf9odJWg7yNpdo6hTRXHw0NB57fFDNFgebd'),
(5, 0, '71', 1, '30.00', '2019-07-10', 0, 'oWOoIuf9odJWg7yNpdo6hTRXHw0NB57fFDNFgebd'),
(6, 0, '8', 1, '125.50', '2019-07-15', 0, 'EEFNbGmrtcxixyiJjQYlqsZ7FDwd30lMB83OP9jV'),
(13, 3, '73', 1, '23.50', '2019-08-01', 0, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(14, 3, '70', 1, '23.99', '2019-08-01', 0, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(15, 3, '1', 1, '85.00', '2019-08-01', 0, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(16, 3, '8', 1, '125.50', '2019-08-01', 0, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(17, 3, '13', 1, '125.00', '2019-08-01', 0, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(18, 3, '97', 1, '850.00', '2019-08-01', 0, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(23, 4, '1', 1, '85.00', '2019-08-01', 0, '4MPJKt5CZp74KMsm2bsNAVMPK8SDQfq0jVsii5uS'),
(24, 3, '99', 1, '500.00', '2019-08-02', 0, '4t5IBCGrjjcgop1FtknVaJwrk7TKOAeEm5tC9qe1'),
(26, 0, '98', 6, '400.00', '2019-08-02', 0, 'WpSUIB5ux73Qpqsv5qYFsBWrpILLoIV1uGJXb6sH'),
(28, 5, '103', 1, '2376.00', '2019-08-20', 1, '3AENazs9DonsocpR4bGYD3jSZa7hwSt2EBxcFWy2'),
(29, 0, '106', 1, '1000.00', '2019-08-26', 0, 'Pa1RLUp6wAjMpMGw2kCoEwOSN0k42mWKncCPi8Uc'),
(30, 0, '105', 1, '1534.00', '2019-08-28', 0, 'JqCqsYNQQEhiUEfUIzCquCnTJu4nJbYwxd7N4MnY'),
(31, 0, '112', 2, '150.00', '2019-08-29', 0, 'JqCqsYNQQEhiUEfUIzCquCnTJu4nJbYwxd7N4MnY'),
(33, 0, '111', 4, '50.00', '2019-08-29', 0, 'ZOqHRQQllpz9OixM3EWGmNzJjv8dHKKoEC4VDQwm'),
(35, 0, '109', 4, '1150.00', '2019-09-11', 0, 'VO7XTSh8eD5eTWtoNt0QZtZ6osTZRBUyyMI3NItZ'),
(36, 0, '109', 2, '150.00', '2019-09-11', 0, 'VO7XTSh8eD5eTWtoNt0QZtZ6osTZRBUyyMI3NItZ'),
(37, 0, '108', 1, '120.00', '2019-09-18', 1, '4kkRxFOKsq32mtl6bp6XfiDx4SQVqR0K2GTET57F'),
(39, 5, '108', 1, '120.00', '2019-09-19', 1, 'VeO1jgmKHdOjpsrpHysqHXykM8sMazaJnHPEjXx7'),
(40, 5, '113', 1, '250.00', '2019-09-20', 1, 'VeO1jgmKHdOjpsrpHysqHXykM8sMazaJnHPEjXx7'),
(41, 5, '107', 1, '120.00', '2019-10-21', 1, 'VeO1jgmKHdOjpsrpHysqHXykM8sMazaJnHPEjXx7'),
(42, 0, '108', 1, '120.00', '2020-03-10', 1, 'LYV5c02DNx08Kg1RJZcjagwcsKQ2ZyCkTxdOo7Jy'),
(43, 5, '110', 1, '80.00', '2021-08-06', 1, 'Xxpy9LxqX6mlxrZHYwLi3xaCkQ0AY8h4EDxaL3Dz');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(100) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_basket_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_values_id`, `session_id`) VALUES
(1, 2, 1, '77', 1, 3, 'ZWHZdBTbYQkLXwdBXcXuPUF5a6UiLXJqKp0SY0TW'),
(2, 2, 1, '77', 3, 154, 'ZWHZdBTbYQkLXwdBXcXuPUF5a6UiLXJqKp0SY0TW'),
(5, 18, 3, '97', 1, 1, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(6, 18, 3, '97', 3, 155, '0TUeZUI9Rluwz711EpoA73u2jR6b8KihIKHGROCV'),
(9, 26, 0, '98', 1, 2, 'WpSUIB5ux73Qpqsv5qYFsBWrpILLoIV1uGJXb6sH'),
(10, 27, 5, '103', 17, 186, 'jfm4vs5OmF5ovlybbP8nFXVExciDxrN2OXoN82EW'),
(11, 28, 5, '103', 17, 186, '3AENazs9DonsocpR4bGYD3jSZa7hwSt2EBxcFWy2'),
(12, 29, 0, '106', 16, 182, 'Pa1RLUp6wAjMpMGw2kCoEwOSN0k42mWKncCPi8Uc'),
(13, 29, 0, '106', 17, 187, 'Pa1RLUp6wAjMpMGw2kCoEwOSN0k42mWKncCPi8Uc'),
(14, 29, 0, '106', 18, 193, 'Pa1RLUp6wAjMpMGw2kCoEwOSN0k42mWKncCPi8Uc'),
(15, 29, 0, '106', 19, 195, 'Pa1RLUp6wAjMpMGw2kCoEwOSN0k42mWKncCPi8Uc'),
(16, 30, 0, '105', 17, 186, 'JqCqsYNQQEhiUEfUIzCquCnTJu4nJbYwxd7N4MnY'),
(17, 31, 0, '112', 16, 201, 'JqCqsYNQQEhiUEfUIzCquCnTJu4nJbYwxd7N4MnY'),
(18, 33, 0, '111', 16, 183, 'ZOqHRQQllpz9OixM3EWGmNzJjv8dHKKoEC4VDQwm'),
(20, 35, 0, '109', 16, 182, 'VO7XTSh8eD5eTWtoNt0QZtZ6osTZRBUyyMI3NItZ'),
(21, 36, 0, '109', 16, 183, 'VO7XTSh8eD5eTWtoNt0QZtZ6osTZRBUyyMI3NItZ'),
(22, 40, 5, '113', 16, 202, 'VeO1jgmKHdOjpsrpHysqHXykM8sMazaJnHPEjXx7'),
(23, 43, 5, '110', 16, 183, 'Xxpy9LxqX6mlxrZHYwLi3xaCkQ0AY8h4EDxaL3Dz');

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(1, '2019-07-08 12:50:12', 2, '2019-07-08 12:07:45', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(100) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_id` int(100) NOT NULL DEFAULT 0,
  `device_type` text COLLATE utf8_unicode_ci NOT NULL,
  `register_date` int(100) NOT NULL DEFAULT 0,
  `update_date` int(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `isDesktop` tinyint(1) NOT NULL DEFAULT 0,
  `onesignal` tinyint(1) NOT NULL DEFAULT 0,
  `isEnableMobile` tinyint(1) NOT NULL DEFAULT 1,
  `isEnableDesktop` tinyint(1) NOT NULL DEFAULT 1,
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT 1,
  `fcm` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_id`, `customers_id`, `device_type`, `register_date`, `update_date`, `status`, `isDesktop`, `onesignal`, `isEnableMobile`, `isEnableDesktop`, `ram`, `processor`, `device_os`, `location`, `device_model`, `manufacturer`, `is_notify`, `fcm`) VALUES
(1, 'c4822f61-cdca-4194-8d54-4c193efa97bd', 2, '2', 1563781565, 1563781565, 1, 0, 1, 1, 1, '2gb', 'mediatek', '9', 'empty', 'Redmi Note 5 Pro', 'Xiaomi', 1, 0),
(2, 'ddbce82a-fa85-4d5e-b78d-2a78a8ccba07', 1, '2', 1562590214, 1562590214, 1, 0, 1, 1, 1, '2gb', 'mediatek', '9', 'empty', 'Redmi Note 5 Pro', 'Xiaomi', 1, 0),
(3, '434610c3-a6d8-4349-9992-770d3f44fa0e', 0, '2', 1562577011, 1562577011, 1, 0, 1, 1, 1, '2gb', 'mediatek', '8.1.0', 'empty', 'Redmi 6A', 'Xiaomi', 1, 0),
(4, 'faf75b9a-e120-4438-afbf-d9d0402ad7b1', 0, '2', 1565268101, 1565268101, 1, 0, 1, 1, 1, '2gb', 'mediatek', '8.1.0', 'empty', 'Redmi 6A', 'Xiaomi', 1, 0),
(5, '2502cbf7-1da9-42bb-8590-f24c92b60b23', 0, '2', 1565805433, 1565805433, 1, 0, 1, 1, 1, '2gb', 'mediatek', '8.1.0', 'empty', 'vivo 1723', 'vivo', 1, 0),
(6, '6348ce55-3f22-4aa9-8a0b-e08863dac811', 0, '2', 1566843348, 1566843348, 1, 0, 1, 1, 1, '2gb', 'mediatek', '7.0', 'empty', 'Lenovo K33a42', 'LENOVO', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fedex_shipping`
--

CREATE TABLE `fedex_shipping` (
  `fedex_id` int(100) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fedex_shipping`
--

INSERT INTO `fedex_shipping` (`fedex_id`, `title`, `user_name`, `password`, `parcel_height`, `parcel_width`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`) VALUES
(1, 'FedEx', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(100) NOT NULL,
  `flash_sale_last_modified` int(100) NOT NULL,
  `flash_start_date` int(100) NOT NULL,
  `flash_expires_date` int(100) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`flash_sale_id`, `products_id`, `flash_sale_products_price`, `flash_sale_date_added`, `flash_sale_last_modified`, `flash_start_date`, `flash_expires_date`, `flash_status`) VALUES
(1, 86, '10.00', 1537357047, 1537359682, 1537374600, 1537374600, 0),
(2, 86, '10.00', 1537359513, 1537359682, 1537331400, 1537317000, 0),
(3, 86, '10.00', 1537359601, 1537359682, 1537331400, 1537317000, 0),
(4, 86, '10.00', 1537359682, 0, 1537331400, 1538181000, 1),
(5, 85, '10.00', 1537362613, 1537362644, 1536256800, 1536861600, 0),
(6, 85, '10.00', 1537362644, 0, 1536213600, 1538200800, 1);

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(100) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', '2017-01-10 00:00:00', '2017-01-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hula_our_infos`
--

CREATE TABLE `hula_our_infos` (
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(100) NOT NULL,
  `admin_id` int(1) NOT NULL,
  `added_date` int(100) NOT NULL,
  `reference_code` varchar(255) NOT NULL,
  `stock` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`) VALUES
(3, 1, 1534501126, '', 15, 83, '0.00', 'in'),
(6, 1, 1534513188, '', 30, 82, '0.00', 'in'),
(7, 1, 1534513229, '', 30, 82, '0.00', 'in'),
(8, 1, 1534514990, '', 40, 83, '0.00', 'in'),
(16, 9, 1537359606, '', 100, 86, '0.00', 'in'),
(17, 9, 1537362619, '', 100, 85, '0.00', 'in'),
(54, 8, 1542616748, '35', 300, 70, '0.00', 'in'),
(55, 8, 1542628641, '35', 300, 69, '0.00', 'in'),
(56, 8, 1542628692, '35', 300, 68, '0.00', 'in'),
(57, 8, 1542628726, '35', 300, 67, '0.00', 'in'),
(58, 8, 1542628773, '35', 300, 66, '0.00', 'in'),
(59, 8, 1542628799, '35', 300, 65, '0.00', 'in'),
(60, 8, 1542628825, '35', 300, 64, '0.00', 'in'),
(61, 8, 1542628883, '35', 300, 63, '0.00', 'in'),
(62, 8, 1542628912, '35', 300, 62, '0.00', 'in'),
(63, 8, 1542628943, '35', 300, 61, '0.00', 'in'),
(64, 8, 1542628994, '35', 300, 60, '0.00', 'in'),
(65, 8, 1542629050, '35', 300, 59, '0.00', 'in'),
(66, 8, 1542629073, '35', 300, 58, '0.00', 'in'),
(67, 8, 1542629135, '35', 300, 57, '0.00', 'in'),
(68, 8, 1542629168, '35', 300, 56, '0.00', 'in'),
(69, 8, 1542629193, '35', 300, 55, '0.00', 'in'),
(70, 8, 1542629303, '35', 300, 54, '0.00', 'in'),
(71, 8, 1542629324, '35', 300, 53, '0.00', 'in'),
(72, 8, 1542629346, '35', 300, 52, '0.00', 'in'),
(73, 8, 1542629370, '35', 300, 51, '0.00', 'in'),
(74, 8, 1542629396, '35', 300, 50, '0.00', 'in'),
(75, 8, 1542629455, '35', 300, 49, '0.00', 'in'),
(76, 8, 1542629478, '35', 300, 48, '0.00', 'in'),
(77, 8, 1542629500, '35', 300, 47, '0.00', 'in'),
(78, 8, 1542629527, '35', 300, 46, '0.00', 'in'),
(79, 8, 1542629556, '35', 300, 45, '0.00', 'in'),
(80, 8, 1542629970, '35', 300, 44, '0.00', 'in'),
(81, 8, 1542629996, '35', 300, 43, '0.00', 'in'),
(82, 8, 1542630019, '35', 300, 42, '0.00', 'in'),
(83, 8, 1542630040, '35', 300, 41, '0.00', 'in'),
(84, 8, 1542630062, '35', 300, 40, '0.00', 'in'),
(85, 8, 1542630116, '35', 300, 39, '0.00', 'in'),
(86, 8, 1542630141, '35', 300, 38, '0.00', 'in'),
(87, 8, 1542630164, '35', 300, 37, '0.00', 'in'),
(88, 8, 1542630194, '35', 300, 36, '0.00', 'in'),
(89, 8, 1542630218, '35', 300, 35, '0.00', 'in'),
(90, 8, 1542632161, '35', 300, 34, '0.00', 'in'),
(91, 8, 1542632264, '35', 300, 33, '0.00', 'in'),
(92, 8, 1542632295, '35', 300, 32, '0.00', 'in'),
(93, 8, 1542632322, '35', 300, 31, '0.00', 'in'),
(94, 8, 1542632471, '35', 300, 30, '0.00', 'in'),
(95, 8, 1542632553, '35', 300, 29, '0.00', 'in'),
(96, 8, 1542632775, '35', 300, 28, '0.00', 'in'),
(97, 8, 1542632817, '35', 300, 27, '0.00', 'in'),
(98, 8, 1542632855, '35', 300, 26, '0.00', 'in'),
(99, 8, 1542632903, '35', 300, 25, '0.00', 'in'),
(100, 8, 1542632956, '35', 300, 24, '0.00', 'in'),
(101, 8, 1542633009, '35', 300, 23, '0.00', 'in'),
(102, 8, 1542633245, '35', 300, 22, '0.00', 'in'),
(103, 8, 1542633278, '35', 300, 21, '0.00', 'in'),
(104, 8, 1542633313, '35', 300, 20, '0.00', 'in'),
(105, 8, 1542633581, '35', 300, 19, '0.00', 'in'),
(106, 8, 1542633608, '35', 300, 18, '0.00', 'in'),
(107, 8, 1542633638, '35', 300, 17, '0.00', 'in'),
(108, 8, 1542633673, '35', 300, 16, '0.00', 'in'),
(109, 8, 1542633713, '35', 300, 15, '0.00', 'in'),
(110, 8, 1542633910, '35', 300, 14, '0.00', 'in'),
(111, 8, 1542633934, '35', 300, 13, '0.00', 'in'),
(112, 8, 1542633970, '35', 300, 12, '0.00', 'in'),
(113, 8, 1542633991, '35', 300, 11, '0.00', 'in'),
(114, 8, 1542634012, '35', 300, 10, '0.00', 'in'),
(115, 8, 1542634082, '35', 300, 9, '0.00', 'in'),
(116, 8, 1542634103, '35', 300, 8, '0.00', 'in'),
(117, 8, 1542634137, '35', 300, 7, '0.00', 'in'),
(118, 8, 1542634160, '35', 300, 6, '0.00', 'in'),
(119, 8, 1542634183, '35', 300, 5, '0.00', 'in'),
(120, 8, 1542634204, '35', 300, 4, '0.00', 'in'),
(121, 8, 1542634242, '35', 300, 2, '0.00', 'in'),
(122, 8, 1542634266, '35', 300, 1, '0.00', 'in'),
(130, 0, 1562594033, '', 2, 1, '0.00', 'out'),
(169, 9, 1567049048, 'Sat123', 100, 110, '10000.00', 'in'),
(168, 9, 1567048856, 'Sat123', 100, 109, '10000.00', 'in'),
(167, 9, 1567048849, 'Sat123', 100, 109, '1500.00', 'in'),
(166, 9, 1567048700, 'Sat123', 100, 108, '1500.00', 'in'),
(165, 9, 1567005550, 'Sat123', 100, 107, '1500.00', 'in'),
(170, 9, 1567049054, 'Sat123', 100, 110, '10000.00', 'in'),
(171, 9, 1567049129, 'Sat123', 100, 111, '10000.00', 'in'),
(172, 9, 1567049214, '', 15, 112, '1500.00', 'in'),
(173, 9, 1567049350, 'Sat123', 100, 113, '1500.00', 'in'),
(174, 9, 1567049355, '', 100, 113, '10000.00', 'in'),
(175, 0, 1628243505, '', 1, 108, '0.00', 'out'),
(176, 0, 1628243505, '', 1, 113, '0.00', 'out'),
(177, 0, 1628243505, '', 1, 107, '0.00', 'out'),
(178, 0, 1628243506, '', 1, 110, '0.00', 'out');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `attribute_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_ref_id`, `products_id`, `attribute_id`) VALUES
(174, 113, 62),
(173, 113, 61),
(172, 112, 60),
(171, 111, 59),
(170, 110, 58),
(169, 110, 57),
(168, 109, 56),
(167, 109, 55),
(176, 113, 62),
(178, 110, 57);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(100) NOT NULL,
  `label_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(1031, 'Home'),
(1, 'I\'ve forgotten my password?'),
(1030, 'Menu'),
(1029, 'Clear'),
(1028, 'Apply'),
(1027, 'Close'),
(1026, 'Price Range'),
(1025, 'Filters'),
(1024, 'My Wish List'),
(1023, 'Log Out'),
(1022, 'Please login or create an account for free'),
(1021, 'Login & Register'),
(1020, 'Save Address'),
(1018, 'State'),
(1019, 'Update Address'),
(1017, 'Post code'),
(1016, 'City'),
(1015, 'Zone'),
(1014, 'other'),
(1013, 'Country'),
(1012, 'Shipping Address'),
(1011, 'Proceed'),
(1010, 'Remove'),
(1008, 'by'),
(1009, 'View'),
(1007, 'Quantity'),
(1006, 'Price'),
(1005, 'continue shopping'),
(1004, 'Your cart is empty'),
(1003, 'My Cart'),
(1002, 'Continue'),
(1001, 'Error: invalid cvc number!'),
(1000, 'Error: invalid expiry date!'),
(999, 'Error: invalid card number!'),
(998, 'Expiration'),
(997, 'Expiration Date'),
(996, 'Card Number'),
(995, 'Payment'),
(994, 'Order Notes'),
(993, 'Shipping Cost'),
(992, 'Tax'),
(991, 'Products Price'),
(990, 'SubTotal'),
(989, 'Products'),
(988, 'Shipping Method'),
(987, 'Billing Address'),
(986, 'Order'),
(985, 'Next'),
(984, 'Same as Shipping Address'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(980, 'Already Memeber?'),
(979, 'Last Name'),
(978, 'First Name'),
(977, 'Create an Account'),
(976, 'Add new Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(968, 'Customer Orders'),
(967, 'Change Password'),
(966, 'New Password'),
(965, 'Current Password'),
(964, 'Update'),
(963, 'Date of Birth'),
(962, 'Mobile'),
(961, 'My Account'),
(960, 'Likes'),
(959, 'newest'),
(958, 'top seller'),
(957, 'special'),
(956, 'most liked'),
(955, 'Cancel'),
(954, 'Sort Products'),
(953, 'Special Products'),
(952, 'Price : low - high'),
(951, 'Price : high - low'),
(950, 'Z - A'),
(949, 'A - Z'),
(948, 'All'),
(947, 'Explore More'),
(946, 'Note to the buyer'),
(945, 'Coupon'),
(944, 'coupon code'),
(943, 'Coupon Amount'),
(942, 'Coupon Code'),
(941, 'Food Categories'),
(940, 'Recipe of Day'),
(939, 'Top Dishes'),
(938, 'Skip'),
(937, 'Term and Services'),
(936, 'Privacy Policy'),
(935, 'Refund Policy'),
(934, 'Newest'),
(933, 'OUT OF STOCK'),
(932, 'Select Language'),
(931, 'Reset'),
(930, 'Shop'),
(929, 'Settings'),
(928, 'Enter keyword'),
(927, 'News'),
(926, 'Top Sellers'),
(925, 'Go Back'),
(924, 'Word Press Post Detail'),
(923, 'Explore'),
(922, 'Continue Adding'),
(921, 'Your wish List is empty'),
(920, 'Favourite'),
(919, 'Continue Shopping'),
(918, 'My Orders'),
(917, 'Thank you for shopping with us.'),
(916, 'Thank You'),
(915, 'Shipping method'),
(914, 'Sub Categories'),
(913, 'Main Categories'),
(912, 'Search'),
(911, 'Reset Filters'),
(910, 'No Products Found'),
(909, 'OFF'),
(908, 'Techincal details'),
(907, 'Product Description'),
(906, 'ADD TO CART'),
(905, 'Add to Cart'),
(904, 'In Stock'),
(903, 'Out of Stock'),
(902, 'New'),
(901, 'Product Details'),
(900, 'Shipping'),
(899, 'Sub Total'),
(898, 'Total'),
(897, 'Price Detail'),
(896, 'Order Detail'),
(895, 'Got It!'),
(894, 'Skip Intro'),
(893, 'Intro'),
(892, 'REMOVE'),
(891, 'Deals'),
(890, 'All Categories'),
(889, 'Most Liked'),
(888, 'Special Deals'),
(887, 'Top Seller'),
(886, 'Products are available.'),
(885, 'Recently Viewed'),
(884, 'Please connect to the internet'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(880, 'Categories'),
(879, 'About Us'),
(878, 'Send'),
(877, 'Forgot Password'),
(876, 'Register'),
(875, 'Password'),
(874, 'Email'),
(873, 'or'),
(872, 'Login with'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(100) NOT NULL,
  `label_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(100) DEFAULT NULL,
  `label_id` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1372, 'Most Liked', 1, 956),
(1371, 'Special', 1, 957),
(1370, 'Top Seller', 1, 958),
(1369, 'Newest ', 1, 959),
(1368, 'Likes', 1, 960),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1365, 'Date of Birth', 1, 963),
(1364, 'Update', 1, 964),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1354, 'Order Status', 1, 969),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1352, 'Add new Address', 1, 976),
(1351, 'Create an Account', 1, 977),
(1350, 'First Name', 1, 978),
(1349, 'Last Name', 1, 979),
(1348, 'Already Memeber?', 1, 980),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1333, 'Payment', 1, 995),
(1332, 'Card Number', 1, 996),
(1331, 'Expiration Date', 1, 997),
(1330, 'Expiration', 1, 998),
(1329, 'Error: invalid card number!', 1, 999),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1326, 'Continue', 1, 1002),
(1325, 'My Cart', 1, 1003),
(1324, 'Your cart is empty', 1, 1004),
(1323, 'continue shopping', 1, 1005),
(1322, 'Price', 1, 1006),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1317, 'Proceed', 1, 1011),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1306, 'Please login or create an account for free', 1, 1022),
(1305, 'Log Out', 1, 1023),
(1304, 'My Wish List', 1, 1024),
(1303, 'Filters', 1, 1025),
(1302, 'Price Range', 1, 1026),
(1301, 'Close', 1, 1027),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1298, 'Menu', 1, 1030),
(1297, 'Home', 1, 1031),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, NULL, 1, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`) VALUES
(1, 'English', 'en', 'resources/assets/images/language_flags/1486556365.503984030_english.jpg', 'english', 1, 'ltr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(100) NOT NULL,
  `liked_customers_id` int(100) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(1, 37, 2, '2018-11-20 13:00:34'),
(2, 97, 2, '2018-11-20 13:26:01'),
(3, 80, 2, '2018-11-20 13:26:06'),
(4, 78, 2, '2018-11-22 13:54:53'),
(5, 78, 4, '2018-11-22 15:09:51'),
(6, 81, 4, '2018-11-22 15:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(100) NOT NULL,
  `min_level` int(100) NOT NULL,
  `max_level` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `inventory_ref_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_min_max`
--

INSERT INTO `manage_min_max` (`min_max_id`, `min_level`, `max_level`, `products_id`, `inventory_ref_id`) VALUES
(1, 1, 50, 81, '0'),
(4, 5, 30, 82, '0'),
(5, 55, 100, 83, '0'),
(6, 15, 50, 80, '9'),
(7, 1, 50, 81, '0'),
(8, 1, 50, 81, '0'),
(9, 1, 50, 81, '0'),
(10, 1, 10, 78, '0'),
(11, 1, 10, 77, '29,47'),
(12, 1, 10, 76, '0'),
(13, 1, 10, 75, '35,49'),
(14, 1, 10, 73, '0'),
(15, 1, 10, 72, '0'),
(16, 1, 10, 71, '0'),
(17, 1, 10, 70, '0'),
(18, 1, 10, 69, '0'),
(19, 1, 10, 68, '0'),
(20, 1, 10, 67, '0'),
(21, 1, 10, 66, '0'),
(22, 1, 10, 65, '0'),
(23, 1, 10, 64, '0'),
(24, 1, 10, 63, '0'),
(25, 1, 10, 62, '0'),
(26, 1, 10, 61, '0'),
(27, 1, 10, 60, '0'),
(28, 1, 10, 59, '0'),
(29, 1, 10, 58, '0'),
(30, 1, 10, 57, '0'),
(31, 1, 10, 56, '0'),
(32, 1, 10, 55, '0'),
(33, 1, 10, 54, '0'),
(34, 1, 10, 53, '0'),
(35, 1, 10, 52, '0'),
(36, 1, 10, 51, '0'),
(37, 1, 10, 50, '0'),
(38, 1, 10, 49, '0'),
(39, 1, 10, 48, '0'),
(40, 1, 10, 47, '0'),
(41, 1, 10, 46, '0'),
(42, 1, 10, 45, '0'),
(43, 1, 10, 44, '0'),
(44, 1, 10, 43, '0'),
(45, 1, 10, 42, '0'),
(46, 1, 10, 41, '0'),
(47, 1, 10, 40, '0'),
(48, 1, 10, 39, '0'),
(49, 1, 10, 38, '0'),
(50, 1, 10, 37, '0'),
(51, 1, 10, 36, '0'),
(52, 1, 10, 35, '0'),
(53, 1, 10, 34, '0'),
(54, 1, 10, 33, '0'),
(55, 1, 10, 32, '0'),
(56, 1, 10, 31, '0'),
(57, 1, 10, 30, '0'),
(58, 1, 10, 29, '0'),
(59, 1, 10, 28, '0'),
(60, 1, 10, 27, '0'),
(61, 1, 10, 26, '0'),
(62, 1, 10, 25, '0'),
(63, 1, 10, 24, '0'),
(64, 1, 10, 23, '0'),
(65, 1, 10, 22, '0'),
(66, 1, 10, 21, '0'),
(67, 1, 10, 20, '0'),
(68, 1, 10, 19, '0'),
(69, 1, 10, 18, '0'),
(70, 1, 10, 17, '0'),
(71, 1, 10, 16, '0'),
(72, 1, 10, 15, '0'),
(73, 1, 10, 14, '0'),
(74, 1, 10, 13, '0'),
(75, 1, 10, 12, '0'),
(76, 1, 10, 11, '0'),
(77, 1, 10, 10, '0'),
(78, 1, 10, 9, '0'),
(79, 1, 10, 8, '0'),
(80, 1, 10, 7, '0'),
(81, 1, 10, 6, '0'),
(82, 1, 10, 5, '0'),
(83, 1, 10, 4, '0'),
(84, 1, 10, 2, '0'),
(85, 1, 10, 1, '0'),
(86, 1, 10, 97, '0'),
(87, 0, 0, 98, '125'),
(88, 0, 0, 99, '129'),
(89, 1, 10, 98, '128'),
(90, 0, 0, 99, '129'),
(91, 10, 15, 97, '132'),
(92, 3, 0, 97, '137');

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(100) NOT NULL,
  `admin_type_id` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT 0,
  `categories_view` tinyint(1) NOT NULL DEFAULT 0,
  `categories_create` tinyint(1) NOT NULL DEFAULT 0,
  `categories_update` tinyint(1) NOT NULL DEFAULT 0,
  `categories_delete` tinyint(1) NOT NULL DEFAULT 0,
  `products_view` tinyint(1) NOT NULL DEFAULT 0,
  `products_create` tinyint(1) NOT NULL DEFAULT 0,
  `products_update` tinyint(1) NOT NULL DEFAULT 0,
  `products_delete` tinyint(1) NOT NULL DEFAULT 0,
  `news_view` tinyint(1) NOT NULL DEFAULT 0,
  `news_create` tinyint(1) NOT NULL DEFAULT 0,
  `news_update` tinyint(1) NOT NULL DEFAULT 0,
  `news_delete` tinyint(1) NOT NULL DEFAULT 0,
  `customers_view` tinyint(1) NOT NULL DEFAULT 0,
  `customers_create` tinyint(1) NOT NULL DEFAULT 0,
  `customers_update` tinyint(1) NOT NULL DEFAULT 0,
  `customers_delete` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_view` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_create` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_update` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_view` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_create` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_update` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_delete` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_view` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_send` tinyint(1) NOT NULL DEFAULT 0,
  `orders_view` tinyint(1) NOT NULL DEFAULT 0,
  `orders_confirm` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `reports_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT 0,
  `language_view` tinyint(1) NOT NULL DEFAULT 0,
  `language_create` tinyint(1) NOT NULL DEFAULT 0,
  `language_update` tinyint(1) NOT NULL DEFAULT 0,
  `language_delete` tinyint(1) NOT NULL DEFAULT 0,
  `profile_view` tinyint(1) NOT NULL DEFAULT 0,
  `profile_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_view` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_create` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_delete` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `manufacturers_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`, `manufacturers_slug`) VALUES
(2, 'Sampradaya', 'resources/assets/images/manufacturers_images/1567064864.logo.png', '2019-08-06 05:41:12', '2019-08-29 07:47:44', 'sampradaya');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers_info`
--

INSERT INTO `manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `url_clicked`, `date_last_click`) VALUES
(2, 1, '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `news_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `news_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_viewed` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) DEFAULT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(100) DEFAULT NULL,
  `order_information` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(100) NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `email`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`, `ordered_source`, `delivery_phone`, `billing_phone`, `transaction_id`) VALUES
(1, '0.00', 5, 'Prasad P', NULL, 'Madhapur', '', 'Hyderabad', '500081', 'other', 'India', '', 'niranjanpusuluri@gmail.com', NULL, 'Prasad P', NULL, 'Madhapur', '', 'Hyderabad', '500081', 'other', 'India', NULL, 'Prasad P', NULL, 'Madhapur', '', 'Hyderabad', '500081', 'other', 'India', 0, 'Cash On Delivery', '', '', '', '', '2019-08-20 12:01:09', '2019-08-20 12:01:09', NULL, '₹', NULL, '2376.00', '0.00', 'Shipping Price', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '', '', NULL),
(2, '0.00', 5, 'Niranjan Test', NULL, 'Madhapur', '', 'Hyderabad', '500081', 'other', 'India', '', 'user@user.com', NULL, 'Niranjan Test', NULL, 'Madhapur', '', 'Hyderabad', '500081', 'other', 'India', NULL, 'Niranjan Test', NULL, 'Madhapur', '', 'Hyderabad', '500081', 'other', 'India', 0, 'Cash On Delivery', '', '', '', '', '2021-08-06 09:51:45', '2021-08-06 09:51:45', NULL, '₹', NULL, '570.00', '0.00', 'Flat Rate', NULL, '[]', 0, '', 0, '', '', '', 0, '', 1, '7989001629', '7989001629', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 103, NULL, 'ICON Polarized Black Sunglasses', '2970.00', '2376.00', '1', 1),
(2, 2, 108, NULL, 'Gulab Jamun', '120.00', '120.00', '1', 1),
(3, 2, 113, NULL, 'Tomato Pickle', '150.00', '250.00', '1', 1),
(4, 2, 107, NULL, 'Laddu', '120.00', '120.00', '1', 1),
(5, 2, 110, NULL, 'Idly Karam', '80.00', '80.00', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(1, 5, 10, 77, 'Colors', 'Green', '0.00', '+'),
(2, 5, 10, 77, 'Size', 'Small', '0.00', '+'),
(3, 1, 1, 103, 'Lens Color', 'Black', '0.00', '+'),
(4, 2, 3, 113, 'Size', '500 Grms', '100.00', '+'),
(5, 2, 5, 110, 'Size', '100 Grms', '0.00', '+');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT 0,
  `orders_products_id` int(11) NOT NULL DEFAULT 0,
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT 0,
  `download_count` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT 0,
  `downloads_flag` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(2, 1, 'Completed', 0, 0),
(3, 1, 'Cancel', 0, 0),
(4, 1, 'Return', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(100) NOT NULL,
  `orders_status_id` int(100) NOT NULL,
  `orders_status_name` varchar(255) NOT NULL,
  `language_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT 0,
  `comments` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2019-07-08 01:02:21', 1, ''),
(2, 2, 1, '2019-07-08 01:02:33', 1, ''),
(3, 3, 1, '2019-07-08 01:02:44', 1, ''),
(4, 4, 1, '2019-07-08 01:02:52', 1, ''),
(5, 5, 1, '2019-07-08 01:53:51', 1, ''),
(6, 5, 4, '2019-08-01 06:21:16', 1, ''),
(7, 5, 3, '2019-08-01 11:02:00', 1, ''),
(8, 1, 1, '2019-08-20 12:01:09', 1, ''),
(9, 2, 1, '2021-08-06 09:51:45', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(100) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 1),
(7, 'refund-policy', 1, 1),
(8, 'about-us', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL,
  `page_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Privacy Policy</p>', 1, 1),
(4, 'Term & Services', '<p>Term &amp; Services</p>', 1, 2),
(7, 'Refund Policy', '<p>Refund Policy</p>', 1, 3),
(10, 'About Us', '<p>About Us</p>', 1, 4),
(13, 'Privacy Policy', '<p>Privacy Policay</p>', 1, 5),
(16, 'Term & Services', '<p>Term &amp; Services</p>', 1, 6),
(19, 'Refund Policy', '<p>Refund Policy</p>', 1, 7),
(22, 'About Us', '<h2><strong>About Us</strong></h2>', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `payments_setting`
--

CREATE TABLE `payments_setting` (
  `payments_id` int(100) NOT NULL,
  `braintree_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brantree_active` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishable_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_active` tinyint(1) NOT NULL DEFAULT 0,
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `cod_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_status` tinyint(1) NOT NULL DEFAULT 0,
  `paypal_enviroment` tinyint(1) DEFAULT 0,
  `payment_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_enviroment` tinyint(1) NOT NULL,
  `instamojo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_auth_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_client_id` text COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_client_secret` text COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_active` tinyint(1) NOT NULL DEFAULT 0,
  `cybersource_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cybersource_status` tinyint(1) NOT NULL DEFAULT 0,
  `cybersource_enviroment` tinyint(1) NOT NULL DEFAULT 0,
  `hyperpay_enviroment` tinyint(1) NOT NULL DEFAULT 0,
  `hyperpay_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hyperpay_active` tinyint(1) NOT NULL DEFAULT 0,
  `hyperpay_userid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hyperpay_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hyperpay_entityid` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments_setting`
--

INSERT INTO `payments_setting` (`payments_id`, `braintree_enviroment`, `braintree_name`, `braintree_merchant_id`, `braintree_public_key`, `braintree_private_key`, `brantree_active`, `stripe_enviroment`, `stripe_name`, `secret_key`, `publishable_key`, `stripe_active`, `cash_on_delivery`, `cod_name`, `paypal_name`, `paypal_id`, `paypal_status`, `paypal_enviroment`, `payment_currency`, `instamojo_enviroment`, `instamojo_name`, `instamojo_api_key`, `instamojo_auth_token`, `instamojo_client_id`, `instamojo_client_secret`, `instamojo_active`, `cybersource_name`, `cybersource_status`, `cybersource_enviroment`, `hyperpay_enviroment`, `hyperpay_name`, `hyperpay_active`, `hyperpay_userid`, `hyperpay_password`, `hyperpay_entityid`) VALUES
(1, '0', 'Braintree', 'wrv3cwbft6n3bg5g', '2bz5kxcj2gs3hdbx', '55ae08cb061e36dca59aaf2a883190bf', 0, '0', 'Stripe', 'sk_test_Gsz7jL4wRikI8YFaNzbwxKOF', 'pk_test_cCAEC6EejawuAvsvR9bhKrGR', 0, 1, 'Cash On Delivery', 'Paypal', 'AULJ0Q_kdXwEbi7PCBunUBJc4Kkg2vvdazF8kJoywAV9_i7iJMQphB9NLwdR0v2BAUlLF974iTrynbys', 0, 0, 'INR', 0, 'Instamojo', 'c5a348bd5fcb4c866074c48e9c77c6c4', '99448897defb4423b921fe47e0851b86', 'test_9l7MW8I7c2bwIw7q0koc6B1j5NrvzyhasQh', 'test_m9Ey3Jqp9AfmyWKmUMktt4K3g1uMIdapledVRRYJha7WinxOsBVV5900QMlwvv3l2zRmzcYDEOKPh1cvnVedkAKtHOFFpJbqcoNCNrjx1FtZhtDMkEJFv9MJuXD', 1, 'cybersource', 0, 0, 0, 'hyperpay', 0, '8a82941865340dc8016537cdac1e0841', 'sXrYy8pnsf', '8a82941865340dc8016537ce08db0845');

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `payment_name` varchar(32) NOT NULL,
  `sub_name_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `name`, `language_id`, `payment_name`, `sub_name_1`, `sub_name_2`) VALUES
(26, '', 1, 'Braintree', '', ''),
(27, '', 1, 'Stripe', '', ''),
(28, '', 1, 'Paypal', '', ''),
(29, '', 1, 'cybersource', '', ''),
(30, 'Cash On Delivery', 1, 'Cash On Delivery', '', ''),
(31, 'Instamojo', 1, 'Instamojo', '', ''),
(32, '', 1, 'hyperpay', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_weight_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT 0,
  `products_liked` int(100) NOT NULL,
  `low_limit` int(4) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `products_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_type` int(1) NOT NULL DEFAULT 0,
  `products_min_order` int(100) NOT NULL DEFAULT 1,
  `products_max_stock` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`) VALUES
(107, 0, '', 'resources/assets/images/product_images/1567005541.102326257-indian-sweet-motichoor-laddoo-also-know-as-bundi-laddu-or-motichur-laddoo-are-made-of-very-small-gra.jpg', '120.00', '2019-08-28 03:19:01', NULL, NULL, '0.5', 'Kilogram', 1, 0, 2, 0, 0, 0, 0, 'laddu', 0, 1, 0),
(108, 0, '', 'resources/assets/images/product_images/1567064590.gulab-jamun-milk-powder.jpg', '120.00', '2019-08-29 03:18:13', '2019-08-29 07:43:10', NULL, '100', 'Gram', 1, 0, 2, 0, 0, 0, 0, 'gulab-jamun', 0, 1, 0),
(109, 0, '', 'resources/assets/images/product_images/1567048810.55044996.jpg', '150.00', '2019-08-29 03:20:10', '2019-08-29 06:21:36', NULL, '100', 'Gram', 1, 0, 2, 0, 0, 0, 0, 'kalakand', 1, 1, 0),
(110, 0, '', 'resources/assets/images/product_images/1567049021.maxresdefault.jpg', '80.00', '2019-08-29 03:23:41', NULL, NULL, '100', 'Gram', 1, 0, 2, 0, 0, 0, 1, 'idly-karam', 1, 1, 0),
(111, 0, '', 'resources/assets/images/product_images/1567049116.ygVUQXjHId.jpg', '50.00', '2019-08-29 03:25:16', NULL, NULL, '100', 'Gram', 1, 0, 2, 0, 0, 0, 0, 'kandi-podi', 1, 1, 0),
(112, 0, '', 'resources/assets/images/product_images/1567049202.mango pickle.jpg', '150.00', '2019-08-29 03:26:42', NULL, NULL, '250', 'Gram', 1, 0, 2, 0, 0, 0, 0, 'mango-pickle', 1, 1, 0),
(113, 0, '', 'resources/assets/images/product_images/1567049328.tomato-pickle-recipe.jpg', '150.00', '2019-08-29 03:28:48', '2019-09-04 05:25:08', NULL, '100', 'Gram', 1, 0, 2, 0, 0, 0, 1, 'tomato-pickle', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(55, 109, 16, 183, '0.00', '+', 1),
(56, 109, 16, 182, '1000.00', '+', 0),
(57, 110, 16, 183, '0.00', '+', 1),
(58, 110, 16, 201, '100.00', '+', 0),
(59, 111, 16, 183, '0.00', '+', 1),
(60, 112, 16, 201, '0.00', '+', 1),
(61, 113, 16, 201, '0.00', '+', 1),
(62, 113, 16, 202, '100.00', '+', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT 0,
  `products_attributes_maxcount` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT 0,
  `products_left_banner` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_left_banner_start_date` int(30) DEFAULT NULL,
  `products_left_banner_expire_date` int(30) DEFAULT NULL,
  `products_right_banner` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_right_banner_start_date` int(30) DEFAULT NULL,
  `products_right_banner_expire_date` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 'CLASSIC FIT SOFT-TOUCH POLO', '<p>- Classic Fit: our roomiest silhouette. Our Polo shirts also come in Slim Fit (our trimmest) and Custom Slim Fit (our second-slimmest). - Size medium has a 29&quot; body length, an 18&quot; shoulder, and a 22&quot; chest. - Ribbed Polo collar. Three-button placket. - Short sleeves with ribbed armbands. - Even vented hem. - Multicolored signature embroidered pony at the left chest. - 100% cotton. - Machine washable. Imported. - Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(2, 1, 'HAMPTON CLASSIC FIT SHIRT', '<p>Classic Fit. Size medium has a 29&frac12;&quot; body length, an 18&frac12;&quot; shoulder, and a 22&frac12;&quot; chest. Medium-spread collar. Four-button extended placket. Genuine mother-of-pearl buttons. Short sleeves. Left chest patch pocket. Even vented hem. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(3, 1, 'CLASSIC FIT COTTON POLO SHIRT', 'Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow.\r\nOur Polo shirts also come in Slim Fit (3\" trimmer at the chest and 2\" shorter at the body) and Custom Slim Fit (1½\" trimmer at the chest and ½\" shorter at the body).\r\nSize medium has a 29\" body length, an 18\" shoulder, and a 22\" chest.\r\nRibbed Polo collar. Three-button placket.\r\nShort sleeves with ribbed armbands.\r\nEven vented hem.\r\nSignature embroidered pony at the left chest.\r\n100% cotton. Machine washable. Imported.\r\nModel is 6\'1\"/185 cm and wears a size medium.', NULL, 0, '', NULL, NULL, '', 0, 0),
(4, 1, 'CLASSIC FIT COTTON POLO SHIRT', '<p>Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow. Our Polo shirts also come in Slim Fit (3&quot; trimmer at the chest and 2&quot; shorter at the body) and Custom Slim Fit (1&frac12;&quot; trimmer at the chest and &frac12;&quot; shorter at the body). Size medium has a 29&quot; body length, an 18&quot; shoulder, and a 22&quot; chest. Ribbed Polo collar. Three-button placket. Short sleeves with ribbed armbands. Even vented hem. Signature embroidered pony at the left chest. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(5, 1, 'CUSTOM SLIM FIT COTTON SHIRT', '<p>Custom Slim Fit: our trimmest silhouette. Previously called Custom Fit. Our T-shirts also come in Classic Fit (our roomiest). Size medium has a 27&frac12;&quot; body length, an 18&frac12;&quot; shoulder, and a 21&quot; chest. Striped baseball collar. Two-button placket. Short sleeves with striped ribbed armbands. Striped ribbed piecing at the armholes. Felt &quot;Polo Ralph Lauren&quot; patch at the left chest. Even vented hem. Shell: 100% cotton. Collar: 99% cotton, 1% elastane. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(6, 1, 'CUSTOM SLIM FIT WEATHERED POLO', '<p>Custom Slim Fit: a middle ground between our Classic Fit and Slim Fit. Sleeve hugs the bicep. Tailored through the waist. Previously called Custom Fit. Our Polo shirts also come in Slim Fit (1&frac12;&quot; trimmer at the chest and &frac12;&quot; shorter at the body) and Classic Fit (1&frac12;&quot; wider at the chest and 1&frac12;&quot; longer at the body). Size medium has a 27&frac12;&quot; front body length, a 28&frac12;&quot; back body length, a 17&frac34;&quot; shoulder, a 20&frac34;&quot; chest, and a 34&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck and changes 1&quot; betwe Ribbed Polo collar. Two-button placket. Long sleeves with ribbed cuffs. Tennis tail. Signature embroidered pony at the left chest. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(7, 1, 'STANDARD FIT COTTON SHIRT', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; body length. Button-down point collar. Buttoned placket. Short sleeves. Left chest buttoned pocket. 100% cotton. Machine washable. Imported. Coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(8, 1, 'STANDARD FIT COTTON POPOVER', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; back body length. Button-down point collar. Buttoned half-placket. Short sleeves. Left chest buttoned pocket. Box-pleated back yoke ensures a comfortable fit and a greater range of motion. 100% cotton. Machine washable. Imported. Japanese fabric. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(9, 1, 'STANDARD FIT MADRAS POPOVER', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; body length. Button-down point collar. Three-button placket. Genuine mother-of-pearl buttons. Short sleeves. Left chest patch pocket. Split back yoke with a box pleat ensures a comfortable fit and a greater range of motion. Signature embroidered pony at the left chest pocket. 100% cotton. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(10, 1, 'STANDARD FIT COTTON WORKSHIRT', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 32&quot; body length, an 18&frac12;&quot; shoulder, a 46&frac12;&quot; chest, and a 35&quot; sleeve length. Sleeve length is taken from the center back of the neck and changes 1&quot; between sizes. Point collar. Buttoned placket. Genuine mother-of-pearl buttons. Long sleeves with buttoned barrel cuffs. Two chest buttoned pockets. Split back yoke with a box pleat ensures a comfortable fit and a greater range of motion. 100% cotton. Machine washable. Imported. Italian fabric. Dyed with true indigo, which may rub off onto fabrics, leather, and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(11, 1, 'ELDRIDGE SUPER SLIM JEAN', '<p>Eldridge Super Slim: Polo&#39;s skinniest fit. Sits low at the waist. Trim through the thigh and the leg. Tapered leg opening. Size 32W has an 8&frac34;&quot; rise and a 12&frac12;&quot; leg opening. Belt loops. Zip fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot; leather patch at the back right waist. 94% cotton, 4% polyester, 2% elastane. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(12, 1, 'SULLIVAN SLIM FIT JEAN', '<p>Sullivan Slim: sits slightly below the waist. Slim, tapered leg. Size 32W has a 9&quot; rise and a 14&quot; leg opening. Belt loops. Zip fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot;&ndash;debossed leather patch at the back right waist. 97% cotton, 3% elastane. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(13, 1, 'HAMPTON STRAIGHT FIT JEAN', '<p>Hampton Straight: Polo&#39;s most relaxed fit. Sits slightly below the waist. Easy fit through the thigh and slightly tapered at the ankle. Size 32W has a 9&quot; rise and a 16&quot; leg opening. Belt loops. Button fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot;&ndash;debossed leather patch at the back right waist. 100% cotton. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(14, 1, 'LAXMAN TECH SUEDE SNEAKER', '<p>Rounded toe. Lace-up front. Woven tag with our signature pony at the tongue. Padded velvet insole. Treaded rubber outsole. &quot;Polo&quot; printed at the outer side. Upper: man-made materials. Mesh panels: 100% nylon. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(15, 1, 'VAUGHN SUEDE SLIP-ON SNEAKER', '<p>Fits true to size. Rounded toe. Slip-on styling. Elasticized side gores. &quot;Polo&quot; tag at the outer side. Padded collar. Signature pony&ndash;debossed suede heel. Padded canvas insole. Treaded rubber outsole. Leather. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(16, 1, 'WORKINGTON LEATHER DRIVER', '<p>Penny tab at the vamp. Single-needle stitching at the toe. Padded leather insole. Leather outsole with rubber-nub detailing. Debossed &quot;Polo&quot; tag at the outer side. Leather. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(17, 1, 'DILLIAN II SUEDE CHELSEA BOOT', '<p>Fits true to size. &frac12;&quot;/15 mm heel height. Rounded toe. Elasticized gores at the sides. Pull tab at the heel. Leather insole. Leather outsole with rubber treads. Leather. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(18, 1, 'BRUNEL LEATHER WORK BOOT', '<p>1&quot;/25 mm heel height. 6&quot;/152 mm shaft height. Lace-up front with speed hooks. Sewn-in tongue guard. Pull tab at the heel. Hand-cut leather insole. Vibram rubber outsole. Goodyear welt construction. Leather. Made in the USA.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(19, 1, 'LAXMAN TECH SUEDE SNEAKER', '<p>Rounded toe. Lace-up front. Woven tag with our signature pony at the tongue. Padded insole. Treaded rubber outsole. &quot;Polo&quot; printed at the outer sides. Includes our &quot;Polo Ralph Lauren&quot;&ndash;embossed box. Man-made materials. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(20, 1, 'ROUND SUNGLASSES', '<p>Lightweight lenses with 100% UV protection. Molded nose bridge. Curved arms. Our logo is discreetly etched at the left lens and interior right arm. Made in Italy.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(21, 1, 'NAUTICAL-STRIPED SUNGLASSES', '<p>Acetate frame. Metal bars accent the hinges of the arms. Striped pattern accents the interior of each arm. Tinted and polarized lenses offer 100% UV protection and have a scratch-resistant coating. Subtle &quot;Ralph Lauren&quot; text is etched at the left lens. Our metal &quot;RL&quot; monogram accents each temple. Presented in our signature soft leather case with a snapped closure. Our signature-stamped cleaning wipe is included. 55 mm eye size. 20 mm bridge size. 145 mm temple size. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(22, 1, 'POLO SQUARE SUNGLASSES', '<p>Metal frame with a double bridge. Metal signature pony at the temples. Lenses offer 100% UV protection. &quot;Polo&quot; etched at the left lens. Presented in our leather &quot;Polo Ralph Lauren&quot;&ndash;debossed case. 60 mm eye size. 17 mm bridge size. 140 mm temple size. Metal. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(23, 1, 'POLO AVIATOR SUNGLASSES', '<p>Metal frame with a double bridge. Metal signature pony at the nylon-fiber temples. Lenses offer 100% UV protection. &quot;Polo&quot; etched at the left lens. Presented in our leather &quot;Polo Ralph Lauren&quot;&ndash;debossed case. 61 mm eye size. 15 mm bridge size. 145 mm temple size. Metal, nylon. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(24, 1, 'STRAPLESS JERSEY MAXIDRESS', '<p>Strapless maxidress silhouette. Size medium has a 48&frac12;&quot; front body length and a 47&frac14;&quot; back body length. Pull-on styling. Lined at the bodice. Shell and Lining: 95% polyester, 5% elastane. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a size small.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(25, 1, 'MADRAS FIT-AND-FLARE DRESS', '<p>Sleeveless fit-and-flare silhouette. US size 8 has a 40&frac12;&quot; back body length and a 37&frac14;&quot; bust. Rounded neckline. Concealed center back zipper with a hook-and-eye closure. Side on-seam pockets. Lined at the bodice. Shell and Lining: 100% cotton. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a US size 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(26, 1, 'SILK CREPE SHIRTDRESS', '<p>Straight fit. Size 8 has a 51&frac12;&quot; back length, a 40&frac14;&quot; bust, and a 32&frac12;&quot; sleeve length. Point collar. Buttoned placket. Long sleeves with buttoned barrel cuffs. Two chest patch pockets. Comes with a self-belt with a rectangular buckle. 100% silk. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a size 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(27, 1, 'BEADED JERSEY GOWN', '<p>Slim fit. US size 8 has a 58&quot; back length and a 35&quot; bust. Square neckline. Center back zipper with a hook-and-eye closure. Embellished shoulder straps. Sleeveless silhouette. Ruching gathers at the front left waist. Ruffle at the front left skirt. Fully lined. Shell and lining: 95% polyester, 5% elastane. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a US size 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(28, 1, 'STRIPED COTTON CREWNECK TEE', '<p>Relaxed fit. Size medium has a 24&frac12;&quot; body length and a 38&quot; bust. Crewneck. Short sleeves. &quot;RL&quot; embroidery at the front right hem. 100% cotton. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(29, 1, 'COTTON-BLEND CREWNECK PULLOVER', '<p>Boxy fit. Intended to hit at the hip. Size medium has a 25&frac12;&quot; front body length, a 27&frac12;&quot; back body length, a 45&frac12;&quot; bust, a 49&quot; shoulder (taken from the dropped shoulder), and a 32&quot; sleeve length. Sleeve length changes &frac34;&quot; between sizes. Crewneck. Long balloon sleeves with ribbed cuffs. Dropped shoulders. Ribbed hem. &quot;Polo&quot; metal plaque at the front right hem. Hem falls longer at the back. Shell: 56% polyester, 44% cotton. Collar and cuffs: 58% cotton, 40% polyester, 2% elastane. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(30, 1, 'CREWNECK LONG-SLEEVE TOP', '<ul>\r\n	<li>Slim fit. Intended to hit at the hip.</li>\r\n	<li>Size medium has a 26&quot; body length, a 32&quot; bust, a 28&quot; shoulder, a 29&frac12;&quot; waist, and a 24&quot; sleeve length. Sleeve length changes &frac12;&quot; between sizes.</li>\r\n	<li>Crewneck.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>&quot;Polo&quot;-engraved metal plaque at the front right hem.</li>\r\n	<li>Front and back panels.</li>\r\n	<li>96% modal, 4% elastane.</li>\r\n	<li>Machine washable. Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(31, 1, 'TOMPKINS SKINNY CROP JEAN', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature skinny fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&frac12;&quot; waist, a 36&quot; hip, and an 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back. Distressing throughout. Rip at the left knee.</li>\r\n	<li>93% cotton, 5% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(32, 1, 'TOMPKINS SKINNY CROP JEANS', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature Skinny Fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has an approx. 7&frac14;&quot; rise, 30&frac12;&quot; waist, 36&quot; hip, and 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(33, 1, 'TOMPKINS SKINNY JEAN', '<ul>\r\n	<li>Tompkins Skinny: mid-rise. Polo&#39;s signature skinny fit with a narrow leg and plenty of stretch for comfort.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&quot; waist, a 35&frac12;&quot; hip, and an 11&quot; leg opening. All sizes have a 30&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a size 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(34, 1, 'SMALL SULLIVAN SADDLE BAG', '<ul>\r\n	<li>Single top handle with a 4&quot; drop. Removable woven crossbody strap with a 23&quot; drop.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;debossed fold-over flap. Concealed magnetic closure.</li>\r\n	<li>Leather strap with a stud closure at each side.</li>\r\n	<li>Lined with twill.</li>\r\n	<li>Exterior slip pocket at the back. Interior slip pocket.</li>\r\n	<li>8&quot; L x 9&quot; W x 4&quot; D.</li>\r\n	<li>Leather, cotton.</li>\r\n	<li>Italian leather. Imported.</li>\r\n	<li>Comes with a dust bag.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(35, 1, 'PATCHWORK CANVAS BIG PONY TOTE', '<ul>\r\n	<li>Two webbed cotton top handles. each with a 9&frac12;&quot; maximum drop.</li>\r\n	<li>Antiqued metal rivets at the front and the back.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Signature embroidered Big Pony at the front patch pocket.</li>\r\n	<li>Reinforced base.</li>\r\n	<li>Interior slip pocket.</li>\r\n	<li>11&frac14;&quot; H x 19&quot; L x 7&quot; D.</li>\r\n	<li>Shell and lining: cotton. Trim: leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(36, 1, 'COLOR-BLOCKED BIG PONY TOTE', '<ul>\r\n	<li>Two webbed top handles, each with a 9&frac12;&quot; drop.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Patch pocket with our signature embroidered Big Pony at the front.</li>\r\n	<li>Interior slip pocket. Interior leather logo patch.</li>\r\n	<li>Gusseted sides. Reinforced bottom.</li>\r\n	<li>Antiqued rivets at the handles.</li>\r\n	<li>12&frac34;&quot; H x 16&frac12;&quot; L x 1&frac34;&quot; D.</li>\r\n	<li>Cotton, leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(37, 1, 'LASER-CUT FLORAL LEATHER TOTE', '<ul>\r\n	<li>Two leather top handles, each with an 8&quot; drop.</li>\r\n	<li>Lobster-clasp closure at the opening.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;embossed removable leather luggage tag and two ties at the top handles.</li>\r\n	<li>Bonded interior.</li>\r\n	<li>Includes a removable zip pouch.</li>\r\n	<li>Bag: 12&frac14;&quot; H x 17&quot; L x 6&quot; D. Pouch: 3&frac14;&quot; H x 6&frac14;&quot; L.</li>\r\n	<li>Leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(38, 1, 'BEAR-PRINT COTTON COVERALL', '', '', 0, NULL, 0, 0, NULL, 0, 0),
(39, 1, 'STRIPED COTTON HENLEY COVERALL', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>Ring snaps at the hem ensure easy on and off.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(40, 1, 'STRIPED COTTON HENLEY BODYSUIT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Ring snaps at the hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(41, 1, 'ABC BLOCK 4-PIECE GIFT BASKET', '<ul>\r\n	<li>Kimono top, pant, coverall, and printed side of blankie: 100% cotton.</li>\r\n	<li>Blankie&#39;s bear, bear fill, plush side, and plush trim: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Kimono top: wrap silhouette secures with snaps and a tie; long sleeves.</li>\r\n	<li>Pant: elasticized waist; footed silhouette.</li>\r\n	<li>Coverall: crew neckline; snapped front; long sleeves; signature embroidered pony at the left chest; ring snaps at the hem; footed silhouette.</li>\r\n	<li>Blankie: plush bear head and arms at the center; 11&quot; W x 11&quot; L. Imported.</li>\r\n	<li>Elegantly presented in a cotton-lined wicker basket. 10&quot; H x 10&quot; L x 8&quot; D.</li>\r\n	<li>Comes with pre-cut cellophane and a matching ribbon for gift-giving.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(42, 1, 'COTTON POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&quot; body length.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Ruffled hem. Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(43, 1, 'STRIPED POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Shirred flounce with lace trim.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(44, 1, 'RUFFLED FLORAL DRESS & BLOOMER', '<ul>\r\n	<li>Dress&#39; shell and bloomer: 100% viscose. Dress&#39;s lining: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless A-line silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Elasticized ruffled neckline.</li>\r\n	<li>Fully lined.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(45, 1, 'STRIPED COTTON BLANKET', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Striped side reverses to a solid-hued side.</li>\r\n	<li>Signature embroidered pony at the lower right corner of the striped side.</li>\r\n	<li>Ribbed binding.</li>\r\n	<li>28&quot; L x 32&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(46, 1, 'CREPE SWADDLING BLANKET SET', '<ul>\r\n	<li>Set of three blankets.</li>\r\n	<li>All items: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the bottom right corner.</li>\r\n	<li>47&quot; L x 47&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(47, 1, 'PLUSH BLANKET', '<ul>\r\n	<li>100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Tonal signature embroidered pony at one corner.</li>\r\n	<li>Grosgrain border.</li>\r\n	<li>28&quot; L x 28&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(48, 1, 'RL Bowery Sateen Duvet Cover', '<p>A contrasting border and frame give this 624-thread-count sateen duvet cover a crisp tailored look.</p>\r\n\r\n<ul>\r\n	<li>624-thread-count cotton sateen.</li>\r\n	<li>3&quot; contrasting flange. &frac12;&quot; contrasting frame.</li>\r\n	<li>Concealed buttoned closures.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W.</li>\r\n	<li>King: 96&quot; L x 108&quot; W.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(49, 1, 'Bedford Jacquard Duvet Cover', '<p>With an allover jacquard-woven pattern, this 400-thread-count duvet cover will add subtle texture to your bed and is perfect for mixing and matching.</p>\r\n\r\n<ul>\r\n	<li>400-thread-count cotton jacquard.</li>\r\n	<li>2&quot; flange.</li>\r\n	<li>Concealed buttoned closure.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(50, 1, 'MONACO SATEEN DUVET COVER', '<ul>\r\n	<li>286-thread-count cotton sateen.</li>\r\n	<li>Concealed buttoned closures at the bottom.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W; 2&quot; flange.</li>\r\n	<li>King: 96&quot; L x 108&quot; W; 2&quot; flange.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(51, 1, 'Pink Palmer Sham', '<p>Crafted from luxurious 464-thread-count cotton percale, our menswear-inspired Palmer sham is designed with pink contrast taping.</p>\r\n\r\n<ul>\r\n	<li>2&frac12;&quot; flange with &frac14;&quot; of contrast taping.</li>\r\n	<li>Back envelope closure.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(52, 1, 'RL BEADED DYLAN PILLOW', '<ul>\r\n	<li>Vertical rib-knit design with beading at the front. Solid-colored back.</li>\r\n	<li>Concealed zipper at the bottom.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>15&quot; L x 20&quot; W. Shell: 70% wool; 30% cashmere. Insert: 95% feathers; 5% down blend. Dry clean. Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(53, 1, 'GREAT BASIN THROW PILLOW', '<ul>\r\n	<li>Allover embroidery at the face. Solid silk twill back.</li>\r\n	<li>Concealed zip closure at one side.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>22&quot; L x 22&quot; W. Shell: 100% silk. Insert: 95% feathers; 5% down blend. Dry clean. Made in India.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(54, 1, 'CABLED CASHMERE TRAVEL SET', '<ul>\r\n	<li>Eye mask is lined with contrasting woven cotton and has two elastic straps for a secure fit.</li>\r\n	<li>Rectangular cable-knit throw blanket has ribbed edges.</li>\r\n	<li>Zippered cable-knit bag is lined with coordinating cotton fleece.</li>\r\n	<li>Bag: 15&quot; L x 12&quot; W. Blanket: 32&quot; L x 55&quot; W.</li>\r\n	<li>Cashmere and cotton. Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(55, 1, 'Langdon Embroidered Bathrobe', '<p>This relaxed-fitting unisex bathrobe is tailored from plush Turkish cotton, a durable fiber that becomes softer and more absorbent after each washing. The spa-inspired style is embellished with contrasting embroidery along the shawl collar, placket and cuffs for a classic look. Add a monogram at the left chest for a personal touch.</p>\r\n\r\n<ul>\r\n	<li>Relaxed fit. Shawl collar.</li>\r\n	<li>Long sleeves with turn-back cuffs. Pocket at each hip.</li>\r\n	<li>Self-tie belt at the waist.</li>\r\n	<li>100% Turkish cotton. Machine washable. Imported.</li>\r\n	<li>Small: 47&quot; back body length; 44&quot; chest; 24&quot; sleeve length.</li>\r\n	<li>Medium: 48&quot; back body length; 46&quot; chest; 24&frac12;&quot; sleeve length.</li>\r\n	<li>Large: 49&quot; back body length; 49&quot; chest; 25&frac12;&quot; sleeve length.</li>\r\n	<li>Please note, personalized items are non-returnable. A $5 monogramming charge will be added to the retail price.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(56, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and a 19&quot; back body length.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands.</li>\r\n	<li>Chenille-and-felt &quot;Polo RL Athl.&quot; patch at the left chest. Chain-stitched &quot;RL Athl. Division #5 New York&quot; embroidery at the right chest.</li>\r\n	<li>Chain-stitched &quot;New York 1967 Athletics&quot; embroidery at the center back.</li>\r\n	<li>Tennis tail. &quot;Polo Ralph Lauren MCMLXVII&quot; patch at the front right hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(57, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and an 18&frac12;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar.</li>\r\n	<li>Two-button placket.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(58, 1, 'BANNER COTTON MESH POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; body length.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands. Chenille &quot;67&quot; patch at the right sleeve.</li>\r\n	<li>&quot;Academy PRL Athl.&quot; crackle-print and a &quot;67&quot; shield patch at the center back.</li>\r\n	<li>Even vented hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(59, 1, 'COTTON MESH LONG-SLEEVE POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; front body length, a 25&frac14;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Two-button placket.</li>\r\n	<li>Long sleeves with ribbed cuffs. Twill &quot;3&quot; patch at the right sleeve.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(60, 1, 'PLAID COTTON TWILL WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>&quot;Polo&quot; label at the left pocket.</li>\r\n	<li>Point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(61, 1, 'COTTON OXFORD SPORT SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Back body length and sleeve length are taken from the center back of the neck.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(62, 1, 'COTTON MESH WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac12;&quot; front body length, a 25&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Stenciled &quot;PRL67&quot; printed at the left chest.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(63, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(64, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(65, 1, 'SLIM MOTT-WASH JEAN', '<ul>\r\n	<li>Belted waistband. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling.</li>\r\n	<li>Fading down the leg with creased markings at the thigh and the knee.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n	<li>Belt is not included.</li>\r\n	<li>Size 12 has an average inseam of 27&frac12;&quot;.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(66, 1, 'ELDRIDGE STRETCH SKINNY JEAN', '<ul>\r\n	<li>99% cotton, 1% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Skinny Fit.</li>\r\n	<li>Size 12 has a 7&frac14;&quot; rise, a 26&frac12;&quot; inseam, and a 12&frac14;&quot; leg opening.</li>\r\n	<li>Belt loops. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling with signature metal rivets.</li>\r\n	<li>&quot;Polo&quot; label at the right coin pocket.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot; faux-suede patch at the back right waist.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(67, 1, 'POLO I WOOL TWILL SUIT', '<ul>\r\n	<li>Jacket features notched lapels, a two-button silhouette and long sleeves with a four-button detail at each cuff.</li>\r\n	<li>Jacket also features an angled welt pocket at the left chest, interior besom pockets at the left and right chest, flapped besom pockets at the waist and a vented back hem. Jacket is fully lined.</li>\r\n	<li>Trouser features belt loops, a zip fly with a hook-and-bar closure, a finished waistband with interior suspender buttons and a flat front.</li>\r\n	<li>Trouser also features side on-seam pockets, a button-and-loop besom pocket at the back left and a buttoned besom pocket at the back right. Unfinished hems ready for custom-tailoring.</li>\r\n	<li>Jacket and trouser: 100% wool. Jacket lining: 100% viscose. Dry clean. Made in Italy.</li>\r\n	<li>Update this classic style with a bold bow tie and cool sneakers.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(68, 1, 'BELTED STRETCH COTTON CHINO', '<ul>\r\n	<li>Pant: 98% cotton, 2% elastane. Belt: 100% viscose.</li>\r\n	<li>Pant: machine washable.</li>\r\n	<li>Pant: Size 12 has a 7&frac14;&quot; rise, a 27&frac12;&quot; inseam, and a 12&frac34;&quot; leg-opening circumference.</li>\r\n	<li>Belt: 1&frac14;&quot; wide.</li>\r\n	<li>Pant: belt loops; zip fly with a buttoned closure; side on-seam pockets; coin pocket; two back buttoned pockets; &quot;Polo&quot; label at the back right pocket.</li>\r\n	<li>Belt: silver-tone double-D-ring closure.</li>\r\n	<li>Imported.</li>\r\n	<li>Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(69, 1, 'BATTEN CANVAS EZ BOAT SHOE', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Slip-on styling with a hook-and-loop strap closure.</li>\r\n	<li>Deck-shoe laces thread through metal grommets at the sides.</li>\r\n	<li>Rubber \\\"Polo\\\" tag at the outer side and the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Signature embroidered pony at the strap.</li>\r\n	<li>Cotton.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(70, 1, 'PROPELL II SNEAKER', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Hook-and-loop strap closure at the vamp.</li>\r\n	<li>&quot;Polo&quot; printed at the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Printed signature pony at the strap.</li>\r\n	<li>Man-made materials.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(107, 1, 'Laddu', '<p>Laddu</p>', '', 0, '', 0, 0, '', 0, 0),
(108, 1, 'Gulab Jamun', '<p>Gulab Jamun</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(109, 1, 'Kalakand', '', '', 0, NULL, 0, 0, NULL, 0, 0),
(110, 1, 'Idly Karam', '<p>Idly Karam</p>', '', 0, '', 0, 0, '', 0, 0),
(111, 1, 'Kandi Podi', '<p>Kandi Podi</p>', '', 0, '', 0, 0, '', 0, 0),
(112, 1, 'Mango Pickle', '<p>Mango Pickle</p>', '', 0, '', 0, 0, '', 0, 0),
(113, 1, 'Tomato Pickle', '<p>Tomato Pickle</p>', '', 0, NULL, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(16, 'Frame Shape');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(100) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(19, 1, 'Size', 16);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`) VALUES
(182, 16, 'Aviator'),
(183, 16, 'Butterfly'),
(184, 16, 'Rectangle'),
(185, 16, 'Wayfarer'),
(201, 16, '250 Grms'),
(202, 16, '500 Grms');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(100) NOT NULL,
  `language_id` int(100) NOT NULL,
  `options_values_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(69, 1, '1 Kg', 182),
(70, 1, '100 Grms', 183),
(71, 1, 'Packets', 184),
(72, 1, 'Litres', 185),
(89, 1, '500 Grms', 202),
(88, 1, '250 Grms', 201);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(100) NOT NULL,
  `weight_from` varchar(100) DEFAULT NULL,
  `weight_to` varchar(100) DEFAULT NULL,
  `weight_price` int(100) NOT NULL,
  `unit_id` int(100) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '20', 10, 1, 1),
(2, '21', '40', 20, 1, 1),
(3, '41', '60', 30, 1, 1),
(4, '61', '80', 40, 1, 1),
(5, '81', '100000', 50, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(1, 1),
(1, 7),
(2, 1),
(2, 7),
(4, 1),
(4, 7),
(5, 1),
(5, 7),
(6, 1),
(6, 7),
(7, 1),
(7, 8),
(8, 1),
(8, 8),
(9, 1),
(9, 8),
(10, 1),
(10, 8),
(11, 1),
(11, 9),
(12, 1),
(12, 9),
(13, 1),
(13, 9),
(14, 1),
(14, 10),
(15, 1),
(15, 10),
(16, 1),
(16, 10),
(17, 1),
(17, 10),
(18, 1),
(18, 10),
(19, 1),
(19, 10),
(20, 1),
(20, 11),
(21, 1),
(21, 11),
(22, 1),
(22, 11),
(23, 1),
(23, 11),
(24, 2),
(24, 12),
(25, 2),
(25, 12),
(26, 2),
(26, 12),
(27, 2),
(27, 12),
(28, 2),
(28, 13),
(29, 2),
(29, 13),
(30, 2),
(30, 13),
(31, 2),
(31, 14),
(32, 2),
(32, 14),
(33, 2),
(33, 14),
(34, 2),
(34, 15),
(35, 2),
(35, 15),
(36, 2),
(36, 15),
(37, 2),
(37, 15),
(38, 5),
(38, 16),
(39, 5),
(39, 16),
(40, 5),
(40, 16),
(41, 5),
(41, 16),
(42, 5),
(42, 17),
(43, 5),
(43, 17),
(44, 5),
(44, 17),
(45, 5),
(45, 18),
(46, 5),
(46, 18),
(47, 5),
(47, 18),
(48, 6),
(48, 19),
(49, 6),
(49, 19),
(50, 6),
(50, 19),
(51, 6),
(51, 19),
(52, 6),
(52, 20),
(53, 6),
(53, 20),
(54, 6),
(54, 20),
(55, 6),
(55, 21),
(56, 3),
(56, 22),
(57, 3),
(57, 22),
(58, 3),
(58, 22),
(59, 3),
(59, 22),
(60, 3),
(60, 23),
(61, 3),
(61, 23),
(62, 3),
(62, 23),
(63, 3),
(63, 23),
(64, 3),
(64, 23),
(65, 3),
(65, 24),
(66, 3),
(66, 24),
(67, 3),
(67, 24),
(68, 3),
(68, 24),
(69, 3),
(69, 25),
(70, 3),
(70, 25),
(107, 37),
(108, 37),
(109, 37),
(110, 41),
(111, 41),
(112, 38),
(113, 38);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_read` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_directory_whitelist`
--

CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'Facebook App ID', '2018-04-26 11:30:00', '2019-07-22 01:20:46'),
(2, 'facebook_secret_id', 'Facebook Secret IDs', '2018-04-26 11:30:00', '2019-07-22 01:20:46'),
(3, 'facebook_login', '0', '2018-04-26 11:30:00', '2019-07-22 01:20:46'),
(4, 'contact_us_email', 'sampradaya@gmail.com', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(5, 'address', 'H.NO:-8-2-269/S/75,  Sagar Society,  Banjara Hills, ', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(6, 'city', 'Hyderabad', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(7, 'state', 'Telangana', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(8, 'zip', '500081', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(9, 'country', 'India', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(10, 'latitude', 'Latitude', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(11, 'longitude', 'Longitude', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(12, 'phone_no', '040 4007 27 27', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(13, 'fcm_android', '', '2018-04-26 11:30:00', '2018-11-18 19:55:39'),
(14, 'fcm_ios', NULL, '2018-04-26 11:30:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 11:30:00', NULL),
(16, 'website_logo', '...', '2018-04-26 11:30:00', '2018-09-03 14:43:42'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 11:30:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-26 11:30:00', '2018-11-18 19:55:39'),
(19, 'app_name', 'Sampradaya', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(20, 'currency_symbol', '₹', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(21, 'new_product_duration', '20', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(22, 'notification_title', 'UKart', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 11:30:00', NULL),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(25, 'footer_button', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(26, 'cart_button', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(27, 'featured_category', NULL, '2018-04-26 11:30:00', NULL),
(28, 'notification_duration', 'year', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(29, 'home_style', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(30, 'wish_list_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(31, 'edit_profile_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(32, 'shipping_address_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(33, 'my_orders_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(34, 'contact_us_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(35, 'about_us_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(36, 'news_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(37, 'intro_page', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(38, 'setting_page', '1', '2018-04-26 11:30:00', NULL),
(39, 'share_app', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(40, 'rate_app', '1', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(41, 'site_url', 'URL', '2018-04-26 11:30:00', '2019-08-01 01:31:26'),
(42, 'admob', '0', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(43, 'admob_id', 'ID', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(46, 'category_style', '4', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(47, 'package_name', 'com.ukart.ionic', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(48, 'google_analytic_id', 'test', '2018-04-26 11:30:00', '2018-11-22 18:46:41'),
(49, 'themes', 'themeone', '2018-04-26 11:30:00', NULL),
(50, 'company_name', 'NEXT PAGE', '2018-04-26 11:30:00', NULL),
(51, 'facebook_url', '#f', '2018-04-26 11:30:00', '2019-08-27 12:16:24'),
(52, 'google_url', '#f', '2018-04-26 11:30:00', '2019-08-27 12:16:24'),
(53, 'twitter_url', '#as', '2018-04-26 11:30:00', '2019-08-27 12:16:24'),
(54, 'linked_in', '#asd', '2018-04-26 11:30:00', '2019-08-27 12:16:24'),
(55, 'default_notification', 'onesignal', '2018-04-26 11:30:00', '2018-11-18 19:55:39'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-26 11:30:00', '2018-11-18 19:55:39'),
(57, 'onesignal_sender_id', '50877237723', '2018-04-26 11:30:00', '2018-11-18 19:55:39'),
(58, 'ios_admob', '1', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 11:30:00', '2018-11-18 19:53:41'),
(62, 'google_login', '0', NULL, '2019-07-22 01:21:07'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '1', NULL, '2018-05-03 14:54:44'),
(68, 'is_desktop_purchased', '0', NULL, '2018-05-03 14:54:44'),
(69, 'consumer_key', '0dbe9a6515637858846620d085', NULL, '2019-07-22 01:28:04'),
(70, 'consumer_secret', '8f49aec41563785884b3570672', NULL, '2019-07-22 01:28:04'),
(71, 'order_email', 'orders@gmail.com', NULL, '2019-08-01 01:31:26'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-11-18 19:51:57'),
(74, 'seo_metatag', '', NULL, '2018-11-18 19:51:57'),
(75, 'seo_keyword', '', NULL, '2018-11-18 19:51:57'),
(76, 'seo_description', '', NULL, '2018-11-18 19:51:57'),
(77, 'before_head_tag', '', NULL, '2018-11-18 19:52:15'),
(78, 'end_body_tag', '', NULL, '2018-11-18 19:52:15'),
(79, 'sitename_logo', 'name', NULL, '2019-08-27 12:16:24'),
(80, 'website_name', '<strong>U</strong>KART', NULL, '2019-08-27 12:16:24'),
(81, 'web_home_pages_style', 'two', NULL, '2019-08-27 12:16:24'),
(82, 'web_color_style', 'app', NULL, '2019-08-27 12:16:24'),
(83, 'free_shipping_limit', '400', NULL, '2019-08-01 01:31:26'),
(84, 'app_icon_image', 'icon', NULL, '2018-11-22 18:46:41'),
(85, '_token', '1HVQCH33c97ISdBI2A72b4mWf3K6FaVdTRYLhG3b', NULL, '2019-08-27 12:16:24'),
(86, 'oldImage', '...', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_labels` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{\"nextDayAir\":\"Next Day Air\",\"secondDayAir\":\"2nd Day Air\",\"ground\":\"Ground\",\"threeDaySelect\":\"3 Day Select\",\"nextDayAirSaver\":\"Next Day AirSaver\",\"nextDayAirEarlyAM\":\"Next Day Air Early A.M.\",\"secondndDayAirAM\":\"2nd Day Air A.M.\"}'),
(13, 'Shipping Price', 1, 'shipping_by_weight', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(100) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 1, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(255) NOT NULL,
  `sliders_image` varchar(255) NOT NULL,
  `sliders_group` varchar(64) NOT NULL,
  `sliders_html_text` mediumtext NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(64) NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'Slider-1', '', 'resources/assets/images/banner_images/1568805872.banner-1.jpg', '', '', '2019-12-28 00:00:00', '2019-09-18 11:25:24', 1, 'special', '2019-09-18 11:25:24', 1),
(3, 'Slider-3', '', 'resources/assets/images/banner_images/1568805883.banner-2.jpg', '', '', '2029-01-01 00:00:00', '2019-09-18 11:24:43', 1, 'special', '2019-09-18 11:24:43', 1),
(6, 'Slider-4', 'tomato-pickle', 'resources/assets/images/banner_images/1568805892.banner-3.jpg', '', '', '2029-01-01 00:00:00', '2019-09-18 11:24:52', 1, 'product', '2019-09-18 11:24:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(100) NOT NULL,
  `specials_last_modified` int(100) NOT NULL,
  `expires_date` int(100) NOT NULL,
  `date_status_change` int(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 25, '150.00', 1502195102, 1542632897, 1667174400, 1542632897, 0),
(2, 39, '27.85', 1502264917, 1542630111, 1640995200, 1542630111, 0),
(3, 43, '21.99', 1502268005, 1542629989, 1640995200, 1542629989, 0),
(4, 44, '23.55', 1502268706, 1542629964, 1640995200, 1542629964, 0),
(5, 48, '450.00', 1502274870, 1542629473, 1640995200, 1542629473, 0),
(6, 62, '22.20', 1502351882, 1542628907, 1659398400, 1542628907, 0),
(7, 65, '23.50', 1502353123, 1542628792, 1646092800, 1542628792, 0),
(8, 67, '445.00', 1502362089, 1542628719, 1640995200, 1542628719, 0),
(9, 70, '23.99', 1502363119, 1542616743, 1640995200, 1542616743, 0),
(15, 70, '23.99', 1530891969, 1542616743, 1640995200, 1542616743, 0),
(16, 67, '445.00', 1530891985, 1542628719, 1640995200, 1542628719, 0),
(17, 65, '23.50', 1530891995, 1542628792, 1646092800, 1542628792, 0),
(19, 62, '22.20', 1530892080, 1542628907, 1659398400, 1542628907, 0),
(20, 48, '450.00', 1530892200, 1542629473, 1640995200, 1542629473, 0),
(21, 44, '23.55', 1530892229, 1542629964, 1640995200, 1542629964, 0),
(22, 43, '21.99', 1530892260, 1542629989, 1640995200, 1542629989, 0),
(23, 39, '27.85', 1530892284, 1542630111, 1640995200, 1542630111, 0),
(24, 25, '150.00', 1530892400, 1542632897, 1667174400, 1542632897, 0),
(39, 70, '23.99', 1542616743, 0, 1640995200, 0, 1),
(40, 67, '445.00', 1542628719, 0, 1640995200, 0, 1),
(41, 65, '23.50', 1542628792, 0, 1646092800, 0, 1),
(42, 62, '22.20', 1542628907, 0, 1659398400, 0, 1),
(43, 48, '450.00', 1542629473, 0, 1640995200, 0, 1),
(44, 44, '23.55', 1542629964, 0, 1640995200, 0, 1),
(45, 43, '21.99', 1542629989, 0, 1640995200, 0, 1),
(46, 39, '27.85', 1542630111, 0, 1640995200, 0, 1),
(47, 25, '150.00', 1542632897, 0, 1667174400, 0, 1),
(68, 109, '135.00', 1567059668, 1567059696, 1567209600, 1567059696, 0),
(69, 109, '135.00', 1567059696, 0, 1567209600, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Sale Tax', 'This tax apply on products related to USA item.', NULL, '2017-08-07 07:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT 1,
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 43, 1, 1, '7.00', '', NULL, '2017-08-07 07:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(100) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `languages_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `date_added`, `last_modified`, `is_active`, `languages_id`) VALUES
(1, 'Gram', NULL, NULL, 1, 0),
(2, 'Kilogram', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(100) NOT NULL,
  `pickup_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDisplayCal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rememberToken` int(100) NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(1, 'Helo Testing', '', '', '2019-07-08 12:', '', ''),
(2, 'Nasir Ali', '', '', '2018-11-13 14:', '', ''),
(3, 'hassan mehboob', '', '', '2018-11-23 13:', '', ''),
(4, 'Hassan Mehboob', '', '', '2017-12-13 05:', '', ''),
(5, 'Heggd Hdggd', '', '', '2017-10-25 06:', '', ''),
(8, 'Rosemond Faustin', '', '', '2018-04-05 23:', '', ''),
(10, 'nasir ali', '', '', '2018-11-13 16:', '', ''),
(11, 'Manohar Veera', '', '', '2017-10-14 05:', '', ''),
(13, 'Ali Hassan', '', '', '2018-07-13 14:', '', ''),
(14, 'Hafiz Muneeb', '', '', '2017-10-18 11:', '', ''),
(15, 'Saqib Ali', '', '', '2018-06-01 12:', '', ''),
(16, 'Muzammil Younas', '', '', '2018-06-01 12:', '', ''),
(17, 'Rosemond Faustin', '', '', '2018-06-02 18:', '', ''),
(18, 'Saqib Ali', '', '', '2018-06-04 10:', '', ''),
(21, 'Ruli Setiawan', '', '', '2017-11-01 16:', '', ''),
(22, 'android ecommerce', '', '', '2018-06-20 13:', '', ''),
(23, 'Yazeed Ayyash', '', '', '2017-11-02 19:', '', ''),
(24, 'Abood Ayyash', '', '', '2017-12-16 20:', '', ''),
(29, 'Standard Account', '', '', '2018-07-09 15:', '', ''),
(32, 'Luca Mellano', '', '', '2017-11-29 21:', '', ''),
(34, 'hassan mehboob', '', '', '2018-06-29 13:', '', ''),
(37, 'dfg dfg', '', '', '2017-11-20 14:', '', ''),
(38, 'KISHORE S', '', '', '2018-07-09 15:', '', ''),
(39, 'Amir Hassan', '', '', '2018-07-10 16:', '', ''),
(40, 'Amir Saleem', '', '', '2018-07-09 16:', '', ''),
(41, 'Aseem Kumar', '', '', '2017-11-24 13:', '', ''),
(44, 'Roadsel Roadsel', '', '', '2018-07-18 23:', '', ''),
(45, 'David Moder', '', '', '2018-07-17 13:', '', ''),
(47, 'Saqib Ali', '', '', '2018-07-18 16:', '', ''),
(48, 'hassan mehboob', '', '', '2017-12-11 09:', '', ''),
(49, 'hassan mehboob', '', '', '2017-12-11 10:', '', ''),
(50, 'hassan mehboob', '', '', '2017-12-11 10:', '', ''),
(51, 'H N', '', '', '2017-12-11 10:', '', ''),
(52, 'hassan mehboob', '', '', '2017-12-11 15:', '', ''),
(53, 'Muhammad Muzammel', '', '', '2017-12-12 08:', '', ''),
(55, 'معصوم محمود', '', '', '2017-12-18 07:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_recorder`
--
ALTER TABLE `action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Indexes for table `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`myid`),
  ADD UNIQUE KEY `administrators_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Indexes for table `admin_types`
--
ALTER TABLE `admin_types`
  ADD PRIMARY KEY (`admin_type_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies_id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD KEY `idx_customers_email_address` (`email`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  ADD PRIMARY KEY (`fedex_id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`),
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payments_setting`
--
ALTER TABLE `payments_setting`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`products_options_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Indexes for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_recorder`
--
ALTER TABLE `action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `myid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_types`
--
ALTER TABLE `admin_types`
  MODIFY `admin_type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2801;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  MODIFY `fedex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1521;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_description`
--
ALTER TABLE `news_description`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payments_setting`
--
ALTER TABLE `payments_setting`
  MODIFY `payments_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
