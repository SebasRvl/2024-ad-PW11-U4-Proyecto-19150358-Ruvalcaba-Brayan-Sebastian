-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2023 a las 03:39:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pecera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pezcados`
--

CREATE TABLE `pezcados` (
  `Id_Pez` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Fecha_Agregado` datetime NOT NULL,
  `Observaciones` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pezcados`
--

INSERT INTO `pezcados` (`Id_Pez`, `Nombre`, `Fecha_Agregado`, `Observaciones`) VALUES
(0, 'Otro', '2023-12-06 18:46:57', 'Jsjdbd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pezcados2`
--

CREATE TABLE `pezcados2` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha_agregado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pezcados2`
--

INSERT INTO `pezcados2` (`id`, `nombre`, `fecha_agregado`, `observaciones`) VALUES
(1, 'Otrosuus', '2023-12-07 00:46:57', 'Jsjdbd6fg6yg'),
(3, 'Pezcado nuevo', '2023-12-07 00:46:57', 'Djdjdj'),
(4, 'Anotherone', '2023-12-07 00:46:57', 'Prueba'),
(8, 'Nuevo pez 2', '2023-12-05 03:45:54', 'Nuevo pez'),
(9, 'Nuevo pez 3', '2023-12-08 03:45:54', 'Nuevo pez'),
(10, 'PezCaofo', '2023-12-06 03:45:54', 'Nuevo pez'),
(11, 'Nuevo pescado 🐟', '2023-12-07 03:59:54', 'Bsbsjzj'),
(12, 'Pescado nuevo', '2023-12-05 03:59:54', '🐠 nuevo'),
(13, '🐠🐟 nuevo ', '2023-12-05 03:59:54', 'Nuevo pez'),
(14, 'Nuejo', '2023-12-05 04:08:59', 'Etxjdbdj'),
(15, 'Tuvh', '2023-12-22 04:08:59', 'Guhh'),
(16, 'Gujl', '2023-12-23 04:08:59', 'Huj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUser` int(11) NOT NULL,
  `Usuario` varchar(30) DEFAULT NULL,
  `Contrasenia` varchar(30) DEFAULT NULL,
  `Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUser`, `Usuario`, `Contrasenia`, `Nombre`) VALUES
(1, 'admin', 'admin', 'Chuy'),
(2, 'admin', 'admin2', 'Osvaldo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pezcados`
--
ALTER TABLE `pezcados`
  ADD PRIMARY KEY (`Id_Pez`),
  ADD KEY `Id` (`Id_Pez`),
  ADD KEY `Id_Pez` (`Id_Pez`);

--
-- Indices de la tabla `pezcados2`
--
ALTER TABLE `pezcados2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pezcados2`
--
ALTER TABLE `pezcados2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
