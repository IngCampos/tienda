-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2019 a las 05:33:10
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
-- Base de datos: `cdshopco_ldstore3`
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
  `PRECIO` int(11) NOT NULL,
  `ESTAD_PROD` int(11) NOT NULL,
  `CARATULA` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `album_atrib`
--

INSERT INTO `album_atrib` (`ID_ALBUM`, `NOMBRE`, `ID_ARTISTA`, `ID_COMPOSITOR`, `ID_GENERO`, `ANIO_LANZAMIENTO`, `ID_ESTILO`, `ID_PAIS`, `ID_DISQUERA`, `ID_FORMATO`, `ID_PRODUCTOR`, `PRECIO`, `ESTAD_PROD`, `CARATULA`) VALUES
(1, 'Tell me you love me', 1, 1, 4, 2000, 1, 2, 1, 1, 1, 120, 0, '03.png'),
(2, 'A year without rain', 2, 2, 4, 2000, 1, 2, 1, 1, 1, 200, 0, '04.png'),
(3, 'Raphael', 3, 3, 4, 2000, 1, 2, 1, 7, 1, 590, 0, '05.png'),
(4, 'Elvis Presley', 4, 4, 8, 1956, 1, 2, 1, 7, 4, 2000, 0, '08.png'),
(5, 'Una rosa blu', 5, 5, 4, 2007, 1, 1, 2, 1, 5, 120, 0, '11.png'),
(6, 'DEMI', 1, 1, 4, 2013, 1, 2, 1, 1, 1, 130, 0, '13.png'),
(7, 'Revival', 2, 2, 4, 2015, 1, 2, 1, 1, 2, 120, 0, '17.png'),
(8, '1989', 6, 6, 4, 2014, 1, 2, 1, 1, 6, 120, 0, '18.png'),
(9, 'Reputation', 6, 6, 4, 2017, 1, 2, 1, 1, 6, 150, 0, '19.png'),
(10, 'Lust for life', 7, 7, 1, 2017, 1, 2, 1, 1, 7, 150, 0, '20.png'),
(11, 'Cry Baby', 12, 12, 4, 2015, 1, 2, 1, 1, 12, 100, 0, '21.png'),
(12, 'Origin of symmetry', 13, 13, 8, 2001, 1, 12, 1, 1, 13, 210, 0, '22.png'),
(13, 'Divide', 14, 14, 4, 2017, 1, 12, 1, 1, 14, 120, 0, '22.png'),
(14, 'Master of puppets', 15, 15, 8, 1986, 1, 2, 1, 1, 15, 250, 0, '24.png'),
(15, 'Abbey Road', 16, 16, 8, 1969, 1, 12, 1, 7, 16, 1200, 0, '25.png'),
(16, 'Back to black', 17, 17, 8, 2006, 1, 12, 1, 1, 17, 180, 0, '26.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `busquedas`
--

CREATE TABLE `busquedas` (
  `ID_BUSQUEDA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `TERMINO` varchar(120) NOT NULL,
  `FECHA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `busquedas`
--

INSERT INTO `busquedas` (`ID_BUSQUEDA`, `ID_USUARIO`, `TERMINO`, `FECHA`) VALUES
(1, 3, 'Katy Perry', '2019-05-14 02:10:06'),
(2, 1, 'Hakunah', '2019-05-14 02:10:06');

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

--
-- Volcado de datos para la tabla `casa_productora_atrib`
--

INSERT INTO `casa_productora_atrib` (`ID_CASA_PRODUCTORA`, `CASA_PRODUCTORA`, `ID_PAIS`) VALUES
(1, 'Sony Pictures', 1),
(2, 'Paramount Pictures', 1),
(3, 'Viacom International', 1),
(4, 'Happy Madison', 1),
(5, 'New Line Cinema', 2);

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
  `TOUCH_CAP` tinyint(1) NOT NULL,
  `DATE` datetime NOT NULL
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

--
-- Volcado de datos para la tabla `disquera_atrib`
--

INSERT INTO `disquera_atrib` (`ID_DISQUERA`, `DISQUERA`, `ID_PAIS`) VALUES
(1, 'Sony Records', 1),
(2, 'BMG', 1),
(3, 'Ocesa Seitrak', 1),
(4, 'Disa', 1),
(5, 'Musart', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `ID_ENTRADA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `ID_PROVEEDOR` int(11) NOT NULL,
  `COSTO_ENTRADA` int(11) NOT NULL,
  `ID_ALMACEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas_paginas`
--

CREATE TABLE `estadisticas_paginas` (
  `ID_VISITA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_PAGINA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estad_catalogo`
--

CREATE TABLE `estad_catalogo` (
  `ID_ESTAD` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `calificado` tinyint(1) NOT NULL,
  `puntuacion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estad_paginas`
--

CREATE TABLE `estad_paginas` (
  `ID_PAGINA` int(11) NOT NULL,
  `NOMBRE_PAGINA` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estad_paginas`
--

INSERT INTO `estad_paginas` (`ID_PAGINA`, `NOMBRE_PAGINA`) VALUES
(1, 'INICIO'),
(2, 'CONOCENOS'),
(3, 'CATALOGO'),
(4, 'CONTACTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estilo`
--

CREATE TABLE `estilo` (
  `ID_ESTILO` int(11) NOT NULL,
  `ESTILO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estilo`
--

INSERT INTO `estilo` (`ID_ESTILO`, `ESTILO`) VALUES
(1, 'Estudio'),
(2, 'Concierto en Vivo'),
(3, 'Concierto Editado'),
(4, 'Acapella'),
(5, 'Gonzo'),
(6, '3ra persona'),
(7, 'Primera persona'),
(8, 'Retro');

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

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`ID_GENERO`, `GENERO`) VALUES
(1, 'Culta'),
(2, 'Folklorica'),
(3, 'Popular Mexicano'),
(4, 'Pop'),
(5, 'Opera'),
(6, 'Regional Mexicano'),
(7, 'Instrumental'),
(8, 'Rock&Roll'),
(9, 'Metal'),
(10, 'Blues'),
(11, 'Trash metal'),
(12, 'Techno'),
(13, 'Terror'),
(14, 'Comedia'),
(15, 'Romantica'),
(16, 'Superheroes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `ID_ALMACEN` int(11) NOT NULL,
  `ID_ELEMENTO` int(11) NOT NULL,
  `ID_CATALOGO` int(11) NOT NULL,
  `EXISTENCIAS` int(11) NOT NULL,
  `COSTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `ID_METODO` int(11) NOT NULL,
  `NOMBRE_METODO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oxxo`
--

CREATE TABLE `oxxo` (
  `ID_REGISTROO` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `TOKEN_GEN` int(11) NOT NULL,
  `FECHA_GEN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FECHA_VEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MONTO` int(11) NOT NULL
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
(1, 'México'),
(2, 'Estados Unidos'),
(3, 'Guatemala'),
(4, 'Panamá'),
(5, 'Colombia'),
(6, 'Venezuela'),
(7, 'España'),
(8, 'Italia'),
(9, 'Francia'),
(10, 'Portugal'),
(11, 'Canada'),
(12, 'Inglaterra'),
(13, 'Alemania'),
(14, 'Brasil'),
(15, 'Argentina'),
(16, 'Australia'),
(17, 'Bolivia'),
(18, 'Austria'),
(19, 'Belgica'),
(20, 'Chile'),
(21, 'China'),
(22, 'Corea del sur'),
(23, 'Corea del norte'),
(24, 'Costa rica'),
(25, 'Cuba'),
(26, 'Croacia'),
(27, 'Ecuador'),
(28, 'El salvador'),
(29, 'Egipto'),
(30, 'Grecia'),
(31, 'Francia'),
(32, 'Haiti'),
(33, 'India'),
(34, 'Irak'),
(35, 'Italia'),
(36, 'Japon'),
(37, 'Jamaica'),
(38, 'Marruecos'),
(39, 'Monaco'),
(40, 'Nueva zelanda'),
(41, 'Holanda'),
(42, 'Panama'),
(43, 'Paraguay'),
(44, 'Peru'),
(45, 'Polonia'),
(46, 'Portugal'),
(47, 'Rusia'),
(48, 'Suiza'),
(49, 'Suecia'),
(50, 'Uruguay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paypal`
--

CREATE TABLE `paypal` (
  `IDREGISTROP` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `CUENTA` text NOT NULL,
  `TOKEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `ESTAD_PELICULA` int(11) NOT NULL,
  `PRECIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelicula_atrib`
--

INSERT INTO `pelicula_atrib` (`ID_PELICULA`, `NOMBRE`, `ID_ACTOR1`, `ID_ACTOR2`, `REPARTO`, `SINOPSIS`, `ID_GENERO`, `ANIO_LANZAMIENTO`, `ID_ESTILO`, `ID_PAIS`, `ID_CASA_PRODUCTORA`, `ID_FORMATO`, `ID_PRODUCTOR`, `CARATULA_PELICULA`, `ESTAD_PELICULA`, `PRECIO`) VALUES
(1, 'Anabelle', 24, 25, 'Alfre Woodard\r\nTony Amendola\r\nEric Ladin', 'La cinta empieza con la misma secuencia vista en The Conjuring en la cual tres jóvenes son entrevistados por Ed y Lorraine Warren (Patrick Wilson y Vera Farmiga) sobre sus experiencias con una muñeca a la que habían llamado Annabelle y que supuestamente estaba poseída. ', 13, 2014, 7, 2, 5, 2, 25, '01.png', 0, 100);

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

--
-- Volcado de datos para la tabla `personas_atrib`
--

INSERT INTO `personas_atrib` (`ID_PERSONA`, `NOMBRE`, `APELLIDO`, `FECHA_NAC`, `ID_PAIS`, `BIO`) VALUES
(1, 'Demi', 'Lovato', '1992-08-20', 2, 'Nacida en Albuquerque EUA.'),
(2, 'Selena', 'Gomez', '1992-07-22', 2, 'Comenzó en Barnie y sus amigos'),
(3, 'Raphael', 'Martos Sanchez', '1943-05-05', 7, 'Precursor de la balada romantica'),
(4, 'Elvis', 'Presley', '1977-08-16', 2, 'El rey del Rock&Roll'),
(5, 'Gloria', 'Trevi', '1968-02-15', 1, 'Cantante y actriz mexicana'),
(6, 'Taylor', 'Swift', '1989-12-13', 2, 'La odio'),
(7, 'Lana', 'Del Rey', '1985-06-21', 2, 'Artista deprimida'),
(8, 'Paramore', '', '2004-01-01', 2, 'Autores de Decode, el sountrack de la película Crepúsculo'),
(9, 'Miley', 'Cyrus', '1992-11-23', 2, 'Cantante escandalosa en su Wrecking Balls'),
(10, 'One Direction', '', '2011-01-01', 12, 'Los odio, Las Wanda o 1D'),
(11, 'Katy', 'Perry', '1984-10-25', 2, 'Autora de I Kissed a Girl'),
(12, 'Melanie', 'Martinez', '1995-04-28', 2, 'ni idea quien sea'),
(13, 'Muse', '', '1994-01-01', 12, 'Banda Inglesa'),
(14, 'Ed', 'Sheeran', '1991-02-17', 12, 'Originario de Halifax'),
(15, 'Metallica', '', '1983-02-01', 2, 'Son trash metal'),
(16, 'The Beatles', '', '1960-01-01', 12, 'Los bichos'),
(17, 'Amy', 'Winehouse', '1983-09-23', 12, 'miembro honorario del club de los 27'),
(18, 'Green Day', '', '1989-01-01', 2, 'conocidos tambien como Sweet Children'),
(19, 'Iron Maiden', '', '1975-01-01', 12, 'banda de heavy metal'),
(20, 'Ariana', 'Grande', '1993-06-26', 2, 'Alias Sam'),
(21, 'Christina', 'Aguilera', '1980-12-18', 2, 'Couch de The Voice EU'),
(22, 'Adele', 'Laurie', '1988-05-05', 12, 'Autoa de Rolling in the deep'),
(23, 'Imagine Dragons', '', '2008-01-01', 2, 'Autores de I bet my life'),
(24, 'Anabelle', 'Wallis', '1984-08-25', 12, 'Protagonista Anabelle'),
(25, 'Ward', 'Horton', '1976-01-14', 2, 'Co protagonista Anabelle'),
(26, 'Paul', 'Rudd', '1969-04-16', 2, 'Protagonista Antman'),
(27, 'Evangeline', 'Lilly', '1979-08-03', 11, 'Protsgonista Ant-man'),
(28, 'Kevin', 'Feige', '1973-06-02', 2, 'Productor Ant-man'),
(29, 'Daniel', 'Radcliffe', '1989-07-23', 12, 'Daniel Jacob Radcliffe es un actor inglés, principalmente conocido por haber protagonizado la saga cinematográfica de Harry Potter.??? '),
(30, 'Emma', 'Watson', '1990-04-15', 12, 'Emma Charlotte Duerre Watson es una actriz, modelo y filántropa británica. Es principalmente conocida por interpretar a Hermione Granger en la saga de películas de Harry Potter.'),
(31, 'Leonardo', 'DiCaprio', '1974-11-11', 2, 'Leonardo Wilhelm DiCaprio? ? es un actor y productor de cine estadounidense.'),
(32, 'Kate', 'Winslet', '1975-10-05', 12, 'Kate Elizabeth Winslet, CBE es una actriz inglesa de cine, televisión y teatro, ganadora de un Premio Óscar, cuatro Globos de Oro, tres Premios Bafta, tres Premios del Sindicato de Actores, un Premio de la Crítica Cinematográfica, un Premio Emmy y un Premio Grammy, entre otros'),
(33, 'Ben', 'Affleck', '1972-08-15', 2, 'Benjamin Geza Affleck-Boldt, conocido simplemente como Ben Affleck, es un actor, productor, guionista y director estadounidense. Se dio a conocer con sus actuaciones en las películas de Kevin Smith tales como Persiguiendo a Amy y Dogma.'),
(34, 'Henry', 'Cavill', '1983-05-05', 2, 'Henry William Dalgliesh Cavill es un actor británico de cine y televisión. Inició su carrera profesional en la película Laguna en 2001.'),
(35, 'Chris', 'Pratt', '1979-06-21', 2, 'Christopher Michael \"Chris\" Pratt es un actor estadounidense.'),
(36, 'Zoe', 'Saldaña', '1978-06-19', 2, 'conocida como Zoe Saldana o Zoe Saldaña, es una actriz estadounidense.?'),
(37, 'Elizabeth', 'Woolridge', '1985-06-21', 2, 'Elizabeth Woolridge Grant, conocida por su nombre artístico Lana Del Rey, es una cantante, modelo y compositora estadounidense.'),
(38, 'Johnny', 'Depp', '1963-06-09', 2, 'John Christopher Depp II es un actor, productor, director, guionista y músico estadounidense.'),
(39, 'Traci', 'Lords', '1968-05-07', 2, 'Nora Louise Kuzma, más conocida como Traci Lords, es una actriz estadounidense que saltó a la fama al descubrirse que había filmado prácticamente la totalidad de su producción pornográfica siendo menor de edad.'),
(40, 'Christian', 'Bale', '1974-01-30', 12, 'Christian Charles Philip Bale, más conocido como Christian Bale, es un actor británico y estadounidense.'),
(41, 'Theo', 'James', '1984-12-16', 12, 'Theodore Peter James Kinnaird Taptiklis, conocido simplemente como Theo James, es un actor británico.'),
(42, 'Scarlett', 'Johansson', '1984-11-22', 2, 'Scarlett Ingrid Johansson es una actriz de cine y modelo estadounidense que alcanzó la fama con su papel en la película The Horse Whisperer y posteriormente obtuvo la aclamación por parte de los críticos de cine debido a su participación en Ghost World.'),
(43, 'Morgan', 'Freeman', '1937-06-01', 2, 'Morgan Freeman es un actor y director estadounidense, ganador del premio Óscar en 2005 por Million Dollar Baby. Además ha recibido otras nominaciones por sus actuaciones en El reportero de la calle 42, Paseando a Miss Daisy, Cadena perpetua e Invictus. También ha ganado los premios Globo de Oro y SAG.'),
(44, 'Chris', 'Evans', '1981-06-13', 2, 'Christopher Robert \"Chris\" Evans es un actor, modelo y director de cine estadounidense'),
(45, 'Jessica', 'Alba', '1981-04-28', 2, 'Jessica Marie Alba, más conocida como Jessica Alba, ? es una actriz estadounidense de cine y televisión.'),
(46, 'Michael', 'Chiklis', '1963-08-30', 2, 'Michael Charles Chiklis es un actor nacido en Lowell, Massachusetts'),
(47, 'Ioan', 'Gruffudd', '1973-10-06', 12, 'Ioan Gruffudd es un actor británico nacido en Gales. Es más conocido por interpretar a Mr. Fantástico en las dos primeras películas de Los 4 Fantásticos y por aparecer en la película de James Cameron Titanic como el quinto oficial Harold Lowe.'),
(48, 'Leigh', 'Whannell', '1977-01-17', 16, 'Leigh Whannell es un director de cine, actor y guionista australiano. Es famoso por haber sido el guionista y coprotagonista de la película de terror Saw y sus posteriores dos secuelas, además de ser el guionista de la saga Insidious.'),
(49, 'Tobin', 'Bell', '1942-08-07', 2, 'Tobin Bell es un actor de cine y televisión estadounidense. Después de años de trabajo como suplente en películas, tuvo su primer gran trabajo en Mississippi Burning en 1988, y luego protagonizó en películas hecha para televisión y en programas a lo largo de 1990'),
(50, 'Michael', 'Emerson', '1954-09-07', 2, 'Michael Emerson es un actor estadounidense, nacido el 7 de septiembre de 1954, en Cedar Rapids, Iowa. Emerson es más conocido por sus papeles en teatro, pero también se ha dedicado a las series y películas para televisión. Se le ha podido ver en la gran pantalla en primera parte de \"Saw\" y \"La leyenda del Zorro\".');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas`
--

CREATE TABLE `quejas` (
  `ID_EVENTO` int(11) NOT NULL,
  `FECHA` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_USUARIO` int(11) NOT NULL,
  `TITULO` varchar(200) NOT NULL,
  `DESCRIPCION` mediumtext NOT NULL,
  `ATENDIDO` tinyint(1) NOT NULL,
  `SOLUCIONADO` tinyint(1) NOT NULL
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

--
-- Volcado de datos para la tabla `relacion_roles_personas`
--

INSERT INTO `relacion_roles_personas` (`ID_RELACION`, `ID_PERSONA`, `ID_ROL`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 6),
(4, 2, 6),
(5, 2, 2),
(6, 2, 1),
(7, 3, 1),
(8, 4, 1),
(9, 4, 2),
(10, 5, 1),
(11, 6, 1),
(12, 7, 1),
(13, 7, 2),
(14, 8, 7),
(15, 9, 1),
(16, 9, 2),
(17, 9, 6),
(18, 10, 7),
(19, 11, 1),
(20, 11, 2),
(21, 12, 1),
(22, 12, 2),
(23, 13, 7),
(24, 14, 1),
(25, 14, 2),
(26, 15, 7),
(27, 16, 7),
(28, 17, 1),
(29, 17, 2),
(30, 18, 7),
(31, 19, 7),
(32, 20, 1),
(33, 20, 2),
(34, 21, 1),
(35, 21, 2),
(36, 21, 3),
(37, 21, 6),
(38, 22, 1),
(39, 22, 2),
(40, 23, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ID_ROL` int(11) NOT NULL,
  `ROL` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`ID_ROL`, `ROL`) VALUES
(1, 'Cantante'),
(2, 'Compositor'),
(3, 'Productor'),
(4, 'Artista'),
(5, 'Actor'),
(6, 'Actriz'),
(7, 'Banda'),
(8, 'Director');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `ID_SALIDA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_CATALOGO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `ID_VENTA` int(11) NOT NULL,
  `ID_ALMACEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `ID_REGISTROT` int(11) NOT NULL,
  `ID_TARJETA` int(11) NOT NULL,
  `TDC` tinyint(1) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `VIGENCIA` varchar(5) NOT NULL,
  `NOMBRE_TITULAR` varchar(150) NOT NULL,
  `DIRECCION_ASOC` varchar(200) NOT NULL
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
-- Volcado de datos para la tabla `usuarios_atrib`
--

INSERT INTO `usuarios_atrib` (`ID_USUARIO`, `NOMBRE`, `APELLIDO1`, `APELLIDO2`, `FECHA_NAC`, `CALLE`, `NUM_EXT`, `NUM_INT`, `FRACC_COL`, `POBLACION`, `ESTADO`, `ID_PAIS`, `EMAIL`, `PASSWORD`) VALUES
(1, 'Salvador', 'De Luna', 'Macias', '1990-02-13', 'Modernización', 109, 0, 'Municipio Libre', 'Aguascalientes', 'Aguascalientes', 1, 'slm_y_bmv@hotmail.com', ''),
(2, 'Rosalía', 'Anaya', 'Loera', '2001-03-15', 'Camelias', 554, 2, 'Las Flores', 'Aguascalientes', 'Aguascalientes', 1, 'rosianayalo1@gmail.com', ''),
(3, 'Jonas', 'Vega', 'Lara', '1981-05-22', 'Los mangos', 789, 1, 'Las huertas', 'Aguascalientes', 'Aguascalientes', 1, 'nomo3s@outlook.es', ''),
(4, 'Kilimanjaro', 'Dzul', 'Baarz', '1878-02-01', '18th St.', 3321, 7, 'Downtown', 'Pala', 'California', 2, 'kbaarznom@aol.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `val_album`
--

CREATE TABLE `val_album` (
  `ID_VAL_ALBUM` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ALBUM` int(11) NOT NULL,
  `VALORACION_ALBUM` smallint(6) NOT NULL,
  `COMENTARIOS` text NOT NULL,
  `DATE` datetime NOT NULL
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID_VENTA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `FECHA` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MONTO` int(11) NOT NULL,
  `METODO_PAGO` int(11) NOT NULL,
  `NO_REGISTRO` int(11) NOT NULL,
  `AUTORIZACION` int(11) NOT NULL,
  `GUIA_RASTREO` int(11) NOT NULL
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
-- Indices de la tabla `estadisticas_paginas`
--
ALTER TABLE `estadisticas_paginas`
  ADD PRIMARY KEY (`ID_VISITA`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_PAGINA` (`ID_PAGINA`);

--
-- Indices de la tabla `estad_catalogo`
--
ALTER TABLE `estad_catalogo`
  ADD PRIMARY KEY (`ID_ESTAD`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `estad_paginas`
--
ALTER TABLE `estad_paginas`
  ADD PRIMARY KEY (`ID_PAGINA`);

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
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`ID_ALMACEN`);

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
  ADD UNIQUE KEY `ID_PELICULA` (`ID_PELICULA`),
  ADD KEY `ID_ACTOR1` (`ID_ACTOR1`),
  ADD KEY `ID_ACTOR2` (`ID_ACTOR2`),
  ADD KEY `ID_GENERO` (`ID_GENERO`),
  ADD KEY `ID_CASA_PRODUCTORA` (`ID_CASA_PRODUCTORA`),
  ADD KEY `ID_FORMATO` (`ID_FORMATO`),
  ADD KEY `ID_PRODUCTOR` (`ID_PRODUCTOR`),
  ADD KEY `ID_PAIS` (`ID_PAIS`) USING BTREE,
  ADD KEY `ID_ESTILO` (`ID_ESTILO`) USING BTREE;

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
  MODIFY `ID_ALBUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `busquedas`
--
ALTER TABLE `busquedas`
  MODIFY `ID_BUSQUEDA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cancion_atrib`
--
ALTER TABLE `cancion_atrib`
  MODIFY `ID_CANCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `casa_productora_atrib`
--
ALTER TABLE `casa_productora_atrib`
  MODIFY `ID_CASA_PRODUCTORA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `datagen`
--
ALTER TABLE `datagen`
  MODIFY `ID_DSP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `disquera_atrib`
--
ALTER TABLE `disquera_atrib`
  MODIFY `ID_DISQUERA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estad_paginas`
--
ALTER TABLE `estad_paginas`
  MODIFY `ID_PAGINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estilo`
--
ALTER TABLE `estilo`
  MODIFY `ID_ESTILO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `ID_FORMATO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_GENERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `ID_PAIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `pelicula_atrib`
--
ALTER TABLE `pelicula_atrib`
  MODIFY `ID_PELICULA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personas_atrib`
--
ALTER TABLE `personas_atrib`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `relacion_roles_personas`
--
ALTER TABLE `relacion_roles_personas`
  MODIFY `ID_RELACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `ID_ROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios_atrib`
--
ALTER TABLE `usuarios_atrib`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `val_album_ibfk_1` FOREIGN KEY (`ID_ALBUM`) REFERENCES `album_atrib` (`ID_ALBUM`),
  ADD CONSTRAINT `val_album_ibfk_2` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios_atrib` (`ID_USUARIO`);

--
-- Filtros para la tabla `val_peliculas`
--
ALTER TABLE `val_peliculas`
  ADD CONSTRAINT `val_peliculas_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios_atrib` (`ID_USUARIO`),
  ADD CONSTRAINT `val_peliculas_ibfk_2` FOREIGN KEY (`ID_PELICULA`) REFERENCES `pelicula_atrib` (`ID_PELICULA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
