-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2019 a las 04:44:44
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
-- Base de datos: `cdshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor_atrib`
--

CREATE TABLE `actor_atrib` (
  `ID_ACTOR` int(11) NOT NULL,
  `NOMBRE_ACTOR` int(11) NOT NULL,
  `ID_PAIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `CARATULA` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_atrib`
--

CREATE TABLE `artista_atrib` (
  `ID_ARTISTA` int(11) NOT NULL,
  `NOMBRE_ARTISTA` varchar(45) NOT NULL,
  `ID_PAIS` int(11) NOT NULL
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
-- Estructura de tabla para la tabla `compositor_atrib`
--

CREATE TABLE `compositor_atrib` (
  `ID_COMPOSITOR` int(11) NOT NULL,
  `NOMBRE_COMPOSITOR` varchar(45) NOT NULL,
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
  `CARATULA_PELICULA` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productor_atrib`
--

CREATE TABLE `productor_atrib` (
  `ID_PRODUCTOR` int(11) NOT NULL,
  `NOMBRE_PRODUCTOR` varchar(45) NOT NULL,
  `ID_PAIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `token`
--

CREATE TABLE `token` (
  `ID_TOKEN` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `TOKEN` int(11) NOT NULL,
  `USED` tinyint(1) NOT NULL DEFAULT '0'
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor_atrib`
--
ALTER TABLE `actor_atrib`
  ADD PRIMARY KEY (`ID_ACTOR`),
  ADD KEY `ID_PAIS` (`ID_PAIS`),
  ADD KEY `ID_PAIS_2` (`ID_PAIS`),
  ADD KEY `ID_ACTOR` (`ID_ACTOR`);

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
-- Indices de la tabla `artista_atrib`
--
ALTER TABLE `artista_atrib`
  ADD PRIMARY KEY (`ID_ARTISTA`),
  ADD KEY `ID_ARTISTA` (`ID_ARTISTA`,`ID_PAIS`),
  ADD KEY `ID_ARTISTA_2` (`ID_ARTISTA`,`ID_PAIS`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `cancion_atrib`
--
ALTER TABLE `cancion_atrib`
  ADD PRIMARY KEY (`ID_CANCION`),
  ADD KEY `ID_CANCION` (`ID_CANCION`,`ID_ARTISTA`,`ID_COMPOSITOR`,`ID_GENERO`,`ID_ALBUM`),
  ADD KEY `ID_COMPOSITOR` (`ID_COMPOSITOR`),
  ADD KEY `ID_GENERO` (`ID_GENERO`),
  ADD KEY `ID_ARTISTA` (`ID_ARTISTA`),
  ADD KEY `ID_ALBUM` (`ID_ALBUM`);

--
-- Indices de la tabla `casa_productora_atrib`
--
ALTER TABLE `casa_productora_atrib`
  ADD PRIMARY KEY (`ID_CASA_PRODUCTORA`),
  ADD KEY `ID_CASA_PRODUCTORA` (`ID_CASA_PRODUCTORA`,`ID_PAIS`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `compositor_atrib`
--
ALTER TABLE `compositor_atrib`
  ADD PRIMARY KEY (`ID_COMPOSITOR`),
  ADD KEY `ID_COMPOSITOR` (`ID_COMPOSITOR`,`ID_PAIS`),
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
  ADD KEY `ID_ACTOR1` (`ID_ACTOR1`,`ID_ACTOR2`,`ID_GENERO`,`ID_ESTILO`,`ID_PAIS`,`ID_CASA_PRODUCTORA`,`ID_FORMATO`,`ID_PRODUCTOR`),
  ADD KEY `ID_PAIS` (`ID_PAIS`),
  ADD KEY `ID_PRODUCTOR` (`ID_PRODUCTOR`),
  ADD KEY `ID_ESTILO` (`ID_ESTILO`),
  ADD KEY `ID_ACTOR2` (`ID_ACTOR2`),
  ADD KEY `ID_GENERO` (`ID_GENERO`),
  ADD KEY `ID_CASA_PRODUCTORA` (`ID_CASA_PRODUCTORA`),
  ADD KEY `ID_FORMATO` (`ID_FORMATO`);

--
-- Indices de la tabla `productor_atrib`
--
ALTER TABLE `productor_atrib`
  ADD PRIMARY KEY (`ID_PRODUCTOR`),
  ADD KEY `ID_PRODUCTOR` (`ID_PRODUCTOR`,`ID_PAIS`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`ID_TOKEN`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indices de la tabla `usuarios_atrib`
--
ALTER TABLE `usuarios_atrib`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actor_atrib`
--
ALTER TABLE `actor_atrib`
  MODIFY `ID_ACTOR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `album_atrib`
--
ALTER TABLE `album_atrib`
  MODIFY `ID_ALBUM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artista_atrib`
--
ALTER TABLE `artista_atrib`
  MODIFY `ID_ARTISTA` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `compositor_atrib`
--
ALTER TABLE `compositor_atrib`
  MODIFY `ID_COMPOSITOR` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ID_FORMATO` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `productor_atrib`
--
ALTER TABLE `productor_atrib`
  MODIFY `ID_PRODUCTOR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `token`
--
ALTER TABLE `token`
  MODIFY `ID_TOKEN` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actor_atrib`
--
ALTER TABLE `actor_atrib`
  ADD CONSTRAINT `actor_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `album_atrib`
--
ALTER TABLE `album_atrib`
  ADD CONSTRAINT `album_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`),
  ADD CONSTRAINT `album_atrib_ibfk_2` FOREIGN KEY (`ID_DISQUERA`) REFERENCES `disquera_atrib` (`ID_DISQUERA`),
  ADD CONSTRAINT `album_atrib_ibfk_3` FOREIGN KEY (`ID_PRODUCTOR`) REFERENCES `productor_atrib` (`ID_PRODUCTOR`),
  ADD CONSTRAINT `album_atrib_ibfk_4` FOREIGN KEY (`ID_ARTISTA`) REFERENCES `artista_atrib` (`ID_ARTISTA`),
  ADD CONSTRAINT `album_atrib_ibfk_5` FOREIGN KEY (`ID_COMPOSITOR`) REFERENCES `compositor_atrib` (`ID_COMPOSITOR`),
  ADD CONSTRAINT `album_atrib_ibfk_6` FOREIGN KEY (`ID_GENERO`) REFERENCES `genero` (`ID_GENERO`),
  ADD CONSTRAINT `album_atrib_ibfk_7` FOREIGN KEY (`ID_ESTILO`) REFERENCES `estilo` (`ID_ESTILO`),
  ADD CONSTRAINT `album_atrib_ibfk_8` FOREIGN KEY (`ID_FORMATO`) REFERENCES `formato` (`ID_FORMATO`);

--
-- Filtros para la tabla `artista_atrib`
--
ALTER TABLE `artista_atrib`
  ADD CONSTRAINT `artista_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `cancion_atrib`
--
ALTER TABLE `cancion_atrib`
  ADD CONSTRAINT `cancion_atrib_ibfk_1` FOREIGN KEY (`ID_COMPOSITOR`) REFERENCES `compositor_atrib` (`ID_COMPOSITOR`),
  ADD CONSTRAINT `cancion_atrib_ibfk_2` FOREIGN KEY (`ID_GENERO`) REFERENCES `genero` (`ID_GENERO`),
  ADD CONSTRAINT `cancion_atrib_ibfk_3` FOREIGN KEY (`ID_ARTISTA`) REFERENCES `artista_atrib` (`ID_ARTISTA`),
  ADD CONSTRAINT `cancion_atrib_ibfk_4` FOREIGN KEY (`ID_ALBUM`) REFERENCES `album_atrib` (`ID_ALBUM`);

--
-- Filtros para la tabla `casa_productora_atrib`
--
ALTER TABLE `casa_productora_atrib`
  ADD CONSTRAINT `casa_productora_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `compositor_atrib`
--
ALTER TABLE `compositor_atrib`
  ADD CONSTRAINT `compositor_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

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
  ADD CONSTRAINT `pelicula_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_2` FOREIGN KEY (`ID_PRODUCTOR`) REFERENCES `productor_atrib` (`ID_PRODUCTOR`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_3` FOREIGN KEY (`ID_ESTILO`) REFERENCES `estilo` (`ID_ESTILO`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_4` FOREIGN KEY (`ID_ACTOR1`) REFERENCES `actor_atrib` (`ID_ACTOR`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_5` FOREIGN KEY (`ID_ACTOR2`) REFERENCES `actor_atrib` (`ID_ACTOR`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_6` FOREIGN KEY (`ID_GENERO`) REFERENCES `genero` (`ID_GENERO`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_7` FOREIGN KEY (`ID_CASA_PRODUCTORA`) REFERENCES `casa_productora_atrib` (`ID_CASA_PRODUCTORA`),
  ADD CONSTRAINT `pelicula_atrib_ibfk_8` FOREIGN KEY (`ID_FORMATO`) REFERENCES `formato` (`ID_FORMATO`);

--
-- Filtros para la tabla `productor_atrib`
--
ALTER TABLE `productor_atrib`
  ADD CONSTRAINT `productor_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);

--
-- Filtros para la tabla `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios_atrib` (`ID_USUARIO`);

--
-- Filtros para la tabla `usuarios_atrib`
--
ALTER TABLE `usuarios_atrib`
  ADD CONSTRAINT `usuarios_atrib_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID_PAIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
