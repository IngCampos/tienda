-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2019 a las 00:14:40
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cdshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_atrib`
--

CREATE TABLE `album_atrib` (
  `ID_ALBUM` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `ID_ARTISTA` int(11) NOT NULL,
  `ID_COMPOSITOR` int(11) NOT NULL,
  `ID_GENERO` int(11) NOT NULL,
  `ANIO_LANZAMIENTO` year(4) NOT NULL,
  `ID_ESTILO` int(11) NOT NULL,
  `ID_PAIS` int(11) NOT NULL,
  `ID_DISQUERA` int(11) NOT NULL,
  `ID_FORMATO` int(11) NOT NULL,
  `ID_PRODUCTOR` int(11) NOT NULL,
  `ESTAD_PROD` int(11) NOT NULL,
  `CARATULA` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `busquedas`
--

CREATE TABLE `busquedas` (
  `ID_BUSQUEDA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `TERMINO` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_atrib`
--

CREATE TABLE `cancion_atrib` (
  `ID_CANCION` int(11) NOT NULL,
  `ID_ARTISTA` int(11) NOT NULL,
  `ID_COMPOSITOR` int(11) NOT NULL,
  `ID_GENERO` int(11) NOT NULL,
  `ID_ALBUM` int(11) NOT NULL,
  `DURACION` time NOT NULL,
  `NO_CANCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casa_productora_atrib`
--

CREATE TABLE `casa_productora_atrib` (
  `ID_CASA_PRODUCTORA` int(11) NOT NULL,
  `CASA_PRODUCTORA` varchar(45) NOT NULL,
  `ID_PAIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datagen`
--

CREATE TABLE `datagen` (
  `ID_DSP` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `USER_AGENT` text NOT NULL,
  `OS` varchar(45) NOT NULL,
  `OS_VER` varchar(45) NOT NULL,
  `BROWSER` varchar(45) NOT NULL,
  `BROWSER_VER` varchar(45) NOT NULL,
  `COLOR_DEPTH` int(20) NOT NULL,
  `RES_W` int(11) NOT NULL,
  `RES_H` int(11) NOT NULL,
  `TIMEZONE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LANG` varchar(25) NOT NULL,
  `MOB_DESK` varchar(15) NOT NULL,
  `TOUCH_CAP` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disquera_atrib`
--

CREATE TABLE `disquera_atrib` (
  `ID_DISQUERA` int(11) NOT NULL,
  `DISQUERA` varchar(45) NOT NULL,
  `ID_PAIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estad_paginas`
--

CREATE TABLE `estad_paginas` (
  `NOMBRE_PAGINA` varchar(70) NOT NULL,
  `ESTAD_PAGINA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estilo`
--

CREATE TABLE `estilo` (
  `ID_ESTILO` int(11) NOT NULL,
  `ESTILO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `ID_FORMATO` int(11) NOT NULL,
  `FORMATO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formato`
--

INSERT INTO `formato` (`ID_FORMATO`, `FORMATO`) VALUES
(1, 'CD'),
(2, 'DVD'),
(3, 'DVD 3D'),
(4, 'Blu Ray'),
(5, 'Blu Ray 3D'),
(6, 'Cassette'),
(7, 'Disco Vinyl 30 cm'),
(8, 'Disco Vinyl 25 cm'),
(9, 'Disco Vinyl 17.5 cm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `ID_GENERO` int(11) NOT NULL,
  `GENERO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `ID_PAIS` int(11) NOT NULL,
  `PAIS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`ID_PAIS`, `PAIS`) VALUES
(1, 'México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_atrib`
--

CREATE TABLE `pelicula_atrib` (
  `ID_PELICULA` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `ID_ACTOR1` int(11) NOT NULL,
  `ID_ACTOR2` int(11) NOT NULL,
  `REPARTO` text NOT NULL,
  `SINOPSIS` text NOT NULL,
  `ID_GENERO` int(11) NOT NULL,
  `ANIO_LANZAMIENTO` year(4) NOT NULL,
  `ID_ESTILO` int(11) NOT NULL,
  `ID_PAIS` int(11) NOT NULL,
  `ID_CASA_PRODUCTORA` int(11) NOT NULL,
  `ID_FORMATO` int(11) NOT NULL,
  `ID_PRODUCTOR` int(11) NOT NULL,
  `CARATULA_PELICULA` varchar(70) NOT NULL,
  `ESTAD_PELICULA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_atrib`
--

CREATE TABLE `personas_atrib` (
  `ID_PERSONA` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `APELLIDO` varchar(45) NOT NULL,
  `FECHA_NAC` date NOT NULL,
  `ID_PAIS` int(11) NOT NULL,
  `BIO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_roles_personas`
--

CREATE TABLE `relacion_roles_personas` (
  `ID_RELACION` int(11) NOT NULL,
  `ID_PERSONA` int(11) NOT NULL,
  `ID_ROL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ID_ROL` int(11) NOT NULL,
  `ROL` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_atrib`
--

CREATE TABLE `usuarios_atrib` (
  `ID_USUARIO` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `APELLIDO1` varchar(45) NOT NULL,
  `APELLIDO2` varchar(45) DEFAULT NULL,
  `FECHA_NAC` date NOT NULL,
  `CALLE` varchar(45) NOT NULL,
  `NUM_EXT` smallint(6) NOT NULL,
  `NUM_INT` smallint(6) NOT NULL,
  `FRACC_COL` varchar(45) NOT NULL,
  `POBLACION` varchar(45) NOT NULL,
  `ESTADO` varchar(45) NOT NULL,
  `ID_PAIS` int(11) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `PASSWORD` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `val_album`
--

CREATE TABLE `val_album` (
  `ID_VAL_ALBUM` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ALBUM` int(11) NOT NULL,
  `VALORACION_ALBUM` smallint(6) NOT NULL,
  `COMENTARIOS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `val_peliculas`
--

CREATE TABLE `val_peliculas` (
  `ID_VAL_PELICULA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_PELICULA` int(11) NOT NULL,
  `VALORACION_PELICULA` smallint(6) NOT NULL,
  `COMENTARIOS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album_atrib`
--
ALTER TABLE `album_atrib`
  ADD PRIMARY KEY (`ID_ALBUM`),
  ADD KEY `ID_ARTISTA` (`ID_ARTISTA`,`ID_COMPOSITOR`,`ID_GENERO`,`ID_ESTILO`,`ID_PAIS`,`ID_DISQUERA`,`ID_FORMATO`,`ID_PRODUCTOR`),
  ADD KEY `ID_ALBUM` (`ID_ALBUM`),
  ADD KEY `ID_PAIS` (`ID_PAIS`),
  ADD KEY `ID_DISQUERA` (`ID_DISQUERA`),
  ADD KEY `ID_PRODUCTOR` (`ID_PRODUCTOR`),
  ADD KEY `ID_COMPOSITOR` (`ID_COMPOSITOR`),
  ADD KEY `ID_GENERO` (`ID_GENERO`),
  ADD KEY `ID_ESTILO` (`ID_ESTILO`),
  ADD KEY `ID_FORMATO` (`ID_FORMATO`);

--
-- Indices de la tabla `busquedas`
--
ALTER TABLE `busquedas`
  ADD PRIMARY KEY (`ID_BUSQUEDA`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `cancion_atrib`
--
ALTER TABLE `cancion_atrib`
  ADD PRIMARY KEY (`ID_CANCION`),
  ADD KEY `ID_CANCION` (`ID_CANCION`,`ID_ARTISTA`,`ID_COMPOSITOR`,`ID_GENERO`,`ID_ALBUM`),
  ADD KEY `ID_GENERO` (`ID_GENERO`),
  ADD KEY `ID_ALBUM` (`ID_ALBUM`),
  ADD KEY `ID_ARTISTA` (`ID_ARTISTA`),
  ADD KEY `ID_COMPOSITOR` (`ID_COMPOSITOR`);

--
-- Indices de la tabla `casa_productora_atrib`
--
ALTER TABLE `casa_productora_atrib`
  ADD PRIMARY KEY (`ID_CASA_PRODUCTORA`),
  ADD KEY `ID_CASA_PRODUCTORA` (`ID_CASA_PRODUCTORA`,`ID_PAIS`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `datagen`
--
ALTER TABLE `datagen`
  ADD PRIMARY KEY (`ID_DSP`),
  ADD KEY `ID_USER` (`ID_USUARIO`),
  ADD KEY `ID_DSP` (`ID_DSP`);

--
-- Indices de la tabla `disquera_atrib`
--
ALTER TABLE `disquera_atrib`
  ADD PRIMARY KEY (`ID_DISQUERA`),
  ADD KEY `ID_DISQUERA` (`ID_DISQUERA`,`ID_PAIS`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `estilo`
--
ALTER TABLE `estilo`
  ADD PRIMARY KEY (`ID_ESTILO`),
  ADD KEY `ID_ESTILO` (`ID_ESTILO`);

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`ID_FORMATO`),
  ADD KEY `ID_FORMATO` (`ID_FORMATO`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_GENERO`),
  ADD KEY `ID_GENERO` (`ID_GENERO`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`ID_PAIS`),
  ADD UNIQUE KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `pelicula_atrib`
--
ALTER TABLE `pelicula_atrib`
  ADD PRIMARY KEY (`ID_PELICULA`),
  ADD UNIQUE KEY `ID_ESTILO` (`ID_ESTILO`),
  ADD UNIQUE KEY `ID_PAIS` (`ID_PAIS`),
  ADD KEY `ID_ACTOR1` (`ID_ACTOR1`),
  ADD KEY `ID_ACTOR2` (`ID_ACTOR2`),
  ADD KEY `ID_GENERO` (`ID_GENERO`),
  ADD KEY `ID_CASA_PRODUCTORA` (`ID_CASA_PRODUCTORA`),
  ADD KEY `ID_FORMATO` (`ID_FORMATO`),
  ADD KEY `ID_PRODUCTOR` (`ID_PRODUCTOR`);

--
-- Indices de la tabla `personas_atrib`
--
ALTER TABLE `personas_atrib`
  ADD PRIMARY KEY (`ID_PERSONA`),
  ADD KEY `ID_PERSONA` (`ID_PERSONA`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `relacion_roles_personas`
--
ALTER TABLE `relacion_roles_personas`
  ADD PRIMARY KEY (`ID_RELACION`),
  ADD KEY `ID_PERSONA` (`ID_PERSONA`),
  ADD KEY `ID_ROL` (`ID_ROL`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID_ROL`),
  ADD KEY `ID_ROL` (`ID_ROL`);

--
-- Indices de la tabla `usuarios_atrib`
--
ALTER TABLE `usuarios_atrib`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `val_album`
--
ALTER TABLE `val_album`
  ADD PRIMARY KEY (`ID_VAL_ALBUM`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_ALBUM` (`ID_ALBUM`);

--
-- Indices de la tabla `val_peliculas`
--
ALTER TABLE `val_peliculas`
  ADD PRIMARY KEY (`ID_VAL_PELICULA`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_PELICULA` (`ID_PELICULA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album_atrib`
--
ALTER TABLE `album_atrib`
  MODIFY `ID_ALBUM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cancion_atrib`
--
ALTER TABLE `cancion_atrib`
  MODIFY `ID_CANCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `casa_productora_atrib`
--
ALTER TABLE `casa_productora_atrib`
  MODIFY `ID_CASA_PRODUCTORA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datagen`
--
ALTER TABLE `datagen`
  MODIFY `ID_DSP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `disquera_atrib`
--
ALTER TABLE `disquera_atrib`
  MODIFY `ID_DISQUERA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estilo`
--
ALTER TABLE `estilo`
  MODIFY `ID_ESTILO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `ID_FORMATO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_GENERO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `ID_PAIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personas_atrib`
--
ALTER TABLE `personas_atrib`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `ID_ROL` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album_atrib`
--
ALTER TABLE `album_atrib`
  ADD CONSTRAINT `album_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`),
  ADD CONSTRAINT `album_atrib_ibfk_10` FOREIGN KEY (`ID_COMPOSITOR`) REFERENCES `personas_atrib` (`ID_PERSONA`),
  ADD CONSTRAINT `album_atrib_ibfk_11` FOREIGN KEY (`ID_PRODUCTOR`) REFERENCES `personas_atrib` (`ID_PERSONA`),
  ADD CONSTRAINT `album_atrib_ibfk_2` FOREIGN KEY (`ID_DISQUERA`) REFERENCES `disquera_atrib` (`ID_DISQUERA`),
  ADD CONSTRAINT `album_atrib_ibfk_6` FOREIGN KEY (`ID_GENERO`) REFERENCES `genero` (`ID_GENERO`),
  ADD CONSTRAINT `album_atrib_ibfk_7` FOREIGN KEY (`ID_ESTILO`) REFERENCES `estilo` (`ID_ESTILO`),
  ADD CONSTRAINT `album_atrib_ibfk_8` FOREIGN KEY (`ID_FORMATO`) REFERENCES `formato` (`ID_FORMATO`),
  ADD CONSTRAINT `album_atrib_ibfk_9` FOREIGN KEY (`ID_ARTISTA`) REFERENCES `personas_atrib` (`ID_PERSONA`);

--
-- Filtros para la tabla `busquedas`
--
ALTER TABLE `busquedas`
  ADD CONSTRAINT `busquedas_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios_atrib` (`ID_USUARIO`);

--
-- Filtros para la tabla `cancion_atrib`
--
ALTER TABLE `cancion_atrib`
  ADD CONSTRAINT `cancion_atrib_ibfk_2` FOREIGN KEY (`ID_GENERO`) REFERENCES `genero` (`ID_GENERO`),
  ADD CONSTRAINT `cancion_atrib_ibfk_4` FOREIGN KEY (`ID_ALBUM`) REFERENCES `album_atrib` (`ID_ALBUM`),
  ADD CONSTRAINT `cancion_atrib_ibfk_5` FOREIGN KEY (`ID_ARTISTA`) REFERENCES `personas_atrib` (`ID_PERSONA`),
  ADD CONSTRAINT `cancion_atrib_ibfk_6` FOREIGN KEY (`ID_COMPOSITOR`) REFERENCES `personas_atrib` (`ID_PERSONA`);

--
-- Filtros para la tabla `casa_productora_atrib`
--
ALTER TABLE `casa_productora_atrib`
  ADD CONSTRAINT `casa_productora_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `datagen`
--
ALTER TABLE `datagen`
  ADD CONSTRAINT `datagen_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios_atrib` (`ID_USUARIO`);

--
-- Filtros para la tabla `disquera_atrib`
--
ALTER TABLE `disquera_atrib`
  ADD CONSTRAINT `disquera_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `pelicula_atrib`
--
ALTER TABLE `pelicula_atrib`
  ADD CONSTRAINT `pelicula_atrib_ibfk_1` FOREIGN KEY (`ID_CASA_PRODUCTORA`) REFERENCES `casa_productora_atrib` (`ID_CASA_PRODUCTORA`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_2` FOREIGN KEY (`ID_FORMATO`) REFERENCES `formato` (`ID_FORMATO`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_3` FOREIGN KEY (`ID_ACTOR1`) REFERENCES `personas_atrib` (`ID_PERSONA`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_4` FOREIGN KEY (`ID_ACTOR2`) REFERENCES `personas_atrib` (`ID_PERSONA`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_5` FOREIGN KEY (`ID_PRODUCTOR`) REFERENCES `personas_atrib` (`ID_PERSONA`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_6` FOREIGN KEY (`ID_GENERO`) REFERENCES `genero` (`ID_GENERO`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_7` FOREIGN KEY (`ID_ESTILO`) REFERENCES `estilo` (`ID_ESTILO`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_8` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `personas_atrib`
--
ALTER TABLE `personas_atrib`
  ADD CONSTRAINT `personas_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `relacion_roles_personas`
--
ALTER TABLE `relacion_roles_personas`
  ADD CONSTRAINT `relacion_roles_personas_ibfk_2` FOREIGN KEY (`ID_ROL`) REFERENCES `roles` (`ID_ROL`),
  ADD CONSTRAINT `relacion_roles_personas_ibfk_3` FOREIGN KEY (`ID_PERSONA`) REFERENCES `personas_atrib` (`ID_PERSONA`);

--
-- Filtros para la tabla `usuarios_atrib`
--
ALTER TABLE `usuarios_atrib`
  ADD CONSTRAINT `usuarios_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `val_album`
--
ALTER TABLE `val_album`
  ADD CONSTRAINT `val_album_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios_atrib` (`ID_USUARIO`),
  ADD CONSTRAINT `val_album_ibfk_2` FOREIGN KEY (`ID_ALBUM`) REFERENCES `album_atrib` (`ID_ALBUM`);

--
-- Filtros para la tabla `val_peliculas`
--
ALTER TABLE `val_peliculas`
  ADD CONSTRAINT `val_peliculas_ibfk_1` FOREIGN KEY (`ID_PELICULA`) REFERENCES `pelicula_atrib` (`ID_PELICULA`),
  ADD CONSTRAINT `val_peliculas_ibfk_2` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios_atrib` (`ID_USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
