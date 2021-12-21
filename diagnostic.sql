-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 21, 2021 at 03:22 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnostic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '123', 'admin', NULL, NULL),
(2, 'as', 'rafitanjibulhasan@gmail.com', '123', 'Receptionist', '2021-12-20 08:36:21', '2021-12-20 08:36:21'),
(3, 'df', 's@gmail.com', '123', 'Receptionist', '2021-12-20 14:50:12', '2021-12-20 14:50:12'),
(4, 'x', 'x@gmail.com', '123', 'Receptionist', '2021-12-21 01:28:19', '2021-12-21 01:28:19'),
(5, 'q', 'w@gmail.com', '123', 'Lab', '2021-12-21 01:28:37', '2021-12-21 01:28:37'),
(6, 'r', 'r@gmail.com', '123', 'Receptionist', '2021-12-21 06:57:22', '2021-12-21 06:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `address`, `age`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a@gmail.com', '234', 22, '2021-09-10 15:03:38', '2021-09-10 15:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(81, '2014_10_12_000000_create_users_table', 1),
(82, '2014_10_12_100000_create_password_resets_table', 1),
(83, '2019_08_19_000000_create_failed_jobs_table', 1),
(84, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(85, '2021_09_12_164456_create_tests_table', 1),
(86, '2021_09_14_152005_create_admins_table', 1),
(87, '2021_10_07_124517_create_patients_table', 1),
(88, '2021_10_27_162316_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL,
  `advance` double(8,2) NOT NULL,
  `due` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `report_status` tinyint(1) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_id`, `name`, `email`, `age`, `gender`, `phone`, `test_id`, `test_name`, `total`, `advance`, `due`, `status`, `report_status`, `role`, `created_at`, `updated_at`) VALUES
(1, '639720898', 'w', 'w@gmail.com', 22, 'Male', 22, 2, 'xray', 300.00, 300.00, 0.00, 1, 1, 'patient', '2021-12-17 00:01:37', '2021-12-17 00:01:37'),
(2, '639720990', 'x', 'x@gmail.com', 22, 'Male', 11, 2, 'xray', 300.00, 300.00, 0.00, 1, 1, 'patient', '2021-12-17 00:03:09', '2021-12-17 00:03:09'),
(3, '639750290', 'c', 'c@gmail.com', 22, 'Male', 22, 1, 'cbc', 800.00, 800.00, 0.00, 1, 1, 'patient', '2021-12-17 08:11:29', '2021-12-17 08:11:29'),
(4, '639751146', 'd', 'tajodi4565@ztymm.com', 11, 'Female', 11, 1, 'cbc', 1100.00, 1100.00, 0.00, 1, 1, 'patient', '2021-12-17 08:25:45', '2021-12-17 08:25:45'),
(6, '640011272', 'e', 'e@gmail.com', 11, 'Male', 123, 1, 'cbc', 1045.00, 1000.00, 45.00, 0, 0, 'patient', '2021-12-20 08:41:11', '2021-12-20 08:41:11'),
(7, '640011272', 'e', 'e@gmail.com', 11, 'Male', 123, 2, 'xray', 1045.00, 1000.00, 45.00, 0, 0, 'patient', '2021-12-20 08:41:11', '2021-12-20 08:41:11'),
(8, '640012968', 'xx', 'xx@gmail.com', 123, 'Female', 112, 2, 'xray', 300.00, 0.00, 300.00, 0, 0, 'patient', '2021-12-20 09:09:27', '2021-12-20 09:09:27'),
(9, '640074937', 'cv', 'cv@gmail.com', 123, 'Male', 23, 29, 'cbc', 33.00, 30.00, 3.00, 0, 0, 'patient', '2021-12-21 02:22:16', '2021-12-21 02:22:16'),
(10, '640084352', 'gdf', 'a@gmail.com', 123, 'Male', 23, 29, 'cbc', 699.00, 33.00, 666.00, 0, 1, 'patient', '2021-12-21 04:59:11', '2021-12-21 04:59:11'),
(11, '640084352', 'gdf', 'a@gmail.com', 123, 'Male', 23, 31, 'ggg', 699.00, 33.00, 666.00, 0, 1, 'patient', '2021-12-21 04:59:11', '2021-12-21 04:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_id` int(11) NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `patient_id`, `test_id`, `test_name`, `result`, `created_at`, `updated_at`) VALUES
(159, '639751146', 1, 'cbc', 'Normal', '2021-12-19 04:20:49', '2021-12-19 04:20:49'),
(160, '639720898', 2, 'xray', 'Normal', '2021-12-20 14:44:36', '2021-12-20 14:44:36'),
(161, '639720898', 2, 'xray', 'Normal', '2021-12-21 04:27:21', '2021-12-21 04:27:21'),
(162, '640084352', 29, 'cbc', 'Normal', '2021-12-21 05:13:09', '2021-12-21 05:13:09'),
(163, '640084352', 31, 'ggg', 'Normal', '2021-12-21 05:13:09', '2021-12-21 05:13:09'),
(164, '640084352', 29, 'cbc', 'Normal', '2021-12-21 05:13:46', '2021-12-21 05:13:46'),
(165, '640084352', 29, 'cbc', 'Low', '2021-12-21 05:13:46', '2021-12-21 05:13:46'),
(166, '640084352', 31, 'ggg', 'Normal', '2021-12-21 05:13:46', '2021-12-21 05:13:46'),
(167, '640084352', 31, 'ggg', 'Low', '2021-12-21 05:13:46', '2021-12-21 05:13:46'),
(168, '640084352', 29, 'cbc', 'High', '2021-12-21 05:20:51', '2021-12-21 05:20:51'),
(169, '640084352', 31, 'ggg', 'High', '2021-12-21 05:20:51', '2021-12-21 05:20:51'),
(170, '640084352', 29, 'cbc', 'High', '2021-12-21 05:21:43', '2021-12-21 05:21:43'),
(171, '640084352', 31, 'ggg', 'High', '2021-12-21 05:21:43', '2021-12-21 05:21:43'),
(172, '640084352', 29, 'cbc', 'HighLow', '2021-12-21 05:34:29', '2021-12-21 05:34:29'),
(173, '640084352', 31, 'ggg', 'HighLow', '2021-12-21 05:34:29', '2021-12-21 05:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'fg', 800777.00, '2021-12-17 00:00:48', '2021-12-20 15:14:16'),
(2, 'xray', 30065.00, '2021-12-17 00:00:48', '2021-12-20 14:11:36'),
(29, 'cbc', 33.00, '2021-12-19 13:14:52', '2021-12-19 13:14:52'),
(31, 'ggg', 666.00, '2021-12-20 08:23:36', '2021-12-20 08:23:36'),
(32, 'v', 33.00, '2021-12-20 08:25:38', '2021-12-20 08:25:38'),
(34, 'gfg', 434.00, '2021-12-20 15:18:26', '2021-12-20 15:18:26'),
(35, 'ty', 45.00, '2021-12-20 15:18:32', '2021-12-20 15:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
