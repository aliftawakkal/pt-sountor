-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2020 at 05:31 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sountor`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/WQvcTfO5JNeFqUNaCZjjE1B5RTt99YOi2r8tIfRe.jpeg', NULL, '2020-05-04 06:56:48', '2020-05-11 00:36:48'),
(2, 3, 'assets/gallery/ApNXe7t3ha82xbBrW8LvOb0U1s6rVzoGgHPztwTe.jpeg', NULL, '2020-05-10 23:03:58', '2020-05-10 23:03:58'),
(3, 2, 'assets/gallery/jUZkUGPGsElhU7JWwlqsX5RMNLca6tv1Kkv1tVcS.jpeg', NULL, '2020-05-04 07:16:45', '2020-05-10 23:31:08');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_02_141938_create_travel_packages_table', 1),
(4, '2020_05_02_143651_create_galleries_table', 2),
(5, '2020_05_02_144524_create_transactions_table', 3),
(6, '2020_05_02_145240_create_transaction_details_table', 4),
(7, '2020_05_03_054705_add_roles_field_to_users_table', 5),
(8, '2014_10_12_100000_create_password_resets_table', 6),
(9, '2020_05_03_073614_add_username_field_to_users_table', 6);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 290, 'SUCCESS', NULL, NULL, '2020-05-10 01:38:50'),
(2, 2, 2, 190, 290, 'SUCCESS', NULL, NULL, '2020-05-12 21:50:52'),
(3, 2, 1, 0, 2500, 'IN_CART', '2020-05-12 08:59:30', '2020-05-11 12:23:20', '2020-05-12 08:59:30'),
(4, 2, 1, 0, 2500, 'IN_CART', '2020-05-12 08:59:32', '2020-05-11 12:34:21', '2020-05-12 08:59:32'),
(5, 1, 1, 0, 10000, 'IN_CART', '2020-05-12 08:59:35', '2020-05-12 05:57:15', '2020-05-12 08:59:35'),
(6, 2, 1, 570, 10570, 'IN_CART', '2020-05-12 09:00:18', '2020-05-12 06:32:31', '2020-05-12 09:00:18'),
(7, 1, 1, 0, 10000, 'IN_CART', '2020-05-12 08:59:37', '2020-05-12 07:42:20', '2020-05-12 08:59:37'),
(8, 1, 1, 0, 10000, 'IN_CART', '2020-05-12 08:59:40', '2020-05-12 07:44:27', '2020-05-12 08:59:40'),
(9, 1, 1, 570, 40570, 'IN_CART', NULL, '2020-05-12 08:08:21', '2020-05-12 08:30:17'),
(10, 1, 1, 190, 20190, 'IN_CART', '2020-05-12 08:59:18', '2020-05-12 08:32:15', '2020-05-12 08:59:18'),
(11, 3, 1, 190, 100190, 'IN_CART', '2020-05-12 08:59:14', '2020-05-12 08:36:02', '2020-05-12 08:59:14'),
(12, 1, 1, 190, 20190, 'PENDING', NULL, '2020-05-12 09:00:50', '2020-05-12 09:01:27'),
(13, 1, 2, 190, 20190, 'IN_CART', NULL, '2020-05-12 20:59:24', '2020-05-12 20:59:43'),
(14, 2, 3, 190, 2690, 'PENDING', NULL, '2020-05-12 21:20:06', '2020-05-12 21:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'alif', 'ID', 1, '2020-05-02', NULL, NULL, NULL),
(2, 2, 'alifuser', 'ID', 2, '2020-05-06', NULL, NULL, NULL),
(9, 9, 'alif', 'ID', 0, '2025-05-12', NULL, '2020-05-12 08:08:21', '2020-05-12 08:08:21'),
(10, 9, 'admin', 'US', 1, '2020-05-15', NULL, '2020-05-12 08:26:52', '2020-05-12 08:26:52'),
(11, 9, 'aliftawakkal98', 'US', 1, '2020-10-01', NULL, '2020-05-12 08:30:03', '2020-05-12 08:30:03'),
(12, 9, 'alif', 'US', 1, '2020-05-13', NULL, '2020-05-12 08:30:17', '2020-05-12 08:30:17'),
(13, 10, 'alif', 'ID', 0, '2025-05-12', NULL, '2020-05-12 08:32:15', '2020-05-12 08:32:15'),
(14, 10, '17710022', 'US', 1, '2020-05-15', NULL, '2020-05-12 08:32:43', '2020-05-12 08:32:43'),
(15, 11, 'alif', 'ID', 0, '2025-05-12', NULL, '2020-05-12 08:36:02', '2020-05-12 08:36:02'),
(16, 11, 'utuhsaja', 'IN', 1, '2020-05-02', NULL, '2020-05-12 08:36:21', '2020-05-12 08:36:21'),
(17, 11, 'lenovi', 'IN', 1, '2020-09-26', '2020-05-12 08:56:54', '2020-05-12 08:56:25', '2020-05-12 08:56:54'),
(18, 12, 'alif', 'ID', 0, '2025-05-12', NULL, '2020-05-12 09:00:50', '2020-05-12 09:00:50'),
(19, 12, 'iqra', 'US', 1, '2020-10-01', NULL, '2020-05-12 09:01:06', '2020-05-12 09:01:06'),
(20, 13, 'alifuser', 'ID', 0, '2025-05-13', NULL, '2020-05-12 20:59:24', '2020-05-12 20:59:24'),
(21, 13, 'iqra', 'IND', 1, '2021-02-11', NULL, '2020-05-12 20:59:43', '2020-05-12 20:59:43'),
(22, 14, 'pengguna1', 'ID', 0, '2025-05-13', '2020-05-12 21:20:28', '2020-05-12 21:20:06', '2020-05-12 21:20:28'),
(23, 14, 'pengguna', 'IND', 1, '2020-05-30', NULL, '2020-05-12 21:20:42', '2020-05-12 21:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Liburan Lebaran', 'liburan-lebaran', 'Liang Tapah', 'sama  keluarga', 'Mandian', 'Bahasa Tanjung', 'Paliat Tanjung', '2020-05-01', '1 Days', 'Open Liburan', 10000, NULL, '2020-05-03 07:12:38', '2020-05-12 21:38:45'),
(2, 'Lampihong', 'lampihong', 'Barabai', 'Liburan Sama BEB', 'Tari Seman', 'banjar', 'Apam Barabai', '2020-05-09', '2 Days', 'Liburan Santuy', 2500, NULL, '2020-05-10 23:00:48', '2020-05-10 23:00:48'),
(3, 'Pantai Asmara', 'pantai-asmara', 'Palaihari', 'Senang Senang', 'Bareng Keluarga', 'Banjar', 'Sari Laut', '2020-05-02', '3 Days', 'Open Liburan', 50000, NULL, '2020-05-03 07:53:08', '2020-05-10 23:24:22');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'aliftawakkal', 'aliftawakkal98@gmail.com', '2020-05-02 23:48:47', '$2y$10$qIWUR3c1Kl9flaLvoQ8tQusL7nGUsklKXAlnhE.TBHx44NrRBhuQK', NULL, '2020-05-02 23:46:58', '2020-05-02 23:48:47', 'ADMIN', 'alif'),
(2, 'alifuser', 'alif@gmail.com', '2020-05-12 20:59:17', '$2y$10$/W2O0mzDFFHnSJ67QnCRIuyabOKQS2YyQup6Y93cieGSxHhOU/GIS', NULL, '2020-05-03 01:04:35', '2020-05-12 20:59:17', 'USER', 'alifuser'),
(3, 'tawakkal', 'pengguna@gmail.com', '2020-05-12 21:19:56', '$2y$10$ej2t2kh8.8dGc3uEXaCgHOUdj28zvu1t1DeptLlM3q8QNAYVIUaiy', NULL, '2020-05-12 21:19:38', '2020-05-12 21:19:56', 'USER', 'pengguna1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
