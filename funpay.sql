-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 10:07 AM
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
(1, 'Buyer', 'buyer@gmail.com', '$2y$12$hwu/AYdhBQHUH48LSIPLRuZxoajLdKD02UEQq/cuW5EqoGORZpDRy', '2024-09-17 01:17:17', '2024-09-17 01:17:17'),
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

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '9d689332-45da-4369-bf2f-47f14c10d310', 'database', 'default', '{\"uuid\":\"9d689332-45da-4369-bf2f-47f14c10d310\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Message]. in C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:637\nStack trace:\n#0 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(109): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(62): App\\Events\\MessageSent->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(93): App\\Events\\MessageSent->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Events\\MessageSent->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(98): unserialize(\'O:38:\"Illuminat...\')\n#5 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(61): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\funpay\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#26 {main}', '2024-09-23 05:37:44'),
(2, '63ac4772-014d-4124-9108-10e11d4cb122', 'database', 'default', '{\"uuid\":\"63ac4772-014d-4124-9108-10e11d4cb122\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Message]. in C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:637\nStack trace:\n#0 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(109): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(62): App\\Events\\MessageSent->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(93): App\\Events\\MessageSent->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Events\\MessageSent->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(98): unserialize(\'O:38:\"Illuminat...\')\n#5 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(61): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\funpay\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\funpay\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\funpay\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#26 {main}', '2024-09-23 05:37:45');

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
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `fields` text DEFAULT NULL,
  `buyer_message` text DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `stock` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `long_description`, `fields`, `buyer_message`, `price`, `stock`) VALUES
(1, 1, 10, 'test', 'test', 'test', 'game_images/j4rFZgvv1fB91QDOC0FCXHtUG4VVqZw4LtvBmx8v.jpg', 1, '2024-09-06 06:23:00', '2024-09-06 06:23:00', NULL, NULL, NULL, NULL, NULL),
(2, 5, 13, 'test', 'test-1', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sequi corrupti placeat sunt corporis rem possimus sed, officia eum suscipit illo doloribus voluptatibus laudantium, quos commodi excepturi. Aut ipsam modi alias?', 'game_images/a95euvj66NkRVBunGQOF35oQU53LxSxmJTVleWcm.jpg', 1, '2024-09-06 06:31:49', '2024-09-06 06:31:49', NULL, NULL, NULL, NULL, NULL),
(3, 18, 22, 'occaecati', 'quod-quia-consequatur-voluptatum-laborum-eaque', 'Odit voluptatem tempore illum sint voluptas quidem ipsam. Suscipit consequuntur velit unde aliquid. Ut velit voluptates cum quod tempore.', 'https://via.placeholder.com/640x480.png/0033ee?text=nemo', 0, '2024-09-12 13:10:01', '2024-09-12 13:10:01', NULL, NULL, NULL, NULL, NULL),
(5, 22, 24, 'cupiditate', 'eligendi-ex-ipsum-accusamus-alias-ut-provident', 'Qui consectetur quasi nam tempore nulla ut. Eos quam voluptatem vel. Omnis autem delectus culpa nam in hic consequatur. Illum fugiat natus tenetur sunt nulla quaerat.', 'https://via.placeholder.com/640x480.png/008844?text=porro', 0, '2024-09-12 13:10:01', '2024-09-12 13:10:01', NULL, NULL, NULL, NULL, NULL);

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(110, 'default', '{\"uuid\":\"1fcaf507-ec63-4117-819d-e99212b407e8\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:14:\\\"are you there?\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727107189, 1727107189),
(111, 'default', '{\"uuid\":\"21d439f9-ce3a-4432-9f91-cd139d095263\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"yes i am\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727107200, 1727107200),
(112, 'default', '{\"uuid\":\"e795644d-6ed8-4e7a-b89e-2ba18be97178\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:14:\\\"what you need?\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727107247, 1727107247),
(113, 'default', '{\"uuid\":\"c3b1e210-b6d3-4c82-b8f4-d10d2cb16e31\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"i need a game\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727107256, 1727107256),
(114, 'default', '{\"uuid\":\"aba4be8d-baa5-44a6-ac0d-40fb8206fecf\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108031, 1727108031),
(115, 'default', '{\"uuid\":\"acdf70f4-870c-4c2e-b256-3a79861a3d8d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"Hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108252, 1727108252),
(116, 'default', '{\"uuid\":\"7565de62-7370-4fb2-807f-8cb4a9bec379\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:14:\\\"are you there?\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108259, 1727108259),
(117, 'default', '{\"uuid\":\"f44ca18b-20f9-4343-822e-39ee303a9a44\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108481, 1727108481),
(118, 'default', '{\"uuid\":\"ff12d229-b6dc-4e0e-a438-a4b37973da22\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"Hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108639, 1727108639),
(119, 'default', '{\"uuid\":\"ea35940b-699a-48e9-af2e-745748b045d9\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"Hi.\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108663, 1727108663),
(120, 'default', '{\"uuid\":\"cddeb081-98aa-406b-b097-e56d89b161df\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:12:\\\"How are you?\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108685, 1727108685),
(121, 'default', '{\"uuid\":\"05b70b3d-b5d4-41f7-a452-9179ed67316d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"i am good.\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108695, 1727108695),
(122, 'default', '{\"uuid\":\"8520adbd-30bd-4087-a996-cc8278e4f1c9\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"ok greate\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108724, 1727108724),
(123, 'default', '{\"uuid\":\"c3bcd52a-df2a-45ca-9581-8006fa10a45a\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"thanks\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108765, 1727108765),
(124, 'default', '{\"uuid\":\"c0939f4e-9558-4e1c-bde0-612011e0fb3a\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108801, 1727108801),
(125, 'default', '{\"uuid\":\"3deb52f5-a51e-491b-b59c-b3ff15027b00\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"bro\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108841, 1727108841),
(126, 'default', '{\"uuid\":\"1ba0dd3c-5c86-44bb-a0c6-242d27733d18\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"yoo\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108861, 1727108861),
(127, 'default', '{\"uuid\":\"0c732ea4-0e56-41d3-a0fa-21bee363c5c0\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"yoo\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108884, 1727108884),
(128, 'default', '{\"uuid\":\"60933c48-28df-41ef-bdfb-1f6d9a482f7c\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108889, 1727108889),
(129, 'default', '{\"uuid\":\"00a4f0fb-8d1d-4dbc-810d-12faeb7a5494\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"no\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108894, 1727108894),
(130, 'default', '{\"uuid\":\"e941c053-7780-49d8-8bdc-7c82e87b15fc\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"you\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727108899, 1727108899),
(131, 'default', '{\"uuid\":\"56e94af6-3aa9-4f44-ba45-c5cd7f8681c9\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112599, 1727112599),
(132, 'default', '{\"uuid\":\"14057550-16c0-4f75-90b2-4f1da6462e30\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"you there?\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112628, 1727112628),
(133, 'default', '{\"uuid\":\"53b82b65-7603-41a5-bcff-58c9831502e5\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:20:\\\"my name is shaheryar\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112645, 1727112645),
(134, 'default', '{\"uuid\":\"a977fdb0-4311-4cc4-9c08-468bb70cc89e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:24:\\\"ta ma ka karen bund mara\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112657, 1727112657),
(135, 'default', '{\"uuid\":\"c3e44c53-96d6-4719-9e89-598ec2c08caa\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"you there?\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112684, 1727112684),
(136, 'default', '{\"uuid\":\"acc2c29f-3dab-42bb-9de5-d5df86229760\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112724, 1727112724),
(137, 'default', '{\"uuid\":\"af17b5a5-1350-43d5-a297-2aa2db7bea76\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"you there?\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112729, 1727112729),
(138, 'default', '{\"uuid\":\"1a28ebe5-68b5-4706-b371-cb6d61fba282\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"bund mara\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112740, 1727112740),
(139, 'default', '{\"uuid\":\"e7fa395e-2894-44a3-8e18-d43c88bf69bc\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"gando\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727112751, 1727112751),
(140, 'default', '{\"uuid\":\"f8799565-75e9-4a38-906c-a5123c7d07f7\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"lun maron\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727113032, 1727113032),
(141, 'default', '{\"uuid\":\"0658d713-f3a5-4b3b-b92f-e947582b3c6e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"han g\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727160970, 1727160970),
(142, 'default', '{\"uuid\":\"577641fe-2d01-4af3-987d-162cee0e8a91\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"kya hal ha\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727160979, 1727160979),
(143, 'default', '{\"uuid\":\"3084e906-63fe-43fc-add3-ddb2c5fb79e3\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:15:\\\"lun ta char oyy\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727160992, 1727160992),
(144, 'default', '{\"uuid\":\"016a0dce-6074-49ff-8efe-c3bb5b3753bd\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"han oyy gando\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727161026, 1727161026),
(145, 'default', '{\"uuid\":\"16ca0d8a-73f3-4571-a599-21e47d51b56d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:14:\\\"han bhai gando\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727163895, 1727163895),
(146, 'default', '{\"uuid\":\"c70c03aa-d29e-496f-924f-b8674cc90d85\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"hi ooy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727164574, 1727164574),
(147, 'default', '{\"uuid\":\"ea764481-2fe9-4aaf-b31e-d9fcc2912806\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"hy oyy chawla\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727165171, 1727165171),
(148, 'default', '{\"uuid\":\"e95570d0-3829-4851-9ed2-6b70dde74c81\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:7:\\\"han ooy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727166329, 1727166329),
(149, 'default', '{\"uuid\":\"d3b5595c-435d-4016-bd7f-f4782959bf26\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\".....\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727166424, 1727166424),
(150, 'default', '{\"uuid\":\"a89e1b61-3d15-44ae-a4fb-81fb21d839c8\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"han g\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727166753, 1727166753),
(151, 'default', '{\"uuid\":\"2a75c440-3e11-4237-8455-7888c7053d69\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"yooooo\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727166833, 1727166833),
(152, 'default', '{\"uuid\":\"8f8afb12-87df-41ba-b18c-5cd94842588a\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"dwdwd\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727166899, 1727166899),
(153, 'default', '{\"uuid\":\"1e0feb09-c49e-41c7-8642-b76874c5f8cc\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167147, 1727167147),
(154, 'default', '{\"uuid\":\"ecbed597-2690-42b5-97b5-2ea991403ad0\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"han bhai\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167286, 1727167286),
(155, 'default', '{\"uuid\":\"b59e030c-436a-42e8-b1c2-d7668f331775\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:7:\\\"kesa ha\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167309, 1727167309),
(156, 'default', '{\"uuid\":\"926fc273-4619-4812-85a0-77aecadd0668\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"yoooo\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167338, 1727167338);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(157, 'default', '{\"uuid\":\"c43c6c3c-199b-45ee-87a4-78425f9ad8e7\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"han g\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167365, 1727167365),
(158, 'default', '{\"uuid\":\"e8dd26c0-0ab3-406b-b3f0-cc648fe73b78\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"han g\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167421, 1727167421),
(159, 'default', '{\"uuid\":\"a0b0785a-9de3-45ae-aa23-84ec33beaa20\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:4:\\\"....\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167474, 1727167474),
(160, 'default', '{\"uuid\":\"f7cc3358-334e-4a00-9841-7d56f0ac55ed\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"qwdwqdqw\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167543, 1727167543),
(161, 'default', '{\"uuid\":\"28869f90-ac83-4059-ac78-28bc788c1214\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"qwdwqdwq\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167656, 1727167656),
(162, 'default', '{\"uuid\":\"ba8d6dec-ef90-4c8c-ab7d-731bc95bd4ec\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167702, 1727167702),
(163, 'default', '{\"uuid\":\"fa78a14b-54af-4e75-896b-6ca123efc8b1\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdwqdwqd\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167868, 1727167868),
(164, 'default', '{\"uuid\":\"f7ce5568-8843-49fc-9af9-cbeabfdd738d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"bro\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167890, 1727167890),
(165, 'default', '{\"uuid\":\"d75527eb-8bc0-4cba-9d0c-ba76b0a2f0ad\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"my bro\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167922, 1727167922),
(166, 'default', '{\"uuid\":\"db00554d-f2a7-4bdf-8e81-b697fa461c2c\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:7:\\\"yoo bro\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167951, 1727167951),
(167, 'default', '{\"uuid\":\"e356fdf4-970c-490f-8d45-835d69425f94\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:4:\\\"fuck\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727167985, 1727167985),
(168, 'default', '{\"uuid\":\"58471d77-120c-460f-b65d-a5e00375de28\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:4:\\\"youu\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168009, 1727168009),
(169, 'default', '{\"uuid\":\"7a412b1c-71c0-4d59-8920-6fb5ee979f69\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:4:\\\"fuck\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168024, 1727168024),
(170, 'default', '{\"uuid\":\"a83a5748-f4c0-489d-86fd-c31272d5638e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdwqdwqd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168087, 1727168087),
(171, 'default', '{\"uuid\":\"e3e64c96-eef0-4575-8b99-3da7c0de9a7d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdqwdwqd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168090, 1727168090),
(172, 'default', '{\"uuid\":\"0080b0e8-813f-468f-b458-673a60958e8e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"qwdqwddqwdqwd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168093, 1727168093),
(173, 'default', '{\"uuid\":\"e95e0f3d-120f-42a5-9f26-f30ac11f0abb\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"qwdwqdwqdwdqd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168121, 1727168121),
(174, 'default', '{\"uuid\":\"f94bc86e-13f9-4c6d-a117-ced5db3797ef\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdqwdqwd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168162, 1727168162),
(175, 'default', '{\"uuid\":\"5f5220d4-783c-43c7-8237-0d9dc9646ea0\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdqwdqwd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168169, 1727168169),
(176, 'default', '{\"uuid\":\"d4b7b40e-9fd0-4385-a9af-9ddeb8ab5f5b\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdqwdqwd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168172, 1727168172),
(177, 'default', '{\"uuid\":\"0c2e8357-3159-4424-abb1-8344ea0e1398\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdwqdqwd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168178, 1727168178),
(178, 'default', '{\"uuid\":\"8d4766df-a7b3-4a7e-97bd-0497c1f7fcd4\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:23:\\\"yoo bro ab teek ho gaya\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"233\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727168888, 1727168888),
(179, 'default', '{\"uuid\":\"b45390ef-0174-47f5-8e46-065d6fd41e28\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"my bro\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171140, 1727171140),
(180, 'default', '{\"uuid\":\"c9bff7a5-57e5-42d0-86aa-71d36c231161\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"hy ooy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171591, 1727171591),
(181, 'default', '{\"uuid\":\"30170b07-862e-4d94-874b-52590ce2f0af\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"ooy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171670, 1727171670),
(182, 'default', '{\"uuid\":\"4b84d9d9-38b4-41ae-8a14-b0d72f9fba64\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"ja ooy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171684, 1727171684),
(183, 'default', '{\"uuid\":\"06847a5b-12ad-4d0b-8831-26aeaa27f386\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"ooy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171695, 1727171695),
(184, 'default', '{\"uuid\":\"c7f374e0-cfaf-4519-a26b-fe37e20f44ce\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:4:\\\"loro\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171723, 1727171723),
(185, 'default', '{\"uuid\":\"392b27f6-35e3-45de-a19e-0df78b95f61b\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"chal oyy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171742, 1727171742),
(186, 'default', '{\"uuid\":\"51a89615-651b-4ea8-80f9-295ce31a6561\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:7:\\\"jaa oyy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171781, 1727171781),
(187, 'default', '{\"uuid\":\"ce0547a8-0cde-4f80-8a9e-23e9b94d0540\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"jul\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727171802, 1727171802),
(188, 'default', '{\"uuid\":\"1932939d-8560-4f45-9f48-29effd2c8f44\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"hhshs\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727172272, 1727172272),
(189, 'default', '{\"uuid\":\"103e8168-e8b5-43a5-b5bf-7e4f2d5d7696\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176090, 1727176090),
(190, 'default', '{\"uuid\":\"f5cacbf8-3db6-4343-9410-c5bb3fc7bf53\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"bro\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176109, 1727176109),
(191, 'default', '{\"uuid\":\"1c34b83d-7a3d-4b72-b5d6-95b5f932cf43\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176127, 1727176127),
(192, 'default', '{\"uuid\":\"3f820b9e-fa8d-42c6-b86b-cf9efd7638bf\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"yoo\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176149, 1727176149),
(193, 'default', '{\"uuid\":\"5249024e-f46c-4f99-91af-7c286cc41407\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"qwdwqdqd\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176169, 1727176169),
(194, 'default', '{\"uuid\":\"0e832b65-24c3-4c50-881c-872fad1defdd\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"ooy\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176201, 1727176201),
(195, 'default', '{\"uuid\":\"cf2751f0-68f7-404e-875c-e9d009496792\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:4:\\\"oooo\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176255, 1727176255),
(196, 'default', '{\"uuid\":\"1ad34f7c-f769-4f40-9103-32e84a2415b2\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"lun maron\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176291, 1727176291),
(197, 'default', '{\"uuid\":\"295519dd-9122-44cb-9aa6-ea6975d33837\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"qwdqdqwd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176329, 1727176329),
(198, 'default', '{\"uuid\":\"6f6e4cb8-fb2e-41fe-a420-3ef129795c28\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"qwdwqdwqdd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727176344, 1727176344),
(199, 'default', '{\"uuid\":\"6a774a49-1320-4b55-bd6a-e67f62176684\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"qwdwqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177001, 1727177001),
(200, 'default', '{\"uuid\":\"2c254d80-75a8-4736-a099-f8a8bbecb391\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdwqdwqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177054, 1727177054),
(201, 'default', '{\"uuid\":\"c1bd3f44-d4b1-4b31-a7c3-364b80f1b584\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"qdqwdqwdwqdwq\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177064, 1727177064),
(202, 'default', '{\"uuid\":\"c5f0441f-1f48-4eeb-aea1-5d5696164f2d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177279, 1727177279),
(203, 'default', '{\"uuid\":\"e15db845-6426-4186-b59f-c8d683b60fa7\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:11:\\\"how are you\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177317, 1727177317);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(204, 'default', '{\"uuid\":\"5da08a36-1b65-4acf-871e-44a9090a6fe5\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177443, 1727177443),
(205, 'default', '{\"uuid\":\"844856f6-8760-4710-a9cd-1aa902643fdf\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177490, 1727177490),
(206, 'default', '{\"uuid\":\"7dcd9af4-962c-4417-b9e4-bd76d73cce8f\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"efewf\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177746, 1727177746),
(207, 'default', '{\"uuid\":\"460951db-a40c-4e6a-942e-99414e1eb88a\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:7:\\\"qwdwqdw\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177860, 1727177860),
(208, 'default', '{\"uuid\":\"2984f0e2-3f01-4192-b6cf-dcd848e94998\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"wqdwqdwqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727177991, 1727177991),
(209, 'default', '{\"uuid\":\"d332d7cb-e760-49c1-93e8-4db1b2222fb4\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"bro gando\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178451, 1727178451),
(210, 'default', '{\"uuid\":\"7d97acf2-00c0-4457-b5ab-e98f4127227d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"youuuu\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178464, 1727178464),
(211, 'default', '{\"uuid\":\"97a79195-3f43-4e03-a70a-a69c81fac70c\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"qwdwqdqd\\\";s:8:\\\"senderId\\\";i:230;s:10:\\\"senderName\\\";s:9:\\\"Shaheryar\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178595, 1727178595),
(212, 'default', '{\"uuid\":\"e1ac91b2-6f72-4bd1-8293-441c52012e1d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:11:\\\"qwdwqdwqdqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178635, 1727178635),
(213, 'default', '{\"uuid\":\"80dca88a-fd1e-450e-baaf-509539f2d5de\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:7:\\\"qdqwdqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178643, 1727178643),
(214, 'default', '{\"uuid\":\"6b97181e-0097-4f3e-86fa-c782918e17c8\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:11:\\\"qwdqwdqwddq\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178689, 1727178689),
(215, 'default', '{\"uuid\":\"c30c6cd3-d4c9-4e52-a7ef-fbd76e6d926e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdqwdqwd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178704, 1727178704),
(216, 'default', '{\"uuid\":\"2ea8fd74-4f5c-4349-9a42-d78dd515f4f6\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdqwdwqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178774, 1727178774),
(217, 'default', '{\"uuid\":\"cc0448cb-3e64-451d-bc86-00abcbdd485e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"qwdqwdwqdw\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178930, 1727178930),
(218, 'default', '{\"uuid\":\"df67ebfc-5954-4d50-87ba-3ea7deda4224\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"qwdwqqwwqdqwd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727178945, 1727178945),
(219, 'default', '{\"uuid\":\"74a76617-8ded-491f-a0bb-c3134faad324\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdqwdqwd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179245, 1727179245),
(220, 'default', '{\"uuid\":\"95f23af2-c707-4bce-99bc-e25f21d21085\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:12:\\\"qwdwqdqwdqwd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179379, 1727179379),
(221, 'default', '{\"uuid\":\"760d83cd-d938-4ff6-b1e3-38672a0a44f9\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"qwdwqdwqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179416, 1727179416),
(222, 'default', '{\"uuid\":\"769aa60e-f39f-4faf-ac74-fb3500057b94\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"oooho\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179427, 1727179427),
(223, 'default', '{\"uuid\":\"54bcaa76-ae0e-42bb-91d9-147f630bc953\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"bro\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179439, 1727179439),
(224, 'default', '{\"uuid\":\"4699ab1a-d77f-4550-b627-943bd1c447b3\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:4:\\\"you\\\\\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179452, 1727179452),
(225, 'default', '{\"uuid\":\"dd6a8b62-810c-4664-9649-8e8e87ac5ea6\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"wqdwdwqd\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179514, 1727179514),
(226, 'default', '{\"uuid\":\"928206af-8ab9-41bd-b93f-98cab1e6b125\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"wqdwqdwqdq\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179642, 1727179642),
(227, 'default', '{\"uuid\":\"81129331-3ac9-4bfe-9320-e677cf9e5765\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179700, 1727179700),
(228, 'default', '{\"uuid\":\"0eeae557-bc29-4ec8-9963-a5f19f94a39f\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"you there?\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179716, 1727179716),
(229, 'default', '{\"uuid\":\"b8f59f4b-76a6-421b-b749-fb2b2099fe9f\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179741, 1727179741),
(230, 'default', '{\"uuid\":\"6b63f5a2-c2fb-4bae-9056-d43549b99d56\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"bro\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179751, 1727179751),
(231, 'default', '{\"uuid\":\"d7ecf3ef-1068-4e1e-b34a-d3334bba565d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:12:\\\"how are you?\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179764, 1727179764),
(232, 'default', '{\"uuid\":\"197d4b70-c7c7-4552-b041-22555d78ed3e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:10:\\\"bro my bro\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179818, 1727179818),
(233, 'default', '{\"uuid\":\"602b0d4a-c1d8-45fd-b6fd-28560418ff6c\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:6:\\\"my bro\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179876, 1727179876),
(234, 'default', '{\"uuid\":\"810703c1-0b5f-4ade-ae9a-99419f9dd349\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"you goof\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179888, 1727179888),
(235, 'default', '{\"uuid\":\"66628123-23e4-42c6-9a28-b6ccf198c6c1\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:13:\\\"my bro my bri\\\";s:8:\\\"senderId\\\";i:233;s:10:\\\"senderName\\\";s:12:\\\"Second Buyer\\\";s:10:\\\"receiverId\\\";s:3:\\\"230\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727179898, 1727179898),
(236, 'default', '{\"uuid\":\"9dabf42d-8407-4d9f-ab55-27251a8eacfd\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:5:\\\"hello\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"232\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727250985, 1727250985),
(237, 'default', '{\"uuid\":\"f51408fe-2230-4598-b58c-b6d585ad5ea7\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:12:\\\"how are you?\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"232\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727250998, 1727250998),
(238, 'default', '{\"uuid\":\"4964c618-66f1-48c4-b1d8-4fc07d6085b4\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:9:\\\"i am good\\\";s:8:\\\"senderId\\\";i:232;s:10:\\\"senderName\\\";s:14:\\\"Muhammad Ahmed\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727251004, 1727251004),
(239, 'default', '{\"uuid\":\"71dd85ac-7787-4465-a685-562e07c07d33\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:232;s:10:\\\"senderName\\\";s:14:\\\"Muhammad Ahmed\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727251145, 1727251145),
(240, 'default', '{\"uuid\":\"1f5234e6-f8a0-439f-8f9d-81db074c0a68\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:8:\\\"you good\\\";s:8:\\\"senderId\\\";i:232;s:10:\\\"senderName\\\";s:14:\\\"Muhammad Ahmed\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727251153, 1727251153),
(241, 'default', '{\"uuid\":\"523d64ac-7685-45a1-aeb9-be7bc7d5e761\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:3:\\\"yes\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"232\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727251161, 1727251161),
(242, 'default', '{\"uuid\":\"1ec23977-5c68-41d5-8903-5f101a397840\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:2:\\\"hi\\\";s:8:\\\"senderId\\\";i:231;s:10:\\\"senderName\\\";s:16:\\\"Shaheryar Bhatti\\\";s:10:\\\"receiverId\\\";s:3:\\\"232\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727251175, 1727251175),
(243, 'default', '{\"uuid\":\"9f94c807-0eff-424a-970f-a4b7ce13a1c3\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:7:\\\"message\\\";s:12:\\\"how are you?\\\";s:8:\\\"senderId\\\";i:232;s:10:\\\"senderName\\\";s:14:\\\"Muhammad Ahmed\\\";s:10:\\\"receiverId\\\";s:3:\\\"231\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1727251180, 1727251180);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `is_read`, `created_at`, `updated_at`, `image`) VALUES
(1, 231, 232, 'hello', 1, '2024-09-25 02:56:24', '2024-09-25 02:59:52', NULL),
(2, 231, 232, 'how are you?', 1, '2024-09-25 02:56:38', '2024-09-25 02:59:52', NULL),
(3, 232, 231, 'i am good', 1, '2024-09-25 02:56:44', '2024-09-25 02:59:52', NULL),
(4, 232, 231, 'hi', 1, '2024-09-25 02:59:05', '2024-09-25 02:59:52', NULL),
(5, 232, 231, 'you good', 1, '2024-09-25 02:59:13', '2024-09-25 02:59:52', NULL),
(6, 231, 232, 'yes', 1, '2024-09-25 02:59:21', '2024-09-25 02:59:52', NULL),
(7, 231, 232, 'hi', 1, '2024-09-25 02:59:35', '2024-09-25 02:59:52', NULL),
(8, 232, 231, 'how are you?', 1, '2024-09-25 02:59:40', '2024-09-25 02:59:52', NULL);

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
(83, '2024_09_16_215220_add_password_to_sellers_table', 11),
(84, '2024_09_19_084659_create_offer_fields_table', 12),
(86, '2024_09_20_170817_create_messages_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fields`)),
  `description` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `buyer_message` text DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `stock` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `seller_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `offer_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `fields`, `description`, `long_description`, `buyer_message`, `price`, `stock`, `image`, `status`, `created_at`, `updated_at`, `seller_id`, `sub_category_id`, `offer_category_id`) VALUES
(1, '[\"Platform\",\"Level\",\"Stage\",\"Value-XBOX\",\"Value-43\",\"Value-1234\"]', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '💎70100 Diamonds💎\r\n🌺🟥47 level 10-22 chapter.\r\n🌺🟥The Legendary Damon, the Legendary Estrilda.\r\n🌺🟥Ascended Crassio, Wu-Kun, Guinneas.\r\n🌺🟥Skin for Research.\r\n🌺🟥+ Chest of the high-born Dragon (Doe)\r\n🌺🟥281k of total power\r\n🌺🟥11 m gold.\r\n🌺🟥The s1150 server.\r\n284 ordinary scrolls.\r\n🌺🟥18 faction hero scrolls.\r\n11 Stargazer Scrolls.\r\n9 Emblems of time.\r\n🌺🟥mail address.\r\n🌺🟥The account was created by me personally for sale, the native mail goes to the accounts, you can link your phone number to the mail and all the data to yourself, the account will be your personal one without passengers!\r\n🌺🟥Even if I\'m not online, you can buy the product for auto-delivery, after payment the data will come to your personal account and you can safely play and do everything for yourself, and change all the data.', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '22', '145', '[\"X9PmXMmkWBlEIlV58TgJYzz2p5BUK5Cqfx1es1Hd.jpg\",\"qtg8kLylGQKcejabBtb2H6cHalNUGRpCyVMeQTu4.jpg\",\"ABpuTCH2k0trFDibgO9aexoc6rjU0IhxI7Diyeub.jpg\"]', 1, '2024-09-20 02:12:18', '2024-09-21 17:46:16', 230, 3, 1),
(2, '[\"Platform\",\"Level\",\"Stage\",\"Value-PC\",\"Value-23\",\"Value-432\"]', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '23', '22', '[\"S1UYGFdDb8Hb9T1KJ2qJvHt7tiuIDtJaMqgPUkG8.png\"]', 1, '2024-09-22 09:06:35', '2024-09-22 14:08:51', 232, 3, 1),
(3, '[\"Platform\",\"Level\",\"Stage\",\"Value-IOS\",\"Value-22\",\"Value-21\"]', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', NULL, NULL, '22', '1122', '[\"wfZuhkw4AuzrYfLsminTf5oBGkYLu1HJi86Pms1P.jpg\",\"htnjWvfa0gz7q43cKy4EZJkmWZCVsU8fVjqehIPL.jpg\"]', 1, '2024-09-22 09:29:15', '2024-09-22 14:29:30', 232, 3, 1),
(4, '[\"Platform\",\"Level\",\"Stage\",\"Value-IOS\",\"Value-21\",\"Value-221\"]', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '💎【300 DIAMONDS】💎⭐BY ID⭐✅SAFE✅🎶OFFICIALLY🎶🎉100% GUARANTEED🎉', '11', '232', '[\"VHECyiJhwIvUickNi9KiQsLpWclqSb3HZi2OL2MX.png\",\"NQ2wnMX3VmfnWe7fZHHXMlR8SSDu2AFmZCoEoE8Y.jpg\"]', 1, '2024-09-22 09:31:01', '2024-09-22 09:31:01', 232, 2, 1);

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
-- Table structure for table `offer_fields`
--

CREATE TABLE `offer_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_category_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `values` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_fields`
--

INSERT INTO `offer_fields` (`id`, `offer_category_id`, `type`, `label`, `values`, `status`, `created_at`, `updated_at`) VALUES
(3, '1', '2', 'Platform', 'Andriod,IOS,PS,PC,XBOX', '1', '2024-09-19 04:07:30', '2024-09-19 04:07:30'),
(4, '1', '1', 'Level', NULL, '1', '2024-09-19 04:21:46', '2024-09-19 04:21:46'),
(5, '1', '1', 'Stage', NULL, '1', '2024-09-19 04:21:53', '2024-09-19 04:21:53'),
(6, '3', '2', 'Game', 'Asphalt 8,Asphalt Legends Unite,Asphalt Nitro,Asphalt Xtreme', '1', '2024-09-20 02:48:39', '2024-09-20 02:48:39');

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
  `password` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `full_name`, `country`, `email`, `messenger`, `messenger_link`, `dob`, `phone_number`, `country_code`, `selfie`, `id_card_front`, `id_card_back`, `games_products`, `other_info`, `stock_source`, `selling_elsewhere`, `created_at`, `updated_at`, `password`, `status`) VALUES
(1, 'seller test', 'Canada', 'sellertest@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-15', '5124277273', '+1', 'C:\\xampp\\tmp\\php934F.tmp', 'C:\\xampp\\tmp\\php937F.tmp', 'C:\\xampp\\tmp\\php9380.tmp', 'my name is aown abbas', 'my name is aown abbas', 'I farm my own items', 0, '2024-09-15 05:22:02', '2024-09-18 09:08:56', '$2y$12$hwu/AYdhBQHUH48LSIPLRuZxoajLdKD02UEQq/cuW5EqoGORZpDRy', 1),
(2, 'seller test', 'Canada', 'sellertest@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-15', '5124277273', '+1', 'uploads/selfie/yO7cQHefLosRYeKoAQO8dgdbRS7cBg2IdRQPMNIl.png', 'uploads/id_card_fronts/NmhMIgKj0rHPhEdCm1cmIXObsZXb79tQgKBtAFuo.png', 'uploads/id_card_backs/qDvC6gmmeAdFhwOZfglwlC8g6fpEejIGcw13DAtd.png', 'my name is aown abbas', 'my name is aown abbas', 'I farm my own items', 0, '2024-09-15 05:22:02', '2024-09-15 05:22:02', '$2y$12$hwu/AYdhBQHUH48LSIPLRuZxoajLdKD02UEQq/cuW5EqoGORZpDRy', 0),
(3, 'Aown Abbas', 'USA', 'codebyaown@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-20', '5124277273', '+1', 'C:\\xampp\\tmp\\php982A.tmp', 'C:\\xampp\\tmp\\php983B.tmp', 'C:\\xampp\\tmp\\php983C.tmp', 'this is just a text', 'this is just a text', 'I farm my own items', 0, '2024-09-15 05:24:15', '2024-09-15 05:24:15', '', 0),
(4, 'Aown Abbas', 'USA', 'codebyaown@gmail.com', 'Telegram', 'https://www.telegram.com/', '2024-09-20', '5124277273', '+1', 'uploads/selfie/EGPxnykhxT1w0317o1ilmpStkcR0tYTCWLRlZJWZ.png', 'uploads/id_card_fronts/aKz0WPe00R8TFWATmHCidUXFVtUZXPhYFWdojK0e.png', 'uploads/id_card_backs/8UWK9pH39YngDeofZCUqPXzB1J4g9gKKSrKD0ATS.png', 'this is just a text', 'this is just a text', 'I farm my own items', 0, '2024-09-15 05:24:15', '2024-09-15 05:24:15', '', 0),
(5, 'seller2@gmai.com', 'Canada', 'codebyaown@gmail.com', 'Discord', NULL, '2024-09-25', '03284938053', '+1', 'uploads/selfie/NaDEHuFnpavUZHe7SejGXr90CzO4EwuELXAxRN1b.png', 'uploads/id_card_fronts/FwBStMsbePJVrHqrvlujhfeVtKfx2xwc1aKVtQYG.png', 'uploads/id_card_backs/zN0dseU9XbfULmGxz2MX9GngMTpYNMxSoiFbM8eQ.png', 'my name is ..', 'my name is aown ababs', 'I farm my own items', 1, '2024-09-15 05:28:55', '2024-09-15 05:28:55', '', 0),
(6, 'seller6@gmai.com', 'Canada', 'codebyaown@gmail.com', 'Discord', 'https://www.telegram.com/', '2024-09-25', '03284938053', '+1', 'uploads/selfie/k8SLFIH0hI3hf1iMNDLYNF4Y11UBVqWdVE5ixZJX.png', 'uploads/id_card_fronts/gbLYeyP8EyzWa57bdzEFqj0eN4I0GIHWMueqzFZC.png', 'uploads/id_card_backs/tWNusZ9WLOKU07wuNt8il6XGd3S2ZQIdnVzuSIzL.png', 'my name is ..', 'my name is aown ababs', 'I farm my own items', 1, '2024-09-15 05:29:38', '2024-09-15 05:29:38', '', 0);

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
('bT60M1qDO8SN98qHaWq0XnGyBaj2im1nWKG5kgw2', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YToxNDp7czo2OiJfdG9rZW4iO3M6NDA6IjVxenpjZW9qNmNKaEdjS2sxTlJnU3dXbUFtYmoxaTEzaFdMdVZVbGsiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIzOiJodHRwOi8vbG9jYWxob3N0L2Z1bnBheSI7fXM6OToidXNlcl90eXBlIjtzOjU6ImJ1eWVyIjtzOjc6InVzZXJfaWQiO2k6MjMxO3M6OToidXNlcl9uYW1lIjtzOjE2OiJTaGFoZXJ5YXIgQmhhdHRpIjtzOjU6ImVtYWlsIjtzOjE1OiJidXllckBnbWFpbC5jb20iO3M6NToiaW1hZ2UiO047czoxMDoiY3JlYXRlZF9hdCI7TzoyNToiSWxsdW1pbmF0ZVxTdXBwb3J0XENhcmJvbiI6Mzp7czo0OiJkYXRlIjtzOjI2OiIyMDI0LTA5LTIxIDE3OjUzOjMyLjAwMDAwMCI7czoxMzoidGltZXpvbmVfdHlwZSI7aTozO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjt9czo4OiJpc19sb2dpbiI7aToxO3M6MTY6ImxvZ291dF9kYXRlX3RpbWUiO3M6MTk6IjIwMjQtMDktMjQgMTI6MDk6NTciO3M6MTU6InN1Yl9jYXRlZ29yeV9pZCI7aTozO3M6MTc6InN1Yl9jYXRlZ29yeV9zbHVnIjtzOjY6InRvcC11cCI7czoxNzoib2ZmZXJfY2F0ZWdvcnlfaWQiO2k6MTt9', 1727251191),
('oiNluGlnjQjIkjlsBPD6V5i00d0B6uV5yBYAXadp', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6IkpaMTh0cFBWZFpDVllVdE1WYUZFUTlyZU11c2RlUmpvN3BpSE1ZaXkiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIzOiJodHRwOi8vbG9jYWxob3N0L2Z1bnBheSI7fXM6OToidXNlcl90eXBlIjtzOjY6InNlbGxlciI7czo3OiJ1c2VyX2lkIjtpOjIzMjtzOjk6InVzZXJfbmFtZSI7czoxNDoiTXVoYW1tYWQgQWhtZWQiO3M6NToiZW1haWwiO3M6MTU6ImFobWVkQGdtYWlsLmNvbSI7czo1OiJpbWFnZSI7TjtzOjEwOiJjcmVhdGVkX2F0IjtPOjI1OiJJbGx1bWluYXRlXFN1cHBvcnRcQ2FyYm9uIjozOntzOjQ6ImRhdGUiO3M6MjY6IjIwMjQtMDktMjIgMTQ6MDU6MjUuMDAwMDAwIjtzOjEzOiJ0aW1lem9uZV90eXBlIjtpOjM7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO31zOjg6ImlzX2xvZ2luIjtpOjE7czoxNjoibG9nb3V0X2RhdGVfdGltZSI7czoxOToiMjAyNC0wOS0yMiAxNzowMTo0MyI7fQ==', 1727251219);

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
(25, 1, 3, 'dropdown options', 'dropdown-options', 1, '2024-09-13 04:56:15', '2024-09-19 01:28:59'),
(27, 2, 3, 'legends subcategory', 'legends-subcategory', 1, '2024-09-14 01:41:26', '2024-09-14 01:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `su_head` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `address` varchar(255) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `org_o` varchar(255) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `authenticated_id` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `messenger` varchar(255) DEFAULT NULL,
  `messenger_link` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `selfie` varchar(255) DEFAULT NULL,
  `id_card_front` varchar(255) DEFAULT NULL,
  `id_card_back` varchar(255) DEFAULT NULL,
  `games_products` text DEFAULT NULL,
  `other_info` text DEFAULT NULL,
  `stock_source` varchar(255) DEFAULT NULL,
  `selling_elsewhere` tinyint(1) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL COMMENT '1=admin, 2=seller, 3=buyer',
  `is_login` int(11) DEFAULT 0,
  `logout_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_number`, `email`, `gender`, `su_head`, `email_verified_at`, `password`, `status`, `address`, `unique_id`, `org_o`, `profile_img`, `created_by`, `remember_token`, `created_at`, `updated_at`, `authenticated_id`, `country`, `messenger`, `messenger_link`, `dob`, `country_code`, `selfie`, `id_card_front`, `id_card_back`, `games_products`, `other_info`, `stock_source`, `selling_elsewhere`, `role_id`, `is_login`, `logout_date_time`) VALUES
(201, 'Admin', '1344421', 'admin@admin.com', 'male', 'Farasat', NULL, '$2y$12$hwu/AYdhBQHUH48LSIPLRuZxoajLdKD02UEQq/cuW5EqoGORZpDRy', 1, 'eced', 'ABC@$23836420240805111758', NULL, 'userprofile/1723804263_avatar5.png', NULL, NULL, '2023-10-10 00:13:26', '2024-09-17 09:42:12', '340583', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL),
(230, 'Shaheryar', '03315146546', 'seller@gmail.com', NULL, NULL, NULL, '$2y$12$wbVDhTp6y/7YHX/.W3.QrOzr/v9AeHOPrMXUd/gVTACvK3FTqPzv6', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-21 12:41:54', '2024-09-24 01:56:03', NULL, 'USA', 'Telegram', 'www.google.com', '2024-09-09', '+1', 'uploads/selfie/FczFsVJzZV5JfrpkKz1oOIYSboKZt8FNwkLcGE2Q.jpg', 'uploads/id_card_fronts/lz2PPdWyc93R0mjlYrtVZkgE2ErGGwcRb9L8O9eF.jpg', 'uploads/id_card_backs/yqPezEGdv3YKa3x0SJLJwIVU3pXXBA2J7RuVjmcX.jpg', 'Counter Strike', NULL, 'I farm my own items', 1, 2, 1, '2024-09-24 01:47:28'),
(231, 'Shaheryar Bhatti', NULL, 'buyer@gmail.com', NULL, NULL, NULL, '$2y$12$KsqywICehWoo9zaKtYW2.eRPshZV8y9S9U.8Uk4pmBZmYnLvgULtu', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-21 12:53:32', '2024-09-25 02:50:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2024-09-24 07:09:57'),
(232, 'Muhammad Ahmed', '3315146546', 'ahmed@gmail.com', NULL, NULL, NULL, '$2y$12$USZOWV5/zl.FuyWrd9haTeyOGwFGgYHHLq2d.XT6H3VO6a5wFErwO', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-22 09:05:25', '2024-09-25 02:51:13', NULL, 'Canada', 'Telegram', 'www.google.com', '2024-09-03', '+1', 'uploads/selfie/HjQWdqGt9c6VNF2ap4gbkQVkJd23lNrssbmJp7ph.jpg', 'uploads/id_card_fronts/gfVq2qKd9M6REchQDC9wCutDIkr10jq14RGhdycx.png', 'uploads/id_card_backs/0dDb4rjtuSg3PbQnEtqeFUq7yiZEJtFC7rfVnPcs.png', 'game', 'game', 'I farm my own items', 0, 2, 1, '2024-09-22 12:01:43'),
(233, 'Second Buyer', NULL, 'buyer2@gmail.com', NULL, NULL, NULL, '$2y$12$.GCCXLzxJjIrr3DxY1Eeu.lSoiDPr/a.b8EgSZPJbIMx2ErGoOFEO', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 00:43:35', '2024-09-24 07:10:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2024-09-24 06:11:11');

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_categories`
--
ALTER TABLE `offer_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_fields`
--
ALTER TABLE `offer_fields`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offer_categories`
--
ALTER TABLE `offer_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `offer_fields`
--
ALTER TABLE `offer_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

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
