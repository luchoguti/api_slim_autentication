-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2017 a las 06:18:15
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_api_slim_project`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `update_at`) VALUES
(1, 'luis alberto torres', 'luis.torres@gmail.com', '$2y$10$d.1DBmUoCXUkJc61qPc0NeuPxS/dvQbkwf/GAcSaj4vA47QJ2XtmK', '2017-03-27 00:12:02', '2017-03-27 00:12:02'),
(2, 'luis torres', 'luchoguti9@gmail.com', '$2y$10$ZXx1aJv4a2BdRoMvGbgKJOZo.wCWXLgp6pJI/O4sE4fQRysLZc5VG', '2017-03-27 00:38:18', '2017-03-27 00:38:18'),
(3, '', '', '$2y$10$kiHbcABwdaN875k4HzUT..kDpjkFfWnoBKMCJ7lZZbHCko0gpYfm6', '2017-03-27 01:37:27', '2017-03-27 01:37:27'),
(4, '', '', '$2y$10$edjXDiuanrK3MVuv9uJXCOZGnklTusiRgpCQP6GO7zHoe1cGkbyni', '2017-03-27 01:37:38', '2017-03-27 01:37:38'),
(5, '', '', '$2y$10$P2nYLqS36xotBVri.T7Gk.rrGiT0...pfypiRqyVNyw2I4OjFWqJy', '2017-03-27 01:40:45', '2017-03-27 01:40:45'),
(6, '', '', '$2y$10$rVDoGbrH3Ba9OAE5iHWU1.61NBX4lrn.tV9GhVWYkyksomfJZxU8K', '2017-03-27 01:41:00', '2017-03-27 01:41:00'),
(7, 'luis alb t', 'lane@gmail.com', '$2y$10$2Sqm0QuStq9e9cFNbT8OB.Y/oleoIbpOLbsIsSo65d0QJTl2lLw3.', '2017-03-27 02:07:13', '2017-03-27 02:07:13'),
(8, 'ass', 'lucho@gmail.com', '$2y$10$Iv4a/KgGq8MSJPPTSumCQuTqgI9HXaONtRE2g7OdDrorsawcLT0VS', '2017-03-27 03:48:18', '2017-03-27 03:48:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
