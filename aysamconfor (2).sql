-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2023 a las 19:44:39
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aysamconfor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `departamento` varchar(40) NOT NULL,
  `conformidad` varchar(30) NOT NULL,
  `comentario` varchar(400) DEFAULT NULL,
  `fecha_encuesta` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `nombre`, `apellido`, `correo`, `departamento`, `conformidad`, `comentario`, `fecha_encuesta`) VALUES
(55, 'Urbano', 'Martinez', 'umartinez@aysam.com.ar', 'ESTABLECIMIENTO POTABILIZADOR LUJAN II', 'Buena', 'Excelente predisposición y desarrollo trabajo objetivo para brindar solución a problemas surgentes en el campo.', '2023-01-20 18:47:59'),
(54, 'Victor', 'Lucero', 'vlucero@aysam.com.ar', 'Casa Central', 'Buena', 'Rápida respuesta al  inconveniente ( la PC  iniciaba un ciclo de invernación y esto corta las conexiones a la base de datos) ', '2023-01-20 13:28:28'),
(53, 'Laura', 'DiPlacido', 'ldiplacido@aysam.com.ar', 'Casa Central', 'Excelente', 'Muy agradecida, la atención de los chicos es rápida, excelente y muy cordial, cada vez que los necesito. ', '2023-01-20 18:48:28'),
(49, 'Pablo', 'Baquero', 'pbaquero@aysam.com.ar', 'OFICINA SAN RAFAEL', 'Excelente', '', '2023-01-20 18:48:35'),
(48, 'Erica', 'Zanni', 'ezanni@aysam.com.ar', 'Casa Central', 'Excelente', 'excelente Atencion y solución, muchas gracias ', '2023-01-20 18:48:42'),
(47, 'emiliano', 'escudero', 'eescudero@aysam.com.ar', 'ALTO GODOY', 'Excelente', 'excelentes los chicos muy predispuestos ', '2023-01-20 18:48:45'),
(59, 'ERIK', 'NEMANIC', 'enemanic@aysam.com.ar', 'Casa Central', 'Excelente', 'Muy atentos los chicos en todo momento', '2023-01-23 12:14:24'),
(58, 'Mayra', 'Ponce', 'mponce@aysam.com.ar', 'Casa Central', 'Excelente', '-', '2023-01-23 11:48:53'),
(60, 'JORGE', 'VALDIVIESO', 'jvaldivieso@aysam.com.ar', 'OFICINA COMERCIAL LAS HERAS', 'Excelente', 'Trabajaron desde Central con la PC 355 hasta solucionar el inconveniente, muy satisfactorio', '2023-01-24 17:16:44'),
(61, 'Daniela', 'Santana', 'dsantana@aysam.com.ar', 'Casa Central', 'Excelente', '', '2023-01-24 17:58:11'),
(63, 'Luis', 'Dominguez', 'ldominguez@aysam.com.ar', 'Casa Central', 'Excelente', 'Siempre tienen una solución a los problemas del usuario', '2023-01-24 17:59:38'),
(65, 'Carina', 'Silva', 'csilva@aysam.com.ar', 'Casa Central', 'Excelente', 'Lo mejor es la buena predisposición de los chicos para resolver cuanto antes nuestros pedidos.', '2023-01-25 11:44:42'),
(66, 'Julieta', 'Ramirez', 'jramirez@aysam.com.ar', 'OFICINA SAN MARTIN', 'Excelente', 'Muchas Gracias por solucionarme el problema :)', '2023-01-25 16:15:32'),
(67, 'GONZALO', 'FLORES', 'gflores@aysam.com.ar', 'Casa Central', 'Excelente', 'Los chicos que nos instalaron la impresora en nuestra oficina SAC, pusieron todo a punto con mucha eficiencia y gran amabilidad.\r\nEstamos muy agradecidos.\r\nMuchas gracias también Pablo por su excelente gestión.\r\nSaludos\r\n', '2023-01-25 16:34:27'),
(68, 'Braulio', 'Malitto', 'bmalito@aysam.com.ar', 'Casa Central', 'Excelente', '', '2023-01-25 18:27:35'),
(69, 'Walter', 'Alvarez', 'walvarez@aysam.com', 'ESTABLECIMIENTO POTABILIZADOR BENEGAS', 'Excelente', 'Francisco me ayudo con mis carpetas del correo. Muy agradecido por su ayuda y dedicación en resolver mi problema. Excelente trabajo. ', '2023-01-26 15:22:50'),
(70, 'Larissa', 'Covis', 'lcovis@aysam.com.ar', 'CASA CENTRAL', 'Buena', 'Seria bueno que ponga calificación \"muy buena\". \r\nMuy buena atención de los chicos. \r\n', '2023-01-27 16:13:32'),
(71, 'valeria', 'allende', 'vallende@aysam.com.ar', 'CASA CENTRAL', 'Excelente', '.', '2023-01-27 17:57:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
