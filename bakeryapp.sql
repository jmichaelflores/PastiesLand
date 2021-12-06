-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 04:20:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bakeryapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_12_081548_create_products_table', 1),
(4, '2017_01_15_163351_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2021-11-24 06:29:21', '2021-11-24 06:29:21', 1, 'O:8:\"App\\cart\":3:{s:5:\"items\";a:2:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:4.25;s:4:\"item\";O:11:\"App\\Product\":23:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagepath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:4.25;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:4.25;}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:5.25;s:4:\"item\";O:11:\"App\\Product\":23:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagepath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p2.png\";s:5:\"title\";s:10:\"Orange pie\";s:11:\"description\";s:15:\"Es un orangepie\";s:5:\"price\";d:5.25;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p2.png\";s:5:\"title\";s:10:\"Orange pie\";s:11:\"description\";s:15:\"Es un orangepie\";s:5:\"price\";d:5.25;}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}}s:8:\"totalqty\";i:2;s:10:\"totalprice\";d:9.5;}', 'Res. San Salvador', 'John Michael Flores', 'ch_3Jz9MSEWXHqAIZGO02TreHhS'),
(2, '2021-11-24 06:38:14', '2021-11-24 06:38:14', 1, 'O:8:\"App\\cart\":3:{s:5:\"items\";a:2:{i:1;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:12.75;s:4:\"item\";O:11:\"App\\Product\":23:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagepath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:4.25;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:4.25;}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:5.25;s:4:\"item\";O:11:\"App\\Product\":23:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagepath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p2.png\";s:5:\"title\";s:10:\"Orange pie\";s:11:\"description\";s:15:\"Es un orangepie\";s:5:\"price\";d:5.25;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p2.png\";s:5:\"title\";s:10:\"Orange pie\";s:11:\"description\";s:15:\"Es un orangepie\";s:5:\"price\";d:5.25;}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}}s:8:\"totalqty\";i:4;s:10:\"totalprice\";d:18;}', 'Res. San salvador', 'John Michael Flores', 'ch_3Jz9V2EWXHqAIZGO00Q9ofos'),
(3, '2021-11-24 06:47:37', '2021-11-24 06:47:37', 1, 'O:8:\"App\\cart\":3:{s:5:\"items\";a:3:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:4.25;s:4:\"item\";O:11:\"App\\Product\":23:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagepath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:4.25;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:4.25;}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:5.25;s:4:\"item\";O:11:\"App\\Product\":23:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagepath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p2.png\";s:5:\"title\";s:10:\"Orange pie\";s:11:\"description\";s:15:\"Es un orangepie\";s:5:\"price\";d:5.25;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p2.png\";s:5:\"title\";s:10:\"Orange pie\";s:11:\"description\";s:15:\"Es un orangepie\";s:5:\"price\";d:5.25;}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:12.5;s:4:\"item\";O:11:\"App\\Product\":23:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagepath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:12.5;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2021-11-23 17:18:27\";s:10:\"updated_at\";N;s:9:\"imagepath\";s:11:\"/img/p1.png\";s:5:\"title\";s:9:\"Appel pie\";s:11:\"description\";s:19:\"Es un appelpie jeje\";s:5:\"price\";d:12.5;}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}}s:8:\"totalqty\";i:3;s:10:\"totalprice\";d:22;}', 'Residencial', 'John Michael Flores', 'ch_3Jz9e8EWXHqAIZGO1pupk3SL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagepath` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagepath`, `title`, `description`, `price`) VALUES
(1, '2021-11-23 23:18:27', NULL, '/img/p1.png', 'Appel pie', 'Es un appelpie jeje', 4.25),
(2, '2021-11-23 23:18:27', NULL, '/img/p2.png', 'Orange pie', 'Es un orangepie', 5.25),
(3, '2021-11-23 23:18:27', NULL, '/img/p1.png', 'Appel pie', 'Es un appelpie jeje', 12.50),
(4, '2021-11-23 23:18:27', NULL, '/img/p2.png', 'Orange pie', 'Es un orangepie', 16.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael', 'admin@admin.com', '$2y$10$h39WVbSU7yPbAOFoXw2ZNeby/hyHCmfBpC8JUNEI4fKcmn8sewTCe', 'FFhLZwCZovAQDdnPR4r0gEoJv68dEEjIZ9yMXt8HmilWlmOQJ95boBaeyNIE', '2021-11-24 03:46:43', '2021-11-24 08:09:00'),
(2, 'Kevin', 'kevin@gmail.com', '$2y$10$6yrij86n6OFIMRq5zT5jIuZ1.L0P.T3Ga4rJh1OtZ/74nzDKa7Iw6', 'bZgK2ehfIZTEbf39h3DgJ3SnArM6QoknTcshdNrHDJQ7YDBerHu2y3GjiflR', '2021-11-24 08:09:21', '2021-11-24 08:12:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
