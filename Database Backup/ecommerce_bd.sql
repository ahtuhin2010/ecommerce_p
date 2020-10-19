-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2020 at 10:05 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham', 1, 1, '2020-09-29 07:33:43', '2020-09-29 08:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Sailor', 1, NULL, '2020-09-30 15:56:02', '2020-09-30 15:56:02'),
(7, 'Casio', 1, NULL, '2020-09-30 15:56:37', '2020-09-30 15:56:37'),
(8, 'Apple', 1, 1, '2020-09-30 15:56:48', '2020-09-30 15:57:10'),
(9, 'Samsung', 1, NULL, '2020-09-30 15:57:41', '2020-09-30 15:57:41'),
(10, 'Xiaomi', 1, NULL, '2020-09-30 15:58:08', '2020-09-30 15:58:08'),
(11, 'Asus', 1, NULL, '2020-09-30 15:58:28', '2020-09-30 15:58:28'),
(12, 'HP', 1, NULL, '2020-09-30 15:59:12', '2020-09-30 15:59:12'),
(13, 'Lenovo', 1, NULL, '2020-09-30 15:59:27', '2020-09-30 15:59:27'),
(14, 'Lotto', 1, NULL, '2020-09-30 15:59:41', '2020-09-30 15:59:41'),
(15, 'Bata', 1, NULL, '2020-09-30 16:03:12', '2020-09-30 16:03:12'),
(16, 'Appex', 1, NULL, '2020-09-30 16:03:26', '2020-09-30 16:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Men', 1, NULL, '2020-09-30 15:53:45', '2020-09-30 15:53:45'),
(10, 'Women', 1, NULL, '2020-09-30 15:53:57', '2020-09-30 15:53:57'),
(11, 'Watch', 1, NULL, '2020-09-30 15:54:06', '2020-09-30 15:54:06'),
(12, 'Mobile', 1, NULL, '2020-09-30 15:54:17', '2020-09-30 15:54:17'),
(13, 'Laptop', 1, NULL, '2020-09-30 15:54:38', '2020-09-30 15:54:38'),
(14, 'Bag', 1, NULL, '2020-09-30 15:54:47', '2020-09-30 15:54:47'),
(15, 'Shoes', 1, NULL, '2020-09-30 15:55:19', '2020-09-30 15:55:19'),
(17, 'Chair', 1, NULL, '2020-10-05 04:43:47', '2020-10-05 04:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 'Black', 1, NULL, '2020-09-30 16:03:58', '2020-09-30 16:03:58'),
(8, 'Blue', 1, NULL, '2020-09-30 16:04:12', '2020-09-30 16:04:12'),
(9, 'White', 1, NULL, '2020-09-30 16:04:20', '2020-09-30 16:04:20'),
(10, 'Grey', 1, NULL, '2020-09-30 16:04:32', '2020-09-30 16:04:32'),
(11, 'Red', 1, NULL, '2020-09-30 16:04:44', '2020-09-30 16:04:44'),
(12, 'Pink', 1, NULL, '2020-09-30 16:04:52', '2020-09-30 16:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `communicates`
--

CREATE TABLE `communicates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communicates`
--

INSERT INTO `communicates` (`id`, `name`, `email`, `mobile`, `address`, `msg`, `created_at`, `updated_at`) VALUES
(3, 'Tuhin', 'ahtuhin.mi@gmail.com', '01923552133', 'Dattapra Savar', 'Helllo', '2020-09-27 08:44:00', '2020-09-27 08:44:00'),
(4, 'Tuhin', 'ahtuhin.mi@gmail.com', '01923552133', 'Dattapra Savar Dahaka', 'hi there', '2020-09-27 08:52:59', '2020-09-27 08:52:59'),
(5, 'Tuhin', 'ahtuhin.mi@gmail.com', '01923552133', 'Dattapra Savar Dahaka - 1216', 'Hello Brother', '2020-09-27 08:54:14', '2020-09-27 08:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `mobile_no`, `email`, `facebook`, `twitter`, `youtube`, `google_plus`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Dattapra, Birulia, Savar, Dhaka - 1216', '01923-552130', 'ahtuhin2010@gmail.com', 'https://www.facebook.com/tuhin7.bd/', 'https://www.twitter.com/tuhin_anisul/', 'https://www.youtube.com/', 'https://www.googleplus.com', 1, 1, '2020-09-29 07:52:03', '2020-09-30 14:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, '202009291344logo.png', 1, NULL, '2020-09-29 07:44:45', '2020-09-29 07:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_09_20_104033_create_sessions_table', 1),
(7, '2020_09_26_113150_create_logos_table', 2),
(8, '2020_09_26_130137_create_sliders_table', 3),
(9, '2020_09_27_081103_create_contacts_table', 4),
(10, '2020_09_27_102705_create_abouts_table', 5),
(11, '2020_09_27_131614_create_communicates_table', 6),
(12, '2020_09_29_143835_create_categories_table', 7),
(13, '2020_09_29_181739_create_brands_table', 8),
(15, '2020_09_29_185404_create_colors_table', 9),
(16, '2020_09_29_191856_create_sizes_table', 10),
(17, '2020_09_29_200843_create_products_table', 11),
(18, '2020_09_29_200925_create_product_sizes_table', 11),
(19, '2020_09_29_201017_create_product_colors_table', 11),
(20, '2020_09_29_201116_create_product_sub_images_table', 11),
(21, '2020_10_07_122148_create_shippings_table', 12),
(22, '2020_10_07_122335_create_payments_table', 12),
(23, '2020_10_07_122604_create_orders_table', 12),
(24, '2020_10_07_122818_create_oder_details_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `oder_details`
--

CREATE TABLE `oder_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oder_details`
--

INSERT INTO `oder_details` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 31, 7, 31, 1, '2020-10-07 12:09:07', '2020-10-07 12:09:07'),
(2, 2, 30, 7, 30, 2, '2020-10-07 13:58:01', '2020-10-07 13:58:01'),
(3, 3, 19, 7, 14, 1, '2020-10-07 14:38:33', '2020-10-07 14:38:33'),
(4, 4, 19, 7, 14, 1, '2020-10-07 14:57:46', '2020-10-07 14:57:46'),
(5, 5, 26, 7, 42, 1, '2020-10-08 04:23:51', '2020-10-08 04:23:51'),
(6, 5, 17, 7, 15, 2, '2020-10-08 04:23:51', '2020-10-08 04:23:51'),
(7, 6, 20, 7, 18, 1, '2020-10-08 07:34:18', '2020-10-08 07:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_id=customer_id',
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `order_total` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending and 1=approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_id`, `payment_id`, `order_no`, `order_total`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 7, 1, 1500, 0, '2020-10-07 12:09:07', '2020-10-07 12:09:07'),
(2, 7, 3, 8, 2, 16000, 1, '2020-10-07 13:58:01', '2020-10-07 13:58:01'),
(3, 7, 3, 9, 3, 15000, 1, '2020-10-07 14:38:33', '2020-10-08 07:19:31'),
(4, 7, 4, 10, 4, 15000, 1, '2020-10-07 14:57:46', '2020-10-08 07:25:33'),
(5, 9, 5, 11, 5, 162000, 1, '2020-10-08 04:23:51', '2020-10-08 07:18:52'),
(6, 7, 6, 12, 6, 99900, 1, '2020-10-08 07:34:18', '2020-10-08 07:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method`, `transaction_no`, `created_at`, `updated_at`) VALUES
(7, 'Hand Cash', NULL, '2020-10-07 12:09:07', '2020-10-07 12:09:07'),
(8, 'Hand Cash', NULL, '2020-10-07 13:58:01', '2020-10-07 13:58:01'),
(9, 'Bkash', '8585885', '2020-10-07 14:38:33', '2020-10-07 14:38:33'),
(10, 'Hand Cash', NULL, '2020-10-07 14:57:46', '2020-10-07 14:57:46'),
(11, 'Hand Cash', NULL, '2020-10-08 04:23:51', '2020-10-08 04:23:51'),
(12, 'Hand Cash', NULL, '2020-10-08 07:34:18', '2020-10-08 07:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `short_desc`, `long_desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 10, 6, 'Esprit Ruffle Shirt', 'esprit-ruffle-shirt', 200, 'Outer fabric: 100% Viscose ( LENZING™ ECOVERO™)\r\nThe model is 1,75 m tall and wears size S', 'This blouse made of LENZING™ ECOVERO™ viscose with batwing sleeves boasts simple, feminine and sustainable qualities.\r\nFlowing woven fabric with a silky texture made of LENZING™ ECOVERO™ viscose\r\nLENZING™ ECOVERO™: viscose fibres that have been obtained from sustainable wood and pulp and come from certified and controlled sources\r\nRound neckline\r\nBatwing sleeves with ribbed cuffs\r\nStraight, figure-skimming cut\r\nSIZE INFO\r\nWith size M (can vary slightly depending on the size):\r\nBack length: Approx. 65 cm\r\nSleeve length: Approx. 57 cm (including shoulders)\r\nMATERIAL AND CARE\r\nOuter fabric: 100% Viscose ( LENZING™ ECOVERO™)', '202010011206product-01.jpg', '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(2, 10, 6, 'Herschel supply', 'herschel-supply', 1250, 'Outer fabric: 100% Cotton (organic)\r\nThe model is 1,76 m tall and wears size 36', 'This poplin blouse with a rounded high-low hem and a classic shirt collar can be worn to the office for a smart look or casually with skinny jeans.\r\nThis poplin blouse with a rounded high-low hem and a classic shirt collar can be worn to the office for a smart look or casually with skinny jeans.\r\nSmooth poplin made of 100% organic cotton\r\nOrganic cotton: cotton organically cultivated in a controlled setting\r\nClassic shirt collar\r\nButton-through at the centre front\r\nStraight cut\r\nIntegrated back pleat\r\nRounded high-low hem with side slits\r\nLong sleeves with button-fastening cuffs\r\nSIZE INFO\r\nWith size 36 (can vary slightly depending on the size):\r\nBack length: Approx. 65 cm\r\nSleeve length: Approx. 64 cm\r\nMATERIAL AND CARE\r\nOuter fabric: 100% Cotton (organic)', '202010011209product-02.jpg', '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(3, 9, 6, 'Only Check Trouser', 'only-check-trouser', 700, 'Men Regular Fit Solid Casual Shirt', 'Blue solid casual shirt, has a mandarin collar, long sleeves, button placket, curved hem, and 1 patch pocket\r\n\r\nSize & Fit\r\nRegular Fit\r\nThe model (height 6\') is wearing a size 40\r\n\r\nMaterial & Care\r\n100% cotton\r\nMachine Wash', '202010011215product-03.jpg', '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(4, 10, 6, 'Classic Trench Coat', 'classic-trench-coat', 3500, 'Classic Trench Coats You\'ll Wear Forever', 'You can\'t beat a classic trench coat, the ultimate between-seasons outerwear. Whether you\'re huddling against the bitter frost, in a cashmere roll neck and Prada tractor-tread boots and want some military-inspired outerwear to keep your cosy outfit on the professional side, or whether you\'re throwing something more lightweight over a floral dress and heels as cold begins to fade and Spring/Summer is setting in, trench coats are a catch-all solution. They\'re the ultimate in transitional outerwear, that\'s for sure.\r\n\r\nFrom classic, camel coloured trench coats, through to navy trench coats, we\'ve rounded up some of the best trench coats for women here:', '202010011220product-04.jpg', '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(5, 10, 6, 'Front Pocket Jumper', 'front-pocket-jumper', 2500, 'ManxiVoo Women Front Pocket Hoodie Casual Drawstring Front Pocket Jumper', 'This is an olive green thrifted dress\r\nModest when sleeves added\r\n\r\nHas front pocket with zipper\r\nSteaps attache at the back with buttons.\r\n\r\nHas a back zipper to get in and out of it\r\n\r\nSlit in the back plus darts dive a nice silhouette.\r\n\r\n100% cotton', '202010011225product-05.jpg', '2020-10-01 06:25:56', '2020-10-01 06:31:05'),
(6, 10, 6, 'Shirt in Stretch Cotton', 'shirt-in-stretch-cotton', 1890, 'Outer fabric: 100% Cotton (organic)\r\nThe model is 1,76 m tall and wears size 36', 'This poplin blouse with a rounded high-low hem and a classic shirt collar can be worn to the office for a smart look or casually with skinny jeans.\r\nSmooth poplin made of 100% organic cotton\r\nOrganic cotton: cotton organically cultivated in a controlled setting\r\nClassic shirt collar\r\nButton-through at the centre front\r\nStraight cut\r\nIntegrated back pleat\r\nRounded high-low hem with side slits\r\nLong sleeves with button-fastening cuffs\r\nSIZE INFO\r\nWith size 36 (can vary slightly depending on the size):\r\nBack length: Approx. 65 cm\r\nSleeve length: Approx. 64 cm\r\nMATERIAL AND CARE\r\nOuter fabric: 100% Cotton (organic)', '202010011230product-07.jpg', '2020-10-01 06:30:30', '2020-10-01 06:31:15'),
(7, 10, 6, 'Femme T-Shirt In Stripe', 'femme-t-shirt-in-stripe', 350, 'Outer fabric: 100% Viscose ( LENZING™ ECOVERO™)\r\nThe model is 1,75 m tall and wears size S', 'This blouse made of LENZING™ ECOVERO™ viscose with batwing sleeves boasts simple, feminine and sustainable qualities.\r\nFlowing woven fabric with a silky texture made of LENZING™ ECOVERO™ viscose\r\nLENZING™ ECOVERO™: viscose fibres that have been obtained from sustainable wood and pulp and come from certified and controlled sources\r\nRound neckline\r\nBatwing sleeves with ribbed cuffs\r\nStraight, figure-skimming cut\r\nSIZE INFO\r\nWith size M (can vary slightly depending on the size):\r\nBack length: Approx. 65 cm\r\nSleeve length: Approx. 57 cm (including shoulders)\r\nMATERIAL AND CARE\r\nOuter fabric: 100% Viscose ( LENZING™ ECOVERO™)', '202010011233product-10.jpg', '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(8, 9, 6, 'Short Sleeve Shirt', 'short-sleeve-shirt', 1550, 'Men\'s Lived-In Stretch Oxford Short Sleeve Shirt', 'The classic, one-and-done.\r\nSoft & super wearable.\r\nSmooth, stretch oxford weave.\r\nShort sleeves.\r\nButton collar, button front.\r\nPatch pocket at chest.\r\nCurved shirttail hem.\r\nAvailable in Standard and Slim fit.', '2020100112391.jpg', '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(9, 9, 6, 'Stretch Oxford Shirts', 'stretch-oxford-shirts', 2245, 'Men Navy Solid Casual Lived-In Stretch Oxford Shirt', 'The classic, one-and-done.\r\nSoft & super wearable.\r\nSmooth oxford weave with stretch.\r\nLong sleeves with button cuffs.\r\nButton collar, button front.\r\nChest patch pocket.\r\nCurved shirt tail.\r\nAssorted allover patterns.\r\nAvailable in Standard and Slim fit.', '2020100112434.webp', '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(10, 9, 6, 'Stretch Shirt', 'stretch-shirt', 1990, 'Men\'s Lived-In Stretch Oxford Shirt', 'The classic, one-and-done\r\nSoft & super wearable\r\nSmooth oxford weave with stretch\r\nLong sleeves with button cuffs\r\nButton collar\r\nButton front\r\nChest patch pocket\r\nCurved shirttail', '2020100112475.jpg', '2020-10-01 06:47:22', '2020-10-01 06:47:22'),
(11, 9, 6, 'Stretch Formal Shirt', 'stretch-formal-shirt', 2450, 'Men Navy Blue Slim Fit Solid Stretch Formal Shirt', 'Navy Blue solid formal shirt, has a spread collar, long sleeves, button placket, and curved hem', '2020100112496.jpg', '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(12, 11, 7, 'PAG240B-2', 'pag240b-2', 20000, 'Constantly evolving and improving the PRO TREK lineup, Casio introduces the PAG240B-2, a welcome upgrade to the legendary PAG40. Black/blue resin/cloth band watch with neutral digital face.', 'Tough Solar Power\r\nTriple Sensor (Altimeter/Barometer, Thermometer, Digital Compass)\r\nSunrise & Sunset Data\r\nWorld Time (48 cities)\r\nTough Solar Power\r\nDigital Compass Measures and displays direction as one of 16 points Measuring range: 0 to 359 degrees Measuring unit: 1 degree\r\nAltimeter Measuring range: -700 to 10,000m (-2,300 to 32,800ft) Measuring unit: 5m (20ft) Auto memory measurements Altimeter Memory Manual memory measurements (up to 25 records, each including altitude, date, time) Auto memory measurements (High altitude, Low altitude memory, Total ascent, Total descent) Others: Reference altitude setting, Altitude graph, Altitude differential\r\nBarometer Display range: 260 to 1,100 hPa (7.65 to 32.45 inHg) Display unit: 1 hPa (0.05 inHg) Atmospheric pressure tendency graph Atmospheric pressure differential graphic\r\nThermometer Display range: -10 to 60 C (14 to 140 F) Display unit: 0.1 C (0.2 F) Sunrise/Sunset Data Displays sunrise time and sunset time for a specific date, Daylight pointers\r\n100M Water Resistant\r\nLow Temperature Resistant (-10 C / 14 F)\r\nFull Auto EL Backlight with Afterglow\r\nDuplex LCD\r\nWorld Time\r\n31 times zones (48 cities), city code display, daylight saving on/off\r\n5 Daily Alarms\r\nHourly Time Signal\r\n1/100 second stopwatch Measuring capacity: 23:59\'59.99\" Measuring modes: Elapsed time, split time, 1st-2nd place times\r\nFull Auto Calendar (pre-programmed until the year 2099)\r\nCountdown Timer Measuring unit: 1 second Countdown start time setting range: 1 minute to 24 hours (1-minute increments and 1-hour increments)\r\n12/24 Hour Formats\r\nButton operation tone on/off\r\nAccuracy: +/-15 seconds per month\r\nStorage Battery: Solar Rechargeable Battery\r\nBattery Power Indicator\r\nPower Saving Function\r\nApprox. battery life: 6 months on full charge (without further exposure to light)\r\nModule 3246', '202010011258PAG240-1_small.png', '2020-10-01 06:58:25', '2020-10-01 06:58:25'),
(13, 11, 7, 'PRG600YB-2', 'prg600yb-2', 28500, 'PRO TREK has a new edition to the lineup of triple sensor models. The PRG600YB-2 model feature big Arabic numeral hour markers along with bold stainless steel bezels and a navy cloth band. This high-contrast simple design makes it perfect for daily use in addition to outdoor wear. An STN LCD enhances readability. Movable lug components add to a better fit and more comfort. Other features include Triple Sensor (bearing, altitude/barometric pressure, temperature), one-touch measurement button, Tough Solar, and more. This model packs a highly fashionable design with plenty of high-performance features.', 'Hand shift feature (manual or auto (during altitude, barometric pressure, and temperature measurement hands move away from digital display window)\r\nFull Auto Double LED Light with Afterglow (selectable illumination duration 1.5 or 3 seconds)\r\nNeo-Brite Luminous Hands & Markers\r\nWorld Time\r\n29 time zones (29 cities + UTC), city name display, one-touch UTC TIme Zone access, daylight saving on/off, Home city/World time city swapping\r\n5 Daily Alarms\r\nHourly Time Signal\r\n1/100 Second Stopwatch\r\nMeasuring capacity: 23:59\'59.99\"\r\nMeasuring modes: Elapsed time, split time, 1st-2nd place times\r\nCountdown Timer\r\nMeasuring unit: 1 second\r\nCountdown range: 60 minutes\r\nCountdown start time setting range: 1 minute to 60 minutes (1-minute increments)\r\nFull Auto Calendar (Pre-programmed until the year 2099)\r\n12/24 Hour Formats\r\nAtmospheric pressure change alarm & indicator (arrow\r\nButton operation tone on/off\r\nAccuracy: ± 15 seconds per month\r\nStorage Battery: Solar Rechargeable Battery\r\nBattery Level Indicator\r\nPower Saving Function\r\nApprox. Battery Life: 7 months on full charge (without further exposure to light)\r\nModule 5497Size of case/total weight\r\nPRW600Y 51.6 x 51.5 x 13.4mm / 78g (durasoft silicone band)\r\nPRW600YB 51.6 x 51.5 x 13.4mm / 67g (cloth band)', '202010011300PRG600YB-2_large.png', '2020-10-01 07:00:39', '2020-10-01 07:00:39'),
(14, 11, 10, 'Amazfit Bip', 'amazfit-bip', 5000, 'Up to 45-day battery life | GPS+GLONASS dual-mode positioning\r\nHeart Rate | Light Weight', '1, 2, 3, 8. The data comes from the Huami Science and Technology sports laboratory. The actual use of the watch may vary slightly due to different environment and personal usage habits.\r\n4. IP68 qualities of waterproof and dustproof have passed tests of the third-party professional organization . Report No.: SHES170500407001. The watch can withstand submersion into fresh water of 1.5 meters for up to 30 minutes, but should not be worn during swimming or bathing.\r\n5. The data is from the Midong Big Data Analysis Team of Huami Science and Technology\r\n6. The wristband material of this product has passed the biocompatibility test, but it does not rule out that individual users may have skin discomfort or allergies after wearing the device due to their special constitution. Remove the device once you notice redness or irritation on the wrist skin. If the symptoms have not been alleviated after 2-3 days after removing the device, please contact a dermatologist. In the daily use, please regularly clean the wristband with water and be careful not to wear it too tightly to keep the wristband position dry.\r\n7. Air pressure sensor reflects changes in altitude.', '20201001130411.jpg', '2020-10-01 07:04:00', '2020-10-01 07:06:22'),
(15, 11, 10, 'Mi Smart Band 5', 'mi-smart-band-5', 3000, '11 professional sports modes\r\nThe more you move, the more weight you lose\r\nSupports Yoga, rowing machine, jump rope and more for the first time, accurately monitoring and analyzing every move you make.\r\nMonitors and analyzes your heart rate, pace and calories burned to help you reach your weight loss goals.', '* Approximately 20% increase in display area: The display area of the Mi Smart Band 5 is approximately 20% larger than that of Mi Smart Band 4. Data obtained from Huami Labs.\r\n\r\n* Custom dials: Some dials support the display of custom content, allowing you to display your favorite or most-used features on the dial according to your needs;\r\n\r\n*Up to 50% increase in heart rate monitoring accuracy: Based on comparative tests with the Mi Smart Band 4 that showed increased accuracy for forms of exercise with irregular movements such as cross country running, climbing, hiking and so on. Test data obtained from Huami Labs;\r\n\r\n* 50 m water resistance: The 50 m water resistance is based on standard GB/T 30106-2013 and has been tested by the China National Horological Quality Supervision and Testing Center. Water resistance report numbers: Mi Smart Band 5: QT2003010. The water resistance rating is 5 ATM (equivalent to a depth of 50 m under water), allowing the device to be worn while showering and swimming, but not in saunas or when diving;\r\n\r\n*Personal vitality index: This refers to the band’s Personal Activity Intelligence (PAI) vitality index; a new, innovative system that converts your heart rate data into a personalized score that indicates the level of activity required in order to maintain good health;\r\n\r\n*Conditions for testing Mi Smart Band 5 14-day battery life in normal mode are as follows: fully charged; automatic heart rate monitoring activated for 30 minutes; lift-wrist-to-wake function activated; all other settings set to factory defaults; 100 notifications received and displayed per day; 2 alarms per day, each with 5 seconds of vibration; 100 activations of the lift-wrist-to-wake function; syncing data with the app once per day;\r\n\r\n*Conditions for testing Mi Smart Band 5 20-day battery life in power-saving mode are as follows: fully charged; automatic heart rate monitoring disabled; sleep monitoring disabled; lift-wrist-to-wake function disabled; 100 notifications received and displayed per day; 2 alarms per day, each with 5 seconds of vibration; 10 taps of the touch button per day to display the time; syncing with the app once per day;\r\n\r\n*All battery life test data has been obtained from Huami Labs. Various factors can influence battery life such as settings used, the way the device is operated, environmental conditions and so on, all of which may result in battery life in actual use differing from that found in lab data;\r\n\r\n*All images used are for illustrative purposes solely to demonstrate the functionality of the product and are not fully representative of the product itself.', '20201001130814.webp', '2020-10-01 07:08:48', '2020-10-01 07:08:48'),
(16, 11, 8, 'Apple Watch Series 4', 'apple-watch-series-4', 42000, 'Refurbished Apple Watch Series 4 GPS + Cellular, 44mm Stainless Steel Case with White Sport Band', 'Originally released September 2018\r\n\r\nS4 with 64-bit dual-core processor (Up to 2x faster than S3 processor)\r\n\r\nElectrical heart sensor (ECG app)\r\n\r\nWater resistant to 50 meters1\r\n\r\nLTPO OLED Retina display with Force Touch (1000 nits brightness)\r\n\r\nWi-Fi (802.11b/g/n 2.4GHz)\r\n\r\nBluetooth 5.0\r\n\r\nOptical heart sensor\r\n\r\nImproved accelerometer\r\n\r\nImproved Gyroscope\r\n\r\nAmbient light sensor\r\n\r\nCapacity 16GB2\r\n\r\nAll ceramic and sapphire crystal back', '20201001131515.webp', '2020-10-01 07:15:06', '2020-10-01 07:15:06'),
(17, 12, 8, 'Apple iPhone 11', 'apple-iphone-11', 55000, 'Meet iPhone 11. All-new dual-camera system with Ultra Wide and Night mode. All-day battery. Six new colors. And the A13 Bionic, our fastest chip ever.', 'Apple iPhone 11 is powered by the Apple A13 Bionic processor. The smartphone comes with a 6.1 inches Liquid Retina IPS LCD capacitive touchscreen and 828 x 1792 pixels resolution. The screen of the device is protected by Scratch-resistant glass and oleophobic coating.\r\n\r\nThe rear camera consists of a 12 MP (wide) + 12 MP (ultrawide) lenses.\r\n\r\nThe front camera has a 12 MP + TOF 3D camera sensor. The phone’s sensors include Face ID, accelerometer, gyro, proximity, compass, and barometer.\r\n\r\nThe smartphone is fueled by a Non-removable Li-Ion 3110 mAh battery + Fast battery charging 18W: 50% in 30 min + USB Power Delivery 2.0 + Qi wireless charging.\r\n\r\nThe phone runs on iOS 13.\r\n\r\nThe Apple iPhone 11 comes in different colors like, Black, Green, Yellow, Purple, Red, and White. It features 2.0, proprietary reversible connector.', '20201001131918.jpg', '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(18, 12, 10, 'Redmi Note 8', 'redmi-note-8', 18999, '3GB + 32GB at ৳ 17,499\r\n4GB + 64GB at ৳ 18,999\r\n4GB + 128GB at ৳ 20,999', 'Xiaomi Redmi Note 8 is powered by the Qualcomm SDM665 Snapdragon 665 Octa-core (4×2.0 GHz Kryo 260 Gold + 4×1.8 GHz Kryo 260 Silver) processor. The smartphone comes with a 6.3 inches IPS LCD and 1080 x 2340 pixels resolution.\r\n\r\nThe rear camera consists of a 48 MP (wide) + 8 MP (ultrawide) + 2 MP (dedicated macro camera) + 2 MP depth sensor lenses.\r\n\r\nThe front camera has a 13 MP sensor. The phone’s sensors include Fingerprint (rear-mounted), accelerometer, gyro, proximity, and compass.\r\n\r\nThe smartphone is fueled by a Non-removable Li-Po 4000 mAh battery + Fast battery charging 18W.\r\n\r\nThe phone runs on Android 9.0 (Pie) + MIUI 10.\r\n\r\nThe Xiaomi Redmi Note 8 comes in different colors like, Crystal Green and Crystal Blue. It features 2.0, Type-C 1.0 reversible connector, USB On-The-Go.\r\n\r\nFor the latest phones and tablets, check out giztop.com and get best deals, coupons, offers, comparison, reviews and more!', '20201001132521.jpg', '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(19, 12, 10, 'Redmi Note 5 Pro', 'redmi-note-5-pro', 15000, 'Redmi Note 5 Pro Specification: ✓5.99 Inch Full HD+ ✓Bright Display Qualcomm Snapdragon 4GB RAM 64 GB Internal Memory Expandable Up to 128 GB', 'The Xiaomi Redmi Note 5 Pro features a metal chassis and a 5.99-inch, full-HD+ display with Gorilla Glass. The design is a bit plain but the build and finish is good. The display also has very good levels of brightness and colours are nice and punchy. This is the first phone to feature Qualcomm\'s Snapdragon 636 SoC, which offers plenty of power for gaming and heavy apps. You can choose between either 4GB or 6GB of RAM but the storage is the same, at 64GB. Camera performance is also good. The Note 5 Pro features a Portrait mode too for the front and rear camera, which works well. Battery life is also very good, as the phone easily lasts for an entire day on a single charge and fast charging is also supported although you\'ll have to buy a fast charger separately.', '20201001132924.jpg', '2020-10-01 07:29:29', '2020-10-01 07:29:29'),
(20, 12, 9, 'Samsung Galaxy S10 Plus', 'samsung-galaxy-s10-plus', 99900, 'It has 8 GB RAM and 128 GB internal storage. Samsung Galaxy S10 Plus smartphone has a Dynamic AMOLED display.', 'Samsung is allegedly working at the next-gen of its Android Go mobile phone. Named as Samsung Galaxy S10 Plus SD855, the smartphone’s specs have been leaked which leaves a little for assumptions.\r\n\r\nAccording to the leaked pictures, the phone will be available in different color options, Black, White, Green, Blue, and Yellow. The Samsung Galaxy S10 Plus SD855 comes with a big screen with a modern aspect ratio.\r\n\r\nTalking about the specifications, the Samsung Galaxy S10 Plus SD855 is outfitted with a 6.4-inch HD+ Super AMOLED display with a screen 1440 x 2960 pixels resolution alongside 18:9 ratio.\r\n\r\nThe smartphone is controlled by a Qualcomm Adreno 640 processor, which could be like what we have found in Samsung Galaxy S10 Plus SD855.\r\n\r\nIt will be upheld by a 6 GB, 8 GB, and 12 GB, 2133 MHz of RAM along with 128 GB, 512 GB, and 1024 GB of internal storage capacity.\r\n\r\nThe significant highlight of the phone is the operating system. It has Android Oreo, implying that it will deliver with Android 9.0 Pie. The smartphone will be supported by a 4000 mAh battery.\r\n\r\nFor the camera, the Samsung Galaxy S10 Plus SD855 comes with an 8-megapixel rear camera with a f/2.2 gap alongside LED. For the front, there will be a 5-megapixel shooter with LED.', '20201001133426.jpg', '2020-10-01 07:34:14', '2020-10-01 07:34:14'),
(21, 12, 9, 'Samsung Galaxy A50', 'samsung-galaxy-a50', 22990, 'Samsung Galaxy A50 · Display 6.40-inch (1080x2340) · Front Camera 25MP · Rear Camera 25MP + 5MP + 8MP · RAM 4GB · Storage 64GB', 'The Samsung Galaxy A50 looks a lot like the Galaxy M10 and M20, but it has a few premium features such as a 6.4-inch Super AMOLED screen, an in-display fingerprint sensor, and three rear cameras. The back of this phone has a unique iridescent finish that reflects light dramatically in rainbow patterns. Samsung has used its premium Exynos 9610 SoC which is a solid performer for this price segment and supports camera features such as intelligent scene optimisation and 480fps slow-motion video recording. Performance is generally quite good, especially in terms of the display and battery life. The cameras are versatile but there are situations, such as in low light, when the results could have been better. The Galaxy A50 offers a lot of features that people really look for, and is a good all-rounder that might help Samsung fight off its competitors.', '20201001133727.jpg', '2020-10-01 07:37:59', '2020-10-01 07:37:59'),
(22, 13, 11, 'Asus X409JA', 'asus-x409ja', 56000, 'Asus X409JA Core i5 10th Gen 14” FHD Laptop with Windows 10', 'Features\r\nModel: Asus X409JA\r\nIntel Core i5-1035G1 Processor (6M Cache, 1.00 GHz up to 3.60 GHz)\r\n4GB DDR4 2666Mhz RAM\r\n1TB 5400 rpm SATA HDD\r\n14\" FHD (1920X1080)Display', '20201001134229.jpg', '2020-10-01 07:42:27', '2020-10-01 07:42:27'),
(23, 13, 11, 'ASUS ZenBook Flip 14 UX463FL', 'asus-zenbook-flip-14-ux463fl', 105000, 'ASUS ZenBook Flip 14 UX463FL Core i5 10th Gen NVIDIA MX250 Graphics 14 Inch FHD Laptop with Windows 10', 'Features\r\nModel: ASUS ZenBook Flip 14 UX463FL\r\nIntel Core i5-10210U Processor (6M Cache, 1.6 GHz up to 4.2 GHz)\r\n8GB RAM + 512GB SSD\r\nNvidia MX250 2GB Graphics\r\n14.0\"(1920x1080) FHD LED Touchscreen Display', '20201001134431.jpg', '2020-10-01 07:44:56', '2020-10-01 07:44:56'),
(24, 13, 12, 'HP Pavilion x360 14-cd0074TU', 'hp-pavilion-x360-14-cd0074tu', 58000, 'HP Pavilion x360 14-cd0074TU Core i5 8th Gen 14\" HD Touch Laptop', 'Model: HP Pavilion x360 14-cd0074TU\r\nIntel Core i5-8250U Processor (1.6 GHz up to 3.4 GHz)\r\n4GB DDR4\r\n1 TB 5400 rpm SATA\r\nWindows 10', '20201001134734.jpg', '2020-10-01 07:47:04', '2020-10-01 07:47:04'),
(25, 13, 12, 'HP Pavilion 15-DK0259TX', 'hp-pavilion-15-dk0259tx', 93000, 'HP Pavilion 15-DK0259TX Core i5 9th Gen GTX 1650 4GB Graphics 15.6\" Full HD Gaming Laptop with Windows 10', 'Model: HP Pavilion 15-DK0259TX\r\nIntel Core i5-9300H Processor (8MB Cache, 2.4 GHz, up to 4.1 GHz)\r\n8GB RAM + 256GB SSD + 1TB HDD\r\n15.6\" FHD (1920 x 1080) Display\r\nNVIDIA GTX 1650 4GB Graphics', '20201001134935.jpg', '2020-10-01 07:49:54', '2020-10-01 07:49:54'),
(26, 13, 13, 'Lenovo IdeaPad S145-14IWL', 'lenovo-ideapad-s145-14iwl', 52000, 'Lenovo IdeaPad S145-14IWL Core i5 8th Gen 14 Inch Full HD Laptop with Genuine Windows 10', 'Model: Lenovo IdeaPad S145-14IWL\r\nIntel Core i5-8265U (6M Cache, 1.60 GHz up to 3.90 GHz) Processor\r\n4GB DDR4 RAM\r\n1TB HDD\r\n14\" FHD (1920x1080) Display', '20201001135238.jpg', '2020-10-01 07:52:59', '2020-10-01 07:52:59'),
(27, 14, 14, 'North Star Blue Backpack', 'north-star-blue-backpack', 800, 'Lightweight, durable and stylish, this blue backpack from North Star is a smart accessory for every usage and fun outing. Designed with organized zip compartments and twin mesh pockets on sides to hold your essentials safe, this canvas backpack also features adjustable shoulder straps that assure easy grab and comfortable...', 'PRODUCT DETAILS\r\nLightweight, durable and stylish, this blue backpack from North Star is a smart accessory for every usage and fun outing. Designed with organized zip compartments and twin mesh pockets on sides to hold your essentials safe, this canvas backpack also features adjustable shoulder straps that assure easy grab and comfortable carriage.\r\n\r\nFEATURES\r\n-Organised zip compartments\r\n-Twin mesh pockets on sides\r\n-Adjustable shoulder straps\r\n-Brand label tag detailing on the front\r\n-Material: Canvas\r\n-Color: Blue \r\n-Number of Compartments: 1\r\n-Number  of Pockets : 3\r\n-Number of Zips: 2\r\n\r\nSTYLE TIP\r\nCarry these back pack with your casual attire in the office or class.\r\n\r\nDisclaimer: There may be a slight color variation in the image from original product.', '20201001141342.webp', '2020-10-01 08:13:18', '2020-10-01 08:13:18'),
(28, 14, 14, 'Lotto Star Black Backpack', 'lotto-star-black-backpack', 2399, 'Carry your essentials around in style with this black colored backpack from the house of North Star.  Made of Canvas material this backpack for men is high on quality as well as light in weight. The twin padded shoulder straps offer a comfortable and hassle-free portability.', 'Carry your essentials around in style with this black colored backpack from the house of North Star.  Made of Canvas material this backpack for men is high on quality as well as light in weight. The twin padded shoulder straps offer a comfortable and hassle-free portability.\r\n\r\nFEATURES\r\nMaterial: Canvas\r\nColor: Black\r\nNumber of Compartments: 1\r\nNumber  of Pockets : 3\r\nNumber of Zips: 2\r\n\r\nSTYLE TIP\r\nCarry these back pack with your casual attire in the office or class.\r\n\r\nDisclaimer: There may be a slight color variation in the image from original product.', '20201001141543.jpg', '2020-10-01 08:15:34', '2020-10-01 08:15:34'),
(29, 14, 14, 'Lotto Travel Backpack', 'lotto-travel-backpack', 3000, 'Structured perfectly, this red backpack from Power will surely become your trusted partner for the outdoors. It features 1 main zip compartments and to accommodate all essentials in a safe manner. Made of nylon for durability, this backpack has adjustable shoulder straps for carrying comfort.', 'Structured perfectly, this red backpack from Power will surely become your trusted partner for the outdoors. It features 1 main zip compartments and to accommodate all essentials in a safe manner. Made of nylon for durability, this backpack has adjustable shoulder straps for carrying comfort.\r\n\r\nFEATURES\r\n-Organised zip compartments\r\n-Adjustable shoulder straps\r\n-Brand label tag detailing on the front\r\n-Material: Synthetic\r\n-Color: Red \r\n-Number of Compartments: 1\r\n-Number of Zips: 1\r\n\r\nSTYLE TIP\r\nCarry these back pack with your casual attire in the office or class.\r\n\r\nDisclaimer: There may be a slight color variation in the image from original product.', '20201001141845.jpg', '2020-10-01 08:18:19', '2020-10-01 08:18:19'),
(30, 14, 14, 'Lotto Travel Leather Backpack', 'lotto-travel-leather-backpack', 8000, 'Main Features about travel luggage bag:\r\nBasic Information:\r\nOriginal Dimensions: L20.8\"(L24.4\") * D9.8\" * H11.8\"\r\nExtended Dimensions: L24.4\" * D9.8\" * H11.8\"\r\nShoulder strap: 27.6\" - 52.4\"\r\nTop handles: 8.66\" drop\r\nNet weight: about 3.3lb', 'There are three layers of lining which provides strong load-bearing.\r\n* Multiple pockets design makes your good lay in the bag systematically. \r\n* Large Capacity, you can carry all your laptop, A4 books, clothes and other daily necessities, perfect for travelling or gym.\r\n\r\nLarge capacity with 50L.\r\n\r\nThere are 2 zippers on each side used to extend the capacity of the luggage bag, you can extend the bag capacity by unzip these zipper as your need.', '20201001142246.jpg', '2020-10-01 08:22:01', '2020-10-01 08:22:01'),
(31, 15, 15, 'Men Brown Leather Loafers', 'men-brown-leather-loafers', 1500, 'Strut in style, as you make your way to your friend\'s birthday bash wearing these brown loafers from Bata. These loafers are absolutely comfortable owing to its full grain genuine leather upper material and lining, and have a rubber sole that provides durability.', 'Strut in style, as you make your way to your friend\'s birthday bash wearing these brown loafers from Bata. These loafers are absolutely comfortable owing to its full grain genuine leather upper material and lining, and have a rubber sole that provides durability.\r\n\r\nFEATURES\r\nType: Loafers\r\nGender: Men\r\nColour: Brown\r\nClosing: Slip On\r\nUpper Material: Leather\r\nSole: TPR\r\n\r\nSTYLE TIP\r\nThese slip-ons can be teamed up with a pair of trousers or jeans and a shirt to complete your stylish look.', '20201001142747.webp', '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(32, 15, 15, 'Bata Black Formal Shoe', 'bata-black-formal-shoe', 2699, 'Your closet is complete only with a sophisticated pair of formal shoe. These formal shoes for men feature a tightly-stitch closed lacing system which you can wear them to your most formal events.', 'FEATURES:\r\n- Type: Formal Lace-up Shoe\r\n- Gender: Men\r\n- Upper Material: PU\r\n- Color: Black\r\n- Sole: TPR\r\n- Closing: Closed\r\n\r\nSTYLE TIPS: Pair a navy suit with a white shirt which adds a crisp contrast to the suit, while these dress shoes compliment the navy trousers. It\'s a timeless color combination & suits every one regardless of age.', '20201001143049.jpg', '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(33, 15, 15, 'Hush Puppies Men\'s Turner MT Oxford', 'hush-puppies-mens-turner-mt-oxford', 12500, 'As if a classic leather oxford shoe couldn\'t get any more reliable, we went & made it waterproof. Our Turner MT Oxford shoes are crafted in WeatherSMART™ water-repelling leather to keep feet dry no matter the weather. On the inside, the dry mesh lining is also working to keep...', 'As if a classic leather oxford shoe couldn\'t get any more reliable, we went & made it waterproof. Our Turner MT Oxford shoes are crafted in WeatherSMART™ water-repelling leather to keep feet dry no matter the weather. On the inside, the dry mesh lining is also working to keep feet dry all day. Feel the difference of the Bounce™ footbed that provides energy rebound with every step, making long days on your feet easier than ever.\r\n• WeatherSMART™ water-repelling leathers keep feet dry without sacrificing comfort or styles\r\n• BioDeWix™: Dry mesh lining & socklining provides climate control with Nzym™ natural odor prevention\r\n• Bounce™: Soft & resilient removable polyurethane footbed provides energy rebound with every step\r\n• Direct attach construction\r\n• Direct attach polyurethane outsole creates a permanent chemical bond between upper & outsole providing long wearing durability & shock absorbing comfort\r\n\r\nSTYLE TIPS: From the office to date night dinners, these lace-up oxfords have you covered.', '20201001143252.jpg', '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(34, 15, 16, 'VENTURINI Men\'s Lace Up Formal Shoe', 'venturini-mens-lace-up-formal-shoe', 4490, 'Nurture your feet with these edgy slip-on formal shoes.', 'Formal shoe\r\nLace up\r\n\r\nMATERIALS\r\nUpper: Leather\r\nSole: Rubber', '20201001143755.jpeg', '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(35, 15, 16, 'VENTURINI Men\'s Formal Shoe', 'venturini-mens-formal-shoe', 6990, 'VENTURINI', 'Upper Material : Leather\r\nSole : Rubber', '20201001144058.jpeg', '2020-10-01 08:40:18', '2020-10-01 08:40:32'),
(36, 15, 16, 'VENTURINI Men\'s Dress Shoe', 'venturini-mens-dress-shoe', 7000, 'These smooth leather shoe allows you to wear them all day anyway. Pair \'em with a blazer and slim-fit shirt\r\nManufacturer: Venturini', 'Dress shoe\r\nTapered toe\r\n\r\nMATERIALS\r\nUpper: Leather\r\n\r\nSole: Rubber', '20201001144362.jpeg', '2020-10-01 08:43:26', '2020-10-05 04:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(2, 1, 10, '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(3, 2, 7, '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(4, 2, 9, '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(5, 3, 9, '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(6, 3, 12, '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(7, 4, 7, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(8, 4, 9, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(9, 4, 11, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(14, 5, 7, '2020-10-01 06:31:05', '2020-10-01 06:31:05'),
(15, 5, 9, '2020-10-01 06:31:05', '2020-10-01 06:31:05'),
(16, 6, 7, '2020-10-01 06:31:15', '2020-10-01 06:31:15'),
(17, 6, 9, '2020-10-01 06:31:15', '2020-10-01 06:31:15'),
(18, 7, 7, '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(19, 7, 9, '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(20, 8, 7, '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(21, 8, 9, '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(22, 8, 10, '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(23, 9, 8, '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(24, 10, 9, '2020-10-01 06:47:22', '2020-10-01 06:47:22'),
(25, 11, 7, '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(26, 11, 8, '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(27, 12, 7, '2020-10-01 06:58:25', '2020-10-01 06:58:25'),
(28, 12, 9, '2020-10-01 06:58:25', '2020-10-01 06:58:25'),
(29, 13, 8, '2020-10-01 07:00:39', '2020-10-01 07:00:39'),
(34, 15, 7, '2020-10-01 07:08:48', '2020-10-01 07:08:48'),
(35, 14, 7, '2020-10-01 07:12:56', '2020-10-01 07:12:56'),
(36, 14, 10, '2020-10-01 07:12:56', '2020-10-01 07:12:56'),
(37, 16, 7, '2020-10-01 07:15:06', '2020-10-01 07:15:06'),
(38, 17, 7, '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(39, 17, 9, '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(40, 17, 11, '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(41, 18, 7, '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(42, 18, 8, '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(43, 18, 9, '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(44, 19, 7, '2020-10-01 07:29:29', '2020-10-01 07:29:29'),
(45, 19, 9, '2020-10-01 07:29:29', '2020-10-01 07:29:29'),
(46, 20, 7, '2020-10-01 07:34:14', '2020-10-01 07:34:14'),
(47, 20, 8, '2020-10-01 07:34:14', '2020-10-01 07:34:14'),
(48, 21, 7, '2020-10-01 07:37:59', '2020-10-01 07:37:59'),
(49, 21, 8, '2020-10-01 07:37:59', '2020-10-01 07:37:59'),
(50, 21, 9, '2020-10-01 07:37:59', '2020-10-01 07:37:59'),
(51, 22, 7, '2020-10-01 07:42:27', '2020-10-01 07:42:27'),
(52, 22, 9, '2020-10-01 07:42:27', '2020-10-01 07:42:27'),
(53, 23, 7, '2020-10-01 07:44:56', '2020-10-01 07:44:56'),
(54, 24, 7, '2020-10-01 07:47:04', '2020-10-01 07:47:04'),
(55, 24, 9, '2020-10-01 07:47:04', '2020-10-01 07:47:04'),
(56, 25, 7, '2020-10-01 07:49:54', '2020-10-01 07:49:54'),
(57, 25, 9, '2020-10-01 07:49:54', '2020-10-01 07:49:54'),
(58, 26, 7, '2020-10-01 07:52:59', '2020-10-01 07:52:59'),
(59, 27, 8, '2020-10-01 08:13:18', '2020-10-01 08:13:18'),
(60, 28, 7, '2020-10-01 08:15:34', '2020-10-01 08:15:34'),
(61, 28, 8, '2020-10-01 08:15:34', '2020-10-01 08:15:34'),
(62, 29, 7, '2020-10-01 08:18:19', '2020-10-01 08:18:19'),
(63, 30, 7, '2020-10-01 08:22:01', '2020-10-01 08:22:01'),
(64, 31, 7, '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(65, 31, 10, '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(66, 32, 7, '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(67, 33, 7, '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(68, 34, 7, '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(70, 35, 8, '2020-10-01 08:40:32', '2020-10-01 08:40:32'),
(72, 36, 7, '2020-10-05 04:47:20', '2020-10-05 04:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(2, 1, 7, '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(3, 1, 8, '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(4, 1, 9, '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(5, 1, 10, '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(6, 2, 6, '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(7, 2, 7, '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(8, 2, 8, '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(9, 2, 9, '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(10, 2, 10, '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(11, 3, 6, '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(12, 3, 7, '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(13, 3, 8, '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(14, 3, 9, '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(15, 3, 10, '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(16, 4, 6, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(17, 4, 7, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(18, 4, 8, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(19, 4, 9, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(20, 4, 10, '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(29, 5, 6, '2020-10-01 06:31:05', '2020-10-01 06:31:05'),
(30, 5, 7, '2020-10-01 06:31:05', '2020-10-01 06:31:05'),
(31, 5, 8, '2020-10-01 06:31:05', '2020-10-01 06:31:05'),
(32, 5, 9, '2020-10-01 06:31:05', '2020-10-01 06:31:05'),
(33, 5, 10, '2020-10-01 06:31:05', '2020-10-01 06:31:05'),
(34, 6, 7, '2020-10-01 06:31:15', '2020-10-01 06:31:15'),
(35, 6, 8, '2020-10-01 06:31:15', '2020-10-01 06:31:15'),
(36, 6, 9, '2020-10-01 06:31:15', '2020-10-01 06:31:15'),
(37, 7, 6, '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(38, 7, 7, '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(39, 7, 8, '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(40, 7, 9, '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(41, 7, 10, '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(42, 8, 6, '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(43, 8, 7, '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(44, 8, 8, '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(45, 8, 9, '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(46, 9, 7, '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(47, 9, 8, '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(48, 9, 9, '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(49, 10, 7, '2020-10-01 06:47:22', '2020-10-01 06:47:22'),
(50, 10, 8, '2020-10-01 06:47:22', '2020-10-01 06:47:22'),
(51, 11, 7, '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(52, 11, 8, '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(53, 11, 9, '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(54, 12, 13, '2020-10-01 06:58:25', '2020-10-01 06:58:25'),
(55, 13, 13, '2020-10-01 07:00:39', '2020-10-01 07:00:39'),
(58, 15, 11, '2020-10-01 07:08:48', '2020-10-01 07:08:48'),
(59, 14, 36, '2020-10-01 07:12:56', '2020-10-01 07:12:56'),
(60, 16, 41, '2020-10-01 07:15:06', '2020-10-01 07:15:06'),
(61, 17, 15, '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(62, 18, 17, '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(63, 19, 14, '2020-10-01 07:29:29', '2020-10-01 07:29:29'),
(64, 20, 18, '2020-10-01 07:34:14', '2020-10-01 07:34:14'),
(65, 21, 18, '2020-10-01 07:37:59', '2020-10-01 07:37:59'),
(66, 22, 42, '2020-10-01 07:42:27', '2020-10-01 07:42:27'),
(67, 23, 42, '2020-10-01 07:44:56', '2020-10-01 07:44:56'),
(68, 24, 42, '2020-10-01 07:47:04', '2020-10-01 07:47:04'),
(69, 25, 43, '2020-10-01 07:49:54', '2020-10-01 07:49:54'),
(70, 26, 42, '2020-10-01 07:52:59', '2020-10-01 07:52:59'),
(71, 27, 27, '2020-10-01 08:13:18', '2020-10-01 08:13:18'),
(72, 28, 26, '2020-10-01 08:15:34', '2020-10-01 08:15:34'),
(73, 29, 30, '2020-10-01 08:18:19', '2020-10-01 08:18:19'),
(74, 30, 30, '2020-10-01 08:22:01', '2020-10-01 08:22:01'),
(75, 31, 31, '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(76, 31, 32, '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(77, 31, 33, '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(78, 31, 34, '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(79, 31, 35, '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(80, 32, 33, '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(81, 32, 34, '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(82, 32, 35, '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(83, 33, 32, '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(84, 33, 33, '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(85, 33, 35, '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(86, 34, 31, '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(87, 34, 32, '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(88, 34, 33, '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(89, 34, 34, '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(90, 34, 35, '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(94, 35, 31, '2020-10-01 08:40:32', '2020-10-01 08:40:32'),
(95, 35, 33, '2020-10-01 08:40:32', '2020-10-01 08:40:32'),
(96, 35, 34, '2020-10-01 08:40:32', '2020-10-01 08:40:32'),
(102, 36, 31, '2020-10-05 04:47:20', '2020-10-05 04:47:20'),
(103, 36, 32, '2020-10-05 04:47:20', '2020-10-05 04:47:20'),
(104, 36, 33, '2020-10-05 04:47:20', '2020-10-05 04:47:20'),
(105, 36, 34, '2020-10-05 04:47:20', '2020-10-05 04:47:20'),
(106, 36, 35, '2020-10-05 04:47:20', '2020-10-05 04:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_images`
--

CREATE TABLE `product_sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sub_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_images`
--

INSERT INTO `product_sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(1, 1, '202010011206product-01.jpg', '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(2, 1, '202010011206product-13.jpg', '2020-10-01 06:06:58', '2020-10-01 06:06:58'),
(3, 2, '202010011209item-cart-01.jpg', '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(4, 2, '202010011209product-02.jpg', '2020-10-01 06:09:12', '2020-10-01 06:09:12'),
(5, 3, '202010011215Mens-Shirt-Summer-Short-Sleeve-White-Shirts-Men-Casual-Plaid-Camisa-Man-Slim-Fit-Striped-Camisas-3.jpg', '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(6, 3, '202010011215product-03.jpg', '2020-10-01 06:15:47', '2020-10-01 06:15:47'),
(7, 4, '202010011220images (1).jpg', '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(8, 4, '202010011220images (2).jpg', '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(9, 4, '202010011220images.jpg', '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(10, 4, '202010011220product-04.jpg', '2020-10-01 06:20:14', '2020-10-01 06:20:14'),
(11, 5, '20201001122545dff74a57245f0553a4b141bfdfe391.jpg', '2020-10-01 06:25:56', '2020-10-01 06:25:56'),
(12, 5, '202010011225product-05.jpg', '2020-10-01 06:25:56', '2020-10-01 06:25:56'),
(13, 6, '202010011230product-07.jpg', '2020-10-01 06:30:30', '2020-10-01 06:30:30'),
(14, 7, '202010011233product-08.jpg', '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(15, 7, '202010011233product-10.jpg', '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(16, 7, '202010011233product-14.jpg', '2020-10-01 06:33:17', '2020-10-01 06:33:17'),
(17, 8, '2020100112391.jpg', '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(18, 8, '2020100112392.webp', '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(19, 8, '2020100112393.webp', '2020-10-01 06:39:33', '2020-10-01 06:39:33'),
(20, 9, '2020100112434(1).jpg', '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(21, 9, '2020100112434.jpg', '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(22, 9, '2020100112434.webp', '2020-10-01 06:43:36', '2020-10-01 06:43:36'),
(23, 10, '2020100112475.1.jpg', '2020-10-01 06:47:22', '2020-10-01 06:47:22'),
(24, 10, '2020100112475.2.jpg', '2020-10-01 06:47:22', '2020-10-01 06:47:22'),
(25, 10, '2020100112475.jpg', '2020-10-01 06:47:22', '2020-10-01 06:47:22'),
(26, 11, '2020100112496.jpg', '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(27, 11, '2020100112497.jpg', '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(28, 11, '2020100112498.jpg', '2020-10-01 06:49:47', '2020-10-01 06:49:47'),
(29, 12, '202010011258PAG240-1_small.png', '2020-10-01 06:58:25', '2020-10-01 06:58:25'),
(30, 12, '202010011258PAG240B-2_large.png', '2020-10-01 06:58:25', '2020-10-01 06:58:25'),
(31, 12, '202010011258PAG240T-7_small.png', '2020-10-01 06:58:25', '2020-10-01 06:58:25'),
(32, 13, '202010011300PRG600YB-2_large.png', '2020-10-01 07:00:39', '2020-10-01 07:00:39'),
(33, 14, '2020100113049.jpg', '2020-10-01 07:04:00', '2020-10-01 07:04:00'),
(34, 14, '20201001130410.webp', '2020-10-01 07:04:00', '2020-10-01 07:04:00'),
(35, 14, '20201001130411.jpg', '2020-10-01 07:04:00', '2020-10-01 07:04:00'),
(36, 15, '20201001130812.webp', '2020-10-01 07:08:48', '2020-10-01 07:08:48'),
(37, 15, '20201001130813.jpg', '2020-10-01 07:08:48', '2020-10-01 07:08:48'),
(38, 15, '20201001130814.webp', '2020-10-01 07:08:48', '2020-10-01 07:08:48'),
(39, 16, '20201001131515.webp', '2020-10-01 07:15:06', '2020-10-01 07:15:06'),
(40, 16, '20201001131516.png', '2020-10-01 07:15:06', '2020-10-01 07:15:06'),
(41, 16, '20201001131517.jpg', '2020-10-01 07:15:06', '2020-10-01 07:15:06'),
(42, 17, '20201001131918.jpg', '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(43, 17, '20201001131919.jpg', '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(44, 17, '20201001131920.jpg', '2020-10-01 07:19:32', '2020-10-01 07:19:32'),
(45, 18, '20201001132521.jpg', '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(46, 18, '20201001132522.jpg', '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(47, 18, '20201001132523.jpg', '2020-10-01 07:25:07', '2020-10-01 07:25:07'),
(48, 19, '20201001132924.jpg', '2020-10-01 07:29:29', '2020-10-01 07:29:29'),
(49, 19, '20201001132925.jpg', '2020-10-01 07:29:29', '2020-10-01 07:29:29'),
(50, 20, '20201001133426.jpg', '2020-10-01 07:34:14', '2020-10-01 07:34:14'),
(51, 20, '20201001133427.webp', '2020-10-01 07:34:14', '2020-10-01 07:34:14'),
(52, 21, '20201001133728.jpg', '2020-10-01 07:37:59', '2020-10-01 07:37:59'),
(53, 22, '20201001134229.jpg', '2020-10-01 07:42:27', '2020-10-01 07:42:27'),
(54, 22, '20201001134230.jpeg', '2020-10-01 07:42:27', '2020-10-01 07:42:27'),
(55, 22, '20201001134230.jpg', '2020-10-01 07:42:27', '2020-10-01 07:42:27'),
(56, 23, '20201001134431.jpg', '2020-10-01 07:44:56', '2020-10-01 07:44:56'),
(57, 23, '20201001134432.jpg', '2020-10-01 07:44:56', '2020-10-01 07:44:56'),
(58, 23, '20201001134433.jpg', '2020-10-01 07:44:56', '2020-10-01 07:44:56'),
(59, 24, '20201001134734.jpg', '2020-10-01 07:47:04', '2020-10-01 07:47:04'),
(60, 25, '20201001134935.jpg', '2020-10-01 07:49:54', '2020-10-01 07:49:54'),
(61, 25, '20201001134936.jpg', '2020-10-01 07:49:54', '2020-10-01 07:49:54'),
(62, 25, '20201001134937.jpg', '2020-10-01 07:49:54', '2020-10-01 07:49:54'),
(63, 26, '20201001135238.jpg', '2020-10-01 07:52:59', '2020-10-01 07:52:59'),
(64, 26, '20201001135239.jpg', '2020-10-01 07:52:59', '2020-10-01 07:52:59'),
(65, 26, '20201001135240.jpg', '2020-10-01 07:52:59', '2020-10-01 07:52:59'),
(66, 26, '20201001135241.jpg', '2020-10-01 07:52:59', '2020-10-01 07:52:59'),
(67, 27, '20201001141342.webp', '2020-10-01 08:13:18', '2020-10-01 08:13:18'),
(68, 28, '20201001141543.jpg', '2020-10-01 08:15:34', '2020-10-01 08:15:34'),
(69, 28, '20201001141544.jpg', '2020-10-01 08:15:34', '2020-10-01 08:15:34'),
(70, 29, '20201001141845.jpg', '2020-10-01 08:18:19', '2020-10-01 08:18:19'),
(71, 30, '20201001142246.jpg', '2020-10-01 08:22:01', '2020-10-01 08:22:01'),
(72, 31, '20201001142747.webp', '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(73, 31, '20201001142748.webp', '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(74, 31, '202010011427DSC_4694_compact.webp', '2020-10-01 08:27:13', '2020-10-01 08:27:13'),
(75, 32, '20201001143049.jpg', '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(76, 32, '20201001143050.jpg', '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(77, 32, '20201001143051.jpg', '2020-10-01 08:30:41', '2020-10-01 08:30:41'),
(78, 33, '20201001143252.jpg', '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(79, 33, '20201001143253.jpg', '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(80, 33, '20201001143254.jpg', '2020-10-01 08:32:33', '2020-10-01 08:32:33'),
(81, 34, '20201001143755.jpeg', '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(82, 34, '20201001143756.jpeg', '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(83, 34, '20201001143757.jpeg', '2020-10-01 08:37:08', '2020-10-01 08:37:08'),
(84, 35, '20201001144058.jpeg', '2020-10-01 08:40:18', '2020-10-01 08:40:18'),
(85, 35, '20201001144059.jpeg', '2020-10-01 08:40:18', '2020-10-01 08:40:18'),
(86, 35, '20201001144060.jpeg', '2020-10-01 08:40:18', '2020-10-01 08:40:18'),
(87, 35, '20201001144061.jpeg', '2020-10-01 08:40:18', '2020-10-01 08:40:18'),
(88, 36, '20201001144362.jpeg', '2020-10-01 08:43:26', '2020-10-01 08:43:26'),
(89, 36, '20201001144363.jpeg', '2020-10-01 08:43:26', '2020-10-01 08:43:26'),
(90, 36, '20201001144364.jpeg', '2020-10-01 08:43:26', '2020-10-01 08:43:26'),
(91, 36, '20201001144365.jpeg', '2020-10-01 08:43:26', '2020-10-01 08:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KuJTDGFP046N3hBpLmS68HRv1Een5U8a8iDN3EFY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNHZxTlpsc1lJbEhPVmR6SThyQkszZGxtTTQ3emJOdWszWGFPNDB2UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2Vycy92aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDBKRHY2NXRDLzhtek1lRzFEWEtzM2V0MElWS1hnV1dNWXZ6Z29yTk5aamZkLmZPSk9wLlpxIjt9', 1601820741);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_id=customer_id',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `name`, `email`, `mobile_no`, `address`, `created_at`, `updated_at`) VALUES
(2, 7, 'Tuhin', 'ahtuhinf.mi@gmail.com', '01923552130', 'Dattapra Savar Dahaka', '2020-10-07 07:57:30', '2020-10-07 07:57:30'),
(3, 7, 'Tuhin', 'ahtuhin2010@gmail.com', '01923552130', 'Dattapra Savar', '2020-10-07 12:08:56', '2020-10-07 12:08:56'),
(4, 7, 'Tuhin', 'ahtuhin2010@gmail.com', '01923552130', 'Dattapra, Birulia, Savar, Dhaka - 1216', '2020-10-07 14:57:33', '2020-10-07 14:57:33'),
(5, 9, 'Rubel Ahmed', 'rubel@gmail.com', '01923552130', 'Belkuchi, Sirajgonj', '2020-10-08 04:23:32', '2020-10-08 04:23:32'),
(6, 7, 'Maruf', 'maruf@gmail.com', '01923552135', 'Rajsahi', '2020-10-08 07:33:40', '2020-10-08 07:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Size S', 1, NULL, '2020-09-30 16:05:19', '2020-09-30 16:05:19'),
(7, 'Size M', 1, NULL, '2020-09-30 16:05:47', '2020-09-30 16:05:47'),
(8, 'Size L', 1, NULL, '2020-09-30 16:05:59', '2020-09-30 16:05:59'),
(9, 'Size XL', 1, NULL, '2020-09-30 16:06:11', '2020-09-30 16:06:11'),
(10, 'Size XXL', 1, NULL, '2020-09-30 16:06:23', '2020-09-30 16:06:23'),
(11, '1 inch', 1, 1, '2020-09-30 16:09:43', '2020-09-30 16:10:27'),
(12, '1.10 inch', 1, NULL, '2020-09-30 16:10:15', '2020-09-30 16:10:15'),
(13, '1.20 inch', 1, NULL, '2020-09-30 16:10:42', '2020-09-30 16:10:42'),
(14, '6 inch', 1, NULL, '2020-09-30 16:10:55', '2020-09-30 16:10:55'),
(15, '6.1 inch', 1, NULL, '2020-09-30 16:11:07', '2020-09-30 16:11:07'),
(16, '6.2 inch', 1, NULL, '2020-09-30 16:11:25', '2020-09-30 16:11:25'),
(17, '6.3 inch', 1, NULL, '2020-09-30 16:11:40', '2020-09-30 16:11:40'),
(18, '6.4 inch', 1, NULL, '2020-09-30 16:12:02', '2020-09-30 16:12:02'),
(19, '6.5 inch', 1, NULL, '2020-09-30 16:12:23', '2020-09-30 16:12:23'),
(20, '15 inch', 1, NULL, '2020-09-30 16:12:39', '2020-09-30 16:12:39'),
(21, '15.1 inch', 1, NULL, '2020-09-30 16:12:50', '2020-09-30 16:12:50'),
(22, '15.2 inch', 1, NULL, '2020-09-30 16:12:59', '2020-09-30 16:12:59'),
(23, '15.3 inch', 1, NULL, '2020-09-30 16:13:22', '2020-09-30 16:13:22'),
(24, '15.4 inch', 1, NULL, '2020-09-30 16:13:39', '2020-09-30 16:13:39'),
(25, '15.5 inch', 1, NULL, '2020-09-30 16:13:52', '2020-09-30 16:13:52'),
(26, '16 inch', 1, NULL, '2020-09-30 16:17:13', '2020-09-30 16:17:13'),
(27, '17 inch', 1, NULL, '2020-09-30 16:17:22', '2020-09-30 16:17:22'),
(28, '18 inch', 1, NULL, '2020-09-30 16:17:32', '2020-09-30 16:17:32'),
(29, '19 inch', 1, NULL, '2020-09-30 16:17:42', '2020-09-30 16:17:42'),
(30, '20 inch', 1, NULL, '2020-09-30 16:18:05', '2020-09-30 16:18:05'),
(31, 'Size 6', 1, NULL, '2020-09-30 16:21:45', '2020-09-30 16:21:45'),
(32, 'Size 7', 1, NULL, '2020-09-30 16:21:54', '2020-09-30 16:21:54'),
(33, 'Size 8', 1, NULL, '2020-09-30 16:22:08', '2020-09-30 16:22:08'),
(34, 'Size 9', 1, NULL, '2020-09-30 16:22:16', '2020-09-30 16:22:16'),
(35, 'Size 10', 1, NULL, '2020-09-30 16:22:31', '2020-09-30 16:22:31'),
(36, '1.3 inch', 1, NULL, '2020-10-01 07:11:17', '2020-10-01 07:11:17'),
(37, '1.4 inch', 1, NULL, '2020-10-01 07:11:26', '2020-10-01 07:11:26'),
(38, '1.5 inch', 1, NULL, '2020-10-01 07:11:38', '2020-10-01 07:11:38'),
(39, '1.6 inch', 1, NULL, '2020-10-01 07:11:58', '2020-10-01 07:11:58'),
(40, '1.7 inch', 1, NULL, '2020-10-01 07:12:12', '2020-10-01 07:12:12'),
(41, '1.8 inch', 1, NULL, '2020-10-01 07:12:23', '2020-10-01 07:12:23'),
(42, '14 inch', 1, NULL, '2020-10-01 07:40:53', '2020-10-01 07:40:53'),
(43, '15.6 inch', 1, 1, '2020-10-01 07:48:46', '2020-10-01 07:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `short_title`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '202009261504slider-1.jpg', 'Roller Blind', 'The most excellent roller blind.', 1, 1, '2020-09-26 09:04:16', '2020-09-30 15:08:21'),
(3, '202009302109slider-2.jpg', 'Sofa Chair', 'The most beautiful sofa chair', 1, NULL, '2020-09-30 15:09:13', '2020-09-30 15:09:13'),
(4, '202009302110slider-3.jpg', 'Workstation', 'The most attractive and beautiful workstation', 1, NULL, '2020-09-30 15:10:08', '2020-09-30 15:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `mobile`, `code`, `address`, `gender`, `image`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Anisul Haque', 'xpfun420@gmail.com', 'admin', NULL, '$2y$10$D.nrBILnsl5qMJpGtF1E9.N04WWH/qJa41Gz3bo0PHUUeFAYoRzDe', NULL, NULL, '01923552130', NULL, 'Dattapra Savar', 'Male', '202009232014formal.jpg', 1, 'mbuu38mVucCdYrKm8qJAExzllMIhMlpsnYfsn1KZEYXlbIv9mPAAI5o7jSLc', NULL, NULL, '2020-09-20 05:01:19', '2020-10-05 04:39:15'),
(7, 'customer', 'Tuhin', 'ahtuhin2010@gmail.com', NULL, NULL, '$2y$10$xj6l4hF.5kD70XV747f2OOhYeKXNA7ru6eUS7U02r081LU8u8MpFW', NULL, NULL, '01923552133', '5135', 'Belkuchi, Sirajgonj', 'Male', '202010071155prod1.jpg', 1, NULL, NULL, NULL, '2020-10-05 04:46:23', '2020-10-07 06:09:09'),
(9, 'customer', 'Rubel', 'rubel@gmail.com', NULL, NULL, '$2y$10$.3LX6oFfgPBAemfUcqQu..57VrZ3w6hgxfGK0ec/1axfvWCbhLr2W', NULL, NULL, '01761336093', '2525', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-07 15:47:30', '2020-10-07 15:48:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`);

--
-- Indexes for table `communicates`
--
ALTER TABLE `communicates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oder_details`
--
ALTER TABLE `oder_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `communicates`
--
ALTER TABLE `communicates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oder_details`
--
ALTER TABLE `oder_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
