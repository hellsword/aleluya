-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2018 a las 22:52:54
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arriendo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id_anuncio` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci,
  `condicion` tinyint(4) DEFAULT NULL,
  `precio_serv` int(11) DEFAULT NULL,
  `tipo_servicio` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `region` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `comuna` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `forma_pago` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`id_anuncio`, `titulo`, `descripcion`, `condicion`, `precio_serv`, `tipo_servicio`, `id_categoria`, `region`, `provincia`, `comuna`, `forma_pago`, `total`) VALUES
(1, 'anuncio1', '<h1>Encuentra Rent a car</h1>\n\n<p><a href=\"https://www.despegar.cl/autos/c-scl/autos-en-santiago+de+chile?p=M1:1\"><img src=\"https://media.staticontent.com/media/pictures/3a0ad42f-ab88-49f3-9302-2d875cef0c07/420x210\" /></a></p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-scl/autos-en-santiago+de+chile?p=M1:1\">Autos en Santiago de Chile</a></p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-pmc/autos-en-puerto+montt?p=M1:2\"><img src=\"https://media.staticontent.com/media/pictures/cdf31360-8f4a-4fa3-b849-8ceb3f3552bf/420x210\" /></a></p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-pmc/autos-en-puerto+montt?p=M1:2\">Autos en Puerto Montt</a></p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-orl/autos-en-orlando?p=M1:3\"><img src=\"https://media.staticontent.com/media/pictures/c7ef0021-f4c3-4e9d-95b5-5c4832b2fa46/420x210\" /></a></p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-orl/autos-en-orlando?p=M1:3\">Autos en Orlando</a></p>\n\n<h3>Recibe ofertas en tu email</h3>\n\n<p><em>Suscribirme</em></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-rio/autos-en-rio+de+janeiro?p=M1:5\">Autos en Rio de Janeiro</a></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-cjc/autos-en-calama?p=M1:6\">Autos en Calama</a></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-zco/autos-en-temuco?p=M1:7\">Autos en Temuco</a></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-iqq/autos-en-iquique?p=M1:8\">Autos en Iquique</a></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-lax/autos-en-los+angeles?p=M1:9\">Autos en Los &Aacute;ngeles</a></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-cun/autos-en-cancun?p=M1:10\">Autos en Canc&uacute;n</a></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.despegar.cl/autos/c-lsc/autos-en-la+serena?p=M1:11\">Autos en La Serena</a></p>\n\n<p>Paquetes de Viajes: encuentre las mejores ofertas</p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\"><img src=\"https://media.staticontent.com/media/pictures/fa471d44-22d4-45d2-9506-9a145bc4368c/420x210\" /></a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">Paquetes a Rio de Janeiro</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">7 noches, Hotel + Vuelo</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">&nbsp;&nbsp;&nbsp;</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">2 personas desde&nbsp;</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">$ 886.300</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">$&nbsp;766.326</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">13<small>%</small></a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/rio/paquetes-a-rio+de+janeiro?p=M2:1\" rel=\"nofollow\">- OFF -</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\"><img src=\"https://media.staticontent.com/media/pictures/b7372c57-3694-4d89-bf15-3c4d7f45005c/420x210\" /></a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">Paquetes a Buenos Aires</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">4 noches, Hotel + Vuelo</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">&nbsp;&nbsp;</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">2 personas desde&nbsp;</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">$ 524.332</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">$&nbsp;442.776</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">15<small>%</small></a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/bue/paquetes-a-buenos+aires?p=M2:2\" rel=\"nofollow\">- OFF -</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/puj/paquetes-a-punta+cana?p=M2:3\" rel=\"nofollow\"><img src=\"https://media.staticontent.com/media/pictures/375ed451-b04a-446d-b146-cd7d8041a82e/420x210\" /></a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/puj/paquetes-a-punta+cana?p=M2:3\" rel=\"nofollow\">Paquetes a Punta Cana</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/puj/paquetes-a-punta+cana?p=M2:3\" rel=\"nofollow\">6 noches, Hotel + Vuelo</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/puj/paquetes-a-punta+cana?p=M2:3\" rel=\"nofollow\">&nbsp;&nbsp;&nbsp;</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/puj/paquetes-a-punta+cana?p=M2:3\" rel=\"nofollow\">2 personas desde&nbsp;</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/puj/paquetes-a-punta+cana?p=M2:3\" rel=\"nofollow\">$ 2.020.318</a></p>\n\n<p><a href=\"https://www.despegar.cl/paquetes/puj/paquetes-a-punta+cana?p=M2:3\" rel=\"nofollow\">$&nbsp;1.548.</a></p>', 0, 34434, 'arriendo', 2, '4', '41', '4103', 9, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `nombre_completo`) VALUES
(1, 'servicio_personas', 'Servicios de personas'),
(2, 'servicio_vehiculos', 'Servicios de vehículos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_vehiculo`
--

CREATE TABLE `categoria_vehiculo` (
  `cod` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria_vehiculo`
--

INSERT INTO `categoria_vehiculo` (`cod`, `nombre`) VALUES
('auto', 'Automóvil'),
('bus', 'Bus'),
('camion', 'Camión'),
('camion2', 'Camion 3/4'),
('camioneta', 'Camioneta'),
('furgon', 'Furgón');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`) VALUES
(2),
(7),
(8),
(9),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `COMUNA_ID` int(5) NOT NULL DEFAULT '0',
  `COMUNA_NOMBRE` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `COMUNA_PROVINCIA_ID` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`COMUNA_ID`, `COMUNA_NOMBRE`, `COMUNA_PROVINCIA_ID`) VALUES
(1101, 'Iquique', 11),
(1107, 'Alto Hospicio', 11),
(1401, 'Pozo Almonte', 14),
(1402, 'Camiña', 14),
(1403, 'Colchane', 14),
(1404, 'Huara', 14),
(1405, 'Pica', 14),
(2101, 'Antofagasta', 21),
(2102, 'Mejillones', 21),
(2103, 'Sierra Gorda', 21),
(2104, 'Taltal', 21),
(2201, 'Calama', 22),
(2202, 'Ollagüe', 22),
(2203, 'San Pedro de Atacama', 22),
(2301, 'Tocopilla', 23),
(2302, 'María Elena', 23),
(3101, 'Copiapó', 31),
(3102, 'Caldera', 31),
(3103, 'Tierra Amarilla', 31),
(3201, 'Chañaral', 32),
(3202, 'Diego de Almagro', 32),
(3301, 'Vallenar', 33),
(3302, 'Alto del Carmen', 33),
(3303, 'Freirina', 33),
(3304, 'Huasco', 33),
(4101, 'La Serena', 41),
(4102, 'Coquimbo', 41),
(4103, 'Andacollo', 41),
(4104, 'La Higuera', 41),
(4105, 'Paihuano', 41),
(4106, 'Vicuña', 41),
(4201, 'Illapel', 42),
(4202, 'Canela', 42),
(4203, 'Los Vilos', 42),
(4204, 'Salamanca', 42),
(4301, 'Ovalle', 43),
(4302, 'Combarbalá', 43),
(4303, 'Monte Patria', 43),
(4304, 'Punitaqui', 43),
(4305, 'Río Hurtado', 43),
(5101, 'Valparaíso', 51),
(5102, 'Casablanca', 51),
(5103, 'Concón', 51),
(5104, 'Juan Fernández', 51),
(5105, 'Puchuncaví', 51),
(5107, 'Quintero', 51),
(5109, 'Viña del Mar', 51),
(5201, 'Isla de Pascua', 52),
(5301, 'Los Andes', 53),
(5302, 'Calle Larga', 53),
(5303, 'Rinconada', 53),
(5304, 'San Esteban', 53),
(5401, 'La Ligua', 54),
(5402, 'Cabildo', 54),
(5403, 'Papudo', 54),
(5404, 'Petorca', 54),
(5405, 'Zapallar', 54),
(5501, 'Quillota', 55),
(5502, 'La Calera', 55),
(5503, 'Hijuelas', 55),
(5504, 'La Cruz', 55),
(5506, 'Nogales', 55),
(5601, 'San Antonio', 56),
(5602, 'Algarrobo', 56),
(5603, 'Cartagena', 56),
(5604, 'El Quisco', 56),
(5605, 'El Tabo', 56),
(5606, 'Santo Domingo', 56),
(5701, 'San Felipe', 57),
(5702, 'Catemu', 57),
(5703, 'Llay Llay', 57),
(5704, 'Panquehue', 57),
(5705, 'Putaendo', 57),
(5706, 'Santa María', 57),
(5801, 'Quilpué', 58),
(5802, 'Limache', 58),
(5803, 'Olmué', 58),
(5804, 'Villa Alemana', 58),
(6101, 'Rancagua', 61),
(6102, 'Codegua', 61),
(6103, 'Coinco', 61),
(6104, 'Coltauco', 61),
(6105, 'Doñihue', 61),
(6106, 'Graneros', 61),
(6107, 'Las Cabras', 61),
(6108, 'Machalí', 61),
(6109, 'Malloa', 61),
(6110, 'Mostazal', 61),
(6111, 'Olivar', 61),
(6112, 'Peumo', 61),
(6113, 'Pichidegua', 61),
(6114, 'Quinta de Tilcoco', 61),
(6115, 'Rengo', 61),
(6116, 'Requínoa', 61),
(6117, 'San Vicente', 61),
(6201, 'Pichilemu', 62),
(6202, 'La Estrella', 62),
(6203, 'Litueche', 62),
(6204, 'Marchihue', 62),
(6205, 'Navidad', 62),
(6206, 'Paredones', 62),
(6301, 'San Fernando', 63),
(6302, 'Chépica', 63),
(6303, 'Chimbarongo', 63),
(6304, 'Lolol', 63),
(6305, 'Nancagua', 63),
(6306, 'Palmilla', 63),
(6307, 'Peralillo', 63),
(6308, 'Placilla', 63),
(6309, 'Pumanque', 63),
(6310, 'Santa Cruz', 63),
(7101, 'Talca', 71),
(7102, 'Constitución', 71),
(7103, 'Curepto', 71),
(7104, 'Empedrado', 71),
(7105, 'Maule', 71),
(7106, 'Pelarco', 71),
(7107, 'Pencahue', 71),
(7108, 'Río Claro', 71),
(7109, 'San Clemente', 71),
(7110, 'San Rafael', 71),
(7201, 'Cauquenes', 72),
(7202, 'Chanco', 72),
(7203, 'Pelluhue', 72),
(7301, 'Curicó', 73),
(7302, 'Hualañé', 73),
(7303, 'Licantén', 73),
(7304, 'Molina', 73),
(7305, 'Rauco', 73),
(7306, 'Romeral', 73),
(7307, 'Sagrada Familia', 73),
(7308, 'Teno', 73),
(7309, 'Vichuquén', 73),
(7401, 'Linares', 74),
(7402, 'Colbún', 74),
(7403, 'Longaví', 74),
(7404, 'Parral', 74),
(7405, 'Retiro', 74),
(7406, 'San Javier', 74),
(7407, 'Villa Alegre', 74),
(7408, 'Yerbas Buenas', 74),
(8101, 'Concepción', 81),
(8102, 'Coronel', 81),
(8103, 'Chiguayante', 81),
(8104, 'Florida', 81),
(8105, 'Hualqui', 81),
(8106, 'Lota', 81),
(8107, 'Penco', 81),
(8108, 'San Pedro de la Paz', 81),
(8109, 'Santa Juana', 81),
(8110, 'Talcahuano', 81),
(8111, 'Tomé', 81),
(8112, 'Hualpén', 81),
(8201, 'Lebu', 82),
(8202, 'Arauco', 82),
(8203, 'Cañete', 82),
(8204, 'Contulmo', 82),
(8205, 'Curanilahue', 82),
(8206, 'Los Álamos', 82),
(8207, 'Tirúa', 82),
(8301, 'Los Ángeles', 83),
(8302, 'Antuco', 83),
(8303, 'Cabrero', 83),
(8304, 'Laja', 83),
(8305, 'Mulchén', 83),
(8306, 'Nacimiento', 83),
(8307, 'Negrete', 83),
(8308, 'Quilaco', 83),
(8309, 'Quilleco', 83),
(8310, 'San Rosendo', 83),
(8311, 'Santa Bárbara', 83),
(8312, 'Tucapel', 83),
(8313, 'Yumbel', 83),
(8314, 'Alto Biobío', 83),
(8401, 'Chillán', 163),
(8402, 'Bulnes', 163),
(8403, 'Cobquecura', 162),
(8404, 'Coelemu', 162),
(8405, 'Coihueco', 163),
(8406, 'Chillán Viejo', 163),
(8407, 'El Carmen', 163),
(8408, 'Ninhue', 162),
(8409, 'Ñiquén', 161),
(8410, 'Pemuco', 163),
(8411, 'Pinto', 163),
(8412, 'Portezuelo', 162),
(8413, 'Quillón', 162),
(8414, 'Quirihue', 162),
(8415, 'Ránquil', 162),
(8416, 'San Carlos', 161),
(8417, 'San Fabián', 161),
(8418, 'San Ignacio', 163),
(8419, 'San Nicolás', 161),
(8420, 'Treguaco', 162),
(8421, 'Yungay', 163),
(9101, 'Temuco', 91),
(9102, 'Carahue', 91),
(9103, 'Cunco', 91),
(9104, 'Curarrehue', 91),
(9105, 'Freire', 91),
(9106, 'Galvarino', 91),
(9107, 'Gorbea', 91),
(9108, 'Lautaro', 91),
(9109, 'Loncoche', 91),
(9110, 'Melipeuco', 91),
(9111, 'Nueva Imperial', 91),
(9112, 'Padre las Casas', 91),
(9113, 'Perquenco', 91),
(9114, 'Pitrufquén', 91),
(9115, 'Pucón', 91),
(9116, 'Saavedra', 91),
(9117, 'Teodoro Schmidt', 91),
(9118, 'Toltén', 91),
(9119, 'Vilcún', 91),
(9120, 'Villarrica', 91),
(9121, 'Cholchol', 91),
(9201, 'Angol', 92),
(9202, 'Collipulli', 92),
(9203, 'Curacautín', 92),
(9204, 'Ercilla', 92),
(9205, 'Lonquimay', 92),
(9206, 'Los Sauces', 92),
(9207, 'Lumaco', 92),
(9208, 'Purén', 92),
(9209, 'Renaico', 92),
(9210, 'Traiguén', 92),
(9211, 'Victoria', 92),
(10101, 'Puerto Montt', 101),
(10102, 'Calbuco', 101),
(10103, 'Cochamó', 101),
(10104, 'Fresia', 101),
(10105, 'Frutillar', 101),
(10106, 'Los Muermos', 101),
(10107, 'Llanquihue', 101),
(10108, 'Maullín', 101),
(10109, 'Puerto Varas', 101),
(10201, 'Castro', 102),
(10202, 'Ancud', 102),
(10203, 'Chonchi', 102),
(10204, 'Curaco de Vélez', 102),
(10205, 'Dalcahue', 102),
(10206, 'Puqueldón', 102),
(10207, 'Queilén', 102),
(10208, 'Quellón', 102),
(10209, 'Quemchi', 102),
(10210, 'Quinchao', 102),
(10301, 'Osorno', 103),
(10302, 'Puerto Octay', 103),
(10303, 'Purranque', 103),
(10304, 'Puyehue', 103),
(10305, 'Río Negro', 103),
(10306, 'San Juan de la Costa', 103),
(10307, 'San Pablo', 103),
(10401, 'Chaitén', 104),
(10402, 'Futaleufú', 104),
(10403, 'Hualaihué', 104),
(10404, 'Palena', 104),
(11101, 'Coyhaique', 111),
(11102, 'Lago Verde', 111),
(11201, 'Aysén', 112),
(11202, 'Cisnes', 112),
(11203, 'Guaitecas', 112),
(11301, 'Cochrane', 113),
(11302, 'O\'Higgins', 113),
(11303, 'Tortel', 113),
(11401, 'Chile Chico', 114),
(11402, 'Río Ibáñez', 114),
(12101, 'Punta Arenas', 121),
(12102, 'Laguna Blanca', 121),
(12103, 'Río Verde', 121),
(12104, 'San Gregorio', 121),
(12201, 'Cabo de Hornos', 122),
(12202, 'Antártica', 122),
(12301, 'Porvenir', 123),
(12302, 'Primavera', 123),
(12303, 'Timaukel', 123),
(12401, 'Natales', 124),
(12402, 'Torres del Paine', 124),
(13101, 'Santiago', 131),
(13102, 'Cerrillos', 131),
(13103, 'Cerro Navia', 131),
(13104, 'Conchalí', 131),
(13105, 'El Bosque', 131),
(13106, 'Estación Central', 131),
(13107, 'Huechuraba', 131),
(13108, 'Independencia', 131),
(13109, 'La Cisterna', 131),
(13110, 'La Florida', 131),
(13111, 'La Granja', 131),
(13112, 'La Pintana', 131),
(13113, 'La Reina', 131),
(13114, 'Las Condes', 131),
(13115, 'Lo Barnechea', 131),
(13116, 'Lo Espejo', 131),
(13117, 'Lo Prado', 131),
(13118, 'Macul', 131),
(13119, 'Maipú', 131),
(13120, 'Ñuñoa', 131),
(13121, 'Pedro Aguirre Cerda', 131),
(13122, 'Peñalolén', 131),
(13123, 'Providencia', 131),
(13124, 'Pudahuel', 131),
(13125, 'Quilicura', 131),
(13126, 'Quinta Normal', 131),
(13127, 'Recoleta', 131),
(13128, 'Renca', 131),
(13129, 'San Joaquín', 131),
(13130, 'San Miguel', 131),
(13131, 'San Ramón', 131),
(13132, 'Vitacura', 131),
(13201, 'Puente Alto', 132),
(13202, 'Pirque', 132),
(13203, 'San José de Maipo', 132),
(13301, 'Colina', 133),
(13302, 'Lampa', 133),
(13303, 'Tiltil', 133),
(13401, 'San Bernardo', 134),
(13402, 'Buin', 134),
(13403, 'Calera de Tango', 134),
(13404, 'Paine', 134),
(13501, 'Melipilla', 135),
(13502, 'Alhué', 135),
(13503, 'Curacaví', 135),
(13504, 'María Pinto', 135),
(13505, 'San Pedro', 135),
(13601, 'Talagante', 136),
(13602, 'El Monte', 136),
(13603, 'Isla de Maipo', 136),
(13604, 'Padre Hurtado', 136),
(13605, 'Peñaflor', 136),
(14101, 'Valdivia', 141),
(14102, 'Corral', 141),
(14103, 'Lanco', 141),
(14104, 'Los Lagos', 141),
(14105, 'Máfil', 141),
(14106, 'Mariquina', 141),
(14107, 'Paillaco', 141),
(14108, 'Panguipulli', 141),
(14201, 'La Unión', 142),
(14202, 'Futrono', 142),
(14203, 'Lago Ranco', 142),
(14204, 'Río Bueno', 142),
(15101, 'Arica', 151),
(15102, 'Camarones', 151),
(15201, 'Putre', 152),
(15202, 'General Lagos', 152);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `medio` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `contacto` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `medio`, `contacto`) VALUES
(2, 'facebook', 'https://www.facebook.com/dsa'),
(2, 'telefono', '943543534543'),
(5, 'facebook', 'https://www.facebook.com/ccontreras'),
(5, 'telefono', '887323273283'),
(7, 'facebook', 'https://www.facebook.com/apatamala'),
(7, 'telefono', '8556y3534543'),
(8, 'facebook', 'https://www.facebook.com/scasdsd'),
(8, 'telefono', '94238428374823'),
(9, 'facebook', 'https://www.facebook.com/pperez'),
(9, 'telefono', '9321931298424'),
(11, 'facebook', 'https://www.facebook.com/wre'),
(11, 'telefono', '887323273283'),
(12, 'facebook', 'https://www.facebook.com/rewr'),
(12, 'telefono', '8556y3534543'),
(13, 'facebook', 'https://www.facebook.com/qweqw'),
(13, 'telefono', '8435245r3242342'),
(14, 'facebook', 'https://www.facebook.com/rtet'),
(14, 'telefono', '98327423472333'),
(15, 'facebook', 'https://www.facebook.com/dsa'),
(15, 'telefono', '94238428374823'),
(16, 'facebook', 'https://www.facebook.com/treter'),
(16, 'telefono', '94238428374823'),
(17, 'facebook', 'https://www.facebook.com/scsdadasdsd'),
(17, 'telefono', '94382748236464'),
(18, 'facebook', 'https://www.facebook.com/rwerwe'),
(18, 'telefono', '543534534535455'),
(19, 'facebook', 'https://www.facebook.com/qweqwq'),
(19, 'telefono', '333543634543543'),
(20, 'facebook', 'https://www.facebook.com/zzzdfhfdhd'),
(20, 'telefono', '98554473747347'),
(21, 'facebook', 'https://www.facebook.com/h1'),
(21, 'telefono', '567888456'),
(22, 'facebook', 'https://www.facebook.com/h2'),
(22, 'telefono', '34654654'),
(23, 'facebook', 'https://www.facebook.com/h3'),
(23, 'telefono', '46546456464'),
(24, 'facebook', 'https://www.facebook.com/h4'),
(24, 'telefono', '46456445747'),
(25, 'facebook', 'https://www.facebook.com/h5'),
(25, 'telefono', '64564564564'),
(26, 'facebook', 'https://www.facebook.com/h6'),
(26, 'telefono', '645475657474'),
(27, 'facebook', 'https://www.facebook.com/h7'),
(27, 'telefono', '46485686746'),
(28, 'facebook', 'https://www.facebook.com/h8'),
(28, 'telefono', '44567484636'),
(29, 'facebook', 'https://www.facebook.com/h9'),
(29, 'telefono', '48647474745'),
(30, 'facebook', 'https://www.facebook.com/h9'),
(30, 'telefono', '87978987987'),
(31, 'facebook', 'https://www.facebook.com/hx'),
(31, 'telefono', '938423747347');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE `cupones` (
  `id_anuncio` int(11) NOT NULL,
  `cupon` mediumblob NOT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diccionario`
--

CREATE TABLE `diccionario` (
  `id` int(11) NOT NULL,
  `palabra` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `diccionario`
--

INSERT INTO `diccionario` (`id`, `palabra`) VALUES
(1, 'marihuana'),
(3, 'puta'),
(4, 'sex'),
(5, 'porno'),
(6, 'culo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id_cliente` int(11) NOT NULL,
  `id_anuncio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `num_pago` int(11) NOT NULL,
  `modo` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_pago` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `forma_pago`
--

INSERT INTO `forma_pago` (`num_pago`, `modo`, `fecha_pago`) VALUES
(1, 'gratis', '2018-07-02 20:51:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id_foto` int(11) NOT NULL,
  `id_anuncio` int(11) NOT NULL,
  `foto` text COLLATE utf8_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id_foto`, `id_anuncio`, `foto`) VALUES
(0, 1, '/uploads/3c9RZVsthpxsqAgTohIYVrSquDHbXnuuU6MssuCm3NqueEhrGh-2017-nissan-versa-sv-auto-sedan-blue_featured - copia.png'),
(1, 1, '/uploads/EXF8rEUFHtjWe9WoxoY9wXqrXI5QFya3np9a0afCb2mXljeJGi-audi-car-car-wallpapers-2394.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `num_pago` int(11) NOT NULL,
  `id_anuncio` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_venc` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `precio_uni` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `duracion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_secretaria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`num_pago`, `id_anuncio`, `id_cliente`, `fecha`, `fecha_venc`, `precio_uni`, `duracion`, `id_secretaria`) VALUES
(1, 1, 2, '2018-07-02', '1970-01-01', '5290', NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_anuncio` int(11) NOT NULL,
  `rut` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `profesion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `años_experiencia` int(11) DEFAULT NULL,
  `curriculum` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `PROVINCIA_ID` int(3) NOT NULL DEFAULT '0',
  `PROVINCIA_NOMBRE` varchar(23) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PROVINCIA_REGION_ID` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`PROVINCIA_ID`, `PROVINCIA_NOMBRE`, `PROVINCIA_REGION_ID`) VALUES
(11, 'Iquique', 1),
(14, 'Tamarugal', 1),
(21, 'Antofagasta', 2),
(22, 'El Loa', 2),
(23, 'Tocopilla', 2),
(31, 'Copiapó', 3),
(32, 'Chañaral', 3),
(33, 'Huasco', 3),
(41, 'Elqui', 4),
(42, 'Choapa', 4),
(43, 'Limarí', 4),
(51, 'Valparaíso', 5),
(52, 'Isla de Pascua', 5),
(53, 'Los Andes', 5),
(54, 'Petorca', 5),
(55, 'Quillota', 5),
(56, 'San Antonio', 5),
(57, 'San Felipe de Aconcagua', 5),
(58, 'Marga Marga', 5),
(61, 'Cachapoal', 6),
(62, 'Cardenal Caro', 6),
(63, 'Colchagua', 6),
(71, 'Talca', 7),
(72, 'Cauquenes', 7),
(73, 'Curicó', 7),
(74, 'Linares', 7),
(81, 'Concepción', 8),
(82, 'Arauco', 8),
(83, 'Biobío', 8),
(91, 'Cautín', 9),
(92, 'Malleco', 9),
(101, 'Llanquihue', 10),
(102, 'Chiloé', 10),
(103, 'Osorno', 10),
(104, 'Palena', 10),
(111, 'Coihaique', 11),
(112, 'Aisén', 11),
(113, 'Capitán Prat', 11),
(114, 'General Carrera', 11),
(121, 'Magallanes', 12),
(122, 'Antártica Chilena', 12),
(123, 'Tierra del Fuego', 12),
(124, 'Última Esperanza', 12),
(131, 'Santiago', 13),
(132, 'Cordillera', 13),
(133, 'Chacabuco', 13),
(134, 'Maipo', 13),
(135, 'Melipilla', 13),
(136, 'Talagante', 13),
(141, 'Valdivia', 14),
(142, 'Ranco', 14),
(151, 'Arica', 15),
(152, 'Parinacota', 15),
(161, 'Punilla', 16),
(162, 'Itata', 16),
(163, 'Diguillín', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `REGION_ID` int(2) NOT NULL DEFAULT '0',
  `REGION_NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ISO_3166_2_CL` varchar(5) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`REGION_ID`, `REGION_NOMBRE`, `ISO_3166_2_CL`) VALUES
(1, 'Tarapacá', 'CL-TA'),
(2, 'Antofagasta', 'CL-AN'),
(3, 'Atacama', 'CL-AT'),
(4, 'Coquimbo', 'CL-CO'),
(5, 'Valparaíso', 'CL-VS'),
(6, 'Región del Libertador Gral. Bernardo O’Higgins', 'CL-LI'),
(7, 'Región del Maule', 'CL-ML'),
(8, 'Región del Biobío', 'CL-BI'),
(9, 'Región de la Araucanía', 'CL-AR'),
(10, 'Región de Los Lagos', 'CL-LL'),
(11, 'Región Aisén del Gral. Carlos Ibáñez del Campo', 'CL-AI'),
(12, 'Región de Magallanes y de la Antártica Chilena', 'CL-MA'),
(13, 'Región Metropolitana de Santiago', 'CL-RM'),
(14, 'Región de Los Ríos', 'CL-LR'),
(15, 'Arica y Parinacota', 'CL-AP'),
(16, 'Región de Ñuble', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretaria`
--

CREATE TABLE `secretaria` (
  `id_secretaria` int(11) NOT NULL,
  `anuncios_pend` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `secretaria`
--

INSERT INTO `secretaria` (`id_secretaria`, `anuncios_pend`) VALUES
(3, 2),
(5, 2),
(32, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_categorias`
--

CREATE TABLE `sub_categorias` (
  `id_categoria` int(11) NOT NULL,
  `sub_categoria` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sub_categorias`
--

INSERT INTO `sub_categorias` (`id_categoria`, `sub_categoria`, `nombre_completo`) VALUES
(1, 'mecanico', 'Mecánico'),
(1, 'otros_per', 'Otros servicios '),
(2, 'arriendo', 'Arriendo de vehículo'),
(2, 'transporte', 'Transportes/Mudanzas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `rut` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rut`, `nombre`, `apellido`, `email`, `password`, `tipo`, `estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '19.344.212-2', 'Boris', 'Mora', 'admin@ucm.cl', '$2y$10$aIZ6WaeH7CgP/EjyxmS3dOr20aG9cRsgnUMiXrBlyUZgBI80R6WxC', 'admin', 'activo', 'nwyOLkczVHskDUEvcwAFjHZLWbkjAVL4HB0XzQkBGRH2FzdBpiKg42JKsUSP', '2017-10-17 00:51:12.0', '2017-10-17 00:51:12.0'),
(2, '17.324.545-6', 'Rodrigo', 'Rodirguez', 'cliente@ucm.cl', '$2y$10$8fxHUBybt8ux4zVJ7eQmHOuZvLFJbilnnEMT65ei2Lw8dtqqN/qCS', 'cliente', 'activo', 'buMULFclEXhqYYY8p4hedDzrMwkcgp2v5px4GcrxtnPhKLDWIeNLP5ddgL4X', '2017-10-17 00:54:59.0', '2017-10-17 00:54:59.0'),
(3, '18938323-5', 'Fernanda', 'Fernandez', 'secretaria@ucm.cl', '$2y$10$tAoGISY0s4T0jikX4JCQpOBEGMDODSpmC34bDsMdenNU9eLcQ6aBy', 'secretaria', 'activo', 'LexRQMP9OWy3hFbKZIG9EjqYUiyRTPKJiVtxZyngLtVpvObeSxdlmHh7OkWd', '2017-10-17 00:55:50.0', '2017-10-17 00:55:50.0'),
(5, '172232323-2', 'Constanza', 'Contreras', 'secretaria2@ucm.cl', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'secretaria', 'activo', '1kkmZWiY5mtppraEHesRUrFUzKsoAZcInE9h5UCBrcxlwBkQ5yeZrwLVfz3W', '2017-10-18 07:03:02.0', '2017-10-18 07:03:02.0'),
(7, '1832832324-5', 'Alfonso', 'Patamala', 'cliente4@ucm.cl', '$2y$10$1Nx0CdeN4yMYKEg6vCyjgev0PxA6N63iIXsSUh8b8uKpOfJQoGkMa', 'cliente', 'activo', NULL, '2017-10-18 08:04:06.0', '2017-10-18 08:04:06.0'),
(8, '1734234234-5', 'Susana', 'Castillo', 'cliente2@ucm.cl', '$2y$10$oy5hmF1Fe/6qo5By742VweZrk.v9wvF5MOO7XqR0tgPIFSvJ0mz8u', 'cliente', 'activo', 'bR5nVhbBO0FVv39RRwDyLnxFpkB9MoWJNytrawgasKmHfGqeCkGPtnuyoIh7', '2017-10-18 21:01:18.0', '2017-10-18 21:01:18.0'),
(9, '173626363-k', 'Pedro', 'Perez', 'cliente3@ucm.cl', '$2y$10$/IG1.odVPfrb1wXauGNT7.RIMMdaEDwkQdQlU1YyOkQzJy7E5FisG', 'cliente', 'activo', 'aTIok9g6YbM8uVmYehM0apewFVMCAGuTtn1bJbNeGLTawsdkuWEC3eLEO6of', '2017-10-18 21:03:40.0', '2017-10-18 21:03:40.0'),
(11, '172232323-2', 'DANIEL EDUARDO', 'ALARCON CHAMBLES', 'daniel.alarcon.ch@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(12, '18573726-8', 'JUAN CARLOS', 'ALARCON VILLAMAN', 'j.alarconvillaman@outlook.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(13, '18575902-4', 'CARLOS ALBERTO', 'CARRERA ZUNIGA', 'carlosacz1994@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(14, '18692842-3', 'FRANCISCO JAVIER', 'DE LA FUENTE OPAZO', 'fco_delafuente_@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(15, '18656310-7', 'NICOLAS ANDRE', 'DURAN ENCINA', 'nicoooduran@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(16, '18344193-0', 'CARLOS ANDRES', 'FARFAN RETAMAL', 'lobo_100_solitario@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(17, '17322605-5', 'SANTIAGO ANDRES', 'FUENTES BENAVIDES', 'stgo90@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(18, '18329408-3', 'AMARU DAVID', 'GAJARDO MORALES', 'adgajardom@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(19, '18893801-9', 'SEBASTIAN IGNACIO', 'GARRIDO CACERES', 'sgarridocaceres@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(20, '19105900-K', 'EDUARDO ISRAEL', 'GONZALEZ TRONCOSO', 'israxx2@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(21, '18779791-8', 'ALEX FELIPE', 'HERRERA SARAVIA', 'wizwizcl@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(22, '18781115-5 ', 'MANUEL TOMAS', 'IBANEEZ BARRIOS', 'tomas.ib94@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(23, '19044801-0', 'CARLOS FELIPE', 'INOSTROZA BRAVO', 'krlos_erd@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(24, '18966705-1', 'IGNACIO JAVIER', 'LILLO TAPIA', 'lillo@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(25, '18877975-1', 'JOSE MATIAS', 'MANRIQUEZ TRONCOSO', 'josemtroncoso95@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(26, '17186568-9', 'MARTA VERONICA', 'MELLA VILLALOBOS', 'martii_mvi@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(27, '18780321-7', 'FUAD RICARDO', 'NAZAL JAQUE', 'fuad@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(28, '19106509-3', 'CARLOS MATIAS', 'ORELLANA FUENTES', 'carlosmof15@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(29, '118576067-7', 'RICARDO MATIAS', 'RIFFO ARAYA', 'rr.ricardo.riffo@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(30, '19105288-9', 'ESTEFANIA ANDREA', 'SILVA MOLINA', 'fanny.andrea@outlook.es', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(31, '18980990-5', 'JAIME MAURICIO', 'VALENZUELA MUNOZ', 'jiimy_94@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', 'activo', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(32, '16.324.434-2', 'Victoria', 'Valencia', 'secretaria3@ucm.cl', '123456', 'secretaria', 'activo', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_anuncio` int(11) NOT NULL,
  `patente` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `capacidad` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_anuncio`, `patente`, `categoria`, `capacidad`) VALUES
(1, 'er-32323', 'camion', '2 personas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`id_anuncio`),
  ADD KEY `fk_categoria` (`id_categoria`,`tipo_servicio`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `categoria_vehiculo`
--
ALTER TABLE `categoria_vehiculo`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`COMUNA_ID`),
  ADD KEY `COMUNA_PROVINCIA_ID` (`COMUNA_PROVINCIA_ID`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`,`medio`);

--
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`id_anuncio`);

--
-- Indices de la tabla `diccionario`
--
ALTER TABLE `diccionario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id_cliente`,`id_anuncio`),
  ADD KEY `fk_favoritos2_idx` (`id_anuncio`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`num_pago`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_foto`,`id_anuncio`),
  ADD KEY `fk_fotos` (`id_anuncio`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`num_pago`,`id_anuncio`,`id_cliente`),
  ADD KEY `orden_fk2_idx` (`num_pago`),
  ADD KEY `orden_fk3_idx` (`id_cliente`),
  ADD KEY `orden_fk4_idx` (`id_secretaria`),
  ADD KEY `orden_fk1_idx` (`id_anuncio`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_anuncio`,`rut`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`PROVINCIA_ID`),
  ADD KEY `PROVINCIA_REGION_ID` (`PROVINCIA_REGION_ID`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`REGION_ID`);

--
-- Indices de la tabla `secretaria`
--
ALTER TABLE `secretaria`
  ADD PRIMARY KEY (`id_secretaria`);

--
-- Indices de la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
  ADD PRIMARY KEY (`id_categoria`,`sub_categoria`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_anuncio`,`patente`),
  ADD KEY `fk_categoria_vehiculo` (`categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `diccionario`
--
ALTER TABLE `diccionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  MODIFY `num_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`id_categoria`,`tipo_servicio`) REFERENCES `sub_categorias` (`id_categoria`, `sub_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`COMUNA_PROVINCIA_ID`) REFERENCES `provincia` (`PROVINCIA_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `contacto_fk` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id_anuncio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `fk_favoritos` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_favoritos2` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id_anuncio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD CONSTRAINT `forma_fk` FOREIGN KEY (`num_pago`) REFERENCES `orden` (`num_pago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fk_fotos` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id_anuncio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_fk1` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id_anuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orden_fk3` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orden_fk4` FOREIGN KEY (`id_secretaria`) REFERENCES `secretaria` (`id_secretaria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `anuncio_fk` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id_anuncio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`PROVINCIA_REGION_ID`) REFERENCES `region` (`REGION_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `secretaria`
--
ALTER TABLE `secretaria`
  ADD CONSTRAINT `fk_secretaria` FOREIGN KEY (`id_secretaria`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
  ADD CONSTRAINT `fk_sub_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_anuncio` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id_anuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_categoria_vehiculo` FOREIGN KEY (`categoria`) REFERENCES `categoria_vehiculo` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
