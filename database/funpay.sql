-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2024 at 07:34 AM
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
(5, 'Assassin\'s Creed', 'assassins-creed', 1, '2024-09-06 06:29:37', '2024-09-06 06:29:37');

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
(2, 5, 13, 'test', 'test-1', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sequi corrupti placeat sunt corporis rem possimus sed, officia eum suscipit illo doloribus voluptatibus laudantium, quos commodi excepturi. Aut ipsam modi alias?', 'game_images/a95euvj66NkRVBunGQOF35oQU53LxSxmJTVleWcm.jpg', 1, '2024-09-06 06:31:49', '2024-09-06 06:31:49');

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
(72, '2024_09_06_063554_create_offer_types_table', 4);

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
(4, 'Others', 1, '2024-09-06 05:30:18', '2024-09-06 05:30:18');

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
(13, 1, 'Xbox', 1, '2024-09-06 05:32:47', '2024-09-06 05:32:47');

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
('6UKynl5mBF1i13XxfmgzAwzJN1p6PsJ4y9d9HQUY', 201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTUR0ZzFoZG84ZWVMeFQyczBSUER4OEJ0TW40OERDYjJ2RHJaNjRRdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvZnVucGF5L3VzZXItcHJvZmlsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIwMTt9', 1725623541),
('BzCqzo44kzzu9rTdwp7fSbL3ZwLSxOTYt8GoRIBF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHl6NnAzdEFjb29PamtOYWdvblNKMjBWanNsQ2RXWUxXZG15bGthZiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovL2xvY2FsaG9zdC9mdW5wYXkvYWRtaW4vZ2FtZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vbG9jYWxob3N0L2Z1bnBheS9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725686736),
('lAxlFmZsrpEzHm1VlDq8TAJYWzCTYwHmt4x37kPA', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVNLVGUzRXJmeG5HSVIyVGZGazNzRWxqU2c3OE5JS1o5MzhFdU5qRyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovL2xvY2FsaG9zdC9mdW5wYXkvYWRtaW4vc3ViY2F0ZWdvcnkiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2xvY2FsaG9zdC9mdW5wYXkvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1725619123);

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
(13, 5, 3, 'Assassin\'s Creed 3', 'assassins-creed-3', 1, '2024-09-06 06:29:59', '2024-09-06 06:29:59');

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
(201, 201, 0, 'Admin', 'RPI', 'joiner developer', '1344421', 'admin@admin.com', 'male', 'Farasat', 323, 'abc', 323, 'xyz', NULL, '$2y$12$Rtnky1itP56a7G5S0Ng.tOrwk5fqkzZD0Rcc7yRYlatR.C5gvjn9e', 1, 1, 'eced', 'ABC@$23836420240805111758', NULL, 'userprofile/1723804263_avatar5.png', NULL, NULL, '2023-10-10 00:13:26', '2024-08-16 05:31:03', '340583');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `offer_categories`
--
ALTER TABLE `offer_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offer_types`
--
ALTER TABLE `offer_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
