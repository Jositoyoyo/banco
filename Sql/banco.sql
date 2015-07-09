-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-07-2015 a las 17:13:39
-- Versión del servidor: 5.5.43-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE IF NOT EXISTS `cuenta` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` int(11) NOT NULL COMMENT '0=ingreso, 1=transferencia, 2=pago, 3=recibo, 4=retirar',
  `importe` float NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `detalles` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL COMMENT '0=pendiente, 1=cancelado, 2=aprobado, 3=retenido',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`ID`, `userId`, `fecha`, `hora`, `tipo`, `importe`, `concepto`, `detalles`, `estado`) VALUES
(1, 1, '2015-07-08', '23:00:00', 0, 12.15, 'Ingreso para telefono', '', 2),
(10, 1, '2015-06-03', '14:00:54', 0, 100, 'Recibo telefono', '', 2),
(11, 1, '2015-06-03', '14:00:54', 0, 100, 'Recibo telefono', '', 2),
(12, 1, '2015-06-03', '14:58:07', 0, 1200, 'Para pago', 'Guardar dinero para mas tarde', 2),
(13, 1, '2015-06-03', '15:07:55', 0, 3400, 'Taxi', '', 2),
(17, 1, '2015-06-03', '15:18:25', 0, 0, '', '', 2),
(18, 1, '2015-06-03', '15:21:06', 0, 0, '', '', 2),
(19, 1, '2015-06-03', '15:21:16', 0, 0, '', '', 2),
(20, 1, '2015-06-03', '15:21:24', 0, 0, '', '', 2),
(21, 1, '2015-06-03', '15:21:24', 0, 0, '', '', 2),
(22, 1, '2015-06-03', '15:21:24', 0, 0, '', '', 2),
(23, 1, '2015-06-03', '15:24:54', 0, 100, 'TEst', '', 2),
(24, 1, '2015-06-03', '15:33:04', 0, 1300, 'Recibo telefono', '', 2),
(25, 1, '2015-06-03', '15:43:15', 0, 0, '', '', 2),
(26, 1, '2015-06-03', '15:43:15', 0, 0, '', '', 2),
(27, 1, '2015-06-03', '15:45:25', 0, 0, '', '', 2),
(28, 1, '2015-06-03', '15:45:30', 0, 0, '', '', 2),
(29, 1, '2015-06-03', '15:45:59', 0, 0, '', '', 2),
(30, 1, '2015-06-03', '15:45:59', 0, 0, '', '', 2),
(31, 1, '2015-06-03', '15:50:52', 0, 0, '', '', 2),
(32, 1, '2015-06-03', '15:51:43', 0, 0, '', '', 2),
(33, 1, '2015-06-03', '15:53:14', 0, 0, '', '', 2),
(34, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(35, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(36, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(37, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(38, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(39, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(40, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(41, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(42, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(43, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(44, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(45, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(46, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(47, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(48, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(49, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2),
(50, 1, '2015-06-04', '10:51:42', 0, 0, '', '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo`
--

CREATE TABLE IF NOT EXISTS `recibo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `detalles` varchar(255) NOT NULL,
  `emisor` varchar(255) NOT NULL,
  `importe` float NOT NULL,
  `estado` int(11) NOT NULL COMMENT '0=pendiente, 1=cancelado, 2=aprobado, 3=retenido, 4=devuelto',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `recibo`
--

INSERT INTO `recibo` (`ID`, `userId`, `fecha`, `hora`, `concepto`, `detalles`, `emisor`, `importe`, `estado`) VALUES
(1, 1, '2015-07-07', '08:00:00', 'Factura Junio', '', 'Telefonica España', 12.99, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `PassMD5` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `nombre`, `PassMD5`) VALUES
(1, 'jose', 'jositoyoyo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
