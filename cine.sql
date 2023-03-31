-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2023 a las 22:04:01
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `butaca`
--

CREATE TABLE `butaca` (
  `id_butaca` smallint(6) NOT NULL,
  `numero` smallint(6) NOT NULL,
  `fila` smallint(6) NOT NULL,
  `color` char(13) NOT NULL
) ;

--
-- Volcado de datos para la tabla `butaca`
--

INSERT INTO `butaca` (`id_butaca`, `numero`, `fila`, `color`) VALUES
(1, 1, 2, 'Verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` smallint(6) NOT NULL,
  `nombre` varchar(2000) NOT NULL,
  `imagen` varchar(2000) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `categoria` varchar(2000) DEFAULT NULL,
  `precio` double NOT NULL,
  `duracion` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `nombre`, `imagen`, `descripcion`, `categoria`, `precio`, `duracion`) VALUES
(1, 'Ocho apellidos vascos', 'ocho_apellidos.jpg\r\n', 'Rafa, un señorito andaluz que nunca ha salido de Sevilla, decide dejarlo todo para conquistar a Amaia, una chica vasca. Se muda al País Vasco y allí tendrá que adaptarse a un nuevo entorno y hacerse pasar por vasco para ganarse la aprobación del padre de Amaia.', 'Comedia', 9.99, 98),
(2, 'Oso Vicioso', 'oso_vicioso.jpg\r\n', 'Un varipinto grupo formado por policías, delincuentes, turistas y adolescentes converge en un bosque de Georgia donde un oso negro de 500 libras se vuelve loco después de ingerir cocaína sin querer, que cayó del avión de un narcotraficante.', 'thiller', 30, 95),
(3, 'Super Mario Bros', 'mario_bros.jpg', 'Adaptación de la serie de videojuegos de Nintendo. La película cuenta la historia de Mario y Luigi, dos hermanos que viajan a un mundo oculto para rescatar a la Princesa Peach, capturada por el malvado Rey Bowser. Las cosas, sin embargo no serán sencillas. Mario y Luigi tendrán que enfrentarse a un ejército de setas animadas antes de luchar contra su oponente. Rutas de ladrillos y castillos con múltiples peligros serán algunos de los obstáculos que los hermanos tendrán que superar para conseguir su objetivo.', 'Animacion', 30, 92),
(4, 'Dungeons & Dragons: Honor entre ladrones', 'dungeons_&_dragons.jpg', 'Adaptación cinematográfica del primer juego de rol de la historia, publicado por primera vez en 1974. Un ladrón encantador y una banda de aventureros increíbles emprenden un atraco épico para recuperar una reliquia perdida, pero las cosas salen rematadamente mal cuando se topan con las personas equivocadas.', 'fantasía', 30, 134),
(5, 'Tin & Tina', 'Tin_&_Tina.jpg', 'Cuando Lola pierde los bebés que estaba esperando, también pierde su fe en Dios. Con la esperanza de recuperarla, acude junto a su marido Adolfo a un convento de monjas donde conocen a Tin y Tina, dos angelicales hermanos de siete años por los que Lola se siente extrañamente atraída. Aunque Adolfo no siente lo mismo, deciden adoptarlos. Con el paso del tiempo Lola empieza a caer en una espiral de sospecha y obsesión con los niños y sus macabros juegos religiosos.', ' Thriller', 30, 119),
(6, '65', '65.jpg', 'Después de un catastrófico accidente en un planeta desconocido, el piloto Mills (Adam Driver) descubre rápidamente que realmente está varado en la Tierra… hace 65 millones de años. Ahora, con solo una oportunidad de rescate, Mills y la otra única superviviente, Koa (Ariana Greenblatt), deberán abrirse camino a través del desconocido territorio plagado con peligrosas criaturas prehistóricas en una épica lucha por sobrevivir.', 'Ciencia Ficcion', 30, 93),
(7, 'El hotel de los líos. García y García 2', 'el_hotel.jpg', 'Tras hacerse cargo de un hotelito destartalado, comprado por error en una subasta por un precio desorbitado, los dos Javier García viven una nueva aventura, ayudados esta vez, muy a su pesar, por un grupo de niños superdotados que se alojan en el hotel para asistir a la Final Nacional de Talentos. Junto a su explosiva profe, Martina, los niños se enfrentarán al mafioso Benito Camarena, que con sus secuaces - su madre y su hermano - tratarán de arrebatar a los García el botín escondido en el hotel, antigua guarida de los facinerosos. Spin-off de \'García y García\' (2021).', 'Comedia', 30, 95),
(8, 'John Wick 4', 'John_Wick.jpg', 'John Wick, legendario asesino retirado, vuelve de nuevo a la acción impulsado por una incontrolable búsqueda de venganza. Al tener que luchar contra asesinos sedientos de sangre que le persiguen, John tendrá que llevar sus habilidades al límite si quiere salir esta vez con vida.', 'Accion', 30, 169),
(9, 'Scream VI', 'Scream_VI.jpg', 'Tras los últimos asesinatos de Ghostface, los cuatro supervivientes abandonan Woodsboro para dar comienzo a un nuevo capítulo en la ciudad de Nueva York.', 'Terror', 30, 122),
(10, 'Mari(dos)', 'Mari(dos).jpg', 'Toni (Paco León) y Emilio (Ernesto Alterio) reciben la misma trágica llamada: sus mujeres están en coma tras un alud en una estación de esquí. Cuando se presentan en el mostrador de admisiones del hospital de montaña hacen un sorprendente descubrimiento: sus mujeres son, en realidad, la misma persona, Laura (Celia Freijeiro). Durante años, Laura ha llevado en secreto vidas paralelas, una salvaje montaña rusa a caballo entre sus dos familias. Obligados a convivir hasta que Laura despierte y pueda ser trasladada, Emilio y Toni luchan por demostrar quién de los dos es el único y auténtico marido.', 'Comedia', 30, 102),
(11, 'Creed III', 'Creed_III', 'Después de dominar el mundo del boxeo, Adonis Creed ha progresado tanto en su carrera como en su vida familiar. Cuando Damian (Jonathan Majors), un amigo de la infancia y antiguo prodigio del boxeo, reaparece después de cumplir una larga condena en prisión, Adonis Creed quiere demostrar que merece una oportunidad en el ring. El enfrentamiento entre estos antiguos amigos es algo más que una simple pelea. Para ajustar cuentas, Adonis debe arriesgar su futuro para enfrentarse a Damian, un boxeador que no tiene nada que perder.', 'Drama', 30, 117),
(12, 'Avatar: El sentido del agua', 'Avatar.jpg', 'Ambientada más de una década después de los acontecimientos de la primera película, \'Avatar: The Way of Water\' empieza contando la historia de la familia Sully (Jake, Neytiri y sus hijos), los problemas que los persiguen, lo que tienen que hacer para mantenerse a salvo, las batallas que libran para seguir con vida y las tragedias que sufren. Secuela del éxito de taquilla Avatar (2009).', 'Ciencia Ficcion', 30, 192),
(13, 'Air\r\n', 'Air.jpg\r\n', 'Narra la increíble y revolucionaria asociación entre Michael Jordan -un novato en ese momento- y la incipiente sección de baloncesto de Nike que revolucionó el mundo del deporte y la cultura contemporánea con la marca Air Jordan. Cuenta la atrevida apuesta que definió la carrera de un equipo poco convencional, la visión implacable de una madre que conoce el valor del inmenso talento de su hijo y el fenómeno del baloncesto que se convertiría en el más grande de todos los tiempos.', 'Drama', 30, 112),
(14, 'La memoria de un asesino', 'memory.jpg', 'Alex, un sicario, se convierte en el objetivo de su organización por negarse a cumplir un trabajo. Mientras huye de ellos, el FBI y el servicio de inteligencia mexicano siguen sus pasos, alertados por el reguero de cadáveres que deja por donde va.', 'Accion', 20, 114),
(15, 'Black Adam', 'Black_Adam.jpg', 'Unos arqueólogos liberan de su tumba a Black Adam, quien llevaba 5000 años preso tras haber recibido los poderes de los dioses. De nuevo entre los humanos, Black Adam se dispone a imponer su justicia, muy diferente a la del mundo en el que despertó.', 'Accion', 20, 125),
(16, 'El proyecto Adam', 'El_proyecto_Adam.jpg', 'Adam Reed, un viajero del tiempo y piloto de combate, aterriza en el año 2022. Allí, se encuentra con su yo de doce años y, junto a él, tratará de salvar el futuro.', 'Ciencia Ficcion', 20, 106),
(17, 'El visitante del futuro', 'El_visitante_del_futuro.jpg', 'Alice es una joven que se opone a la construcción de una central nuclear iniciada por su padre, que es diputado. Es entonces cuando un extraño visitante los traslada al año 2555, un futuro devastado por la explosión de la central.', 'Ciencia ficción', 20, 102),
(18, 'Spider-Man: No Way Home', 'Spider-Man.jpg', 'Esta versión extendida cuenta con más de 11 minutos contenido extra, incluyendo escenas eliminadas.Por primera vez en la historia cinematográfica de Spider-Man, nuestro héroe, vecino y amigo es desenmascarado y por tanto ya no es capaz de separar su vida normal de los enormes riesgos que conlleva ser un Súper Héroe. Cuando pide ayuda a Doctor Strange, los riesgos pasan a ser aún más peligrosos, obligándole a descubrir lo que realmente significa ser Spider-Man.', 'Accion', 20, 148),
(19, 'Encanto', 'Encanto.jpg', 'En lo alto de las montañas de Colombia hay un lugar encantado llamado Encanto. Aquí, en una casa mágica, vive la extraordinaria familia Madrigal donde todos tienen habilidades fantásticas.', 'Infantil', 20, 109),
(20, 'Hasta el cielo', 'Hasta_el_cielo.jpg', 'Un thriller con trasfondo social, que narra las peripecias de una banda de chavales delincuentes tras las grúas de la burbuja inmobiliaria.', 'Suspenso', 10, 122);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` smallint(6) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(100) DEFAULT NULL,
  `id_sala` smallint(6) NOT NULL,
  `id_pelicula` smallint(6) NOT NULL,
  `id_usuario` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_sala` smallint(6) NOT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `capacidad` smallint(6) DEFAULT NULL,
  `habilitada` tinyint(1) NOT NULL,
  `imagen` varchar(2000) DEFAULT NULL,
  `luxury` tinyint(1) NOT NULL,
  `id_butaca` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_sala`, `descripcion`, `capacidad`, `habilitada`, `imagen`, `luxury`, `id_butaca`) VALUES
(1, 'Sala infantil', 100, 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` smallint(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido1` varchar(30) DEFAULT NULL,
  `apellido2` varchar(30) DEFAULT NULL,
  `nombre_usuario` varchar(30) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contrasena` char(64) DEFAULT NULL,
  `rol` char(13) NOT NULL
) ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido1`, `apellido2`, `nombre_usuario`, `correo`, `contrasena`, `rol`) VALUES
(1, 'Juan', 'Gutierrez', 'Rodriguez', 'juan28', 'juan@ciudadescolarfp.es', 'b2b4b251569487f1bd5ce7dff52f3ecd59cf04154e4dc46ede3c604f6b55c3bc', 'Cliente'),
(2, 'Marta', 'Fernandez', 'Sanchez', 'marta456', 'marta@ciudadescolarfp.es', 'b2b4b251569487f1bd5ce7dff52f3ecd59cf04154e4dc46ede3c604f6b55c3bc', 'Administrador'),
(3, 'Pepe', 'Fernandez', 'Sanchez', 'pepe4', 'pepe@ciudadescolarfp.es', 'b2b4b251569487f1bd5ce7dff52f3ecd59cf04154e4dc46ede3c604f6b55c3bc', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `butaca`
--
ALTER TABLE `butaca`
  ADD PRIMARY KEY (`id_butaca`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `fk_id_sala` (`id_sala`),
  ADD KEY `fk_id_pelicula` (`id_pelicula`),
  ADD KEY `fk_id_usuario_` (`id_usuario`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`),
  ADD KEY `fk_id_butaca` (`id_butaca`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `butaca`
--
ALTER TABLE `butaca`
  MODIFY `id_butaca` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id_pelicula` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_id_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  ADD CONSTRAINT `fk_id_sala` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`),
  ADD CONSTRAINT `fk_id_usuario_` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `fk_id_butaca` FOREIGN KEY (`id_butaca`) REFERENCES `butaca` (`id_butaca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
