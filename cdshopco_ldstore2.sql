-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2019 a las 16:42:18
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cdshopco_ldstore2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`) VALUES
(1, 'CD', 'Descripción de esta categoría...'),
(2, 'DVD', 'Descripción de esta categoría...'),
(3, 'BLU-RAY', 'Descripción de esta categoría...'),
(4, 'VINIL', 'Descripción de esta categoría...');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` text,
  `correo` varchar(45) DEFAULT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `direccion`, `correo`, `usuario`, `password`) VALUES
(8, 'admin1', 'admin1', 'admin1', 'admin1@gmail.com', 'admin1', 'j'),
(9, 'Martin', 'Campos', 'aguascalientes', 'admin1@gmail.com', 'Martin', '357');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `cantidad` smallint(6) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `Pedidos_id` int(11) NOT NULL,
  `Productos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `cantidad`, `precio`, `Pedidos_id`, `Productos_id`) VALUES
(9, 2, 825, 9, 8),
(10, 2, 978, 9, 9),
(11, 1, 785, 10, 11),
(15, 1, 1125, 14, 4),
(20, 3, 750, 19, 6),
(21, 1, 825, 20, 8),
(23, 4, 978, 22, 9),
(24, 3, 978, 23, 9),
(26, 1, 110, 25, 7),
(30, 3, 120, 29, 17),
(32, 3, 1000, 29, 8),
(33, 1, 250, 30, 21),
(36, 1, 150, 31, 4),
(37, 1, 150, 32, 9),
(39, 2, 120, 34, 13),
(42, 1, 150, 37, 4),
(55, 1, 300, 50, 29),
(56, 1, 160, 51, 39),
(57, 1, 150, 51, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_pago` tinyint(4) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `comentario` text,
  `Clientes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha`, `tipo_pago`, `total`, `comentario`, `Clientes_id`) VALUES
(9, '2013-06-10', 1, 3606, '', 3),
(10, '2013-06-10', 1, 785, '', 3),
(11, '2013-06-10', 1, 875, '', 3),
(12, '2013-06-10', 1, 1250, '', 3),
(13, '2013-06-10', 1, 977, '', 3),
(14, '2013-06-10', 3, 1125, '', 1),
(15, '2013-06-11', 1, 1250, '', 1),
(16, '2013-06-11', 1, 875, '', 1),
(17, '2013-06-11', 1, 1954, '', 1),
(18, '2013-06-11', 1, 1750, '', 1),
(19, '2013-06-11', 1, 2250, '', 1),
(20, '2013-06-11', 1, 825, '', 1),
(21, '2013-06-11', 1, 875, '', 1),
(22, '2013-06-14', 1, 3912, '', 1),
(23, '2013-06-24', 3, 2934, '', 4),
(24, '2017-11-08', 1, 120, '', 5),
(25, '2017-11-08', 3, 110, '', 5),
(26, '2017-11-08', 1, 120, '', 5),
(27, '2017-11-08', 1, 120, '', 5),
(28, '2017-11-08', 1, 150, '', 5),
(29, '2017-11-09', 2, 3510, '', 6),
(30, '2017-11-09', 1, 250, '', 6),
(31, '2017-11-09', 1, 420, '', 6),
(32, '2017-11-09', 1, 150, '', 6),
(33, '2017-11-09', 1, 150, 'lkjh', 6),
(34, '2017-11-09', 1, 240, '', 5),
(35, '2017-11-09', 1, 120, '', 5),
(36, '2017-11-09', 1, 150, '', 5),
(37, '2017-11-09', 1, 150, '', 5),
(38, '2017-11-09', 1, 120, '', 5),
(39, '2017-11-09', 1, 120, '', 5),
(40, '2017-11-09', 1, 120, '', 5),
(41, '2017-11-09', 1, 120, '', 5),
(42, '2017-11-09', 1, 150, 'ñlkjh', 5),
(43, '2017-11-09', 1, 120, '', 5),
(44, '2017-11-09', 1, 120, '', 5),
(45, '2017-11-09', 1, 120, '', 5),
(46, '2017-11-09', 1, 120, '', 5),
(47, '2017-11-09', 1, 120, '', 5),
(48, '2017-11-09', 1, 120, '', 5),
(49, '2017-11-09', 1, 120, '', 5),
(50, '2019-03-04', 1, 300, '', 9),
(51, '2019-03-08', 2, 310, '', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` text,
  `precio` double DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `Categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `Categorias_id`) VALUES
(4, 'A year without rain', 'Álbum 2, Selena Gomez', 150, '04.png', 1),
(6, 'Raphael', 'Álbum Musical', 100, '05.png', 4),
(7, 'Frozen', 'Película Infantil ', 110, '06.png', 2),
(8, 'Harry Potter collection', 'Películas de Ciencia Ficción ', 1000, '07.png', 3),
(9, 'Elvis Presley', 'Álbum Musical', 150, '08.png', 4),
(10, 'Titatic', 'Película Romantica', 150, '09.png', 2),
(11, 'Toy Story 1', 'Película Infantil', 120, '10.png', 3),
(12, 'Una rosa blu', 'Álbum Musical', 110, '11.png', 1),
(13, 'DEMI', 'Álbum 5, Demi Lovato', 120, '13.png', 1),
(14, 'Guardianes de la Galaxia', 'Película de Superheroes', 150, '14.png', 2),
(15, 'Games of Thrones', 'Serie de Ciencia Ficción ', 850, '15.png', 3),
(16, 'Sabrina la Bruja Adolescente Collection', 'Serie Completa de Ciencia Ficción', 1000, '16.png', 2),
(17, 'Revival', 'Álbum 6, Selena Gomez', 120, '17.png', 1),
(18, '1989', 'Álbum 5, Taylor Swift', 120, '18.png', 1),
(19, 'Reputation', 'Álbum 6, Taylor Swift', 150, '19.png', 1),
(20, 'Lust For Life', 'Álbum 5, Lana Del Rey', 150, '20.png', 1),
(21, 'Batman V Superman', 'Película de Superheroes', 250, '12.png', 3),
(22, 'Cry Baby ', 'Álbum Debut, Melanie Martinez', 150, '21.png', 4),
(26, 'Origin of Symmetry ', 'Segundo Álbum, Muse', 210, '22.png', 4),
(27, 'Divide', 'Tercer Álbum, Ed Sheeran', 120, '23.png', 4),
(28, 'Master of Puppets ', 'Tercer Álbum, Metallica', 250, '24.png', 4),
(29, 'Abbey Road ', 'Undécimo Álbum, The Beatles', 300, '25.png', 4),
(30, 'Back to Black ', 'Segundo Álbum, AMy Winehouse', 150, '26.png', 4),
(31, 'American Idiot', 'Álbum, Green Day', 170, '27.png', 1),
(32, 'Killers', 'Álbum, Iron Maiden', 140, '28.png', 1),
(35, 'Dangerous Woman', 'Álbum, Ariana Grande', 120, '29.png', 1),
(38, 'Here We Go Again', 'Álbum, Demi Lovato', 130, '30.png', 1),
(39, 'Bi-on-ic', 'Álbum, Cristina Aguilera', 160, '31.png', 1),
(40, '21', 'Álbum, Adele', 120, '32.png', 1),
(43, 'The Fall', 'Álbum, Imagine Dragons', 140, '33.png', 1),
(44, 'Riot!', 'Álbum, Paramore', 110, '34.png', 1),
(47, 'Prism', 'Álbum, Katy Perry', 140, '35.png', 1),
(50, 'Breakout', 'Álbum, Miley Cyrus', 120, '36.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas_sugerencias`
--

CREATE TABLE `quejas_sugerencias` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `quejas_sugerencias`
--

INSERT INTO `quejas_sugerencias` (`id`, `usuario`, `apellidos`, `correo`, `titulo`, `descripcion`) VALUES
(9, 'Martin', 'Campos', 'admin1@gmail.com', 'Buenos precios', 'Solo hace falta dar ofertas'),
(16, 'admin1', 'admin1', 'admin1@gmail.com', 'Malos precios', ' Muchos bugs'),
(17, 'Martin', 'Campos', 'admin1@gmail.com', 'malos precios', ' myt caros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `nivel` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalle_pedidos_Pedidos1` (`Pedidos_id`),
  ADD KEY `fk_detalle_pedidos_Productos1` (`Productos_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Pedidos_Clientes1` (`Clientes_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Productos_Categorias` (`Categorias_id`);

--
-- Indices de la tabla `quejas_sugerencias`
--
ALTER TABLE `quejas_sugerencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `quejas_sugerencias`
--
ALTER TABLE `quejas_sugerencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `fk_detalle_pedidos_Pedidos1` FOREIGN KEY (`Pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_pedidos_Productos1` FOREIGN KEY (`Productos_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
