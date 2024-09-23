-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 01:58 PM
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
(1, 231, 230, 'hi, How are you?', 0, '2024-09-22 09:17:01', '2024-09-22 09:17:01', NULL),
(2, 231, 230, 'are you there?', 0, '2024-09-22 09:17:01', '2024-09-22 09:17:01', NULL),
(3, 230, 231, 'Hi, i am fine how are you?', 0, '2024-09-22 09:17:01', '2024-09-22 09:17:01', NULL),
(4, 233, 230, 'Hi, How are you?', 0, '2024-09-22 09:17:01', '2024-09-22 09:17:01', NULL),
(5, 230, 233, 'Hi, i am good how are you?', 0, '2024-09-22 09:17:01', '2024-09-22 09:17:01', NULL),
(7, 233, 230, 'what are you doing?', 0, '2024-09-23 01:35:54', '2024-09-23 01:35:54', NULL),
(8, 231, 230, 'i am good', 0, '2024-09-23 01:37:46', '2024-09-23 01:37:46', NULL),
(9, 230, 231, 'how can i help you?', 0, '2024-09-23 01:38:59', '2024-09-23 01:38:59', NULL),
(10, 231, 230, 'could you please send me the setup?', 0, '2024-09-23 01:40:32', '2024-09-23 01:40:32', NULL),
(11, 231, 230, 'are you there?', 0, '2024-09-23 01:46:41', '2024-09-23 01:46:41', NULL),
(12, 231, 230, 'are you there?', 0, '2024-09-23 01:47:41', '2024-09-23 01:47:41', NULL),
(13, 231, 230, 'you there?', 0, '2024-09-23 01:47:51', '2024-09-23 01:47:51', NULL),
(14, 231, 230, 'are you therE?', 0, '2024-09-23 01:50:19', '2024-09-23 01:50:19', NULL),
(15, 231, 230, 'are you there?', 0, '2024-09-23 01:55:41', '2024-09-23 01:55:41', NULL),
(16, 231, 230, 'hi', 0, '2024-09-23 01:55:52', '2024-09-23 01:55:52', NULL),
(17, 231, 230, 'are you there?', 0, '2024-09-23 01:57:00', '2024-09-23 01:57:00', NULL),
(18, 231, 230, 'hi', 0, '2024-09-23 01:57:21', '2024-09-23 01:57:21', NULL),
(19, 231, 230, 'hi shaheryar', 0, '2024-09-23 01:58:07', '2024-09-23 01:58:07', NULL),
(20, 231, 230, 'shaheryar', 0, '2024-09-23 01:58:20', '2024-09-23 01:58:20', NULL),
(21, 231, 230, 'hi are you there?', 0, '2024-09-23 02:00:01', '2024-09-23 02:00:01', NULL),
(22, 231, 230, 'wqdqwd', 0, '2024-09-23 02:02:34', '2024-09-23 02:02:34', NULL),
(23, 231, 230, 'wdwdw', 0, '2024-09-23 02:02:45', '2024-09-23 02:02:45', NULL),
(24, 231, 230, 'why no calling', 0, '2024-09-23 02:04:16', '2024-09-23 02:04:16', NULL),
(25, 231, 230, 'hiasas', 0, '2024-09-23 02:05:06', '2024-09-23 02:05:06', NULL),
(26, 231, 230, 'qwdqdqdqwd', 0, '2024-09-23 02:06:11', '2024-09-23 02:06:11', NULL),
(27, 231, 230, 'hi bro', 0, '2024-09-23 02:08:02', '2024-09-23 02:08:02', NULL),
(28, 231, 230, 'hi bro', 0, '2024-09-23 02:25:55', '2024-09-23 02:25:55', NULL),
(29, 231, 230, 'qwdwdwq', 0, '2024-09-23 02:26:04', '2024-09-23 02:26:04', NULL),
(30, 231, 230, 'qwdwqdqwd', 0, '2024-09-23 02:26:42', '2024-09-23 02:26:42', NULL),
(31, 231, 230, 'you there', 0, '2024-09-23 02:26:48', '2024-09-23 02:26:48', NULL),
(32, 231, 230, 'wdqwdqd', 0, '2024-09-23 02:27:38', '2024-09-23 02:27:38', NULL),
(33, 231, 230, 'qwdqwdqwd', 0, '2024-09-23 02:29:33', '2024-09-23 02:29:33', NULL),
(34, 231, 230, 'how are you?', 0, '2024-09-23 02:29:47', '2024-09-23 02:29:47', NULL),
(35, 231, 230, 'hi there?', 0, '2024-09-23 02:30:02', '2024-09-23 02:30:02', NULL),
(36, 231, 230, 'qwdqdwqdqwd', 0, '2024-09-23 02:30:50', '2024-09-23 02:30:50', NULL),
(37, 231, 230, '23fwdewfwef', 0, '2024-09-23 02:30:53', '2024-09-23 02:30:53', NULL),
(38, 231, 230, 'hi bro', 0, '2024-09-23 02:34:11', '2024-09-23 02:34:11', NULL),
(39, 231, 230, 'hi bro', 0, '2024-09-23 02:50:39', '2024-09-23 02:50:39', NULL),
(40, 231, 230, 'why message not received', 0, '2024-09-23 02:50:58', '2024-09-23 02:50:58', NULL),
(41, 231, 230, 'qwdqwdqwd', 0, '2024-09-23 02:57:27', '2024-09-23 02:57:27', NULL),
(42, 231, 230, 'qwdqwwqwqd', 0, '2024-09-23 03:02:34', '2024-09-23 03:02:34', NULL),
(43, 231, 230, 'qwdqwdqwd', 0, '2024-09-23 03:03:09', '2024-09-23 03:03:09', NULL),
(44, 231, 230, 'qwdqwwqdqwd', 0, '2024-09-23 03:03:31', '2024-09-23 03:03:31', NULL),
(45, 231, 230, 'qwdwqdqddqd', 0, '2024-09-23 03:06:06', '2024-09-23 03:06:06', NULL),
(46, 231, 230, 'qwdwqddqd', 0, '2024-09-23 03:31:52', '2024-09-23 03:31:52', NULL),
(47, 231, 230, 'hi', 0, '2024-09-23 03:44:25', '2024-09-23 03:44:25', NULL),
(48, 231, 230, 'qwdqwdwqd', 0, '2024-09-23 03:46:49', '2024-09-23 03:46:49', NULL),
(49, 231, 230, 'wefweffwe', 0, '2024-09-23 03:49:39', '2024-09-23 03:49:39', NULL),
(50, 231, 230, 'qwdqdqwdqwd', 0, '2024-09-23 03:53:29', '2024-09-23 03:53:29', NULL),
(51, 231, 230, 'qwdqwdqwddqd', 0, '2024-09-23 03:54:15', '2024-09-23 03:54:15', NULL),
(52, 231, 230, 'qwddqwdqd', 0, '2024-09-23 03:54:23', '2024-09-23 03:54:23', NULL),
(53, 231, 230, 'qwdqwdqdqwd', 0, '2024-09-23 03:55:43', '2024-09-23 03:55:43', NULL),
(54, 231, 230, 'qdwqdwqd', 0, '2024-09-23 04:03:03', '2024-09-23 04:03:03', NULL),
(55, 231, 230, 'qwdqwddq', 0, '2024-09-23 04:04:43', '2024-09-23 04:04:43', NULL),
(56, 231, 230, 'qwdqdqwdd', 0, '2024-09-23 04:05:15', '2024-09-23 04:05:15', NULL),
(57, 231, 230, 'qwdwdqwdqd', 0, '2024-09-23 04:05:59', '2024-09-23 04:05:59', NULL),
(58, 231, 230, 'qdqdqwdqwd', 0, '2024-09-23 04:07:00', '2024-09-23 04:07:00', NULL),
(59, 231, 230, 'qwdqwdqdwd', 0, '2024-09-23 04:08:05', '2024-09-23 04:08:05', NULL),
(60, 231, 230, 'qwdqwdqwdqwd', 0, '2024-09-23 04:14:24', '2024-09-23 04:14:24', NULL),
(61, 231, 230, 'qwdqwdwqd', 0, '2024-09-23 04:14:31', '2024-09-23 04:14:31', NULL),
(62, 231, 230, 'qwdqwdqwddwqd', 0, '2024-09-23 04:15:01', '2024-09-23 04:15:01', NULL),
(63, 231, 230, 'qwdwqdqwdqwd', 0, '2024-09-23 04:15:07', '2024-09-23 04:15:07', NULL),
(64, 231, 230, 'qwdqwdqdwqd', 0, '2024-09-23 04:19:13', '2024-09-23 04:19:13', NULL),
(65, 231, 230, 'qwdqwdqwdqwd', 0, '2024-09-23 04:19:58', '2024-09-23 04:19:58', NULL),
(66, 231, 230, 'qwdqwdqwdqwd', 0, '2024-09-23 04:23:09', '2024-09-23 04:23:09', NULL),
(67, 231, 230, 'qdwqwdqdqdqwd', 0, '2024-09-23 04:23:13', '2024-09-23 04:23:13', NULL),
(68, 231, 230, 'qdwdwww22222', 0, '2024-09-23 04:23:30', '2024-09-23 04:23:30', NULL),
(69, 231, 230, 'qwdqwdqwddw', 0, '2024-09-23 04:24:14', '2024-09-23 04:24:14', NULL),
(70, 231, 230, 'qwdqwdqwddqwd', 0, '2024-09-23 04:30:00', '2024-09-23 04:30:00', NULL),
(71, 231, 230, 'qwdqwdqwdd', 0, '2024-09-23 04:37:04', '2024-09-23 04:37:04', NULL),
(72, 231, 230, 'qwdwqd22222', 0, '2024-09-23 04:37:09', '2024-09-23 04:37:09', NULL),
(73, 231, 230, 'hello', 0, '2024-09-23 04:37:31', '2024-09-23 04:37:31', NULL),
(74, 231, 230, 'qwdqwdqwdqwdd', 0, '2024-09-23 04:38:54', '2024-09-23 04:38:54', NULL),
(75, 231, 230, 'qdqwdwqdqwd', 0, '2024-09-23 04:39:08', '2024-09-23 04:39:08', NULL),
(76, 231, 230, 'qwdqwdqwd', 0, '2024-09-23 04:44:55', '2024-09-23 04:44:55', NULL),
(77, 231, 230, 'qwdqwdqdwdq', 0, '2024-09-23 04:45:34', '2024-09-23 04:45:34', NULL),
(78, 231, 230, 'qwdqwdqd', 0, '2024-09-23 04:45:48', '2024-09-23 04:45:48', NULL),
(79, 231, 230, 'qwdqdqdd', 0, '2024-09-23 04:56:56', '2024-09-23 04:56:56', NULL),
(80, 231, 230, 'qwdqwdqwddqdqw', 0, '2024-09-23 04:57:18', '2024-09-23 04:57:18', NULL),
(81, 231, 230, 'qdqwqd', 0, '2024-09-23 05:33:32', '2024-09-23 05:33:32', NULL),
(82, 231, 230, 'hellow brother', 0, '2024-09-23 05:38:46', '2024-09-23 05:38:46', NULL),
(83, 231, 230, 'how are you?', 0, '2024-09-23 05:39:35', '2024-09-23 05:39:35', NULL),
(84, 231, 230, 'you there?', 0, '2024-09-23 05:42:32', '2024-09-23 05:42:32', NULL),
(85, 231, 230, 'hi', 0, '2024-09-23 05:43:22', '2024-09-23 05:43:22', NULL),
(86, 230, 231, 'hi brother', 0, '2024-09-23 05:44:03', '2024-09-23 05:44:03', NULL),
(87, 231, 230, 'hi hellow', 0, '2024-09-23 05:44:46', '2024-09-23 05:44:46', NULL),
(88, 231, 230, 'qwdqwdqd', 0, '2024-09-23 05:47:26', '2024-09-23 05:47:26', NULL),
(89, 231, 230, 'hellow', 0, '2024-09-23 05:47:45', '2024-09-23 05:47:45', NULL),
(90, 231, 230, 'hellow', 0, '2024-09-23 05:48:33', '2024-09-23 05:48:33', NULL),
(91, 231, 230, 'qwdwqd', 0, '2024-09-23 05:49:39', '2024-09-23 05:49:39', NULL),
(92, 231, 230, 'qwdwqdqwd', 0, '2024-09-23 05:50:12', '2024-09-23 05:50:12', NULL),
(93, 230, 231, 'hi there', 0, '2024-09-23 05:50:38', '2024-09-23 05:50:38', NULL),
(94, 231, 230, 'wefewf', 0, '2024-09-23 05:50:53', '2024-09-23 05:50:53', NULL),
(95, 231, 230, 'qwdwqdwq', 0, '2024-09-23 05:51:37', '2024-09-23 05:51:37', NULL),
(96, 231, 230, 'qwdwqdwqd', 0, '2024-09-23 05:56:24', '2024-09-23 05:56:24', NULL),
(97, 231, 230, 'qdwqwdqwdqd', 0, '2024-09-23 06:07:47', '2024-09-23 06:07:47', NULL),
(98, 231, 230, 'qwddqdqwdqwd', 0, '2024-09-23 06:08:07', '2024-09-23 06:08:07', NULL),
(99, 231, 230, 'qwdwqdqwdqwd', 0, '2024-09-23 06:09:07', '2024-09-23 06:09:07', NULL),
(100, 231, 230, 'qwdqwdwqdqwd', 0, '2024-09-23 06:10:18', '2024-09-23 06:10:18', NULL);

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
('k1b9twwGt78ujsfJhUzBYLc6vkkBJd1c9n5CXM58', 201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YToxNTp7czo2OiJfdG9rZW4iO3M6NDA6IjhqbU9HTWNHWHhaMXVMSTA4SUJRQnNmYkt2MklVNVltV3o4cU00MTMiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vbG9jYWxob3N0L2Z1bnBheS91bnJlYWQtbWVzc2FnZXMtY291bnQiO31zOjk6InVzZXJfdHlwZSI7czo1OiJidXllciI7czo3OiJ1c2VyX2lkIjtpOjIzMTtzOjk6InVzZXJfbmFtZSI7czoxNjoiU2hhaGVyeWFyIEJoYXR0aSI7czo1OiJlbWFpbCI7czoxNToiYnV5ZXJAZ21haWwuY29tIjtzOjU6ImltYWdlIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO086MjU6IklsbHVtaW5hdGVcU3VwcG9ydFxDYXJib24iOjM6e3M6NDoiZGF0ZSI7czoyNjoiMjAyNC0wOS0yMSAxNzo1MzozMi4wMDAwMDAiO3M6MTM6InRpbWV6b25lX3R5cGUiO2k6MztzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7fXM6ODoiaXNfbG9naW4iO2k6MTtzOjE2OiJsb2dvdXRfZGF0ZV90aW1lIjtzOjE5OiIyMDI0LTA5LTIzIDExOjQ2OjQ0IjtzOjE3OiJzdWJfY2F0ZWdvcnlfc2x1ZyI7czo2OiJ0b3AtdXAiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIwMTtzOjE1OiJzdWJfY2F0ZWdvcnlfaWQiO2k6MztzOjE3OiJvZmZlcl9jYXRlZ29yeV9pZCI7aToxO30=', 1727092701),
('nQD5ulrqGpFHNCYZyUxUrQaYwOnpmx8KyBKrYYXF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6IndkbGF4ODZEOFRuOTJMYUJ2cU5wb1lFY2NKaTdET2RJVU1abGJMbTciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vbG9jYWxob3N0L2Z1bnBheS91bnJlYWQtbWVzc2FnZXMtY291bnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6InVzZXJfdHlwZSI7czo2OiJzZWxsZXIiO3M6NzoidXNlcl9pZCI7aToyMzA7czo5OiJ1c2VyX25hbWUiO3M6OToiU2hhaGVyeWFyIjtzOjU6ImVtYWlsIjtzOjE2OiJzZWxsZXJAZ21haWwuY29tIjtzOjU6ImltYWdlIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO086MjU6IklsbHVtaW5hdGVcU3VwcG9ydFxDYXJib24iOjM6e3M6NDoiZGF0ZSI7czoyNjoiMjAyNC0wOS0yMSAxNzo0MTo1NC4wMDAwMDAiO3M6MTM6InRpbWV6b25lX3R5cGUiO2k6MztzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7fXM6ODoiaXNfbG9naW4iO2k6MTtzOjE2OiJsb2dvdXRfZGF0ZV90aW1lIjtzOjE5OiIyMDI0LTA5LTIyIDE3OjMyOjAzIjt9', 1727092700);

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
(230, 'Shaheryar', '03315146546', 'seller@gmail.com', NULL, NULL, NULL, '$2y$12$wbVDhTp6y/7YHX/.W3.QrOzr/v9AeHOPrMXUd/gVTACvK3FTqPzv6', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-21 12:41:54', '2024-09-23 00:45:16', NULL, 'USA', 'Telegram', 'www.google.com', '2024-09-09', '+1', 'uploads/selfie/FczFsVJzZV5JfrpkKz1oOIYSboKZt8FNwkLcGE2Q.jpg', 'uploads/id_card_fronts/lz2PPdWyc93R0mjlYrtVZkgE2ErGGwcRb9L8O9eF.jpg', 'uploads/id_card_backs/yqPezEGdv3YKa3x0SJLJwIVU3pXXBA2J7RuVjmcX.jpg', 'Counter Strike', NULL, 'I farm my own items', 1, 2, 1, '2024-09-22 12:32:03'),
(231, 'Shaheryar Bhatti', NULL, 'buyer@gmail.com', NULL, NULL, NULL, '$2y$12$KsqywICehWoo9zaKtYW2.eRPshZV8y9S9U.8Uk4pmBZmYnLvgULtu', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-21 12:53:32', '2024-09-23 06:46:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2024-09-23 06:46:44'),
(232, 'Muhammad Ahmed', '3315146546', 'ahmed@gmail.com', NULL, NULL, NULL, '$2y$12$USZOWV5/zl.FuyWrd9haTeyOGwFGgYHHLq2d.XT6H3VO6a5wFErwO', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-22 09:05:25', '2024-09-22 12:01:43', NULL, 'Canada', 'Telegram', 'www.google.com', '2024-09-03', '+1', 'uploads/selfie/HjQWdqGt9c6VNF2ap4gbkQVkJd23lNrssbmJp7ph.jpg', 'uploads/id_card_fronts/gfVq2qKd9M6REchQDC9wCutDIkr10jq14RGhdycx.png', 'uploads/id_card_backs/0dDb4rjtuSg3PbQnEtqeFUq7yiZEJtFC7rfVnPcs.png', 'game', 'game', 'I farm my own items', 0, 2, 0, '2024-09-22 12:01:43'),
(233, 'Second Buyer', NULL, 'buyer2@gmail.com', NULL, NULL, NULL, '$2y$12$.GCCXLzxJjIrr3DxY1Eeu.lSoiDPr/a.b8EgSZPJbIMx2ErGoOFEO', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 00:43:35', '2024-09-23 01:37:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, '2024-09-23 01:37:27');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
