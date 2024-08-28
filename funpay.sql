-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2024 at 07:30 PM
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
(8, '2024_08_08_085420_create_answersheet_table', 3);

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
('irxkAB6BeUvWA4swI4q0u4Ne9CmseX5RQWNc7YZU', 201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid0xMclZuQk1QN1Ruem5kdVlycldMUzFCa21UT05mVGJIelh0SnZjNiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cDovL2xvY2FsaG9zdC9mdW5wYXkvZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvZnVucGF5L2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIwMTt9', 1724862486),
('JOnvueU8EVfRTBeBM0iHdtTlSTtN0QtOzPRhAVHa', 201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaXNyRnZwMmZwT3g5MGEwQmJmVGpVd0EzbG1iSU9tRlBkN25ScGg2WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvZnVucGF5L2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIwMTt9', 1724866169),
('kBvqx6DO7SBl81RBofCX7JnKX9Jli8xwAeF9LOCD', 201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMHloSG1xYWx3WkxWTUFTa3NWSDgxclhORUpabnFuZHlsblZWSFZYMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvZnVucGF5L2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvZnVucGF5L2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIwMTt9', 1724854329),
('ZG91sTNOK9uVBdACE5bZ8iHJI0G4ZEGv7IyxIkYZ', 201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicGtPQVVUR1pNNUw0Y0ROb0dzVHFHYXMwYVNaZ2M3cWp0NEdNSlRKcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvZnVucGF5L2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIwMTt9', 1724849700);

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
(1, 4, 0, 'Abdul Ghani Waseem', 'RIH', 'Professor', '+923093456784', 'ABDUL.GHANI@RIPHAH.EDU.PK', 'male', 'fer', 570, 'Muhammad Farooq', 570, 'Muhammad Farooq', NULL, '$2y$10$w4Fx5aU2vDM7wpbhGXVeOOZhPmLaz2GQa8Q.FXRKCdsbfoFrrDvru', 1, 2, 'aser', NULL, NULL, '1722930027_2.jpg', NULL, NULL, '2024-01-10 00:13:26', '2024-08-06 02:40:27', NULL),
(2, 5, 0, 'Najam us Saqib', 'IIMC', 'Incharge Skill Lab', NULL, 'NAJAM.USSAQIB@RIPHAH.EDU.PK', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 10, 0, 'Aamir Sohail', 'PRH', 'Admin Officer', '4333', 'AMIR.SOHAIL@RIPHAH.EDU.PK', 'male', '', 502, 'Jawad Ahmed', 502, 'Jawad Ahmed', NULL, '$2y$10$.uAKIKYB5QFH/j09ueF9JO2bmwfENqqGkk8El70tLDGkUUE4BxXDK', 1, 2, 'asw', NULL, NULL, NULL, NULL, NULL, '2024-02-26 12:00:00', '2024-02-26 12:00:00', NULL),
(4, 16, 0, 'Muhammad Younas', 'IIMC', 'Office Executive', NULL, 'MUHAMMAD.YOUNIS@RIPHAH.EDU.PK', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 18, 0, 'Saad Naeem Zafar', 'RISE', 'Research Professor', NULL, 'SAAD.ZAFAR@RIPHAH.EDU.PK', NULL, '', 1230, 'Muhammad Zubair', 1230, 'Muhammad Zubair', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 24, 0, 'Abdul Razzaq', 'UNIV SECRETARIAT', 'Assistant Manager Procurement', NULL, 'ABDUL.RAZZAQ@RIPHAH.EDU.PK', NULL, '', 3408, 'Ammar Bilal', 3408, 'Ammar Bilal', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 25, 0, 'Nadeem Akhtar', 'IIMC', 'Lab Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 63, 'Muhammad Ayaz Bhatti', 63, 'Muhammad Ayaz Bhatti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 26, 0, 'M. Ilyas', 'IIDH', 'Admin Officer', NULL, 'M.ILYAS@RIPHAH.EDU.PK', NULL, '', 90, 'Abdul Razzaq Khan', 90, 'Abdul Razzaq Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 30, 0, 'Muhammad Khalil', 'OPERATIONS I-14 CAMPUS', 'Office Assistant', NULL, 'MUHAMMAD.KHALIL@RIPHAH.EDU.PK', NULL, '', 899, 'Hassnain Iqbal', 899, 'Hassnain Iqbal', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 33, 0, 'Hassan Surbuland Khan', 'OPERATIONS LAHORE', 'Dy.Manager Administration', NULL, 'HASSAN.SURBULAND@RIPHAH.EDU.PK', NULL, '', 5345, 'Ibrar Hussain', 5345, 'Ibrar Hussain', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 36, 0, 'Shoaib Ahmad', 'IIMC', 'Student Coordination Executive', NULL, 'SHOAIB.AHMAD@RIPHAH.EDU.PK', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 38, 0, 'Muhammad Shafique', 'IIDC', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 4061, 'Maleha Asim', 776, 'Abeerah Zainab', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 39, 0, 'Shahina Yasmin', 'PRH', 'Professor', NULL, 'SHAHINA.YASMIN@RIPHAH.EDU.PK', NULL, '', 298, 'Muhammad Nadim Akbar', 298, 'Muhammad Nadim Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 40, 0, 'Muhammad Najm us Saqib', 'OPERATIONS I-14 CAMPUS', 'Dy.Manager Administration', NULL, 'NAJAM.SAQIB@RIPHAH.EDU.PK', NULL, '', 899, 'Hassnain Iqbal', 899, 'Hassnain Iqbal', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 50, 0, 'Rehana Kausar (Sr)', 'PRH', 'Ward Coordinator', NULL, 'NOT APPLICABLE', NULL, '', 3341, 'Farah Deeba', 3341, 'Farah Deeba', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 53, 0, 'Muhammad Kaleem', 'IIMC', 'Officer Administration', NULL, 'MUHAMMAD.KALEEM@RIPHAH.EDU.PK', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 56, 0, 'Said Alam', 'PRH', 'Endoscopy Technician', NULL, 'NOT APPLICABLE', NULL, '', 526, 'Arbas Waleed', 526, 'Arbas Waleed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 63, 0, 'Muhammad Ayaz Bhatti', 'IIMC', 'Professor', NULL, 'AYAZ.BHATTI@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 1255, 'Azhar Rashid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 65, 0, 'Muhammad Tahir', 'PRH', 'Professor', NULL, 'MUHAMMAD.TAHIR@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 665, 'Omer Awab Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 68, 0, 'Muhammad Naseer', 'RIH', 'Manager Operations', NULL, 'MUHAMMAD.NASEER@RIPHAH.EDU.PK', NULL, '', 977, 'Saif Ullah Khan', 5197, 'Khawaja Tasawor Riaz', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 72, 0, 'Obaid ur Rehman', 'RISE', 'Manager Compliance & Security', NULL, 'OBAID@RIPHAH.EDU.PK', NULL, '', 1230, 'Muhammad Zubair', 1230, 'Muhammad Zubair', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 83, 0, 'Saima Saleem', 'IIDH', 'Dental Hygienist', NULL, 'NOT APPLICABLE', NULL, '', 5027, 'Faisal Hanif', 5027, 'Faisal Hanif', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 86, 0, 'Tahir Ayub', 'IIMC', 'Office Assistant', NULL, 'TAHIR.AYUB@RIPHAH.EDU.PK', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 87, 0, 'Muhammad Rafi', 'RIH', 'Dental Surgery Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 2191, 'Mariam Tariq', 2191, 'Mariam Tariq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 90, 0, 'Abdul Razzaq Khan', 'IIDH', 'Chief Operating Officer', NULL, 'ABDUL.RAZAQ@RIPHAH.EDU.PK', NULL, '', 665, 'Omer Awab Khan', 665, 'Omer Awab Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 92, 0, 'Ayaz Abbasi', 'OPERATIONS G-7', 'Dy.Manager HDS', NULL, 'AYYAZ.ABBASI@RIPHAH.EDU.PK', NULL, '', 3160, 'Azmat Hayat', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 93, 0, 'Asim Zulfiqar', 'PRH', 'Professor', NULL, 'ASIM.ZULFIQAR@RIPHAH.EDU.PK', NULL, '', 570, 'Muhammad Farooq', 570, 'Muhammad Farooq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 95, 0, 'Seema Bibi', 'PRH', 'Staff Nurse', NULL, 'NOT APPLICABLE', NULL, '', 0, '', 3341, 'Farah Deeba', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 99, 0, 'Atiq ur Rehman', 'IIMC', 'Lab Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 131, 'Shabana Ali', 131, 'Shabana Ali', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 101, 0, 'Muhammad Shakeel', 'IIDC', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 191, 'Alia Ahmed', 191, 'Alia Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 102, 0, 'Aneeq Ullah Baig', 'PRH', 'Professor', NULL, 'ANEEQULLAH.BAIG@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 665, 'Omer Awab Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 104, 0, 'Abdul Mateen', 'FC', 'Assistant Professor', NULL, 'UMRAAZ.ADNAN@RIPHAH.EDU.PK>', NULL, '', 210, 'Musharif Ahmed', 210, 'Musharif Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 111, 0, 'Ulfat Bashir', 'IIDC', 'Professor', NULL, 'ULFAT.BASHIR@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 1255, 'Azhar Rashid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 115, 0, 'Prof.Anis Ahmad', 'UNIV SECRETARIAT', 'Vice Chancellor', NULL, 'ANIS.AHMAD@RIPHAH.EDU.PK', NULL, '', 117, 'Hassan M. Khan', 117, 'Hassan M. Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 117, 0, 'Hassan M. Khan', 'UNIV SECRETARIAT', 'Chancellor', NULL, 'HASSAN.KHAN@RIPHAH.EDU.PK', NULL, '', 0, '', 0, '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 118, 0, 'Asadullah Khan', 'SECRETARIAT', 'Executive Director', NULL, 'ASAD.KHAN@RIPHAH.EDU.PK', NULL, '', 117, 'Hassan M. Khan', 117, 'Hassan M. Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 121, 0, 'Khalid Farooq Danish', 'PRH', 'Professor', NULL, 'KHALID.FAROOQ@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 665, 'Omer Awab Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 123, 0, 'Mian Muhammad Ramzan', 'INFORMATION SERVICES', 'Sr.Manager Information Services', NULL, 'MIAN.RAMZAN@RIPHAH.EDU.PK', NULL, '', 170, 'Muhammad Farooq', 170, 'Muhammad Farooq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 124, 0, 'Adnan Ahmed Khan', 'IIMC', 'Jr.Office Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 126, 0, 'Zahoor Hussain', 'PRH', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 3100, 'Abdul Quddus', 3100, 'Abdul Quddus', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 128, 0, 'Shumaila Sharif', 'PRH', 'Professor', NULL, 'SHUMAILA.SHARIF@RIPHAH.EDU.PK', NULL, '', 132, 'Fareesa Waqar', 132, 'Fareesa Waqar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 129, 0, 'Sikandar Hayat Khan', 'IIDC', 'Associate Professor', NULL, 'SIKANDAR.NIAZI@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 130, 0, 'Shazia Qayyum', 'IIMC', 'Professor', NULL, 'SHAZIA.QAYYUM@RIPHAH.EDU.PK', NULL, '', 0, '', 298, 'Muhammad Nadim Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 131, 0, 'Shabana Ali', 'IIMC', 'Professor', NULL, 'SHABANA.ALI@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 1255, 'Azhar Rashid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 132, 0, 'Fareesa Waqar', 'PRH', 'Professor', NULL, 'FAREESA.WAQAR@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 665, 'Omer Awab Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 134, 0, 'Anjum Iqbal Khattak', 'FEAS', 'Dy.Manager Academics', NULL, 'ANJUM.IQBAL@RIPHAH.EDU.PK', NULL, '', 0, '', 922, 'Jameel Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 135, 0, 'Shabbir Jan', 'IIDC', 'Executive Student Coordination', NULL, 'SHABIR.JAN@RIPHAH.EDU.PK', NULL, '', 233, 'Sohail Khalid', 233, 'Sohail Khalid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 137, 0, 'Afsheen Zafar', 'PRH', 'Professor', NULL, 'AFSHEEN.ZAFAR@RIPHAH.EDU.PK', NULL, '', 292, 'Rehan Ahmed Khan', 292, 'Rehan Ahmed Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 144, 0, 'Asif ali', 'OPERATIONS AL-MIZAN', 'Dy.Manager Finance', NULL, 'ASIF.ALI@RIPHAH.EDU.PK', NULL, '', 174, 'Farhan Rasheed', 219, 'Shahid Mahboob', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 146, 0, 'Muhammad Safeer', 'OPERATIONS I-14 CAMPUS', 'Office Assistant', NULL, 'NOT APPLICABLE', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 150, 0, 'Shazia Riaz', 'PRH', 'Medical Officer', NULL, 'SHAZIA.RIAZ@RIPHAH.EDU.PK', NULL, '', 476, 'Ahsan Farooq', 476, 'Ahsan Farooq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 151, 0, 'Nadia Zohair', 'IIMC', 'Assistant Professor', NULL, 'NADIA.ZOHAIR@RIPHAH.EDU.PK', NULL, '', 63, 'Muhammad Ayaz Bhatti', 63, 'Muhammad Ayaz Bhatti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 152, 0, 'Yawar Hayat', 'UNIV SECRETARIAT', 'Dy.Vice Chancellor Academics', NULL, 'YAWAR.HAYAT@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 118, 'Asadullah Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 154, 0, 'Shamshad Ullah Cheema', 'SECRETARIAT', 'Legal Advisor', NULL, 'NOT APPLICABLE', NULL, '', 117, 'Hassan M. Khan', 117, 'Hassan M. Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 158, 0, 'Adeel Ahmad', 'IIMC', 'Lab Assistant', NULL, 'ADEEL.IIMC@RIPHAH.EDU.PK', NULL, '', 390, 'Sundus Ambreen', 390, 'Sundus Ambreen', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 162, 0, 'Adnan Ashraf', 'SECRETARIAT', 'Assistant Manager Projects', NULL, 'ADNAN.ASHRAF@RIPHAH.EDU.PK', NULL, '', 3997, 'Naqash Munir Malik', 3997, 'Naqash Munir Malik', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 168, 0, 'Rahila Yasmeen', 'RIPHAH ACADEMY OF RESEARCH & EDUCATION', 'Dean', NULL, 'RAHEELA.YASMIN@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 170, 0, 'Muhammad Farooq', 'INFORMATION SERVICES', 'Director Information Services', NULL, 'MUFAROOQ@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 171, 0, 'Khurram Shahzad', 'RSL', 'Professor', NULL, 'KHURRAM.SHAHZAD@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 172, 0, 'Sajid Naeem', 'PRH', 'ETT/ECG Technician', NULL, 'NOT APPLICABLE', NULL, '', 3341, 'Farah Deeba', 3341, 'Farah Deeba', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 173, 0, 'Tariq Masih', 'IIDH', 'Dental Technician', NULL, 'NOT APPLICABLE', NULL, '', 820, 'Muhammad Aamir Ghafoor Chaudhary', 820, 'Muhammad Aamir Ghafoor Chaudhary', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 174, 0, 'Farhan Rasheed', 'OPERATIONS G-7', 'Manager Fee & Dues', NULL, 'FARHAN.RASHEED@RIPHAH.EDU.PK', NULL, '', 396, 'Jalal Ud Din Muhammad Akber', 219, 'Shahid Mahboob', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 180, 0, 'Abdul Moeed Ghouri', 'RSL', 'Program Coordinator', NULL, 'ABDUL.MOEED@RIPHAH.EDU.PK', NULL, '', 171, 'Khurram Shahzad', 171, 'Khurram Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 185, 0, 'Mazhar Abbas', 'IIMC', 'Technical Coordinator', NULL, 'MAZHAR.ABBAS@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 186, 0, 'Irfan Ahmad Bhatti', 'IIDH', 'Dental Hygienist', NULL, 'NOT APPLICABLE', NULL, '', 1302, 'Sobia Hassan', 1302, 'Sobia Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 187, 0, 'Qaiser Yaqub', 'SECRETARIAT', 'Dy.Manager Procurement', NULL, 'QAISER_YAQUB@HOTMAIL.COM', NULL, '', 3408, 'Ammar Bilal', 3408, 'Ammar Bilal', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 190, 0, 'Zia Ul Hassan', 'SECRETARIAT', 'Dy.Manager HDS', NULL, 'ZIAUL.HASSAN@RIPHAH.EDU.PK', NULL, '', 4385, 'Atif Mumtaz', 4385, 'Atif Mumtaz', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 191, 0, 'Alia Ahmed', 'IIDC', 'Professor', NULL, 'ALIA.AHMED@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 90, 'Abdul Razzaq Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 192, 0, 'Muhammad Ashfaq', 'IIDH', 'Sr.Dental Technician', NULL, 'NOT APPLICABLE', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 195, 0, 'Fatima Ehsan', 'IIDC', 'Professor', NULL, 'FATIMA.RIAZ@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 197, 0, 'Taj Khan', 'IIMC', 'Lab Technician', NULL, 'DUMMY@MAIL.COM', NULL, '', 661, 'Amena Tariq', 661, 'Amena Tariq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 198, 0, 'Tanveer Ahmed', 'IIMC', 'Office Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 199, 0, 'Taimoor Shaukat', 'CSD', 'Network Administrator', NULL, 'TAIMOOR.SHAUKAT@RIPHAH.EDU.PK', NULL, '', 0, '', 625, 'Muhammad Asghar Malik', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 204, 0, 'Muhammad Naeem ur Rasheed', 'OPERATIONS I-14 CAMPUS', 'Telephone Operator', NULL, 'NOT APPLICABLE', NULL, '', 40, 'Muhammad Najm us Saqib', 40, 'Muhammad Najm us Saqib', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 206, 0, 'Muhammad Sohail', 'PRH', 'Officer Finance', NULL, 'MUHAMMAD.SOHAIL@RIPHAH.EDU.PK', NULL, '', 0, '', 331, 'Inayatullah Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 208, 0, 'Kamran Mehmood', 'IIDC', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 5576, 'Salwan Ghani', 772, 'Saqlain Bin Syed Gilani', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 210, 0, 'Musharif Ahmed', 'FC', 'Assistant Professor', NULL, 'MUSHARIF.AHMED@RIPHAH.EDU.PK', NULL, '', 1230, 'Muhammad Zubair', 1230, 'Muhammad Zubair', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 211, 0, 'Sumera Saleem', 'FC', 'Assistant Professor', NULL, 'SUMERA.SALEEM@RIPHAH.EDU.PK', NULL, '', 4756, 'Tahira  Nazir', 2044, 'Shireen Tahira', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 212, 0, 'Sakhawat Hussain', 'IIMC', 'Lab Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 218, 'Shazia Ali', 218, 'Shazia Ali', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 213, 0, 'Ameer Ahmed', 'IIDC', 'Lab Technician', NULL, 'NOT APPLICABLE', NULL, '', 129, 'Sikandar Hayat Khan', 129, 'Sikandar Hayat Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 215, 0, 'Muhammad Jamil', 'PRH', 'Officer Procurement', NULL, 'M.JAMEEL@RIPHAH.EDU.PK', NULL, '', 295, 'Zafar Hussain Shah', 295, 'Zafar Hussain Shah', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 216, 0, 'Daud Iqbal', 'PRH', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 3100, 'Abdul Quddus', 3100, 'Abdul Quddus', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 217, 0, 'Samina Altaf', 'IIMC', 'Professor', NULL, 'SAMINA.ALTAF@RIPHAH.EDU.PK', NULL, '', 0, '', 298, 'Muhammad Nadim Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 218, 0, 'Shazia Ali', 'IIMC', 'Professor', NULL, 'SHAZIA.ALI@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 1255, 'Azhar Rashid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 219, 0, 'Shahid Mahboob', 'SECRETARIAT', 'Sr.Manager Finance', NULL, 'SHAHID.MAHBOOB@RIPHAH.EDU.PK', NULL, '', 2490, 'Muhammad Raza Khan', 2490, 'Muhammad Raza Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 225, 0, 'Farah Azhar', 'RIPS', 'Assistant Professor', NULL, 'FARAH.AZHAR@RIPHAH.EDU.PK', NULL, '', 500, 'Shahiq uz Zaman', 500, 'Shahiq uz Zaman', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 226, 0, 'Mohsin Hussain', 'MAX HEALTH HOSPITAL', 'Dy. Manager Finance', NULL, 'MOHSIN.HUSSAIN@RIPHAH.EDU.PK', NULL, '', 396, 'Jalal Ud Din Muhammad Akber', 3663, 'Ali Tahir Rana', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 227, 0, 'Sadia Ashraf', 'FR & AHS', 'Lecturer', NULL, 'SADIA.ASHRAF@RIPHAH.EDU.PK', NULL, '', 420, 'Huma Riaz', 420, 'Huma Riaz', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 232, 0, 'Aqeel Basit', 'SECRETARIAT', 'Assistant Controller Exam', NULL, 'AQEEL.BASIT@RIPHAH.EDU.PK', NULL, '', 264, 'Muhammad Adeel', 271, 'Muhammad Umer Farooq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 233, 0, 'Sohail Khalid', 'IIDC', 'Assistant Manager Coordination', NULL, 'SOHAIL.KHALID@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 234, 0, 'Saadia Sultana', 'PRH', 'Professor', NULL, 'SAADIA.SULTANA@RIPHAH.EDU.PK', NULL, '', 132, 'Fareesa Waqar', 132, 'Fareesa Waqar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 242, 0, 'Khurram Khan', 'RSL', 'Professor', NULL, 'KHURRAM.KHAN@RIPHAH.EDU.PK', NULL, '', 171, 'Khurram Shahzad', 171, 'Khurram Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 245, 0, 'Tariq Zia', 'OPERATIONS GG', 'Lec. Hall Attendant', NULL, 'NOT APPLICABLE', NULL, '', 854, 'Asim Shahzad', 854, 'Asim Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 246, 0, 'Mahmood ur Rasheed', 'SECRETARIAT', 'Dy.Manager Finance', NULL, 'MEHMOOD.RASHEED@RIPHAH.EDU.PK', NULL, '', 396, 'Jalal Ud Din Muhammad Akber', 396, 'Jalal Ud Din Muhammad Akber', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 247, 0, 'Ghulam Abbas', 'OPERATIONS G-7', 'Project Officer', NULL, 'GHULAM.ABBAS@RIPHAH.EDU.PK', NULL, '', 505, 'Ahsan Ilyas', 505, 'Ahsan Ilyas', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 248, 0, 'Sarfraz Ahmed', 'IIDH', 'Receptionist', NULL, 'SARFRAZ.AHMED@RIPHAH.EDU.PK', NULL, '', 90, 'Abdul Razzaq Khan', 90, 'Abdul Razzaq Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 249, 0, 'Sarmad Zohaib', 'IIMC', 'Lab Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 218, 'Shazia Ali', 218, 'Shazia Ali', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 250, 0, 'Abdul Ghaffar', 'PRH', 'Senior Lab. Technician', NULL, 'NOT APPLICABLE', NULL, '', 298, 'Muhammad Nadim Akbar', 3100, 'Abdul Quddus', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 252, 0, 'Hammad Nafis', 'DBS', 'Assistant Professor', NULL, 'HAMMAD.NAFEES@RIPHAH.EDU.PK', NULL, '', 737, 'Muhammad Asad Zaighum', 737, 'Muhammad Asad Zaighum', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 254, 0, 'Khalil ur Rehman', 'IIDC', 'Dental Surgeon', NULL, 'KHALIL.REHMAN@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 526, 'Arbas Waleed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 256, 0, 'Muhammad Arshad Iqbal', 'PRH', 'Sr.LabTechnician', NULL, 'NOT APPLICABLE', NULL, '', 298, 'Muhammad Nadim Akbar', 3100, 'Abdul Quddus', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 258, 0, 'Ghulam Hanif', 'OPERATIONS I-14 CAMPUS', 'Lec.Hall Attendant', NULL, 'NOT APPLICABLE', NULL, '', 40, 'Muhammad Najm us Saqib', 40, 'Muhammad Najm us Saqib', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 261, 0, 'Sagheer Ahmed', 'IIMC', 'Lab Assistant', NULL, 'DUMMY@MAIL.COM', NULL, '', 298, 'Muhammad Nadim Akbar', 298, 'Muhammad Nadim Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 264, 0, 'Muhammad Adeel', 'UNIV SECRETARIAT', 'Dy.Controller Exam', NULL, 'MUHAMMAD.ADEEL@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 267, 0, 'Kamran Khan', 'IIMC', 'Technical Coordinator', NULL, 'KAMRAN.KHAN@RIPHAH.EDU.PK', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 269, 0, 'Syed Waqar Hussain Jafri', 'FC', 'O. I/C Lab', NULL, 'WAQAR.JAFFARI@RIPHAH.EDU.PK', NULL, '', 210, 'Musharif Ahmed', 210, 'Musharif Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 271, 0, 'Muhammad Umer Farooq', 'SECRETARIAT', 'Director', NULL, 'UMER.FAROOQ@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 272, 0, 'Javed Iqbal', 'INFORMATION SERVICES', 'Executive Information Services', NULL, 'JAVED.IQBAL@RIPHAH.EDU.PK', NULL, '', 123, 'Mian Muhammad Ramzan', 123, 'Mian Muhammad Ramzan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 274, 0, 'Qammar Aftab', 'IIDH', 'Assistant Ceramist', NULL, 'NOT APPLICABLE', NULL, '', 820, 'Muhammad Aamir Ghafoor Chaudhary', 820, 'Muhammad Aamir Ghafoor Chaudhary', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 275, 0, 'Muhammad Ilyas', 'IIDH', 'Procurement Officer', NULL, 'MUHAMMAD.ILYAS@RIPHAH.EDU.PK', NULL, '', 90, 'Abdul Razzaq Khan', 90, 'Abdul Razzaq Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 276, 0, 'Shahid Hussain', 'IIDH', 'Dental Surgery Assistant', NULL, 'NOT APPLICABLE', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 277, 0, 'Asghar Khan', 'FR & AHS', 'Dean RCR&AHS', NULL, 'ASGHAR.KHAN@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 279, 0, 'Syed Shakil ur Rehman', 'FR & AHS', 'Professor/Director', NULL, 'SHAKIL.URREHMAN@RIPHAH.EDU.PK', NULL, '', 277, 'Asghar Khan', 271, 'Muhammad Umer Farooq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 281, 0, 'Naeem Ahmed Tahir', 'RSL', 'Assistant Professor', NULL, 'NAEEM.AHMED@RIPHAH.EDU.PK', NULL, '', 171, 'Khurram Shahzad', 171, 'Khurram Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 282, 0, 'Mehwish Ali', 'RSL', 'Sr.Lecturer', NULL, 'MEHVISH.ALI@RIPHAH.EDU.PK', NULL, '', 171, 'Khurram Shahzad', 171, 'Khurram Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 284, 0, 'Zeshan Ghafoor', 'RSL', 'Assistant Professor', NULL, 'ZESHAN.GHAFOOR@RIPHAH.EDU.PK', NULL, '', 171, 'Khurram Shahzad', 171, 'Khurram Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 285, 0, 'Jahangir Khan', 'FC', 'Lab Assistant', NULL, 'JAHANGIR.KHAN@RIPHAH.EDU.PK', NULL, '', 210, 'Musharif Ahmed', 210, 'Musharif Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 290, 0, 'Madiha Sajjad Minhas', 'PRH', 'Professor', NULL, 'MADIHA.SAJJAD@RIPHAH.EDU.PK', NULL, '', 298, 'Muhammad Nadim Akbar', 298, 'Muhammad Nadim Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 292, 0, 'Rehan Ahmed Khan', 'PRH', 'Professor', NULL, 'REHAN.AHMED@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 1255, 'Azhar Rashid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 293, 0, 'Muhammad Farooq', 'RIPS', 'Senior Lab.Technician', NULL, 'NOT APPLICABLE', NULL, '', 312, 'Muhammad Mohsin Ansari', 312, 'Muhammad Mohsin Ansari', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 294, 0, 'Faisal Shafiq Malik', 'IIDC', 'Assistant Professor', NULL, 'FAISAL.SHAFIQUE@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 295, 0, 'Zafar Hussain Shah', 'PRH', 'Assistant Manager Procurement', NULL, 'ZAFAR.HUSSAIN.SHAH@RIPHAH.EDU.PK', NULL, '', 526, 'Arbas Waleed', 526, 'Arbas Waleed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 297, 0, 'Muhammad Shajeel', 'RIPS', 'Dy.Manager Academics', NULL, 'MUHAMMAD.SHAJEEL@RIPHAH.EDU.PK', NULL, '', 674, 'Arif ullah Khan', 674, 'Arif ullah Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 298, 0, 'Muhammad Nadim Akbar', 'PRH', 'Professor', NULL, 'NADEEM.AKBAR@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 665, 'Omer Awab Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 300, 0, 'Shahzad Akhtar Aziz', 'IIMC', 'Associate Professor', NULL, 'SHAHZAD.AZIZ@RIPHAH.EDU.PK', NULL, '', 63, 'Muhammad Ayaz Bhatti', 63, 'Muhammad Ayaz Bhatti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 304, 0, 'Syed Ibrar Hussain Shah', 'OPERATIONS AL-MIZAN', 'Assistant Manager', NULL, 'IBRAR.HUSSAIN@RIPHAH.EDU.PK', NULL, '', 899, 'Hassnain Iqbal', 899, 'Hassnain Iqbal', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 305, 0, 'Tahira Sadiq', 'IIMC', 'Professor', NULL, 'TAHIRA.SADIQ@RIPHAH.EDU.PK', NULL, '', 63, 'Muhammad Ayaz Bhatti', 1255, 'Azhar Rashid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 310, 0, 'Asif Iqbal', 'PRH', 'Medical Officer', NULL, 'MATEEN.AHMED@RIPHAH.EDU.PK', NULL, '', 1642, 'Sher Muhammad Malik', 1642, 'Sher Muhammad Malik', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 311, 0, 'Humaira Nadeem', 'RIPS', 'Professor', NULL, 'HUMAIRA.NADEEM@RIPHAH.EDU.PK', NULL, '', 674, 'Arif ullah Khan', 674, 'Arif ullah Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 312, 0, 'Muhammad Mohsin Ansari', 'RIPS', 'Assistant Professor', NULL, 'MUHAMMAD.MOHSIN@RIPHAH.EDU.PK', NULL, '', 500, 'Shahiq uz Zaman', 500, 'Shahiq uz Zaman', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 315, 0, 'Muhammad Kalim Ullah', 'IIMC', 'Lec Hall Attendent', NULL, 'M.KALIMULLAH@RIPHAH.EDU.PK', NULL, '', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 316, 0, 'Syed Mazhar Ali Kazmi', 'HOSTELS', 'Admin Officer', NULL, 'MAZHAR.ALI@RIPHAH.EDU.PK', NULL, '', 4512, 'Arif Mehmood', 4512, 'Arif Mehmood', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 321, 0, 'Jawad Muhammad Saleem', 'SECRETARIAT', 'Manager Talent Acquisition', NULL, 'JAWAD.SALEEM@RIPHAH.EDU.PK', NULL, '', 1745, 'Ahmed Nauman Anees', 1745, 'Ahmed Nauman Anees', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 326, 0, 'Sohail Iqbal Sheikh', 'PRH', 'Professor', NULL, 'SOHAIL.IQBAL@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 665, 'Omer Awab Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 327, 0, 'Humaira Fayyaz Khan', 'IIMC', 'Professor', NULL, 'HUMAIRA.FAYYAZ@RIPHAH.EDU.PK', NULL, '', 218, 'Shazia Ali', 218, 'Shazia Ali', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 328, 0, 'Haroon Aqeel', 'UNIV SECRETARIAT', 'Dy.Controller Exam', NULL, 'HAROON.AQEEL@RIPHAH.EDU.PK', NULL, '', 264, 'Muhammad Adeel', 264, 'Muhammad Adeel', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 330, 0, 'Mushtaq Ahmed', 'CSD', 'Manager IT', NULL, 'HAFIZ.MUSHTAQ@RIPHAH.EDU.PK', NULL, '', 548, 'Sarfraz Ahmad Haroon', 548, 'Sarfraz Ahmad Haroon', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 332, 0, 'Nazish Qasim', 'SECRETARIAT', 'Manager PMS', NULL, 'NAZISH.CHEEMA@RIPHAH.EDU.PK', NULL, '', 4385, 'Atif Mumtaz', 4385, 'Atif Mumtaz', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 333, 0, 'Rubina Shafi', 'IIMC', 'Demonstrator', NULL, 'RUBINA.SHAFI@RIPHAH.EDU.PK', NULL, '', 298, 'Muhammad Nadim Akbar', 298, 'Muhammad Nadim Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 334, 0, 'Imran Mushtaq Bhatti', 'SECRETARIAT', 'Manager Finance', NULL, 'IMRAN.MUSHTAQ@RIPHAH.EDU.PK', NULL, '', 396, 'Jalal Ud Din Muhammad Akber', 396, 'Jalal Ud Din Muhammad Akber', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 336, 0, 'Muhammad Tahir', 'RIPS', 'Sr.Lab.Technician', NULL, 'M.TAHIR@RIPHAH.EDU.PK', NULL, '', 312, 'Muhammad Mohsin Ansari', 312, 'Muhammad Mohsin Ansari', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 340, 0, 'Atif Zahoor Chaudhary', 'UNIV SECRETARIAT', 'Assistant Manager Finance', NULL, 'ATIF.ZAHOOR@RIPHAH.EDU.PK', NULL, '', 174, 'Farhan Rasheed', 219, 'Shahid Mahboob', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 344, 0, 'Asad Altaf', 'IIDH', 'Receptionist', NULL, 'ASAD.ALTAF@RIPHAH.EDU.PK', NULL, '', 90, 'Abdul Razzaq Khan', 90, 'Abdul Razzaq Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 348, 0, 'Nazakat Hussain Shah', 'IIDH', 'Dental Technician', NULL, 'NOT APPLICABLE', NULL, '', 820, 'Muhammad Aamir Ghafoor Chaudhary', 820, 'Muhammad Aamir Ghafoor Chaudhary', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 350, 0, 'Sohail Safdar', 'AFFILIATION', 'Dy.Registrar Affiliation', NULL, 'SOHAIL.SAFDAR@RIPHAH.EDU.PK', NULL, '', 5233, 'Khalid Mahmood Lodhi', 5233, 'Khalid Mahmood Lodhi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 351, 0, 'Fida Ali', 'IIDH', 'Dental Surgery Assistant', NULL, 'NOT APPLICABLE', NULL, '', 191, 'Alia Ahmed', 191, 'Alia Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 353, 0, 'Muhammad Atif Fahim', 'PRH', 'Medical Officer', NULL, 'NOT APPLICABLE', NULL, '', 570, 'Muhammad Farooq', 2247, 'Wasim Ahmed Malik', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 354, 0, 'Abdul Wahid', 'PRH', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 3100, 'Abdul Quddus', 3100, 'Abdul Quddus', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 356, 0, 'Shahnaz Akhtar', 'PRH', 'Staff Nurse', NULL, 'NOT APPLICABLE', NULL, '', 3341, 'Farah Deeba', 526, 'Arbas Waleed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 358, 0, 'Muhammad Farooq Arshad', 'UNIV SECRETARIAT', 'Executive', NULL, 'FAROOQ.ARSHAD@RIPHAH.EDU.PK', NULL, '', 5233, 'Khalid Mahmood Lodhi', 5233, 'Khalid Mahmood Lodhi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 365, 0, 'Kouser Firdaus', 'UNIV SECRETARIAT', 'Advisor', NULL, 'KOUSER.FIRDAUS@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 366, 0, 'Wajid Mehmood', 'RIMS', 'Radio Engineer', NULL, 'WAJID.MEHMOOD@RIPHAH.EDU.PK', NULL, '', 649, 'Rehan Hassan', 649, 'Rehan Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 368, 0, 'Sadia Nadir', 'DBS', 'Sr.Lecturer', NULL, 'SADIA.NADIR@RIPHAH.EDU.PK', NULL, '', 737, 'Muhammad Asad Zaighum', 737, 'Muhammad Asad Zaighum', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 370, 0, 'Yasir Aziz', 'RIH', 'Lab Technician', NULL, 'DUMMY@MAIL.COM', NULL, '', 4541, 'Aatika Ahmed', 3100, 'Abdul Quddus', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 371, 0, 'Qammer Rehman', 'QUALITY ENHANCEMENT CELL', 'Dy.Manager QEC', NULL, 'QAMAR.REHMAN@RIPHAH.EDU.PK', NULL, '', 0, '', 681, 'Fawad Sadiq', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 372, 0, 'Arshad Ahmed Baig', 'SECRETARIAT', 'Director Org Development & Support', NULL, 'ARSHAD.BAIG@RIPHAH.EDU.PK', NULL, '', 115, 'Prof.Anis Ahmad', 115, 'Prof.Anis Ahmad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 373, 0, 'Ghulam Murtaza', 'IIDH', 'Dental Surgery Assistant', NULL, 'NOT APPLICABLE', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 375, 0, 'Sami Ud Din', 'DSS ISLAMIC STUDIES', 'Sr.Lecturer', NULL, 'SAMI.UDDIN@RIPHAH.EDU.PK', NULL, '', 667, 'Hafiz Waqas Khan', 667, 'Hafiz Waqas Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 376, 0, 'Hina Ahsan', 'RIPS', 'Assistant Professor', NULL, 'HINA.AHSAN@RIPHAH.EDU.PK', NULL, '', 500, 'Shahiq uz Zaman', 500, 'Shahiq uz Zaman', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 377, 0, 'Muhammad Khateeb', 'RIPS', 'Sr.Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 312, 'Muhammad Mohsin Ansari', 312, 'Muhammad Mohsin Ansari', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 378, 0, 'Muhammad Ayub', 'RCIB', 'Professor', NULL, 'MUHAMMAD.AYUB@RIPHAH.EDU.PK', NULL, '', 0, '', 0, '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 379, 0, 'Sady Ahmed', 'RIPHAH ACADEMY OF RESEARCH & EDUCATION', 'Dy.Manager Marketing', NULL, 'SADY.AHMED@RIPHAH.EDU.PK', NULL, '', 0, '', 168, 'Rahila Yasmeen', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 383, 0, 'Uzma Mussarat', 'IIDC', 'Assistant Professor', NULL, 'UZMA.MUSSARRAT@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 384, 0, 'Uzma Faisal', 'PRH', 'Medical Officer', NULL, 'MATEEN.AHMED@RIPHAH.EDU.PK', NULL, '', 102, 'Aneeq Ullah Baig', 102, 'Aneeq Ullah Baig', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 386, 0, 'Aqeel Ahmed', 'FC', 'Lab Assistant', NULL, 'AQEEL.AHMED@RIPHAH.EDU.PK', NULL, '', 210, 'Musharif Ahmed', 210, 'Musharif Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 387, 0, 'Zarrar Ahmed', 'RIMS', 'Assistant Manager', NULL, 'ZARRAR.AHMED@RIPHAH.EDU.PK', NULL, '', 649, 'Rehan Hassan', 649, 'Rehan Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 390, 0, 'Sundus Ambreen', 'IIMC', 'Professor', NULL, 'SUNDUS.AMBREEN@RIPHAH.EDU.PK', NULL, '', 1255, 'Azhar Rashid', 1255, 'Azhar Rashid', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 391, 0, 'Ayesha Nayyar', 'PRH', 'Professor', NULL, 'AYESHA.NAYYAR@RIPHAH.EDU.PK', NULL, '', 298, 'Muhammad Nadim Akbar', 298, 'Muhammad Nadim Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 396, 0, 'Jalal Ud Din Muhammad Akber', 'UNIV SECRETARIAT', 'Dy.Director Finance', NULL, 'JALALUDDIN@RIPHAH.EDU.PK', NULL, '', 2490, 'Muhammad Raza Khan', 2490, 'Muhammad Raza Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 398, 0, 'Muhammad Arshad Javed', 'RIPHAH ACADEMY OF RESEARCH & EDUCATION', 'Office Assistant', NULL, 'M.ARSHAD@RIPHAH.EDU.PK', NULL, '', 168, 'Rahila Yasmeen', 168, 'Rahila Yasmeen', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 399, 0, 'Muhammad Ikram', 'RSL', 'Program Coordinator', NULL, 'MUHAMMAD.IKRAM@RIPHAH.EDU.PK', NULL, '', 171, 'Khurram Shahzad', 171, 'Khurram Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 401, 0, 'Muhammad Saud Khan', 'FC', 'Assistant Professor', NULL, 'MUHAMMAD.SAUD@RIPHAH.EDU.PK', NULL, '', 210, 'Musharif Ahmed', 210, 'Musharif Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 412, 0, 'Sajid Mehmood', 'IIDC', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 5576, 'Salwan Ghani', 772, 'Saqlain Bin Syed Gilani', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 413, 0, 'Umair Ilyas', 'RIPS GGC', 'Associate Professor', NULL, 'UMAIR.ILYAS@RIPHAH.EDU.PK', NULL, '', 500, 'Shahiq uz Zaman', 500, 'Shahiq uz Zaman', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 414, 0, 'Muhammad Zunair Tahir', 'RIPS', 'Office Assistant', NULL, 'ZUNAIR.TAHIR@RIPHAH.EDU.PK', NULL, '', 297, 'Muhammad Shajeel', 674, 'Arif ullah Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 416, 0, 'Muhammad Bilal Idrees', 'UNIV SECRETARIAT', 'Assistant Officer Exam', NULL, 'BILLO_PAK@HOTMAIL.COM', NULL, '', 503, 'Muhammad Tariq Bhatti', 503, 'Muhammad Tariq Bhatti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 417, 0, 'Rizwan Bin Faiz', 'FC', 'Assistant Professor', NULL, 'RIZWAN.FAIZ@RIPHAH.EDU.PK', NULL, '', 210, 'Musharif Ahmed', 210, 'Musharif Ahmed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 419, 0, 'Sana Malik', 'IIMC', 'Coordinator Assessment', NULL, 'SANA.MALIK@RIPHAH.EDU.PK', NULL, '', 63, 'Muhammad Ayaz Bhatti', 63, 'Muhammad Ayaz Bhatti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 420, 0, 'Huma Riaz', 'FR & AHS', 'Associate Professor', NULL, 'HUMA.RIAZ@RIPHAH.EDU.PK', NULL, '', 1960, 'Arshad Nawaz Malik', 1960, 'Arshad Nawaz Malik', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 421, 0, 'Sagheer Ahmed', 'INFORMATION SERVICES', 'Dy.Manager Information Services', NULL, 'SAGHEER.MUGHAL@RIPHAH.EDU.PK', NULL, '', 612, 'Khurram Shahzad', 612, 'Khurram Shahzad', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 425, 0, 'Samina Akhtar', 'RIA', 'Coordination Executive', NULL, 'SAMINA.AKHTAR@RIPHAH.EDU.PK', NULL, '', 292, 'Rehan Ahmed Khan', 292, 'Rehan Ahmed Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 427, 0, 'Naurin Farooq Khan', 'FC', 'Assistant Professor', NULL, 'NAURIN.ZAMIR@RIPHAH.EDU.PK', NULL, '', 1230, 'Muhammad Zubair', 1230, 'Muhammad Zubair', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 429, 0, 'Aftab Iqbal', 'IIDH', 'Assistant Manager Finance', NULL, 'AFTAB@RIPHAH.EDU.PK', NULL, '', 0, '', 0, '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 430, 0, 'Ahsan Ul Haq', 'PRH', 'Assistant Matron Office', NULL, 'MATRON.OFFICE@RIPHAH.EDU.PK', NULL, '', 3341, 'Farah Deeba', 3341, 'Farah Deeba', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 432, 0, 'Aamer Sharif', 'RSL', 'Lecturer', '21323', 'AAMER.SHAREEF@RIPHAH.EDU.PK', 'male', '', 171, 'Khurram Shahzad', 171, 'Khurram Shahzad', NULL, '$2y$10$MSVtMfTl5Xg1ITvgo./MxeuyKpxWb97J97Z4YYMxgLx6Be6Fn5Qk2', 1, 2, 'abcd', NULL, NULL, NULL, NULL, NULL, '2024-01-10 00:13:26', '2024-02-18 08:35:45', NULL),
(186, 436, 0, 'Regina Joseph', 'PRH', 'Staff Nurse', NULL, 'NOT APPLICABLE', NULL, '', 3341, 'Farah Deeba', 526, 'Arbas Waleed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 440, 0, 'Uzma Naeem', 'IIMC', 'Associate Professor', NULL, 'UZMA.NAEEM@RIPHAH.EDU.PK', NULL, '', 837, 'Akbar Waheed', 837, 'Akbar Waheed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 442, 0, 'Syed Maaz Ahmed Bukhari', 'IIDC', 'Assistant Manager Coordination', NULL, 'MAAZ.AHMED@RIPHAH.EDU.PK', NULL, '', 111, 'Ulfat Bashir', 111, 'Ulfat Bashir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 444, 0, 'Shahid Waqar Khan', 'RIMS', 'Broadcast Engineer', NULL, 'SHAHID.WAQAR@RIPHAH.EDU.PK', NULL, '', 649, 'Rehan Hassan', 649, 'Rehan Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 445, 0, 'Inam ul Haq', 'IIDC', 'Lab Assistant', NULL, 'NOT APPLICABLE', NULL, '', 129, 'Sikandar Hayat Khan', 129, 'Sikandar Hayat Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 446, 0, 'Sajid Mehmood', 'PRH', 'Public Relation Assistant', NULL, 'NOT APPLICABLE', NULL, '', 0, '', 5906, 'Usama Bin Sabir', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 447, 0, 'Imran Amjad', 'FR & AHS', 'Professor', NULL, 'IMRAN.AMJAD@RIPHAH.EDU.PK', NULL, '', 277, 'Asghar Khan', 277, 'Asghar Khan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 453, 0, 'Muhammad Abid Raoof', 'UNIV SECRETARIAT', 'Assistant Controller Exam', NULL, 'MA.RAOOF@RIPHAH.EDU.PK', NULL, '', 503, 'Muhammad Tariq Bhatti', 503, 'Muhammad Tariq Bhatti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 454, 0, 'Nadia Sajjad', 'IIDH', 'Dental Hygienist', NULL, 'NOT APPLICABLE', NULL, '', 1302, 'Sobia Hassan', 1302, 'Sobia Hassan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 455, 0, 'Awais Majeed', 'INFORMATION SERVICES', 'Officer Information Services', NULL, 'WAIS.MAJEED@RIPHAH.EDU.PK', NULL, '', 123, 'Mian Muhammad Ramzan', 123, 'Mian Muhammad Ramzan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 457, 0, 'Bibi Tasleem Qureshi', 'PRH', 'Staff Nurse', NULL, 'NOT APPLICABLE', NULL, '', 3341, 'Farah Deeba', 526, 'Arbas Waleed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 467, 0, 'Muhammad Siddique ur Rehman', 'CSD', 'Sr.Manager Healthcare System', NULL, 'SIDDIQ.REHMAN@RIPHAH.EDU.PK', NULL, '', 548, 'Sarfraz Ahmad Haroon', 548, 'Sarfraz Ahmad Haroon', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 468, 0, 'Faizan Hafeez', 'RIH', 'Receptionist', NULL, 'FAIZAN.HAFEEZ@RIPHAH.EDU.PK', NULL, '', 68, 'Muhammad Naseer', 68, 'Muhammad Naseer', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 470, 0, 'Naveed Ikram', 'FC', 'Professor', NULL, 'NAVEED.IKRAM@RIPHAH.EDU.PK', NULL, '', 1230, 'Muhammad Zubair', 1230, 'Muhammad Zubair', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 471, 0, 'Saleh Riaz', 'IIDC', 'Lab Technician', NULL, 'NOT APPLICABLE', NULL, '', 195, 'Fatima Ehsan', 195, 'Fatima Ehsan', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 201, 0, 'Admin', 'RPI', 'joiner developer', '1344421', 'admin@admin.com', 'male', 'Farasat', 323, 'abc', 323, 'xyz', NULL, '$2y$12$ua.tdpf8pSBhP8vreFKw9.EZ7paOd3Oqc7IWQVTdle6lP5OB1drFS', 1, 1, 'eced', 'ABC@$23836420240805111758', NULL, 'userprofile/1723804263_avatar5.png', NULL, NULL, '2023-10-10 00:13:26', '2024-08-16 05:31:03', '340583'),
(202, 1111, 0, 'PMO endorsement', 'RIH', 'Professor', '233', 'f1236781@gmail.com', 'male', 'hamza', 570, 'Muhammad Farooq', 570, 'Muhammad Farooq', NULL, '$2y$12$JaCGbtiYkVjUT3lORor3QecCCVF0GGRpCyXsjtz5w93CE9NZFuKKy', 1, 2, 'frew', NULL, NULL, NULL, NULL, NULL, '2023-10-26 05:40:16', '2024-07-25 21:27:08', NULL),
(203, 2222, 0, 'Director Finannce', 'IIMC', 'Incharge Skill Lab', '123443', 'i83841426@gmail.com', 'male', 'Azhar Rashid', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, '$2y$10$q6ziJPRBRRErH6be4Dailuh6VrYPmX27PM4/wyZ7TaGH4kysXWRnq', 1, 2, 'qwer', 'ABC@$12349820240807064952', NULL, NULL, NULL, NULL, '2023-10-26 05:47:19', '2024-08-07 01:49:52', NULL),
(205, 4444, 0, 'Head pmo', 'IIMC', 'Office Executive', '2342', 'ibrar.bikat@gmail.com', 'male', 'Muhammad Farooq', 485, 'Maqsood ul Hassan', 485, 'Maqsood ul Hassan', NULL, '$2y$12$/xuA.IairzPAhb.6XuvEMOdMnMoSYTcAaiUiz5Fhd68l22lmju/S2', 1, 2, 'asew', 'ABC@$56423220240807072037', 'Aa@12345', NULL, NULL, NULL, '2023-10-26 05:52:01', '2024-08-13 06:09:11', NULL),
(206, 5555, 0, 'Exective Director', 'RISE', 'Research Professor', '12321', 'h92800444@gmail.com', 'male', 'Sarfraz', 1230, 'Muhammad Zubair', 1230, 'Muhammad Zubair', NULL, '$2y$10$XCoQxDq/uy9Pe9/ie8G08u.u6tvU2AnClIzVgFW4Q7KCiSvVM6Ypq', 1, 2, 'aswq', NULL, NULL, NULL, NULL, NULL, '2023-10-26 05:57:51', '2024-02-18 08:47:02', NULL),
(207, 3333, 0, 'MT/Chancellor', 'PRH', 'Admin Officer', '123', 'iahmad.mis@riphah.edu.pk', 'male', 'xyz', 502, 'Jawad Ahmed', 502, 'Jawad Ahmed', NULL, '$2y$10$M.Z4vCWN68nnXqWCITZbBen9aU5jCfnUBFdl6iVnMD1b/KByqWGN.', 1, 2, 'acdwe', 'ABC@$33340720240726060410', NULL, NULL, NULL, NULL, '2023-11-24 04:29:46', '2024-07-25 20:04:10', NULL),
(208, 6666, 0, 'Farasat', 'RIH', 'MICC', '+923098765432', 'farasat@gmail.com', 'male', 'Ali waqas', 123, 'Muhammad Zubair', 123, 'Muhammad Zubair', NULL, '$2y$10$0oWvicK1pV3vc/hz0oemqOTyI0FUxywHVDwdU/12nrJztka6.XSDu', 1, 9, 'xyz', NULL, NULL, NULL, 201, NULL, '2024-06-11 10:41:31', '2024-07-10 13:34:53', NULL),
(209, 6501, 0, 'Ali waqas', 'IIMC', 'PMS', '32157812', 'aliwaqas@gmail.com', 'male', 'Sarfraz', 323, 'Maqsood ul Hassan', 323, 'Maqsood ul Hassan', NULL, '$2y$10$znwCXhglWLD7UTbPKe2NSuOOhj4dUVFYEcddYVxM4hbn4maCNmlr2', 1, 2, 'Islamabad', NULL, NULL, NULL, 201, NULL, '2024-06-11 10:47:15', '2024-06-11 10:47:15', NULL),
(210, 3453, 0, 'Hamza', 'RIH', 'developer', '1234567', 'hamza@gmail.com', 'male', 'Farasat', 502, 'Muhammad Zubair', 502, 'Muhammad Zubair', NULL, '$2y$10$m8RG9RC2ggcKmv/MlfdcmOCqWuyKrgQsg7OQVZS7S6Xf7iPw76BWS', 1, 2, 'isb', NULL, NULL, NULL, 201, NULL, '2024-06-11 10:51:56', '2024-06-11 10:51:56', NULL),
(211, 1234, 0, 'Sarfraz', 'RIH', 'HOD', '2345678', 'sarfraz@gmail.com', 'male', 'xyz', 323, 'Muhammad Zubair', 323, 'Muhammad Zubair', NULL, '$2y$10$AAmQF95KZlYWfLTDmf5ZruLWteH3ltPf/OoNKMpanV0yUmWsGOIEm', 1, 2, 'isb', NULL, NULL, NULL, 201, NULL, '2024-06-11 10:54:54', '2024-06-11 10:54:54', NULL),
(212, 1233, 0, 'xyz', 'PRH', 'Research', '2345632', 'xyz@gmail.com', 'male', 'Exective Director', 502, 'Maqsood ul Hassan', 502, 'Maqsood ul Hassan', NULL, '$2y$10$yik0gBP4p5x7.GifTE/s4OaYxzXvorORHvB2gHHW0lksPEdME.i/2', 1, 2, 'asw', NULL, NULL, NULL, 201, NULL, '2024-06-11 10:58:34', '2024-06-11 10:58:34', NULL);
INSERT INTO `users` (`id`, `employee_id`, `employee_old_id`, `name`, `strategic_unit`, `designation`, `phone_number`, `email`, `gender`, `su_head`, `functionally_reports_to`, `functional_head_name`, `administratively_reports_to`, `admin_head_name`, `email_verified_at`, `password`, `status`, `role_id`, `address`, `unique_id`, `org_o`, `profile_img`, `created_by`, `remember_token`, `created_at`, `updated_at`, `authenticated_id`) VALUES
(213, 8888, 0, 'SU/FU Head', 'PRH', 'su', '12345678887', 'su@gmail.com', 'male', 'PMO endorsement', 502, 'Jawad Ahmed', 502, 'Jawad Ahmed', NULL, '$2y$12$RaLKzclN0GFfBk15OtMkreWUZ2eZLT5Ve9NwRzlPS.jiPWmlvOIUW', 1, 2, 'abc', NULL, NULL, NULL, 201, NULL, '2024-06-12 08:36:38', '2024-07-31 14:01:43', NULL),
(214, 9999, 0, 'Naeem', 'RIH', 'software developer', '234567655', 'naeem@gmail.com', 'male', 'Farasat', 23, 'Maqsood ul Hassan', 23, 'Maqsood ul Hassan', NULL, '$2y$10$C6J/j88TxrA.DJJd6xd.kOqS2w6wlLF7zYGS/o/fZdGPxee3Kteca', 1, 2, 'Lahore', NULL, NULL, NULL, 201, NULL, '2024-06-12 08:44:02', '2024-06-12 08:44:02', NULL),
(224, 123456789, 0, 'new employee for testing', 'PRH', 'Professor', '+923007129791', 'employeetesting@admin.com', 'male', 'farasat', 123, 'Muhammad Zubair', 123, 'Muhammad Zubair', NULL, '$2y$10$NB/EFpS1GmoL17MT/10L3eL4NdRQ9Sh58MS3gTur7M9VyGMrzgQ/2', 1, 9, 'abcdef', NULL, NULL, NULL, 201, NULL, '2024-07-10 13:28:44', '2024-07-10 15:05:58', NULL),
(227, 223, 0, 'abc', 'PRH', 'Professor', '+923098765432', 'abc@gmail.com', 'male', 'fer', 123, 'zxzxz', 123, 'zxzxz', NULL, '$2y$12$09e.cmV/zgNpIG0RQgg19OCinpqznVx7/UfmkEZClXBvH4Nwz/ke.', 1, 2, 'Lahore', NULL, NULL, NULL, 201, NULL, '2024-08-02 01:10:40', '2024-08-02 01:19:18', NULL);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `organizationlogos`
--
ALTER TABLE `organizationlogos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
