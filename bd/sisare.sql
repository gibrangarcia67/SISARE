-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2024 a las 08:32:16
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
-- Base de datos: `sisare`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `grupo` varchar(5) NOT NULL,
  `especialidad` varchar(35) NOT NULL,
  `matricula` bigint(20) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `genero` varchar(2) NOT NULL,
  `nombre_p` varchar(90) NOT NULL,
  `correo_p` varchar(60) NOT NULL,
  `nombre_m` varchar(90) NOT NULL,
  `correo_m` varchar(60) NOT NULL,
  `cantidad_r` int(11) NOT NULL,
  `cantidad_s` int(11) NOT NULL,
  `cantidad_c` int(11) NOT NULL,
  `cantidad_cc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`grupo`, `especialidad`, `matricula`, `nombre`, `genero`, `nombre_p`, `correo_p`, `nombre_m`, `correo_m`, `cantidad_r`, `cantidad_s`, `cantidad_c`, `cantidad_cc`) VALUES
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710162, 'BERNAL CHAIRES GENESIS MIRANDA', 'M', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartacompromiso`
--

CREATE TABLE `cartacompromiso` (
  `Id_carta` int(11) NOT NULL,
  `tutor` varchar(90) NOT NULL,
  `grupo` varchar(5) NOT NULL,
  `especialidad` varchar(60) NOT NULL,
  `dia_e` int(11) NOT NULL,
  `mes_e` int(11) NOT NULL,
  `ano_e` int(11) NOT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citatorios`
--

CREATE TABLE `citatorios` (
  `id` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `hora` int(11) NOT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id` int(11) NOT NULL,
  `motivo` longtext NOT NULL,
  `dia_e` int(11) NOT NULL,
  `mes_e` int(11) NOT NULL,
  `ano_e` int(11) NOT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suspensiones`
--

CREATE TABLE `suspensiones` (
  `id` int(11) NOT NULL,
  `dia_i` int(11) NOT NULL,
  `mes_i` int(11) NOT NULL,
  `ano_i` int(11) NOT NULL,
  `dia_f` int(11) NOT NULL,
  `mes_f` int(11) NOT NULL,
  `ano_f` int(11) NOT NULL,
  `grupo` varchar(5) NOT NULL,
  `especialidad` varchar(60) NOT NULL,
  `dia_e` int(11) NOT NULL,
  `mes_e` int(11) NOT NULL,
  `ano_e` int(11) NOT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `cartacompromiso`
--
ALTER TABLE `cartacompromiso`
  ADD PRIMARY KEY (`Id_carta`);

--
-- Indices de la tabla `citatorios`
--
ALTER TABLE `citatorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suspensiones`
--
ALTER TABLE `suspensiones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cartacompromiso`
--
ALTER TABLE `cartacompromiso`
  MODIFY `Id_carta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citatorios`
--
ALTER TABLE `citatorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suspensiones`
--
ALTER TABLE `suspensiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
