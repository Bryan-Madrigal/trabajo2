-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-10-2024 a las 03:01:28
-- Versión del servidor: 5.7.24
-- Versión de PHP: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oasis_tour`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(20) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `Dirección` varchar(40) NOT NULL,
  `Teléfono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nombre`, `Dirección`, `Teléfono`) VALUES
(1, 'JOEL ISAAC ENCINOS RUIZ', 'Calle Principal 123', '9611234567'),
(2, 'Bryan Raul Perez Madrigal', 'Calle 10, Ciudad 123', '9611234567'),
(3, 'Luis Alonso Cortes Hilerio', 'Calle 20, Ciudad 456', '9612345678'),
(4, 'Jose Luis Hernandez Vaquerizo', 'Calle 30, Ciudad 789', '	9613456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `ID_Destino` int(12) NOT NULL,
  `Nombre_Destino` varchar(30) NOT NULL,
  `Descripción` varchar(50) NOT NULL,
  `Región` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`ID_Destino`, `Nombre_Destino`, `Descripción`, `Región`) VALUES
(1, 'PALENQUE', 'Zona arqueológica maya', '	Chiapas'),
(2, 'PALENQUE', 'Zona arqueológica maya', '	Chiapas'),
(3, 'San Cristobal de las Casas', '	Ciudad colonial con arquitectura indígena', 'Chiapas'),
(4, 'Tuxtla Gutierrez', 'Capital del estado de Chiapas', '	Chiapas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `ID_Empleado` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Teléfono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`ID_Empleado`, `Nombre`, `Cargo`, `Teléfono`) VALUES
(1, 'JOEL ISAAC ENCINOS RUIZ', 'Gerente de ventas', '9673470942'),
(2, '	Bryan Raul Perez Madrigal', 'Gerente de ventas', '9619876543'),
(3, '	Luis Alonso Cortes Hilerio', 'Asistente de Ventas', '9618765432'),
(4, 'Jose Luis Hernandez Vaquerizo', 'Administrador', '	9617654321');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_Proveedor` int(10) NOT NULL,
  `Nombre_Proveedor` varchar(25) NOT NULL,
  `Contacto` varchar(40) NOT NULL,
  `Correo_Electrónico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID_Proveedor`, `Nombre_Proveedor`, `Contacto`, `Correo_Electrónico`) VALUES
(1, 'Turismo Chiapas', 'LUIS PEREZ', 'turismo@chiapas.com'),
(2, 'Turismo Chiapas', 'Luis cruz', 'turismo@chiapas.com'),
(3, '	Aventura Maya', 'Ana Martinez', 'aventura@maya.com'),
(4, '	Viajes en Chiapas', 'Carlos Gomez', 'viajes@chiapas.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `ID_Reserva` int(10) NOT NULL,
  `ID_Cliente` int(10) DEFAULT NULL,
  `ID_Destino` int(10) DEFAULT NULL,
  `Fecha_Reserva` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`ID_Reserva`, `ID_Cliente`, `ID_Destino`, `Fecha_Reserva`) VALUES
(1, 1, 1, '2024-10-04'),
(2, 2, 2, '2024-10-24'),
(3, 3, 3, '2026-10-01'),
(4, 4, 4, '2024-10-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_turisticos`
--

CREATE TABLE `servicios_turisticos` (
  `ID_Servicio` int(12) NOT NULL,
  `Nombre_Servicio` varchar(100) DEFAULT NULL,
  `ID_Proveedor` int(10) DEFAULT NULL,
  `ID_Destino` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicios_turisticos`
--

INSERT INTO `servicios_turisticos` (`ID_Servicio`, `Nombre_Servicio`, `ID_Proveedor`, `ID_Destino`) VALUES
(1, 'Tour Guiado', 1, 1),
(8, 'Tour Guiado', 1, 1),
(9, '	Caminata por la Selva', 3, 3),
(10, '	Visita Guiada a Museos', 4, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`ID_Destino`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID_Empleado`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`ID_Reserva`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Destino` (`ID_Destino`);

--
-- Indices de la tabla `servicios_turisticos`
--
ALTER TABLE `servicios_turisticos`
  ADD PRIMARY KEY (`ID_Servicio`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`),
  ADD KEY `ID_Destino` (`ID_Destino`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `ID_Destino` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `ID_Empleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID_Proveedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `ID_Reserva` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `servicios_turisticos`
--
ALTER TABLE `servicios_turisticos`
  MODIFY `ID_Servicio` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`ID_Destino`) REFERENCES `destinos` (`ID_Destino`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicios_turisticos`
--
ALTER TABLE `servicios_turisticos`
  ADD CONSTRAINT `servicios_turisticos_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`) ON DELETE CASCADE,
  ADD CONSTRAINT `servicios_turisticos_ibfk_2` FOREIGN KEY (`ID_Destino`) REFERENCES `destinos` (`ID_Destino`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
