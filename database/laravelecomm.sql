-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 02:42 PM
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
-- Database: `laravelecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `product_title`, `product_id`, `price`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(11, '1', 'Miss Ashleigh Stokes', 'kayla91@example.org', NULL, NULL, 'Product 4', '4', '75000', '1', '1729339357.jpg', '2024-10-21 00:49:54', '2024-10-21 00:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'men cloths', '2024-10-17 04:50:25', '2024-10-17 04:50:25'),
(2, 'women cloths', '2024-10-17 04:50:43', '2024-10-17 04:50:43'),
(3, 'men footwear', '2024-10-17 04:51:08', '2024-10-17 04:51:08'),
(4, 'women footwear', '2024-10-17 04:51:14', '2024-10-17 04:51:14');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_23_203544_create_sessions_table', 1),
(7, '2023_05_01_112737_create_categories_table', 1),
(8, '2023_05_01_125620_create_products_table', 1),
(9, '2023_05_03_185136_create_carts_table', 1),
(10, '2023_05_04_102600_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tracking_id` varchar(255) DEFAULT NULL,
  `delivery_status` enum('pending','shipped','delivered') DEFAULT NULL,
  `payment_status` enum('pending','paid','cancelled','refunded','cash_on_delivery','failed') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `product_title`, `product_id`, `price`, `quantity`, `image`, `tracking_id`, `delivery_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Miss Ashleigh Stokes', 'kayla91@example.org', NULL, NULL, 'Product 3', '3', '130000', '1', '1729339344.png', 'TRK6713a9584795', 'pending', 'cash_on_delivery', '2024-10-19 07:13:04', '2024-10-19 07:13:04'),
(3, '1', 'Miss Ashleigh Stokes', 'kayla91@example.org', NULL, NULL, 'Headphone', '1', '300000', '2', '1729340774.jpg', 'TRK6715e6b1702d', 'pending', 'cash_on_delivery', '2024-10-20 23:59:21', '2024-10-20 23:59:21'),
(4, '1', 'Miss Ashleigh Stokes', 'kayla91@example.org', NULL, NULL, 'Product 10', '10', '24000', '3', '1729339424.jpg', 'TRK6715e6b170e7', 'pending', 'cash_on_delivery', '2024-10-20 23:59:21', '2024-10-21 00:59:00'),
(6, '1', 'Miss Ashleigh Stokes', 'kayla91@example.org', NULL, NULL, 'Product 4', '4', '75000', '1', '1729339357.jpg', 'TRK6715eb011c48', 'pending', 'cash_on_delivery', '2024-10-21 00:17:45', '2024-10-21 00:17:45'),
(7, '1', 'Miss Ashleigh Stokes', 'kayla91@example.org', NULL, NULL, 'Product 5', '5', '160000', '2', '1729339369.jpg', 'TRK6715eb011d78', 'pending', 'cash_on_delivery', '2024-10-21 00:17:45', '2024-10-21 00:17:45');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `screen_size` varchar(255) DEFAULT NULL,
  `screen_resolution` varchar(255) DEFAULT NULL,
  `screen_refresh_rate` varchar(255) DEFAULT NULL,
  `device_weight` varchar(255) DEFAULT NULL,
  `graphics_type` varchar(255) DEFAULT NULL,
  `graphics_card_memory` varchar(255) DEFAULT NULL,
  `ssd_capacity` varchar(255) DEFAULT NULL,
  `operating_system` varchar(255) DEFAULT NULL,
  `processor` varchar(255) DEFAULT NULL,
  `processor_generation` varchar(255) DEFAULT NULL,
  `processor_type` varchar(255) DEFAULT NULL,
  `processor_speed` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `keyboard` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `category`, `quantity`, `price`, `discount_price`, `screen_size`, `screen_resolution`, `screen_refresh_rate`, `device_weight`, `graphics_type`, `graphics_card_memory`, `ssd_capacity`, `operating_system`, `processor`, `processor_generation`, `processor_type`, `processor_speed`, `ram`, `keyboard`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Headphone', '1729340774.jpg', 'Category 1', '32', '157550', '150000', '16 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 2', '1th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:07', '2024-10-19 06:59:57'),
(2, 'Product 2', '1729340789.jpg', 'Category 2', '12', '55826', '54000', '17 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 1', '1th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:09', '2024-10-19 06:56:29'),
(3, 'Product 3', '1729339344.png', 'Category 1', '17', '137089', '130000', '13 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 3', '3th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:09', '2024-10-19 06:59:06'),
(4, 'Product 4', '1729339357.jpg', 'Category 2', '27', '75093', '75000', '14 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 2', '2th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:10', '2024-10-21 00:49:54'),
(5, 'Product 5', '1729339369.jpg', 'Category 2', '21', '89368', '80000', '13 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 2', '3th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:12', '2024-10-21 00:16:42'),
(6, 'Product 6', '1729339387.jpg', 'Category 2', '25', '131911', '130000', '17 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 4', '3th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:13', '2024-10-19 06:35:27'),
(7, 'Product 7', '1729339401.png', 'Category 3', '47', '75098', '75000', '13 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 2', '3th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:14', '2024-10-19 06:59:39'),
(8, 'Product 8', '1729339439.jpg', 'Category 1', '27', '167945', '160000', '14 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 1', '1th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:15', '2024-10-19 06:34:56'),
(9, 'Product 9', '1729339452.jpg', 'Category 3', '40', '127569', '120000', '13 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 5', '2th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:17', '2024-10-19 06:34:12'),
(10, 'Product 10', '1729339424.jpg', 'Category 1', '35', '82228', '8000', '15 inches', '1920x1080', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor 1', '2th Gen', NULL, NULL, NULL, NULL, NULL, '2024-10-17 05:41:18', '2024-10-19 07:15:19');

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
('bwH8tKj79KwwIgfPFiD1aSRq1F5ssGJ6CY0FYsfe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUNRTWt6T0ROQzY5NFBOM2Q1RUU1aDZDUnlNdDNsaUZVcU1CNEp5eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvTGFyYXZlbEVjb21tL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729514500),
('WzEfNmCkGubJ2ntz318zoS9rL5B0PR9hKx7tlQYz', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRlpMTGg0TlRBU29UZFlzRGRaaFJaUWkyUnpTeUczSDFxcUExcjFzMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9sb2NhbGhvc3QvTGFyYXZlbEVjb21tL3B1YmxpYy91c2VyLW9yZGVycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJhbGVydCI7YTowOnt9fQ==', 1729492712);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Miss Ashleigh Stokes', 'kayla91@example.org', NULL, NULL, '1', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wM02PHA9Ew', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(2, 'Lupe Grady', 'keon77@example.org', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'tSa2vjUHWD', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(3, 'Shane Rutherford', 'qbraun@example.net', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4RKWq90rRZ', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(4, 'Kaden Becker', 'milo.keebler@example.net', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uD8tGU3tYa', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(5, 'Ms. Pinkie Konopelski', 'devon06@example.org', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7TlWkZEtIG', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(6, 'Maverick Hill', 'will.aubrey@example.org', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '9ZSiOfLjjk', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(7, 'Della Ernser', 'wkovacek@example.net', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AzFos9eXfU', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(8, 'Prof. Celine Medhurst V', 'runte.carolina@example.com', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0pQPvvPjAF', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(9, 'Lydia Auer', 'daron.thompson@example.com', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BgcxhlxAAi', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32'),
(10, 'Dr. Colt Davis V', 'alessandra.kozey@example.com', NULL, NULL, '0', '2024-10-17 04:29:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SZnCPl48L1', NULL, NULL, '2024-10-17 04:29:32', '2024-10-17 04:29:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
