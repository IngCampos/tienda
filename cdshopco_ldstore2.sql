-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2019 a las 00:53:59
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
-- Base de datos: `cdshopco_ldstore2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buzon`
--

CREATE TABLE `buzon` (
  `id_buzon` int(3) NOT NULL,
  `id` int(3) NOT NULL,
  `Titulo` varchar(20) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `buzon`
--

INSERT INTO `buzon` (`id_buzon`, `id`, `Titulo`, `Descripcion`, `Fecha`) VALUES
(1, 10, 'Pocos productos', ' Deberian tener productos clasicos, viejos, no solo nuevos', '2019-05-26 01:08:01'),
(2, 2, 'Falta de informacion', ' No dicen a que hora abre el local', '2019-05-26 01:08:44'),
(3, 1, 'Prueba', ' Prueba de admi', '2019-05-26 01:12:29');

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
(4, 'VINIL', 'Descripción de esta categoría...'),
(5, 'DVD 3D', 'Películas adaptadas para ser compatibles con los televisores 3D'),
(6, 'Blu Ray 3D', 'Películas adaptadas para ser compatibles con los televisores 3D');

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
  `password` varchar(32) DEFAULT NULL,
  `token` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `direccion`, `correo`, `usuario`, `password`, `token`) VALUES
(1, 'admin1', 'admin1', 'admin1', 'admin1@gmail.com', 'admin1', 'j', 999999),
(2, 'Martin', 'Campos', 'aguascalientes', 'admin1@gmail.com', 'Martin', '357', 999999),
(3, 'Lolobartiano', 'Pereira', 'Las ciruelas 204, arboles frutales, las huertas, Aguascalientes.', 'lolobarperer@gmail.com', 'lolobartpereira', 'lolobartqwertyuiop1', NULL),
(4, 'Atanacio', 'Dorantes Mosco', 'Camelias 221, Las Flores, San Marcos, Aguascalientes.', 'atandormos1@gmal.com', 'atandormos', 'katana221z', NULL),
(5, 'Romulo', 'Dorantes Mosco', 'Camelias 221, Las Flores, San Marcos, Aguascalientes.', 'atandormos1@gmal.com', 'romdormos', 'ciclope221z', NULL),
(6, 'Zacayouiea', 'komantun', 'Valle de lam uerte Km. 224, carretera Phoenix-El Paso, Phoeniz, Arizona, EUA', 'zacakoma224@gmail.com', 'zayouiea224', '224cuentoyo', NULL),
(7, 'Geranio', 'del huerto', 'Los rezendiz 98, colonia de los artistas, Silao, Guanajuato', 'elgerashue2@gmail.com', 'gerashue1', 'herasgue1', NULL),
(8, 'Patrocinio', 'Ledezma', 'Valle de la muerte Km. 243, carretera Phoenix-El Paso, Phoeniz, Arizona, EUA', 'patronledez243@gmail.com', 'PatornLedez122', 'cadaveresenelarmario', NULL),
(9, 'Caliope', 'Santana', 'Xutaponer 564, col. palabrero, Guadalajara', 'caliopesantana01@gmail.com', 'caliopesanti', 'santicaliope55', NULL),
(10, 'Xochicalcomes', 'nomobitas', 'Antioquia 455, Fracc. los Setos, San Carlos', 'xochixochi33@gmail.com', 'sochixochi1', 'Paquitamiamor1', NULL),
(11, 'Lolobartiano', 'Izantopatl', 'Alcatraces 334, Fracc. Flores preciosas, Salamanca, Guanajuato', 'lolololo64@gmail.com', 'lolcito64', 'lolololo1lolo', NULL),
(12, 'Ñamibia', 'Zchipzcol', 'Zphinx 990-b, le carret at viel, sonomati alquimis, corse, france', 'lepetitnamibia@gmail.com', 'lepetitnamibia', 'namibis1', NULL),
(13, 'Xcaractocolinas', 'dzul', 'Jaguares 222, condominio animales exoticos, merida yucatan', 'xcarismaze222@gmail.com', 'xcarismaze1', 'lucyxcaris1', NULL),
(14, 'Meshfils', 'Parcantobas', 'roussel s/n, colonia la soledad, aguascalientes, Mexico', 'meshmesh000@gmail.com', 'meshfilz1', 'meshmeshfilz1', NULL),
(15, 'Ortopirides', 'Huasca', 'Nochistlan 1566, Ojocaliente I, Aguasclaientes', 'ortopodo99@gmail.com', 'huascaorto1', 'ortopuasca44', NULL),
(16, 'Chrome', 'Navegador', 'navegador de internet', 'chrome@gmail.com', 'Chrome', '3579;=', NULL),
(17, 'Edgeee', 'Navegador', 'Navegador de internet', 'edge@gmail.com', 'Edgeee', '3579;=', NULL),
(18, 'Explorer', 'Navegador', 'Navegador de internet', 'explorer@gmail.com', 'Explorer', '3579;=', NULL),
(19, 'Explorer2', 'Navegador', 'Navegador de internet', 'explorer2@gmail.com', 'Explorer2', '3579;=', 999999);

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
(1, 2, 825, 9, 7),
(2, 2, 978, 9, 8),
(3, 1, 785, 10, 10),
(4, 1, 1125, 14, 4),
(5, 3, 750, 19, 5),
(6, 1, 825, 20, 7),
(7, 4, 978, 22, 8),
(8, 3, 978, 23, 8),
(9, 1, 110, 25, 6),
(10, 3, 120, 29, 17),
(12, 3, 1000, 29, 7),
(13, 1, 150, 31, 4),
(14, 1, 150, 32, 8),
(15, 2, 120, 34, 13),
(16, 1, 150, 40, 4),
(17, 1, 300, 41, 25),
(18, 1, 160, 42, 31),
(19, 1, 150, 42, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivos`
--

CREATE TABLE `dispositivos` (
  `id_dispositivo` int(3) NOT NULL,
  `id` int(3) NOT NULL,
  `SO` varchar(20) NOT NULL,
  `Navegador` varchar(20) NOT NULL,
  `User_Agent` varchar(100) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Ultimo_Acceso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dispositivos`
--

INSERT INTO `dispositivos` (`id_dispositivo`, `id`, `SO`, `Navegador`, `User_Agent`, `Tipo`, `Ultimo_Acceso`) VALUES
(1, 19, 'Windows 10', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.16', 'Computadora', '2019-05-24 22:48:08'),
(2, 18, 'Windows 10', 'Edge', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.14', 'Computadora', '2019-05-24 22:49:32'),
(3, 17, 'Windows 10', 'Unknown Browser', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko', 'Computadora', '2019-05-24 22:50:42'),
(4, 16, 'Windows 10', 'Unknown Browser', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko', 'Computadora', '2019-05-24 22:50:42'),
(5, 2, 'Windows 10', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.16', 'Computadora', '2019-05-25 16:33:21'),
(6, 1, 'Windows 10', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.16', 'Computadora', '2019-05-25 16:39:51'),
(7, 1, 'Windows 10', 'Edge', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.14', 'Computadora', '2019-05-25 16:42:07'),
(8, 15, 'Windows 10', 'Edge', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.14', 'Computadora', '2019-05-25 16:45:03'),
(9, 15, 'Windows 10', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.16', 'Computadora', '2019-05-25 16:47:10');

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
(1, '2013-06-10', 1, 3606, '', 3),
(2, '2013-06-10', 1, 785, '', 3),
(3, '2013-06-10', 1, 875, '', 3),
(4, '2013-06-10', 1, 1250, '', 3),
(5, '2013-06-10', 1, 977, '', 3),
(6, '2013-06-10', 3, 1125, '', 1),
(7, '2013-06-11', 1, 1250, '', 1),
(8, '2013-06-11', 1, 875, '', 1),
(9, '2013-06-11', 1, 1954, '', 1),
(10, '2013-06-11', 1, 1750, '', 1),
(11, '2013-06-11', 1, 2250, '', 1),
(12, '2013-06-11', 1, 825, '', 1),
(13, '2013-06-11', 1, 875, '', 1),
(14, '2013-06-14', 1, 3912, '', 1),
(15, '2013-06-24', 3, 2934, '', 4),
(16, '2017-11-08', 1, 120, '', 5),
(17, '2017-11-08', 3, 110, '', 5),
(18, '2017-11-08', 1, 120, '', 5),
(19, '2017-11-08', 1, 120, '', 5),
(20, '2017-11-08', 1, 150, '', 5),
(21, '2017-11-09', 2, 3510, '', 6),
(22, '2017-11-09', 1, 250, '', 6),
(23, '2017-11-09', 1, 420, '', 6),
(24, '2017-11-09', 1, 150, '', 6),
(25, '2017-11-09', 1, 150, 'lkjh', 6),
(26, '2017-11-09', 1, 240, '', 5),
(27, '2017-11-09', 1, 120, '', 5),
(28, '2017-11-09', 1, 150, '', 5),
(29, '2017-11-09', 1, 150, '', 5),
(30, '2017-11-09', 1, 120, '', 5),
(31, '2017-11-09', 1, 120, '', 5),
(32, '2017-11-09', 1, 120, '', 5),
(33, '2017-11-09', 1, 120, '', 5),
(34, '2017-11-09', 1, 150, 'ñlkjh', 5),
(35, '2017-11-09', 1, 120, '', 5),
(36, '2017-11-09', 1, 120, '', 5),
(37, '2017-11-09', 1, 120, '', 5),
(38, '2017-11-09', 1, 120, '', 5),
(39, '2017-11-09', 1, 120, '', 5),
(40, '2017-11-09', 1, 120, '', 5),
(41, '2017-11-09', 1, 120, '', 5),
(42, '2019-03-04', 1, 300, '', 9),
(43, '2019-03-08', 2, 310, '', 9);

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
  `Categorias_id` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `Categorias_id`, `Cantidad`) VALUES
(1, 'Anabelle', 'Se trata de una precuela y una secuela de la película The Conjuring. Protagonizada por Annabelle Wallis y Ward Horton, se estrenó el 3 de octubre de 2014 en Estados Unidos2​3​. Las críticas fueron mayormente negativas, pero esto no impidió que se posicionara en el segundo lugar en su primera semana de estreno, superada únicamente por Perdida', 264, '01.png', 3, 9),
(2, 'Antman', 'Ant-Man (titulada Ant-Man: el hombre hormiga en Hispanoamérica) es una película de superhéroes estadounidense de 2015 basada en los personajes de Marvel Comics del mismo nombre: Scott Lang y Hank Pym. Producida por Marvel Studios y distribuida por Walt Disney Studios Motion Pictures, es la duodécima película del Universo cinematográfico de Marvel (MCU).', 435, '02.png', 3, 7),
(3, 'Demi Lovato - Tell Me You Love Me', 'Todo el mundo Tell Me You Love Me – edición estándar50​	\r\nN.º	Título	Escritor(es)	Productor(es)	Duración	\r\n«Sorry Not Sorry»	\r\n\r\n    Demi Lovato Oak Felder Sean Douglas Trevor Brown William Zaire Simmons\r\n\r\n	Felder	3:23\r\n«Tell Me You Love Me»	\r\nJohn Hill Kirby Lauryen Ajay Bhattacharya\r\n	\r\nHill Stint\r\n	3:56\r\n«Sexy Dirty Love»	\r\nLovato Brown Simmons\r\n	\r\n\r\n    Felder Brown Zaire Koalo\r\n\r\n	3:33\r\n«You Don\'t Do It for Me Anymore»	\r\nJonas Jeberg Chloe Angelides James «Gladius» Wong Ashlyn Wilson\r\n	\r\n\r\n    Jeberg Anton Kuhl\r\n\r\n	3:17\r\n«Daddy Issues»	\r\nLovato Felder Simmons Douglas\r\n	\r\nFelder Koalo\r\n	3:09\r\n«Ruin the Friendship»	\r\nLovato Ido Zmishlany Brittany Amaradio Angelides\r\n	Zmishlany	3:53\r\n«Only Forever»	\r\nLovato Felder Douglas Ilsey Juber Toby Gad\r\n	Felder	3:17\r\n«Lonely» (con Lil Wayne) 	\r\nDijon McFarlane Sarah Aarons Dwayne Carter Nick Audino Lewis Hughes\r\n	DJ Mustard	4:41\r\n«Cry Baby»	\r\nLovato Taylor Parks Angelides Noonie Bao Jamie Sanderson Kevin Hissink\r\n	\r\nSermstyle Hissink Parks\r\n	3:42\r\n«Games»	\r\nLovato Felder Brown Simmons Douglas\r\n	\r\nFelder Brown Koalo\r\n	3:08\r\n«Concentrate»	\r\nLovato Jeff Shum Dayyon Alexander Jimmy Burney Adam Tressler\r\n	\r\nRush Hr. Allan Robinson\r\n	3:17\r\n«Hitchhiker»	\r\nLovato Shum Alexander Burney Tressler Winston Howard\r\n	\r\nRush Hr. Allan Robinson\r\n	3:43', 120, '03.png', 1, 12),
(4, 'A year without rain', 'Álbum 2, Selena Gomez', 150, '04.png', 1, 5),
(5, 'Raphael', 'Álbum Musical', 100, '05.png', 4, 5),
(6, 'Frozen', 'Película Infantil ', 110, '06.png', 2, 2),
(7, 'Harry Potter collection', 'Películas de Ciencia Ficción ', 1000, '07.png', 3, 9),
(8, 'Elvis Presley', 'Álbum Musical', 150, '08.png', 4, 1),
(9, 'Titatic', 'Película Romantica', 150, '09.png', 2, 3),
(10, 'Toy Story 1', 'Película Infantil', 120, '10.png', 3, 5),
(11, 'Una rosa blu', 'Álbum Musical', 110, '11.png', 1, 1),
(12, 'Batman v Superman Ultimate Ed.', 'Batman se enfrenta a Superman, temeroso de que su afán de poder termine nublando su lucha contra la injusticia y lo convierta en un villano. Mientras los héroes pelean, una amenaza terrible se cierne sobre la humanidad.', 220, '12.png', 3, 9),
(13, 'DEMI', 'Álbum 5, Demi Lovato', 120, '13.png', 1, 5),
(14, 'Guardianes de la Galaxia', 'Película de Superheroes', 150, '14.png', 2, 2),
(15, 'Games of Thrones', 'Serie de Ciencia Ficción ', 850, '15.png', 3, 7),
(16, 'Sabrina la Bruja Adolescente Collection', 'Serie Completa de Ciencia Ficción', 1000, '16.png', 2, 4),
(17, 'Revival', 'Álbum 6, Selena Gomez', 120, '17.png', 1, 3),
(18, '1989', 'Álbum 5, Taylor Swift', 120, '18.png', 1, 4),
(19, 'Reputation', 'Álbum 6, Taylor Swift', 150, '19.png', 1, 5),
(20, 'Lust For Life', 'Álbum 5, Lana Del Rey', 150, '20.png', 1, 4),
(21, 'Cry Baby ', 'Álbum Debut, Melanie Martinez', 150, '21.png', 4, 1),
(22, 'Origin of Symmetry ', 'Segundo Álbum, Muse', 210, '22.png', 4, 2),
(23, 'Divide', 'Tercer Álbum, Ed Sheeran', 120, '23.png', 4, 3),
(24, 'Master of Puppets ', 'Tercer Álbum, Metallica', 250, '24.png', 4, 5),
(25, 'Abbey Road ', 'Undécimo Álbum, The Beatles', 300, '25.png', 4, 5),
(26, 'Back to Black ', 'Segundo Álbum, AMy Winehouse', 150, '26.png', 4, 5),
(27, 'American Idiot', 'Álbum, Green Day', 170, '27.png', 1, 1),
(28, 'Killers', 'Álbum, Iron Maiden', 140, '28.png', 1, 3),
(29, 'Dangerous Woman', 'Álbum, Ariana Grande', 120, '29.png', 1, 0),
(30, 'Here We Go Again', 'Álbum, Demi Lovato', 130, '30.png', 1, 9),
(31, 'Bi-on-ic', 'Álbum, Cristina Aguilera', 160, '31.png', 1, 9),
(32, '21', 'Álbum, Adele', 120, '32.png', 1, 4),
(33, 'The Fall', 'Álbum, Imagine Dragons', 140, '33.png', 1, 5),
(34, 'Riot!', 'Álbum, Paramore', 110, '34.png', 1, 6),
(35, 'Prism', 'Álbum, Katy Perry', 140, '35.png', 1, 5),
(36, 'Breakout', 'Álbum, Miley Cyrus', 120, '36.png', 1, 1),
(37, 'One Direction - Midnight Memories', 'One Direction', 155, '37.png', 1, 3),
(38, 'Taylor Swift - Fearless', 'Taylor Swift', 187, '38.png', 1, 5),
(39, 'Taylor Swift - Taylor Swift', 'Taylor Swift', 120, '39.png', 1, 3),
(40, 'Hotel Transylvania', 'Pelicula animada de terror para niños', 190, '40.png', 2, 6),
(41, 'Kun Fu Panda', 'Pelicula de Kun Fu para niños protagonizada por animales', 170, '40.png', 2, 1),
(42, 'Avatar - The Movie', 'Pelicula que narra la interacción de humanos con alienigenas usando trajes especiales llamados avatar.', 220, '41.png', 2, 5),
(43, 'Batman - The Dark Knight', 'Primera entrega de Batman el caballero de la noche. Palicula de Superheroes', 320, '43.png', 3, 4),
(44, 'Divergente la serie: Insurgente', 'Pelicula postapocaliptica, en la cual se trata la resistencia de un grupo social perteneciente a una colonia.', 175, '44.png', 3, 3),
(45, 'Resident Evil Collection', 'Coleccion de peliculas de Resident Evil protagonizada por Milla Jovovich', 664, '45.png', 2, 4),
(46, 'Godzilla', 'Película que trata sobre la invasión y ataque de una especie de dinosaurio que  ataca a los humanos.', 100, '46.png', 2, 3),
(47, 'Halloween', 'Película de terror donde el protagonista es un niño asesino', 85, '47.png', 2, 3),
(48, 'Lucy', 'Película de ciencia ficción en la cual la protagonista, usada como mula de transporte de  drogas, es golpeada y contaminada con la droga, la cual de genera mutaciones relacionadas con la inteligencia e interpretación del mundo', 320, '48.png', 3, 4),
(49, 'The Fantastic Four', 'Película de Superhéroes, un grupo de científicos expuestos a la radiación solar se convierten en personas con súper poderes', 50, '49.png', 2, 1),
(50, 'Crepúsculo la saga: Luna Nueva', 'Segunda entrega de la saga Crepúsculo, Bella es abandonada por Edward, y esta genera una atracción por Jacob, un nativo americano.', 175, '50.png', 2, 25),
(51, 'Rio', 'Pelicula que trata la trata de especies exoticas, donde un ave azul es capturada de su habitat, y traficada hasta ser rescatada. ', 120, '51.png', 2, 4),
(52, 'Saw V', 'Quinta entrega de la sega de terror', 110, '52.png', 2, 1),
(53, 'Pesadilla en la calle Elm', 'Pelicula de terror ', 95, '53.png', 3, 10),
(54, 'Moana', 'Película de dibujos animados donde una princesa nativa de Hawaii lucha por ser la lider de su manada', 120, '54.png', 3, 14),
(55, 'Hotel Tansilvania 3D', 'Adaptacion de la pelicula para ser compatible con la funcion 3d de los televisores', 420, '55.png', 5, 10),
(56, 'La Bella y la bestia', 'Pelicula animada de princesas de Disney ', 99, '56.png', 3, 3),
(57, 'Avatar: La pelicula en 3D', 'Adaptación en 3D de la película', 520, '57.png', 6, 23),
(58, 'Caminando con dinosaurios', 'Adaptación de la película a 3D', 300, '58.png', 6, 22),
(59, 'Monsters Inc.', 'Pelicula Anumada que refleja la vida de los monstruos que viven asustando niños para obtener energía', 200, '59.png', 3, 22),
(60, 'Saw VI', 'Sexta entrega de la serie Pelicula de terror', 200, '60.png', 3, 15),
(61, 'La ladrona de libros', 'Pelicula que narra la experiencia de una chica que robaba libros de una biblioteca, la cual al ser descubierta no tenía idea lo que la vida le tenía preparado', 55, '61.png', 2, 7),
(62, 'Titanic', 'Edicion especial Blu Ray de la pelicula Titanic', 230, '62.png', 3, 7),
(63, 'Infframundo: Amanecer', 'Cuarta entrega de la saga, donde Los Vampiros luchan por su supervivencia en contra de los Licantropos', 378, '63.png', 3, 12),
(64, 'Suicide Squad: Extended Cut', 'Pelicula de supervillanos y superheroes', 400, '64.png', 3, 32),
(65, 'Anabelle: La creación', 'Precuela de la pelicula Anabelle', 200, '65.jpg', 3, 7),
(66, 'It: Eso', 'Película de terror de un payaso come niños torturado por niños que no lo querían por arrancar el brazo de Georgie', 1200, '66.jpg', 2, 8),
(67, 'Hermano Oso', 'Película de dibujos animados donde un par de osos hacen de las suyas.', 99, '67.png', 2, 6),
(68, 'No manches Frida 2: Paraíso perdido', 'Secuela de la pelicula no manches frida', 340, '68.png', 3, 4),
(69, 'Dumbo', 'Pelicula de dibujos animados donde un elefante hace de las suyas en un circo y vuela con sus alas asustando a todos', 99, '69.png', 2, 7),
(70, 'Crepúsculo la saga: Luna Nueva', 'Secuela de la pelicula 3ra entreg de la serie Crepúsculo', 390, '70.png', 3, 8),
(71, 'Crepúsculo la saga: Amanecer', 'Cuarte entrega de la serie Crepúsculo', 520, '71.png', 3, 9),
(72, 'Era de Hielo', 'Pelicula de dibujos animados de animales prehistoricos tratando de sobrevivir en la era de hielo', 90, '72.png', 2, 1),
(73, 'Hercules', 'Pelicula de dibujos animados de el heroe griego y sus aventuras con su novia y sus amigos', 90, '73.png', 2, 6),
(74, 'La dama y el vagabundo', 'Pelicula de dibujos animados de una pareja de perros de diferente clase social que se enamoran y comparten spaghetti', 90, '74.png', 2, 1),
(75, 'Efecto mariposa 3: Revelaciones', 'Pelicula que narra el por que el protgonista de la primera entrega no podía vivir junto con su amada, y las implicaciones que esto traía al espacio-tiempo', 60, '75.png', 2, 15),
(76, 'Thor', 'Pelicula de superheroes, donde el hombre del mazo controla a sus enemigos a mazazos', 150, '76.png', 2, 13),
(77, 'Wolverine', 'Pelicula de superheroes, donde le protagonista se somete a un tratamiento estetico, del cual se arrepiente despues, aniquilando a todos aquellos que quieren someterlo', 130, '77.png', 2, 12),
(78, 'Inmortales', 'Pelicula de creaturas que no possen la capacidad de morir, por lo anto usan a la humanidad como su juguete', 90, '78.png', 2, 13),
(79, 'Riddick', 'Pelicula de ciencia ficcion sobre como la bionizacion de los humanos trae consecuencias catastróficas', 30, '79.png', 2, 16),
(80, 'Efecto mariposa', 'Pelicula de ciencia ficcion donde el protagonista posee el poder de saltar en el tiempo alterando la vida de el y su amada, y en todos los escenarios ella muere, por lo tanto decide alejarse de ella para que sea exitosa y feliz a costa suya', 90, '80.png', 2, 2),
(81, 'Mi villano favorito', 'Pelicula de dibujos animados de un hombre y sus secuaces los cuales desean convertirle en el villano mas malo del mundo, y como para su plan adoptan 3 niñas las cuales les ablandaran el corazón', 90, '81.png', 2, 3),
(82, 'Frozen', 'Pelicula de dibujos animados, dos chicos montados en un alce que hacen enojar a elsa la reina de hielo, robando a su unico amigo llamado olaf, formado de nieve, el cual se derrite en el camino', 120, '82.png', 3, 8),
(84, 'El Hobbit', 'Pelicula de seres fantastico, donde un anciano loco lleva a un enano y a su novio a un volcan para arrojarlos a la lava', 100, '84.png', 2, 9),
(85, 'Los juegos del hambre', 'Pelicula postapocaliptica, en la cual una chica se sacrifica por su hermana para asistir a una competencia de sacrificio y lucha donde solo ella sobrevivirá, se supone...', 230, '85.png', 3, 12),
(86, 'Mi novio es un Zombie', 'Pelicula postapocaliptica en la cual un zombie se enamora de una chica, lo cual lo hace convertirse de nuevo en humano', 70, '86.png', 2, 7),
(87, 'Ratatouille', 'Pelicula de dibujos animados, donde una rata desea convertrse en chef, cocinando a su familia para complacer al chef con sopa de ratatouille', 90, '87.png', 2, 8),
(88, 'Los increíbles', 'Pelicula de dibujos animados donde una familia disfuncional trata de volver a unirse salvando al mundo con sus superpoderes', 100, '88.png', 2, 4),
(89, 'Jack Skeleton: La pesadilla antes de navidad', 'Pelicula de dibujos animados donde le rey del halloween, desea extender su dominio hasta el dia de navidad torturando a santa claus con arañas y calabazas mutantes. Gratis ne la compra de otro porducto', 0, '89.png', 2, 3),
(90, 'Carrie', 'Pelicula de terror donde una chica asesina a todo el pueblo, a su madre y destruye todo a su paso por que le hacían bullying en la escuela a la que iba, despues de haber sido grabada mientras tuvo su primer periodo y creyendo que se desangraba', 120, '90.png', 2, 9),
(91, 'Star Wars: Episodio 1', 'No sé que número de entrega es, debido a que el orden de estas películas no altera el producto, al final de la saga el hombre de mascara negra le dirá al protagonista Soy tu padre...', 1240, '91.png', 2, 5),
(92, 'Instrumentos mortales: Los huesos de la ciuda', 'Pelicula postapocaliptica donde los chicos seleccionados son lanzados a una ciudad en ruinas donde tendrán que defenderse con una, dientes y huesos de otros humanos caídos de maneras inimaginables', 90, '92.png', 2, 2),
(93, 'Venom', 'Pelicula de superheroes, en la cual un reportero es discriminado y humillado por spiderman, el cual en su pesar termina siendo contaminado con una sustancia negra pegajosa llena de maldad y superpoderes, la cual lo obliga a retar a spiderman para recuperar su honor solo para ser humillado nuevamente y morir de manera deshonrosa', 60, '93.png', 2, 2),
(94, 'Rapidos y furiosos 2', 'Pelicula donde las mujeres tambien corren autos pero de color rosa mientras el protagonista calienta el ambiente con su motor', 99, '94.png', 2, 2),
(95, 'Capitan América', 'Pelicula de supeheroes en la cual el protagonista es manipulado, despues del experimento tratan de liquidarlo y termina congelado en la alaska, donde resucita y aun sigue siendo fiel al gobierno que trato de liquidarle', 90, '95.png', 3, 1),
(96, 'X-Men: Días del futuro pasado', 'Pelicula de superheroes odnde el diseñador gráfico no supo conjugar correctamente los tiempos verbales', 90, '96.png', 2, 3),
(97, 'Los vengadores', 'Pelicula de superheroes que luchan contra el mal, tipico, peor esta vez con coraje por que mataron uno de los suyos', 90, '97.png', 3, 4),
(98, 'Civil War', 'Pelicula que narra por que se pelean Capitan america e iron man, y los intentos fallidos de los demás de reconciliarles', 340, '98.png', 3, 0),
(99, 'Los piratas del caribe: el cofre del hombre m', 'Pelicula de fantasia pitatesca, en la cual un hombre que se maquilla en exceso finge ser pirata para robar el cofre a un hombre sin saber que ya estaba muerto, provocando la persecusion de todos', 150, '99.png', 2, 7),
(100, 'Babylon', 'Pelicula postapocaliptica, en la cual un soldado debe de proteger a una posible virgenque engendrará el nuevo mesias del mundo', 130, '100.png', 2, 22),
(101, 'Capitana Marvel', 'Pelicula de superheroes donde se crea de manera espontanea a esta superheroina tratando de infectar a las demas mujeres con su poder femenino', 90, '101.png', 2, 3),
(102, 'El destino de jupiter', 'Pelicula de ciencia ficcion en la cual los humanos visitan jupiter y tras una explosion nuclear en su huracan producen qu salga de su orbita y se dirija a polaris', 30, '101.png', 2, 5),
(103, 'Lara Croft: Tomb Raider', 'Pelicula de ficcion en la cual una mujer de senos prominentes roba todas lastumbas que puede mientras corrompe a todos los hombres a su alrededor', 90, '103.png', 2, 4),
(104, '300', 'Pelicula de ficcion en la cual narra la historia de leonidad y sus 300 hombres los cuales fueron sacrificados por los diputados de su congreso a cambio de unas monedas, el unico sobreviviente le sacaron los ojos pero su testimonio deja fe de lo ocurrido', 50, '104.png', 2, 3),
(105, 'Iron Man 3', 'Pelicula de superheroes, en la cual la vanidad del protagonista hace dudar de su integridad a su novia, la cual oo deja que se corrompa por los placeres y el dinero facil', 75, '105.png', 2, 5),
(106, 'Piratas del caribe: Las mareas misteriosas', 'Pelicula de ficcion en la cual narra la historia de un hombre con mucho maquillaje el cual invertiga por quelas mareas misteriosas se llaman así', 50, '106.png', 2, 7),
(107, 'Need for speed', 'Pelicula de ficcion en la cual se narra la historia del personaje del juego ocn el mismo nombre', 20, '107.png', 2, 0),
(108, 'John Wick Sin control', 'Pelicula de ficcion en la cual un hombre que es esposo de una esposa asesinada, padre de un hijo asesinado y amo de un perro asesinado busca venganza de manera desenfrenada', 540, '108.png', 2, 1),
(109, 'Hancock', 'Pelicula de ficcion en la cual se analiza la historia de un soldado negro ne el desierto atacando Kabul en afghanistan', 36, '109.png', 2, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buzon`
--
ALTER TABLE `buzon`
  ADD PRIMARY KEY (`id_buzon`),
  ADD KEY `id` (`id`);

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
-- Indices de la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  ADD PRIMARY KEY (`id_dispositivo`),
  ADD KEY `id` (`id`);

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
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_Productos_Categorias` (`Categorias_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `buzon`
--
ALTER TABLE `buzon`
  MODIFY `id_buzon` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  MODIFY `id_dispositivo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `buzon`
--
ALTER TABLE `buzon`
  ADD CONSTRAINT `buzon_ibfk_1` FOREIGN KEY (`id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `fk_detalle_pedidos_Pedidos1` FOREIGN KEY (`Pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_pedidos_Productos1` FOREIGN KEY (`Productos_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  ADD CONSTRAINT `dispositivos_ibfk_1` FOREIGN KEY (`id`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
