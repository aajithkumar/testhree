-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2026 at 06:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prediction_market_admin`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_12_000000_create_user_coin_address_tables', 1),
(6, '2025_04_29_094644_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 11);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read users', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(2, 'write users', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(3, 'delete users', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(4, 'read kyc', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(5, 'write kyc', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(6, 'read asset', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(7, 'write asset', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(8, 'read admin commissions', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(9, 'write admin commissions', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(10, 'delete admin commissions', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(11, 'read sub admin', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(12, 'write sub admin', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(13, 'delete sub admin', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(14, 'read deposit history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(15, 'write deposit history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(16, 'delete deposit history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(17, 'read withdraw history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(18, 'write withdraw history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(19, 'delete withdraw history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(20, 'read trade history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(21, 'write trade history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(22, 'delete trade history', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(23, 'read support', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(24, 'write support', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(25, 'delete support', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(26, 'read security setting', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(27, 'write security setting', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(28, 'delete security setting', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(29, 'read bank', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(30, 'write bank', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(31, 'delete bank', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48'),
(32, 'write transaction security', 'web', '2026-02-23 09:13:48', '2026-02-23 09:13:48');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 'web', '2022-08-23 05:38:29', '2022-08-23 05:38:29'),
(15, 'Support', 'web', '2025-05-12 07:41:53', '2025-05-12 07:41:53'),
(17, 'Manager', 'web', '2025-05-12 08:08:30', '2025-05-12 08:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `google_2fa_secret` varchar(255) DEFAULT NULL,
  `verified_2fa` enum('google','email','null') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `google_2fa_secret`, `verified_2fa`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Common Package', 'pradimark@admin.com', '2025-04-04 02:26:26', NULL, NULL, '$2y$10$vbyQfvubkBVYrNdU/mnwkui5bPfQIE1kKDi6HnWt745rCM4wP5KrO', NULL, '2025-04-04 02:26:26', '2025-05-08 04:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_avax_addresses`
--

CREATE TABLE `user_avax_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bch_addresses`
--

CREATE TABLE `user_bch_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bnb_addresses`
--

CREATE TABLE `user_bnb_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_bnb_addresses`
--

INSERT INTO `user_bnb_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mainnet', '0xa21804b5b889528b91ec8747ea3ac5a0e3f24094', 'eyJpdiI6ImFndUlMWFBWZk8yUGViNzlMNGUvQXc9PSIsInZhbHVlIjoiMGFIa29Ja2VGeVVaZ0RDaG1nM3h5bDRZSFFzMHRpVWd3QVZqdVhaZGtzeExLSFdJLzdNcGRZc2FVSzIwWDdDMmZrYnlkZ3BKa3FrVzN6alJLWi9UZGtOZis3REdURUxuN21jN2pVcGRnVFk9IiwibWFjIjoiMTY1NTYxN2I2NjRiMGU3MjQzNTE5ODE1MzM5Zjc3YmZiYWYyN2JhNTQ0M2Q1YjVkYThmNDg3MmQyMmZhZjI1MSIsInRhZyI6IiJ9,L59kbU85WT', '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(2, 11, 'Mainnet', '0xca94f2ac35407f997904a79501d9a0863ea765cb', 'eyJpdiI6IjhYR0ZGU3JkdjFLWmFHRjFpaUYvRUE9PSIsInZhbHVlIjoiWUNqeVd6RDJTdTYvRStndWc3MWpKME9Zc2pjY2VxMDlKcW16eklJS1JvMVJ4dktIWWJtR1kxbFJsalErOTRXUVN0NWQvTzBjeHMzQzlSdGZMcDJMQmNqMHVoRjFPWUhiMDQyVWJ2bWpFNGM9IiwibWFjIjoiZTE3NGI4ZTgyOTQ1Zjc4Y2Q2ZTQ0YWU0MTRiYWQ2NjY3M2RhZDI4Njc4OTk1MTkyNWMzNTRiYjVkYzFlMTRiZiIsInRhZyI6IiJ9,7Ma7Mpjz3h', '2026-03-09 03:52:58', '2026-03-09 03:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_btc_addresses`
--

CREATE TABLE `user_btc_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `legacyaddress` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_btc_addresses`
--

INSERT INTO `user_btc_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `legacyaddress`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mainnet', '17P23hxu5gbuSXyGCxRFGMHyVSMrVxiFN1', 'eyJpdiI6ImZJbWM5QnRTM3d5eUk1anZ2WVRMMEE9PSIsInZhbHVlIjoiekl4dEVtOFg3VjU0NzY1WXdrNThoU295dnVQZTk3TFB4UUNhY3E5alRLUmxRUjBscTYzSkJJUUZlWU9nTUEzbVNGRXFYNUJvY3pXREM5VHNJeG5EeHFPRXVZSHl2cEh3cEdMT1FVQzYrems9IiwibWFjIjoiZTQyOTZlYWQ1ZmY4MWFiMDQzMWEzMTcyMDI1YTdhNjgxZmU2OWQ2YTBlNzIyNmRhZDdiMGNhOWE0YTE5ZDVhNyIsInRhZyI6IiJ9,eyJpdiI6IktjWHV5RHN0dE1BMm85YXcvRmdGc1E9PSIsInZhbHVlIjoiemFQczloVnp6dm1keGMzSTdXcXJJNjJQTEhqNy9Kb1M2cDBld0pROElmZWZWOExoTHVXUk9Zdmp4blpLTlU4cUZpKzk0Y1NTNkdsYzFKL002OTV0QlE9PSIsIm1hYyI6IjcwYmQ3YjcxMGIxMGYyZThjODZmODM4ZGQyZDA5NTZmZTMwODQ4NTA3ODJiMzdjYzMwNmNiOWY5NDllZjljYzMiLCJ0YWciOiIifQ==,eyJpdiI6IjZ1VmRsaWl2cDF3c2s4L3VFNUFYd3c9PSIsInZhbHVlIjoiWW9pSHBVd2hTb2dhdmtxZDNLM1duSkpVWE4xLzFic0RTQklyTm5jT2cyaEhjcXVOenpqdU5PSE53L3hlQ2prR1l2Yk0yNDdHMlR2bGRNVFlFeFdLVi9zeGM5MVE2cXZjQVRCeWtIcTNCZkk9IiwibWFjIjoiYjJlMTdhNmE0YTIxZmRkYzg2ZDhhNjcxMjMxNDg1N2EyNjAwZGMxNTM0NWIxNjRmZDM2NTQ0NTZkYjk0ODEwYSIsInRhZyI6IiJ9', NULL, '2026-03-09 02:05:46', '2026-03-09 02:05:46'),
(2, 11, 'Mainnet', '15r77aUBAwfo7SNqwgxDxbSgQdWpJwxA53', 'eyJpdiI6ImVneEhvbGZNakdDYXZ2YUsySGNCT3c9PSIsInZhbHVlIjoiWWd4bkFrbFJrOEZvRkVlUXlZanUrb1A2SGFGaExUaHlCVzhZalRlVXV1cWJsV00wS2xBYzd1VEowNy9SaWJKTnJrOTF6T3RmaWtoK0lqUysvbjQ2ejlqS2tYSWZrdnJHTFFxRmVLQThBVFE9IiwibWFjIjoiMWZjOGI3NDM2ZTE1ZWYzZjQwYTU0MmJlM2I0NjJkOWQzNTk0ZDJhZDIxNjZjNWQ1NGI3YWYwZjFjNTdmOGQ4YyIsInRhZyI6IiJ9,eyJpdiI6IkVYU0lyUllVM0VVWXhxOGs4c0p6c1E9PSIsInZhbHVlIjoidGQ1cUs0azcxNkYzWVI1OHRIYjVyZGlMUmJHdk5aUlFWK3EzVXkyYW53eVZmbjJXdXlGZHpZZ2pqOElDbW1Da0JjTWNXYXdJVkpRTndpRDROUWNrRXc9PSIsIm1hYyI6ImFlMGNkZGE2YzM2ZDMyYzRlNzc4ZjA5ZDVkMzJjMmQyNWNkYjI0YjMwNjdmMmFhZWMwODMyMjRmZmIxM2NiNjAiLCJ0YWciOiIifQ==,eyJpdiI6IjF2TFByblRJSnJ3dC9teVM4V1VjRXc9PSIsInZhbHVlIjoiaWM4bDRndVI3T3BtUkdHakN0cERPdHA0ZGhBNStpSVAxVGtBdS96cWxhUGpzcFV2VHduV3pOWGhxMnJBUG1vOTl3SmI1R0lPVVoxbzcwY2tycGRiK3dGV0Uwcnd4eFFjRU1wdzlwR0lHNTg9IiwibWFjIjoiMzRhNThkNTgyNjkwODViZTk5Y2EwMzJjYjRiNTM1MGQzYWE4M2UzMDM2NjhiODNjNDhhNjcxNzNmNzA4MjQ3YiIsInRhZyI6IiJ9', NULL, '2026-03-09 03:52:56', '2026-03-09 03:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_doge_addresses`
--

CREATE TABLE `user_doge_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_doge_addresses`
--

INSERT INTO `user_doge_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mainnet', 'DGnyxKSKUAxkyA7RGUTmuNRfc6Ku6TGYPJ', 'eyJpdiI6Im1OMC9SUWJlZWxrZDJKMkYzY1Zqenc9PSIsInZhbHVlIjoiL0FCdVA3ZysyazM2a0hiU0VIRVhGVm1CNW1wcTlEaGozTVk3N0tKRXRqeFEvaFV3a3c3ckpSMkhEWlBEQ25oNU5DeFJaR0tOaEJNcGZ6eS9oTGt5c3c9PSIsIm1hYyI6ImRlNjkwZmMxMTI2NjkxYTVjMzVhZmYzMGZiYTgyMDJkMjE2MDNmNWI2ZDkwYjgyMzJjNjg3Y2I1ZjhhZjBkYzIiLCJ0YWciOiIifQ==,A2kRkJYVYV', '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(2, 11, 'Mainnet', 'D8yY6VqgYob5XiszBsGo4vGms2trvPx2GU', 'eyJpdiI6ImJ6allweTRIYXdvdkhwUUd1eEE5ZUE9PSIsInZhbHVlIjoieE1LQ3lJZ0RtRTdJWkZFQWlqSzBxVjdQazNGbWVwMUxRSXNYQVUvV3pYOG83bUlId3lpNkpnbTArdEQyTEY3WkhTSjVSeU5HYStZS2tqa3U2MmVBRkE9PSIsIm1hYyI6IjI5MDU1MGEwY2FjOWFiNjQzNmMwZTJhNDEwYjc5OTdkYWFmNTUyMGZhZTIyOWNkNjc3ZGI4OGJhMzRlYzAyNTkiLCJ0YWciOiIifQ==,icOUz50I6w', '2026-03-09 03:52:59', '2026-03-09 03:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_etc_addresses`
--

CREATE TABLE `user_etc_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_eth_addresses`
--

CREATE TABLE `user_eth_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_eth_addresses`
--

INSERT INTO `user_eth_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mainnet', '0x0abf2306e63f3faf736778185b613962ebac66be', 'eyJpdiI6IkU5ZGZnZGxYSjNpL1k2ejN1MFg3WXc9PSIsInZhbHVlIjoiNTROU2RpQ3E0OGRYYm5HbnBOZ1FCb094cHUyaXJsb0tETkFBNC9RRWJjSENBZEdZeVZmQ0U2U1ptQ01CcTE4NENWTmlJeEpYc0RLOElhT1JDTTlqaTVMWHJwN0E0YWtqTnFCS2VPaWFQNlk9IiwibWFjIjoiODY2MDAwZWI2YTYxYzBmYjk5MzI1YmNkZGQ1NmNlYzk0YTI3NDM3NTFkYTYxN2Q5OWRjMzA2YjdhYjg2MjhkZCIsInRhZyI6IiJ9,nyq2q1mxl6', '2026-03-09 02:05:46', '2026-03-09 02:05:46'),
(2, 11, 'Mainnet', '0x1f3d5774cbaa78ebe75c09196ab31a50024879e4', 'eyJpdiI6Im1tU0ovMmh4Ty9WMWF4eFdHeXZMT2c9PSIsInZhbHVlIjoiU3hRL2dWbGFYeVJZeHErN2xBQXd2TFdTSEtIQkJmNkptN0NjdVRuNFNYaWFNbVJoTFg5N0UzQ0x5Qk5MdEJEUTN0VURRbEUxbGd5VW00RWdrNU54Y0VWdllnVkFBLzlTajdYbGdYbnlQTW89IiwibWFjIjoiOTgyY2NiMDM5OGRhZGUxYjAwZGE0NzUzNTJmMTY3MGQzYjJiZmNhMDg2Y2VhYThmNzE0ODg1MzEzZWQ4NzZmNiIsInRhZyI6IiJ9,K2U5U3vEZg', '2026-03-09 03:52:57', '2026-03-09 03:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_ltc_addresses`
--

CREATE TABLE `user_ltc_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_ltc_addresses`
--

INSERT INTO `user_ltc_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mainnet', 'LdxHXGZSoRAw7iKjbQrxtV6b1qN3v5KfC2', 'eyJpdiI6ImcwUE9YRk1TdmpTYWJRc0w0UDNZc1E9PSIsInZhbHVlIjoicmwzS2xhOFFtUmxnSjNBd1J1QnM0Q0gzYTI1dnl6ZmVQdFJuZWpIU3J4M1BBc1F6bzJGa3ZYcklqTThKWHVJV3pueWNGWWpHN3pBWHFIbUliNEtzc2c9PSIsIm1hYyI6ImQ5MjA1NmEyNzQ3NTgyZmQ2YmQ1YWVhM2I5MGU3NzFjZGQ5YjkyN2FlNzcwNWEzZDJmZWJkZDNjMzE4MzUwYjgiLCJ0YWciOiIifQ==,iHQRqMD6CC', '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(2, 11, 'Mainnet', 'LUkrWNhsjwJNejH7gAhXCijvwUBVH1oQjR', 'eyJpdiI6Ik1wdmt0MWlST21YVUo1bE11RjdUMlE9PSIsInZhbHVlIjoiT2YzOThEMWJzVEJudTdIV0JxVHdNNWNIbytjdHR6TUwzTmRZVjh4ajVSYk1hOGM0bjdhdDR3K2ZWWFAyQWVxdVN0VmFIU21UZmpCMDExWnhyK0s2S2c9PSIsIm1hYyI6Ijg1YTM4MzI3NzJjNjY2YjUxODZlZTY5MzNmYzM3MjllNjQ2ODkzN2NmZmVjNzdiNjI0ZDY0YWE0MTY2OGJhNWUiLCJ0YWciOiIifQ==,a7I9I8HDsf', '2026-03-09 03:52:59', '2026-03-09 03:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_pol_addresses`
--

CREATE TABLE `user_pol_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_sol_addresses`
--

CREATE TABLE `user_sol_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_token_addresses`
--

CREATE TABLE `user_token_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_token_addresses`
--

INSERT INTO `user_token_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `created_at`, `updated_at`) VALUES
(1, 2, 'ERC20', '0xB00799b44EFE3933D66CAc5026e124387Bdf0e3A', 'eyJpdiI6Img1R2Y0dWRxR0FGQ2lqaWM2Rzl0R2c9PSIsInZhbHVlIjoiL1o1ci9YSTh6TzlFSkYwM2Y5WUJoYVYwV2NSS0ZXWDZYZEhWMzJPcmhnVGNvWWR1V2VvcS9tdFpmdTc4V3dZeW5YYkxLWnZQTDBXV2JEa1k0aGVSMktVbDhCVm9Yemd2eDBMcWVSc0R5M2c9IiwibWFjIjoiODE1NjI5YmQ4NTJlNDFmY2JlY2YxNWJhNWQyOThjNzJiNDIxZjFjYjQ2M2IwNDY0MmQxMTg3NDgxNGJhNzRkMCIsInRhZyI6IiJ9,pIR1cgfQuz', '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(2, 2, 'BEP20', '0x93Ca8c476B198b431b8CF6eC2E159b291D86bBCc', 'eyJpdiI6IjNrUkVCczN0ZTQxd09sYnFUcm5lWEE9PSIsInZhbHVlIjoiSys5cUdDYnRRcU9tRjhOVVNPVGRrQklBUUE3czhmQm53MzRPWUJaRlF2MUp5SjZwRk9pSm9GSUFsQjZYSFloRkYxaGJjNWl4ek1Na1dmY2NhdXdjbWlBdnJaQnc0SXRWMTdhaWhsa2RFQm89IiwibWFjIjoiZTQ3Mzk3ZmE2MjQ4ZmM0ZjFhYTNiMmNkOWU5N2I0MTQyYjE0M2JjYzMyNjdhZWQwMzYzYzdkMzUwZTQyMTk4NyIsInRhZyI6IiJ9,u3RoJCK7gH', '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(3, 2, 'TRC20', 'TMH6Jrodr2BedMZnJxd1GL4h89F95tTgyr', 'eyJpdiI6Ik5PNW4xeVJNcUNEQ3c1Y2E3Q1J3THc9PSIsInZhbHVlIjoiZnhOSXMzKzl4cTNXNVUzb3NUeWl2TmU0MUpLUzE3d1lpYVpqYytwUTVjYWo3eXExRktrQldRejg4YnJaZWd2d3B3SFcvZHlYdGdpLyszcnVhMkpaN0R3YzNJV1RDU2ZuZXczQldnV0FGTjQ9IiwibWFjIjoiMWE0N2JiOTZjMjNhNzZjNDVjZDMzMjA5Y2IyNjU3YWZhMDliODg3MDA0Yzg3ODI4YzJmMDhmNzU5ZDYxZGVlMiIsInRhZyI6IiJ9,jI5xqcsLbz', '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(4, 11, 'ERC20', '0xb7Fc546dC47A81912abe0B6861f2b732910ce950', 'eyJpdiI6ImZDWnNLNk9pK29CdG41aGpxZDZheEE9PSIsInZhbHVlIjoiVW1vYXF4OFBYWkJrUlhSa0F1RHVyMGlqRnVWa2VVRERWSWRMY1E3dEpKcUFMRW9qSXJBWXlWMHNud1JDUE1CUUdac2JXN0dLbVowTWMxUGNvZEFvMThQbEhRdGRENEZRS1JSYktSSXdJODg9IiwibWFjIjoiMmNjOGU5MmI0MmIwM2U3MTBlNmRlNjM2NzQwMGZmMTE3NzEyNjBjMzIxODU3NTVhMmQ1NWFkYzkxYTM3ZDU2ZSIsInRhZyI6IiJ9,klEHYV6pgg', '2026-03-09 03:52:58', '2026-03-09 03:52:58'),
(5, 11, 'BEP20', '0x6C333713118eBD1b67439B7eFDF1aECB4549D8FB', 'eyJpdiI6IkxZaXZkU0pCaTFFNXIzVWF0M0FhZmc9PSIsInZhbHVlIjoickVhOFF6eTNSSk1WQm9aeStxNmd6Ujc2YW9Uclh2RVJ1R2dKekdPcnBmVWQ3T21VSHFGdjNTN1M2VXlSRUtscG5iWUh1b2FMdE03T2ZlZXM4Q3lRcnl5aXVhU09aSjRoRmZaZThiME1mWTA9IiwibWFjIjoiZDcyMTMwM2VmMDc4MGM4NGY1NDI0ZDVmZDNhZWZiZmIyMTlhM2I5MzZlNDJmZTE5OTAxMTBkODJhMTdiOWQyYiIsInRhZyI6IiJ9,KBtvM3RjLP', '2026-03-09 03:52:58', '2026-03-09 03:52:58'),
(6, 11, 'TRC20', 'TMQuNX5z9Xpwzk7AGVGtEV5Ms2RtryaxhY', 'eyJpdiI6IlNES2VNdXRETEtZTlRZU2gxNDFqa1E9PSIsInZhbHVlIjoiNzBoL2NQNkNaZVBnMTZ4bWdRbDVWems0anp3M2tJenM0SXdMalJKVyttNGZiUlVETENVUlhCQkVRMDNxNFhEbmlETHVQZXpzNUR2dkt5clNmVHRTc0VkR0lldXBqcFhJNGpuaStMcUk3aVE9IiwibWFjIjoiYWIzM2ZmMDY3ODE2OWMzZTg0YmQ0ZmUzZWViYjRjMzNhMzg1MjQyMjc5MGVkYmZjYWM2OGE1NTExZTVmZGMwNSIsInRhZyI6IiJ9,xpM5epPRU8', '2026-03-09 03:52:58', '2026-03-09 03:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_ton_addresses`
--

CREATE TABLE `user_ton_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_trx_addresses`
--

CREATE TABLE `user_trx_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_trx_addresses`
--

INSERT INTO `user_trx_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mainnet', 'TKLpDTr4XfwqvC4158cLiMKr7pFJbZjWZG', 'eyJpdiI6IlB6Sm9mLytqY3FJYUUvd1FuU25zMlE9PSIsInZhbHVlIjoiTUR1RWtYTVR6dEF3VmZPK1JJZUJkZzZJRTVXTHdPWDg2NXM1VTdVbi9JZ1Z2UmpvOU9JVUlQdERHQ25kemN1VlhhT05JQjdSeGFZZGdwZmZ0WWk1M1JoNXYwQTRNL2xEdjBuUDUrMEtJZU09IiwibWFjIjoiZTA0NWUxMDhhZjkyZTM1ZWIyYzQ5ZjA1MWFmNDNiMDZmYjU3ZWE2OThkNDg2MGJiZjVhMTk5NmUyNDQ5ZGFhZCIsInRhZyI6IiJ9,W7671QLKLL', '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(2, 11, 'Mainnet', 'TCiYsPmEKyscFDnwtgEd4pebvjbfq3JjmP', 'eyJpdiI6IlN5UmRMOE1oNnAwanpZTUk1eFRnMHc9PSIsInZhbHVlIjoiSTcxMUMvN2tTbHYzTHZWU3hEblNoeFB6UnVpcDRhVFMxLzJma21PeWwrQm14elU2ZzNIOXkyRjVIWVR5aHNLYUZjZUhvOWpmS2xFYlBLV2ZOdE1MSlhxcW5EajE3UjdiZXVBTk5PV1BTSWs9IiwibWFjIjoiOWZhMzlhZTQzYmM0NTFkYjY5ZmJhNWE1Y2QzNDI5ZTdjNjc4NzYzNTNmMmI2YmZhODZjMDExZTQyMTBjYmE2OCIsInRhZyI6IiJ9,sRpSQw7pOU', '2026-03-09 03:52:58', '2026-03-09 03:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_xlm_addresses`
--

CREATE TABLE `user_xlm_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_xrp_addresses`
--

CREATE TABLE `user_xrp_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `narchandru` text DEFAULT NULL,
  `memo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_xrp_addresses`
--

INSERT INTO `user_xrp_addresses` (`id`, `user_id`, `type`, `address`, `narchandru`, `memo`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mainnet', 'rKy2EH8ZXoqtNj6vH', NULL, 745947, '2026-03-09 02:05:47', '2026-03-09 02:05:47'),
(2, 11, 'Mainnet', 'rKy2EH8ZXoqtNj6vH', NULL, 447466, '2026-03-09 03:52:58', '2026-03-09 03:52:58');

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_avax_addresses`
--
ALTER TABLE `user_avax_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bch_addresses`
--
ALTER TABLE `user_bch_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bnb_addresses`
--
ALTER TABLE `user_bnb_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_btc_addresses`
--
ALTER TABLE `user_btc_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_doge_addresses`
--
ALTER TABLE `user_doge_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_etc_addresses`
--
ALTER TABLE `user_etc_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_eth_addresses`
--
ALTER TABLE `user_eth_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ltc_addresses`
--
ALTER TABLE `user_ltc_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pol_addresses`
--
ALTER TABLE `user_pol_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sol_addresses`
--
ALTER TABLE `user_sol_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token_addresses`
--
ALTER TABLE `user_token_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ton_addresses`
--
ALTER TABLE `user_ton_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_trx_addresses`
--
ALTER TABLE `user_trx_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_xlm_addresses`
--
ALTER TABLE `user_xlm_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_xrp_addresses`
--
ALTER TABLE `user_xrp_addresses`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_avax_addresses`
--
ALTER TABLE `user_avax_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_bch_addresses`
--
ALTER TABLE `user_bch_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_bnb_addresses`
--
ALTER TABLE `user_bnb_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_btc_addresses`
--
ALTER TABLE `user_btc_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_doge_addresses`
--
ALTER TABLE `user_doge_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_etc_addresses`
--
ALTER TABLE `user_etc_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_eth_addresses`
--
ALTER TABLE `user_eth_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_ltc_addresses`
--
ALTER TABLE `user_ltc_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_pol_addresses`
--
ALTER TABLE `user_pol_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sol_addresses`
--
ALTER TABLE `user_sol_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_token_addresses`
--
ALTER TABLE `user_token_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_ton_addresses`
--
ALTER TABLE `user_ton_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_trx_addresses`
--
ALTER TABLE `user_trx_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_xlm_addresses`
--
ALTER TABLE `user_xlm_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_xrp_addresses`
--
ALTER TABLE `user_xrp_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
