-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-09-2024 a las 21:07:18
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
-- Base de datos: `formulario_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `terminos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `contraseña`, `pais`, `genero`, `terminos`) VALUES
(1, 'Carlos Joaquín', 'Fuentes Mazariegos', 'joaquinmas5047@gmail.com', '$2y$10$9L2POStVwJGF8gy0zYcmd.8tUZEB/6xjlODaAlmTgVhjOLVSzDTfO', 'Guatemala', 'Masculino', 1),
(2, 'linda rosa', 'cifuentes rocael', 'lindrosa@exemple.com', '$2y$10$vvDS39uKyKnruUwvTSgxnOOsIGZrkKISBIweNqtpNA1Da1OazcTmS', 'México', 'Masculino', 1),
(3, 'jose carlos', 'martines guzman', 'jscarl@gmail.com', '$2y$10$RE7wSULU5znGqh6S9xdfQ.aLozdTAFomVNLLulHzDfvMKEOB5AJCe', 'México', 'Masculino', 1),
(4, 'john wicker', 'spartan han', 'jhwisparhan@exemple.com', '$2y$10$lFIcUIEf/Npc//.5vMfCHeZ24pz2PyP9rJ2fKU/GZjBxPf2h0BwV6', 'El Salvador', 'Masculino', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
