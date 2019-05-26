-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2019 a las 00:54:09
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
(16, 'Back to black', 17, 17, 8, 2006, 1, 12, 1, 1, 17, 180, 0, '26.png'),
(17, '#ELDISCO', 51, 51, 4, 2019, 7, 7, 9, 1, 51, 135, 0, '110.jpg'),
(18, 'Jupiter Calling', 52, 52, 17, 2017, 1, 12, 10, 1, 52, 403, 0, '111.jpg'),
(19, 'Something Else', 53, 53, 19, 2017, 1, 12, 11, 1, 53, 297, 0, '112,jpg'),
(20, 'A Bigger Bang', 54, 54, 17, 2005, 1, 2, 12, 1, 54, 395, 0, '113'),
(21, 'Expectativas', 55, 55, 20, 2017, 1, 2, 13, 1, 55, 135, 0, '114.jpg'),
(22, 'Manic Monday: The Best Of The Bangles', 56, 56, 17, 2007, 1, 12, 11, 1, 56, 265, 0, '115.jpg'),
(23, 'Hablame En La Cama. Lo Mejor De Maria Jimenez', 57, 57, 21, 2002, 1, 7, 14, 1, 57, 287, 0, '116.jpg'),
(24, '¡México por Siempre!', 58, 58, 4, 2017, 2, 1, 15, 1, 58, 159, 0, '117.jpg'),
(25, '(What\'s The Story) Morning Glory?', 59, 59, 17, 1995, 1, 12, 16, 1, 59, 99, 0, '118.jpg'),
(26, 'Ultimate Santana', 60, 60, 17, 2007, 1, 1, 17, 1, 60, 99, 0, '119.jpg'),
(27, 'El Silencio', 61, 61, 17, 1992, 1, 1, 1, 1, 61, 99, 0, '120.png'),
(29, 'Blood Sugar Sex Magik', 62, 62, 17, 1991, 1, 2, 18, 1, 62, 99, 0, '121.jpg'),
(30, 'Kaleidoscope (EP)', 63, 63, 19, 2017, 1, 12, 9, 1, 63, 87, 0, '122.jpg'),
(31, 'Avenged Sevenfold CD', 64, 64, 17, 2007, 1, 2, 18, 1, 64, 99, 0, '123.jpg'),
(32, 'El nervio del volcán', 61, 61, 17, 1994, 1, 1, 1, 1, 61, 99, 0, '124.jpg'),
(33, 'Caifanes', 61, 61, 17, 1990, 1, 1, 1, 1, 61, 99, 0, '125.jpg'),
(34, 'Hybrid Theory CD', 65, 65, 17, 2000, 1, 2, 18, 1, 65, 453, 0, '126.jpg'),
(35, 'Senderos de Traición', 67, 67, 8, 1990, 1, 7, 20, 1, 67, 99, 0, '128.jpg'),
(36, 'Viva la Vida or Death and All His Friends', 63, 63, 19, 2008, 1, 2, 21, 1, 63, 99, 0, '129.jgp'),
(37, 'Matenme Porque Me Muero', 61, 61, 17, 1988, 1, 1, 12, 1, 61, 99, 0, '130.jpg'),
(38, 'La ciudad de los árboles', 66, 66, 9, 2007, 1, 7, 19, 1, 66, 99, 0, '127.jpg'),
(39, 'Tiempo Transcurrido', 68, 68, 17, 2001, 1, 1, 13, 1, 68, 99, 0, '131.jpg'),
(40, 'Plastic Beach', 69, 69, 17, 2010, 1, 2, 18, 1, 69, 80, 0, '132.jpg'),
(41, 'Me Veras Volver: Hits & Mas', 70, 70, 17, 2007, 1, 15, 11, 1, 70, 99, 0, '133.jpg'),
(42, 'American Idiot', 18, 18, 4, 2004, 1, 2, 18, 1, 18, 99, 0, '134.jpg'),
(43, 'Signos', 70, 70, 17, 1986, 1, 15, 1, 1, 70, 99, 0, '135.jpg'),
(44, 'Nuestra Casa a La Izquierda Del Tiempo', 72, 72, 4, 2009, 1, 7, 1, 1, 72, 110, 0, '137.jpg'),
(45, 'Más Guapa', 72, 72, 4, 2006, 1, 7, 1, 1, 72, 176, 0, '136.jpg'),
(46, 'Lo Que Te Conte Mientras Te Hacias La Dormida', 72, 72, 4, 2013, 1, 7, 1, 1, 72, 342, 0, '138.jpg'),
(47, 'El Viaje De Copperpot ', 72, 72, 4, 2000, 1, 7, 1, 1, 72, 333, 0, '139.jpg'),
(48, 'A Las Cinco En El Astoria', 72, 72, 4, 2008, 1, 7, 1, 1, 72, 99, 0, '140.jpg'),
(49, 'El Planeta Imaginario', 72, 72, 4, 2016, 1, 7, 1, 1, 72, 185, 0, '141.JPG'),
(50, 'Lovg: Grandes Exitos', 72, 72, 4, 2008, 1, 7, 1, 1, 72, 176, 0, '142.JPG');

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
(2, 1, 'Hakunah', '2019-05-14 02:10:06'),
(3, 2, 'Lucy', '2019-05-26 17:44:45'),
(4, 1, 'Play', '2019-05-01 11:14:33'),
(5, 1, 'Playa', '2019-05-01 11:14:33'),
(6, 1, 'Oreja de Van Gogh', '2019-05-02 11:14:33'),
(7, 2, 'Nazareth', '2019-05-02 12:14:33'),
(8, 1, 'Cachita', '2019-04-01 18:14:33'),
(9, 4, 'Play', '2019-05-01 11:14:33'),
(10, 1, 'Playa', '2019-05-01 11:14:33'),
(11, 1, 'Oreja de Van Gogh', '2019-05-02 11:14:33'),
(12, 2, 'Nazareth', '2019-05-02 12:14:33'),
(13, 1, 'Cachita', '2019-04-01 18:14:33'),
(14, 4, 'Play', '2019-05-01 11:14:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_atrib`
--

CREATE TABLE `cancion_atrib` (
  `ID_CANCION` int(11) NOT NULL,
  `NOMBRE_CANCION` varchar(100) NOT NULL,
  `ID_ARTISTA` int(11) NOT NULL,
  `ID_COMPOSITOR` int(11) NOT NULL,
  `ID_GENERO` int(11) NOT NULL,
  `ID_ALBUM` int(11) NOT NULL,
  `DURACION` time NOT NULL,
  `NO_CANCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cancion_atrib`
--

INSERT INTO `cancion_atrib` (`ID_CANCION`, `NOMBRE_CANCION`, `ID_ARTISTA`, `ID_COMPOSITOR`, `ID_GENERO`, `ID_ALBUM`, `DURACION`, `NO_CANCION`) VALUES
(1, 'Sorry Not Sorry', 1, 1, 4, 1, '00:03:23', 1),
(2, 'Tell Me You Love Me', 1, 1, 4, 1, '00:03:56', 2),
(3, 'Sexy Dirty Love', 1, 1, 4, 1, '00:03:33', 3),
(4, 'You Dont Do It for Me Anymore', 1, 1, 4, 1, '00:03:17', 4),
(5, 'Daddy Issues', 1, 1, 4, 1, '00:03:09', 5),
(6, 'Ruin the Friendship', 1, 1, 4, 1, '00:03:53', 6),
(7, 'Only Forever', 1, 1, 4, 1, '00:03:17', 7),
(8, 'Lonely', 1, 1, 4, 1, '00:04:41', 8),
(9, 'Cry Baby', 1, 1, 4, 1, '00:03:42', 9),
(10, 'Games', 1, 1, 4, 1, '00:03:08', 10),
(11, 'Round & Round', 2, 2, 4, 2, '00:03:06', 1),
(12, 'A Year Without Rain', 2, 2, 4, 2, '00:03:54', 2),
(13, 'Rock God', 2, 2, 4, 2, '00:03:08', 3),
(14, 'Off the Chain', 2, 2, 4, 2, '00:04:03', 4),
(15, 'Summers Not Hot', 2, 2, 4, 2, '00:03:05', 5),
(16, 'Yo Soy Aquel', 3, 3, 4, 3, '00:02:39', 1),
(17, 'Estar Enamorado', 3, 3, 4, 3, '00:04:54', 2),
(18, 'Cierro Mis Ojos', 3, 3, 4, 3, '00:03:34', 3),
(19, 'Que Tal Te Va Sin Mi', 3, 3, 4, 3, '00:05:22', 4),
(20, 'La Cancion del Tamborilero', 3, 3, 4, 3, '00:03:05', 5),
(21, 'Psicofonia', 4, 4, 8, 4, '00:03:42', 1),
(22, 'I love', 4, 4, 8, 4, '00:03:15', 2),
(23, 'Lo Que una Chica por Amor Es Capaz', 4, 4, 8, 4, '00:03:41', 3),
(24, 'Una Rosa Azul', 4, 4, 8, 4, '00:04:08', 4),
(25, 'Inmaculada', 4, 4, 8, 4, '00:03:11', 5),
(26, 'Heart Attack', 1, 1, 4, 1, '00:03:30', 1),
(27, 'Made in the USA', 1, 1, 4, 1, '00:03:16', 2),
(28, 'Without the Love', 1, 1, 4, 1, '00:03:55', 3),
(29, 'Neon Lights', 1, 1, 4, 1, '00:03:53', 4),
(30, 'Two Pieces', 1, 1, 4, 1, '00:04:25', 4),
(31, 'Revival', 2, 2, 4, 2, '00:04:06', 1),
(32, 'Kill Em with Kindness', 2, 2, 4, 2, '00:03:37', 2),
(33, 'Hands to Myself', 2, 2, 4, 2, '00:03:20', 3),
(34, 'Same Old Love', 2, 2, 4, 2, '00:03:49', 4),
(35, 'Sober', 2, 2, 4, 2, '00:03:14', 4),
(36, 'Welcome to New York', 6, 6, 4, 6, '00:03:32', 1),
(37, 'Blank Space', 6, 6, 4, 6, '00:03:51', 2),
(38, 'Style', 6, 6, 4, 6, '00:03:50', 3),
(39, 'Out of the Woods', 6, 6, 4, 6, '00:03:55', 4),
(40, 'All You Had to Do Was Stay', 6, 6, 4, 6, '00:03:13', 4),
(41, 'Ready for It?', 6, 6, 4, 6, '00:03:28', 1),
(42, 'End Game', 6, 6, 4, 6, '00:04:04', 2),
(43, 'I Did Something Bad', 6, 6, 4, 6, '00:03:58', 3),
(44, 'Dont Blame Me', 6, 6, 4, 6, '00:00:00', 4),
(45, 'Delicate', 6, 6, 4, 6, '00:03:52', 4),
(46, 'Love', 7, 7, 1, 7, '00:04:33', 1),
(47, 'Lust for Life', 7, 7, 1, 7, '00:04:24', 2),
(48, '13 Beaches', 7, 7, 1, 7, '00:04:56', 3),
(49, 'Cherry', 7, 7, 1, 7, '00:03:01', 4),
(50, 'White Mustang', 7, 7, 1, 7, '00:02:45', 4),
(51, 'Cry Baby', 12, 12, 4, 12, '00:03:59', 1),
(52, 'Dollhouse', 12, 12, 4, 12, '00:03:51', 2),
(53, 'Sippy Cup', 12, 12, 4, 12, '00:03:15', 3),
(54, 'Carousel', 12, 12, 4, 12, '00:03:50', 4),
(55, 'Alphabet Boy', 12, 12, 4, 12, '00:04:13', 4),
(56, 'New Born', 13, 13, 8, 13, '00:06:03', 1),
(57, 'Bliss', 13, 13, 8, 13, '00:04:12', 2),
(58, 'Space Dementia', 13, 13, 8, 13, '00:06:20', 3),
(59, 'Hyper Music', 13, 13, 8, 13, '00:03:21', 4),
(60, 'Plug in Baby', 13, 13, 8, 13, '00:03:39', 4),
(61, 'The Hardest Part', 14, 14, 4, 14, '00:05:30', 1),
(62, 'Wild Soul', 14, 14, 4, 14, '00:04:21', 2),
(63, 'In Silence', 14, 14, 4, 14, '00:04:15', 3),
(64, 'Maybe for a Minute', 14, 14, 4, 14, '00:04:51', 4),
(65, 'Sorry I...', 14, 14, 4, 14, '00:05:23', 4),
(66, 'Battery', 15, 15, 8, 15, '00:05:10', 1),
(67, 'Master of Puppets', 15, 15, 8, 15, '00:08:38', 2),
(68, 'The Thing That Should Not Be', 15, 15, 8, 15, '00:00:00', 3),
(69, 'Welcome Home (Sanitarium)', 15, 15, 8, 15, '00:06:28', 4),
(70, 'Disposable Heroes', 15, 15, 8, 15, '00:08:14', 4),
(81, 'Come Together', 16, 16, 8, 16, '00:04:17', 1),
(82, 'Something', 16, 16, 8, 16, '00:03:02', 2),
(84, 'Oh! Darling', 16, 16, 8, 16, '00:03:27', 4),
(85, 'Octopus s Garden', 16, 16, 8, 16, '00:02:50', 4),
(86, 'Rehab', 17, 17, 8, 17, '00:03:34', 1),
(87, 'You Know Im No Good', 17, 17, 8, 17, '00:04:17', 2),
(88, 'Me & Mr. Jones', 17, 17, 8, 17, '00:02:33', 3),
(89, 'Just Friends', 17, 17, 8, 17, '00:03:13', 4),
(90, 'Back to Black', 17, 17, 8, 17, '00:04:01', 4),
(91, 'El Trato', 51, 51, 4, 17, '00:04:18', 1),
(92, 'Mi Persona Favorita', 51, 51, 4, 17, '00:03:59', 2),
(93, 'No Tengo Nada', 51, 51, 4, 17, '00:03:45', 3),
(94, 'Te Canto Un Son', 51, 51, 4, 17, '00:03:12', 4),
(95, 'Los Lugares', 51, 51, 4, 17, '00:03:28', 4),
(96, 'Son of Solomon', 52, 52, 17, 18, '00:03:12', 1),
(97, 'Chasing Shadows', 52, 52, 17, 18, '00:03:13', 2),
(98, 'Bulletproof Love', 52, 52, 17, 18, '00:03:23', 3),
(99, 'Road to Eden', 52, 52, 17, 18, '00:03:34', 4),
(100, 'Butter Flutter', 52, 52, 17, 18, '00:03:13', 4),
(101, 'Linger', 53, 53, 19, 19, '00:04:55', 1),
(102, 'The Glory', 53, 53, 19, 19, '00:05:14', 2),
(103, 'Dreams ', 53, 53, 19, 19, '00:04:24', 3),
(104, 'When Youre Gone ', 53, 53, 19, 19, '00:04:10', 4),
(105, 'Zombie', 53, 53, 19, 19, '00:04:01', 4),
(106, 'Rough Justice', 54, 54, 17, 20, '00:03:11', 1),
(107, 'Let Me Down Slow', 54, 54, 17, 20, '00:04:16', 2),
(108, 'It Wont Take Long', 54, 54, 17, 20, '00:03:54', 3),
(109, 'Rain Fall Down', 54, 54, 17, 20, '00:04:53', 4),
(110, 'Streets of Love', 54, 54, 17, 20, '00:05:10', 4),
(111, 'La Ceremonia de la Confusión', 55, 55, 20, 21, '00:03:55', 1),
(112, 'La Actitud Correcta', 55, 55, 20, 21, '00:04:19', 2),
(113, 'Cuna de Caín', 55, 55, 20, 21, '00:04:32', 3),
(114, 'En Bandeja de Plata', 55, 55, 20, 21, '00:05:07', 4),
(115, 'Parecemos Tontos', 55, 55, 20, 21, '00:05:07', 4),
(116, 'Monday', 56, 56, 17, 22, '00:03:07', 1),
(117, 'Going Down to Liverpool', 56, 56, 17, 22, '00:03:42', 2),
(118, 'Walk Like an Egyptian', 56, 56, 17, 22, '00:03:24', 3),
(119, 'If She Knew What She Wants', 56, 56, 17, 22, '00:03:51', 4),
(120, 'Hero Takes a Fall ', 56, 56, 17, 22, '00:02:55', 4),
(121, 'Hablame en LA Cama', 57, 57, 21, 23, '00:03:17', 1),
(122, 'Con Golpes de Pecho', 57, 57, 21, 23, '00:03:23', 2),
(123, 'DeSnudame Sobre Mayo', 57, 57, 21, 23, '00:03:34', 3),
(124, 'Se Acabo', 57, 57, 21, 23, '00:03:22', 4),
(125, 'Pero No Se Si Vivire', 57, 57, 21, 23, '00:03:23', 4),
(126, 'La Fiesta del Mariachi', 58, 58, 17, 24, '00:02:44', 1),
(127, 'No Me Amenaces', 58, 58, 17, 24, '00:02:28', 2),
(128, 'Llamarada', 58, 58, 17, 24, '00:03:24', 3),
(129, 'El Balajú', 58, 58, 17, 24, '00:02:49', 4),
(130, 'Soy Lo Prohibido', 58, 58, 17, 24, '00:03:04', 4),
(131, 'Hello', 59, 59, 4, 25, '00:03:32', 1),
(132, 'Roll with It', 59, 59, 4, 25, '00:04:00', 2),
(133, 'Wonderwall ', 59, 59, 4, 25, '00:04:19', 3),
(134, 'Dont Look Back in Anger', 59, 59, 4, 25, '00:04:48', 4),
(135, 'Hey Now!', 59, 59, 4, 25, '00:05:41', 4),
(136, 'Into the Night', 60, 60, 17, 26, '00:03:42', 1),
(137, 'This Boys Fire', 60, 60, 17, 26, '00:03:30', 2),
(138, 'Smooth', 60, 60, 17, 26, '00:04:55', 3),
(139, 'Maria Maria', 60, 60, 17, 26, '00:04:22', 4),
(140, 'Oye Como Va', 60, 60, 17, 26, '00:04:18', 4),
(141, 'Metamorfeame', 61, 61, 17, 27, '00:02:45', 1),
(142, 'Nubes', 61, 61, 17, 27, '00:04:35', 2),
(143, 'Piedra', 61, 61, 17, 27, '00:04:37', 3),
(144, 'Tortuga', 61, 61, 17, 27, '00:04:37', 4),
(145, 'Nos Vamos Juntos', 61, 61, 17, 27, '00:05:08', 4),
(146, 'The Power of Equality', 62, 62, 17, 29, '00:04:03', 1),
(147, 'If You Have to Ask', 62, 62, 17, 29, '00:03:37', 2),
(148, 'Breaking the Girl', 62, 62, 17, 29, '00:04:55', 3),
(149, 'Funky Monks', 62, 62, 17, 29, '00:05:23', 4),
(150, 'Suck My Kiss ', 62, 62, 17, 29, '00:03:37', 4),
(151, 'Intro', 63, 63, 19, 30, '00:01:55', 1),
(152, 'Good Stuff', 63, 63, 19, 30, '00:03:52', 2),
(153, 'Caught Out There', 63, 63, 19, 30, '00:04:51', 3),
(154, 'Get Along with You', 63, 63, 19, 30, '00:04:27', 4),
(155, 'Mafia', 63, 63, 19, 30, '00:04:18', 4),
(156, 'Critical Acclaim', 64, 64, 17, 31, '00:03:54', 1),
(157, 'Almost Easy', 64, 64, 17, 31, '00:03:54', 2),
(158, 'Scream', 64, 64, 17, 31, '00:04:48', 3),
(159, 'Afterlife', 64, 64, 17, 31, '00:05:53', 4),
(160, 'Gunslinger', 64, 64, 17, 31, '00:04:11', 4),
(161, 'Afuera', 61, 61, 17, 32, '00:03:05', 1),
(162, 'Miedo', 61, 61, 17, 32, '00:03:13', 2),
(163, 'Aqui No Es Asi', 61, 61, 17, 32, '00:03:44', 3),
(164, 'Ayer Me Dijo un Ave', 61, 61, 17, 32, '00:03:34', 4),
(165, 'Hasta Que Dejes de Respirar', 61, 61, 17, 32, '00:03:33', 4),
(166, 'Matenme Porque Me Muero', 61, 61, 17, 33, '00:03:05', 1),
(167, 'Te Estoy Mirando', 61, 61, 17, 33, '00:03:34', 2),
(168, 'Amanece', 61, 61, 17, 33, '00:03:13', 3),
(169, 'Sera Por Eso', 61, 61, 17, 33, '00:03:44', 4),
(170, 'Nunca Me Voy a Transformar en Ti', 61, 61, 17, 33, '00:03:33', 4),
(171, 'Papercut', 65, 65, 17, 34, '00:03:29', 1),
(172, 'With You', 65, 65, 17, 34, '00:03:05', 2),
(173, 'With You', 65, 65, 17, 34, '00:02:36', 3),
(174, 'Points of Authority', 65, 65, 17, 34, '00:03:23', 4),
(175, 'Crawling', 65, 65, 17, 34, '00:03:20', 4),
(176, 'Entre Dos Tierras', 67, 67, 8, 35, '00:06:05', 1),
(177, 'Maldito Duende', 67, 67, 8, 35, '00:04:14', 2),
(178, 'La Carta', 67, 67, 8, 35, '00:03:05', 3),
(179, 'Malas Intenciones', 67, 67, 8, 35, '00:03:47', 4),
(180, 'Sal', 67, 67, 8, 35, '00:00:17', 4),
(181, 'Life in Technicolor', 63, 63, 19, 36, '00:02:29', 1),
(182, 'Cemeteries of London', 63, 63, 19, 36, '00:03:55', 2),
(183, 'Lost!', 63, 63, 19, 36, '00:03:55', 3),
(184, '42', 63, 63, 19, 36, '00:03:57', 4),
(185, 'Lovers in Japan/Reign of Love', 63, 63, 19, 36, '00:06:51', 4),
(186, 'La Celula Que Explota', 61, 61, 17, 37, '00:03:35', 1),
(187, 'Es Tan Fácil Romper un Corazón', 61, 61, 17, 37, '00:04:51', 2),
(188, 'Kumbala', 61, 61, 17, 37, '00:04:27', 3),
(189, 'A Cara O Cruz', 61, 61, 17, 37, '00:05:39', 4),
(190, 'El Microbito', 61, 61, 17, 37, '00:02:37', 4),
(191, 'El Espíritu del Bosque (Intro)', 66, 66, 9, 38, '00:01:46', 1),
(192, 'La Ciudad de Los Árboles', 66, 66, 9, 38, '00:06:02', 2),
(193, 'Mi Nombre Es Rock N Roll', 66, 66, 9, 38, '00:06:02', 3),
(194, 'El Rincón de Los Sentidos', 66, 66, 9, 38, '00:04:38', 4),
(195, 'Deja de Llorar (Y Vuélvete a Levantar)', 66, 66, 9, 38, '00:04:18', 4),
(196, 'Revés', 68, 68, 17, 39, '00:04:01', 1),
(197, 'La Locomotora', 68, 68, 17, 39, '00:03:50', 2),
(198, 'La Muerte Chiquita', 68, 68, 17, 39, '00:02:51', 3),
(199, 'Dos Niños', 68, 68, 17, 39, '00:03:29', 4),
(200, 'No Controles', 68, 68, 17, 39, '00:03:08', 4),
(201, 'Sobredosis de TV', 69, 69, 17, 40, '00:04:11', 1),
(202, 'Trátame Suavemente', 69, 69, 17, 40, '00:03:22', 2),
(203, 'Juegos de Seducción', 69, 69, 17, 40, '00:03:19', 3),
(204, 'Cuando Pase el Temblor', 69, 69, 17, 40, '00:03:51', 4),
(205, 'Nada Personal', 69, 69, 17, 40, '00:04:54', 4),
(206, 'American Idiot', 70, 70, 17, 41, '00:02:54', 1),
(207, 'Jesus of Suburbia', 70, 70, 17, 41, '00:09:08', 2),
(208, 'Holiday', 70, 70, 17, 41, '00:03:52', 3),
(209, 'Boulevard of Broken Dreams', 70, 70, 17, 41, '00:04:20', 4),
(210, 'Are We the Waiting', 70, 70, 17, 41, '00:02:42', 4),
(211, 'Paris', 18, 18, 4, 42, '00:04:32', 1),
(212, 'Cuéntame al Oido', 18, 18, 4, 42, '00:04:13', 2),
(213, 'Último Vals', 18, 18, 4, 42, '00:03:33', 3),
(214, 'Playa', 18, 18, 4, 42, '00:04:17', 4),
(215, 'Rosas', 18, 18, 4, 42, '00:04:21', 4),
(216, 'Noche', 70, 70, 17, 43, '00:04:29', 1),
(217, 'Muñeca de Trapo', 70, 70, 17, 43, '00:03:55', 2),
(218, 'Dulce Locura', 70, 70, 17, 43, '00:03:49', 3),
(219, 'Perdida', 70, 70, 17, 43, '00:04:20', 4),
(220, 'Vuelve', 70, 70, 17, 43, '00:03:36', 5),
(221, 'Puedes Contar Conmigo', 72, 72, 4, 44, '00:03:56', 1),
(222, '20 de Enero', 72, 72, 4, 44, '00:03:42', 2),
(223, 'Rosas', 72, 72, 4, 44, '00:03:56', 3),
(224, 'Deseos de Cosas Imposibles', 72, 72, 4, 44, '00:03:08', 4),
(225, 'Geografia', 72, 72, 4, 44, '00:03:17', 4),
(226, 'Cuidate', 72, 72, 4, 45, '00:02:50', 1),
(227, 'Soledad', 72, 72, 4, 45, '00:03:52', 1),
(228, 'Paris', 72, 72, 4, 45, '00:03:47', 1),
(229, 'La Playa', 72, 72, 4, 45, '00:03:22', 1),
(230, 'Pop', 72, 72, 4, 45, '00:04:02', 1),
(231, 'El Ultimo Vals', 72, 72, 4, 46, '00:03:24', 1),
(232, 'Inmortal', 72, 72, 4, 46, '00:04:06', 2),
(233, 'Jueves', 72, 72, 4, 46, '00:03:59', 3),
(234, 'Más', 72, 72, 4, 46, '00:04:07', 4),
(235, 'Cumplir un Año Menos', 72, 72, 4, 46, '00:03:33', 4),
(236, 'Estoy Contigo', 72, 72, 4, 47, '00:04:57', 1),
(237, 'Diciembre', 72, 72, 4, 47, '00:03:45', 1),
(238, 'Verano', 72, 72, 4, 47, '00:04:21', 1),
(239, 'Esa Chica', 72, 72, 4, 47, '00:04:44', 1),
(240, 'Pálida Luna', 72, 72, 4, 47, '00:03:38', 1),
(241, 'Cuídate', 72, 72, 4, 48, '00:02:49', 1),
(242, '20 de Enero', 72, 72, 4, 48, '00:03:45', 2),
(243, '28', 72, 72, 4, 48, '00:02:50', 3),
(244, 'París', 72, 72, 4, 48, '00:03:46', 4),
(245, 'Playa', 72, 72, 4, 48, '00:04:07', 4);

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
(5, 'New Line Cinema', 2),
(6, '20th Century Fox', 2),
(7, 'Marvel Studios', 2),
(8, 'Warner Bros Pictures', 2),
(9, 'Universal Studios', 2),
(10, 'Disney Studios', 2),
(11, 'Orion Pictures', 2),
(12, 'Pantelion + Televisa', 1),
(13, 'Summit Entertaiment', 2);

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
(5, 'Musart', 1),
(9, 'Universal Music', 2),
(10, 'East West Records ', 2),
(11, 'Sony-BMG', 2),
(12, 'Rolling Stones Records', 2),
(13, 'Warner Music Latino', 2),
(14, 'AOL Time Warner', 7),
(15, ' Warner Music', 1),
(16, 'Creation Records', 2),
(17, 'Arista Records', 1),
(18, 'Warner Bros. Records', 2),
(19, 'Dro Atlantic', 7),
(20, 'EMI', 7),
(21, 'Capitol Records', 2);

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

--
-- Volcado de datos para la tabla `estadisticas_paginas`
--

INSERT INTO `estadisticas_paginas` (`ID_VISITA`, `ID_USUARIO`, `FECHA`, `ID_PAGINA`) VALUES
(1, 1, '2019-03-12', 1),
(2, 20, '2018-12-18', 4),
(3, 10, '2019-04-30', 2),
(4, 11, '2019-05-06', 1),
(5, 8, '2019-04-30', 1),
(6, 9, '2019-05-06', 2),
(7, 1, '2019-05-06', 3),
(8, 4, '2019-05-01', 1),
(9, 6, '2019-05-01', 2),
(10, 5, '2019-05-01', 4),
(11, 7, '2019-05-06', 2),
(12, 7, '2019-05-02', 1),
(13, 9, '2019-05-02', 2),
(14, 1, '2019-05-03', 1),
(15, 1, '2019-05-03', 2),
(16, 1, '2019-05-03', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estad_catalogo`
--

CREATE TABLE `estad_catalogo` (
  `ID_ESTAD` int(11) NOT NULL,
  `FECHA` datetime NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estad_catalogo`
--

INSERT INTO `estad_catalogo` (`ID_ESTAD`, `FECHA`, `ID_USUARIO`, `ID_PRODUCTO`) VALUES
(1, '2019-02-13 11:42:28', 102, 2),
(2, '2019-04-10 11:42:28', 102, 1),
(3, '2019-04-11 11:42:28', 21, 1),
(4, '2019-04-12 11:42:28', 13, 50),
(5, '2019-04-13 11:42:28', 15, 49),
(6, '2019-04-13 11:42:28', 14, 33),
(7, '2019-04-14 11:42:28', 16, 7),
(8, '2019-04-15 11:42:28', 12, 8),
(9, '2019-04-16 11:42:28', 10, 9),
(10, '2019-04-17 11:42:28', 24, 10),
(11, '2019-04-17 11:42:28', 23, 21),
(12, '2019-04-13 11:42:28', 56, 22),
(13, '2019-02-19 11:42:28', 101, 23),
(14, '2019-04-19 11:42:28', 99, 42),
(15, '2019-04-18 11:42:28', 35, 52),
(16, '2019-04-17 11:42:28', 100, 62),
(17, '2019-04-14 11:42:28', 54, 7),
(18, '2019-04-23 11:42:28', 23, 62),
(19, '2019-04-23 11:42:28', 89, 46),
(20, '2019-04-13 11:42:28', 97, 37),
(21, '2019-02-03 11:42:28', 67, 109),
(22, '2019-02-03 11:42:28', 90, 43),
(23, '2019-01-23 11:42:28', 87, 2),
(24, '2019-02-13 11:42:28', 19, 13),
(25, '2019-01-31 11:42:28', 67, 44),
(26, '2019-01-28 11:42:28', 45, 29),
(27, '2019-01-05 11:42:28', 12, 44),
(28, '2019-01-14 11:42:28', 11, 57),
(29, '2019-01-15 11:42:28', 19, 29),
(30, '2019-01-16 11:42:28', 25, 29),
(31, '2019-01-16 11:42:28', 27, 30),
(32, '2019-02-17 11:42:28', 37, 99),
(33, '2019-02-17 11:42:28', 56, 90),
(34, '2019-01-18 11:42:28', 29, 107),
(35, '2019-01-19 11:42:28', 101, 100),
(36, '2019-02-19 11:42:28', 10, 101),
(37, '2019-02-18 11:42:28', 5, 92),
(38, '2019-02-18 11:42:28', 7, 4),
(39, '2019-02-17 11:42:28', 2, 29),
(40, '2019-01-17 11:42:28', 3, 57),
(41, '2019-02-16 11:42:28', 4, 98),
(42, '2019-02-16 11:42:28', 5, 56),
(43, '2019-02-16 11:42:28', 6, 65),
(44, '2019-02-15 11:42:28', 7, 86),
(45, '2019-02-15 11:42:28', 7, 77),
(46, '2019-02-14 11:42:28', 8, 23),
(47, '2019-03-19 11:42:28', 8, 65),
(48, '2019-01-11 11:42:28', 1, 67),
(49, '2019-02-11 11:42:28', 1, 56),
(50, '2019-01-11 11:42:28', 77, 32),
(51, '2019-02-12 11:42:28', 88, 21),
(52, '2019-01-12 11:42:28', 81, 76),
(53, '2019-01-23 11:42:28', 82, 33),
(54, '2019-01-03 11:42:28', 82, 23),
(55, '2019-01-03 11:42:28', 81, 33),
(56, '2019-02-03 11:42:28', 100, 37),
(57, '2019-02-23 11:42:28', 25, 32),
(58, '2019-02-23 11:42:28', 22, 98),
(59, '2019-02-13 11:42:28', 33, 105),
(60, '2019-02-13 11:42:28', 21, 89),
(61, '2019-02-13 11:42:28', 20, 23),
(62, '2019-03-13 11:42:28', 33, 19),
(63, '2019-03-13 11:42:28', 100, 5),
(64, '2019-03-21 11:42:28', 77, 7),
(65, '2019-03-22 11:42:28', 66, 6),
(66, '2019-03-28 11:42:28', 21, 5),
(67, '2019-03-25 11:42:28', 66, 9),
(68, '2019-03-23 11:42:28', 74, 2),
(69, '2019-02-26 11:42:28', 55, 4),
(70, '2019-02-14 11:42:28', 43, 55),
(71, '2019-03-02 11:42:28', 43, 27),
(72, '2019-03-03 11:42:28', 43, 27),
(73, '2019-03-05 11:42:28', 23, 69),
(74, '2019-03-09 11:42:28', 66, 41),
(75, '2019-02-04 11:42:28', 12, 41),
(76, '2019-02-02 11:42:28', 88, 41),
(77, '2019-02-13 11:42:28', 12, 105),
(78, '2019-02-13 11:42:28', 56, 32),
(79, '2019-02-02 11:42:28', 55, 21),
(80, '2019-02-14 11:42:28', 74, 45),
(81, '2019-02-02 11:42:28', 74, 108),
(82, '2019-02-13 11:42:28', 10, 3),
(83, '2019-02-28 11:42:28', 14, 1),
(84, '2019-01-05 11:42:28', 11, 1),
(85, '2019-01-05 11:42:28', 28, 1),
(86, '2019-01-27 11:42:28', 33, 8),
(87, '2019-01-26 11:42:28', 27, 8),
(88, '2019-01-25 11:42:28', 29, 8),
(89, '2019-01-26 11:42:28', 21, 35),
(90, '2019-02-21 11:42:28', 44, 54),
(91, '2019-01-13 11:42:28', 49, 98),
(92, '2019-01-23 11:42:28', 44, 12),
(93, '2019-02-02 11:42:28', 41, 13),
(94, '2019-02-06 11:42:28', 86, 13),
(95, '2019-02-05 11:42:28', 32, 13),
(96, '2019-03-02 11:42:28', 45, 43),
(97, '2019-03-07 11:42:28', 21, 45),
(98, '2019-04-13 11:42:28', 33, 25),
(99, '2019-04-13 11:42:28', 34, 76),
(100, '2019-05-13 11:42:28', 54, 55),
(101, '2019-04-13 11:42:28', 2, 55),
(102, '2019-01-13 11:42:28', 1, 45),
(103, '2019-03-13 11:42:28', 100, 69),
(104, '2019-03-13 11:42:28', 102, 2);

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
-- Estructura de tabla para la tabla `estad_sitios_dir`
--

CREATE TABLE `estad_sitios_dir` (
  `ID_EVENTO` int(11) NOT NULL,
  `FECHA` datetime NOT NULL,
  `DIRECCION_FUENTE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estad_tipo_´prod`
--

CREATE TABLE `estad_tipo_´prod` (
  `ID_EVENTO` int(11) NOT NULL,
  `FECHA_EVENTO` datetime NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_TIPO_PROD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(8, 'Retro'),
(9, 'Historia'),
(10, 'Documental'),
(11, 'Informativa');

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
(16, 'Superheroes'),
(17, 'Rock'),
(19, 'Pop Rock'),
(20, 'Folk Rock'),
(21, 'Bolero'),
(22, 'Drama'),
(23, 'Suspenso'),
(24, 'Ciencia Ficcion'),
(25, 'Thiller'),
(26, 'Romance'),
(27, 'Guerra'),
(28, 'Animada'),
(29, 'Accion'),
(30, 'Aventura'),
(31, 'Musical');

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

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`ID_METODO`, `NOMBRE_METODO`) VALUES
(1, 'TARJETA DE CREDITO-DEBITO'),
(2, 'OXXO'),
(3, 'PAYPAL');

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
(12, 'Reino Unido de Gran Bretaña e Irlanda del Nor'),
(13, 'Alemania'),
(14, 'Brasil'),
(15, 'Argentina'),
(16, 'Australia'),
(17, 'Bolivia'),
(18, 'Austria'),
(19, 'Bélgica'),
(20, 'Chile'),
(21, 'China'),
(22, 'Corea del Sur'),
(23, 'Corea del Norte'),
(24, 'Costa Rica'),
(25, 'Cuba'),
(26, 'Croacia'),
(27, 'Ecuador'),
(28, 'El Salvador'),
(29, 'Egipto'),
(30, 'Grecia'),
(31, 'Afganistán'),
(32, 'Haití'),
(33, 'India'),
(34, 'Irak'),
(35, 'Albania'),
(36, 'Japon'),
(37, 'Jamaica'),
(38, 'Marruecos'),
(39, 'Mónaco'),
(40, 'Nueva Zelanda'),
(41, 'Países Bajos'),
(42, 'Andorra'),
(43, 'Paraguay'),
(44, 'Perú'),
(45, 'Polonia'),
(46, 'Angola'),
(47, 'Rusia'),
(48, 'Suiza'),
(49, 'Suecia'),
(50, 'Uruguay'),
(51, 'Antigua y Barbuda'),
(52, 'Arabia Saudita'),
(53, 'Argelia'),
(54, 'Armenia'),
(55, 'Azerbaiyán'),
(56, 'Bahamas'),
(57, 'Bangladés'),
(58, 'Barbados'),
(59, 'Baréin'),
(60, 'Belice'),
(61, 'Benín'),
(62, 'Bielorrusia'),
(63, 'Birmania'),
(64, 'Bosnia y Herzegovina'),
(65, 'Botsuana'),
(66, 'Brunéi'),
(67, 'Bulgaria'),
(68, 'Burkina Faso'),
(69, 'Burundi'),
(70, 'Bután'),
(71, 'Cabo Verde'),
(72, 'Camboya'),
(73, 'Camerún'),
(74, 'Qatar'),
(75, 'Chad'),
(76, 'Chipre'),
(77, 'Ciudad del Vaticano'),
(78, 'Comoras'),
(79, 'Costa de Marfil'),
(80, 'Dinamarca'),
(81, 'Dominica'),
(82, 'Emiratos Árabes Unidos'),
(83, 'Eritrea'),
(84, 'Eslovaquia'),
(85, 'Eslovenia'),
(86, 'Estonia'),
(87, 'Etiopía'),
(88, 'Filipinas'),
(89, 'Finlandia'),
(90, 'Fiyi'),
(91, 'Gabón'),
(92, 'Gambia'),
(93, 'Georgia'),
(94, 'Ghana'),
(95, 'Granada'),
(96, 'Guyana'),
(97, 'Guinea'),
(98, 'Guinea-Bisáu'),
(99, 'Guinea Ecuatorial'),
(100, 'Honduras'),
(101, 'Hungría'),
(102, 'Indonesia'),
(103, 'Irán'),
(104, 'Irlanda'),
(105, 'Islandia'),
(106, 'Islas Marshall'),
(107, 'Islas Salomón'),
(108, 'Israel'),
(109, 'Jordania'),
(110, 'Kazajistán'),
(111, 'Kenia'),
(112, 'Kirguistán'),
(113, 'Kiribati'),
(114, 'Kuwait'),
(115, 'Laos'),
(116, 'Lesoto'),
(117, 'Letonia'),
(118, 'Líbano'),
(119, 'Liberia'),
(120, 'Libia'),
(121, 'Liechtenstein'),
(122, 'Lituania'),
(123, 'Luxemburgo'),
(124, 'Madagascar'),
(125, 'Malasia'),
(126, 'Malaui'),
(127, 'Maldivas'),
(128, 'Malí'),
(129, 'Malta'),
(130, 'Marruecos'),
(131, 'Mauricio'),
(132, 'Mauritania'),
(133, 'Micronesia'),
(134, 'Moldavia'),
(135, 'Mongolia'),
(136, 'Montenegro'),
(137, 'Mozambique'),
(138, 'Namibia'),
(139, 'Nauru'),
(140, 'Nepal'),
(141, 'Nicaragua'),
(142, 'Níger'),
(143, 'Nigeria'),
(144, 'Noruega'),
(145, 'Omán'),
(146, 'Pakistán'),
(147, 'Palaos'),
(148, 'Papúa Nueva Guinea'),
(149, 'República Centroafricana'),
(150, 'República Checa'),
(151, 'República de Macedonia'),
(152, 'República del Congo'),
(153, 'República Democrática del Congo'),
(154, 'República Dominicana'),
(155, 'República Sudafricana'),
(156, 'Ruanda'),
(157, 'Rumanía'),
(158, 'Samoa'),
(159, 'San Cristóbal y Nieves'),
(160, 'San Marino'),
(161, 'San Vicente y las Granadinas'),
(162, 'Santa Lucía'),
(163, 'Santo Tomé y Príncipe'),
(164, 'Senegal'),
(165, 'Serbia'),
(166, 'Seychelles'),
(167, 'Sierra Leona'),
(168, 'Singapur'),
(169, 'Siria'),
(170, 'Somalia'),
(171, 'Sri Lanka'),
(172, 'Suazilandia'),
(173, 'Sudán'),
(174, 'Sudán del Sur'),
(175, 'Surinam'),
(176, 'Tailandia'),
(177, 'Tanzania'),
(178, 'Tayikistán'),
(179, 'Timor Oriental'),
(180, 'Togo'),
(181, 'Tonga'),
(182, 'Trinidad y Tobago'),
(183, 'Túnez'),
(184, 'Turkmenistán'),
(185, 'Turquía'),
(186, 'Tuvalu'),
(187, 'Ucrania'),
(188, 'Uganda'),
(189, 'Uzbekistán'),
(190, 'Vanuatu'),
(191, 'Vietnam'),
(192, 'Yemen'),
(193, 'Yibuti'),
(194, 'Zambia'),
(195, 'Zimbabue');

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
(1, 'Anabelle', 24, 25, 'Alfre Woodard\r\nTony Amendola\r\nEric Ladin', 'La cinta empieza con la misma secuencia vista en The Conjuring en la cual tres jóvenes son entrevistados por Ed y Lorraine Warren (Patrick Wilson y Vera Farmiga) sobre sus experiencias con una muñeca a la que habían llamado Annabelle y que supuestamente estaba poseída. ', 13, 2014, 7, 2, 5, 2, 25, '01.png', 0, 100),
(2, 'La Forma del Agua', 96, 97, 'Sally Hawkins\r\nMichael Shannon\r\nRichard Jenkins\r\nOctavia Spencer\r\nDoug Jones', 'Elisa es una joven muda que se enamora de un hombre anfibio que está recluido en un acuario en un laboratorio secreto, propiedad del Gobierno, en el que ella trabaja limpiando. Llevada por el amor, Elisa trama un plan para liberar al mutante.', 22, 2017, 1, 2, 2, 2, 73, '143.jpg', 0, 100),
(3, 'El laberinto del Fauno', 98, 99, 'Sergi López - Capitán Vidal\r\nMaribel Verdú - Mercedes\r\nIvana Baquero - Ofelia\r\nÁlex Angulo - Doctor Ferreiro\r\nAriadna Gil - Carmen de Vidal\r\nDoug Jones - Fauno y el hombre pálido', 'En la España de 1944, la joven Ofelia y su madre enferma llegan al lugar en el que se encuentra el nuevo esposo de su madre, un sádico oficial del Ejército que intenta aplastar el levantamiento de una guerrilla. Mientras explora un antiguo laberinto, Ofelia conoce al fauno Pan, quien le dice que ella es una legendaria princesa perdida y debe completar tres peligrosas tareas para obtener la inmortalidad.', 22, 2006, 9, 7, 6, 2, 73, '144.jpg', 0, 100),
(4, 'La Cumbre Escarlata', 100, 101, 'Mia Wasikowska como Edith Cushing\r\nTom Hiddleston como sir Thomas Sharpe\r\nCharlie Hunnam como el Dr. Alan McMichael\r\nJessica Chastain como lady Lucille Sharpe\r\nJim Beaver como Carter Cushing\r\nBurn Gorman como el Sr. Holly', 'Todo ocurre en Inglaterra durante el siglo XIX. Edith es una joven recién casada con sir Thomas, un hombre encantador. Edith se traslada a la mansión que la familia de él posee en Cumbria, región del norte de Inglaterra, y allí, Edith, que es capaz de hablar con los muertos, descubre que su esposo y la hermana de este, Lady Lucille, esconden un sombrío secreto; y además, que las casas embrujadas no sólo existen en las novelas, porque la que ella habita, respira, sangra... y nunca olvida.', 23, 2015, 9, 12, 8, 4, 73, '145.jpg', 0, 150),
(5, 'Hellboy: el Ejercito Dorado', 103, 102, 'Hellboy	como Ron Perlman	\r\nLiz Sherman como Selma Blair	\r\nTrevor Bruttenholm como John Hurt	\r\nAbraham \"Abe\" Sapiens como Doug Jones	\r\nJohann Krauss como Seth McFarlane', 'Hellboy y su equipo se enfrentan a un dictador despiadado y a su poderoso ejército.', 24, 2008, 9, 2, 1, 2, 73, '146.jpg', 0, 100),
(6, 'Mama', 104, 105, 'Jessica Chastain como Annabel.\r\nNikolaj Coster-Waldau como Lucas/Jeffrey.\r\nMegan Charpentier como Victoria', 'En el día en el que murieron sus padres, las hermanas Lilly y Victoria desaparecen en el bosque, provocando una búsqueda frenética de su Tío Lucas (Nikolaj Coster-Waldau) y su novia, Annabel (Jessica Chastain). Milagrosamente, cinco años después, las niñas son halladas vivas en una cabaña, y Lucas y Annabel las reciben en su casa. Pero mientras Annabel intenta reintroducir a los niños a una vida normal, ella descubre que alguien -- o algo -- todavía las quiere conservar en la oscuridad.', 13, 2013, 9, 2, 2, 3, 73, '147.jpg', 0, 100),
(7, 'Roma', 106, 107, 'Yalitza Aparicio como Cleodegaria.\r\nMarina de Tavira como la señora Sofía\r\nDaniela Demesa como «Sofi»\r\nDiego Cortina Autrey como «Toño»\r\nCarlos Peralta como «Paco»', 'En la colonia Roma, de Ciudad de México, dos empleadas domésticas ayudan a una madre a criar a sus cuatro hijos durante las largas ausencias de su esposo. Una de las jóvenes, Cleo, se hace cargo de los niños como si fueran propios, a pesar de estar atravesando un momento difícil.', 22, 2018, 10, 1, 6, 2, 74, '148.jpg', 0, 100),
(8, 'Gravity', 109, 108, 'Sandra Bullock como la Dra. Ryan Stone.\r\nGeorge Clooney como el astronauta Matt Kowalsky.\r\nEd Harris como la voz del control de la misión (en Houston).\r\nPaul Sharma como la voz de Shariff, el ingeniero del Explorer.', 'La doctora Ryan Stone es una ingeniera médica en su primera misión espacial. Su comandante es el veterano Matt Kowalsky, en su último viaje antes de retirarse. Una caminata espacial de rutina se convierte en un desastre y la nave queda destruida, dejando a Ryan y Matt atrapados en el espacio, sin ninguna conexión con la Tierra y sin esperanza de ser rescatados. Su temor se convierte en pánico, y se dan cuenta de que su camino a casa será una aventura en el espacio.', 24, 2013, 9, 2, 6, 3, 74, '149.jpg', 0, 135),
(9, 'La Favorita', 110, 111, 'Olivia Colman como la reina Ana\r\nEmma Stone como Abigail Masham\r\nRachel Weisz como Sarah Churchill\r\nNicholas Hoult como Robert Harley\r\nJoe Alwyn como Samuel Masham', 'A principios del s. XVIII, Inglaterra está en guerra con Francia y la enfermiza reina Anne delega sus responsabilidades en su amiga Lady Sarah. La llegada de una sirvienta dotada de un talento especial, Abigail, pone en peligro la posición de Sarah.', 14, 2018, 9, 12, 6, 2, 75, '150.jpg', 0, 100),
(10, 'The Lobster ', 112, 111, 'Colin Farrell como David.\r\nRachel Weisz como la Mujer miope.\r\nJessica Barden como la Mujer de la hemorragia nasal.\r\nOlivia Colman es el Gerente del Hotel.\r\nAshley Jensen es la Mujer de las galletas.\r\nAriane Labed es la Sirvienta.', 'En un futuro cercano los solteros no tienen cabida en la sociedad. Por esta razón, todos son arrestados y llevados a un hotel donde tienen 45 días para conocer a alguien y enamorarse de por vida. Si no lo consiguen, serán transformados en el animal que ellos escojan. David llega al hotel con su hermano, que se ha convertido en perro. El joven no encuentra una persona con quien empezar una relación y se escapa al bosque con un grupo de disidentes.', 20, 2015, 9, 52, 3, 4, 74, '151.jpg', 0, 150),
(11, 'Dumbo', 114, 113, 'Colin Farrell como Holt Farrier\r\nEva Green como Colette Marchant\r\nMichael Keaton como V.A. Vandevere\r\nDanny DeVito como Max Medici\r\nNico Parker como Milly Farrier', 'El dueño de un circo en aprietos contrata a un hombre y sus dos hijos para cuidar de un elefante recién nacido que puede volar, que pronto se convierte en la atracción principal que revitaliza al circo.', 24, 2019, 9, 2, 10, 2, 76, '152.jpg', 0, 100),
(12, 'El Extraño Mundo de Jack', 76, 76, 'Personajes:\r\nJack\r\nSally\r\nDoctor Flinklenstein\r\nOogie Boogie\r\nAlcalde', 'El rey de las calabazas en el pueblo de las brujas planea secuestrar a Santa Claus y al mismo tiempo llevar pánico en vez de alegría.', 28, 1993, 9, 2, 2, 2, 76, '153', 0, 80),
(13, 'El Joven Manos de Tijera', 115, 116, 'Johnny Depp como Edward Scissorhands\r\nWinona Ryder como Kim Boggs\r\nDianne Wiest como Peg Boggs\r\nAlan Arkin como Bill Boggs\r\nAnthony Michael Hall como Jim', 'La creación incompleta de un inventor fallecido se convierte instantáneamente en una celebridad cuando una mujer alegre lo lleva a su casa', 24, 1990, 9, 2, 6, 4, 76, '154.jpg', 0, 150),
(14, 'Charly y la Fabrica de Chocolates', 116, 117, 'Johnny Depp como Willy Wonka\r\nFreddie Highmore como Charlie Bucket\r\nDavid Kelly como Abuelo Joe Bucket\r\nHelena Bonham Carter como Sra. Bucket\r\nNoah Taylor como Sr. Bucket\r\nChristopher Lee como Dr. Wilbur Wonka\r\nAdam Godley como Sr. Teavee', 'Un niño pobre y cuatro jovencitos ricos ganan un paseo a la increíble empresa de un raro fabricante de dulces.', 30, 2005, 9, 2, 8, 2, 76, '155.jpg', 0, 100),
(15, 'Miss Peregrine y los niños peculiares', 118, 119, 'Eva Green como Miss Alma Lefay Peregrine\r\nAsa Butterfield como Jacob Portman\r\nSamuel L. Jackson como Barron/The Wight\r\nElla Purnell como Emma Bloom\r\nChris O\'Dowd como Franklin Portman', 'Mientras investiga un misterio que le legó su abuelo, un adolescente encuentra en la costa de Gales una isla en la que habitan niños con poderes especiales y terribles enemigos que los amenazan.', 24, 2016, 9, 2, 8, 4, 76, '156.jpg', 0, 150),
(16, 'La leyenda del jinete sin cabeza', 116, 76, 'Johnny Depp como Ichabod Crane\r\nChristina Ricci como Katrina Van Tassel\r\nMarc Pickering como Joven Masbath\r\nMiranda Richardson como Lady Van Tassel\r\nChristopher Walken como Jinete sin cabeza', 'Un policía de la época colonial descubre una serie de horribles decapitaciones en una villa del norte de Nueva York', 25, 1999, 9, 2, 9, 2, 76, '157', 0, 100),
(17, 'Sombras tenebrosas', 116, 118, 'Johnny Depp como Barnabas Collins	\r\nMichelle Pfeiffer como Elizabeth Collins\r\nEva Green como Angelique Bouchard\r\nJonny Lee Miller como Roger Collins\r\n', 'Barnabas Collins, un mujeriego rico y poderoso, dirige la ciudad de Collinsport. Barnabas sella su propio destino cuando rompe el corazón de una bruja llamada Angelique. Ella lo transforma en un vampiro y lo entierra vivo. Dos siglos más tarde, Barnabas escapa de su tumba y descubre que Collinsport, en 1972, es un lugar muy diferente y su hacienda está en ruinas', 23, 2012, 9, 2, 8, 4, 76, '158.jpg', 0, 150),
(18, 'Avatar', 120, 121, 'Sam Worthington como Jake Sully\r\nZoe Saldana como Neytiri Omaticaya\r\nSigourney Weaver como Dr. Grace Augustine\r\nStephen Lang como Miles Quaritch\r\nMichelle Rodriguez como Trudy Chacón', 'En un exuberante planeta llamado Pandora viven los Navi, seres que aparentan ser primitivos pero que en realidad son muy evolucionados. Debido a que el ambiente de Pandora es venenoso, los híbridos humanos/Navi, llamados Avatares, están relacionados con las mentes humanas, lo que les permite moverse libremente por Pandora. Jake Sully, un exinfante de marina paralítico se transforma a través de un Avatar, y se enamora de una mujer Navi', 24, 2009, 9, 2, 6, 4, 77, '159.jpg', 0, 150),
(19, 'Titanic', 122, 123, 'Leonardo DiCaprio como Jack Dawson\r\nKate Winslet como Rose DeWitt Bukater\r\nBilly Zane como Caledon Nathan\r\nFrances Fisher como Ruth DeWitt Bukater\r\nGloria Stuart como Rose Dawson Calvert\r\nBill Paxton como Brock Lovett', 'Una joven de la alta sociedad abandona a su arrogante pretendiente por un artista humilde en el trasatlántico que se hundió durante su viaje inaugural', 26, 1997, 9, 2, 1, 2, 77, '160.jpg', 0, 100),
(20, 'Terminator', 124, 125, 'Arnold Schwarzenegger como Terminator T-800\r\nMichael Biehn como Kyle Reese\r\nLinda Hamilton como Sarah J. Connor\r\nEarl Boen como Dr. Peter Silberman', 'Un asesino cibernético del futuro es enviado a Los Ángeles, para matar a la mujer que procreará a un líder.', 29, 1984, 9, 2, 10, 2, 77, '161.png', 0, 100),
(21, 'La noche de los muertos vivientes', 126, 127, 'Duane Jones como Ben.\r\nJudith O\'Dea como Barbra.\r\nKarl Hardman como Harry Cooper.\r\nMarilyn Eastman como Helen Cooper.\r\nKeith Wayne como Tom.\r\nJudith Ridley como Judy.', 'Unos zombis tienen a siete personas aterrorizadas en una granja; en la nueva versión del clásico de terror de 1968.', 13, 1990, 9, 2, 2, 2, 78, '162.jpg', 0, 100),
(22, 'El amanecer de los muertos', 128, 78, 'David Emge - Stephen Andrews\r\nKen Foree - Peter Washington\r\nScott Reiniger - Roger DeMarco\r\nGaylen Ross - Francine Parker\r\nDavid Crawford - Dr. James Foster\r\nDavid Early - Sr. Sidney Berman', 'Cuatro personas reforzan un centro comercial abandonado y se enfrentan a un ejército de zombies carnívoros.', 13, 1978, 9, 2, 2, 2, 78, '163.jpg', 0, 100),
(23, 'Silencio', 129, 79, 'Andrew Garfield como Padre Sebastião Rodrigues\r\nAdam Driver como Padre Francisco Garupe\r\nLiam Neeson como Padre Cristóvão Ferreira\r\nCiarán Hinds como el jesuita Alessandro\r\nYoshi Oida como Ichizo.', 'Dos jesuitas portugueses, los padres Rodrigues y Garupe, viajan a Japón en el siglo XVII para salvar a su mentor, quien marchó a Asia para evangelizar a la población pero ha perdido la fe, amedrentado por las torturas y amenazas. Cuando llegan a la isla, ellos mismos padecen en sus carnes los suplicios experimentados por su compañero, y deben decidir entre renunciar a su fe o perder la vida', 22, 2016, 10, 8, 9, 2, 80, '164.jpg', 0, 100),
(24, 'Volver al futuro', 130, 131, 'Michael J. Fox como Marty McFly\r\nChristopher Lloyd como Emmett «Doc» Brown\r\nCrispin Glover como George McFly\r\nLea Thompson como Lorraine Baines\r\nThomas F. Wilson como Biff Tannen', 'Una máquina del tiempo transporta a un adolescente a los años 50, cuando sus padres todavía estudiaban en la secundaria.', 24, 1985, 9, 2, 9, 4, 81, '165.jpg', 0, 150),
(25, 'E.T., el extraterrestre', 132, 133, 'Henry Thomas como Elliott\r\nPat Welsh como E.T.\r\nRobert MacNaughton coomo Michael\r\nDrew Barrymore	como Gertie', 'El encuentro cercano de un niño con un alienígena perdido deriva en una amistad única.', 30, 1982, 9, 1, 9, 4, 81, '166.jpg', 0, 150),
(26, 'El Pianista', 134, 135, 'Adrien Brody: W?adys?aw Szpilman\r\nThomas Kretschmann: el capitán Wilm Hosenfeld\r\nFrank Finlay: el padre de W?adys?aw Szpilman\r\nMaureen Lipman: la madre de W?adys?aw Szpilman\r\nEmilia Fox: Dorota', 'Un judío polaco, pianista profesional, lucha por la supervivencia en Varsovia frente a la invasión nazi. Después de, gracias a unos amigos, haber evitado la deportación, el pianista debe vivir oculto y constantemente expuesto al peligro', 22, 2002, 9, 14, 9, 2, 82, '167.jpg', 0, 100),
(27, 'El Renacido', 122, 83, 'Leonardo DiCaprio como Hugh Glass\r\nTom Hardy como John Fitzgerald\r\nDomhnall Gleeson como Capitán Andrew Henry\r\nWill Poulter como Jim Bridger\r\nForrest Goodluck como Hawk Glass\r\nDuane Howard como Elk Dog', 'El trampero Hugh Glass intenta vengarse de sus compañeros, quienes lo abandonaron herido en el bosque después de que lo atacó un oso, pensando que moriría, víctima de las lesiones y de la crudeza del entorno y del invierno. Sin embargo, el rencor que siente es más fuerte que cualquier adversidad, y Glass no permitirá que nada ni nadie le prive de saciar su odio.', 23, 2015, 9, 9, 9, 2, 83, '168.jpg', 0, 100),
(28, 'Amores Perros', 136, 137, 'Gael García Bernal como Octavio.\r\nAdriana Barraza como la mamá de Octavio.\r\nEmilio Echevarría como Chivo.\r\nGoya Toledo como Valeria Amaya.\r\nVanessa Bauche como Susana.\r\nMarco Pérez como Ramiro.', 'Una historia audaz, de gran intensidad emocional y ambición, que entrelaza y explora las vidas de tres personajes dispares a partir de un accidente automovilístico en la Ciudad de México, llevándolos a imprevistas situaciones dramáticas instigadas por el destino, aparentemente intrascendente, de un perro llamado Cofi.', 23, 2000, 9, 1, 2, 2, 83, '169', 0, 100),
(29, 'Rudo y Curso', 136, 83, 'Gael García Bernal como Tato \"Cursi\" Verdusco.\r\nDiego Luna como Beto \"Rudo\" Verdusco.\r\nGuillermo Francella como Darío \"Batuta\" Vidali.\r\nJessica Mas como Maya Vega.\r\nDolores Heredia como Doña Elvira.\r\nAdriana Paz como Toña, la esposa de Beto \"el Rudo\".', 'Dos hermanos, Beto, que quiere ser futbolista, y Toto, que sueña con ser cantante de música norteña, desean llevar a cabo sus sueños para mejorar su situación económica. Sin embargo, la rivalidad fraternal es lo que realmente los pone a prueba.', 14, 2008, 9, 1, 2, 2, 83, '170.jpg', 0, 100),
(30, 'Babel', 138, 136, 'Brad Pitt, como Richard.\r\nCate Blanchett, como Susan.\r\nAdriana Barraza, como Amelia.\r\nGael García Bernal, como Santiago.\r\nElle Fanning, como Debbie.\r\nNathan Gamble, como Mike.', 'Un accidente conecta a cuatro grupos de personas en tres continentes distintos: dos jóvenes marroquíes, una pareja estadounidense, una adolescente japonesa sorda y su padre, y a una niñera mexicana que se lleva a los niños a su cargo más allá de la frontera sin el permiso de sus padres.', 23, 2006, 9, 1, 2, 2, 83, '171.jpg', 0, 100),
(31, 'Dolor y Gloria', 139, 140, 'Antonio Banderas (Salvador Mallo)\r\nPenélope Cruz (madre de joven)\r\nRaúl Arévalo (padre)\r\nLeonardo Sbaraglia (Federico)\r\nAsier Etxeandia (Alberto Crespo)', 'Salvador Mallo, un director de cine en su ocaso, recuerda su trayectoria vital y profesional desde su infancia en el pueblo valenciano de Paterna en los años 60. Salvador tiene vivos recuerdos de sus primeros amores, su primer deseo, su primer amor adulto en el Madrid de los 80 y su temprano interés por el cine.', 22, 2019, 9, 7, 11, 2, 84, '172.jpg', 0, 100),
(32, 'Todo sobre mi madre', 84, 141, 'Cecilia Roth: Manuela.\r\nMarisa Paredes: Huma Rojo.\r\nAntonia San Juan: Agrado.\r\nPenélope Cruz: Rosa.\r\nCandela Peña: Nina', 'Una madre soltera reaviva viejas relaciones y hace nuevas a su regreso a Barcelona buscando al padre de su hijo muerto.', 14, 1999, 9, 7, 11, 2, 84, '173.jpg', 0, 100),
(33, 'Volver', 141, 84, 'Penélope Cruz (Raimunda)\r\nCarmen Maura (Irene)\r\nLola Dueñas (Sole)\r\nBlanca Portillo (Agustina)\r\nYohana Cobo (Paula)\r\nPepa Aniorte (Vecina)\r\nMaría Isabel Díaz (Regina)', 'El fantasma de una mujer (Carmen Maura) regresa a su ciudad natal para resolver unos asuntos que quedaron pendientes a la hora de su muerte. Ella se muda con su hija (Lola Dueñas) y procede a ayudarla con su salón de belleza haciéndose pasar por una inmigrante rusa.', 22, 2006, 9, 7, 11, 2, 84, '174.jpg', 0, 100),
(34, 'King Kong', 134, 85, 'Carl Denham (Jack Black)\r\nJack Driscoll (Adrien Brody)\r\nCapitán Englehorn (Thomas Kretschmann)\r\nPreston (Colin Hanks)\r\nHayes (Evan Parke)', 'Un grupo de exploradores, liderado por un extrovertido director de cine, visitan Skull Island para investigar todo lo relacionado con las leyendas del gorila gigante llamado King Kong. Ahí encuentran una jungla llena de criaturas prehistóricas.', 24, 2005, 10, 2, 9, 4, 85, '175.jpg', 0, 150),
(35, 'El Señor de los Anillos', 143, 142, 'Elijah Wood como el hobbit Frodo Bolsón.\r\nIan McKellen como el mago Gandalf el Gris.\r\nSean Astin como el hobbit Samsagaz Gamyi.\r\nSean Bean como el hombre Boromir.\r\nLiv Tyler como la peredhil Arwen Undómiel.\r\nViggo Mortensen como el dúnadan Aragorn.', 'Basada en la primer historia épica de J.R.R. Tolkien, sobre la búsqueda para poseer o destruir todo el poder del Anillo.', 30, 2001, 9, 2, 5, 4, 85, '176.jpg', 0, 150),
(36, 'El Señor de los Anillos: el retorno del Rey', 142, 143, 'Elijah Wood como el hobbit Frodo Bolsón.\r\nViggo Mortensen como el dúnadan Aragorn.\r\nIan McKellen como el mago Gandalf el Gris.\r\nSean Astin como el hobbit Samsagaz Gamyi.\r\nAndy Serkis como Gollum.\r\nJohn Rhys-Davies como el enano Gimli y la voz del ent Bárbol.\r\nOrlando Bloom como el elfo sinda Legolas.\r\nJohn Noble como el dúnadan Denethor II.\r\nMiranda Otto como la mujer Éowyn.', 'Frodo, Sam y Gollum se acercan al monte Doom, mientras Aragorn y los demás planean enfrentar a las tropas de Sauron.', 30, 2003, 9, 2, 5, 4, 85, '177.jpg', 0, 150),
(37, 'El Señor de los Anillos: las dos torres', 142, 143, 'Elijah Wood como el hobbit Frodo Bolsón.\r\nSean Astin como el hobbit Samsagaz Gamyi.\r\nViggo Mortensen como el dúnadan Aragorn.\r\nIan McKellen como el mago Gandalf el Gris.\r\nDominic Monaghan como el hobbit Meriadoc \"Merry\" Brandigamo.\r\nBilly Boyd como el hobbit Peregrin \"Pippin\" Tuk.\r\nOrlando Bloom como el elfo sinda Legolas.\r\nJohn Rhys-Davies como el enano Gimli y la voz del ent Bárbol.\r\nAndy Serkis como Gollum.\r\nBernard Hill como el hombre Théoden.\r\nMiranda Otto como la mujer Éowyn.', 'Gollum guía a Frodo y Sam a Mordor mientras Aragorn y sus compañeros defienden a Rohan del bestial ejército de Saruman.', 30, 2002, 9, 2, 5, 4, 85, '178.jpg', 0, 150),
(38, 'El hobbit: un viaje inesperado', 144, 145, 'Martin Freeman como el hobbit Bilbo Bolsón\r\nIan McKellen como el mago Gandalf el Gris\r\nRichard Armitage como el enano Thorin\r\nStephen Hunter como el obeso enano Bombur\r\nGraham McTavish como el enano Dwalin\r\nJames Nesbitt como el enano Bofur', 'Bilbo Bolsón lleva una vida sencilla con sus compañeros hobbits en la comarca, hasta que el mago Gandalf llega y lo convence de unirse a un grupo de enanos para recuperar el reino de Erebor. El viaje lleva a Bilbo en un camino a través de tierras peligrosas llenas de orcos, goblins y otras amenazas, además de su encuentro con Gollum y un sencillo anillo de oro que está unido al destino de la Tierra Media de una forma que Bilbo no puede imaginarse.', 24, 2012, 9, 2, 5, 4, 85, '179.jpg', 0, 150),
(39, 'El Hobbit: la batalla de los cinco ejércitos', 145, 144, 'Martin Freeman como el hobbit Bilbo Bolsón.\r\nIan Holm como Bilbo Bolsón anciano.\r\nRichard Armitage como el enano Thorin.\r\nJames Nesbitt como el enano Bofur.\r\nGraham McTavish como el enano Dwalin.\r\nKen Stott como el enano Balin.\r\nWilliam Kircher como el enano Bifur.\r\nStephen Hunter como el enano Bombur.\r\nDean O\'Gorman como el enano Fíli.\r\nAidan Turner como el enano Kíli.\r\nJohn Callen como el enano Óin.\r\nPeter Hambleton como el enano Glóin.', 'Mientras Smaug lanza su ira ardiente contra los ciudadanos de la Ciudad del Lago, Sauron envía legiones de orcos a atacar la Montaña Solitaria. La Tierra está en peligro cuando hombres, enanos y elfos deben decidir si se unen o son destruidos.', 24, 2014, 9, 2, 5, 4, 85, '180.jpg', 0, 150),
(40, 'El hobbit: la desolación de Smaug', 144, 145, 'Martin Freeman (1971-) como el hobbit Bilbo Bolsón.\r\nIan McKellen (1939-) como el mago Gandalf el Gris.\r\nRichard Armitage (1971-) como el enano Thorin Escudo de Roble.\r\nKen Stott (1955-) como el enano historiador Balin, canoso y de barba bifurcada; hermano de Dwalin.\r\nJames Nesbitt (1965-) como el enano Bofur, con mostachos y sombrero de pirata.\r\nGraham McTavish (1961-) como el enano Dwalin, con tatuaje en la calva; hermano de Balin.', 'Bilbo y sus compañeros continúan su viaje hacia el este y enfrentan muchos peligros de camino a la Montaña Solitaria, culminando con un encuentro con el temible dragón Smaug.', 24, 2013, 9, 2, 5, 4, 85, '181.jpg', 0, 150),
(41, 'Mi vecino Totoro', 86, 86, 'Satsuki Kusakabe\r\nMei Kusakabe\r\nTatsuo Kusakabe\r\nYasuko Kusakabe', 'Esta historia animada del director Hayao Miyazaki sigue a las estudiantes y hermanas Satsuke y Mei mientras se establecen en su casa de campo con su padre y esperan a que su madre se recupere de una enfermedad en un hospital del área. Cuando las hermanas exploran su nueva casa, descubren y hacen amistad con unos duendes juguetones, y en el bosque cercano encuentran a una enorme criatura conocida como Totoro.', 28, 1988, 9, 36, 4, 2, 86, '182.jpg', 0, 50),
(42, 'La Mula', 146, 147, 'Clint Eastwood como Earl Stone\r\nBradley Cooper como Agente Colin Bates\r\nLaurence Fishburne como Agente especial al mando\r\nMichael Peña como Agente Treviño\r\nDianne Wiest como Mary\r\nAndy García como Laton\r\nAlison Eastwood como Iris', 'Un hombre de 88 con problemas económicos acepta trabajar transportando droga para un cartel mexicano en Illinois. Con el dinero fácil que obtiene trata de ayudar a sus familiares, pero un agente de la DEA le sigue la pista.', 22, 2018, 9, 2, 9, 2, 87, '183.jpg', 0, 100),
(43, 'American Sniper', 87, 146, 'Bradley Cooper es Chris Kyle\r\nCole Konis es Chris Kyle\r\nSienna Miller es Taya Renae Kyle\r\nMax Charles es Colton Kyle\r\nLuke Grimes es Marc Lee\r\nSam Jaeger es Capitán\r\nKyle Gallner es Winston', 'El francotirador y SEAL de la Armada estadounidense Chris Kyle salva muchas vidas en los campos de batalla en Irak mientras se esfuerza por ser un buen marido y padre con sus seres queridos de regreso en Estados Unidos.', 27, 2014, 10, 2, 9, 4, 87, '184.jpg', 0, 150),
(44, 'Glee: The 3D Concert Movie', 148, 149, 'Dianna Agron\r\nLea Michele\r\nCory Monteith\r\nChris Colfer\r\nNaya Rivera\r\nHeather Morris\r\nChord Overstreet', 'La película muestra el último concierto de la gira Glee Live! In Concert! y fue presentada en formato 3D. Se estrenó el 12 de agosto de 2011 en Estados Unidos. ', 31, 2011, 2, 2, 6, 2, 88, '185.jpg', 0, 100),
(45, 'Comer, Rezar, Amar', 150, 88, 'Julia Roberts\r\nJavier Bardem\r\nJames Franco\r\nRichard Jenkins\r\nBill Crudup\r\nViola Davis', 'Elizabeth, de treinta y tantos años, deja atrás un matrimonio de siete años, un divorcio desgarrador y un desastroso romance posterior. Necesita alejarse de todo un poco, así que decide dar el gran paso, respirar hondo, dejar todo y marcharse de Nueva York.', 26, 2010, 9, 2, 6, 2, 88, '186.jpg', 0, 100),
(46, 'Un Corazon Normal', 151, 152, 'Mark Ruffalo como Ned Weeks.\r\nMatt Bomer como Felix Turner.\r\nTaylor Kitsch como Bruce Niles.\r\nJim Parsons como Tommy Boatwright.\r\nAlfred Molina como Ben Weeks.\r\nJulia Roberts como la doctora Emma Brookner.\r\nJoe Mantello como Mickey Marcus.', 'A principios de los años ochenta, una doctora y otros neoyorquinos atestiguan los efectos del VIH y el SIDA en la comunidad homosexual.', 22, 2014, 9, 2, 9, 2, 88, '187.jpg', 0, 100),
(47, 'Spider-Man: un nuevo universo', 153, 154, 'Shameik Moore como Miles Morales / Spider-Man\r\nJake Johnson como Peter B. Parker / Spider-Man\r\nHailee Steinfeld como Gwen Stacy / Spider-Gwen\r\nLiev Schreiber como Wilson Fisk / Kingpin\r\nMahershala Ali como Aaron Davis / Prowler\r\nBrian Tyree Henry como Jefferson Davis\r\n', 'Luego de ser mordido por una araña radioactiva, el joven Miles Morales desarrolla misteriosos poderes que lo transforman en el Hombre Araña. Ahora deberá usar sus nuevas habilidades ante el malvado Kingpin, un enorme demente que puede abrir portales hacia otros universos.', 28, 2018, 9, 2, 7, 2, 89, '188.jpg', 0, 100),
(48, 'El Origen de los Guardianes', 89, 89, 'Jack Frost\r\nNorte (Santa Claus)\r\nHada\r\nConejo de Pascua\r\n', 'Una oscura amenaza pretende robarles a los niños sus esperanzas y sus sueños: es el perverso Sombra, que quiere conquistar el mundo sembrando el miedo. Los guardianes solicitan ayuda al reticente Jack Escarcha para enfrentarse a Sombra.', 28, 2012, 9, 2, 6, 2, 89, '189.jpg', 0, 100),
(49, 'Iron Man: el hombre de hierro', 155, 156, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nTerrence Howard como Coronel James \"Rhodey\" Rhodes\r\nJeff Bridges como Obadiah Stane / Iron Monger\r\nShaun Toub como Yinsen\r\nGwyneth Paltrow como Virginia \"Pepper\" Potts\r\nPaul Bettany como J.A.R.V.I.S.', 'Un empresario millonario construye un traje blindado y lo usa para combatir el crimen y el terrorismo.', 16, 2008, 9, 2, 7, 2, 90, '190.jpg', 0, 120),
(50, 'Iron Man 2', 155, 159, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nGwyneth Paltrow como Pepper Potts\r\nDon Cheadle as James \"Rhodey\" Rhodes\r\nScarlett Johansson como Natasha Romanoff\r\nSamuel L. Jackson como Nick Fury\r\n\r\n', 'Con el mundo ahora consciente de que él es Iron Man, el millonario inventor Tony Stark debe forjar nuevas alianzas y confrontar a un enemigo nuevo y poderoso.', 16, 2010, 9, 2, 7, 2, 90, '191.jpg', 0, 120),
(51, 'Chef ', 155, 167, 'Jon Favreau es Carl Casper.\r\nRobert Downey Jr. es Marvin.\r\nJohn Leguizamo es Martin.\r\nBobby Cannavale es Tony\r\nEmjay Anthony es Percy\r\nScarlett Johansson es Molly', 'El chef Carl Casper deja su trabajo en un famoso restaurante de Los Ángeles y termina asociándose con su exmujer, su amigo y su hijo para montar un puesto de comida ambulante, donde recupera sus raíces y su pasión.', 22, 2014, 9, 2, 6, 2, 90, '192.jpg', 0, 100),
(52, 'El Libro de la Selva', 167, 90, 'Jon Favreau como Pygmy Hog\r\nNeel Sethi como Mowgli.\r\nBill Murray como Baloo.\r\nBen Kingsley como Bagheera.\r\nIdris Elba como Shere Khan.\r\nScarlett Johansson como Kaa.\r\nLupita Nyong\'o como Raksha.\r\nChristopher Walken como Rey Louie.', 'Después de ser rescatado por la pantera Bagheera en la selva, una manada de lobos cría al recién nacido Mowgli. La vida feliz y apacible de Mowgli junto a su familia adoptiva se rompe en mil pedazos cuando llega el peligroso tigre Shere Khan.', 24, 2016, 9, 2, 10, 4, 90, '193.jpg', 0, 100),
(53, 'Capitan America: El primer vengador', 164, 161, 'Chris Evans como Steve Rogers \r\nHugo Weaving como Johann Schmidt\r\nHayley Atwell como Peggy Carter\r\nSebastian Stan como el Sargento James\r\nDominic Cooper como Howard Stark', 'Tras tres meses de someterse a un programa de entrenamiento físico y táctico, encomiendan a Steve Rogers su primera misión como Capitán América. Armado con un escudo indestructible, emprende la guerra contra la perversa organización HYDRA.', 16, 2011, 9, 2, 7, 2, 91, '194.png', 0, 120),
(54, 'Jumanji', 174, 173, 'Robin Williams como Alan Parrish\r\nBonnie Hunt como Sarah Whittle\r\nKirsten Dunst como Judy Sheperd \r\nBradley Pierce como Peter Sheperd', 'Una historia de Chris Allsburg sobre un juego que libera una estampida de peligros de la selva contra sus jugadores.', 24, 1995, 9, 2, 9, 2, 173, '195.jpg', 0, 80),
(55, 'The Avengers', 155, 169, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nChris Evans como Steve Rogers/Capitán América\r\nMark Ruffalo como Bruce Banner / Hulk\r\nChris Hemsworth como Thor\r\nScarlett Johansson como Natasha Romanoff\r\nJeremy Renner como Clint Barton\r\nTom Hiddleston como Loki\r\nSamuel L. Jackson como Nick Fury', 'El director de la Agencia SHIELD decide reclutar a un equipo para salvar al mundo de un desastre casi seguro cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial.', 16, 2012, 9, 2, 7, 2, 92, '196.jpg', 0, 150),
(56, 'Avengers: era de Ultron', 157, 158, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nChris Evans como Steve Rogers/Capitán América\r\nMark Ruffalo como Bruce Banner / Hulk\r\nChris Hemsworth como Thor\r\nScarlett Johansson como Natasha Romanoff\r\nJeremy Renner como Clint Barton\r\nTom Hiddleston como Loki\r\nSamuel L. Jackson como Nick Fury\r\nElizabeth Olsen como Wanda Maximoff\r\nPaul Bettany como J.A.R.V.I.S. y Vision\r\nJames Spader como Ultron', 'Los Vengadores se reúnen de nuevo y juntan sus fuerzas con las de los recién llegados Quicksilver y Bruja Escarlata para luchar contra un robot maquiavélico llamado Ultrón, el cual Tony Stark creó con el fin de defender la paz, pero resultó defectuoso y ahora pretende exterminar a toda la humanidad.', 16, 2015, 9, 2, 7, 2, 92, '197.jpg', 0, 150),
(57, 'Thor', 169, 100, 'Chris Hemsworth como Thor\r\nTom Hiddleston como Loki\r\nNatalie Portman como Jane Foster\r\nStellan Skarsgård como Erik Selvig\r\nIdris Elba como Heimdall\r\nKat Dennings como Darcy Lewis\r\nAnthony Hopkins como Odín', 'Tras desatar una antigua guerra, el codicioso guerrero Thor es desterrado a la Tierra por su padre para que viva entre los hombres y descubra así el verdadero sentido de la humildad. Allí, sin sus poderes, Thor deberá enfrentarse a las fuerzas más oscuras que su mayor enemigo le enviará desde Asgard.', 16, 2011, 9, 2, 7, 2, 175, '198.jpg', 0, 150),
(58, 'Iron Man 3', 155, 156, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nGwyneth Paltrow como Virginia \"Pepper\" Potts\r\nDon Cheadle como James \"Rhodey\" Rhodes\r\nGuy Pearce como el Aldrich Killian\r\nStéphanie Szostak como Brandt\r\nJames Badge Dale como Savin\r\nJon Favreau como Happy Hogan', 'El descarado y brillante Tony Stark, tras ver destruido todo su universo personal, debe encontrar y enfrentarse a un enemigo cuyo poder no conoce límites. Este viaje pondrá a prueba su entereza una y otra vez, y le obligará a confiar en su ingenio.', 16, 2013, 9, 2, 7, 2, 176, '199.jpg', 0, 150),
(59, 'Thor: un mundo oscuro', 169, 100, 'Chris Hemsworth como Thor\r\nTom Hiddleston como Loki\r\nNatalie Portman como Jane Foster\r\nStellan Skarsgård como Erik Selvig\r\nIdris Elba como Heimdall\r\nKat Dennings como Darcy Lewis\r\nAnthony Hopkins como Odín', 'Malekith, un enemigo más antiguo que el universo, regresa a la Tierra para cumplir su plan destructor. Thor debe enfrentarse a un rival al que ni siquiera Odín parece poder detener y, desesperado, libera a su hermano Loki para que lo ayude.', 16, 2013, 9, 2, 7, 2, 177, '200.jpg', 0, 150),
(60, 'Capitan America y el soldado del invierno', 164, 161, 'Chris Evans como Steve Rogers/Capitan America\r\nScarlett Johansson como Natasha Romanoff \r\nSebastian Stan como Bucky Barnes\r\nAnthony Mackie como Sam Wilson\r\nHayley Atwell como Peggy Carter\r\nSamuel L. Jackson como Nick Fury', 'El Capitán América, la Viuda Negra y un nuevo aliado, el Halcón, se enfrentan a un enemigo inesperado mientras ellos luchan por exponer una conspiración que pone en riesgo al mundo.', 16, 2014, 9, 2, 7, 2, 178, '201.jpg', 0, 150),
(61, 'Guardianes de la Galaxia Vol1', 35, 121, 'Chris Pratt como Peter Quill / Star-Lord\r\nZoe Saldaña como Gamora\r\nDave Bautista como Drax el Destructor\r\nVin Diesel como Groot\r\nBradley Cooper como Rocket Raccoon\r\nMichael Rooker como Yondu Udonta\r\nKaren Gillan como Nebula\r\nLee Pace como Ronan el Acusador', 'Un aventurero espacial se convierte en la presa de unos cazadores de tesoros después de robar el orbe de un villano traicionero. Cuando descubre su poder, debe hallar la forma de unir a unos rivales para salvar al universo.', 16, 2014, 9, 2, 7, 2, 94, '202.jpg', 0, 150),
(62, 'Capitan America: Civil War', 164, 155, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nChris Evans como Steve Rogers/Capitán América\r\nMark Ruffalo como Bruce Banner / Hulk\r\nChris Hemsworth como Thor\r\nScarlett Johansson como Natasha Romanoff\r\nJeremy Renner como Clint Barton\r\nTom Hiddleston como Loki\r\nSamuel L. Jackson como Nick Fury\r\nElizabeth Olsen como Wanda Maximoff\r\nPaul Bettany como J.A.R.V.I.S. y Vision\r\nJames Spader como Ultron\r\nChadwick Boseman como T\'Challa/Pantera Negra', 'Después de que otro incidente internacional, en el que se ven envueltos los Vengadores, produzca daños colaterales, la presión política obliga a poner en marcha un sistema para depurar responsabilidades', 16, 2016, 9, 2, 7, 2, 178, '203.jpg', 0, 150),
(63, 'Ant-Man', 171, 182, 'Paul Rudd como Scott Lang / Ant-Man\r\nEvangeline Lilly como Hope Van Dyne\r\nCorey Stoll como Darren Cross / Yellowjacket\r\nBobby Cannavale como Paxton\r\nMichael Peña como Luis\r\nTip \"T.I.\" Harris como Dave\r\n', 'Con la habilidad de encogerse de tamaño, pero crecer en fuerza, un estafador debe ayudar a su mentor a proteger el secreto de su traje de hombre hormiga y enfrentar un atraco que salvará al mundo', 16, 2015, 9, 2, 7, 2, 179, '204.jpg', 0, 150),
(64, 'Dr. Strange: Hechicero Supremo', 166, 183, 'Benedict Cumberbatch como Dr. Stephen Strange\r\nChiwetel Ejiofor como Karl Mordo\r\nRachel McAdams como Christine Palmer\r\nBenedict Wong como Wong\r\nMads Mikkelsen como Kaecilius\r\nTilda Swinton como Ancient One', 'Después de sufrir un accidente, un brillante y arrogante cirujano busca rehabilitarse mediante técnicas alternativas. Sus intentos le llevan a descubrir que ha sido designado para encabezar la lucha contra una fuerza oscura y sobrenatural', 16, 2016, 9, 2, 7, 2, 180, '205.jpg', 0, 150),
(65, 'Guardianes de la Galaxia Vol2 ', 35, 121, 'Chris Pratt como Peter Quill / Star-Lord\r\nZoe Saldaña como Gamora\r\nDave Bautista como Drax el Destructor\r\nVin Diesel como Groot\r\nBradley Cooper como Rocket Raccoon\r\nMichael Rooker como Yondu Udonta\r\nKaren Gillan como Nebula\r\n', 'Una poderosa raza alienígena contrata a los Guardianes para que protejan sus valiosas baterías de energía, pero cuando Rocket las roba, los alienígenas envían a sus tropas de combate a vengarse de los Guardianes. Mientras tratan de escapar con vida, intentan resolver el misterio de los verdaderos orígenes de Peter Quill', 16, 2017, 9, 2, 7, 2, 94, '206.jpg', 0, 150),
(66, 'Spiderman: Homecoming', 168, 155, 'Tom Holland como Peter Parker / Spider-Man\r\nMichael Keaton como Adrian Toomes / Buitre\r\nJon Favreau como Harold \"Happy\" Hogan\r\nZendaya como Michelle \"MJ\" Jones\r\nRobert Downey Jr. como Tony Stark / Iron Man\r\nMarisa Tomei como May Parke', 'Peter Parker asume su nueva identidad como Spider-Man y regresa a vivir con su tía después de su aventura con los Vengadores. Al volver, mientras sigue bajo la tutela de Tony Stark, descubre que ha surgido un nuevo y despiadado enemigo que pretende destruir todo lo que ama: el Buitre', 16, 2017, 9, 2, 7, 2, 184, '207.jpg', 0, 150),
(67, 'Thor: Ragnarok', 169, 151, 'Chris Hemsworth como Thor\r\nTom Hiddleston como Loki\r\nCate Blanchett como Hela\r\nIdris Elba como Heimdall\r\nTessa Thompson como Recolectora 142/Valquiria\r\nMark Ruffalo como Bruce Banner / Hulk', 'Thor está preso en el otro extremo del universo. Necesita regresar a tiempo para evitar que la todopoderosa Hela destruya su mundo, pero para escapar de su confinamiento y evitar el apocalipsis tendrá que vencer antes al Increíble Hulk en un torneo de gladiadores', 16, 2017, 9, 2, 7, 2, 185, '208.jpg', 0, 150),
(68, 'Black Panter', 162, 161, 'Chadwick Boseman como T\'Challa / Pantera Negra\r\nMichael B. Jordan como N\'Jadaka\r\nLupita Nyong\'o como Nakia\r\nDanai Gurira como Okoye\r\nMartin Freeman como Everett K. Ross\r\n', 'Despues de morir su padre, T\'Challa regresa a su nación, Wakanda. Una vez allí, descubre que tiene un nuevo y terrible enemigo, y T\'Challa asume la personalidad de Pantera Negra para salvar no solo al reino de Wakanda, sino a toda la humanidad', 16, 2018, 9, 2, 7, 2, 186, '209.jpg', 0, 150),
(69, 'Avengers: Infinity War', 155, 165, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nChris Evans como Steve Rogers/Capitán América\r\nMark Ruffalo como Bruce Banner / Hulk\r\nChris Hemsworth como Thor\r\nScarlett Johansson como Natasha Romanoff\r\nJeremy Renner como Clint Barton\r\nTom Hiddleston como Loki\r\nSamuel L. Jackson como Nick Fury\r\nElizabeth Olsen como Wanda Maximoff\r\nPaul Bettany como J.A.R.V.I.S. y Vision\r\nChadwick Boseman como T\'Challa / Pantera Negra\r\nJosh Brolin como Thanos\r\nTom Holland como Spiderman', 'Los superhéroes se alían para vencer al poderoso Thanos, el peor enemigo al que se han enfrentado. Si Thanos logra reunir las seis gemas del infinito: poder, tiempo, alma, realidad, mente y espacio, nadie podrá detenerlo', 16, 2018, 9, 2, 7, 2, 178, '210.jpg', 0, 100),
(70, 'Ant Man and the Wasp', 171, 182, 'Paul Rudd como Scott Lang / Ant-Man\r\nEvangeline Lilly como Hope Van Dyne / Avispa\r\nMichael Douglas como Dr. Henry \"Hank\" Pym\r\nMichelle Pfeiffer como Janet Van Dyne\r\nHannah John-Kamen como Ava Starr / Ghost\r\nLaurence Fishburne cómo Dr. William Foster\r\nMichael Peña como Luis', 'Scott Lang vuelve a enfundarse el traje de Ant-Man para pelear codo a codo junto con la Avispa. La misión revela a los dos superhéroes un secreto terrible y los enfrenta a su enemigo más poderoso.', 16, 2018, 9, 2, 7, 2, 179, '211.jpg', 0, 150),
(71, 'Avengers End Game', 155, 167, 'Robert Downey Jr. como Tony Stark / Iron Man\r\nChris Evans como Steve Rogers/Capitán América\r\nMark Ruffalo como Bruce Banner / Hulk\r\nChris Hemsworth como Thor\r\nScarlett Johansson como Natasha Romanoff\r\nJeremy Renner como Clint Barton\r\nTom Hiddleston como Loki\r\nSamuel L. Jackson como Nick Fury\r\nElizabeth Olsen como Wanda Maximoff\r\nChadwick Boseman como T\'Challa / Pantera Negra\r\nJosh Brolin como Thanos\r\nTom Holland como Spiderman\r\nPaul Rudd como Ant Man\r\n', 'Los Vengadores restantes deben encontrar una manera de recuperar a sus aliados para un enfrentamiento épico con Thanos, el malvado que diezmó el planeta y el universo', 16, 2019, 9, 2, 7, 2, 178, '212.jpg', 0, 200),
(72, 'Harry Potter y el Prisionero de Azkaban', 187, 188, 'Daniel Radcliffe como Harry Potter\r\nEmma Watson como Hermione Granger\r\nRupert Grint como Ron Weasley\r\nMichael Gambon como Albus Dumbledore \r\nAlan Rickman como Severus Snape\r\nGary Oldman como Sirius Black\r\nDavid Thewlis como Remus Lupin', 'El tercer año de estudios de Harry en Hogwarts se ve amenazado por la fuga de Sirius Black de la prisión para magos de Azkaban. Se trata de un peligroso mago que fue cómplice de Lord Voldemort y que intentará vengarse de Harry Potter', 24, 2004, 9, 12, 8, 4, 74, '213.jpg', 0, 120),
(73, 'Harry Potter y la Piedra Filosofal', 187, 188, 'Daniel Radcliffe como Harry Potter\r\nRupert Grint como Ron Weasley\r\nEmma Watson como Hermione Granger\r\nRichard Harris como Albus Dumbledore\r\nRobbie Coltrane como Rubeus Hagrid\r\nAlan Rickman como Severus Snape\r\nMaggie Smith como Minerva McGonagall', 'El día de su cumpleaños, Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos. Debe asistir a una famosa escuela de magia y hechicería, donde entabla una amistad con dos jóvenes que se convertirán en sus compañeros de aventura. Durante su primer año en Hogwarts, descubre que un malévolo y poderoso mago llamado Voldemort está en busca de una piedra filosofal que alarga la vida de quien la posee', 24, 2001, 9, 12, 8, 4, 189, '214.jpg', 0, 120),
(74, 'Harry Potter y la Camara Secreta', 187, 188, 'Daniel Radcliffe como Harry Potter\r\nRupert Grint como Ron Weasley\r\nEmma Watson como Hermione Granger\r\nRichard Harris como Albus Dumbledore\r\nRobbie Coltrane como Rubeus Hagrid\r\nAlan Rickman como Severus Snape\r\nMaggie Smith como Minerva McGonagall', 'Harry Potter y los estudiantes de segundo año investigan una malévola amenaza para sus compañeros de clases de Hogwarts', 24, 2002, 9, 12, 8, 4, 189, '215.jpg', 0, 120),
(75, 'Harry Potter y el Caliz de Fuego', 187, 188, 'Daniel Radcliffe como Harry Potter\r\nRupert Grint como Ron Weasley\r\nEmma Watson como Hermione Granger\r\nRichard Harris como Albus Dumbledore\r\nRobbie Coltrane como Rubeus Hagrid\r\nAlan Rickman como Severus Snape\r\nMaggie Smith como Minerva McGonagall\r\nRalph Fiennes como Lord Voldemort', 'Hogwarts se prepara para el Torneo de los Tres Magos, en el que competirán tres escuelas de hechicería. Para sorpresa de todos, Harry Potter es elegido para participar en la competencia, en la que deberá luchar contra dragones, internarse en el agua y enfrentarse a sus mayores miedos', 24, 2005, 9, 12, 8, 4, 189, '216.jpg', 0, 120),
(76, 'Harry Potter y la Orden del Fenix', 187, 188, 'Daniel Radcliffe como Harry Potter\r\nRupert Grint como Ron Weasley\r\nEmma Watson como Hermione Granger\r\nRichard Harris como Albus Dumbledore\r\nRobbie Coltrane como Rubeus Hagrid\r\nAlan Rickman como Severus Snape\r\nMaggie Smith como Minerva McGonagall\r\nRalph Fiennes como Lord Voldemort', 'En su quinto año en Hogwarts, Harry descubre que muchos integrantes de la comunidad de magos no conocen la verdad acerca de su encuentro con Lord Voldemort. Cornelius Fudge, ministro de magia, designa a Dolores Umbridge como maestra de defensa contra de las artes oscuras porque cree que el profesor Dumbledore planea apoderarse de su trabajo. Pero sus enseñanzas son inadecuadas, por lo que Harry prepara a los estudiantes para defender la escuela en contra del mal', 9, 2007, 9, 12, 8, 4, 190, '217.jpg', 0, 120),
(77, 'Harry Potter y el Misterio del Principe', 187, 188, 'Daniel Radcliffe como Harry Potter\r\nRupert Grint como Ron Weasley\r\nEmma Watson como Hermione Granger\r\nRichard Harris como Albus Dumbledore\r\nRobbie Coltrane como Rubeus Hagrid\r\nAlan Rickman como Severus Snape\r\nMaggie Smith como Minerva McGonagall\r\nRalph Fiennes como Lord Voldemort', 'Harry descubre un poderoso libro y, mientras trata de descubrir sus orígenes, colabora con Dumbledore en la búsqueda de una serie de objetos mágicos que ayudarán en la destrucción de Lord Voldemort', 24, 2009, 9, 12, 8, 4, 190, '218.jpg', 0, 120),
(78, 'Harry Potter Las Reliquias de la Muerte P1', 188, 187, 'Daniel Radcliffe como Harry Potter\r\nRupert Grint como Ron Weasley\r\nEmma Watson como Hermione Granger\r\nRichard Harris como Albus Dumbledore\r\nRobbie Coltrane como Rubeus Hagrid\r\nAlan Rickman como Severus Snape\r\nMaggie Smith como Minerva McGonagall\r\nRalph Fiennes como Lord Voldemort', 'Harry, Ron y Hermione se marchan de Hogwarts para iniciar su misión más importante: tienen que destruir los horrocruxes, el secreto del poder y la inmortalidad de Voldemort, en los que el temido mago oscuro guarda los fragmentos de su alma', 24, 2010, 9, 12, 8, 4, 190, '219.jpg', 0, 120),
(79, 'Harry Potter Las Reliquias de la Muerte P2', 188, 187, 'Daniel Radcliffe como Harry Potter\r\nRupert Grint como Ron Weasley\r\nEmma Watson como Hermione Granger\r\nRichard Harris como Albus Dumbledore\r\nRobbie Coltrane como Rubeus Hagrid\r\nAlan Rickman como Severus Snape\r\nMaggie Smith como Minerva McGonagall\r\nRalph Fiennes como Lord Voldemort', 'El enfrentamiento entre el bien y el mal llega a su cénit. La búsqueda de los horrocruxes lleva a los amigos a Hogwarts, donde Harry, Ron y Hermione se preparan para una última batalla contra Lord Voldemort y sus fieles secuaces, los mortífagos, para decidir el futuro del mundo mágico', 24, 2011, 9, 12, 8, 4, 190, '220.jpg', 0, 120),
(80, 'Animales Fantasticos y Donde Encontrarlos', 191, 116, 'Eddie Redmayne como Newt Scamander\r\nJohnny Depp como Gellert Grindelwald\r\nKatherine Waterston como Porpentina\r\nAlison Sudol como Queenie Goldstein\r\nDan Fogler como Jacob Kowalski\r\nEzra Miller como Credence Barebone', 'En 1926, el mago experto en zoología Newt Scamander hace una breve parada en Nueva York mientras viaja catalogando y capturando criaturas mágicas por el mundo. Jacob, un humano corriente, provoca por error que las criaturas escapen y se oculten por la ciudad. Scamander tendrá que atraparlas de nuevo, antes de que causen problemas', 24, 2016, 9, 2, 8, 2, 190, '221.jpg', 0, 100),
(81, 'Animales Fantasticos Crímenes de Grindelwald', 191, 116, 'Eddie Redmayne como Newt Scamander\r\nJohnny Depp como Gellert Grindelwald\r\nKatherine Waterston como Porpentina\r\nAlison Sudol como Queenie Goldstein\r\nDan Fogler como Jacob Kowalski\r\nEzra Miller como Credence Barebone', 'Grindewald ha logrado escapar y pretende encabezar una revuelta de los magos purasangre para dominar el mundo. Dumbledore, acompañado por su antiguo estudiante Scamander, tratará de evitar que quien fuera su gran amigo cumpla su siniestro propósito', 24, 2018, 9, 12, 8, 2, 190, '222.jpg', 0, 100),
(82, 'Rapido y Furioso', 193, 194, 'Paul Walker es Brian O\'Conner \r\nVin Diesel es Dominic \"Dom\" Toretto\r\nMichelle Rodriguez es Leticia \"Letty\" Ortiz\r\nJordana Brewster es Mia Toretto\r\nChad Lindberg es Jesse\r\n', 'Un policía encubierto se infiltra en una banda de carreras callejeras de Los Ángeles mientras investiga robos de automóviles', 29, 2001, 9, 2, 9, 2, 192, '223.jpg', 0, 100),
(83, 'Mas Rapido y Mas Furioso', 193, 194, 'Paul Walker es Brian O\'Conner \r\nVin Diesel es Dominic \"Dom\" Toretto\r\nMichelle Rodriguez es Leticia \"Letty\" Ortiz\r\nJordana Brewster es Mia Toretto\r\nLudacris es Tej Parker\r\nTyrese Gibson es Roman \"Rome\" Pearce', 'Un ex policía y su amigo se unen a un agente de aduanas para atrapar a un criminal de Miami conectado al lavado de dinero', 29, 2003, 9, 2, 9, 2, 191, '224.jpg', 0, 100),
(84, 'Rapidos y Furiosos', 193, 194, 'Paul Walker es Brian O\'Conner \r\nVin Diesel es Dominic \"Dom\" Toretto\r\nMichelle Rodriguez es Leticia \"Letty\" Ortiz\r\nJordana Brewster es Mia Toretto\r\nLudacris es Tej Parker\r\nTyrese Gibson es Roman \"Rome\" Pearce', 'El exconvicto Dominic Toretto se une a su viejo adversario, Brian O\'Conner, que ahora trabaja para el FBI en Los Ángeles, con el fin de infiltrarse en una organización criminal que se dedica a introducir heroína en la ciudad', 29, 2009, 9, 1, 9, 2, 191, '225.jpg', 0, 100),
(85, 'Rápidos y furiosos 5in control', 193, 195, 'Paul Walker es Brian O\'Conner \r\nVin Diesel es Dominic \"Dom\" Toretto\r\nMichelle Rodriguez es Leticia \"Letty\" Ortiz\r\nJordana Brewster es Mia Toretto\r\nLudacris es Tej Parker\r\nTyrese Gibson es Roman \"Rome\" Pearce\r\nDwayne Johnson es Agente Luke Hobbs\r\nDon Omar es Rico Santos\r\nTego Calderón es Tego Leo', 'En Río de Janeiro, el exconvicto Dom Torretto y el expolicía Brian O\'Conner unen fuerzas en contra de un corrupto hombre de negocios que los quiere ver muertos', 29, 2011, 9, 14, 9, 2, 191, '226.jpg', 0, 100),
(86, 'Rapidos y Furiosos 6', 193, 195, 'Paul Walker es Brian O\'Conner \r\nVin Diesel es Dominic \"Dom\" Toretto\r\nMichelle Rodriguez es Leticia \"Letty\" Ortiz\r\nJordana Brewster es Mia Toretto\r\nLudacris es Tej Parker\r\nTyrese Gibson es Roman \"Rome\" Pearce\r\nDwayne Johnson es Agente Luke Hobbs', 'Desde que el robo de Dom y Brian en Río los dejó a ellos y a su equipo con mucho dinero, ellos se dispersan por todo el mundo; sin embargo, ellos tienen que vivir como fugitivos, incapaces de regresar con sus familias. Mientras tanto, el agente Hobbs ha estado persiguiendo a unos conductores mercenarios cuyo segundo al mando es alguien que Don conoce. Incapaz de detenerlo solo, Hobbs le pide ayuda a Dom y su equipo a cambio del perdón para todos', 29, 2013, 9, 2, 9, 2, 191, '227.jpg', 0, 100),
(87, 'Son Como Niños', 196, 198, 'Adam Sandler — Lenny \"Hollywood\" Feder\r\nKevin James — Eric Lamonsoff\r\nChris Rock — Kurt McKenzie\r\nRob Schneider — Rob \"Robbie\" Hilliard\r\nDavid Spade — Marcus \"Higgie\" Higgins\r\nSalma Hayek — Roxanne Chase-Feder\r\n', 'Un grupo de amigos y excompañeros descubren que envejecer no siempre equivale a ganar madurez cuando se reúnen para honrar la memoria de quien fuera su entrenador de baloncesto', 14, 2010, 9, 2, 1, 2, 199, '228', 0, 100),
(88, 'Son Como Niños 2', 197, 196, 'Adam Sandler — Lenny \"Hollywood\" Feder\r\nKevin James — Eric Lamonsoff\r\nChris Rock — Kurt McKenzie\r\nRob Schneider — Rob \"Robbie\" Hilliard\r\nDavid Spade — Marcus \"Higgie\" Higgins\r\nSalma Hayek — Roxanne Chase-Feder\r\n', 'El último día de escuela trae sorpresas y experiencias de aprendizaje inesperadas a un grupo de padres', 14, 2013, 9, 2, 1, 2, 199, '229.jpg', 0, 100);
INSERT INTO `pelicula_atrib` (`ID_PELICULA`, `NOMBRE`, `ID_ACTOR1`, `ID_ACTOR2`, `REPARTO`, `SINOPSIS`, `ID_GENERO`, `ANIO_LANZAMIENTO`, `ID_ESTILO`, `ID_PAIS`, `ID_CASA_PRODUCTORA`, `ID_FORMATO`, `ID_PRODUCTOR`, `CARATULA_PELICULA`, `ESTAD_PELICULA`, `PRECIO`) VALUES
(89, 'Yo los declaro marido y... Larry', 196, 198, 'Adam Sandler - Charles \"Chuck\" Levine\r\nKevin James - Lawrence \"Larry\" Valentine\r\nJessica Biel - Alex McDonough\r\nDan Aykroyd - Captain Tucker\r\nVing Rhames - Duncan\r\nSteve Buscemi - Clint Fitzer\r\nNicholas Turturro - Renaldo Pinera\r\nAllen Covert - Steve\r\nRachel Dratch - Supervisor de beneficios\r\nRichard Chamberlain - Concejal', 'Chuck Levine y Larry Valentine son bomberos y muy buenos amigos. Cuando Larry, un hombre viudo, descubre que no puede nombrar a sus niños como los beneficiarios de la póliza de su seguro de vida, necesita un gran favor de Chuck, su firma como pareja, Los amigos inesperadamente se convierten en noticia y deben llevar su plan al extremo cuando un burócrata sospecha de la veracidad de su relación', 14, 2007, 9, 2, 9, 2, 199, '230.jpg', 0, 100),
(90, 'Jack y Jill', 196, 200, 'Adam Sandler como Jack Sadelstein \r\nAdam Sandler como Jill Sadelstein \r\nKatie Holmes como Erin Sadelstein \r\nEugenio Derbez como Felipe\r\nNick Swardson como Tod', 'La vida de un exitoso y feliz ejecutivo de publicidad termina en un caos cuando su exigente hermana gemela pasivo-agresiva realiza su visita anual del Día de Acción de Gracias', 14, 2011, 9, 2, 9, 2, 199, '231.jpg', 0, 100),
(91, 'Pixeles', 196, 198, 'Adam Sandler como Sam Brenner\r\nKevin James como Presidente Will Cooper\r\nJosh Gad como Ludlow Lamonsoff\r\nPeter Dinklage como Eddie Plant\r\nMatt Lintz como Matty Van Patten\r\nBrian Cox como Almirante Jim Porter\r\nAshley Benson como Lady Lisa\r\n', 'Un mecánico de televisión, un criminal y un teórico de la conspiración, todos ellos amigos del presidente y antiguos jugadores de élite de videojuegos, son reclutados por el presidente para ayudar a salvar al país', 14, 2015, 9, 2, 9, 2, 199, '232.jpg', 0, 100),
(92, 'Hombre al Agua', 200, 197, 'Cecilia Suárez como Magdalena\r\nOmar Chaparro como Burro\r\nAdrián Uribe como Burrito\r\nJesús Ochoa como Vito\r\nEugenio Derbez como Leonardo\r\nAnna Faris como Kate\r\nEva Longoria? como Theresa\r\nJohn Hannah6? como Colin', 'Leonardo, un millonario mexicano egoísta y caprichoso, despide a Kate, una madre soltera sin recursos. Poco después, el hombre pierde la memoria al caer por la borda de su yate y ella se venga haciéndole creer que es su esposo', 14, 2018, 9, 1, 12, 2, 200, '233.jpg', 0, 100),
(93, 'Como ser un Latin Lover', 200, 197, 'Eugenio Derbez\r\nSalma Hayek\r\nCarlos Jimrey\r\nRob Lowe\r\nKristen Bell\r\nRaquel Welch\r\nRob Corddry\r\nRob Riggle', 'Máximo se lleva una sorpresa cuando su acaudalada y anciana esposa le abandona por otro hombre más joven, pero conoce a otra millonaria, la atractiva Sara, y trama un plan para enamorarla, ganarse el afecto de su hijo, y poder volver a vivir de las mujeres, sin tener que trabajar', 14, 2017, 9, 1, 12, 2, 200, '234.jpg', 0, 100),
(94, 'No Manches Frida', 202, 203, 'Omar Chaparro - Ezequiel \"Zequi\" Alcántara\r\nMartha Higareda - Maestra Lucy\r\nMónica Dionne - Directora Gaby\r\nRocío García - Jenny\r\nFernanda Castillo - Maestra Carolina\r\nRegina Pavón - Mónica\r\nCarla Adell - Laura\r\nMario Morán - Cristóbal\r\nKaren Furlong - Nayeli\r\nMemo Dorantes - Romo\r\nRaquel Garza - Maestra Ingrid\r\nAdal Ramones - Sr. Valdez', 'Después de salir de la prisión, el ladrón de bancos Zequi se dispone a recuperar el dinero robado que fue enterrado por su cómplice, pero se horroriza al saber que un gimnasio de secundaria está ahora sobre el sitio donde el botín está escondido, Para infiltrarse en el edificio, Zequi consigue un trabajo como maestro sustituto para un grupo de estudiantes indisciplinados y, mientras intenta establecer el orden, se da cuenta de que la vida en la cárcel era más fácil que lidiar con estos jóvenes', 14, 2016, 9, 1, 12, 2, 204, '235.jpg', 0, 100),
(95, 'No Manches Frida 2', 202, 203, 'Omar Chaparro - Ezequiel \"Zequi\" Alcántara - Protagonista\r\nMartha Higareda - Maestra Lucy\r\nAaron Diaz como Mario\r\nItati Cantoral\r\nRegina pavón como monica\r\nMemo Dorantes como Romo', 'Un exconvicto intenta recuperar a su novia mientras entrena a un grupo de estudiantes de secundaria para competir en un torneo', 14, 2019, 9, 1, 12, 2, 204, '236.jpg', 0, 100),
(96, 'Los Piratas del Caribe:La maldición del Perla', 116, 144, 'Jack Sparrow (Johnny Depp)\r\nWill Turner (Orlando Bloom)\r\nElizabeth Swann (Keira Knightley)\r\nAngelica Teach (Penelope Cruz)\r\nHéctor Barbossa (Geoffrey Rush)\r\nAnamaria (Zoe Saldana)', '', 30, 2003, 9, 2, 10, 4, 205, '237.jpg', 0, 110),
(97, 'Piratas del Caribe: El cofre de la Muerte', 116, 144, 'Johnny Depp como el capitán Jack Sparrow\r\nOrlando Bloom como Will Turner\r\nKeira Knightley como Elizabeth Swann\r\nBill Nighy como Davy Jones\r\nJack Davenport como James Norrington\r\nAlex Norton como el capitán Bellamy\r\nNaomie Harris como Tía Dalma\r\n', 'Cuando el fantasmal pirata Davy Jones llega a cobrar una deuda sangrienta, el Capitán Jack Sparrow debe encontrar la forma de evitar su destino y que su alma sea maldecida para siempre. No obstante, el astuto fantasma logra interrumpir los planes nupciales de los amigos de Jack, Will Turner y Elizabeth Swann', 30, 2006, 9, 2, 10, 4, 205, '238.jpg', 0, 110),
(98, 'Piratas del Caribe: En el Fin del Mundo', 116, 144, 'Johnny Depp como el capitán Jack Sparrow\r\nOrlando Bloom como Will Turner\r\nKeira Knightley como Elizabeth Swann\r\nBill Nighy como Davy Jones\r\nJack Davenport como James Norrington\r\nAlex Norton como el capitán Bellamy\r\nNaomie Harris como Tía Dalma', 'Will Turner (Orlando Bloom) y Elizabeth Swann (Keira Knightley) unen fuerzas con el Capitán Barbossa (Geoffrey Rush) para liberar a Jack Sparrow (Johnny Depp) del encierro de Davy Jones, Mientras tanto, la tripulación del barco fantasma El Holandés Volador causa estragos en los Siete Mares, Los amigos deben navegar a través de aguas peligrosas para enfrentarse al pirata chino Sao Feng (Chow Yun-Fat) y, finalmente, ellos deben decidir un lado de la batalla cuando está en juego la vida del pirata', 30, 2007, 9, 2, 10, 4, 205, '239.jpg', 0, 110),
(99, 'El Llanero Solitario', 116, 111, 'Armie Hammer como John Reid/El Llanero Solitario\r\nJohnny Depp como Toro\r\nTom Wilkinson como Latham Cole\r\nWilliam Fichtner como Butch Cavendish\r\nRuth Wilson como Rebecca Reid\r\nBryant Prince como Danny Reid', 'El destino une a Tonto, un guerrero nativo americano, y al policía blanco John Reid para unir fuerzas en la interminable batalla en contra de la corrupción y la codicia', 30, 2013, 9, 2, 10, 4, 205, '240.jpg', 0, 100),
(100, 'Los Ilusionistas', 151, 187, 'Jesse Eisenberg como J. Daniel Atlas.\r\nMark Ruffalo como Dylan Rhodes.\r\nWoody Harrelson como Merritt McKinney.\r\nIsla Fisher como Henley Reeves.\r\nDave Franco como Jack Wilder.\r\nMélanie Laurent como Alma Dray.\r\nMorgan Freeman como Thaddeus Bradley.\r\nMichael Caine como Arthur Tressler.', 'Un agente federal y un detective de la Interpol juegan al gato y al ratón con unos ilusionistas astutos que les roban a los líderes de negocios corruptos durante sus actuaciones y traspasan el dinero a los miembros de la audiencia', 29, 2013, 9, 2, 12, 2, 206, '241.jpg', 0, 100),
(101, 'Los Ilusionistas 2', 116, 187, 'Mark Ruffalo como Dylan Shrike3?\r\nJesse Eisenberg como J. Daniel \"Danny\" Atlas\r\nWoody Harrelson como Merritt McKinney\r\nDave Franco como Jack Wilder\r\nDaniel Radcliffe como Walter Mabry\r\nLizzy Caplan como Lula May\r\nSanaa Lathan como Natalie Austin\r\nJay Chou como Li', 'Un malvado experto en tecnología fuerza a cuatro magos a robar un poderoso chip que controla todas las computadoras del mundo. Mientras tanto, un agente del FBI los busca, ya que quiere vengar la muerte de su padre, de la que culpa a uno de los magos', 30, 2016, 9, 2, 13, 2, 206, '242.jpg', 0, 100),
(102, 'P.D Te Amo', 208, 209, 'Hilary Swank como Holly Kennedy.\r\nGerard Butler como Gerry Kennedy.\r\nLisa Kudrow como Denise Hennessey.\r\nGina Gershon como Sharon McCarthy.\r\nJames Marsters como John McCarthy.\r\nKathy Bates como Patricia Reilly.', 'Una viuda encuentra una serie de mensajes que le dejó su marido fallecido para ayudarle a disminuir su dolor y alentarla a iniciar una nueva vida por sí misma', 26, 2007, 9, 2, 9, 2, 207, '243.jpg', 0, 100),
(103, 'Querido John', 211, 212, 'Channing Tatum como John Tyree.\r\nAmanda Seyfried como Savannah Lynn Curtis.\r\nHenry Thomas como Tim Wheddon.\r\nScott Porter como Randy.\r\nRichard Jenkins como Bill Tyree.\r\nKeith Robinson como Capitán Stone.\r\nLeslea Fisher como Susan.', 'Un soldado y una universitaria idealistas se enamoran, pero su amor queda marcado por los múltiples y peligrosos destinos a los que envían a John, el soldado. Durante siete años se comunican habitualmente por carta, pero esto acaba trayendo consecuencias inesperadas', 26, 2010, 9, 2, 9, 2, 210, '244.jpg', 0, 100),
(104, 'La Noche del Demonio', 213, 214, 'Rose Byrne como Renai Lambert\r\nLin Shaye como Elise Rainier\r\nTy Simpkins como Dalton Lambert\r\nBarbara Hershey como Lorraine Lambert\r\nLeigh Whannell como Steven \"Specs\"\r\nAngus Sampson como Tucker\r\nPatrick Wilson como Josh Lambert', 'Josh y Renai se mudan a una nueva casa, donde su hijo tiene un terrible accidente y queda en estado de coma', 13, 2010, 9, 2, 2, 2, 215, '245.jpg', 0, 100),
(105, 'La Noche del Demonio Capitulo 2', 213, 214, 'Patrick Wilson es Josh Lambert\r\nRose Byrne es Renai Lambert\r\nTy Simpkins es Dalton Lambert\r\nLin Shaye es Elise Ranier\r\nBarbara Hershey es Lorraine Lambert\r\nSteve Coulter es Carl\r\nAndrew Astor es Foster Lambert\r\nDanielle Bisutti es la madre de Parker Crane\r\nGarrett Ryan es Josh Joven', 'Josh y Renai Lambert se han mudado con sus hijos a la casa de la madre de Josh, esperando olvidar el pasado y comenzar una nueva vida. Sin embargo, pronto experimentan visiones extrañas y fenómenos relacionados con los espíritus y un oscuro secreto', 13, 2013, 9, 2, 2, 2, 215, '246.jpg', 0, 100),
(106, 'La Noche del Demonio Capitulo 3', 213, 214, 'Lin Shaye como Elise Rainier\r\nDermot Mulroney como Sean Brenner\r\nStefanie Scott como Quinn Brenner\r\nSteve Coulter como Carl\r\nLeigh Whannell como Specs\r\nAngus Sampson como Tucker\r\nHayley Kiyoko como Maggie\r\nAshton Moio como Héctor', 'La psíquica Elise Rainier acepta a regañadientes utilizar su capacidad de contacto con los muertos,con el fín de ayudar a una adolescente que se ha convertido en blanco de una peligrosa entidad sobrenatura', 13, 2015, 9, 2, 2, 2, 215, '247.jpg', 0, 100),
(107, 'IT', 217, 218, 'Jaeden Lieberher como Bill Denbrough.\r\nBill Skarsgård como Pennywise, el payaso.\r\nJavier Botet como Pennywise bajo la apariencia del leproso.\r\nTatum Lee como Pennywise bajo la apariencia de Judith.\r\nWyatt Oleff como Stanley «Stan» Uris.\r\nJeremy Ray Taylor como Ben Hanscom.\r\nSophia Lillis como Beverly «Bev» Marsh.\r\nFinn Wolfhard como Richie Tozier.\r\nJack Dylan Grazer como Eddie Kaspbrak.\r\nChosen Jacobs como Mike Hanlon.', 'Varios niños de una pequeña ciudad del estado de Maine se alían para combatir a una entidad diabólica que adopta la forma de un payaso y desde hace mucho tiempo emerge cada 27 años para saciarse de sangre infantil', 13, 2017, 9, 2, 2, 2, 216, '248', 0, 100),
(108, 'It Capitulo II', 217, 218, 'James McAvoy como Bill Denbrough\r\nJaeden Lieberher como el joven Bill\r\nJessica Chastain como Beverly Marsh\r\nSophia Lillis como la joven Beverly\r\nBill Hader como Richie Tozier\r\nChosen Jacobs como el joven Mike\r\n', '27 años después de los eventos del verano de 1989, los miembros del Club de los Perdedores crecen y se mudan, hasta que una devastadora llamada telefónica los obliga a regresar a Derry, Maine', 13, 2019, 9, 2, 2, 2, 216, '249.JPG', 0, 100),
(109, 'El Conjuro', 219, 220, 'Vera Farmiga como Lorraine Warren.\r\nPatrick Wilson como Ed Warren.\r\nRon Livingston como Roger Perron.\r\nLili Taylor como Carolyn Perron.\r\nShanley Caswell como Andrea Perron.\r\nHayley McFarland como Nancy Perron.\r\nJoey King como Christine Perron.\r\nMackenzie Foy como Cindy Perron.', 'A principios de los años 70, Ed y Lorrain Warren, reputados investigadores de fenómenos paranormales, se enfrentan a una entidad demoníaca al intentar ayudar a una familia que está siendo aterrorizada por una presencia oscura en su aislada granja', 13, 2013, 9, 2, 2, 2, 215, '250.jpg', 0, 100),
(110, 'El Conjuro 2', 219, 220, 'Vera Farmiga como Lorraine Warren.\r\nPatrick Wilson como Ed Warren.\r\nRon Livingston como Roger Perron.\r\nLili Taylor como Carolyn Perron.\r\nShanley Caswell como Andrea Perron.\r\nHayley McFarland como Nancy Perron.\r\nJoey King como Christine Perron.\r\nMackenzie Foy como Cindy Perron.', 'Ed y Lorraine Warren, renombrados demonólogos e investigadores de lo paranormal, se enfrentan de nuevo a las fuerzas infernales, En esta ocasión, viajan hasta el norte de Londres para tratar de ayudar a una madre y sus cuatro hijos, quienes habitan en una casa plagada de espíritus malignos', 13, 2016, 9, 2, 2, 2, 215, '251', 0, 100),
(111, 'Alicia en el Pais de las Maravillas', 116, 76, 'Mia Wasikowska como Alicia.\r\nJohnny Depp como Tarrant Hightopp, El Sombrerero.\r\nHelena Bonham Carter como Iracebeth, la Reina Roja.\r\nAnne Hathaway como Mirana, la Reina Blanca.\r\nCrispin Glover como Ilosovic Stayne la Sota de Corazones.\r\nMatt Lucas como Tweedledum y Tweedledee.\r\nLindsay Duncan como Helen Kingsleigh.\r\nTim Pigott-Smith como Lord Ascot.', 'Alicia, ahora una joven de 19 años de edad, regresa al País de las Maravillas para encontrar su verdadero destino y terminar con el gobierno de terror de la malvada reina Roja', 24, 2010, 9, 2, 10, 2, 76, '252.jpg', 0, 100),
(112, 'Terminator 2 Juicio FInal', 124, 125, 'Linda Hamilton es Sarah Connor\r\nArnold Schwarzenegger es Terminator\r\nEdward Furlong es John Connor\r\nRobert Patrick es el T-1000\r\nJoe Morton es el Dr. Miles Bennett Dyson\r\nMichael Biehn es Kyle Reese', 'Dos androides del futuro intentan apoderarse de un adolescente que se convertirá en el salvador de la Tierra', 29, 1991, 9, 2, 11, 4, 77, '253.jpg', 0, 100),
(113, 'Pandillas de New York', 80, 31, 'Leonardo DiCaprio como Amsterdam Vallon\r\nDaniel Day-Lewis como William \"Bill The Butcher\" Cutting\r\nCameron Diaz como Jenny Everdeane\r\nLiam Neeson como \"Padre\" Vallon\r\nJim Broadbent como William \"Boss\" Tweed\r\nHenry Thomas como Johnny Sirocco', 'Un joven planea vengar la muerte de su padre en la historia de Martin Scorsese de bandas irlandesas en Nueva York', 22, 2002, 9, 2, 9, 4, 80, '254.jpg', 0, 100),
(114, 'Jurassic World: Mundo Jurasico', 35, 81, 'Chris Pratt como Owen Grady\r\nBryce Dallas Howard interpreta a Dra. Claire\r\nNick Robinson como Zach Mitchell\r\nBD Wong como el Dr. Henry Wu\r\nJudy Greer como Karen Mitchell\r\nKatie McGrath es Zara Young', 'Una nueva especie de dinosaurio, creada por los científicos de forma artificial y claramente más inteligente y peligrosa que las especies conocidas, ataca a los turistas que visitan el parque temático \"Jurassic World\", situado en una isla frente a Costa Rica. Un exmilitar y un zoólogo lideran a los turistas en su intento por escapar con vida de la isla', 24, 2015, 9, 2, 6, 4, 81, '255.jpg', 0, 100),
(115, 'Soñadoras', 223, 222, 'Jamie Foxx\r\nBeyoncé Knowles\r\nEddie Murphy\r\nDanny Glover\r\nJennifer Hudson\r\nAnika Noni Rose\r\nKeith Robinson\r\nSharon Leal\r\nHinton Battle', 'Tres chicas llamadas las Dreamettes consiguen la oportunidad de sus vidas cuando un productor musical las ve en un programa de talentos y les ofrece convertirse en las coristas de una famosa estrella nacional. Sin embargo, la exposición a la fama y al reconocimiento pondrá a prueba su amistad', 30, 2006, 9, 2, 6, 2, 224, '256.jpg', 0, 100),
(116, 'Crepusculo Amanecer P1', 225, 226, 'Kristen Stewart como Bella Cullen\r\nRobert Pattinson como Edward Cullen\r\nPeter Facinelli como Carlisle Cullen\r\nElizabeth Reaser como Esme Cullen\r\nKellan Lutz como Emmett Cullen\r\nNikki Reed como Rosalie Hale\r\nAshley Greene como Alice Cullen\r\n', 'El amor que Edward y Bella sienten el uno por el otro se sella con la celebración de una gran ceremonia organizada por Alice. Durante la luna de miel, los recién casados mantienen relaciones sexuales y Bella queda embarazada. El rápido crecimiento del feto, mitad humano mitad vampiro, afecta gravemente a su salud, llevándola al borde de la muerte', 30, 2011, 9, 2, 13, 2, 224, '257.jpg', 0, 100),
(117, 'Crepusculo Amanecer P2', 225, 226, 'Kristen Stewart como Bella Cullen\r\nRobert Pattinson como Edward Cullen\r\nPeter Facinelli como Carlisle Cullen\r\nElizabeth Reaser como Esme Cullen\r\nKellan Lutz como Emmett Cullen\r\nNikki Reed como Rosalie Hale\r\nAshley Greene como Alice Cullen', 'Bella despierta transformada en vampiro y da a luz a Renesmee. Dado que existe una antigua ley que prohíbe a cualquier clan convertir a los niños, los Volturi declaran que todos los Cullen deben ser asesinados', 30, 2012, 9, 2, 13, 2, 224, '228.jpg', 0, 100),
(118, 'Hellboy', 103, 102, 'Hellboy	como Ron Perlman	\r\nLiz Sherman como Selma Blair	\r\nTrevor Bruttenholm como John Hurt	\r\nAbraham \"Abe\" Sapiens como Doug Jones	\r\nJohann Krauss como Seth McFarlane', 'Los nazis recurren a la magia negra para sobrevivir tras la Segunda Guerra Mundial. En una ceremonia, crean al hijo del diablo: Hellboy', 24, 2004, 9, 2, 1, 2, 73, '259.jpg', 0, 100),
(119, 'El gran Showman', 227, 224, 'Hugh Jackman como P. T. Barnum.\r\nZac Efron como Phillip Carlyle.\r\nMichelle Williams como Charity Barnum.\r\nRebecca Ferguson como Jenny Lind.\r\nZendaya como Anne Wheeler.\r\nKeala Settle como Lettie Lutz \"La mujer barbuda\".\r\nYahya Abdul-Mateen II como WD Wheeler.\r\nPaul Sparks como James Gordon Bennett.\r\nSam Humphrey como Tom.', 'P.T. Barnum se entrega a su imaginación para crear el circo Barnum & Bailey en el siglo XIX. Con números musicales, artistas exóticos y hazañas, el fascinante espectáculo toma al mundo por asalto para convertirse en el mejor espectáculo de la Tierra', 31, 2017, 2, 2, 6, 4, 224, '260.jpg', 0, 90),
(120, 'La Bella y la Bestia', 188, 228, 'Emma Watson como Bella.\r\nDan Stevens como Bestia / El Príncipe Adam\r\nLuke Evans como Gastón\r\nEwan McGregor como Lumière\r\nIan McKellen como Din Don\r\nEmma Thompson como la Sra. Potts\r\nKevin Kline como Maurice\r\nJosh Gad como Le Fou', 'Belle, una joven hermosa y brillante, asume el lugar de su padre como prisionero en el castillo de una bestia. Poco a poco, la valiente Belle irá dándose cuenta de que el príncipe bestia no es el malvado ser que todos creen que es y tiene, en realidad, un gran corazón', 24, 2017, 9, 9, 10, 4, 224, '261', 0, 110);

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
(50, 'Michael', 'Emerson', '1954-09-07', 2, 'Michael Emerson es un actor estadounidense, nacido el 7 de septiembre de 1954, en Cedar Rapids, Iowa. Emerson es más conocido por sus papeles en teatro, pero también se ha dedicado a las series y películas para televisión. Se le ha podido ver en la gran pantalla en primera parte de \"Saw\" y \"La leyenda del Zorro\".'),
(51, 'Alejandro', 'Sanz', '1968-12-18', 7, 'Ha vendido más de 25 millones de discos en todo el mundo y ha ganado 20 Grammys Latinos y 3 Grammys americanos. Asimismo, ha realizado colaboraciones con diversos artistas nacionales e internacionales convirtiéndole en uno de los artistas más importantes de la historia de España.'),
(52, 'the corrs', '', '1990-01-01', 12, 'The Corrs es una banda irlandesa formada por cuatro hermanos, Andrea, Sharon, Caroline, y Jim Corr, que practican una combinación entre la música tradicional irlandesa, el pop contemporáneo y el rock.'),
(53, 'The Cramberries', '', '1990-01-01', 12, 'The Cranberries es una banda irlandesa de rock alternativo, formada en Limerick durante 1989 bajo el nombre de The Cranberry Saw Us'),
(54, 'The Rolling Stones', '', '1962-04-01', 12, 'The Rolling Stones es una banda británica de rock originaria de Londres. '),
(55, 'Enrique', 'Bunbury ', '1967-08-11', 7, 'Es un cantante, compositor y músico español. Es reconocido por ser el vocalista de la banda de rock Héroes del Silencio.'),
(56, 'The Bangles', '', '1981-01-01', 2, 'The Bangles es uno de los primeros grupos formados exclusivamente por mujeres con una alineación funcional (no grupo vocal), a principios de los años ochenta, influidas por la new wave y un tanto del estilo garage rock.'),
(57, 'Maria', 'Jimenez ', '1950-02-03', 7, 'María Jiménez Gallego es una cantante y actriz española que se hizo famosa por el contenido liberal de sus letras y actuaciones.'),
(58, 'Luis Muiguel ', 'Gallego Basteri', '1970-04-19', 1, 'A menudo conocido como El Sol de México, es un cantante y productor musical mexicano nacido en Puerto Rico.'),
(59, 'Oasis', '', '1991-01-01', 12, 'Oasis fue una banda de rock alternativo británica formada en Mánchester en 1991. En sus inicios, conocidos como The Rain, el grupo contaba en sus filas con el cantante Liam Gallagher, el guitarrista Paul Arthurs, el bajista Paul McGuigan y el baterista Tony McCarroll'),
(60, 'Carlos', 'Santana', '1997-07-20', 1, 'Es un guitarrista mexicano que a fines de la década de 1960 fundó la banda Santana, pionera en fusionar la música latina con el rock.'),
(61, 'Caifanes', '', '1987-01-01', 1, 'La banda empezó como un cuarteto conformado por Saúl Hernández (guitarra y voz), Alfonso André (batería), Sabo Romo (bajo) y Diego Herrera (Teclados y saxofón), lanzando en 1988 el álbum debut Caifanes. '),
(62, 'Red Hot Chili Peppers', '', '1983-01-01', 2, 'Red Hot Chili Peppers es una banda de rock alternativo y funk rock estadounidense formada en 1983 en Los Ángeles, California.'),
(63, 'Coldplay', '', '1996-01-01', 2, 'Coldplay es una banda británica de pop rock y rock alternativo formada en Londres en 1996. El grupo está integrado por Chris Martin, Jon Buckland, Guy Berryman y Will Champion.'),
(64, 'Avenged Sevenfold', '', '1999-01-01', 2, 'Es una banda estadounidense de heavy metal originaria de Huntington Beach, California, fundada en 1999. '),
(65, 'Linkin Park', '', '1996-01-01', 2, 'Linkin Park es una banda estadounidense de rock alternativo procedente de Agoura Hills, California. '),
(66, 'Mägo de Oz', '', '1989-01-01', 7, 'Es una banda española de folk metal fundada el 7 de julio de 1988 por el baterista Txus di Fellatio en el barrio de Begoña en Madrid. Inicialmente se llamó Transilvania, en honor a la canción homónima del sexteto inglés Iron Maiden, y adoptó el nombre definitivo de Mägo de Oz en 1989.'),
(67, 'Héroes del Silencio', '', '1984-01-01', 7, 'Fue un grupo español de rock radicado en Zaragoza, formado inicialmente por Juan Valdivia (guitarra solista) y Enrique Bunbury (voz y guitarra rítmica), y completado con Joaquín Cardiel (bajo) y Pedro Andreu (batería), a mediados de los años 80. '),
(68, 'Café Tacvba', '', '1989-01-01', 1, 'Café Tacvba (antes Café Tacuba) es una banda de rock alternativo, originaria de Ciudad Satélite del Área Metropolitana de la Ciudad de México. '),
(69, 'Gorillaz', '', '1998-01-01', 12, 'Gorillaz es un grupo británico creado en 1998 por Damon Albarn y Jamie Hewlett, una banda virtual de rock alternativo conformada por cuatro personajes ficticios de dibujos animados.'),
(70, 'Soda Estereo', '', '1982-01-01', 15, 'Fueron el primer grupo de habla hispana en conseguir un éxito masivo en Latinoamérica. '),
(71, 'Green Day', '', '1986-01-01', 2, 'Fue uno de los grupos que nacieron en el club 924 Gilman Street, sitio que frecuentaban bandas de punk rock locales. Sus primeras publicaciones se realizaron por medio del sello discográfico independiente Lookout!'),
(72, 'La Oreja de Van Gogh', '', '1996-01-01', 7, 'Es un grupo musical originario de San Sebastián (País Vasco), España. Su trayectoria en el mundo de la música comenzó formalmente en 1996. La banda nació formada por Pablo Benegas, Álvaro Fuentes, Xabi San Martín, Haritz Garde y la vocalista Amaia Montero'),
(73, 'Guillermo', 'del Toro Gomez', '1964-10-09', 1, 'Galardonado con el premio Goya y varias veces el premio Ariel.'),
(74, 'Alfonso', 'Cuaron Orozco', '1961-11-28', 1, 'Ganador del premio de la academia como mejor director.'),
(75, 'Yorgos', 'Lanthimos', '1973-05-27', 30, 'Estudio direccion de cine y television en la escuela de cine de Atenas'),
(76, 'Timothy', 'Walter', '1958-08-25', 2, 'Dibujante y director de cine'),
(77, 'James Francis ', 'Cameron', '1954-08-16', 11, 'Ingeniero, filantropo y explorador marino'),
(78, 'George Andrew', 'Romero', '1940-02-04', 2, 'Famoso por sus peliculas de terror relacionadas con muertos vivientes.'),
(79, 'Thomas Vincent', 'Savini', '1946-11-03', 2, 'Artista de efectos especiales y maquillaje.'),
(80, 'Martin Charles', 'Scorsese', '1942-11-17', 2, 'Ganador de un premio Oscar, tres globos de Oro, dos premios BEFTA'),
(81, 'Steve Allan', 'Spielberg', '1946-12-18', 2, 'Pionero de la era del Nuevo Hollywood'),
(82, 'Roman', 'Polanski', '1933-02-18', 9, 'Cineasta mas importante de la segunda mitad del siglo XX'),
(83, 'Alejandro ', 'Gonzalez Iñarritu', '1963-08-15', 1, 'Conocido por contar historias conmovedoras e internacionales sobre la condicion humana'),
(84, 'Pedro ', 'Almodovar Caballero', '1949-09-25', 7, 'Galardonado con dos Oscar y diversos premios Goya'),
(85, 'Peter Robert', 'Jackson', '1961-10-31', 40, 'Conocido por dirigir y producir la trilogia del señor de los anillos.'),
(86, 'Hayao', 'Miyazaki', '1941-01-05', 36, 'Ademas de ser animador,dibujante de mangas y productor de anime japones.'),
(87, 'Clinton ', 'Eastwood', '1930-05-31', 2, 'Icono cultural de masculinidad.'),
(88, 'Ryan Patrick', 'Murphy', '1965-11-09', 2, 'Conocido por crear diversas series exitosas.'),
(89, 'Peter ', 'Ramsey', '1962-12-12', 2, 'Illustrador y escritor'),
(90, 'Jonathan Kolia', 'Favreau', '1966-10-09', 2, 'Creador de grandes peliculas'),
(91, 'Joseph Eggleston', 'Johnston II', '1950-05-13', 2, 'Director y productor de grandes peliculas'),
(92, 'Joseph Hill', 'Whedon', '1964-06-23', 2, 'Principalmente reconocido y criticado por su labor en el cine de superhéroes'),
(93, 'Scott', 'Derrickson', '1966-03-18', 2, 'Con una licenciatura de humanidades, medios de comunicación y en teología.'),
(94, 'James', 'Gunn', '1966-08-05', 2, 'Actor y escritor de peliculas importantes.'),
(96, 'Sally Cecilia', 'Hawkins ', '1976-04-27', 12, 'Ha aparecido en las adaptaciones de la BBC de Tipping the Velvet (2002) como Zena Blake, y en Fingersmith (2005) como Sue Trinder.'),
(97, 'Richard Dale', 'Jenkins', '1947-05-04', 2, 'Destaca su papel de Nathaniel Fisher Sr., el patriarca fallecido de la serie Six Feet Under (2001-2005) de la HBO.'),
(98, 'Ivana', 'Baquero', '1994-06-11', 7, 'Premio Goya a la mejor actriz revelación con tan solo 12 años por su interpretación en la película El laberinto del fauno'),
(99, 'Sergi', 'Lopez', '1965-12-22', 7, 'En España ha participado en películas de renombre como Solo mía, Pan negro o El laberinto del fauno'),
(100, 'Tom', 'Hiddleston ', '1981-02-09', 12, 'Fue galardonado con el premio Globo de oro por su interpretación en The Night Manager.'),
(101, 'Mia ', 'Wasikowska ', '1989-10-14', 16, 'Conocida por su papel protagonista en Alicia en el país de las maravillas (2010) y en In Treatment (HBO).'),
(102, 'Ron', 'Pelman', '1950-04-13', 2, 'Ganador del Globo de Oro por la serie de televisión Beauty and the Beast.?'),
(103, 'Selma', 'Blair', '1972-06-23', 2, 'Ha trabajado en una diversidad de tipo de papeles tanto en cine como en teatro'),
(104, 'Jessica', 'Chastain', '1977-03-24', 2, ''),
(105, 'Nikolaj', 'Coster-Waldau', '1970-07-27', 51, 'Es más conocido por interpretar a Jaime Lannister en la serie de HBO Juego de tronos.'),
(106, 'Yalitza', 'Aparicio', '1993-12-11', 1, 'Es una actriz de cine y docente mexicana, reconocida por su participación en la cinta Roma'),
(107, 'Mariana', 'de Tariva', '1974-11-04', 1, 'Es una actriz mexicana, reconocida por sus diversos papeles tanto en películas como en series de televisión. '),
(108, 'George', 'Clooney', '1961-05-06', 2, 'Ha sido galardonado con cuatro Globos de Oro, dos Óscar y un BAFTA. '),
(109, 'Sandra', 'Bullock', '1964-07-26', 2, 'Es conocida por su participación en películas como Speed, Miss Congeniality, The Proposal, Gravity. etc.'),
(110, 'Emma ', 'Stone', '1988-11-06', 2, 'Ha recibido numerosos premios, entre ellos: un Óscar, un BAFTA, un SAG y un Globo de Oro, a mejor actriz, por su interpretación en la cinta La La Land.?'),
(111, 'Olivia', 'Colman', '1974-01-30', 12, 'Actriz británica ganadora del premio Óscar a mejor actriz de 2019 por la película The Favourite.'),
(112, 'Colin', 'Farrell', '1976-05-31', 52, 'Ha trabajado en películas como Tigerland, Daredevil, Miami Vice, Minority Report, Phone Booth, The Recruit, Alejandro Magno, S.W.A.T.'),
(113, 'Danny', 'DeVito', '1944-11-17', 2, 'Premiado con los galardones, Globo de Oro y Emmy, por su participación en la comedia de situación Taxi'),
(114, 'Michael', 'Douglas', '1951-09-05', 2, 'ganador de un Globo de Oro al mejor actor de comedia o musical y candidato al Premio del Sindicato de Actores al mejor actor de televisión - Miniserie o telefilme.'),
(115, 'Winona ', 'Horowitz', '1971-10-29', 2, 'Dos veces nominada al Óscar y ganadora de un Globo de Oro.'),
(116, 'John ', 'Deep', '1963-06-09', 2, 'Ha sido nominado en tres ocasiones al Óscar y recibió un Globo de Oro, ? un premio del Sindicato de Actores y un César.?'),
(117, 'Freddie', 'Highmore', '1992-02-14', 14, 'Hizo su debut como actor en la película de comedia Women Talking Dirty, y desde entonces ha participado en Finding Neverland'),
(118, 'Eva', 'Green', '1980-07-06', 9, 'Hija de la actriz Marlène Jobert, Eva comenzó su carrera en el teatro antes de debutar en el cine con el largometraje de Bernardo Bertolucci Soñadores'),
(119, 'Asa', 'Butterfield ', '1997-04-01', 12, ' Ha trabajado, entre otras películas, en El niño con el pijama de rayas, Hugo, de Martin Scorsese y en El juego de Ender, adaptación de la novela homónima de Orson Scott Card, dirigida por Gavin Hood. En 2019 protagonizó la serie de Netflix Sex Education'),
(120, 'Sam ', 'Worthington', '1976-08-02', 12, 'Actor australiano nacido en Inglaterra'),
(121, 'Zoe', 'Saldaña', '1978-06-19', 2, 'Tuvo papeles de importancia en las películas Center Stage del año 2000 y Crossroads'),
(122, 'Leonardo', 'DiCaprio', '1974-11-11', 2, 'Ha recibido numerosos premios entre los que destacan, un Óscar al mejor actor y un premio BAFTA'),
(123, 'Kate', 'Winslet', '1975-10-05', 12, 'Actriz inglesa de cine, televisión y teatro, ganadora de un Premio Óscar, cuatro Globos de Oro, tres Premios Bafta, tres Premios del Sindicato de Actores, un Premio de la Crítica Cinematográfica, un Premio Emmy y un Premio Grammy, entre otros.'),
(124, 'Arnord', 'Schwarzenegger', '1947-07-30', 18, 'Actor, empresario, político y antiguo fisicoculturista profesional austríaco y nacionalizado estadounidense. '),
(125, 'Michael', 'Biehn', '1956-07-31', 2, 'Ha participado en varias películas incluyendo The Terminator así como también en Aliens: El regreso, The Abyss, Tombstone, y La Roca.'),
(126, 'Russell ', 'Streiner', '1940-02-06', 2, 'Streiner es el hermano mayor del actor / productor Gary Streiner.?'),
(127, 'Judith ', 'O\'Dea', '1945-04-20', 2, ''),
(128, 'Ken ', 'Foree', '1948-02-29', 2, 'Siendo sus primeras actuaciones cinematográficas en la película The Bingo Long Traveling All-Stars & Motor Kings y en las películas de The Wanderers y El amanecer de los muertos filmadas en 1979'),
(129, 'Andrew', 'Garfiel', '1983-08-20', 2, 'Es conocido por interpretar a Peter Parker/Spiderman en la saga The Amazing Spider-Man en 2012 y 2014.'),
(130, 'Michael', 'Fox', '1961-07-09', 11, 'Su carrera en el cine y la televisión comenzó a fines de los años 1970.'),
(131, 'Christopher ', 'Lloyd', '1938-10-22', 2, 'Es más conocido por sus papeles como el Doc Emmett Brown en la trilogía de Back to the Future, Fester Addams en The Addams Family y su secuela, Addams Family Values y el Juez Doom en ¿Quién engañó a Roger Rabbit?'),
(132, 'Henry', 'Thomas', '1971-09-09', 2, 'e dio a conocer tras protagonizar en su niñez el rol de Elliot en la película E.T.: El extraterrestre de Steven Spielberg, rol por el que fue nominado a un Globo de Oro y un BAFTA'),
(133, 'Drew ', 'Barrymore', '1975-02-22', 2, 'Es miembro de la familia de actores Barrymore, hija del actor John Drew Barrymore y nieta de los primeros actores John Barrymore y Dolores Costello.'),
(134, 'Adrien', 'Brody', '1973-04-14', 2, 'Ganó el premio Óscar a mejor actor por su actuación en la película El pianista en el 2002, convirtiéndose en el actor más joven de la historia en haber ganado en esa categoría.'),
(135, 'Emilia', 'Fox', '1974-07-31', 14, 'Es más conocida por su papel como Jeannie Hurst en la serie de televisión Randall & Hopkirk.'),
(136, 'Gael', 'Garcia', '1978-11-30', 1, 'Ganador del Globo de Oro por su actuación en la serie Mozart in the Jungle.'),
(137, 'Emilio', 'Echeverria', '1944-12-12', 1, 'Actor mexicano de cine, teatro y televisión, que además cuenta con el título de contador público.'),
(138, 'Brad', 'Pitt', '1937-12-18', 2, 'William Bradley Pitt, ? conocido como Brad Pitt, es un actor y productor de cine estadounidense.'),
(139, 'Antonio ', 'Banderas', '1960-08-10', 7, 'José Antonio Domínguez Bandera?, de nombre artístico Antonio Banderas, es un actor, cantante, productor y director de cine español.'),
(140, 'Leonardo', 'Sbaraglia', '1970-06-30', 15, 'Durante su extensa trayectoria, ha recibido varios premios por su labor. Es uno de los actores argentinos que han trabajado en Hollywood.'),
(141, 'Penelope', 'Cruz', '1974-04-28', 7, 'Su filmografía incluye múltiples películas en lengua española y otros idiomas: inglés, italiano y francés'),
(142, 'Viggo', 'Mortensen', '1958-10-21', 2, 'Por sus interpretaciones ha sido nominado en tres ocasiones a los Premios Óscar y en cuatro a los Premios Globo de Oro.'),
(143, 'Elijah', 'Wood', '1981-01-28', 2, 'actor de cine y televisión estadounidense. Debutó con un papel menor en Back to the Future Part II,'),
(144, 'Orlando ', 'Bloom', '1977-01-13', 12, 'DescripciónOrlando Jonathan Blanchard Bloom, conocido habitualmente como Orlando Bloom, es un actor británico. '),
(145, 'Richard', 'Armitage', '1971-08-22', 12, 'Actualmente acaba de rodar las películas de la trilogía basada en la novela El hobbit de J. R. R. Tolkien, en las que interpreta al enano Thorin. '),
(146, 'Bradley', 'Cooper', '1975-01-05', 2, 'Ha aparecido en películas como Failure to Launch, Yes Man, He\'s Just Not That Into You, The Hangover, The A-Team, The Hangover Part II, The Hangover Part III, Silver Linings Playbook, American Sniper y A Star is Born'),
(147, 'Dianne ', 'Wiest', '1948-03-28', 2, 'Dianne Wiest es una actriz estadounidense, ganadora, entre otros premios, del Óscar en dos ocasiones.'),
(148, 'Lea', 'Michele', '1986-08-22', 2, ''),
(149, 'Cory', 'Monteith', '1982-05-11', 11, 'Cory Allan Michael Monteith? ? fue un actor y músico canadiense, conocido por su papel de Finn Hudson en la serie de televisión Glee'),
(150, 'Julia', 'Roberts', '1967-10-25', 2, 'Es una actriz de cine y televisión estadounidense, ganadora del premio Óscar a la mejor actriz, ? así como de tres Globos de Oro en las categorías de mejor actriz en drama'),
(151, 'Mark', 'Ruffalo', '1967-11-22', 2, 'Cuenta con tres nominaciones a los Premio Óscar, cuatro a los premios Globo de oro, entre otras más en múltiples reconocimientos.'),
(152, 'Jim', 'Parsons', '1973-03-24', 2, 'Es un actor estadounidense de televisión, teatro y cine.'),
(153, 'Shameik ', 'Moore', '1995-05-04', 2, 'Shameik Moore es un actor y rapero estadounidense. Es de ascendencia jamaicana.?'),
(154, 'Jake', 'Johnson', '1978-05-28', 2, ' también conocido como Jake M. Johnson, es un actor y cómico estadounidense, famoso sobre todo por interpretar a Nick Miller en la comedia de Fox New Girl. Johnson también co-protagonizó la película de 2009 Paper Heart'),
(155, 'Robert', 'Downey Jr.', '1965-04-04', 2, 'Ganador de dos Globos de Oro y un BAFTA. Con cuatro décadas en el mundo del espectáculo, ha rodado más de 80 películas. Ha sido nominado dos veces a los Óscar: la primera en 1993 por su papel en Chaplin y la segunda en 2009 por Tropic Thunder'),
(156, 'Gwyneth', 'Paltrow', '1972-09-27', 2, 'Ganadora de un Óscar, un Globo de Oro y un premio del Sindicato de Actores, todos ellos en la categoría de mejor actriz, por su interpretación de Viola de Lesseps en la película Shakespeare in Love.'),
(157, 'Paul', 'Bettany', '1971-05-27', 12, 'Es un actor de cine, televisión y teatro inglés. Fue candidato al BAFTA al mejor actor de reparto.'),
(158, 'Elizabeth', 'Olsen', '1989-02-19', 2, 'Es una actriz y modelo estadounidense. Conocida por interpretar a Wanda Maximoff / Bruja Escarlata, en la serie de películas de el UCM'),
(159, 'Don ', 'Cheadle', '1964-11-29', 2, 'Ganador del Globo de Oro al mejor actor de reparto - Serie, miniserie o telefilme y dos veces ganador del Premio del Sindicato de Actores al mejor reparto.? Candidato a los Premios Óscar, Emmy y BAFTA.'),
(160, 'Anthony', 'Mackie', '1978-09-23', 2, 'Conocido por su papel como el sargento JT Sanborn en la película The Hurt Locker ganadora en los Premio Oscar a la Mejor Película. También muy conocido por su papel de Sam Wilson / Falcon en varias películas del Universo cinematográfico de Marvel'),
(161, 'Sebastian', 'Stan', '1981-08-13', 2, 'Actor rumano-estadounidense, Es conocido por interpretar a Jack Benjamin '),
(162, 'Chadwick', 'Boseman', '1977-11-29', 2, 'Actor, guionista y dramaturgo estadounidense. Es mejor conocido por interpretar a Jackie Robinson en 42 y James Brown en Get on Up. También tuvo papeles en la serie de televisión Lincoln Heights y en Persons Unkonwn, y las películas The Express y Draft Day'),
(163, 'Jeremy', 'Renner', '1971-01-07', 2, 'Jeremy Lee Renner es un actor, productor, cantante y compositor estadounidense, conocido por su papel como el Sargento de primera clase William James en The Hurt Locker y como Hawkeye en el Universo cinematográfico de Marvel'),
(164, 'Chris', 'Evans', '1981-06-13', 2, 'Actor, modelo y director de cine estadounidense. Es conocido por su papel en las películas Capitán América y Los vengadores'),
(165, 'Josh', 'Brolin', '1968-02-12', 2, 'Josh James Brolin es un actor de cine y televisión estadounidense. Su primer papel fue en la película Los Goonies en 1985'),
(166, 'Benedict', 'Cumberbatch', '1976-07-19', 12, 'Benedict Timothy Carlton Cumberbatch es un galardonado actor británico de televisión, teatro, cine y voz.?'),
(167, 'Scarlett', 'Johansson', '1984-11-22', 2, 'Actriz de cine, cantante y modelo estadounidense que alcanzó la fama con su papel en la película The Horse Whisperer y posteriormente obtuvo la aclamación por parte de los críticos de cine debido a su participación en Ghost World'),
(168, 'Tom', 'Holland', '1996-06-01', 12, 'Actor y bailarín británico, conocido por interpretar a Lucas Bennett en la película Lo imposible, a Thomas Nickerson en En el corazón del mar y a Spider-Man en las películas más recientes del Universo cinematográfico de Marvel'),
(169, 'Chris', 'Hemsworth', '1983-08-11', 16, 'Actor australiano. Adquirió fama en su país natal al interpretar el papel de Kim Hyde en la serie Home and Away'),
(171, 'Paul ', 'Rudd', '1969-04-06', 2, 'Aparece principalmente en comedias, y es conocido por sus papeles en las películas Ant-Man, Avengers'),
(172, 'Samuel ', 'Jackson', '1948-12-21', 2, 'Actor y productor de cine, televisión y teatro estadounidense. Candidato al premio Óscar, a los Globos de Oro y al Premio del Sindicato de Actores y ganador de un BAFTA al mejor actor de reparto'),
(173, 'Joe ', 'Johnston', '1950-03-13', 2, 'Director y productor de cine estadounidense, responsable de películas como Hidalgo, Parque Jurásico III, Cielo de octubre y Jumanji, entre otras.'),
(174, 'Robin', 'Williams', '1951-07-21', 2, 'Comediante, actor y actor de voz estadounidense, ganador de un Premio Óscar, cinco Globos de Oro, un Premio del Sindicato de Actores, dos Premios Emmy y tres Premios Grammy.'),
(175, 'Kenneth', 'Branagh', '1960-12-10', 12, 'Director, guionista y actor cinematográfico y teatral británico'),
(176, 'Shane', 'Black', '1961-12-16', 2, 'Colaboró en algunas de la películas más grandes y taquilleras de acción de las décadas de 1980 y 1990, incluyendo su trabajo en Arma Letal y en El Último Boy Scout, las cuales fueron escritas por Black'),
(177, 'Alan', 'Taylor', '1965-12-12', 2, 'Director, guionista y productor de televisión y cine estadounidense, ganador de un premio Emmy'),
(178, 'Joe', 'Russo', '1971-07-08', 2, 'Junto con su hermano Anthony han echo grandes peliculas de UCM'),
(179, 'Peyton', 'Reed', '1964-07-03', 2, 'Director de cine y televisión estadounidense, más conocido por dirigir las películas de comedia Yes Man, Bring It On y The Break-Up, así como la película de superhéroes Ant-Man'),
(180, 'Scott', 'Derrickson', '1966-03-18', 2, 'Director de cine, productor y guionista estadounidense'),
(182, 'Evangeline', 'Lilly', '1979-08-03', 11, 'Actriz y escritora canadiense. Logró popularidad por su papel de Kate Austen en la serie de televisión Lost, por la que obtuvo un Premio del Sindicato de Actores y recibió una nominación al Globo de Oro'),
(183, 'Tilda', 'Swinton', '1960-11-05', 12, 'Actriz y modelo británica de ascendencia escocesa'),
(184, 'Jon', 'Watts', '1981-06-21', 2, 'Director, productor y guionista estadounidense. Se le conoce por haber sido el encargado de dirigir la película de superhéroes Spider-Man: Homecoming'),
(185, 'Taika', 'Waititi', '1975-08-16', 40, 'Director, escritor, pintor, comediante y actor neozelandés. En 2004 fue nominado a un premio Óscar por su cortometraje Two Cars, One Night. Su película de 2010 Boy se convirtió en la más taquillera en Nueva Zelanda, y fue lanzada internacionalmente en 2012'),
(186, 'Ryan', 'Coogler', '1986-05-23', 2, 'Director y guionista estadounidense. Es conocido en la industria por su trabajo como director de las películas Creed y Black Panther'),
(187, 'Daniel', 'Radcliffe', '1989-07-23', 12, 'Actor inglés, principalmente conocido por haber protagonizado la saga cinematográfica de Harry Potter.??? Fundamentalmente por ello, ha recaudado una fortuna de 23 millones de libras esterlinas, parte de la cual ha destinado a organizaciones benéficas'),
(188, 'Emma', 'Watson', '1990-04-15', 9, 'Actriz, modelo y filántropa británica. Es principalmente conocida por interpretar a Hermione Granger en la saga de películas de Harry Potter'),
(189, 'Chris', 'Columbus', '1958-09-10', 2, 'Director de cine italo-estadounidense. Se inició en el cine como guionista de la película Gremlins, de la productora de Steven Spielberg, Amblin Entertainment'),
(190, 'David ', 'Yates', '1963-10-08', 12, 'Director, guionista y productor de cine y televisión británico que ha desarrollado una larga carrera televisiva en su país, principalmente concretando diferentes trabajos para la cadena BBC'),
(191, 'Eddie', 'Redmayne', '1982-01-06', 12, 'Actor, cantante y modelo?? británico. Ganador del Premio Óscar, el Globo de Oro, el Premio del Sindicato de Actores, el BAFTA y el Premio Tony de teatro'),
(192, 'Justin', 'Lin', '1973-10-11', 21, 'Director de cine taiwanés cuyas películas han recaudado más de 2 mil millones de dólares en todo el mundo. Es más conocido por su trabajo en Better Luck Tomorrow, en la saga The Fast and the Furious y por la serie de comedia Community, así como también por dirigir Star Trek Beyond'),
(193, 'Vin', 'Diesel', '1967-07-18', 2, 'Actor, productor y director de cine estadounidense.?? Conocido por la interpretación de Dominic Toretto en la saga cinematográfica The Fast and the Furious y por el papel de Richard B'),
(194, 'Paul', 'Walker', '1973-09-12', 2, 'Actor, modelo, piloto de carreras y biólogo marino estadounidense, ? conocido por su papel de Brian O\'Conner en la película de acción The Fast and the Furious, repitiendo el papel en cinco de las seis siguientes películas de la franquicia'),
(195, 'Dwayne', 'Johnson', '1972-05-02', 2, 'Actor y luchador profesional estadounidense, conocido popularmente como The Rock, que trabaja haciendo visitas esporádicas para la WWE y como un reconocido actor en diversas películas, entre ellas interpretando a Luke Hobbs en The Fast and the Furious'),
(196, 'Adam', 'Sandler ', '1966-09-09', 2, 'Actor, comediante, músico, productor y guionista estadounidense. Luego de convertirse en miembro del elenco de Saturday Night Live, Sandler ha protagonizado una gran cantidad de películas de Hollywood que han recaudado cerca de dos mil millones de dólares de taquilla'),
(197, 'Salma ', 'Hayek', '1966-09-02', 1, 'Actriz de cine, teatro y televisión mexicana de ascendencia libanesa, así como empresaria y productora'),
(198, 'Kevin', 'James', '1966-04-26', 2, 'Humorista y actor estadounidense nominado al Emmy, conocido por su actuación como Doug Heffernan en la serie The King of Queens y como Paul Blart en Héroe de centro comercial'),
(199, 'Dennis', 'Dugan', '1946-09-05', 2, 'Más conocido por su asociación con el actor cómico Adam Sandler, con quien dirigió las películas Happy Gilmore, Un papá genial, Los declaro marido y Larry, No te metas con Zohan, Grown Ups, Just Go With It, Jack y Jill y Grown Ups 2'),
(200, 'Eugenio', 'Derbez', '1961-09-02', 1, 'Es un actor, comediante, guionista, escritor, empresario, productor y director de cine, teatro y televisión mexicano'),
(201, 'Anna', 'Faris', '1976-11-26', 2, 'Saltó a la fama por su trabajo en papeles cómicos, principalmente como Cindy Campbell en la franquicia de Scary Movie'),
(202, 'Omar', 'Chaparro', '1974-11-26', 1, 'Humorista, actor, cantante, compositor, productor, conferencista y presentador de radio y televisión mexicano'),
(203, 'Martha ', 'Higareda', '1983-08-24', 1, 'Actriz mexicana de cine y televisión'),
(204, 'Nacho', 'Velilla', '1977-03-24', 1, 'Director y productor'),
(205, 'Gore', 'Verbinski', '1964-03-16', 2, 'Ganador del Óscar por la película Rango. Verbinski es el creador de grandes éxitos de taquilla, como la trilogía de Piratas del Caribe, la película de terror The Ring, la cinta animada Rango y el western El llanero solitario, entre otras'),
(206, 'Louis', 'Leterrier', '1973-06-17', 9, 'Director de cine francés, conocido por películas de acción como las dos primeras películas de la saga del Transporter, la película de superhéroes The Incredible Hulk, Furia de titanes, Now You See Me, entre otras'),
(207, 'Richard', 'LaGravenese', '1959-10-30', 2, 'Guionista estadounidense y, ocasionalmente, director de cine. Es conocido por haber escrito el guion de El rey pescador, por el que fue nominado a un Oscar de la Academia'),
(208, 'Hilary', 'Swank', '1974-07-30', 2, 'Ganadora de dos premios Óscar, dos Globos de Oro y un Premio del Sindicato de actores, sus apariciones en películas como Boys Don\'t Cry o Million Dollar Baby le han reportado tanto buenas críticas como reconocimiento'),
(209, 'Gerard', 'Butler', '1969-11-13', 12, 'Actor de cine, televisión y productor escocés. Después de estudiar derecho, Butler se dedicó a la actuación a mediados de la década de 1990 con pequeños papeles en producciones fílmicas. Debutó en el cine con Mrs. Brown, seguida de la película de James Bond El mañana nunca muere'),
(210, 'Lasse', 'Hallström', '1946-06-02', 49, 'Director de cine sueco'),
(211, 'Amanda', 'Seyfried', '1985-12-03', 2, 'Actriz de cine y televisión, cantante y modelo estadounidense, conocida por Querido John, Mamma Mia, Chicas Pesadas y Cartas a Julieta, entre muchas otras'),
(212, 'Channing ', 'Tatum', '1980-04-26', 2, 'Actor, bailarín, productor y modelo estadounidense. Inició su carrera artística como modelo y posteriormente se dedicó a la interpretación. Ha participado en varias películas, entre las que destacan Step Up de 2006, G.I'),
(213, 'Leigh ', 'Whannell', '1977-01-17', 16, 'Director de cine, actor y guionista australiano. Es famoso por haber sido el guionista y coprotagonista de la película de terror Saw y sus posteriores dos secuelas, además de ser el guionista de la saga Insidious'),
(214, 'Lin ', 'Shaye', '1943-10-12', 2, 'Ella es considerada como una reina del grito debido a sus papeles en varias franquicias o películas de terror incluyendo A Nightmare on Elm Street, Critters'),
(215, 'James', 'Wan', '1977-02-26', 52, 'Director, productor y guionista malayo nacionalizado australiano. Wan es ampliamente conocido por dirigir la película de terror Saw. También ha dirigido Dead Silence y Death Sentence, Insidious, The Conjuring e Insidious: Chapter 2, Furious 7, The Conjuring 2 y Aquaman'),
(216, 'Andres', 'Muschietti', '1973-08-26', 15, 'Director, productor de cine y productor televisivo argentino. Es conocido por su trabajo en películas de terror como Mamá y la adaptación de la novela de Stephen King It, estrenada en septiembre de 2017'),
(217, 'Sophia', 'Lillis', '2002-02-13', 2, 'Actriz estadounidense, conocida por interpretar a Beverly Marsh en la película de terror de 2017 It'),
(218, 'Bill', 'Skarsgard', '1990-08-09', 49, 'Es hijo del actor Stellan Skarsgård. Es conocido por interpretar a Pennywise, el payaso en la película de terror It. Sus otros papeles notables en el cine son en Simple Simon, The Divergent Series: Allegiant, y Atomic Blonde'),
(219, 'Patrick', 'Wilson', '1973-07-03', 2, 'Desde 1996 ha participado en varios musicales y ha protagonizado varias obras teatrales en el circuito de Broadway'),
(220, 'Vera', 'Farmiga', '1976-08-03', 2, 'Actriz, productora, directora y bailarina estadounidense. En 2009 recibió varias nominaciones por su actuación en la película Up in the Air, entre ellas, la nominación a un premio Óscar y un Globo de Oro'),
(221, 'Jim', 'Carrey', '1962-01-17', 11, 'Humorista, actor y cantante canadiense. Es conocido por sus interpretaciones con humor slapstick, ? y por su labor actoral ganó dos Premios Globo de Oro y fue candidato a un Premio BAFTA'),
(222, 'Eddie ', 'Murphy', '1961-04-03', 2, 'Actor, director, cantante y humorista estadounidense'),
(223, 'Beyonce', '', '1981-09-04', 2, 'Cantante, compositora, bailarina, actriz, modelo, diseñadora de moda y empresaria estadounidense'),
(224, 'Bill ', 'Condon', '1955-10-22', 2, 'Guionista y director estadounidense, más conocido por dirigir y escribir películas aclamadas por la crítica como Chicago, Kinsey, Dreamgirls y las dos últimas entregas de The Twilight Saga: Breaking Dawn'),
(225, 'Robert ', 'Pattinson ', '1986-05-13', 12, 'Actor, modelo, productor y cantante británico.? Comenzó su carrera actoral interpretando a Cedric Diggory en Harry Potter y el cáliz de fuego y luego alcanzó'),
(226, 'Taylor ', 'Lautner', '1992-02-11', 2, 'Actor, modelo y luchador de artes marciales estadounidense. Es conocido por interpretar el personaje de Jacob Black en el largometraje de 2008 Crepúsculo y sus secuelas y a Sharkboy en Las aventuras de Sharkboy y Lavagirl en 3-D'),
(227, 'Zac', 'Efron', '1987-10-18', 2, 'Actor estadounidense'),
(228, 'Dan', 'Stevens', '1982-10-10', 12, 'Actor británico. Stevens es conocido por su papel de Matthew Crawley en la serie de televisión dramática de época Downton Abbey');

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
  `GENERO` varchar(10) NOT NULL,
  `IDIOMA` varchar(10) NOT NULL,
  `CALLE` varchar(45) NOT NULL,
  `NUM_EXT` smallint(6) NOT NULL,
  `NUM_INT` smallint(6) NOT NULL,
  `FRACC_COL` varchar(45) NOT NULL,
  `POBLACION` varchar(45) NOT NULL,
  `ESTADO` varchar(45) NOT NULL,
  `ID_PAIS` int(11) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `PASSWORD` text NOT NULL,
  `FECHA_REGISTRO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_atrib`
--

INSERT INTO `usuarios_atrib` (`ID_USUARIO`, `NOMBRE`, `APELLIDO1`, `APELLIDO2`, `FECHA_NAC`, `GENERO`, `IDIOMA`, `CALLE`, `NUM_EXT`, `NUM_INT`, `FRACC_COL`, `POBLACION`, `ESTADO`, `ID_PAIS`, `EMAIL`, `PASSWORD`, `FECHA_REGISTRO`) VALUES
(1, 'Salvador', 'De Luna', 'Macias', '1990-02-13', 'HOMBRE', 'ESPAÑOL', 'Modernización', 109, 0, 'Municipio Libre', 'Aguascalientes', 'Aguascalientes', 1, 'slm_y_bmv@hotmail.com', '', '2019-03-03 12:22:16'),
(2, 'Rosalía', 'Anaya', 'Loera', '2001-03-15', 'MUJER', 'INGLÉS', 'Camelias', 554, 2, 'Las Flores', 'Aguascalientes', 'Aguascalientes', 1, 'rosianayalo1@gmail.com', '', '2019-03-28 04:44:23'),
(3, 'Jonas', 'Vega', 'Lara', '1981-05-22', 'HOMBRE', 'ESPAÑOL', 'Los mangos', 789, 1, 'Las huertas', 'Aguascalientes', 'Aguascalientes', 1, 'nomo3s@outlook.es', '', '2019-03-31 16:50:54'),
(4, 'Kilimanjaro', 'Dzul', 'Baarz', '1878-02-01', 'NO ESPEC', 'INGLÉS', '18th St.', 3321, 7, 'Downtown', 'Pala', 'California', 2, 'kbaarznom@aol.com', '', '2019-04-01 20:27:29'),
(5, 'Louis', 'Handell', 'Wentz', '1975-02-01', 'MUJER', 'INGLES', '1st Ave.', 233, 1, 'Downtown', 'Los Angeles', 'Californa', 2, 'llac1@outlook.es', '342325AC:', '2019-02-25 00:00:00'),
(6, 'Nash', 'Handell', 'Novell', '1976-02-21', 'HOMBRE', 'INGLES', '1st Ave.', 233, 1, 'Downtown', 'Los Angeles', 'California', 2, 'llac1@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(7, 'Caliope', 'Santana', 'Loera', '1987-03-22', 'MUJER', 'ESPAÑOL', 'LOS CONOS', 123, 0, 'OJOCALIENTE 1', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'CALIOPE23@outlook.es', '342325AC:', '2019-02-25 00:00:00'),
(8, 'Remy', 'Sarz', 'Nolev', '1990-02-01', 'HOMBRE', 'ESPAÑOL', 'CAMELIAS', 553, 1, 'LAS FLORES', 'AGUASCALIENTES', 'AGUASCALIENTES', 2, 'REMY@outlook.es', '342325AC:', '2019-02-25 00:00:00'),
(9, 'Ozzie', 'Pereira', 'Wentz', '1976-02-21', 'HOMBRE', 'INGLES', '1st Ave.', 233, 1, 'Downtown', 'Los Angeles', 'California', 2, 'llac1@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(10, 'Norway', 'Handball', 'Willis', '1976-02-21', 'HOMBRE', 'INGLES', 'Cross Blvd.', 1553, 1, 'Downtown', 'CHICAGO', 'ILLINOIS', 2, 'NORWAXA1@outlook.es', '342325AC:', '2019-02-28 00:00:00'),
(11, 'Cecil', 'Spencer', 'Nunes', '1987-03-22', 'MUJER', 'ESPAÑOL', 'ST. PATRICK', 1232, 0, 'CHICKASHA', 'OKLAHOMA', 'OKLAHOMA', 2, 'CEC09WS@outlook.es', '342325AC:', '2019-02-28 00:00:00'),
(12, 'Hedda', 'Wong', 'Nolev', '1994-02-01', 'MUJER', 'ESPAÑOL', 'JOSE MA NAPOLEON', 553, 1, 'CANTANTES ILUSTRES', 'GUADALAJARA', 'JALISCO', 1, 'HEDDA46@outlook.es', '342325AC:', '2019-05-11 00:00:00'),
(13, 'Esmeralda', 'Pereira', 'Oz', '1989-07-24', 'MUJER', 'ESPAÑOL', 'Jose Ma Chavez', 1665, 1, 'Centro', 'Aguascalientes', 'Aguascalientes', 1, 'esme321@outlook.es', '342325AC:', '2019-02-12 00:00:00'),
(14, 'Nasim', 'Foreman', 'Wells', '1970-06-28', 'HOMBRE', 'INGLES', 'CocoJambo', 445, 1, 'ChinaTown', 'Los Angeles', 'California', 2, 'nassimvvx@outlook.es', '342325AC:', '2019-03-22 00:00:00'),
(15, 'Tania', 'Ramirez', 'Loera', '1983-03-01', 'MUJER', 'ESPAÑOL', 'Independencia', 983, 0, 'Liberalismo', 'Hermosillo', 'Sonora', 1, 'tanyazz3@outlook.es', '342325AC:', '2019-02-01 00:00:00'),
(16, 'Walter', 'Burris', 'Zchellev', '1978-11-22', 'HOMBRE', 'INGLES', 'Abbey Rd', 223, 1, 'Highlands', 'London', 'London', 12, 'waltavvxw@outlook.es', '342325AC:', '2019-01-11 00:00:00'),
(17, 'Brynn', 'Johnson', 'Butter', '1999-10-10', 'HOMBRE', 'INGLES', 'Cursus Av.', 988, 102, 'Firenze', 'Cape Town', 'Oregon', 2, 'brynnes12@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(18, 'Kelly', 'Lee', 'Fuzz', '1987-03-10', 'MUJER', 'ESPAÑOL', 'Barcelona', 655, 0, 'Peninsula Iberica', 'San Cristobal', 'Chiapas', 1, 'kellerbaxter111@outlook.es', '342325AC:', '2019-01-02 00:00:00'),
(19, 'Jeremy', 'Carson', 'Maglev', '1965-03-30', 'HOMBRE', 'INGLES', 'North Rd', 8893, 927, 'CAPE DESIREE', 'CORSAIR', 'NORTH CAROLINA', 2, 'JEREMAIAHLONDON11@outlook.es', '342325AC:', '2019-01-20 00:00:00'),
(20, 'Lance', 'Case', 'Sachs', '2010-04-05', 'HOMBRE', 'INGLES', 'Sit Av.', 99, 1, 'Nivelles', 'Muno', 'Wyoming', 2, 'lancecaseo@outlook.es', '342325AC:', '2019-04-28 00:00:00'),
(21, 'Colton', 'White', '', '1976-02-21', 'HOMBRE', 'INGLES', '8th Ave.', 234, 1, 'North Creek', 'Chattanooga', 'Tennessee', 2, 'colwafew3@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(22, 'Cecilia', 'Cortés', 'López', '1963-10-11', '', 'ESPAÑOL', 'Paris', 876, 0, 'Capital', 'Ciudad del Cabo', 'Baja California', 1, 'ceciliacecilia12@outlook.es', '342325AC:', '2019-03-09 00:00:00'),
(23, 'Aidan', 'Atkins', '', '2000-02-23', 'HOMBRE', 'INGLES', 'Vitae Rd', 553, 332, 'Nevelinn', 'Manhattan', 'New York', 2, 'atkinsaid445@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(24, 'Kibo', 'Kim', '', '1987-04-24', 'HOMBRE', 'INGLES', ' 15th Ave.', 23, 102, 'Downtown', 'Las Vegas', 'Nevada', 2, 'kibokimkibo5@outlook.es', '342325AC:', '2019-01-13 00:00:00'),
(25, 'Hashim', 'Hurst', '', '2001-01-27', 'HOMBRE', 'INGLES', '21st Ave.', 233, 1, 'East Compton', 'Los Angeles', 'California', 2, 'HASRSINMM1@outlook.es', '342325AC:', '2019-03-27 00:00:00'),
(26, 'Maris', 'Raymond', '', '1994-02-19', 'MUJER', 'ESPAÑOL', 'Iturbide', 443, 201, 'Personajes Ilustres', 'San Miguel de Allende', 'Guanajuato', 1, 'marisray88@outlook.es', '342325AC:', '2019-01-10 00:00:00'),
(27, 'Romelia', 'López', 'Aguayo', '1976-02-21', 'MUJER', 'ESPAÑOL', 'Olivos', 100, 1, 'Arborada Residencial', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'corocoro9802@outlook.es', '342325AC:', '2019-01-31 00:00:00'),
(28, 'Norma', 'Santacruz', 'Loera', '1964-01-21', 'MUJER', 'ESPAÑOL', 'Avellanos', 123, 0, 'Arborada Residencial', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'marmeax2@outlook.es', '342325AC:', '2019-02-09 00:00:00'),
(29, 'Orquídea', 'Anaya', 'Heredia', '1980-02-01', 'MUJER', 'ESPAÑOL', 'Cotorinas', 521, 1, 'Ojocaliente I', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'merrycrismas13@outlook.es', '342325AC:', '2019-01-21 00:00:00'),
(30, 'Maciel', 'Pereira', ' ', '1979-09-21', 'HOMBRE', 'ESPAÑOL', 'Nogales', 2332, 133, 'Arboledas Norte', 'AGUASCALIENTES', 'AGUASCALIENTES', 2, 'cardibpoop2@outlook.es', '342325AC:', '2019-02-11 00:00:00'),
(31, 'Fatima', 'Hernandez', ' ', '1990-02-13', 'MUJER', 'ESPAÑOL', 'Blvd Colosio', 1553, 1, 'Residencial Norte', 'Aguascalientes', 'Aguascalientes', 2, 'byefelicia21@outlook.es', '342325AC:', '2019-02-01 00:00:00'),
(32, 'Moreira', 'Reyes', 'Nuñez', '1987-03-22', 'MUJER', 'ESPAÑOL', 'Tigres', 1232, 0, 'Zoologico', 'Torreon', 'Coahuila', 1, 'fetishclub01@outlook.es', '342325AC:', '2019-03-15 00:00:00'),
(33, 'Polonia', 'Wong', 'Arteaga', '1994-02-02', 'MUJER', 'ESPAÑOL', 'JOSE Luis Pereira', 125, 1, 'PERSONAJES ILUSTRES', 'GUADALAJARA', 'JALISCO', 1, 'hebdofun6@outlook.es', '342325AC:', '2019-03-11 00:00:00'),
(34, 'Natividad', 'Naranjo', 'Oz', '1975-04-24', 'MUJER', 'ESPAÑOL', 'Miguel de la Madrid', 1665, 1, 'Loma Alta', 'Figueras', 'Figueras', 7, 'marcalanla@outlook.es', '342325AC:', '2019-02-12 00:00:00'),
(35, 'Mérida', 'José', 'Antares', '1970-06-28', 'MUJER', 'ESPAÑOL', 'Antropoidal', 445, 1, 'Ortográfica', 'Ciudad Cuauhtemoc', 'Ciudad de México', 1, 'vdsa2x1@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(36, 'Shaylla', 'Rentería', 'Loera', '1973-03-01', 'MUJER', 'ESPAÑOL', 'Zaragoza', 983, 0, 'Heroes', 'Tepic', 'Nayarit', 1, 'shayllabeautyface@outlook.es', '342325AC:', '2019-01-01 00:00:00'),
(37, 'Aleksandr', 'Ivanovich', 'Zchellev', '1978-11-22', 'HOMBRE', 'RUSO', 'Lenin Krasovsky', 223, 1, 'Romanov Falls', 'Kracovia', 'Munich', 47, 'aleksandromanov11@outlook.es', '342325AC:', '2019-01-31 00:00:00'),
(38, 'Marc', 'Cavazos', 'Carrera', '1999-10-10', 'HOMBRE', 'ESPAÑOL', 'Gran Vía', 121, 102, 'Centro', 'Barcelona', 'Barcelona', 7, 'marcvaz@outlook.es', '342325AC:', '2019-02-11 00:00:00'),
(39, 'Mason', 'Valenzuela', 'Castro', '1987-03-10', 'HOMBRE', 'ESPAÑOL', 'Barcelona', 622, 0, 'Peninsula Iberica', 'San Cristobal', 'Chiapas', 1, 'masonmas2@outlook.es', '342325AC:', '2019-01-02 00:00:00'),
(40, 'Kevin', 'Baars', 'Mercy', '1965-03-30', 'HOMBRE', 'INGLES', 'North Abbey Rd', 8893, 927, 'Zchech town', 'CORSAIR', 'NORTH CAROLINA', 2, 'kevinmax@outlook.es', '342325AC:', '2019-01-20 00:00:00'),
(41, 'Brayan', 'Maries', 'Snoozes', '1980-04-05', 'HOMBRE', 'INGLES', 'St. Anne Av.', 99, 1, 'Nivola', 'Muno', 'Wyoming', 2, 'brayannavajas12@outlook.es', '342325AC:', '2019-04-28 00:00:00'),
(42, 'Nevel', 'White', 'Jr.', '1996-02-21', 'HOMBRE', 'INGLES', '8th Ave.', 234, 1, 'North Creek', 'Chattanooga', 'Tennessee', 2, 'nevelflawless@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(43, 'Cassandra', 'Llamas', 'Llamas', '1963-10-11', 'MUJER', 'ESPAÑOL', 'Roma', 876, 0, 'Capital', 'Ciudad del Cabo', 'Baja California', 1, 'cassandrajones12@outlook.es', '342325AC:', '2019-02-09 00:00:00'),
(44, 'Will', 'Albert', ' ', '2001-02-23', 'HOMBRE', 'INGLES', 'Vitae Rd', 553, 332, 'North Valley', 'Vancouver', 'Vancouver', 11, 'williwall1@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(45, 'Killie', 'Nash', ' ', '1987-04-01', 'HOMBRE', 'INGLES', ' 7th Ave.', 23, 102, 'Revello', 'Louisville', 'Nevada', 2, 'killikillie@outlook.es', '342325AC:', '2019-02-13 00:00:00'),
(46, 'Mercy', 'Hurry', ' ', '1965-01-27', 'MUJER', 'INGLES', '21st Ave.', 233, 1, 'East Compton', 'Los Angeles', 'California', 2, 'mercyq11@outlook.es', '342325AC:', '2019-03-17 00:00:00'),
(47, 'Candida', 'Allende', 'Pérez', '2000-02-23', 'MUJER', 'ESPAÑOL', 'La Gran Vía', 553, 332, 'Liberal', 'Monterrey', 'Nuevo Leon', 1, 'candy2@outlook.es', '342325AC:', '2019-01-15 00:00:00'),
(48, 'Caledonia', 'López', 'Aguayo', '1976-02-21', 'MUJER', 'ESPAÑOL', 'Olivos', 100, 1, 'Arborada Residencial', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'caly9802@outlook.es', '342325AC:', '2019-01-31 00:00:00'),
(49, 'Marisol', 'Santacruz', 'Loera', '1964-01-21', 'MUJER', 'ESPAÑOL', 'Avellanos', 123, 0, 'Arborada Residencial', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'marysantacruz12@outlook.es', '342325AC:', '2019-02-09 00:00:00'),
(50, 'Marisol', 'Anaya', 'Heredia', '1980-02-01', 'MUJER', 'ESPAÑOL', 'Cotorinas', 521, 1, 'Ojocaliente I', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'marisolanayarocktars@outlook.es', '342325AC:', '2019-01-21 00:00:00'),
(51, 'Ociel', 'Pereira', ' ', '1979-09-21', 'HOMBRE', 'ESPAÑOL', 'Nogales', 2332, 133, 'Arboledas Norte', 'AGUASCALIENTES', 'AGUASCALIENTES', 2, 'lzzzcd22@outlook.es', '342325AC:', '2019-02-11 00:00:00'),
(52, 'Felicia', 'Hernandez', ' ', '1990-02-13', 'MUJER', 'ESPAÑOL', 'Blvd Colosio', 1553, 1, 'Residencial Norte', 'Aguascalientes', 'Aguascalientes', 2, 'felicia9021@outlook.es', '342325AC:', '2019-02-01 00:00:00'),
(53, 'Nieves', 'Reyes', 'Nuñez', '1987-03-22', 'MUJER', 'ESPAÑOL', 'Tigres', 1232, 0, 'Zoologico', 'Torreon', 'Coahuila', 1, 'icecreams001@outlook.es', '342325AC:', '2019-03-15 00:00:00'),
(54, 'Perla', 'Wong', 'Arteaga', '1994-02-02', 'MUJER', 'ESPAÑOL', 'JOSE Luis Pereira', 125, 1, 'PERSONAJES ILUSTRES', 'GUADALAJARA', 'JALISCO', 1, 'HE21aA46@outlook.es', '342325AC:', '2019-03-11 00:00:00'),
(55, 'Monica', 'Naranjo', 'Oz', '1975-04-24', 'MUJER', 'ESPAÑOL', 'Miguel de la Madrid', 1665, 1, 'Loma Alta', 'Figueras', 'Figueras', 7, 'mntarantula@outlook.es', '342325AC:', '2019-02-12 00:00:00'),
(56, 'María', 'José', 'Antares', '1970-06-28', 'MUJER', 'ESPAÑOL', 'Antropoidal', 445, 1, 'Ortográfica', 'Ciudad Cuauhtemoc', 'Ciudad de México', 1, 'nvxiiix1@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(57, 'Tania', 'Rentería', 'Loera', '1973-03-01', 'MUJER', 'ESPAÑOL', 'Zaragoza', 983, 0, 'Heroes', 'Tepic', 'Nayarit', 1, 'tantaniabella@outlook.es', '342325AC:', '2019-01-01 00:00:00'),
(58, 'Illya', 'Ivanovich', 'Zchellev', '1978-11-22', 'HOMBRE', 'RUSO', 'Lenin Krasovsky', 223, 1, 'Romanov Falls', 'Kracovia', 'Munich', 47, 'illyaromanov11@outlook.es', '342325AC:', '2019-01-31 00:00:00'),
(59, 'Calos', 'Cavazos', 'Carrera', '1999-10-10', 'HOMBRE', 'ESPAÑOL', 'Gran Vía', 121, 102, 'Centro', 'Barcelona', 'Barcelona', 7, 'calosvaz@outlook.es', '342325AC:', '2019-02-11 00:00:00'),
(60, 'Martin', 'Valenzuela', 'Castro', '1987-03-10', 'HOMBRE', 'ESPAÑOL', 'Barcelona', 622, 0, 'Peninsula Iberica', 'San Cristobal', 'Chiapas', 1, 'martinvalcal12@outlook.es', '342325AC:', '2019-01-02 00:00:00'),
(61, 'Martin', 'Baars', 'Mercy', '1965-03-30', 'HOMBRE', 'INGLES', 'North Abbey Rd', 8893, 927, 'Zchech town', 'CORSAIR', 'NORTH CAROLINA', 2, 'baarsmmax@outlook.es', '342325AC:', '2019-01-20 00:00:00'),
(62, 'Lance', 'Maries', 'Snoozes', '1980-04-05', 'HOMBRE', 'INGLES', 'St. Anne Av.', 99, 1, 'Nivola', 'Muno', 'Wyoming', 2, 'lanzwarem@outlook.es', '342325AC:', '2019-04-28 00:00:00'),
(63, 'Colton', 'White', 'Jr.', '1996-02-21', 'HOMBRE', 'INGLES', '8th Ave.', 234, 1, 'North Creek', 'Chattanooga', 'Tennessee', 2, 'colwafew3@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(64, 'Cecilia', 'Llamas', 'Llamas', '1963-10-11', 'MUJER', 'ESPAÑOL', 'Roma', 876, 0, 'Capital', 'Ciudad del Cabo', 'Baja California', 1, 'lamascecilia2@outlook.es', '342325AC:', '2019-02-09 00:00:00'),
(65, 'Jayden', 'Albert', '', '2001-02-23', 'HOMBRE', 'INGLES', 'Vitae Rd', 553, 332, 'North Valley', 'Vancouver', 'Vancouver', 11, 'jayzwannaparty1@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(66, 'Keih', 'Nash', '', '1987-04-01', 'HOMBRE', 'INGLES', ' 7th Ave.', 23, 102, 'Revello', 'Louisville', 'Nevada', 2, 'kimbox12345@outlook.es', '342325AC:', '2019-02-13 00:00:00'),
(67, 'Masha', 'Hurry', '', '1965-01-27', 'MUJER', 'INGLES', '21st Ave.', 233, 1, 'East Compton', 'Los Angeles', 'California', 2, 'mashamitzu11@outlook.es', '342325AC:', '2019-03-17 00:00:00'),
(68, 'Coriola', 'Allende', 'Pérez', '2000-02-23', 'MUJER', 'ESPAÑOL', 'La Gran Vía', 553, 332, 'Liberal', 'Monterrey', 'Nuevo Leon', 1, 'coriola112@outlook.es', '342325AC:', '2019-01-15 00:00:00'),
(69, 'Eduardo', 'Martinez', 'Luna', '1990-04-24', 'HOMBRE', 'ESPAÑOL', '5 de Mayo', 23, 102, 'La Nopalera', 'Ciudad Obregón', 'Ciudad de México', 1, 'santoenprision12@outlook.es', '342325AC:', '2019-01-13 00:00:00'),
(70, 'Marietta', 'Franco', 'Santoro', '2001-01-27', 'MUJER', 'ESPAÑOL', 'Paseo de la Revolución', 445, 1, 'Senecú', 'Ciudad Juárez', 'Chihuahua', 1, 'marietta1ojos@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(71, 'Marisa', 'Paleta', 'Marqués', '1994-02-11', 'MUJER', 'ESPAÑOL', 'Aragón', 443, 201, 'Personajes Ilustres', 'San Miguel de Allende', 'Guanajuato', 1, 'marisalollipop1@outlook.es', '342325AC:', '2019-01-10 00:00:00'),
(72, 'Camila', 'López', 'Aguayo', '1976-02-21', 'MUJER', 'ESPAÑOL', 'Olivos', 100, 1, 'Arborada Residencial', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'corocaleido02@outlook.es', '342325AC:', '2019-01-31 00:00:00'),
(73, 'Nora', 'Santacruz', 'Loera', '1964-01-21', 'MUJER', 'ESPAÑOL', 'Avellanos', 123, 0, 'Arborada Residencial', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'mamornow@outlook.es', '342325AC:', '2019-02-09 00:00:00'),
(74, 'Olga', 'Anaya', 'Heredia', '1980-02-01', 'MUJER', 'ESPAÑOL', 'Cotorinas', 521, 1, 'Ojocaliente I', 'AGUASCALIENTES', 'AGUASCALIENTES', 1, 'mnoamtterswhy@outlook.es', '342325AC:', '2019-01-21 00:00:00'),
(75, 'Marcos', 'Pereira', ' ', '1979-09-21', 'HOMBRE', 'ESPAÑOL', 'Nogales', 2332, 133, 'Arboledas Norte', 'AGUASCALIENTES', 'AGUASCALIENTES', 2, 'karaokesang@outlook.es', '342325AC:', '2019-02-11 00:00:00'),
(76, 'Fernanda', 'Hernandez', ' ', '1990-02-13', 'MUJER', 'ESPAÑOL', 'Blvd Colosio', 1553, 1, 'Residencial Norte', 'Aguascalientes', 'Aguascalientes', 2, 'imnotfetish@outlook.es', '342325AC:', '2019-02-01 00:00:00'),
(77, 'Morai', 'Reyes', 'Nuñez', '1987-03-22', 'MUJER', 'ESPAÑOL', 'Tigres', 1232, 0, 'Zoologico', 'Torreon', 'Coahuila', 1, 'puppetfan22@outlook.es', '342325AC:', '2019-03-15 00:00:00'),
(78, 'Irlanda', 'Wong', 'Arteaga', '1994-02-02', 'MUJER', 'ESPAÑOL', 'JOSE Luis Pereira', 125, 1, 'PERSONAJES ILUSTRES', 'GUADALAJARA', 'JALISCO', 1, 'snippet@outlook.es', '342325AC:', '2019-03-11 00:00:00'),
(79, 'Natalia', 'Naranjo', 'Oz', '1975-04-24', 'MUJER', 'ESPAÑOL', 'Miguel de la Madrid', 1665, 1, 'Loma Alta', 'Figueras', 'Figueras', 7, 'sphintztsa@outlook.es', '342325AC:', '2019-02-12 00:00:00'),
(80, 'Marcia', 'José', 'Antares', '1970-06-28', 'MUJER', 'ESPAÑOL', 'Antropoidal', 445, 1, 'Ortográfica', 'Ciudad Cuauhtemoc', 'Ciudad de México', 1, 'cascosazules22@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(81, 'Sheila', 'Rentería', 'Loera', '1973-03-01', 'MUJER', 'ESPAÑOL', 'Zaragoza', 983, 0, 'Heroes', 'Tepic', 'Nayarit', 1, 'sharematyface@outlook.es', '342325AC:', '2019-01-01 00:00:00'),
(82, 'Allan', 'Ivanovich', 'Zchellev', '1978-11-22', 'HOMBRE', 'RUSO', 'Lenin Krasovsky', 223, 1, 'Romanov Falls', 'Kracovia', 'Munich', 47, 'svetlanalove11@outlook.es', '342325AC:', '2019-01-31 00:00:00'),
(83, 'Mario', 'Cavazos', 'Carrera', '1999-10-10', 'HOMBRE', 'ESPAÑOL', 'Gran Vía', 121, 102, 'Centro', 'Barcelona', 'Barcelona', 7, 'carussoz@outlook.es', '342325AC:', '2019-02-11 00:00:00'),
(84, 'Meital', 'Valenzuela', 'Castro', '1987-03-10', 'HOMBRE', 'ESPAÑOL', 'Barcelona', 622, 0, 'Peninsula Iberica', 'San Cristobal', 'Chiapas', 1, 'masesmas2@outlook.es', '342325AC:', '2019-01-02 00:00:00'),
(85, 'Karim', 'Baars', 'Mercy', '1965-03-30', 'HOMBRE', 'INGLES', 'North Abbey Rd', 8893, 927, 'Zchech town', 'CORSAIR', 'NORTH CAROLINA', 2, 'noledarenada24@outlook.es', '342325AC:', '2019-01-20 00:00:00'),
(86, 'Bremen', 'Maries', 'Snoozes', '1980-04-05', 'HOMBRE', 'INGLES', 'St. Anne Av.', 99, 1, 'Nivola', 'Muno', 'Wyoming', 2, 'sheetafaca12@outlook.es', '342325AC:', '2019-04-28 00:00:00'),
(87, 'Nordic', 'White', 'Jr.', '1996-02-21', 'HOMBRE', 'INGLES', '8th Ave.', 234, 1, 'North Creek', 'Chattanooga', 'Tennessee', 2, 'brezzess@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(88, 'Camelia', 'Llamas', 'Llamas', '1963-10-11', 'MUJER', 'ESPAÑOL', 'Roma', 876, 0, 'Capital', 'Ciudad del Cabo', 'Baja California', 1, '14vr42@outlook.es', '342325AC:', '2019-02-09 00:00:00'),
(89, 'Wong', 'Albert', ' ', '2001-02-23', 'HOMBRE', 'INGLES', 'Vitae Rd', 553, 332, 'North Valley', 'Vancouver', 'Vancouver', 11, 'paupalinafan@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(90, 'Kendall', 'Nash', ' ', '1987-04-01', 'HOMBRE', 'INGLES', ' 7th Ave.', 23, 102, 'Revello', 'Louisville', 'Nevada', 2, 'breffea1@outlook.es', '342325AC:', '2019-02-13 00:00:00'),
(91, 'Malala', 'Hurry', ' ', '1965-01-27', 'MUJER', 'INGLES', '21st Ave.', 233, 1, 'East Compton', 'Los Angeles', 'California', 2, 'marncq11@outlook.es', '342325AC:', '2019-03-17 00:00:00'),
(92, 'Corina', 'Allende', 'Pérez', '2000-02-23', 'MUJER', 'ESPAÑOL', 'La Gran Vía', 553, 332, 'Liberal', 'Monterrey', 'Nuevo Leon', 1, 'zzzwdy2@outlook.es', '342325AC:', '2019-01-15 00:00:00'),
(93, 'Oliver', 'Cavazos', 'Carrera', '1999-10-10', 'HOMBRE', 'ESPAÑOL', 'Gran Vía', 121, 102, 'Centro', 'Barcelona', 'Barcelona', 7, 'looneavaz@outlook.es', '342325AC:', '2019-02-11 00:00:00'),
(94, 'Norad', 'Valenzuela', 'Castro', '1987-03-10', 'HOMBRE', 'ESPAÑOL', 'Barcelona', 622, 0, 'Peninsula Iberica', 'San Cristobal', 'Chiapas', 1, 'mimas02@outlook.es', '342325AC:', '2019-01-02 00:00:00'),
(95, 'Clark', 'Baars', 'Mercy', '1965-03-30', 'HOMBRE', 'INGLES', 'North Abbey Rd', 8893, 927, 'Zchech town', 'CORSAIR', 'NORTH CAROLINA', 2, 'eferctiv@outlook.es', '342325AC:', '2019-01-20 00:00:00'),
(96, 'Maurice', 'Maries', 'Snoozes', '1980-04-05', 'HOMBRE', 'INGLES', 'St. Anne Av.', 99, 1, 'Nivola', 'Muno', 'Wyoming', 2, 'bravar12@outlook.es', '342325AC:', '2019-04-28 00:00:00'),
(97, 'Carlo', 'White', 'Jr.', '1996-02-21', 'HOMBRE', 'INGLES', '8th Ave.', 234, 1, 'North Creek', 'Chattanooga', 'Tennessee', 2, 'reneterless@outlook.es', '342325AC:', '2019-02-27 00:00:00'),
(98, 'Carolina', 'Llamas', 'Llamas', '1963-10-11', 'MUJER', 'ESPAÑOL', 'Roma', 876, 0, 'Capital', 'Ciudad del Cabo', 'Baja California', 1, 'jobexesones12@outlook.es', '342325AC:', '2019-02-09 00:00:00'),
(99, 'Yahel', 'Albert', ' ', '2001-02-23', 'HOMBRE', 'INGLES', 'Vitae Rd', 553, 332, 'North Valley', 'Vancouver', 'Vancouver', 11, 'woszieall1@outlook.es', '342325AC:', '2019-01-22 00:00:00'),
(100, 'Jonah', 'Nash', ' ', '1987-04-01', 'HOMBRE', 'INGLES', ' 7th Ave.', 23, 102, 'Revello', 'Louisville', 'Nevada', 2, '34235fa1@outlook.es', '342325AC:', '2019-02-13 00:00:00'),
(101, 'Yahaira', 'Hurry', ' ', '1965-01-27', 'MUJER', 'INGLES', '21st Ave.', 233, 1, 'East Compton', 'Los Angeles', 'California', 2, 'm43yq34311@outlook.es', '342325AC:', '2019-03-17 00:00:00'),
(102, 'Yarma', 'Allende', 'Pérez', '2000-02-23', 'MUJER', 'ESPAÑOL', 'La Gran Vía', 553, 332, 'Liberal', 'Monterrey', 'Nuevo Leon', 1, 'fea22@outlook.es', '342325AC:', '2019-01-15 00:00:00');

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

--
-- Volcado de datos para la tabla `val_album`
--

INSERT INTO `val_album` (`ID_VAL_ALBUM`, `ID_USUARIO`, `ID_ALBUM`, `VALORACION_ALBUM`, `COMENTARIOS`, `DATE`) VALUES
(1, 3, 8, 0, 'Me cae mal Pésimo álbum', '2019-05-07 11:14:14'),
(2, 4, 8, 0, 'No me agrada', '2019-05-02 00:14:14'),
(3, 24, 20, 5, 'Los Amo', '2019-05-15 05:26:13');

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
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID_VENTA`, `ID_USUARIO`, `FECHA`, `MONTO`, `METODO_PAGO`, `NO_REGISTRO`, `AUTORIZACION`, `GUIA_RASTREO`) VALUES
(1, 1, '2019-01-09 14:22:22', 1200, 1, 1, 102465, 1235504);

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
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`ID_METODO`) USING BTREE;

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
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID_VENTA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album_atrib`
--
ALTER TABLE `album_atrib`
  MODIFY `ID_ALBUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `busquedas`
--
ALTER TABLE `busquedas`
  MODIFY `ID_BUSQUEDA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `cancion_atrib`
--
ALTER TABLE `cancion_atrib`
  MODIFY `ID_CANCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT de la tabla `casa_productora_atrib`
--
ALTER TABLE `casa_productora_atrib`
  MODIFY `ID_CASA_PRODUCTORA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `datagen`
--
ALTER TABLE `datagen`
  MODIFY `ID_DSP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `disquera_atrib`
--
ALTER TABLE `disquera_atrib`
  MODIFY `ID_DISQUERA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `estadisticas_paginas`
--
ALTER TABLE `estadisticas_paginas`
  MODIFY `ID_VISITA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estad_catalogo`
--
ALTER TABLE `estad_catalogo`
  MODIFY `ID_ESTAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `estad_paginas`
--
ALTER TABLE `estad_paginas`
  MODIFY `ID_PAGINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estilo`
--
ALTER TABLE `estilo`
  MODIFY `ID_ESTILO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `ID_FORMATO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_GENERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `ID_METODO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `ID_PAIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT de la tabla `pelicula_atrib`
--
ALTER TABLE `pelicula_atrib`
  MODIFY `ID_PELICULA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `personas_atrib`
--
ALTER TABLE `personas_atrib`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

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
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `val_album`
--
ALTER TABLE `val_album`
  MODIFY `ID_VAL_ALBUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID_VENTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
