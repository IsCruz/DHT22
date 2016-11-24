-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2016 a las 07:59:19
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registros`
--
create database registros;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temperatura`
--

CREATE TABLE `temperatura` (
  `id` int(11) NOT NULL,
  `medicion_temperatura` double NOT NULL,
  `fecha` datetime NOT NULL,
  `humedad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `temperatura`
--

INSERT INTO `temperatura` (`id`, `medicion_temperatura`, `fecha`, `humedad`) VALUES
(1, 125, '1995-08-16 00:00:00', NULL),
(2, 126, '2016-10-01 00:00:00', NULL),
(3, 120, '0000-00-00 00:00:00', NULL),
(4, 120, '0000-00-00 00:00:00', NULL),
(5, 0, '2016-10-22 22:43:36', 0),
(6, 28, '2016-10-22 22:43:37', 20),
(7, 28, '2016-10-22 22:43:39', 20),
(8, 28, '2016-10-22 22:43:41', 21),
(9, 28, '2016-10-22 22:43:44', 21),
(10, 28, '2016-10-22 22:43:46', 21),
(11, 28, '2016-10-22 22:43:48', 21),
(12, 28, '2016-10-22 22:43:51', 21),
(13, 28, '2016-10-22 22:43:53', 23),
(14, 28, '2016-10-22 22:43:55', 21),
(15, 28, '2016-10-22 22:43:57', 22),
(16, 28, '2016-10-22 22:44:00', 21),
(17, 28, '2016-10-22 22:44:02', 21),
(18, 28, '2016-10-22 22:44:04', 22),
(19, 28, '2016-10-22 22:44:06', 22),
(20, 28, '2016-10-22 22:44:09', 21),
(21, 28, '2016-10-22 22:44:11', 20),
(22, 28, '2016-10-22 22:44:13', 22),
(23, 28, '2016-10-22 22:44:16', 20),
(24, 28, '2016-10-22 22:44:18', 21),
(25, 0, '2016-10-22 22:46:30', 0),
(26, 28, '2016-10-22 22:46:32', 17),
(27, 28, '2016-10-22 22:46:34', 20),
(28, 28, '2016-10-22 22:46:36', 20),
(29, 28, '2016-10-22 22:46:39', 20),
(30, 28, '2016-10-22 22:46:41', 22),
(31, 28, '2016-10-22 22:46:44', 20),
(32, 28, '2016-10-22 22:46:46', 22),
(33, 28, '2016-10-22 22:46:49', 21),
(34, 28, '2016-10-22 22:47:34', 20),
(35, 28, '2016-10-22 22:47:39', 22),
(36, 28, '2016-10-22 22:47:41', 20),
(37, 28, '2016-10-22 22:47:44', 20),
(38, 28, '2016-10-22 22:47:46', 22),
(39, 28, '2016-10-22 22:47:48', 20),
(40, 28, '2016-10-22 22:47:51', 22),
(41, 28, '2016-10-22 22:47:53', 23),
(42, 28, '2016-10-22 22:47:55', 21),
(43, 28, '2016-10-22 22:47:57', 21),
(44, 28, '2016-10-22 22:48:00', 20),
(45, 28, '2016-10-22 22:48:02', 21),
(46, 28, '2016-10-22 22:48:04', 22),
(47, 28, '2016-10-22 22:48:07', 21),
(48, 28, '2016-10-22 22:48:09', 19),
(49, 28, '2016-10-22 22:48:11', 20),
(50, 28, '2016-10-22 22:48:13', 22),
(51, 28, '2016-10-22 22:48:16', 20),
(52, 28, '2016-10-22 22:48:18', 20),
(53, 28, '2016-10-22 22:48:20', 22),
(54, 27, '2016-10-22 22:48:22', 20),
(55, 28, '2016-10-22 22:48:25', 23),
(56, 28, '2016-10-22 22:48:27', 20),
(57, 28, '2016-10-22 22:48:29', 22),
(58, 28, '2016-10-22 22:48:32', 20),
(59, 28, '2016-10-22 22:48:34', 21),
(60, 28, '2016-10-22 22:48:36', 22),
(61, 28, '2016-10-22 22:48:38', 21),
(62, 28, '2016-10-22 22:48:41', 20),
(63, 28, '2016-10-22 22:48:43', 21),
(64, 28, '2016-10-22 22:48:45', 20),
(65, 28, '2016-10-22 22:48:48', 20),
(66, 28, '2016-10-22 22:48:50', 21),
(67, 28, '2016-10-22 22:48:52', 20),
(68, 28, '2016-10-22 22:48:54', 22),
(69, 28, '2016-10-22 22:48:57', 21),
(70, 28, '2016-10-22 22:48:59', 22),
(71, 28, '2016-10-22 22:49:01', 22),
(72, 28, '2016-10-22 22:49:04', 21),
(73, 28, '2016-10-22 22:49:06', 21),
(74, 28, '2016-10-22 22:49:08', 21),
(75, 28, '2016-10-22 22:49:10', 21),
(76, 28, '2016-10-22 22:49:13', 20),
(77, 28, '2016-10-22 22:49:15', 21),
(78, 28, '2016-10-22 22:49:17', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `temperatura`
--
ALTER TABLE `temperatura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `temperatura`
--
ALTER TABLE `temperatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;