-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2026 a las 04:06:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agrocomercial`
--
CREATE DATABASE IF NOT EXISTS `agrocomercial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agrocomercial`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('agrocomercial-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1770259876),
('agrocomercial-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1770259876;', 1770259876);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
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
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('plwPzahjXoIR4Z5tM35nT9YcaXrJ988aus5OX9Ug', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWHI3OWFsRzVhTkZ6WmY1a0N0dmNHa08zOGhoeEgzUTg2eVNkMVNaYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvdXNlcnMiO3M6NToicm91dGUiO3M6NDA6ImZpbGFtZW50LmRhc2hib2FyZC5yZXNvdXJjZXMudXNlcnMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiOGY5MjQyYTkzNjJjOWUyYzA3OWZkN2JmNjAxMTdmMzJhM2M0OGZiZTI2YjRhMjZiMmJlOTNkZmFhMTE5OTFjOSI7czo2OiJ0YWJsZXMiO2E6MTp7czo0MDoiZTY0NDgzM2Y0ZTRlMDg3MTIzMTVkYTcxYjMzZmFjZDJfY29sdW1ucyI7YTo1OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibmFtZSI7czo1OiJsYWJlbCI7czo0OiJOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJlbWFpbCI7czo1OiJsYWJlbCI7czoxMzoiRW1haWwgYWRkcmVzcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtzOjU6ImxhYmVsIjtzOjE3OiJFbWFpbCB2ZXJpZmllZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319fX0=', 1770260019);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@admin.com', NULL, '$2y$12$QPFrM0cvZgVcMuhV15upeee9Oib5v0jpgqaEaq6VdNhen/H9GlIu2', NULL, '2026-02-05 05:48:35', '2026-02-05 05:48:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `agros`
--
CREATE DATABASE IF NOT EXISTS `agros` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agros`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('agros-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1765169736),
('agros-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1765169736;', 1765169736);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `fertiriegos`
--

CREATE TABLE `fertiriegos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productos_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `riegos_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fertiriegos`
--

INSERT INTO `fertiriegos` (`id`, `productos_id`, `cantidad`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`, `descripcion`, `estado`, `created_at`, `updated_at`, `riegos_id`) VALUES
(1, 1, 25.00, '2025-11-12', '2025-11-12', '19:18:08', '19:30:16', 'NPK dosis de noviembre ', 1, '2025-11-13 00:20:08', '2025-11-13 08:46:36', 0),
(2, 1, 25.00, '2025-11-13', '2025-11-13', '01:19:42', '01:47:47', 'Aplicación para cuaja', 1, '2025-11-13 07:20:29', '2025-11-13 07:20:29', 0),
(3, 1, 10.00, '2025-11-13', '2025-11-13', '01:32:15', '02:50:19', 'Prueba de inserción', 1, '2025-11-13 07:32:41', '2025-11-13 08:27:59', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_12_025551_create_productos_table', 2),
(5, '2025_11_12_025633_create_stocks_table', 3),
(6, '2025_11_12_202412_create_predios_table', 4),
(7, '2025_11_12_202430_create_sectors_table', 4),
(8, '2025_11_12_202500_create_riegos_table', 4),
(9, '2025_11_12_204750_create_fertiriegos_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predios`
--

CREATE TABLE `predios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fojas` varchar(255) DEFAULT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `predios`
--

INSERT INTO `predios` (`id`, `nombre`, `descripcion`, `direccion`, `fojas`, `coordenadas`, `rol`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Las Garzas', 'Lote parte de la subdivisión de parcela 8 ', 'calle los robles N° 23 Lote 8', '23 N° 57 Año 2004', 'N 4005506  O 203455', '200-101', 1, '2025-11-13 00:01:12', '2025-11-13 00:01:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `unidad_medida` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `capacidad`, `unidad_medida`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Ultrasol  especial palto ', 'SQM', 25, 'Kg', 'NPK  14% Nitrogeno  18% fosforo  5% Potasio ', 1, '2025-11-12 22:43:22', '2025-11-12 22:43:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riegos`
--

CREATE TABLE `riegos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sectores_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `riegos`
--

INSERT INTO `riegos` (`id`, `sectores_id`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-11-12', '2025-11-13', '18:17:01', '20:17:06', 1, '2025-11-13 00:17:13', '2025-11-14 03:28:10'),
(2, 2, '2025-11-13', '2025-11-13', '13:58:22', '15:58:27', 1, '2025-11-13 19:58:33', '2025-11-13 19:58:37'),
(3, 1, '2025-11-13', '2025-11-13', '21:23:59', '21:32:28', 1, '2025-11-14 03:26:39', '2025-11-14 03:26:39'),
(4, 1, '2025-12-08', '2025-12-09', '22:30:00', '00:30:00', 1, '2025-12-08 08:10:50', '2025-12-08 08:32:11'),
(5, 2, '2025-12-09', '2025-12-09', '00:30:00', '01:30:00', 1, '2025-12-08 08:32:52', '2025-12-08 08:32:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sectores`
--

CREATE TABLE `sectores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `predios_id` bigint(20) UNSIGNED NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sectores`
--

INSERT INTO `sectores` (`id`, `nombre`, `descripcion`, `predios_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'A', '200 arboles ,  con tipo de suelo arcilloso ', 1, 1, '2025-11-13 00:02:37', '2025-11-13 00:02:37'),
(2, 'B', '250 árboles, suelo con buen drenaje ', 1, 1, '2025-11-13 00:03:56', '2025-11-13 00:03:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
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
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pg2u3X3kVOcVD65JcbjX8GOO0QUy56UFdQH9IWMA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiVHdiOE9qaUZ1em5VTFh1dDB1d0FQcjBqU2xDb3JEekE2bHRSaVpmUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MzQ6ImZpbGFtZW50LmRhc2hib2FyZC5wYWdlcy5kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJHpzLkt5SUYwZVVETlV3SUUxTEdjWS5Gd2VLdVRDR3VNQWJFOThFNWdmWlJOUnBvRFBuLjdpIjtzOjY6InRhYmxlcyI7YTo3OntzOjQwOiJlOTdlMmUzN2I5ZTk2NGFmOGI1NDZhYTk0NDYwMjIwOV9jb2x1bW5zIjthOjg6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToic2VjdG9yZXNfaWQiO3M6NToibGFiZWwiO3M6MTE6IlNlY3RvcmVzIGlkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMjoiZmVjaGFfaW5pY2lvIjtzOjU6ImxhYmVsIjtzOjEyOiJGZWNoYSBpbmljaW8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6ImZlY2hhX2ZpbiI7czo1OiJsYWJlbCI7czo5OiJGZWNoYSBmaW4iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJob3JhX2luaWNpbyI7czo1OiJsYWJlbCI7czoxMToiSG9yYSBpbmljaW8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6ImhvcmFfZmluIjtzOjU6ImxhYmVsIjtzOjg6IkhvcmEgZmluIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJlc3RhZG8iO3M6NToibGFiZWwiO3M6NjoiRXN0YWRvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJhYjAyZTEzYjk4N2UxYmFiNWJhMmE0MTJlMjc2OWFhNF9jb2x1bW5zIjthOjExOntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTY6InByb2R1Y3Rvcy5ub21icmUiO3M6NToibGFiZWwiO3M6MTI6IkZlcnRpbGl6YW50ZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6ODoiY2FudGlkYWQiO3M6NToibGFiZWwiO3M6ODoiQ2FudGlkYWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEyOiJmZWNoYV9pbmljaW8iO3M6NToibGFiZWwiO3M6MTI6IkZlY2hhIGluaWNpbyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToiZmVjaGFfZmluIjtzOjU6ImxhYmVsIjtzOjk6IkZlY2hhIGZpbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTE6ImhvcmFfaW5pY2lvIjtzOjU6ImxhYmVsIjtzOjExOiJIb3JhIGluaWNpbyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6ODoiaG9yYV9maW4iO3M6NToibGFiZWwiO3M6ODoiSG9yYSBmaW4iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6InRpZW1wbyI7czo1OiJsYWJlbCI7czo5OiJEdXJhY2nDs24iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo3O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJkZXNjcmlwY2lvbiI7czo1OiJsYWJlbCI7czoxMToiRGVzY3JpcGNpb24iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo4O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6ImVzdGFkbyI7czo1OiJsYWJlbCI7czo2OiJFc3RhZG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo5O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToxMDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiI5ZTA4ODg5YWQzNWE3MjJhNTJlZmJkZmViMGZhMzBiYV9jb2x1bW5zIjthOjk6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJub21icmUiO3M6NToibGFiZWwiO3M6NjoiTm9tYnJlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiZGVzY3JpcGNpb24iO3M6NToibGFiZWwiO3M6MTE6IkRlc2NyaXBjaW9uIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJkaXJlY2Npb24iO3M6NToibGFiZWwiO3M6OToiRGlyZWNjaW9uIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJmb2phcyI7czo1OiJsYWJlbCI7czo1OiJGb2phcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTE6ImNvb3JkZW5hZGFzIjtzOjU6ImxhYmVsIjtzOjExOiJDb29yZGVuYWRhcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6Mzoicm9sIjtzOjU6ImxhYmVsIjtzOjM6IlJvbCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjY7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NjoiZXN0YWRvIjtzOjU6ImxhYmVsIjtzOjY6IkVzdGFkbyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjc7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjg7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiYjM0OTVmY2QwM2U2MTNhNDZlMjBhMjMwODY0Nzg5NzBfY29sdW1ucyI7YTo2OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6Njoibm9tYnJlIjtzOjU6ImxhYmVsIjtzOjY6Ik5vbWJyZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTE6ImRlc2NyaXBjaW9uIjtzOjU6ImxhYmVsIjtzOjExOiJEZXNjcmlwY2lvbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InByZWRpb3NfaWQiO3M6NToibGFiZWwiO3M6MTA6IlByZWRpb3MgaWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6ImVzdGFkbyI7czo1OiJsYWJlbCI7czo2OiJFc3RhZG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fXM6NDA6IjQ3ZTY3OGM4YTJlN2EyMTA2OWJmZjg1ZDhjYzU3OTBlX2NvbHVtbnMiO2E6ODp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEyOiJwcm9kdWN0b3NfaWQiO3M6NToibGFiZWwiO3M6MTI6IlByb2R1Y3RvcyBpZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibm90YSI7czo1OiJsYWJlbCI7czo0OiJOb3RhIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMjoiZmVjaGFfY29tcHJhIjtzOjU6ImxhYmVsIjtzOjEyOiJGZWNoYSBjb21wcmEiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6ImNhbnRpZGFkIjtzOjU6ImxhYmVsIjtzOjg6IkNhbnRpZGFkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJwcmVjaW8iO3M6NToibGFiZWwiO3M6NjoiUHJlY2lvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJlc3RhZG8iO3M6NToibGFiZWwiO3M6NjoiRXN0YWRvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJlNjQ0ODMzZjRlNGUwODcxMjMxNWRhNzFiMzNmYWNkMl9jb2x1bW5zIjthOjU6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImVtYWlsIjtzOjU6ImxhYmVsIjtzOjEzOiJFbWFpbCBhZGRyZXNzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO3M6NToibGFiZWwiO3M6MTc6IkVtYWlsIHZlcmlmaWVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiIxMTdmNTFjN2JjYTRhMzRjZWZkMmJjOTdmOWE2NTkxOF9jb2x1bW5zIjthOjg6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJub21icmUiO3M6NToibGFiZWwiO3M6NjoiTm9tYnJlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJtYXJjYSI7czo1OiJsYWJlbCI7czo1OiJNYXJjYSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToiY2FwYWNpZGFkIjtzOjU6ImxhYmVsIjtzOjk6IkNhcGFjaWRhZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTM6InVuaWRhZF9tZWRpZGEiO3M6NToibGFiZWwiO3M6MTM6IlVuaWRhZCBtZWRpZGEiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJkZXNjcmlwY2lvbiI7czo1OiJsYWJlbCI7czoxMToiRGVzY3JpcGNpb24iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6ImVzdGFkbyI7czo1OiJsYWJlbCI7czo2OiJFc3RhZG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo3O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1765175121);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productos_id` bigint(20) UNSIGNED NOT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `fecha_compra` date NOT NULL,
  `cantidad` decimal(8,2) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id`, `productos_id`, `nota`, `fecha_compra`, `cantidad`, `precio`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 'Compra de producto en Discentro Factura 112030', '2025-11-12', 10.00, 23000, 1, '2025-11-12 22:47:31', '2025-11-12 22:47:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$zs.KyIF0eUDNUwIE1LGcY.FweKuTCGuMAbE98E5gfZRNRpoDPn.7i', 'vJBU1sSYP1uEGxbvsSqGz4sCRI0KoQQIYhI7V7uMbQ37DWkWQ8c6SHxozDXc', '2025-11-12 02:08:01', '2025-11-12 02:08:01'),
(2, 'gabriel', 'gabriel.jamett@gmail.com', NULL, '$2y$12$6joePhkbG9XQ4TSOHGqW9utC07MGURssR/wShX7QK.ivPaGSlx.gq', NULL, '2025-11-13 19:51:46', '2025-11-13 19:51:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `fertiriegos`
--
ALTER TABLE `fertiriegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fertiriegos_productos_id_foreign` (`productos_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `predios`
--
ALTER TABLE `predios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `riegos`
--
ALTER TABLE `riegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riegos_sectores_id_foreign` (`sectores_id`);

--
-- Indices de la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sectores_predios_id_foreign` (`predios_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_productos_id_foreign` (`productos_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fertiriegos`
--
ALTER TABLE `fertiriegos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `predios`
--
ALTER TABLE `predios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `riegos`
--
ALTER TABLE `riegos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sectores`
--
ALTER TABLE `sectores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fertiriegos`
--
ALTER TABLE `fertiriegos`
  ADD CONSTRAINT `fertiriegos_productos_id_foreign` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `riegos`
--
ALTER TABLE `riegos`
  ADD CONSTRAINT `riegos_sectores_id_foreign` FOREIGN KEY (`sectores_id`) REFERENCES `sectores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD CONSTRAINT `sectores_predios_id_foreign` FOREIGN KEY (`predios_id`) REFERENCES `predios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_productos_id_foreign` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Volcado de datos para la tabla `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'prueba', 'root', 'productores - recepción ultimo hasta el primero', 'SELECT recepciones.productores_id,productores.nombre \r\nFROM `recepciones` \r\nLEFT JOIN productores ON recepciones.productores_id = productores.id\r\nGROUP BY recepciones.productores_id\r\nORDER BY `fecha` DESC;'),
(2, 'prueba', 'root', 'RecepcionEstado', 'SELECT recepciones.id,productores.nombre, tipos_recepciones.tipo ,recepciones.fecha ,recepciones.estado\r\nFROM recepciones \r\nLEFT JOIN productores ON recepciones.productores_id = productores.id\r\nLEFT JOIN tipos_recepciones ON recepciones.tipos_recepciones_id = tipos_recepciones.id\r\nWHERE recepciones.estado = \'Pendiente\';'),
(3, 'prueba', 'root', 'RecepcionEstado', 'SELECT recepciones.id,productores.nombre, tipos_recepciones.tipo ,recepciones.fecha ,recepciones.estado\r\nFROM recepciones \r\nLEFT JOIN productores ON recepciones.productores_id = productores.id\r\nLEFT JOIN tipos_recepciones ON recepciones.tipos_recepciones_id = tipos_recepciones.id\r\nWHERE recepciones.estado = \'Pendiente\';');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"full_screen\":\"off\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('prueba', 1, 'Módulo recepción DB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"agrocomercial\",\"table\":\"users\"},{\"db\":\"prueba\",\"table\":\"recepciones\"},{\"db\":\"prueba\",\"table\":\"calibres\"},{\"db\":\"prueba\",\"table\":\"users\"},{\"db\":\"prueba\",\"table\":\"recepcion_estado\"},{\"db\":\"prueba\",\"table\":\"productores_recepcion\"},{\"db\":\"prueba\",\"table\":\"recepciones_detalles\"},{\"db\":\"prueba\",\"table\":\"productos\"},{\"db\":\"prueba\",\"table\":\"variedades\"},{\"db\":\"prueba\",\"table\":\"procesos_detalles\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('prueba', 'cache', 1, 2034, 29),
('prueba', 'cache_locks', 1, 2256, 788),
('prueba', 'calibres', 1, 1634, 109),
('prueba', 'camaras', 1, 419, 744),
('prueba', 'contenedores', 1, 749, 306),
('prueba', 'failed_jobs', 1, 2034, 278),
('prueba', 'job_batches', 1, 2033, 494),
('prueba', 'jobs', 1, 2246, 576),
('prueba', 'migrations', 1, 2033, 138),
('prueba', 'password_reset_tokens', 1, 2221, 38),
('prueba', 'procesos', 1, 755, 82),
('prueba', 'procesos_detalles', 1, 1142, 62),
('prueba', 'productores', 1, 175, 318),
('prueba', 'productos', 1, 1685, 422),
('prueba', 'recepciones', 1, 359, 104),
('prueba', 'recepciones_detalles', 1, 754, 654),
('prueba', 'recepciones_detalles_calibres', 1, 1029, 387),
('prueba', 'sessions', 1, 2252, 397),
('prueba', 'tipos_recepciones', 1, 86, 21),
('prueba', 'users', 1, 2231, 160),
('prueba', 'variedades', 1, 1623, 692);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'prueba', 'procesos_detalles', '{\"sorted_col\":\"`calibres_id` DESC\"}', '2026-02-01 21:18:51'),
('root', 'prueba', 'productores', '{\"sorted_col\":\"`productores`.`id` DESC\"}', '2026-01-24 21:27:58'),
('root', 'prueba', 'recepciones', '{\"sorted_col\":\"`recepciones`.`id` DESC\"}', '2026-01-24 23:31:50'),
('root', 'prueba', 'recepciones_detalles', '{\"sorted_col\":\"`recepciones_detalles`.`fecha` DESC\"}', '2025-12-07 00:08:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-02-05 02:52:33', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('prueba-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:2;', 1765599636),
('prueba-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1765599636;', 1765599636),
('prueba-cache-livewire-rate-limiter:43b5a2a94e0f9e9c042371b0b454e72b187edc3b', 'i:1;', 1770003289),
('prueba-cache-livewire-rate-limiter:43b5a2a94e0f9e9c042371b0b454e72b187edc3b:timer', 'i:1770003289;', 1770003289);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calibres`
--

CREATE TABLE `calibres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calibres`
--

INSERT INTO `calibres` (`id`, `nombre`, `descripcion`, `producto_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Extra', 'Superior a 200 gr', 1, 1, '2025-11-18 09:59:52', '2025-11-18 09:59:52'),
(2, 'Primera', 'Desde 180 gr a 200 gr', 1, 1, '2025-11-18 10:00:50', '2025-11-18 10:00:50'),
(3, 'Segunda', 'Desde 150 gr a 179 gr', 1, 1, '2025-11-25 17:25:33', '2025-11-25 17:25:33'),
(4, 'Tercera', 'Desde 129 gr a149 gr', 1, 1, '2025-11-25 21:46:19', '2025-11-25 21:46:19'),
(9, 'Cuarta', 'Desde 120 gr a129 gr', 1, 1, NULL, NULL),
(12, 'Quinta', 'Desde 80 gr a 119 gr', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camaras`
--

CREATE TABLE `camaras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tamaño` varchar(255) DEFAULT NULL,
  `capacidad` decimal(8,2) DEFAULT NULL,
  `estado` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `camaras`
--

INSERT INTO `camaras` (`id`, `nombre`, `tamaño`, `capacidad`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Camara 1', '30 mts', 100.00, '1', '2025-11-18 10:45:50', '2025-11-18 10:46:52'),
(2, 'camara 2', '30 mts', 150.00, '1', '2025-11-26 10:55:01', '2025-11-26 10:55:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenedores`
--

CREATE TABLE `contenedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tara` decimal(8,2) DEFAULT NULL,
  `capacidad` decimal(8,2) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `dimesiones` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenedores`
--

INSERT INTO `contenedores` (`id`, `nombre`, `tara`, `capacidad`, `material`, `dimesiones`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Bins', 35.00, 500.00, 'Plástico', '2x2 mts', 'Marca Doka', '1', '2025-11-18 10:48:10', '2025-12-02 21:48:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_18_051634_create_productors_table', 2),
(5, '2025_11_18_061144_create_tipo_recepcions_table', 3),
(6, '2025_11_18_062511_create_productos_table', 4),
(7, '2025_11_18_062535_create_variedads_table', 4),
(8, '2025_11_18_062606_create_calibres_table', 4),
(9, '2025_11_18_062620_create_contenedors_table', 4),
(10, '2025_11_18_062634_create_camaras_table', 4),
(11, '2025_11_18_070829_create_recepcions_table', 5),
(12, '2025_11_18_070850_create_recepcion_detalles_table', 6),
(13, '2025_11_18_070904_create_procesos_table', 6),
(14, '2025_11_18_070912_create_proceso_detalles_table', 6),
(15, '2025_11_18_070957_create_recepcion_detalle_calibres_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recepciones_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`id`, `recepciones_id`, `fecha`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-11-19', 'Leandro Bines 17 ', '1', '2025-11-18 11:05:17', '2025-11-18 11:05:17'),
(2, 6, '2025-12-02', '10 bines ', '1', '2025-12-03 03:44:08', '2025-12-03 03:44:08'),
(3, 6, '2025-12-03', 'Prueba desde popup', '1', '2025-12-03 09:57:13', '2025-12-03 09:57:13'),
(4, 5, '2025-12-03', 'Prueba desde popup 2', '1', '2025-12-03 10:03:56', '2025-12-03 10:03:56'),
(5, 7, '2025-12-03', 'Prueba desde recepcion', 'Procesado', '2025-12-03 20:56:01', '2025-12-07 09:44:36'),
(6, 8, '2025-12-03', 'Prueba desde Recepcion estados', 'Procesado', '2025-12-03 20:58:48', '2025-12-07 09:43:42'),
(7, 8, '2025-12-03', NULL, 'Procesado', '2025-12-03 23:44:37', '2025-12-07 09:45:06'),
(8, 9, '2025-12-03', 'prueba estado proceso', 'en proceso', '2025-12-04 00:08:51', '2025-12-05 12:26:37'),
(9, 8, '2025-12-04', 'Poder hacer  proceso', 'Procesado', '2025-12-04 06:38:29', '2025-12-07 09:45:39'),
(10, 10, '2025-12-05', 'Prueba validación estados', 'en proceso', '2025-12-05 12:31:18', '2025-12-05 12:33:17'),
(11, 11, '2025-12-06', 'Proceso Leandro ', 'Procesado', '2025-12-06 06:20:36', '2025-12-07 09:45:57'),
(12, 12, '2025-12-06', NULL, 'Procesado', '2025-12-07 02:28:00', '2025-12-07 09:46:37'),
(13, 12, '2025-12-06', NULL, 'Procesado', '2025-12-07 02:50:28', '2025-12-07 09:46:22'),
(14, 12, '2025-12-06', NULL, 'Procesado', '2025-12-07 02:56:19', '2025-12-07 09:46:13'),
(15, 12, '2025-12-06', NULL, 'Procesado', '2025-12-07 02:59:27', '2025-12-07 09:46:06'),
(16, 12, '2025-12-07', NULL, 'Procesado', '2025-12-07 03:06:34', '2025-12-07 09:44:21'),
(17, 13, '2025-12-07', NULL, 'Procesado', '2025-12-07 03:32:57', '2025-12-07 09:43:56'),
(18, 14, '2025-12-07', NULL, 'Procesado', '2025-12-07 09:18:54', '2025-12-07 09:44:07'),
(19, 15, '2025-12-07', NULL, 'Completado', '2025-12-07 09:50:47', '2026-01-21 02:03:45'),
(20, 16, '2025-12-07', NULL, 'Completado', '2025-12-07 10:11:44', '2026-01-21 02:04:00'),
(21, 17, '2025-12-13', NULL, 'Completado', '2025-12-13 07:27:37', '2026-01-21 02:04:12'),
(22, 17, '2025-12-13', NULL, 'Completado', '2025-12-13 08:46:13', '2026-01-21 02:05:00'),
(23, 18, '2026-01-20', NULL, 'Completado', '2026-01-21 01:21:46', '2026-01-21 02:06:37'),
(24, 19, '2026-01-20', NULL, 'Pendiente', '2026-01-21 01:51:39', '2026-01-21 01:51:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos_detalles`
--

CREATE TABLE `procesos_detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `procesos_id` bigint(20) UNSIGNED NOT NULL,
  `calibres_id` bigint(20) UNSIGNED NOT NULL,
  `kilos` decimal(8,2) DEFAULT NULL,
  `contenedores_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `productos_id` bigint(20) UNSIGNED NOT NULL,
  `variedades_id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `procesos_detalles`
--

INSERT INTO `procesos_detalles` (`id`, `procesos_id`, `calibres_id`, `kilos`, `contenedores_id`, `fecha`, `productos_id`, `variedades_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 480.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 06:39:23', '2025-11-25 21:34:25'),
(2, 1, 1, 500.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 06:44:27', '2025-11-25 07:53:22'),
(3, 1, 1, 500.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 06:55:35', '2025-11-25 07:53:32'),
(4, 1, 1, 400.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 06:59:21', '2025-11-25 07:53:43'),
(5, 1, 1, 200.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:03:43', '2025-11-25 07:53:54'),
(6, 1, 1, 150.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:05:08', '2025-11-25 07:54:00'),
(7, 1, 2, 100.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:06:52', '2025-11-25 07:54:08'),
(8, 1, 1, 80.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:08:04', '2025-11-25 07:54:16'),
(9, 1, 1, 70.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:10:06', '2025-11-25 07:54:24'),
(10, 1, 1, 60.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:24:35', '2025-11-25 07:54:32'),
(11, 1, 1, 50.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:29:14', '2025-11-25 07:54:41'),
(12, 1, 1, 40.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:31:07', '2025-11-25 07:54:53'),
(13, 1, 1, 30.00, 1, '2025-11-19', 1, 1, '1', '2025-11-25 07:33:15', '2025-11-25 07:55:03'),
(15, 1, 1, 500.00, 1, '2025-11-25', 1, 1, '1', '2025-11-25 09:03:29', '2025-11-25 09:03:29'),
(16, 1, 3, 430.00, 1, '2025-11-25', 1, 1, '1', '2025-11-25 17:27:37', '2025-11-25 17:27:37'),
(17, 1, 3, 500.00, 1, '2025-11-25', 1, 1, '1', '2025-11-25 17:33:03', '2025-11-25 17:33:03'),
(18, 1, 1, 500.00, 1, '2025-11-25', 1, 1, '1', '2025-11-25 21:30:02', '2025-11-25 21:30:02'),
(19, 6, 1, 535.00, 1, '2025-12-03', 1, 1, '1', '2025-12-03 23:43:42', '2025-12-03 23:43:42'),
(20, 7, 1, 535.00, 1, '2025-12-03', 1, 1, '1', '2025-12-04 00:09:33', '2025-12-04 00:09:33'),
(21, 7, 2, 435.00, 1, '2025-12-03', 1, 1, '1', '2025-12-04 00:10:11', '2025-12-04 00:10:11'),
(22, 8, 1, 500.00, 1, '2025-12-04', 1, 1, '1', '2025-12-04 09:04:47', '2025-12-04 09:04:47'),
(23, 8, 2, 300.00, 1, '2025-12-04', 1, 1, '1', '2025-12-04 09:05:06', '2025-12-04 09:10:11'),
(24, 5, 1, 1000.00, 1, '2025-12-07', 1, 1, '1', '2025-12-07 08:55:07', '2025-12-07 08:56:14'),
(25, 17, 1, 5.00, 1, '2025-12-07', 1, 1, '1', '2025-12-07 08:56:46', '2025-12-07 08:56:46'),
(26, 20, 1, 500.00, 1, '2025-12-07', 1, 1, '1', '2025-12-07 10:52:59', '2025-12-07 10:52:59'),
(27, 23, 2, 300.00, 1, '2026-01-20', 1, 1, '1', '2026-01-21 01:29:41', '2026-01-21 01:29:41'),
(28, 23, 3, 200.00, 1, '2026-01-20', 1, 1, '1', '2026-01-21 01:32:49', '2026-01-21 01:32:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productores`
--

CREATE TABLE `productores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rut` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productores`
--

INSERT INTO `productores` (`id`, `rut`, `nombre`, `apellido`, `empresa`, `telefono`, `email`, `estado`, `created_at`, `updated_at`) VALUES
(1, '15.788.564-3', 'Leandro Jamett', 'Jamett', 'San Ignacio', '93250245', 'sanigna@gmail.com', 1, '2025-11-18 08:45:16', '2025-11-25 10:00:34'),
(2, '1223344-4', 'Juan Lopez', 'Lopez', 'Lopez Ltda', '8785767645', 'lopez@gmail.com', 1, '2025-11-25 21:48:43', '2025-12-04 02:34:52'),
(3, '14.577.288-2', 'Pedro Aguilera', 'Aguilera', 'Los Sauces', '8356874', 'pedroaguilera@gmail.com', 1, '2025-12-07 09:04:12', '2025-12-07 09:04:12'),
(4, '14.767.562.8', 'Matías García', 'García', '4 Compañia', '53685521', 'elbombero@gmail.com', 1, '2026-01-21 01:47:53', '2026-01-21 01:48:59');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `productores_recepcion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `productores_recepcion` (
`id` bigint(20) unsigned
,`nombre` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Palta', 'Persea Americana', '2025-11-18 09:56:09', '2025-11-18 09:56:09'),
(2, 'Limón', 'Limón cítricos ', '2025-11-24 08:05:06', '2025-11-24 08:05:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepciones`
--

CREATE TABLE `recepciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipos_recepciones_id` bigint(20) UNSIGNED NOT NULL,
  `productores_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(255) DEFAULT 'Pendiente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recepciones`
--

INSERT INTO `recepciones` (`id`, `tipos_recepciones_id`, `productores_id`, `fecha`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-11-18', 'Completado', '2025-11-18 10:53:26', '2025-12-04 07:56:31'),
(2, 2, 1, '2025-11-24', 'Completado', '2025-11-24 12:44:51', '2025-12-04 07:56:43'),
(3, 1, 1, '2025-11-25', 'Completado', '2025-11-25 17:30:15', '2025-12-04 07:56:55'),
(4, 1, 1, '2025-11-25', 'Completado', '2025-11-25 21:14:00', '2025-12-04 07:57:57'),
(5, 1, 2, '2025-11-25', 'Completado', '2025-11-25 21:49:28', '2025-12-07 07:48:17'),
(6, 1, 1, '2025-12-02', 'Completado', '2025-12-02 11:43:12', '2025-12-07 07:47:22'),
(7, 1, 2, '2025-12-03', 'Completado', '2025-12-03 20:54:24', '2025-12-07 07:48:04'),
(8, 1, 1, '2025-12-03', 'Completado', '2025-12-03 20:57:50', '2025-12-04 07:59:49'),
(9, 1, 1, '2025-12-05', 'Completado', '2025-12-05 11:43:15', '2025-12-07 07:47:44'),
(10, 1, 1, '2025-12-05', 'Completado', '2025-12-05 12:29:20', '2025-12-07 07:49:40'),
(11, 1, 1, '2025-12-06', 'Completado', '2025-12-06 05:02:07', '2025-12-07 07:49:55'),
(12, 1, 1, '2025-12-06', 'Completado', '2025-12-07 02:24:38', '2025-12-07 07:50:11'),
(13, 1, 2, '2025-12-07', 'Completado', '2025-12-07 03:10:01', '2025-12-07 07:49:02'),
(14, 1, 3, '2025-12-07', 'Completado', '2025-12-07 09:05:13', '2025-12-07 09:49:48'),
(15, 1, 3, '2025-12-07', 'Completado', '2025-12-07 09:47:17', '2025-12-07 09:51:09'),
(16, 1, 3, '2025-12-07', 'Completado', '2025-12-07 10:09:49', '2025-12-13 07:26:26'),
(17, 1, 1, '2025-12-13', 'Completado', '2025-12-13 07:21:10', '2025-12-13 07:21:10'),
(18, 1, 2, '2026-01-20', 'Completado', '2026-01-21 01:08:06', '2026-01-21 01:08:06'),
(19, 1, 4, '2026-01-20', 'Completado', '2026-01-21 01:49:19', '2026-01-21 01:49:19'),
(20, 1, 4, '2026-01-21', 'Completado', '2026-01-21 03:58:58', '2026-01-21 03:58:58'),
(21, 1, 3, '2026-01-24', 'Pendiente', '2026-01-24 17:14:51', '2026-01-24 17:14:51');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `recepcionestado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `recepcionestado` (
`id_recepcion` bigint(20) unsigned
,`nombre_productor` varchar(255)
,`tipo_nombre` varchar(255)
,`fecha` date
,`estado` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepciones_detalles`
--

CREATE TABLE `recepciones_detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productos_id` bigint(20) UNSIGNED NOT NULL,
  `variedades_id` bigint(20) UNSIGNED NOT NULL,
  `contenedores_id` bigint(20) UNSIGNED NOT NULL,
  `recepciones_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `kilos_bruto` decimal(8,2) DEFAULT NULL,
  `kilos_neto` decimal(8,2) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `camaras_id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recepciones_detalles`
--

INSERT INTO `recepciones_detalles` (`id`, `productos_id`, `variedades_id`, `contenedores_id`, `recepciones_id`, `fecha`, `kilos_bruto`, `kilos_neto`, `hora`, `camaras_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2025-11-18', 530.00, 500.00, '05:00:45', 1, '1', '2025-11-18 11:01:00', '2025-11-25 09:56:29'),
(2, 1, 1, 1, 1, '2025-11-18', 530.00, 500.00, '05:02:07', 1, '1', '2025-11-18 11:02:17', '2025-11-18 11:02:17'),
(3, 1, 1, 1, 1, '2025-11-24', 530.00, 500.00, '06:45:51', 1, '1', '2025-11-24 12:45:59', '2025-11-24 12:45:59'),
(4, 1, 1, 1, 1, '2025-11-25', 530.00, 500.00, '03:48:10', 1, '1', '2025-11-25 08:48:25', '2025-11-25 08:48:25'),
(5, 1, 1, 1, 1, '2025-11-25', 530.00, 500.00, '04:37:53', 1, '1', '2025-11-25 09:38:00', '2025-11-25 09:38:00'),
(6, 1, 1, 1, 1, '2025-11-25', 530.00, 500.00, '11:31:24', 1, '1', '2025-11-25 17:31:43', '2025-11-25 17:31:43'),
(7, 1, 1, 1, 4, '2025-11-25', 530.00, 500.00, '15:15:29', 1, '1', '2025-11-25 21:16:08', '2025-11-25 21:16:08'),
(8, 1, 1, 1, 5, '2025-11-25', 320.00, 300.00, '15:50:49', 1, '0', '2025-11-25 21:51:05', '2025-11-25 21:51:30'),
(9, 1, 1, 1, 1, '2025-11-26', 130.00, NULL, '07:47:12', 1, '1', '2025-11-26 10:51:04', '2025-11-26 10:51:04'),
(10, 1, 1, 1, 1, '2025-11-26', 512.00, NULL, '07:51:04', 1, '1', '2025-11-26 10:52:21', '2025-11-26 10:52:21'),
(11, 1, 1, 1, 6, '2025-12-02', 530.00, NULL, '09:10:39', 1, '1', '2025-12-02 12:11:00', '2025-12-02 12:11:00'),
(12, 1, 1, 1, 6, '2025-12-02', 420.00, NULL, '09:39:24', 1, '1', '2025-12-02 12:39:37', '2025-12-02 12:39:37'),
(13, 1, 1, 1, 6, '2025-12-03', 535.00, 500.00, '04:58:36', 1, '1', '2025-12-03 07:59:03', '2025-12-03 07:59:03'),
(14, 1, 1, 1, 5, '2025-11-25', 500.00, 465.00, '07:05:03', 1, '1', '2025-12-03 10:05:57', '2025-12-03 10:06:31'),
(15, 1, 1, 1, 5, '2025-11-25', 535.00, 500.00, '07:33:09', 1, '1', '2025-12-03 10:33:36', '2025-12-03 10:33:55'),
(16, 1, 1, 1, 5, '2025-11-25', 535.00, 500.00, '07:33:59', 1, '1', '2025-12-03 10:34:28', '2025-12-03 10:34:28'),
(17, 1, 1, 1, 5, '2025-11-25', 535.00, 500.00, '07:34:33', 1, '1', '2025-12-03 10:35:03', '2025-12-03 10:35:03'),
(18, 1, 1, 1, 5, '2025-11-25', 435.00, 400.00, '07:35:03', 1, '1', '2025-12-03 10:35:47', '2025-12-03 10:35:47'),
(19, 1, 1, 1, 7, '2025-12-03', 535.00, 500.00, '17:54:41', 1, 'Procesado', '2025-12-03 20:55:04', '2025-12-03 20:55:04'),
(20, 1, 1, 1, 7, '2025-12-03', 435.00, 400.00, '17:55:09', 1, '1', '2025-12-03 20:55:31', '2025-12-03 20:55:31'),
(21, 1, 1, 1, 8, '2025-12-03', 535.00, 500.00, '17:57:52', 1, 'procesada', '2025-12-03 20:58:08', '2025-12-04 08:51:49'),
(22, 1, 1, 1, 8, '2025-12-03', 335.00, 300.00, '17:58:08', 1, 'procesada', '2025-12-03 20:58:25', '2025-12-05 11:58:11'),
(23, 1, 1, 1, 8, '2025-12-04', 235.00, 200.00, '06:45:55', 1, 'procesada', '2025-12-04 09:46:14', '2025-12-04 10:14:51'),
(24, 1, 1, 1, 9, '2025-12-05', 135.00, 100.00, '08:43:20', 1, 'procesada', '2025-12-05 11:43:40', '2025-12-05 12:26:37'),
(25, 1, 1, 1, 10, '2025-12-05', 335.00, 300.00, '09:29:23', 1, 'procesada', '2025-12-05 12:30:11', '2025-12-05 12:35:49'),
(26, 1, 1, 1, 10, '2025-12-05', 235.00, 200.00, '09:30:17', 1, '1', '2025-12-05 12:30:31', '2025-12-05 12:30:31'),
(27, 1, 1, 1, 11, '2025-12-06', 335.00, 300.00, '02:02:12', 1, 'procesada', '2025-12-06 05:03:35', '2025-12-06 06:34:12'),
(28, 1, 1, 1, 11, '2025-12-06', 535.00, 500.00, '02:04:00', 1, 'procesada', '2025-12-06 05:04:29', '2025-12-06 06:51:11'),
(29, 1, 1, 1, 11, '2025-12-06', 435.00, 400.00, '02:05:05', 1, 'procesada', '2025-12-06 05:05:29', '2025-12-06 06:52:56'),
(30, 1, 1, 1, 12, '2025-12-06', 135.00, 100.00, '23:54:57', 1, 'procesada', '2025-12-07 02:55:53', '2025-12-07 03:17:40'),
(31, 1, 1, 1, 13, '2025-12-07', 10.00, 5.00, '00:10:04', 1, 'Recepcionada', '2025-12-07 03:10:35', '2025-12-07 03:32:57'),
(32, 1, 1, 1, 14, '2025-12-07', 535.00, 500.00, '06:05:18', 1, 'Recepcionada', '2025-12-07 09:05:58', '2025-12-07 09:23:52'),
(33, 1, 1, 1, 14, '2025-12-07', 535.00, 500.00, '06:06:00', 1, 'Recepcionada', '2025-12-07 09:06:23', '2025-12-07 09:24:01'),
(34, 1, 1, 1, 14, '2025-12-07', 435.00, 400.00, '06:06:23', 1, 'Recepcionada', '2025-12-07 09:06:56', '2025-12-07 09:24:09'),
(35, 1, 1, 1, 15, '2025-12-07', 535.00, 499.00, '06:47:27', 1, 'procesada', '2025-12-07 09:48:11', '2025-12-07 09:50:47'),
(36, 1, 1, 1, 15, '2025-12-07', 435.00, 400.00, '06:48:11', 1, 'procesada', '2025-12-07 09:48:40', '2025-12-07 09:50:47'),
(37, 1, 1, 1, 15, '2025-12-07', 335.00, 299.00, '06:48:40', 1, 'Recepcionada', '2025-12-07 09:49:03', '2025-12-07 09:55:52'),
(38, 1, 1, 1, 16, '2025-12-07', 535.00, 500.00, '07:10:03', 1, 'Recepcionado', '2025-12-07 10:10:27', '2025-12-07 10:16:49'),
(39, 1, 1, 1, 16, '2025-12-07', 435.00, 400.00, '07:10:31', 1, 'Recepcionado', '2025-12-07 10:10:57', '2025-12-07 10:16:59'),
(40, 1, 1, 1, 17, '2025-12-13', NULL, NULL, '04:21:52', 1, 'procesada', '2025-12-13 07:25:15', '2025-12-16 09:58:20'),
(41, 1, 1, 1, 17, '2025-12-13', 335.00, 300.00, '04:25:34', 2, 'procesada', '2025-12-13 07:25:56', '2025-12-13 08:46:13'),
(42, 1, 1, 1, 17, '2025-12-13', 635.00, 600.00, '04:32:05', 1, 'procesada', '2025-12-13 07:32:25', '2025-12-13 08:46:13'),
(43, 1, 1, 1, 17, '2025-12-13', 235.00, 200.00, '04:37:41', 1, 'procesada', '2025-12-13 07:38:10', '2025-12-13 08:46:13'),
(44, 1, 1, 1, 18, '2026-01-20', 540.00, 500.00, '22:19:28', 1, 'procesada', '2026-01-21 01:20:05', '2026-01-21 01:21:46'),
(45, 1, 1, 1, 19, '2026-01-20', 530.00, 500.00, '22:49:30', 1, 'procesada', '2026-01-21 01:49:51', '2026-01-21 01:51:39'),
(46, 1, 1, 1, 19, '2026-01-20', 430.00, 400.00, '22:49:54', 1, 'procesada', '2026-01-21 01:50:27', '2026-01-21 01:51:39'),
(47, 1, 1, 1, 19, '2026-01-20', 330.00, 300.00, '22:50:27', 1, 'procesada', '2026-01-21 01:50:47', '2026-01-21 01:51:39'),
(48, 1, 1, 1, 20, '2026-01-21', 530.00, 500.00, '00:59:03', 1, 'Recepcionado', '2026-01-21 03:59:40', '2026-01-21 03:59:40'),
(49, 1, 1, 1, 21, '2026-01-24', NULL, NULL, '14:15:20', 1, 'Ingresado', '2026-01-24 17:16:30', '2026-01-24 17:34:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepciones_detalles_calibres`
--

CREATE TABLE `recepciones_detalles_calibres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recepciones_detalles_id` bigint(20) UNSIGNED NOT NULL,
  `procesos_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recepciones_detalles_calibres`
--

INSERT INTO `recepciones_detalles_calibres` (`id`, `recepciones_detalles_id`, `procesos_id`, `fecha`, `estado`, `created_at`, `updated_at`) VALUES
(3, 21, 8, '2025-12-04', 'Registado', '2025-12-04 08:51:49', '2026-01-21 01:44:52'),
(4, 22, 8, '2025-12-04', 'Procesado', '2025-12-04 08:53:11', '2025-12-04 09:06:31'),
(5, 23, 8, '2025-12-04', 'registrado', '2025-12-04 10:14:51', '2025-12-04 10:14:51'),
(6, 22, 8, '2025-12-05', 'Procesado', '2025-12-05 11:58:11', '2025-12-05 11:58:11'),
(7, 24, 8, '2025-12-05', 'Procesado', '2025-12-05 12:26:37', '2025-12-05 12:26:37'),
(8, 25, 10, '2025-12-05', 'Procesado', '2025-12-05 12:33:17', '2025-12-05 12:33:17'),
(9, 25, 10, '2025-12-05', 'Procesado', '2025-12-05 12:35:49', '2025-12-05 12:35:49'),
(10, 27, 11, '2025-12-06', 'Procesado', '2025-12-06 06:34:12', '2025-12-06 06:34:12'),
(11, 28, 11, '2025-12-06', 'Procesado', '2025-12-06 06:51:11', '2025-12-06 06:51:11'),
(12, 29, 11, '2025-12-06', 'Procesado', '2025-12-06 06:52:56', '2025-12-06 06:52:56'),
(13, 30, 16, '2025-12-07', 'Pendiente', '2025-12-07 03:06:34', '2025-12-07 03:06:34'),
(14, 30, 16, '2025-12-07', 'Procesado', '2025-12-07 03:17:40', '2025-12-07 03:17:40'),
(15, 31, 17, '2025-12-07', 'Procesado', '2025-12-07 03:32:57', '2025-12-07 03:40:46'),
(16, 32, 18, '2025-12-07', 'Pendiente', '2025-12-07 09:18:54', '2025-12-07 09:18:54'),
(17, 33, 18, '2025-12-07', 'Pendiente', '2025-12-07 09:18:54', '2025-12-07 09:18:54'),
(18, 34, 18, '2025-12-07', 'Pendiente', '2025-12-07 09:18:54', '2025-12-07 09:18:54'),
(19, 35, 19, '2025-12-07', 'Procesado', '2025-12-07 09:50:47', '2025-12-07 09:55:03'),
(20, 36, 19, '2025-12-07', 'Procesado', '2025-12-07 09:50:47', '2025-12-07 09:55:10'),
(21, 37, 19, '2025-12-07', 'Procesado', '2025-12-07 09:50:47', '2025-12-07 10:14:18'),
(22, 38, 20, '2025-12-07', 'Procesado', '2025-12-07 10:11:44', '2025-12-07 10:17:10'),
(23, 39, 20, '2025-12-07', 'Procesado', '2025-12-07 10:11:44', '2025-12-07 10:17:36'),
(24, 40, 21, '2025-12-13', 'Procesado', '2025-12-13 07:27:37', '2025-12-13 07:31:30'),
(25, 41, 21, '2025-12-13', 'Procesado', '2025-12-13 07:27:37', '2025-12-13 07:29:23'),
(26, 40, 22, '2025-12-13', 'Pendiente', '2025-12-13 08:46:13', '2025-12-13 08:46:13'),
(27, 41, 22, '2025-12-13', 'Procesado', '2025-12-13 08:46:13', '2025-12-13 08:46:41'),
(28, 42, 22, '2025-12-13', 'Procesado', '2025-12-13 08:46:13', '2025-12-13 08:46:49'),
(29, 43, 22, '2025-12-13', 'Pendiente', '2025-12-13 08:46:13', '2025-12-13 08:46:13'),
(30, 44, 23, '2026-01-20', 'Procesado', '2026-01-21 01:21:46', '2026-01-21 01:25:11'),
(31, 45, 24, '2026-01-20', 'Procesado', '2026-01-21 01:51:39', '2026-01-21 01:53:36'),
(32, 46, 24, '2026-01-20', 'Procesado', '2026-01-21 01:51:39', '2026-01-21 02:07:40'),
(33, 47, 24, '2026-01-20', 'Pendiente', '2026-01-21 01:51:39', '2026-01-21 01:51:39');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `recepcion_estado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `recepcion_estado` (
`id_recepcion` bigint(20) unsigned
,`nombre_productor` varchar(255)
,`tipo_nombre` varchar(255)
,`fecha` date
,`estado` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
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
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CR58vWBwLhbuHmbikouMB3MYb6YMFeZELM9YB2Ow', 1, '192.168.1.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZTV0dG5OY0JITU1PQThJN1ppbHNMeTdUaDl3b3BUbjlVMEJrTDFXbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xOTIuMTY4LjEuMTQ6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MzQ6ImZpbGFtZW50LmRhc2hib2FyZC5wYWdlcy5kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkOW1MZHF4Nk44V3ZxbHkwd2lYL2xwdVRKaWI3UnJ5cE0vbmJxWUlXSGVpL0ZjY2RyYVN2QzIiO30=', 1770004031),
('oKiUKE1QPBJRWk9YvpWQDK5Fi49wDMlorHfIjQZm', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM3E4dkEyYWV6TDU5T2pZbUpzc2FMWndwc2lPV1l5ek5xbnVXTkVMYiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDltTGRxeDZOOFd2cWx5MHdpWC9scHVUSmliN1JyeXBNL25icVlJV0hlaS9GY2NkcmFTdkMyIjtzOjY6InRhYmxlcyI7YTozOntzOjQwOiJlYzg4N2UwMGRmZjAyZTUzZTYyZmY5MjE0N2I0MDQwOF9jb2x1bW5zIjthOjY6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxODoidGlwb1JlY2VwY2lvbi50aXBvIjtzOjU6ImxhYmVsIjtzOjE0OiJUaXBvIHJlY2VwY2lvbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTY6InByb2R1Y3Rvci5ub21icmUiO3M6NToibGFiZWwiO3M6OToiUHJvZHVjdG9yIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJmZWNoYSI7czo1OiJsYWJlbCI7czo1OiJGZWNoYSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NjoiZXN0YWRvIjtzOjU6ImxhYmVsIjtzOjEzOiJFc3RhZG8gQWN0dWFsIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJiODUyNWJiNzE3MDUwYTllZjk0ZjhiNmJhMmU3MTMzY19jb2x1bW5zIjthOjEyOntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InJlY2VwY2lvbmVzX2lkIjtzOjU6ImxhYmVsIjtzOjE0OiJOwrAgUmVjZXBjacOzbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTY6InByb2R1Y3Rvcy5ub21icmUiO3M6NToibGFiZWwiO3M6OToiUHJvZHVjdG9zIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNzoidmFyaWVkYWRlcy5ub21icmUiO3M6NToibGFiZWwiO3M6MTA6IlZhcmllZGFkZXMiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE5OiJjb250ZW5lZG9yZXMubm9tYnJlIjtzOjU6ImxhYmVsIjtzOjEyOiJDb250ZW5lZG9yZXMiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImZlY2hhIjtzOjU6ImxhYmVsIjtzOjU6IkZlY2hhIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToia2lsb3NfYnJ1dG8iO3M6NToibGFiZWwiO3M6MTE6IktpbG9zIGJydXRvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoia2lsb3NfbmV0byI7czo1OiJsYWJlbCI7czoxMDoiS2lsb3MgbmV0byI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjc7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoiaG9yYSI7czo1OiJsYWJlbCI7czo0OiJIb3JhIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6ODthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNDoiY2FtYXJhcy5ub21icmUiO3M6NToibGFiZWwiO3M6NzoiQ2FtYXJhcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjk7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NjoiZXN0YWRvIjtzOjU6ImxhYmVsIjtzOjY6IkVzdGFkbyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjEwO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToxMTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiIwMmExNmM0MzU3MzJkMmMxN2NlMDQ5MzQ2ZGEzMDNjNl9jb2x1bW5zIjthOjExOntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InJlY2VwY2lvbmVzX2lkIjtzOjU6ImxhYmVsIjtzOjE0OiJOwrAgUmVjZXBjacOzbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MjoiaWQiO3M6NToibGFiZWwiO3M6MjoiSUQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE2OiJwcm9kdWN0b3Mubm9tYnJlIjtzOjU6ImxhYmVsIjtzOjk6IlByb2R1Y3RvcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTU6InZhcmllZGFkLm5vbWJyZSI7czo1OiJsYWJlbCI7czo4OiJWYXJpZWRhZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTc6ImNvbnRlbmVkb3Iubm9tYnJlIjtzOjU6ImxhYmVsIjtzOjEwOiJDb250ZW5lZG9yIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJmZWNoYSI7czo1OiJsYWJlbCI7czo1OiJGZWNoYSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjY7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTE6ImtpbG9zX2JydXRvIjtzOjU6ImxhYmVsIjtzOjExOiJLaWxvcyBicnV0byI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjc7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImtpbG9zX25ldG8iO3M6NToibGFiZWwiO3M6MTA6IktpbG9zIG5ldG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo4O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6ImhvcmEiO3M6NToibGFiZWwiO3M6NDoiSG9yYSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjk7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNhbWFyYXNfaWQiO3M6NToibGFiZWwiO3M6MTA6IkNhbWFyYXMgaWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxMDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJlc3RhZG8iO3M6NToibGFiZWwiO3M6NjoiRXN0YWRvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX19czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvcmVjZXBjaW9ucyI7czo1OiJyb3V0ZSI7czo0NToiZmlsYW1lbnQuZGFzaGJvYXJkLnJlc291cmNlcy5yZWNlcGNpb25zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769291080);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_recepciones`
--

CREATE TABLE `tipos_recepciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_recepciones`
--

INSERT INTO `tipos_recepciones` (`id`, `tipo`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Proveedor', 'Socio comercial ', 1, '2025-11-18 09:22:33', '2025-11-18 09:22:33'),
(2, 'Calibrado', 'Servicio', 1, '2025-11-18 09:24:28', '2025-12-03 07:56:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$9mLdqx6N8Wvqly0wiX/lpuTJib7RrypM/nbqYIWHei/FccdraSvC2', 'MT1rZVRCD67SW7yKgAfPiPnGyVnosQ6pG9HCzdHTPec8ZjbaSKXrYWwYVvy7', '2025-11-18 02:20:22', '2025-11-18 02:20:22'),
(2, 'gabriel.admin@gmail.com', 'gabriel.admin@gmail.com', NULL, '$2y$12$yEa57CMqWn88cMpdRz9vVeojC8a4zMeW7PpNMKLoeO.C0onEGIvWG', NULL, '2025-11-25 21:42:58', '2025-11-25 21:43:32'),
(3, 'user', 'user@mail.com', NULL, '$2y$12$pSXAIvQMF7Ykx.bTJ9p6mucUIBvWmfaIbCC2FO2SWgCDwTFLArCJC', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variedades`
--

CREATE TABLE `variedades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `variedades`
--

INSERT INTO `variedades` (`id`, `nombre`, `descripcion`, `producto_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Hass', NULL, 1, 1, '2025-11-18 09:58:41', '2025-11-18 09:58:41');

-- --------------------------------------------------------

--
-- Estructura para la vista `productores_recepcion`
--
DROP TABLE IF EXISTS `productores_recepcion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productores_recepcion`  AS SELECT `recepciones`.`productores_id` AS `id`, `productores`.`nombre` AS `nombre` FROM (`recepciones` left join `productores` on(`recepciones`.`productores_id` = `productores`.`id`)) GROUP BY `recepciones`.`productores_id` ORDER BY `recepciones`.`fecha` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `recepcionestado`
--
DROP TABLE IF EXISTS `recepcionestado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recepcionestado`  AS SELECT `recepciones`.`id` AS `id_recepcion`, `productores`.`nombre` AS `nombre_productor`, `tipos_recepciones`.`tipo` AS `tipo_nombre`, `recepciones`.`fecha` AS `fecha`, `recepciones`.`estado` AS `estado` FROM ((`recepciones` left join `productores` on(`recepciones`.`productores_id` = `productores`.`id`)) left join `tipos_recepciones` on(`recepciones`.`tipos_recepciones_id` = `tipos_recepciones`.`id`)) WHERE `recepciones`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `recepcion_estado`
--
DROP TABLE IF EXISTS `recepcion_estado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recepcion_estado`  AS SELECT `recepciones`.`id` AS `id_recepcion`, `productores`.`nombre` AS `nombre_productor`, `tipos_recepciones`.`tipo` AS `tipo_nombre`, `recepciones`.`fecha` AS `fecha`, `recepciones`.`estado` AS `estado` FROM ((`recepciones` left join `productores` on(`recepciones`.`productores_id` = `productores`.`id`)) left join `tipos_recepciones` on(`recepciones`.`tipos_recepciones_id` = `tipos_recepciones`.`id`)) WHERE `recepciones`.`estado` = 'Pendiente' ORDER BY `recepciones`.`fecha` DESC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `calibres`
--
ALTER TABLE `calibres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calibres_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `camaras`
--
ALTER TABLE `camaras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenedores`
--
ALTER TABLE `contenedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesos_recepciones_id_foreign` (`recepciones_id`);

--
-- Indices de la tabla `procesos_detalles`
--
ALTER TABLE `procesos_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesos_detalles_procesos_id_foreign` (`procesos_id`),
  ADD KEY `procesos_detalles_contenedores_id_foreign` (`contenedores_id`),
  ADD KEY `procesos_detalles_productos_id_foreign` (`productos_id`),
  ADD KEY `procesos_detalles_variedades_id_foreign` (`variedades_id`),
  ADD KEY `procesos_detalles_calibres_id_foreign` (`calibres_id`);

--
-- Indices de la tabla `productores`
--
ALTER TABLE `productores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productores_rut_unique` (`rut`),
  ADD UNIQUE KEY `productores_email_unique` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recepciones`
--
ALTER TABLE `recepciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recepciones_tipos_recepciones_id_foreign` (`tipos_recepciones_id`),
  ADD KEY `recepciones_productores_id_foreign` (`productores_id`);

--
-- Indices de la tabla `recepciones_detalles`
--
ALTER TABLE `recepciones_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recepciones_detalles_productos_id_foreign` (`productos_id`),
  ADD KEY `recepciones_detalles_variedades_id_foreign` (`variedades_id`),
  ADD KEY `recepciones_detalles_contenedores_id_foreign` (`contenedores_id`),
  ADD KEY `recepciones_detalles_recepciones_id_foreign` (`recepciones_id`),
  ADD KEY `recepciones_detalles_camaras_id_foreign` (`camaras_id`);

--
-- Indices de la tabla `recepciones_detalles_calibres`
--
ALTER TABLE `recepciones_detalles_calibres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recepciones_detalles_calibres_recepciones_detalles_id_foreign` (`recepciones_detalles_id`),
  ADD KEY `recepciones_detalles_calibres_procesos_id_foreign` (`procesos_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipos_recepciones`
--
ALTER TABLE `tipos_recepciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `variedades`
--
ALTER TABLE `variedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variedades_producto_id_foreign` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calibres`
--
ALTER TABLE `calibres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `camaras`
--
ALTER TABLE `camaras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contenedores`
--
ALTER TABLE `contenedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `procesos_detalles`
--
ALTER TABLE `procesos_detalles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `productores`
--
ALTER TABLE `productores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recepciones`
--
ALTER TABLE `recepciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `recepciones_detalles`
--
ALTER TABLE `recepciones_detalles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `recepciones_detalles_calibres`
--
ALTER TABLE `recepciones_detalles_calibres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `tipos_recepciones`
--
ALTER TABLE `tipos_recepciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `variedades`
--
ALTER TABLE `variedades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calibres`
--
ALTER TABLE `calibres`
  ADD CONSTRAINT `calibres_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD CONSTRAINT `procesos_recepciones_id_foreign` FOREIGN KEY (`recepciones_id`) REFERENCES `recepciones` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `procesos_detalles`
--
ALTER TABLE `procesos_detalles`
  ADD CONSTRAINT `fk_procesos_procesos_detalles` FOREIGN KEY (`calibres_id`) REFERENCES `calibres` (`id`),
  ADD CONSTRAINT `procesos_detalles_calibres_id_foreign` FOREIGN KEY (`calibres_id`) REFERENCES `calibres` (`id`),
  ADD CONSTRAINT `procesos_detalles_contenedores_id_foreign` FOREIGN KEY (`contenedores_id`) REFERENCES `contenedores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `procesos_detalles_procesos_id_foreign` FOREIGN KEY (`procesos_id`) REFERENCES `procesos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `procesos_detalles_productos_id_foreign` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `procesos_detalles_variedades_id_foreign` FOREIGN KEY (`variedades_id`) REFERENCES `variedades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recepciones`
--
ALTER TABLE `recepciones`
  ADD CONSTRAINT `recepciones_productores_id_foreign` FOREIGN KEY (`productores_id`) REFERENCES `productores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recepciones_tipos_recepciones_id_foreign` FOREIGN KEY (`tipos_recepciones_id`) REFERENCES `tipos_recepciones` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recepciones_detalles`
--
ALTER TABLE `recepciones_detalles`
  ADD CONSTRAINT `recepciones_detalles_camaras_id_foreign` FOREIGN KEY (`camaras_id`) REFERENCES `camaras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recepciones_detalles_contenedores_id_foreign` FOREIGN KEY (`contenedores_id`) REFERENCES `contenedores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recepciones_detalles_productos_id_foreign` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recepciones_detalles_recepciones_id_foreign` FOREIGN KEY (`recepciones_id`) REFERENCES `recepciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recepciones_detalles_variedades_id_foreign` FOREIGN KEY (`variedades_id`) REFERENCES `variedades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recepciones_detalles_calibres`
--
ALTER TABLE `recepciones_detalles_calibres`
  ADD CONSTRAINT `recepciones_detalles_calibres_procesos_id_foreign` FOREIGN KEY (`procesos_id`) REFERENCES `procesos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recepciones_detalles_calibres_recepciones_detalles_id_foreign` FOREIGN KEY (`recepciones_detalles_id`) REFERENCES `recepciones_detalles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `variedades`
--
ALTER TABLE `variedades`
  ADD CONSTRAINT `variedades_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
