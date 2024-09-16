-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2024 at 01:08 AM
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
-- Database: `funpay`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Buyer', 'buyer@gmail.com', '$2y$12$yBImYlCVtEKm/qS1zH9Llu8QmHqtFyQ60ILDrDzI.Vv4LY95TUvYm', '2024-09-17 01:17:17', '2024-09-17 01:17:17'),
(3, 'Aown Abbas', 'codebyaown@gmail.com', '$2y$12$f2LVBJoBheRDP8/eTdhIb.W8SYpX0AnNstQ3nAfI.EEJTbsjX1WUu', '2024-09-17 01:25:46', '2024-09-17 01:25:46'),
(6, 'Buyer2', 'buyer02@gmail.com', '$2y$12$x7wdgZvDkAdDg.MtBmIARevMdszyHcL7tYlU/EyrhN6pL4QbPunKa', '2024-09-17 01:31:23', '2024-09-17 01:31:23'),
(7, 'buyer3', 'buyer03@gmail.com', '$2y$12$U5H9TBf1hJAlJ/8dLVzxA.Ei8BMfQLxOd4RC1Ka5zzgAgEOVVJ9rm', '2024-09-17 01:33:03', '2024-09-17 01:33:03'),
(8, 'Toyota', 'toyota@gmail.com', '$2y$12$A17xu2bRc5kdedOJcLZ95.uO.YF5OFUalk55V/S8A5g1mDL9.8RNa', '2024-09-17 01:34:33', '2024-09-17 01:34:33'),
(9, 'buyer4', 'buyer04@gmail.com', '$2y$12$K1vNZgwobbJqYr.8Qt1rtOi719iL62mzJsj/P5rgJCvarLmjZf04K', '2024-09-17 01:35:52', '2024-09-17 01:35:52'),
(10, 'buyer07', 'buyer07@gmail.com', '$2y$12$cr6txO5b2fuQoNGILOF5Ce0kuuCxWCzfBCJGrDa42D6MMW9IKNijq', '2024-09-17 01:40:13', '2024-09-17 01:40:13'),
(11, 'buyer08', 'buyer08@gmail.com', '$2y$12$nqLIYgrtn1nBn0mLkISNRePbCfnUyA.24DyZYksONLnqPBxptV5sO', '2024-09-17 01:41:16', '2024-09-17 01:41:16'),
(12, 'testtest', 'mazar.abbas86000@gmail.com', '$2y$12$vCK/xo.t7zpjm8xyVfP4yuGdRE.AYbAsGDwMC6SJWtG1Q9JyWOwV6', '2024-09-17 01:43:31', '2024-09-17 01:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AFK Arena', 'afk-arena', 1, '2024-09-06 05:23:13', '2024-09-06 05:23:13'),
(2, 'Apex Legends', 'apex-legends', 1, '2024-09-06 05:23:23', '2024-09-06 05:23:23'),
(3, 'Arena Breakout', 'arena-breakout', 1, '2024-09-06 05:23:37', '2024-09-06 05:23:37'),
(4, 'Cabal Online', 'cabal-online', 1, '2024-09-06 05:25:15', '2024-09-06 05:25:15'),
(5, 'Assassin\'s Creed', 'assassins-creed', 1, '2024-09-06 06:29:37', '2024-09-06 06:29:37'),
(6, 'Test Category', 'test-category', 1, '2024-09-08 04:38:42', '2024-09-08 04:38:42'),
(7, 'ball', 'ball', 1, '2024-09-08 04:55:50', '2024-09-08 04:55:50'),
(8, 'cat', 'cat', 1, '2024-09-08 04:55:56', '2024-09-08 04:55:56'),
(9, 'dog', 'dog', 1, '2024-09-08 04:56:04', '2024-09-08 04:56:04'),
(10, 'egg', 'egg', 1, '2024-09-08 04:56:10', '2024-09-08 04:56:10'),
(11, 'Fan', 'fan', 1, '2024-09-08 04:56:18', '2024-09-08 04:56:18'),
(12, 'temporibus', 'ea-repudiandae-iure-inventore-optio-labore-necessitatibus', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(13, 'accusantium', 'velit-non-est-ut-laudantium', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(14, 'eveniet', 'explicabo-nemo-optio-et-sequi-amet-cupiditate-unde', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(15, 'cupiditate', 'molestiae-voluptate-officia-fugiat-deleniti-expedita-facere', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(16, 'quis', 'adipisci-eveniet-alias-aut-accusantium', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(17, 'odit', 'dolor-ea-ipsam-quia-inventore-placeat-molestias-facere-in', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(18, 'ducimus', 'occaecati-provident-et-velit', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(19, 'praesentium', 'culpa-fugiat-eos-minus-commodi-non-voluptatem', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(20, 'et', 'fuga-ea-reiciendis-dolorem-sit-qui', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(21, 'cum', 'iste-molestiae-deleniti-soluta-voluptatum', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(22, 'similique', 'illo-doloribus-molestiae-quaerat-blanditiis-asperiores-laboriosam-nulla', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(23, 'similique', 'repellat-aperiam-maiores-aut-quo-at-nemo-qui', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Platform', 'dropdown', '2024-09-11 06:42:15', '2024-09-11 06:42:15'),
(4, 'Servers', 'dropdown', '2024-09-12 06:11:35', '2024-09-12 06:11:35'),
(8, 'Dropdown filter', 'dropdown', '2024-09-13 04:50:26', '2024-09-13 04:50:26'),
(10, 'test filter 3', 'dropdown', '2024-09-13 06:36:01', '2024-09-13 07:02:12'),
(11, 'test filter 4', 'dropdown', '2024-09-13 09:17:36', '2024-09-13 09:17:36'),
(12, 'test filter 5', 'dropdown', '2024-09-13 10:25:54', '2024-09-13 10:25:54'),
(15, 'test filter 6', 'dropdown', '2024-09-14 04:00:31', '2024-09-14 04:00:31'),
(16, 'Text filter', 'text', '2024-09-14 04:09:43', '2024-09-14 04:09:43'),
(17, 'textarea filter', 'textarea', '2024-09-14 04:18:51', '2024-09-14 04:18:51'),
(18, 'Checkbox filter', 'checkbox', '2024-09-14 04:21:10', '2024-09-14 04:21:10'),
(19, 'Radio filter', 'radio', '2024-09-14 04:21:48', '2024-09-14 04:21:48'),
(20, 'Radio filter', 'radio', '2024-09-14 04:21:48', '2024-09-14 04:21:48'),
(21, 'Date Filter', 'date', '2024-09-14 04:52:04', '2024-09-14 04:52:04'),
(22, 'Button filter', 'button', '2024-09-14 04:53:09', '2024-09-14 04:53:09'),
(23, 'File filter', 'file', '2024-09-14 04:53:26', '2024-09-14 04:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `filter_subcategory`
--

CREATE TABLE `filter_subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `filter_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_subcategory`
--

INSERT INTO `filter_subcategory` (`id`, `subcategory_id`, `filter_id`, `created_at`, `updated_at`) VALUES
(1, 17, 1, NULL, NULL),
(3, 17, 3, NULL, NULL),
(4, 13, 3, NULL, NULL),
(5, 18, 1, NULL, NULL),
(6, 12, 3, NULL, NULL),
(7, 12, 4, NULL, NULL),
(14, 25, 4, NULL, NULL),
(15, 25, 6, NULL, NULL),
(16, 25, 8, NULL, NULL),
(20, 27, 16, NULL, NULL),
(21, 27, 8, NULL, NULL),
(23, 27, 17, NULL, NULL),
(25, 27, 18, NULL, NULL),
(26, 27, 19, NULL, NULL),
(28, 27, 21, NULL, NULL),
(29, 27, 22, NULL, NULL),
(30, 27, 23, NULL, NULL),
(32, 1, 8, NULL, NULL),
(33, 1, 17, NULL, NULL),
(34, 1, 18, NULL, NULL),
(36, 1, 20, NULL, NULL),
(37, 1, 21, NULL, NULL),
(38, 1, 22, NULL, NULL),
(39, 1, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'test', 'test', 'test', 'game_images/j4rFZgvv1fB91QDOC0FCXHtUG4VVqZw4LtvBmx8v.jpg', 1, '2024-09-06 06:23:00', '2024-09-06 06:23:00'),
(2, 5, 13, 'test', 'test-1', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sequi corrupti placeat sunt corporis rem possimus sed, officia eum suscipit illo doloribus voluptatibus laudantium, quos commodi excepturi. Aut ipsam modi alias?', 'game_images/a95euvj66NkRVBunGQOF35oQU53LxSxmJTVleWcm.jpg', 1, '2024-09-06 06:31:49', '2024-09-06 06:31:49'),
(3, 18, 22, 'occaecati', 'quod-quia-consequatur-voluptatum-laborum-eaque', 'Odit voluptatem tempore illum sint voluptas quidem ipsam. Suscipit consequuntur velit unde aliquid. Ut velit voluptates cum quod tempore.', 'https://via.placeholder.com/640x480.png/0033ee?text=nemo', 0, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(5, 22, 24, 'cupiditate', 'eligendi-ex-ipsum-accusamus-alias-ut-provident', 'Qui consectetur quasi nam tempore nulla ut. Eos quam voluptatem vel. Omnis autem delectus culpa nam in hic consequatur. Illum fugiat natus tenetur sunt nulla quaerat.', 'https://via.placeholder.com/640x480.png/008844?text=porro', 0, '2024-09-12 13:10:01', '2024-09-12 13:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_23_162130_create_organizationlogos_table', 2),
(5, '2024_07_27_145314_create_modules_table', 2),
(6, '2024_07_27_145551_create_categories_table', 2),
(7, '2024_08_08_071408_create_studentsheets_table', 3),
(8, '2024_08_08_085420_create_answersheet_table', 3),
(66, '2024_08_29_100510_create_games_table', 4),
(67, '2024_08_29_100511_create_categories_table', 4),
(68, '2024_08_29_100607_create_sub_categories_table', 4),
(69, '2024_08_29_105645_create_orders_table', 4),
(70, '2024_08_29_105917_create_payment_methods_table', 4),
(71, '2024_09_05_174243_create_offer_categories_table', 4),
(72, '2024_09_06_063554_create_offer_types_table', 4),
(73, '2024_09_10_223906_create_filters_table', 5),
(74, '2024_09_11_060259_create_options_table', 6),
(75, '2024_09_12_070134_add_options_to_filters_table', 7),
(76, '2024_09_11_070138_remove_options_from_filters_table', 8),
(80, '2024_09_12_192801_create_sellers_table', 9),
(82, '2024_09_14_224823_create_buyers_table', 10),
(83, '2024_09_16_215220_add_password_to_sellers_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `offer_categories`
--

CREATE TABLE `offer_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_categories`
--

INSERT INTO `offer_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Platform', 1, '2024-09-06 05:25:30', '2024-09-06 05:25:30'),
(2, 'Server', 1, '2024-09-06 05:25:35', '2024-09-06 05:25:35'),
(3, 'Game', 1, '2024-09-06 05:25:41', '2024-09-06 05:25:41'),
(4, 'Others', 1, '2024-09-06 05:30:18', '2024-09-06 05:30:18'),
(5, 'repellendus', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(6, 'non', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(7, 'minima', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(8, 'vel', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(9, 'qui', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(10, 'quasi', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(11, 'est', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(12, 'est', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(13, 'earum', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(14, 'voluptatem', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(15, 'dolore', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(16, 'tenetur', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `offer_types`
--

CREATE TABLE `offer_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_category_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_types`
--

INSERT INTO `offer_types` (`id`, `offer_category_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Android', 1, '2024-09-06 05:26:50', '2024-09-06 05:26:50'),
(2, 1, 'IOS', 1, '2024-09-06 05:26:59', '2024-09-06 05:26:59'),
(3, 2, 'Server', 1, '2024-09-06 05:27:06', '2024-09-06 05:27:06'),
(4, 3, 'God of War', 1, '2024-09-06 05:27:26', '2024-09-06 05:27:26'),
(5, 3, 'Counter Strike', 1, '2024-09-06 05:27:56', '2024-09-06 05:27:56'),
(6, 4, 'Rookie', 1, '2024-09-06 05:30:46', '2024-09-06 05:30:46'),
(7, 4, 'Bronze', 1, '2024-09-06 05:30:57', '2024-09-06 05:30:57'),
(8, 4, 'Silver', 1, '2024-09-06 05:31:11', '2024-09-06 05:31:11'),
(9, 4, 'Gold', 1, '2024-09-06 05:31:25', '2024-09-06 05:31:25'),
(10, 4, 'Diamond', 1, '2024-09-06 05:31:39', '2024-09-06 05:31:39'),
(11, 1, 'PS', 1, '2024-09-06 05:32:32', '2024-09-06 05:32:32'),
(12, 1, 'PC', 1, '2024-09-06 05:32:39', '2024-09-06 05:32:39'),
(13, 1, 'Xbox', 1, '2024-09-06 05:32:47', '2024-09-06 05:32:47'),
(14, 14, 'voluptas', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(15, 15, 'repellat', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(16, 16, 'ut', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `filter_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `filter_id`, `created_at`, `updated_at`) VALUES
(18, 'updated option', 8, '2024-09-13 05:00:47', '2024-09-13 05:00:47'),
(19, 'updated option2', 8, '2024-09-13 05:00:47', '2024-09-13 05:00:47'),
(20, 'updated option3', 8, '2024-09-13 05:00:47', '2024-09-13 05:00:47'),
(24, 'testoption4', 10, '2024-09-13 07:02:53', '2024-09-13 07:02:53'),
(25, 'testoption5', 10, '2024-09-13 07:02:53', '2024-09-13 07:02:53'),
(26, 'testoption6', 10, '2024-09-13 07:02:53', '2024-09-13 07:02:53'),
(27, 'testoption7', 11, '2024-09-13 09:17:36', '2024-09-13 09:17:36'),
(28, 'testoption8', 11, '2024-09-13 09:17:36', '2024-09-13 09:17:36'),
(29, 'testoption9', 11, '2024-09-13 09:17:36', '2024-09-13 09:17:36'),
(30, 'testoption6', 12, '2024-09-13 10:25:54', '2024-09-13 10:25:54'),
(31, 'testoption7', 12, '2024-09-13 10:25:54', '2024-09-13 10:25:54'),
(37, 'updated option', 4, '2024-09-14 00:28:47', '2024-09-14 00:28:47'),
(38, 'updated option2', 4, '2024-09-14 00:28:47', '2024-09-14 00:28:47'),
(39, 'updated option3', 4, '2024-09-14 00:28:47', '2024-09-14 00:28:47'),
(53, 'testoption1', 15, '2024-09-14 04:05:27', '2024-09-14 04:05:27'),
(54, 'test option', 15, '2024-09-14 04:05:27', '2024-09-14 04:05:27'),
(57, 'testoption1', 19, '2024-09-14 05:00:04', '2024-09-14 05:00:04'),
(58, 'testoption2', 19, '2024-09-14 05:00:04', '2024-09-14 05:00:04'),
(59, 'testoption6', 18, '2024-09-14 05:11:55', '2024-09-14 05:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` int(11) NOT NULL,
  `short description` varchar(255) NOT NULL,
  `detailed description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizationlogos`
--

CREATE TABLE `organizationlogos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `org_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizationlogos`
--

INSERT INTO `organizationlogos` (`id`, `org_logo`, `created_at`, `updated_at`) VALUES
(1, '1724848197_logo.png', '2024-08-28 07:29:57', '2024-08-28 07:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `messenger` varchar(255) DEFAULT NULL,
  `messenger_link` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `selfie` varchar(255) NOT NULL,
  `id_card_front` varchar(255) NOT NULL,
  `id_card_back` varchar(255) NOT NULL,
  `games_products` text NOT NULL,
  `other_info` text DEFAULT NULL,
  `stock_source` varchar(255) NOT NULL,
  `selling_elsewhere` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `full_name`, `country`, `email`, `messenger`, `messenger_link`, `dob`, `phone_number`, `country_code`, `selfie`, `id_card_front`, `id_card_back`, `games_products`, `other_info`, `stock_source`, `selling_elsewhere`, `created_at`, `updated_at`, `password`) VALUES
(1, 'seller test', 'Canada', 'sellertest@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-15', '5124277273', '+1', 'C:\\xampp\\tmp\\php934F.tmp', 'C:\\xampp\\tmp\\php937F.tmp', 'C:\\xampp\\tmp\\php9380.tmp', 'my name is aown abbas', 'my name is aown abbas', 'I farm my own items', 0, '2024-09-15 05:22:02', '2024-09-15 05:22:02', ''),
(2, 'seller test', 'Canada', 'sellertest@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-15', '5124277273', '+1', 'uploads/selfie/yO7cQHefLosRYeKoAQO8dgdbRS7cBg2IdRQPMNIl.png', 'uploads/id_card_fronts/NmhMIgKj0rHPhEdCm1cmIXObsZXb79tQgKBtAFuo.png', 'uploads/id_card_backs/qDvC6gmmeAdFhwOZfglwlC8g6fpEejIGcw13DAtd.png', 'my name is aown abbas', 'my name is aown abbas', 'I farm my own items', 0, '2024-09-15 05:22:02', '2024-09-15 05:22:02', ''),
(3, 'Aown Abbas', 'USA', 'codebyaown@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-20', '5124277273', '+1', 'C:\\xampp\\tmp\\php982A.tmp', 'C:\\xampp\\tmp\\php983B.tmp', 'C:\\xampp\\tmp\\php983C.tmp', 'this is just a text', 'this is just a text', 'I farm my own items', 0, '2024-09-15 05:24:15', '2024-09-15 05:24:15', ''),
(4, 'Aown Abbas', 'USA', 'codebyaown@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-20', '5124277273', '+1', 'uploads/selfie/EGPxnykhxT1w0317o1ilmpStkcR0tYTCWLRlZJWZ.png', 'uploads/id_card_fronts/aKz0WPe00R8TFWATmHCidUXFVtUZXPhYFWdojK0e.png', 'uploads/id_card_backs/8UWK9pH39YngDeofZCUqPXzB1J4g9gKKSrKD0ATS.png', 'this is just a text', 'this is just a text', 'I farm my own items', 0, '2024-09-15 05:24:15', '2024-09-15 05:24:15', ''),
(5, 'seller2@gmai.com', 'Canada', 'codebyaown@gmail.com', 'Discord', NULL, '2024-09-25', '03284938053', '+1', 'uploads/selfie/NaDEHuFnpavUZHe7SejGXr90CzO4EwuELXAxRN1b.png', 'uploads/id_card_fronts/FwBStMsbePJVrHqrvlujhfeVtKfx2xwc1aKVtQYG.png', 'uploads/id_card_backs/zN0dseU9XbfULmGxz2MX9GngMTpYNMxSoiFbM8eQ.png', 'my name is ..', 'my name is aown ababs', 'I farm my own items', 1, '2024-09-15 05:28:55', '2024-09-15 05:28:55', ''),
(6, 'seller6@gmai.com', 'Canada', 'codebyaown@gmail.com', 'Discord', 'https://www.telegram.com/', '2024-09-25', '03284938053', '+1', 'uploads/selfie/k8SLFIH0hI3hf1iMNDLYNF4Y11UBVqWdVE5ixZJX.png', 'uploads/id_card_fronts/gbLYeyP8EyzWa57bdzEFqj0eN4I0GIHWMueqzFZC.png', 'uploads/id_card_backs/tWNusZ9WLOKU07wuNt8il6XGd3S2ZQIdnVzuSIzL.png', 'my name is ..', 'my name is aown ababs', 'I farm my own items', 1, '2024-09-15 05:29:38', '2024-09-15 05:29:38', ''),
(7, 'seller03@gmai.com', 'Canada', 'codebyaown@gmail.com', 'Discord', 'https://www.telegram.com/', '2024-09-25', '03284938053', '+44', 'uploads/selfie/5WbSDwsRfKD3J2WEtWt2MPC7DvhRRkN964zqfcvx.png', 'uploads/id_card_fronts/K34ePCq5o71ce5w1fB55DjW0hJFbWUTr7cL4cNW4.png', 'uploads/id_card_backs/PizJzp5NlQ56YX5ZQNLrb1MdA969w29bZJCkb0lG.png', 'my name is ..', 'my name is aown ababs', 'I farm my own items', 1, '2024-09-15 05:30:09', '2024-09-15 05:30:09', ''),
(8, 'Best Seller', 'UK', 'bestseller@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-20', '03150004389', '+1', 'uploads/selfie/bRHDlIgI9YR33EO8S6bz8qLTmkUqCk5cealJdYpu.png', 'uploads/id_card_fronts/f2jshnQZphy8pct2gfruhT3J1KpyDqxtHRHJ3AHF.png', 'uploads/id_card_backs/j6JyMrfq585Y9GVNcJuoY3LQQJC6vlEoCWYC6b0W.png', 'test data', 'test data', 'I farm my own items', 0, '2024-09-17 04:59:32', '2024-09-17 04:59:32', '$2y$12$DjYGrnB0ivYFLdtdsP8f4e/Io8nDszdMpAAUW3OrTscuO/7Dzt6uS'),
(9, 'Master Admin', 'Canada', 'masteradmin@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-26', '03077174343', '+1', 'uploads/selfie/2txIlrM4XAI9IZ41foQrhzgMAcyIgTHxntSbomIB.png', 'uploads/id_card_fronts/YHT3rG2uLN6cuy233Zd44TjEWsBTItaar828BBhX.png', 'uploads/id_card_backs/sLyRFPYzSJNWKSszOSnq0XBLh4csdjTvs3luZfxW.png', 'masteradmin', 'masteradmin', 'I farm my own items', 0, '2024-09-17 06:02:40', '2024-09-17 06:02:40', '$2y$12$iB4JbzPg0zJKLoGU0Xf.Ee.AVYCv9mxyud/6wK6wtgi/DzVEzvomG');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eiul2yxTa2WpIFeldo4l9PNeDK9uFdboivcmPfvi', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVdLOW5MSzZJWUtWMFd6Rm9UNndzY0RDZTE5S0w1aFR1VmM3N2VGYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3QvZnVucGF5L3NlbGxlci1yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726527761),
('tFizRyY9PnV7Fjcy25rhcAgvwN96c7whYLJXrmQl', 201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWI3cmNRb1NFUWprUlllWGRFcHlGekZQUnhGMDZaUGJlajI3VlZkZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjEvZnVucGF5L2FjY291bnQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMDE7fQ==', 1726527915);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `offer_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `offer_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Accounts', 'accounts', 1, '2024-09-06 05:28:26', '2024-09-06 05:28:26'),
(2, 1, 1, 'Diamonds', 'diamonds', 1, '2024-09-06 05:28:42', '2024-09-06 05:28:42'),
(3, 1, 1, 'Top Up', 'top-up', 1, '2024-09-06 05:28:54', '2024-09-06 05:28:54'),
(4, 1, 1, 'Services', 'services', 1, '2024-09-06 05:29:05', '2024-09-06 05:29:05'),
(5, 1, 1, 'Other', 'other', 1, '2024-09-06 05:29:15', '2024-09-06 05:29:15'),
(6, 2, 4, 'Accounts', 'accounts-1', 1, '2024-09-06 05:29:35', '2024-09-06 05:33:33'),
(7, 2, 1, 'Coins', 'coins', 1, '2024-09-06 05:32:22', '2024-09-06 05:32:22'),
(8, 2, 1, 'Top Up', 'top-up-1', 1, '2024-09-06 05:33:15', '2024-09-06 05:33:15'),
(9, 2, 1, 'Exotic shards', 'exotic-shards', 1, '2024-09-06 05:34:07', '2024-09-06 05:36:13'),
(10, 2, 1, 'Boosting', 'boosting', 1, '2024-09-06 05:34:19', '2024-09-06 05:36:39'),
(11, 2, 1, 'Achievements', 'achievements', 1, '2024-09-06 05:37:02', '2024-09-06 05:37:02'),
(12, 2, 1, 'Coaching', 'coaching', 1, '2024-09-06 05:37:15', '2024-09-06 05:37:15'),
(13, 5, 3, 'Assassin\'s Creed 3', 'assassins-creed-3', 1, '2024-09-06 06:29:59', '2024-09-06 06:29:59'),
(17, 6, 3, 'Test subcategory', 'test-subcategory-3', 1, '2024-09-12 05:03:23', '2024-09-12 05:03:23'),
(18, 3, 2, 'areana mention', 'areana-mention', 1, '2024-09-12 05:44:32', '2024-09-12 05:44:32'),
(19, 15, 5, 'ut', 'et-sed-veniam-asperiores-vel-ut-nulla-dicta', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(20, 16, 6, 'aliquam', 'officiis-modi-nostrum-rerum-ut-sequi', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(21, 17, 7, 'et', 'sint-odio-eos-inventore-laborum-ratione-sed-quas', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(22, 19, 8, 'qui', 'blanditiis-error-distinctio-omnis-qui-sed-blanditiis-vel', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(24, 23, 10, 'neque', 'sint-beatae-consequatur-ullam-et-sed', 1, '2024-09-12 13:10:01', '2024-09-12 13:10:01'),
(25, 1, 3, 'dropdown options checking', 'dropdown-options-checking', 1, '2024-09-13 04:56:15', '2024-09-13 04:56:15'),
(27, 2, 3, 'legends subcategory', 'legends-subcategory', 1, '2024-09-14 01:41:26', '2024-09-14 01:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) DEFAULT 0,
  `employee_old_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `strategic_unit` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `su_head` varchar(255) DEFAULT NULL,
  `functionally_reports_to` int(11) DEFAULT 0,
  `functional_head_name` varchar(255) DEFAULT NULL,
  `administratively_reports_to` int(11) DEFAULT 0,
  `admin_head_name` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `role_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `org_o` varchar(255) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `authenticated_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `employee_old_id`, `name`, `strategic_unit`, `designation`, `phone_number`, `email`, `gender`, `su_head`, `functionally_reports_to`, `functional_head_name`, `administratively_reports_to`, `admin_head_name`, `email_verified_at`, `password`, `status`, `role_id`, `address`, `unique_id`, `org_o`, `profile_img`, `created_by`, `remember_token`, `created_at`, `updated_at`, `authenticated_id`) VALUES
(201, 201, 0, 'Admin', 'RPI', 'joiner developer', '1344421', 'admin@admin.com', 'male', 'Farasat', 323, 'abc', 323, 'xyz', NULL, '$2y$12$D0RizbTBEEh2p59iUu3uMOwiaa1a.TUhLLiwmeSkB0/0Z2dlQeD/W', 1, 1, 'eced', 'ABC@$23836420240805111758', NULL, 'userprofile/1723804263_avatar5.png', NULL, NULL, '2023-10-10 00:13:26', '2024-08-16 05:31:03', '340583');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `buyers_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_subcategory`
--
ALTER TABLE `filter_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_slug_unique` (`slug`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_categories`
--
ALTER TABLE `offer_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_types`
--
ALTER TABLE `offer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_filter_id_foreign` (`filter_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizationlogos`
--
ALTER TABLE `organizationlogos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `filter_subcategory`
--
ALTER TABLE `filter_subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `offer_categories`
--
ALTER TABLE `offer_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `offer_types`
--
ALTER TABLE `offer_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizationlogos`
--
ALTER TABLE `organizationlogos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
