-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2020 a las 03:36:48
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hogarmiercoles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `alimento` varchar(20) NOT NULL,
  `tipo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`id`, `nombre`, `edad`, `alimento`, `tipo`, `descripcion`, `foto`) VALUES
(21, 'lucas', 8, 'carne', 1, 'le gusta jugar', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal1.jpg?raw=true'),
(22, 'juana', 6, 'concentrados', 1, 'no le gustan las caricias', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal2.jpg?raw=true'),
(23, 'marco', 3, 'pollo', 1, 'ninguna', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal3.jpg?raw=true'),
(24, 'yellow', 4, 'semillas', 2, '-ninguna', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal4.jpg?raw=true'),
(25, 'samara', 9, 'vegetales', 0, '-es de tierra y agua', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal5.jpg?raw=true'),
(26, 'luck', 3, 'Espinacas y coliflor', 1, 'le gusta jugar', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal6.jpg?raw=true'),
(27, 'lorenzo', 4, 'semillas', 2, '- Es muy hablador.', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal7.jpg?raw=true'),
(28, 'tiniebla', 7, 'hierba, forraje, hen', 2, '', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal8.jpg?raw=true'),
(29, 'algodon', 4, 'zanahorias', 1, 'es muy tierno', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal9.jpg?raw=true'),
(30, 'lupe', 2, 'fruta seca', 2, '-no le gustan las caricias', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal10.jpg?raw=true'),
(32, 'prueva1', 16, 'pollo', 2, '...', 'https://github.com/estefaniasanchez29/FOTOS/blob/main/animal1.jpg?raw=true');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
