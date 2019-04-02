-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-03-2019 a las 04:29:31
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `profesor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistensio`
--

CREATE TABLE `asistensio` (
  `NC` int(9) NOT NULL,
  `dia` int(2) DEFAULT NULL,
  `mes` int(2) DEFAULT NULL,
  `año` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biometrico`
--

CREATE TABLE `biometrico` (
  `NC` int(9) NOT NULL,
  `huella` blob NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `NC` int(9) NOT NULL,
  `nombre` int(50) DEFAULT NULL,
  `apellidop` int(50) DEFAULT NULL,
  `apellidom` int(50) DEFAULT NULL,
  `materia` text COLLATE armscii8_bin
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `nc` int(9) NOT NULL,
  `nombre` text NOT NULL,
  `apellidop` text NOT NULL,
  `apellidom` text NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistensio`
--
ALTER TABLE `asistensio`
  ADD PRIMARY KEY (`NC`);

--
-- Indices de la tabla `biometrico`
--
ALTER TABLE `biometrico`
  ADD PRIMARY KEY (`NC`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`NC`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`nc`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biometrico`
--
ALTER TABLE `biometrico`
  ADD CONSTRAINT `biometrico_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `profesores` (`nc`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `profesores` (`nc`);

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`nc`) REFERENCES `asistensio` (`NC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
