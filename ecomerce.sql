-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2020 a las 22:01:54
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecomerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(4) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `telefono` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombres`, `apellidos`, `telefono`, `usuario`, `contraseña`, `correo`) VALUES
(1, 'Francisco', 'Mostajo', 958674123, 'admin', '1234', 'franciscomostajo525@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_carrito` int(11) NOT NULL,
  `id_producto` int(4) NOT NULL,
  `id_cliente` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(4) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `telefono` int(9) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellidos`, `telefono`, `usuario`, `clave`, `correo`) VALUES
(8, 'ae', 'aea', 978451236, 'francia', 'francia', 'a@gmail.com'),
(9, 'jhon', 'ramos', 987456123, 'ecuador', 'ecuador', 'johon@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(4) NOT NULL,
  `precio` varchar(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `id_admin` int(4) NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `precio`, `nombre`, `categoria`, `descripcion`, `id_admin`, `imagen`) VALUES
(1, '799', 'XIAOMI', 'celulares', 'Redmi Note 8, Dual Sim, 4 Cámaras, Cámara principal de 48MP, 64GB de Memoria y 4GB de RAM, Batería de 4,000 mAh con carga rápida, Pantalla 6.3\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165747-500-auto?width=500&height=auto&aspect=true'),
(2, '799', 'XIAOMI', 'celulares', 'Redmi Note 8, Dual Sim, 4 Cámaras, Cámara principal de 48MP, 64GB de Memoria y 4GB de RAM, Batería de 4,000 mAh con carga rápida, Pantalla 6.3\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165747-500-auto?width=500&height=auto&aspect=true'),
(3, '799', 'XIAOMI', 'celulares', 'Redmi Note 8, Dual Sim, 4 Cámaras, Cámara principal de 48MP, 64GB de Memoria y 4GB de RAM, Batería de 4,000 mAh con carga rápida, Pantalla 6.3\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165747-500-auto?width=500&height=auto&aspect=true'),
(4, '3599.90', 'iPhone11', 'celulares', 'iPhone 11, 2 Cámaras traseras de 12MP y frontal de 12MP, 64GB de Memoria y 4GB de RAM, Batería de 3,046 mAh con carga rápida, Pantalla 6.1\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165650-500-auto?width=500&height=auto&aspect=true'),
(5, '2099.90', 'Mi Note 10', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165718-500-auto?width=500&height=auto&aspect=true'),
(6, '1399', 'Galaxy A51', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165787-500-auto?width=500&height=auto&aspect=true'),
(7, '2999.90', 'Galaxy S10', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165812-500-auto?width=500&height=auto&aspect=true'),
(8, '379', 'Galaxy J2 Core', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165832-500-auto?width=500&height=auto&aspect=true'),
(9, '1099', 'Redmi Note 8 Pro', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165106-500-auto?width=500&height=auto&aspect=true'),
(10, '89.90', 'Nokia 106', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165723-500-auto?width=500&height=auto&aspect=true'),
(11, '3599.90', 'iPhone11', 'celulares', 'iPhone 11, 2 Cámaras traseras de 12MP y frontal de 12MP, 64GB de Memoria y 4GB de RAM, Batería de 3,046 mAh con carga rápida, Pantalla 6.1\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165650-500-auto?width=500&height=auto&aspect=true'),
(12, '2099.90', 'Mi Note 10', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165718-500-auto?width=500&height=auto&aspect=true'),
(13, '1399', 'Galaxy A51', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165787-500-auto?width=500&height=auto&aspect=true'),
(14, '2999.90', 'Galaxy S10', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165812-500-auto?width=500&height=auto&aspect=true'),
(15, '379', 'Galaxy J2 Core', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165832-500-auto?width=500&height=auto&aspect=true'),
(16, '1099', 'Redmi Note 8 Pro', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165106-500-auto?width=500&height=auto&aspect=true'),
(17, '89.90', 'Nokia 106', 'celulares', 'Mi Note 10, Dual Sim, 5 Cámaras traseras, Cámara principal de 108MP, 128GB de Memoria y 6GB de RAM, Batería de 5,260 mAh carga rápida, Pantalla 6.47\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165723-500-auto?width=500&height=auto&aspect=true'),
(18, '1399.90', 'Mi 9T ', 'celulares', 'Mi 9T, Dual Sim, 3 Cámaras, Cámara principal 48MP, Cámara frontal Pop-Up, 64GB de Memoria y 6GB de RAM, Batería 4,000 mAh carga rápida, Pantalla 6.4\"', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/165707-500-auto?width=500&height=auto&aspect=true'),
(20, '149.90', 'Audifonos Bluetooth', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167634-500-auto?width=500&height=auto&aspect=true'),
(21, '149.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167635-500-auto?width=500&height=auto&aspect=true'),
(22, '299', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166599-500-auto?width=500&height=auto&aspect=true'),
(23, '19.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/168115-500-auto?width=500&height=auto&aspect=true'),
(24, '179', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167655-500-auto?width=500&height=auto&aspect=true'),
(25, '29.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/157381-500-auto?width=500&height=auto&aspect=true'),
(26, '19.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/168060-500-auto?width=500&height=auto&aspect=true'),
(27, '29.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166449-500-auto?width=500&height=auto&aspect=true'),
(28, '119.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167567-500-auto?width=500&height=auto&aspect=true'),
(29, '149.90', 'Audifonos Bluetooth', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167634-500-auto?width=500&height=auto&aspect=true'),
(30, '149.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167635-500-auto?width=500&height=auto&aspect=true'),
(31, '299', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166599-500-auto?width=500&height=auto&aspect=true'),
(32, '19.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/168115-500-auto?width=500&height=auto&aspect=true'),
(33, '179', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167655-500-auto?width=500&height=auto&aspect=true'),
(34, '29.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/157381-500-auto?width=500&height=auto&aspect=true'),
(35, '19.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/168060-500-auto?width=500&height=auto&aspect=true'),
(36, '29.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166449-500-auto?width=500&height=auto&aspect=true'),
(37, '119.90', 'Audífonos Bluetooth In ear', 'audio', 'Audífonos Bluetooth In ear True Wireless Sesh, almohadillas de silicona, estuche de carga', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167567-500-auto?width=500&height=auto&aspect=true'),
(38, '69.90', 'teclado inalambrico', 'computo', 'Teclado inalámbrico Negro con Mouse', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166455-500-auto?width=500&height=auto&aspect=true'),
(39, '39.90', 'mouse inalambrico silencioso', 'computo', 'Teclado inalámbrico Negro con Mouse', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166589-500-auto?width=500&height=auto&aspect=true'),
(40, '59.90', 'Cooler ', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/162859-500-auto?width=500&height=auto&aspect=true'),
(41, '99.90', 'Como Teclado', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166502-500-auto?width=500&height=auto&aspect=true'),
(42, '9.90', 'Kit de limpieza', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/160373-500-auto?width=500&height=auto&aspect=true'),
(43, '15.720', 'PC LEGA REA Intel I5', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://highpro.com.mx/img/p/1/0/6/2/1/10621-home_default.jpg'),
(44, '33,447,00', 'LUGA URANO AMD R5', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, ''),
(45, '', '', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://highpro.com.mx/img/p/1/0/0/3/4/10034-home_default.jpg'),
(46, '1,830,00', 'PC LEGA ARTEMIS Intel I3', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://highpro.com.mx/img/p/1/0/3/2/8/10328-home_default.jpg'),
(47, '69.90', 'teclado inalambrico', 'computo', 'Teclado inalámbrico Negro con Mouse', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166455-500-auto?width=500&height=auto&aspect=true'),
(48, '39.90', 'mouse inalambrico silencioso', 'computo', 'Teclado inalámbrico Negro con Mouse', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166589-500-auto?width=500&height=auto&aspect=true'),
(49, '59.90', 'Cooler ', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/162859-500-auto?width=500&height=auto&aspect=true'),
(50, '99.90', 'Como Teclado', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166502-500-auto?width=500&height=auto&aspect=true'),
(51, '9.90', 'Kit de limpieza', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/160373-500-auto?width=500&height=auto&aspect=true'),
(52, '15.720', 'PC LEGA REA Intel I5', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://highpro.com.mx/img/p/1/0/6/2/1/10621-home_default.jpg'),
(53, '33,447,00', 'LUGA URANO AMD R5', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, ''),
(54, '', '', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://highpro.com.mx/img/p/1/0/0/3/4/10034-home_default.jpg'),
(55, '1,830,00', 'PC LEGA ARTEMIS Intel I3', 'computo', 'Combo Teclado y Mouse Inalámbrico MK220 2,4 GHz con Receptor USB Unifying Batería de 24 Meses PC/Portátil Disposición QWERTY Español Negro', 1, 'https://highpro.com.mx/img/p/1/0/3/2/8/10328-home_default.jpg'),
(65, '129', 'Mi Band 4', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/158464-500-auto?width=500&height=auto&aspect=true'),
(66, '249', 'Smartwatch Amazfit', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/158454-500-auto?width=500&height=auto&aspect=true'),
(67, '149', 'ROADTRIP', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/158382-500-auto?width=500&height=auto&aspect=true'),
(68, '1000', 'SCOOTER', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166329-500-auto?width=500&height=auto&aspect=true'),
(69, '1899', 'RAZOR', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166113-500-auto?width=500&height=auto&aspect=true'),
(70, '2099', 'XIAOMI M3365', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166327-500-auto?width=500&height=auto&aspect=true'),
(71, '1599', 'XIAOMI', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166287-500-auto?width=500&height=auto&aspect=true'),
(72, '899.90', 'SILLA GAMING GAS LIFT', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167212-500-auto?width=500&height=auto&aspect=true'),
(73, '799', 'AKRACING', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167266-500-auto?width=500&height=auto&aspect=true'),
(74, '129', 'Mi Band 4', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/158464-500-auto?width=500&height=auto&aspect=true'),
(75, '249', 'Smartwatch Amazfit', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/158454-500-auto?width=500&height=auto&aspect=true'),
(76, '149', 'ROADTRIP', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/158382-500-auto?width=500&height=auto&aspect=true'),
(77, '1000', 'SCOOTER', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166329-500-auto?width=500&height=auto&aspect=true'),
(78, '1899', 'RAZOR', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166113-500-auto?width=500&height=auto&aspect=true'),
(79, '2099', 'XIAOMI M3365', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166327-500-auto?width=500&height=auto&aspect=true'),
(80, '1599', 'XIAOMI', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/166287-500-auto?width=500&height=auto&aspect=true'),
(81, '899.90', 'SILLA GAMING GAS LIFT', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167212-500-auto?width=500&height=auto&aspect=true'),
(82, '799', 'AKRACING', 'electrohogar', 'Mi Band 4, Pantalla táctil 0.95\" a color AMOLED, Monitorea la frecuencia cardiaca y el sueño, 6 modos de entrenamiento, resistente al agua', 1, 'https://coolboxpe.vtexassets.com/arquivos/ids/167266-500-auto?width=500&height=auto&aspect=true');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`id_admin`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
