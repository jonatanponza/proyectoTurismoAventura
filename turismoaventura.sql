-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-03-2023 a las 14:38:49
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turismoaventura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Jonatan', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'MariaLaura', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

DROP TABLE IF EXISTS `viajes`;
CREATE TABLE IF NOT EXISTS `viajes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `precio` int NOT NULL,
  `img_id` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id`, `titulo`, `cuerpo`, `fecha`, `precio`, `img_id`) VALUES
(1, 'Ciclo turismo', 'Increíble experiencia en bici recorriendo la reserva de Otamendi en la provincia de Buenos Aires.', '12/06/2023', 65000, 'gsqfwrhiphrsm1qnie0q'),
(14, 'Escalada', 'Fin de semana de escalada en las sierras bonaerenses. Se incluye alojamiento y comidas.', '22/04/2023', 75000, 'ytazsinqxb2b37efruge'),
(13, 'Navegar en kayak', 'Un día completo recorriendo los brazos del delta del Paraná.', '04/04/2023', 56000, 'zfok1rr8h31kguvwxddd'),
(15, 'Trekking', 'Dos días recorriendo las pintorescas sierras de Buenos Aires. Pernocte en Refugio.', '08/05/2023', 48000, 'on89mytfckmqmm7pdllp'),
(16, 'Vuelo en globo', 'Un día de pura aventura. Un vuelo de varias horas para contemplar una vista poco conocida del paisaje de la provincia.', '16/04/2023', 65000, 'dpfini7shl7fvfukwvaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes_prueba`
--

DROP TABLE IF EXISTS `viajes_prueba`;
CREATE TABLE IF NOT EXISTS `viajes_prueba` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `precio` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viajes_prueba`
--

INSERT INTO `viajes_prueba` (`id`, `titulo`, `cuerpo`, `fecha`, `precio`) VALUES
(1, 'Viaje de prueba1', 'Descripción prueba 1', '12/06/2023', 150000),
(2, 'Viaje de prueba2', 'Descripción prueba 2', '12/06/2023', 150000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
