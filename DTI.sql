-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-08-2018 a las 21:38:11
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `DTI`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ADMINISTRADOR`
--

CREATE TABLE IF NOT EXISTS `ADMINISTRADOR` (
  `id_admin` int(11) NOT NULL,
  `Nadmin` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ApellidoP` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `apellidoM` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `RFC` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creada` date DEFAULT NULL,
  `fecha_actualizada` date DEFAULT NULL,
  `Contraseña` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `estado` enum('Activo','Inactivo') COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CALLE`
--

CREATE TABLE IF NOT EXISTS `CALLE` (
  `id_calle` int(11) NOT NULL,
  `Ncalle` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idcol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `CALLE`
--

INSERT INTO `CALLE` (`id_calle`, `Ncalle`, `idcol`) VALUES
(1, '10 sur', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTE`
--

CREATE TABLE IF NOT EXISTS `CLIENTE` (
  `id_cliente` int(11) NOT NULL,
  `Ncliente` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ApellidoP` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ApellidoM` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `CP` varchar(5) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `RFC` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creada` date DEFAULT NULL,
  `fecha_actualizada` date DEFAULT NULL,
  `estado` enum('Activo','Inactivo') COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idzon` int(11) DEFAULT NULL,
  `idlocal` int(11) DEFAULT NULL,
  `idcol` int(11) DEFAULT NULL,
  `idcal` int(11) DEFAULT NULL,
  `idpaq` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `CLIENTE`
--

INSERT INTO `CLIENTE` (`id_cliente`, `Ncliente`, `ApellidoP`, `ApellidoM`, `CP`, `RFC`, `telefono`, `fecha_creada`, `fecha_actualizada`, `estado`, `idzon`, `idlocal`, `idcol`, `idcal`, `idpaq`) VALUES
(1, 'Ana', 'Morales', 'Maldonado', '75617', 'qwertyuio', '1234567890', '2018-08-06', '2018-08-06', 'Activo', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COBRANZA`
--

CREATE TABLE IF NOT EXISTS `COBRANZA` (
  `id_emple` int(11) DEFAULT NULL,
  `id_clien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `COBRANZA`
--

INSERT INTO `COBRANZA` (`id_emple`, `id_clien`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COLONIA`
--

CREATE TABLE IF NOT EXISTS `COLONIA` (
  `id_colonia` int(11) NOT NULL,
  `NColonia` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idlocal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `COLONIA`
--

INSERT INTO `COLONIA` (`id_colonia`, `NColonia`, `idlocal`) VALUES
(1, ' Av. Juarez', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EMPLEADOS`
--

CREATE TABLE IF NOT EXISTS `EMPLEADOS` (
  `id_empleado` int(11) NOT NULL,
  `NEmpleado` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ApellidoP` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ApellidoM` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `CP` varchar(5) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `RFC` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Telefono` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_creada` date DEFAULT NULL,
  `fecha_actualizada` date DEFAULT NULL,
  `estado` enum('Activo','Inactivo') COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Contraseña` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idzon` int(11) DEFAULT NULL,
  `idlocal` int(11) DEFAULT NULL,
  `idcol` int(11) DEFAULT NULL,
  `idcal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `EMPLEADOS`
--

INSERT INTO `EMPLEADOS` (`id_empleado`, `NEmpleado`, `ApellidoP`, `ApellidoM`, `CP`, `RFC`, `Telefono`, `fecha_creada`, `fecha_actualizada`, `estado`, `Contraseña`, `idzon`, `idlocal`, `idcol`, `idcal`) VALUES
(1, 'Jaime', 'Centeno', 'Vidal', '75617', '123456789', '2345678', '2018-08-06', '2018-08-06', 'Activo', '121346', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LOCALIDAD`
--

CREATE TABLE IF NOT EXISTS `LOCALIDAD` (
  `id_localidad` int(11) NOT NULL,
  `NLocalidad` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idzon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `LOCALIDAD`
--

INSERT INTO `LOCALIDAD` (`id_localidad`, `NLocalidad`, `idzon`) VALUES
(1, 'San Felipe', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PAQUETE`
--

CREATE TABLE IF NOT EXISTS `PAQUETE` (
  `id_paquete` int(11) NOT NULL,
  `paquete` enum('Paquete basico','Paquete Medium','Paquete basico') COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Megas_bajada` char(5) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Megas_subida` char(5) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Limite_megas` enum('10mb','20mb','40') COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Monto` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Fecha_alta` date DEFAULT NULL,
  `Fecha_pago` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `PAQUETE`
--

INSERT INTO `PAQUETE` (`id_paquete`, `paquete`, `Megas_bajada`, `Megas_subida`, `Limite_megas`, `Monto`, `Fecha_alta`, `Fecha_pago`) VALUES
(1, 'Paquete basico', '5', '3', '10mb', '100', '2018-08-06', '2018-08-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ZONA`
--

CREATE TABLE IF NOT EXISTS `ZONA` (
  `id_zona` int(11) NOT NULL,
  `Nzona` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ZONA`
--

INSERT INTO `ZONA` (`id_zona`, `Nzona`) VALUES
(1, 'perote');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ADMINISTRADOR`
--
ALTER TABLE `ADMINISTRADOR`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `CALLE`
--
ALTER TABLE `CALLE`
  ADD PRIMARY KEY (`id_calle`),
  ADD KEY `idcol` (`idcol`);

--
-- Indices de la tabla `CLIENTE`
--
ALTER TABLE `CLIENTE`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `idzon` (`idzon`),
  ADD KEY `idlocal` (`idlocal`),
  ADD KEY `idcol` (`idcol`),
  ADD KEY `idcal` (`idcal`),
  ADD KEY `idpaq` (`idpaq`);

--
-- Indices de la tabla `COBRANZA`
--
ALTER TABLE `COBRANZA`
  ADD KEY `id_emple` (`id_emple`),
  ADD KEY `id_clien` (`id_clien`);

--
-- Indices de la tabla `COLONIA`
--
ALTER TABLE `COLONIA`
  ADD PRIMARY KEY (`id_colonia`),
  ADD KEY `idlocal` (`idlocal`);

--
-- Indices de la tabla `EMPLEADOS`
--
ALTER TABLE `EMPLEADOS`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `idzon` (`idzon`),
  ADD KEY `idlocal` (`idlocal`),
  ADD KEY `idcol` (`idcol`),
  ADD KEY `idcal` (`idcal`);

--
-- Indices de la tabla `LOCALIDAD`
--
ALTER TABLE `LOCALIDAD`
  ADD PRIMARY KEY (`id_localidad`),
  ADD KEY `idzon` (`idzon`);

--
-- Indices de la tabla `PAQUETE`
--
ALTER TABLE `PAQUETE`
  ADD PRIMARY KEY (`id_paquete`);

--
-- Indices de la tabla `ZONA`
--
ALTER TABLE `ZONA`
  ADD PRIMARY KEY (`id_zona`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `CALLE`
--
ALTER TABLE `CALLE`
  ADD CONSTRAINT `calle_ibfk_1` FOREIGN KEY (`idcol`) REFERENCES `COLONIA` (`id_colonia`);

--
-- Filtros para la tabla `CLIENTE`
--
ALTER TABLE `CLIENTE`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idzon`) REFERENCES `ZONA` (`id_zona`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idlocal`) REFERENCES `LOCALIDAD` (`id_localidad`),
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`idcol`) REFERENCES `COLONIA` (`id_colonia`),
  ADD CONSTRAINT `cliente_ibfk_4` FOREIGN KEY (`idcal`) REFERENCES `CALLE` (`id_calle`),
  ADD CONSTRAINT `cliente_ibfk_5` FOREIGN KEY (`idpaq`) REFERENCES `PAQUETE` (`id_paquete`);

--
-- Filtros para la tabla `COBRANZA`
--
ALTER TABLE `COBRANZA`
  ADD CONSTRAINT `cobranza_ibfk_1` FOREIGN KEY (`id_emple`) REFERENCES `EMPLEADOS` (`id_empleado`),
  ADD CONSTRAINT `cobranza_ibfk_2` FOREIGN KEY (`id_clien`) REFERENCES `CLIENTE` (`id_cliente`);

--
-- Filtros para la tabla `COLONIA`
--
ALTER TABLE `COLONIA`
  ADD CONSTRAINT `colonia_ibfk_1` FOREIGN KEY (`idlocal`) REFERENCES `LOCALIDAD` (`id_localidad`);

--
-- Filtros para la tabla `EMPLEADOS`
--
ALTER TABLE `EMPLEADOS`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idzon`) REFERENCES `ZONA` (`id_zona`),
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`idlocal`) REFERENCES `LOCALIDAD` (`id_localidad`),
  ADD CONSTRAINT `empleados_ibfk_3` FOREIGN KEY (`idcol`) REFERENCES `COLONIA` (`id_colonia`),
  ADD CONSTRAINT `empleados_ibfk_4` FOREIGN KEY (`idcal`) REFERENCES `CALLE` (`id_calle`);

--
-- Filtros para la tabla `LOCALIDAD`
--
ALTER TABLE `LOCALIDAD`
  ADD CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`idzon`) REFERENCES `ZONA` (`id_zona`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
