-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2024 a las 00:53:27
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
-- Base de datos: `bdcarritocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) UNSIGNED NOT NULL,
  `Dni` varchar(9) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Dni`, `Nombres`, `Direccion`, `Email`, `Password`) VALUES
(17, '78019778', 'Alexander Fuentes Medina', 'Lambayeque-Ferreñafe', 'alexanderfuentes@gmail.com', 'admin'),
(21, '654165156', 'zdxvcfzsdxfds', 'dvfsbuysdxfg', 'PROTOTIPOKRAK@GMAIL.COM', '12345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompras` int(11) UNSIGNED NOT NULL,
  `idCliente` int(11) UNSIGNED NOT NULL,
  `idPago` int(11) UNSIGNED NOT NULL,
  `FechaCompras` varchar(11) DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `idDetalle` int(10) UNSIGNED NOT NULL,
  `idProducto` int(11) UNSIGNED NOT NULL,
  `idCompras` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioCompra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(11) UNSIGNED NOT NULL,
  `Monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `Nombres`, `Foto`, `Descripcion`, `Precio`, `Stock`) VALUES
(20, 'iPhone 6s', 'http://localhost/img/iphone 6s.png', 'iOS 11\nCapacidad 64GB\nChip A9 con arquitectura de 64 bits\nCoprocesador de movimiento M9 integrado\nCamara de 12 Mpx', 700, 100),
(21, 'iPhone 8 Plus', 'http://localhost/img/iphone 8.jpg', 'iOS 13 Capacidad 128GB \nChip A9 con arquitectura de 64 bits \nCoprocesador de movimiento M9 integrado Camara de 24 Mpx', 1500, 1000),
(22, 'iPhone 11 Pro Max', 'http://localhost/img/iphone 11.jpg', 'iOS 13 Capacidad 128GB Chip A9 con arquitectura de 64 bits Coprocesador de movimiento M9 integrado Camara Dual de 24 Mpx', 1600, 1000),
(23, 'AirPods - Apple', 'http://localhost/img/airpods.jpg', 'Los AirPods ahora te ofrecen una duracion inigualable de 5 horas de audio y hasta 3 horas para hablar con una sola carga', 150, 100),
(24, 'iPad  Pro - Apple', 'http://localhost/img/Ipad.png', 'Face ID\nEl A12X Bionic es el chip mas inteligente y potente que hemos creado hasta ahora. Capacidad de 256GB Pantalla 4K ', 2400, 1000),
(25, 'Apple - Pencil', 'http://localhost/img/applepencil.png', 'El Apple Pencil reinventada la forma de dibujar, tomar notas y marcar documentos para hacerla mÃ¡s intuitiva, precisa y mÃ¡gica.', 200, 1000),
(26, 'MacBook Air', 'http://localhost/img/macbookair.jpg', 'Pantalla de retina de alta resolucion 2560 x 1600 La MacBook Air ahora trae Touch ID Capacidad de 1TB SSD Memoria RAM de 16GB DDR4 Intel Core i7 de Septima generacion.', 4500, 1000),
(28, 'MacBook Pro', 'http://localhost/img/macpro.jpg', 'Pantalla de retina de alta resolucion 2560 x 1600 La MacBook Pro ahora trae Touch ID Capacidad de 2TB SSD Memoria RAM de 32GB DDR4 Intel Core i9 de novena generacion.', 16200, 1000),
(29, 'TV - Apple', 'http://localhost/img/tv.jpg', 'Una forma de ver television como siempre sonaste: tus servicios de streaming favoritos, miles de titulos para comprar o alquilar, e historias originales de Apple TV+ ', 1500, 5000),
(30, 'Apple Watch Series 3', 'http://localhost/img/relok.png', 'Monitorea tu salud, Los calculos Pararse, Moverse y Ejercicio te muestran todos los movimientos que haces diariamente. Nunca te pierdas una llamada o notificacion importante, llamada automaticas', 450, 1200),
(31, 'iMac Pro - Apple', 'http://localhost/img/imac.jpg', 'Procesador Xeon de\n8, 10, 14 o 18 nucleos\nTurbo Boost de hasta 4.5 GHz\nHasta 42 MB de cache. Gracias al GPU Radeon Pro Vega, la iMac Pro ofrece los graficos mÃ¡s espectaculares de todas las Mac', 5600, 100),
(32, 'Home Pod - Apple', 'http://localhost/img/home.jpg', 'Dimensiones:\n17,2 cm de alto\n14,2 cm de ancho\n\nPeso:\n2,5 kg\n\nColor:\nGris espacial\nBlanco\nWiFi 802.11ac con MIMO\nAcceso directo para invitados\nBluetooth 5.0\nAdmite altavoces en varias habitaciones con AirPlay ', 500, 200),
(33, 'iPhone 11 Pro max', 'http://localhost/img/iphone11.jfif', 'iOS 13 Capacidad 128GB Chip A12 con arquitectura de 64 bits Coprocesador de movimiento M9 integrado Camara de 48 Mpx', 5000, 100),
(34, 'perro', 'http://localhost/img/descarga.jpg', 'gsdfuhafsdbfhasdjvb', 54654, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompras`),
  ADD KEY `Compras_FKIndex1` (`idPago`),
  ADD KEY `Compras_FKIndex2` (`idCliente`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`idDetalle`,`idProducto`,`idCompras`),
  ADD KEY `Producto_has_Compras_FKIndex1` (`idProducto`),
  ADD KEY `Producto_has_Compras_FKIndex2` (`idCompras`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompras` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `idDetalle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
