-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2023 at 06:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `image_uploader`
--

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_30_214801_create_products_table', 1),
(7, '2023_05_31_202926_create_purchases_table', 1),
(8, '2023_06_01_202808_create_stocks_table', 1),
(9, '2023_06_04_170739_create_photos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `sku` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `image`, `sku`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/user_photo_gallery/647d72242d1d6.jpg', NULL, NULL, NULL),
(2, 1, 'uploads/user_photo_gallery/647d73f51944b.jpg', NULL, '2023-06-04 23:34:45', NULL),
(3, 1, 'uploads/user_photo_gallery/647de02ac330e.jpg', NULL, '2023-06-05 07:16:26', NULL),
(4, 1, 'uploads/user_photo_gallery/647de0a19b61d.jpg', NULL, '2023-06-05 07:18:25', NULL),
(5, 1, 'uploads/user_photo_gallery/647d72242d1d6.jpg', NULL, NULL, NULL),
(6, 1, 'uploads/user_photo_gallery/647d73f51944b.jpg', NULL, '2023-06-04 23:34:45', NULL),
(7, 1, 'uploads/user_photo_gallery/647de02ac330e.jpg', NULL, '2023-06-05 07:16:26', NULL),
(8, 1, 'uploads/user_photo_gallery/647de0a19b61d.jpg', NULL, '2023-06-05 07:18:25', NULL),
(9, 1, 'uploads/user_photo_gallery/647d72242d1d6.jpg', NULL, NULL, NULL),
(10, 1, 'uploads/user_photo_gallery/647d73f51944b.jpg', NULL, '2023-06-04 23:34:45', NULL),
(11, 1, 'uploads/user_photo_gallery/647de02ac330e.jpg', NULL, '2023-06-05 07:16:26', NULL),
(12, 1, 'uploads/user_photo_gallery/647de0a19b61d.jpg', NULL, '2023-06-05 07:18:25', NULL),
(13, 1, 'uploads/user_photo_gallery/647d72242d1d6.jpg', NULL, NULL, NULL),
(14, 1, 'uploads/user_photo_gallery/647d73f51944b.jpg', NULL, '2023-06-04 23:34:45', NULL),
(15, 1, 'uploads/user_photo_gallery/647de02ac330e.jpg', NULL, '2023-06-05 07:16:26', NULL),
(16, 1, 'uploads/user_photo_gallery/647de0a19b61d.jpg', NULL, '2023-06-05 07:18:25', NULL),
(17, 1, 'uploads/user_photo_gallery/647de91731348.jpg', NULL, '2023-06-05 07:54:31', NULL),
(18, 2, 'uploads/user_photo_gallery/647e0674ca0bd.jpg', NULL, '2023-06-05 09:59:48', NULL),
(19, 1, 'uploads/user_photo_gallery/647e08fed0700.jpg', NULL, '2023-06-05 10:10:38', NULL),
(20, 1, 'uploads/user_photo_gallery/647e09997103a.jpg', NULL, '2023-06-05 10:13:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active,0=Inactive',
  `name` varchar(255) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `is_active`, `is_deleted`, `name`, `brand_name`, `slug`, `sku`, `unit`, `image`, `short_description`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Pran Drinks', 'Pran', 'Pran-Drinks', 'PD-YFGZ-270135', 'Liter', 'uploads/product/product_1685668070.jpg', NULL, NULL, 1, NULL, '2023-06-01 19:07:50', '2023-06-01 19:07:50'),
(2, 1, 0, 'Pran Rice', 'Pran', 'Pran-Rice', 'PR-OKEA-539312', 'KG', NULL, NULL, NULL, 1, NULL, '2023-06-01 19:09:03', '2023-06-01 19:09:03'),
(3, 1, 0, 'Pran Tea', 'Pran', 'Pran-Tea', 'PT-6CXG-592068', 'KG', 'uploads/product/product_1685668163.jpg', NULL, NULL, 1, NULL, '2023-06-01 19:09:23', '2023-06-01 19:09:23'),
(4, 1, 0, 'Pran Dal', 'Pran', 'Pran-Dal', 'PD-HFKA-520105', 'KG', NULL, NULL, NULL, 1, NULL, '2023-06-01 19:09:43', '2023-06-01 19:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active,0=Inactive',
  `date` varchar(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `grand_total` decimal(20,2) NOT NULL,
  `note` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `is_active`, `is_deleted`, `date`, `invoice_id`, `supplier`, `grand_total`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2023-06-02', 'YOER-0943-5100', 'Mrs Rohim', 14500.00, 'This is Note', 1, NULL, '2023-06-01 19:13:05', '2023-06-01 19:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `purchase_qty` int(11) DEFAULT NULL,
  `sell_qty` int(11) NOT NULL DEFAULT 0,
  `purchase_price` decimal(20,2) NOT NULL,
  `sell_price` decimal(20,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active,0=Inactive',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `purchase_id`, `product_id`, `purchase_qty`, `sell_qty`, `purchase_price`, `sell_price`, `is_active`, `is_deleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, 0, 100.00, NULL, 1, 0, NULL, NULL, '2023-06-01 19:13:05', NULL),
(2, 1, 2, 15, 0, 250.00, NULL, 1, 0, NULL, NULL, '2023-06-01 19:13:05', NULL),
(3, 1, 3, 25, 0, 150.00, NULL, 1, 0, NULL, NULL, '2023-06-01 19:13:05', NULL),
(4, 1, 4, 30, 0, 200.00, NULL, 1, 0, NULL, NULL, '2023-06-01 19:13:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-05-30 21:19:23', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'bMv41IuWO5V3IoIibr4c64W7HKJ6v61bxvV4d3c1J0mHiTLiQTgmVjLkI2wW', '2023-05-30 21:19:23', '2023-05-30 21:19:23'),
(2, 'KOMOL CHANDRA DEVNATH', 'kiri2kaofficial@gmail.com', NULL, '$2y$10$Q8lW/iTMY2T1Mj7rcm1n0eX3DIsf1sS3ARiAAzb3v4.CKsFLqoU9O', NULL, '2023-06-05 09:58:58', '2023-06-05 09:58:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
