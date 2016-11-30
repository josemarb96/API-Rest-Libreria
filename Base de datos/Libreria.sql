-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-11-2016 a las 14:26:45
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Autores`
--

CREATE TABLE `Autores` (
  `Au_ID` int(11) NOT NULL,
  `Au_Nombre` varchar(20) NOT NULL,
  `Au_Apellidos` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Autores`
--

INSERT INTO `Autores` (`Au_ID`, `Au_Nombre`, `Au_Apellidos`) VALUES
(1, 'Josema', 'RB'),
(2, 'David', 'Benítez Brasero'),
(3, 'Mercedes', 'Requena Nosequemás'),
(4, 'Javi', 'Músico Stalker');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libros`
--

CREATE TABLE `Libros` (
  `Li_ID` smallint(6) NOT NULL,
  `Li_Titulo` varchar(20) NOT NULL,
  `Li_Editorial` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Libros`
--

INSERT INTO `Libros` (`Li_ID`, `Li_Titulo`, `Li_Editorial`) VALUES
(1, 'Manolito Gafotas', 'La cruda realidad'),
(2, 'Supervivencia DAM', 'Ies Nervion'),
(3, 'Chic para ti', 'Claro que sí, guapi'),
(4, 'Canta conmigo', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Autores`
--
ALTER TABLE `Autores`
  ADD PRIMARY KEY (`Au_ID`);

--
-- Indices de la tabla `Libros`
--
ALTER TABLE `Libros`
  ADD PRIMARY KEY (`Li_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Autores`
--
ALTER TABLE `Autores`
  MODIFY `Au_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Libros`
--
ALTER TABLE `Libros`
  MODIFY `Li_ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
