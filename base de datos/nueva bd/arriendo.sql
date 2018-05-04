-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2018 a las 07:02:30
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.1.16

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
(1, 'anuncio #434', '<p><a href=\"http://honda.cl/\"><img alt=\"Honda logo\" src=\"https://honda.cl/assets/honda-logo-de24f950d84b4076bd4ab8e562ab2caa.png\" /></a></p>\n\n<p><a href=\"tel:6008210021\">CONT&Aacute;CTENOS600 821 0021</a></p>\n\n<p>MENU</p>\n\n<p><a href=\"http://autos.honda.cl/\"><img alt=\"Logo honda autos\" src=\"https://honda.cl/assets/logo-honda-autos-15b45d89d8269e9bb14077f869bbd6a2.png\" /></a></p>\n\n<p><a href=\"http://autos.honda.cl/\">Honda Autos</a></p>\n\n<p><a href=\"http://autos.honda.cl/\">ENTRAR</a><a href=\"http://motos.honda.cl/\"><img alt=\"Logo honda motos\" src=\"https://honda.cl/assets/logo-honda-motos-6e4459e6e8272a1d8ea55cd01121dc74.png\" /></a></p>\n\n<p><a href=\"http://motos.honda.cl/\">Honda Motos</a></p>\n\n<p><a href=\"http://motos.honda.cl/\">ENTRAR</a><a href=\"http://www.productosfuerzahonda.cl/\"><img alt=\"Logo honda productos fuerza\" src=\"https://honda.cl/assets/logo-honda-productos-fuerza-420ca9ca620ac9cfc87fe056b3fd09c5.png\" /></a></p>\n\n<p><a href=\"http://www.productosfuerzahonda.cl/\">Honda Productos<br />\nde Fuerza</a></p>\n\n<p><a href=\"http://www.productosfuerzahonda.cl/\">ENTRAR</a></p>\n\n<p><a href=\"http://www.hondanet.cl/recall\">Air Bag Recall/Campa&ntilde;a&nbsp;Informaci&oacute;n importante acerca de Campa&ntilde;as (Recall) de Servicio&nbsp;M&Aacute;S &gt;</a></p>\n\n<p><a href=\"https://honda.cl/#hnd-general-carousel\">Previous</a><a href=\"https://honda.cl/#hnd-general-carousel\">Next</a></p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>\n\n<p><a href=\"http://motos.honda.cl/\"><img alt=\"Slides home motos\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2995/slides-home-motos.jpg\" /></a></p>\n\n<h3>NOVEDADES</h3>\n\n<p>PreviousNext</p>\n\n<ul>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/274\"><img alt=\"Thumb nachomaroc2\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/274/thumb_nachomaroc2.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/274\">&ldquo;Nacho&rdquo; Cornejo mejor&oacute; su actuaci&oacute;n en la segunda etapa del Merzouga Rally en Marruecos</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/275\"><img alt=\"Thumb nachomaroc2\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/275/thumb_nachomaroc2.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/275\">&ldquo;Nacho&rdquo; Cornejo mejor&oacute; su actuaci&oacute;n en la segunda etapa del Merzouga Rally en Marruecos</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/273\"><img alt=\"Thumb nachomaroc1\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/273/thumb_nachomaroc1.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/273\">Ignacio Cornejo logra octavo lugar en la primera etapa del Merzouga Rally</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/272\"><img alt=\"Thumb 4  1 \" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3828/thumb_4__1_.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/272\">&ldquo;Nacho&rdquo; Cornejo logra su mejor presentaci&oacute;n en la cuarta etapa del Abu Dhabi Desert Challenge</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/265\"><img alt=\"Thumb 4\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/265/thumb_4.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/265\">Nacho Cornejo mejora su actuaci&oacute;n en segunda jornada del Abu Dhabi Desert Challenge</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/266\"><img alt=\"Thumb 10\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3822/thumb_10.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/266\">El HondaJet Termina el 2017 Como el Jet con M&aacute;s Entregas En Su Categor&iacute;a</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/267\"><img alt=\"Thumb 3\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3823/thumb_3.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/267\">Red Bull Toro Rosso Honda presenta el STR13</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/268\"><img alt=\"Thumb 4\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3824/thumb_4.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/268\">Honda Racing Corporation Renueva Contrato con Marc M&aacute;rquez por Dos A&ntilde;os</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/269\"><img alt=\"Thumb 5\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3825/thumb_5.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/269\">Ridgeline Baja Race Truck Corre Segundo en Mint 400</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/270\"><img alt=\"Thumb 6\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3826/thumb_6.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/270\">Jos&eacute; Ignacio Cornejo, nuevo piloto HRC</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/271\"><img alt=\"Thumb 11\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3827/thumb_11.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/271\">Llega a Chile la nueva Honda CB125F Twister, la nueva propuesta de movilidad urbana</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/264\"><img alt=\"Thumb autosbases\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3832/thumb_autosbases.JPG\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/264\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA CIVIC, WR-V y PILOT</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/259\"><img alt=\"Thumb santander honda\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/259/thumb_santander-honda.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/259\">Bases Promoci&oacute;n Santander</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/258\"><img alt=\"Thumb posteos fb 940x788px\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3706/thumb_Posteos_FB_940x788px.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/258\">Honda Ridgeline podr&aacute; adquirirse nuevamente con descuento de IVA luego que el SII modernizara el tratamiento tributario a veh&iacute;culos motorizados</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/256\"><img alt=\"Thumb conferencia prensa ces 2018 2\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3696/thumb_conferencia_prensa_CES_2018_2.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/256\">Comentarios de la Conferencia de Prensa Honda CES 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/257\"><img alt=\"Thumb honda eu2200i camping lifestyle 2\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3698/thumb_Honda_EU2200i_camping_lifestyle_2.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/257\">El Nuevo Generador de la Serie Super Quiet EU2200i Brinda a los Clientes m&aacute;s Potencia para el Trabajo, el Hogar o el Juego, con la Misma Legendaria Calidad y Confiabilidad de Honda</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/252\"><img alt=\"Thumb 39   2018 honda clarity plug in hybrid\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/252/thumb_39___2018_Honda_Clarity_Plug_In_Hybrid.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/252\">Honda Clarity y CR-V Honrados como el Sed&aacute;n y SUV m&aacute;s Innovadores por los Premios Edmunds CES Tech Driven 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/253\"><img alt=\"Thumb moto brasil chile\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3694/thumb_Moto_Brasil_Chile.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/253\">La planta Manaus en Brasil recibe una visita de conductores chilenos en una expedici&oacute;n en Sudam&eacute;rica</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/254\"><img alt=\"Thumb honda insight\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3695/thumb_Honda_Insight.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/254\">Nuevo Acercamiento: Prototipo del Nuevo Insight Debuta en el Auto Show Internacional Norteamericano 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/255\"><img alt=\"Thumb honda robots 3e\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3697/thumb_Honda_Robots_3E.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/255\">Honda Trae Dispositivos Rob&oacute;ticos y Soluciones de Manejo de la Energ&iacute;a al CES 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/214\"><img alt=\"Thumb cb190r 2018 02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/214/thumb_cb190r_2018-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/214\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS CB190R</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/251\"><img alt=\"Thumb shadow 02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/251/thumb_shadow-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/251\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS Shadow 150</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/245\"><img alt=\"Thumb thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3623/thumb_thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/245\">BASES CONCURSO &ldquo;Estoy loc@ x Honda&rdquo;.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/246\"><img alt=\"Thumb honda f1\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/246/thumb_Honda_F1.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/246\">Honda renueva la estructura del equipo de Proyecto para un nuevo comienzo en la temporada 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/247\"><img alt=\"Thumb logo honda institucional\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3649/thumb_Logo_honda_institucional.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/247\">Honda y SenseTime Unidos en Investigaci&oacute;n y Desarrollo en el &Aacute;rea de Tecnolog&iacute;as AI para la Conducci&oacute;n Automatizada</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/248\"><img alt=\"Thumb martin crf450r\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3651/thumb_Martin_CRF450R.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/248\">Martin Correr&aacute; con CRF450R en tres Rondas de AMA Supercross</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/243\"><img alt=\"Thumb post stormfi 15dic.\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/243/thumb_post-stormfi-15dic..png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/243\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS STORM FI</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/244\"><img alt=\"Thumb 1\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/244/thumb_1.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/244\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS GL-150</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/242\"><img alt=\"Thumb thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3623/thumb_thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/242\">Honda CR-V es premiado como mejor SUV 2018 por la prestigiosa revista Motor Trend</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/236\"><img alt=\"Thumb tokyo2017\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3608/thumb_Tokyo2017.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/236\">Revisa los anuncios y exhibiciones de Honda en Tokio 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/237\"><img alt=\"Thumb civic si\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3609/thumb_Civic_Si.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/237\">Honda presenta en nuestro pa&iacute;s la nueva generaci&oacute;n de su deportivo Civic Si</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/238\"><img alt=\"Thumb marcmarquez\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3610/thumb_MarcMarquez.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/238\">Marc M&aacute;rquez gana su segundo t&iacute;tulo consecutivo de pilotos de MotoGP, Honda se lleva la Triple Corona</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/239\"><img alt=\"Thumb honda xcelerator image\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3611/thumb_Honda_Xcelerator_Image.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/239\">Las &ldquo;Xcelerates&rdquo; Startup Collaborations Globally de Honda impulsan la innovaci&oacute;n abierta</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/240\"><img alt=\"Thumb plans 2018 moto\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/240/thumb_Plans_2018_Moto.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/240\">Honda anuncia planes para las actividades de motociclismo el 2018: la participaci&oacute;n de Honda en el Campeonato Mundial de Carreras y el Rally Dakar 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/241\"><img alt=\"Thumb modelos type r\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3613/thumb_modelos_type_r.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/241\">Exitosa Primera Expedici&oacute;n &Aacute;frica Twin a la Ruta de la Plata.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/233\"><img alt=\"Thumb slide honda\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/233/thumb_slide-honda.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/233\">Venta Instituciones y Empresas</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/234\"><img alt=\"Thumb 04 honda moto5\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/234/thumb_04-honda-moto5.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/234\">Moto 5</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/212\"><img alt=\"Thumb post cbr250 latercera 37 20x25 10  2  02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/212/thumb_POST_CBR250_LaTercera_37_20x25_10__2_-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/212\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS CBR 250R</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/215\"><img alt=\"Thumb post xr150 publimetro 29 5x25 1 02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/215/thumb_POST_XR150_Publimetro_29_5x25_1-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/215\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS XR150L</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/223\"><img alt=\"Thumb post elite lahora 29 5x25 1 02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/223/thumb_POST_Elite_LaHora_29_5x25_1-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/223\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELO NEW ELITE FI</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/224\"><img alt=\"Thumb post africa promo mercurio 29 5x26 02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/224/thumb_POST_Africa_Promo_Mercurio_29_5x26-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/224\">BASES PROMOCI&Oacute;N COMPRA MOTOCICLETAS AFRICA TWIN</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/225\"><img alt=\"Thumb post cb500f 02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/225/thumb_POST_CB500F-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/225\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELO CB 500 F</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/232\"><img alt=\"Thumb crf450rx 02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/232/thumb_CRF450RX-02.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/232\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELO CRF 450 RX</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/235\"><img alt=\"Thumb post honda new\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/235/thumb_post-honda-new.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/235\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS CB1</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/231\"><img alt=\"Thumb modelos type r\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3466/thumb_modelos_type_r.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/231\">El Honda Civic es finalistas del AUTOBEST 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/226\"><img alt=\"Thumb crv\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3461/thumb_crv.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/226\">El CRV-V 2018 est&aacute; listo para defender el t&iacute;tulo del SUV m&aacute;s vendido en los Estados Unidos</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/227\"><img alt=\"Thumb clarity fuel cell at station\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3462/thumb_Clarity_Fuel_Cell_at_Station.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/227\">Honda celebra el D&iacute;a Nacional del Hidr&oacute;geno y las Celdas de Combustible, continuando con sus inversiones en este tipo de tecnolog&iacute;a.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/228\"><img alt=\"Thumb pilot summer 2018\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3463/thumb_pilot_summer_2018.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/228\">Lleg&oacute; el Pilot Summer Edition con accesorios outdoor de regalo</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/229\"><img alt=\"Thumb img 6025\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3464/thumb_IMG_6025.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/229\">Honda finaliza la temporada de la competencia Red Bull Global Rallycross 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/230\"><img alt=\"Thumb hondajet\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3465/thumb_hondajet.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/230\">El HondaJet se perfila como el avi&oacute;n a reacci&oacute;n m&aacute;s vendido en su categor&iacute;a durante la primera mitad del 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/216\"><img alt=\"Thumb cvr lanzamiento\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3391/thumb_cvr_lanzamiento.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/216\">En la versi&oacute;n m&aacute;s lujosa y confortable de su historia</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/217\"><img alt=\"Thumb toro rosso f1\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3392/thumb_toro_rosso_f1.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/217\">F1: Honda termina con Mclaren y acuerda alianza con Toro Rosso de Red Bull</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/218\"><img alt=\"Thumb marquez\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3393/thumb_marquez.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/218\">M&aacute;rquez conquista la cuarta victoria de la temporada en el circuito Misano</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/219\"><img alt=\"Thumb vision electrica\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3394/thumb_vision_electrica.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/219\">Visi&oacute;n el&eacute;ctrica de Honda</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/220\"><img alt=\"Thumb concept car\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3395/thumb_concept-car.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/220\">Honda revela el Urban EV Concept en el Sal&oacute;n del Autom&oacute;vil de Frankfurt</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/221\"><img alt=\"Thumb type r\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3401/thumb_type_r.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/221\">Nueva Campa&ntilde;a Civic Type-R</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/222\"><img alt=\"Thumb logo honda noticias\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/222/thumb_logo-honda-noticias.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/222\">Honda integra el &Iacute;ndice Mundial Dow Jones de Sustentabilidad</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/209\"><img alt=\"Thumb 04 sep price show\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/209/thumb_04_sep_price_show.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/209\">BASES PROMOCI&Oacute;N POR LA COMPRA DE UN VEH&Iacute;CULO MARCA HONDA MODELOS CIVIC SED&Aacute;N TURBO.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/208\"><img alt=\"Thumb acura\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3294/thumb_acura.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/208\">Acura revela el impresionante prototipo del auto de carreras ARX-05 en Monterey; debut conjunto con Daytona.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/201\"><img alt=\"Thumb record mundial\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3288/thumb_record_mundial.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/201\">Honda patrocina intento de r&eacute;cord mundial en econom&iacute;a de combustible</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/203\"><img alt=\"Thumb honda minnie van\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3290/thumb_Honda_Minnie_Van.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/203\">Honda avanza al ritmo de la moda y hace debutar a la &ldquo;MINNIE VAN&rdquo; &uacute;nica en su clase. La Odyssey especialmente dise&ntilde;ada para la Disney D23 Expo</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/204\"><img alt=\"Thumb img 0160\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3291/thumb_IMG_0160.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/204\">Honda clasifica segundo en Atlantic City de la mano de Sebastian Eriksson</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/205\"><img alt=\"Thumb img 1062 edit\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3292/thumb_IMG_1062_Edit.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/205\">Clientes de HondaJet se embarcan en una vuelta al mundo en 80 d&iacute;as</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/206\"><img alt=\"Thumb price show\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/3293/thumb_price_show.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/206\">Descuentos imperdibles en Honda Price Show. El momento es ahora.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/191\"><img alt=\"Thumb boton price show\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2968/thumb_boton_price_show.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/191\">BASES OFERTA COMPRA VEH&Iacute;CULOS MARCA &ldquo;PRICE SHOW&rdquo;</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/198\"><img alt=\"Thumb test drive 07\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/198/thumb_test_drive-07.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/198\">TEST DRIVE</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/192\"><img alt=\"Thumb conduccion automatizada\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2921/thumb_conduccion_automatizada.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/192\">Honda busca introducir la conducci&oacute;n automatizada de nivel 4 para 2025</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/193\"><img alt=\"Thumb djong\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2922/thumb_Djong.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/193\">deJong y Honda alcanzan el podio en New England</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/194\"><img alt=\"Thumb hospital de nin os\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2923/thumb_Hospital_de_Nin_os.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/194\">Honda se compromete a donar US$ 1 mill&oacute;n al Hospital de Ni&ntilde;os Nationwide para mejorar la movilidad de todos los ni&ntilde;os</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/195\"><img alt=\"Thumb new elite 125\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2924/thumb_new_elite_125.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/195\">Honda New Elite FI: Estilo urbano y m&aacute;ximo rendimiento</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/183\"><img alt=\"Thumb takuma sato\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2698/thumb_Takuma_Sato.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/183\">Takuma Sato gana con Honda la Indian&aacute;polis 500</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/184\"><img alt=\"Thumb africa twins\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2699/thumb_africa_twins.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/184\">Honda dona dos Africa Twins al Departamento de Polic&iacute;a de Redondo Beach en California</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/185\"><img alt=\"Thumb miimo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2700/thumb_miimo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/185\">Una estudiante de Miami fue premiada con la visita del robot humanoide de Honda</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/186\"><img alt=\"Thumb empresa\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/186/thumb_empresa.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/186\">Tres plantas automotrices de Honda obtuvieron la certificaci&oacute;n ENERGY STAR de la EPA.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/187\"><img alt=\"Thumb f1 lineup\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2702/thumb_f1_lineup.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/187\">La campa&ntilde;a de marketing inspirada en el automovilismo presenta a los nuevos modelos de Honda, sin&oacute;nimos de performance</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/188\"><img alt=\"Thumb corta cesped\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2703/thumb_corta_cesped.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/188\">Que se encargue Miimo &ndash; Honda Power Equipment presenta a Miimo, el robot que corta el c&eacute;sped.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/112\"><img alt=\"Thumb captura\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/112/thumb_Captura.PNG\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/112\">AVISO DE NOTIFICACI&Oacute;N DE RECALL</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/167\"><img alt=\"Thumb honda empresa\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2563/thumb_honda-empresa.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/167\">Comenzaremos a producir en los Estados Unidos la caja autom&aacute;tica de 10 velocidades</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/168\"><img alt=\"Thumb honda clarity full\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2564/thumb_honda-clarity-full.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/168\">El Honda Clarity h&iacute;brido y el Honda Clarity el&eacute;ctrico hacen su debut mundial en el Sal&oacute;n Internacional del Autom&oacute;vil de Nueva York de 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/169\"><img alt=\"Thumb nm4 2018\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2565/thumb_NM4-2018.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/169\">Celebramos el regreso de la NM4 para el 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/179\"><img alt=\"Thumb city 2017\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2659/thumb_city_2017.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/179\">New Honda City vuelve renovado y m&aacute;s tecnol&oacute;gico</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/180\"><img alt=\"Thumb thumb thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2513/thumb_thumb_thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/180\">El Kelley Blue Book le otorga a Honda el t&iacute;tulo de mejor marca en calidad y precio de 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/181\"><img alt=\"Thumb civic type r\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2660/thumb_civic_type_r.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/181\">El Honda Civic Type R 2017 da la vuelta al N&uuml;rburgring en un tiempo de velocidad r&eacute;cord de 7 minutos con 4.80 segundos.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/177\"><img alt=\"Thumb thumb thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2513/thumb_thumb_thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/177\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS FIT Y OTROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/166\"><img alt=\"Thumb wrv2  1 \" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2561/thumb_wrv2__1_.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/166\">Llega a Chile el Honda WR-V, el SUV m&aacute;s compacto de la marca japonesa.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/170\"><img alt=\"Thumb crf\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2566/thumb_CRF.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/170\">Presentamos los primeros modelos 2018 de las motocicletas todoterreno de competici&oacute;n.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/163\"><img alt=\"Thumb superbike01\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/163/thumb_superbike01.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/163\">&iexcl;HONDA ES EL AUSPICIADOR OFICIAL DEL CAMPEONATO NACIONAL DE VELOCIDAD!</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/165\"><img alt=\"Thumb thumb thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2513/thumb_thumb_thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/165\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS FIT Y OTROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/162\"><img alt=\"Thumb thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2494/thumb_thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/162\">BASES DEL CONCURSO TACONERAS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/159\"><img alt=\"Thumb p1180012\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/159/thumb_P1180012.JPG\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/159\">La Africa Twin rompe otro r&eacute;cord</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/158\"><img alt=\"Thumb 2017 03 03 photo 00000076\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/158/thumb_2017-03-03-PHOTO-00000076.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/158\">El piloto Honda Fabio Mossini intentar&aacute; inscribirse, con la Honda Africa Twin, con un r&eacute;cord en el Ojos Del Salado</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/150\"><img alt=\"Thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2416/thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/150\">BASES PROMOCI&Oacute;N POR LA COMPRA DE UN VEH&Iacute;CULO MARCA HONDA MODELOS CIVIC SED&Aacute;N, CR-V Y PILOT.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/151\"><img alt=\"Thumb race truck\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2434/thumb_race-truck.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/151\">La Honda Ridgeline Baja Race se llev&oacute; el 3&ordm; puesto en el Parker 425</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/152\"><img alt=\"Thumb clarity\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2435/thumb_clarity.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/152\">Honda entrega el primer Clarity Fuel Cell</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/153\"><img alt=\"Thumb accord\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2436/thumb_accord.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/153\">Honda Accord Hybrid y CR-V 2017 obtienen altos puntajes ambientales por el Consejo Americano por su &ldquo;Econom&iacute;a Eficiente en Energ&iacute;a&rdquo;.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/154\"><img alt=\"Thumb honda hr v 2016 07\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2429/thumb_honda-hr-v-2016-07.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/154\">4 modelos de Honda fueron destacados entre los mejores autos familiares de 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/156\"><img alt=\"Thumb ridgeline\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2431/thumb_ridgeline.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/156\">El All-New Honda Ridgeline 2017 gana el premio &quot;Camioneta Norteamericana del A&ntilde;o.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/157\"><img alt=\"Thumb moto\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2437/thumb_moto.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/157\">El Asistente para Manejo de Motocicleta Honda gana tres premios</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/149\"><img alt=\"Thumb thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2416/thumb_thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/149\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS FIT Y OTROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/148\"><img alt=\"Thumb thumb civic\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/148/thumb_thumb_civic.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/148\">Honda desarrolla un nuevo modelo h&iacute;brido para 2018</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/142\"><img alt=\"Thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/142/thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/142\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS CITY LX MT Y OTROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/141\"><img alt=\"Thumb civic\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/141/thumb_civic.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/141\">New Honda Civic, el auto m&aacute;s buscado en Google durante el a&ntilde;o 2016</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/134\"><img alt=\"Thumb drive up comedy\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/134/thumb_drive-up-comedy.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/134\">Honda y Werne N&uacute;&ntilde;ez lanzan Drive Up Comedy, el primer stand up chileno al volante</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/135\"><img alt=\"Thumb new ridgeline\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/135/thumb_new-ridgeline.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/135\">La esperada Honda Ridgeline llega a Chile</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/136\"><img alt=\"Thumb fit\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/136/thumb_fit.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/136\">Dos Honda est&aacute;n dentro del TOP 5 de la lista de los autos a combustible que emiten los niveles m&aacute;s bajos de gases NOX</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/137\"><img alt=\"Thumb ridgeline rojo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/137/thumb_ridgeline-rojo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/137\">Honda CR-V y Ridgeline, galardonados por Car and Driver en los Premios a los 10 Mejores Trucks y SUV</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/138\"><img alt=\"Thumb shea racing\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/138/thumb_Shea-Racing.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/138\">Shea Racing expandir&aacute; sus esfuerzos al Pirelli World Challenge en 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/139\"><img alt=\"Thumb realidad virtual\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/139/thumb_Realidad-Virtual.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/139\">Honda utiliza la Realidad Virtual para traer saludos por las fiestas a pacientes pedi&aacute;tricos</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/133\"><img alt=\"Thumb unnamed\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/133/thumb_unnamed.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/133\">Premios Honda Ridgeline 2017</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/131\"><img alt=\"Thumb thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/131/thumb_thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/131\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/132\"><img alt=\"Thumb honda 100 millones de autos\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/132/thumb_Honda_100_millones_de_autos.jpeg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/132\">Honda alcanza los 100 millones en el mundo del autom&oacute;vil Producci&oacute;n Milestone&nbsp;</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/128\"><img alt=\"Thumb post 16dic\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/128/thumb_post-16dic.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/128\">FE DE ERRATAS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/122\"><img alt=\"Thumb thumb honda hidro geno\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/122/thumb_thumb_honda-hidro_geno.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/122\">El primer Honda propulsado por hidr&oacute;geno ya est&aacute; en Europa</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/123\"><img alt=\"Thumb car and driver 2017\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/123/thumb_car-and-driver-2017.png\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/123\">Honda Accord sigue siendo el rey en los premios Car and Driver 10Best Cars Award</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/124\"><img alt=\"Thumb honda reports\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/124/thumb_Honda-Reports.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/124\">Informe Ambiental Norteamericano de Honda</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/125\"><img alt=\"Thumb thumb honda olsbergs mse\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/125/thumb_thumb_Honda-Olsbergs-MSE.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/125\">Honda y Olsbergs MSE terminan la temporada global de rallycross de Red Bull 2016</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/126\"><img alt=\"Thumb thumb honda civic\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/126/thumb_thumb_honda-civic.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/126\">La develaci&oacute;n del prototipo del Honda Civic Si Deportivo completa la 10ma. Generaci&oacute;n del Civic</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/121\"><img alt=\"Thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/121/thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/121\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS CITY LX MT Y OTROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/119\"><img alt=\"Thumb thumb hrv shooting8418 llantas\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/119/thumb_thumb_HRV_Shooting8418_llantas.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/119\">El Honda HR-V es el auto con mayor valor de reventa</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/120\"><img alt=\"Thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/120/thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/120\">BASES PROMOCI&Oacute;N POR LA COMPRA DE UN VEH&Iacute;CULO MARCA HONDA MODELO PILOT ELITE 4x4 AWD o un PILOTO TOURING 4x4 AWD.</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/103\"><img alt=\"Thumb moto5final03\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/103/thumb_moto5final03.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/103\">El Moto5 comienza a rodar en las pistas nacionales</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/108\"><img alt=\"Thumb serial one\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/108/thumb_serial_one.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/108\">Honda revela el &ldquo;Serial One&rdquo; completamente restaurado &quot;Serial One&quot; despu&eacute;s de 6 meses de trabajo</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/109\"><img alt=\"Thumb sedan\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/109/thumb_sedan.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/109\">El nuevo sed&aacute;n de celdas de combustible Clarity llega para finales de 2016</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/110\"><img alt=\"Thumb tweister\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/110/thumb_tweister.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/110\">La familia Naked Series de Honda sigue creciendo con la nueva CB 250 Twister</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/111\"><img alt=\"Thumb hondajet\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2017/thumb_Hondajet.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/111\">HondaJet marca dos r&eacute;cords de velocidad en su vuelo del noreste al sur de la Florida</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/113\"><img alt=\"Thumb a\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/2016/thumb_a.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/113\">American Honda celebra 25 a&ntilde;os de apoyo a Ride for Kids&trade;</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/105\"><img alt=\"Thumb hondalogo\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1656/thumb_hondalogo.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/105\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELO NEW PILOT ELITE 3,5 AT 4X4 Y TROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/98\"><img alt=\"Thumb p\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1633/thumb_p.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/98\">LA NUEVA PROPUESTA DE LICENCIAS PARA MOTOCICLISTAS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/99\"><img alt=\"Thumb ppppp\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1634/thumb_ppppp.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/99\">HONDA CONCRETA ALIANZA COLABORATIVA CON LICEOS T&Eacute;CNICOS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/100\"><img alt=\"Thumb   \" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1635/thumb___.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/100\">AS&Iacute; DE AMENAZANTE LUCE EL HONDA NSX GT3</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/101\"><img alt=\"Thumb wdf\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1636/thumb_wdf.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/101\">HONDA DEVELA EL NUEVO ACCORD H&Iacute;BRIDO</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/97\"><img alt=\"Thumb motor noticias web\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1632/thumb_motor-noticias-web.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/97\">HONDA FABRICAR&Iacute;A UNA TRANSMISI&Oacute;N AUTOM&Aacute;TICA DE 11 VELOCIDADES</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/96\"><img alt=\"Thumb disenocb500f02\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/noticia/imagen_thumb/96/thumb_disenocb500f02.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/96\">HONDA PRESENTA LA NUEVA CB500F Y CONSOLIDA SU SEGMENTO NAKED</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/92\"><img alt=\"Thumb giveeee\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1587/thumb_giveeee.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/92\">GIVE SURF REALIZA EXITOSO REMATE DE TABLAS PINTADAS POR ARTISTAS NACIONALES</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/89\"><img alt=\"Thumb complejo educacional\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1485/thumb_complejo-educacional.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/89\">Honda concreta alianza colaborativa con liceos t&eacute;cnicos</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/81\"><img alt=\"Thumb accord\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1456/thumb_accord.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/81\">Honda celebra 40 a&ntilde;os del Accord</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/82\"><img alt=\"Thumb 001\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1457/thumb_001.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/82\">Honda potencia la tecnolog&iacute;a renovable para el futuro</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/84\"><img alt=\"Thumb 0000001\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1459/thumb_0000001.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/84\">Kevin Benavides cumpli&oacute; su sue&ntilde;o de salir campe&oacute;n</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/85\"><img alt=\"Thumb 0000111\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1460/thumb_0000111.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/85\">Presidente de Honda para Sudam&eacute;rica: &ldquo;La idea es que un auto se parezca cada vez m&aacute;s a estar dentro de una casa&quot;</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/86\"><img alt=\"Thumb 000000012\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1461/thumb_000000012.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/86\">FERNANDO ALONSO PRUEBA EL NSX</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/87\"><img alt=\"Thumb bases oferta\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1370/thumb_bases-oferta.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/87\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS HR-V EX 1.8 AUT 4X2 Y OTROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/88\"><img alt=\"Thumb bases oferta\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1370/thumb_bases-oferta.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/88\">BASES OFERTA COMPRA VEH&Iacute;CULOS HONDA MODELOS CITY LX MT Y OTROS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/80\"><img alt=\"Thumb 01\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1455/thumb_01.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/80\">LA NUEVA PROPUESTA DE LICENCIAS PARA MOTOCICLISTAS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/3\"><img alt=\"Thumb ridgeline\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1378/thumb_ridgeline.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/3\">LLEGA A CHILE LA PRIMERA UNIDAD DE RIDGELINE</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/2\"><img alt=\"Thumb alexander rossi\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1392/thumb_alexander-rossi.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/2\">ALEXANDER ROSSI GANA LAS 500 MILLAS DE INDIAN&Aacute;POLIS</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/5\"><img alt=\"Thumb ma rquez\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1373/thumb_ma_rquez.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/5\">&iexcl;MARC M&Aacute;RQUEZ RENUEVA CON HRC HASTA FINALES DE 2018!</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://honda.cl/noticia/1\"><img alt=\"Thumb givesurf\" src=\"https://honda-chile-production.s3.amazonaws.com/uploads/imagen/archivo/1377/thumb_givesurf.jpg\" /></a></p>\n\n	<p><a href=\"https://honda.cl/noticia/1\">GIVE SURF REALIZA EXPOSICI&Oacute;N DE TABLAS PINTADAS POR GRANDES ARTISTAS CHILENOS</a></p>\n	</li>\n</ul>', 1, 45545, 'arriendo', 2, '11', '111', '11101', 1, 15870);
INSERT INTO `anuncio` (`id_anuncio`, `titulo`, `descripcion`, `condicion`, `precio_serv`, `tipo_servicio`, `id_categoria`, `region`, `provincia`, `comuna`, `forma_pago`, `total`) VALUES
(2, 'anuncio 12', '<p>dadsa</p>\n\n<p>d</p>\n\n<p>a</p>\n\n<p>d</p>\n\n<p>a</p>\n\n<p>da</p>', 1, 23233, 'mecanico', 1, '14', '141', '14106', 0, 26450);

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
  `palabra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diccionario`
--

INSERT INTO `diccionario` (`palabra`) VALUES
('caca'),
('cocaina'),
('heroina'),
('marihuana'),
('prostitucion');

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
(1, 'efectivo', '2018-04-22 02:28:18'),
(2, 'tarjeta', '2018-04-22 04:42:15');

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
(0, 1, '/uploads/name4py8qYFIEHXOzlVhPNzB7bYporcOorVGdyV3bqP3yrrJhQ-BMW-TA.jpg'),
(0, 2, '/uploads/J37QHrquhCPFgeHaT4zOGPdsFiDq2hNCIm3sSUGazm65wIQ856-110217d3a4db75f.jpg'),
(1, 1, '/uploads/RZmsSm10gSbsPVyYh3LBjcUeYK1HJEJdMxKMILDrndN05H2nJM-epcp-1012-08-o+fast-forward+morgan-eva-gt.jpg'),
(1, 2, '/uploads/QfPyw95jipOZ6t2WjplRr0xAsOYqlapFSg9accXN2CidFCEmH4-descarga.jpg');

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
(1, 1, 2, '2018-04-22', '2018-07-22', '5290', '3', 5),
(2, 2, 8, '2018-04-22', '2018-09-22', '5290', '5', 3);

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

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_anuncio`, `rut`, `nombre`, `apellido`, `profesion`, `años_experiencia`, `curriculum`) VALUES
(2, '12.323.323-2', 'sadasd', 'sadasd', 'daads', 12, 'weqwe');

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
(3, 0),
(5, 0);

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
  `remember_token` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rut`, `nombre`, `apellido`, `email`, `password`, `tipo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '19.344.212-2', 'Boris', 'Mora', 'admin@ucm.cl', '$2y$10$aIZ6WaeH7CgP/EjyxmS3dOr20aG9cRsgnUMiXrBlyUZgBI80R6WxC', 'admin', 'z1OYjqhr4el6Jd6n9pIFT3QCi2OkCUcECSHipzZqJ8e1FIURjY1C9v7KIK7C', '2017-10-17 00:51:12.0', '2017-10-17 00:51:12.0'),
(2, '17.324.545-6', 'Rodrigo', 'Rodirguez', 'cliente@ucm.cl', '$2y$10$8fxHUBybt8ux4zVJ7eQmHOuZvLFJbilnnEMT65ei2Lw8dtqqN/qCS', 'cliente', 'rnjjvENkpS8OxILGYNzx1ncOVxq4b8PEdHWP13l9sNeEMKL8E0aMM21mQdX0', '2017-10-17 00:54:59.0', '2017-10-17 00:54:59.0'),
(3, '18938323-5', 'Fernanda', 'Fernandez', 'secretaria@ucm.cl', '$2y$10$tAoGISY0s4T0jikX4JCQpOBEGMDODSpmC34bDsMdenNU9eLcQ6aBy', 'secretaria', 'gSx6aFx6DvjKftEyjmIWrAuVUH0gAvUB0zLhqe1dBpwAsDKSu2c6j6VpYV3L', '2017-10-17 00:55:50.0', '2017-10-17 00:55:50.0'),
(5, '172232323-2', 'Constanza', 'Contreras', 'secretaria2@ucm.cl', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'secretaria', 'Tx2CCRttTtz7m3OpOJTx2HXaXIJREDWzP5o36G6VC8Ll49tkaq5P9skPAmut', '2017-10-18 07:03:02.0', '2017-10-18 07:03:02.0'),
(7, '1832832324-5', 'Alfonso', 'Patamala', 'cliente4@ucm.cl', '$2y$10$1Nx0CdeN4yMYKEg6vCyjgev0PxA6N63iIXsSUh8b8uKpOfJQoGkMa', 'cliente', NULL, '2017-10-18 08:04:06.0', '2017-10-18 08:04:06.0'),
(8, '1734234234-5', 'Susana', 'Castillo', 'cliente2@ucm.cl', '$2y$10$oy5hmF1Fe/6qo5By742VweZrk.v9wvF5MOO7XqR0tgPIFSvJ0mz8u', 'cliente', 'LNzXsalH5kZxu0nWyOan2dPc0BcVhbrlDdBsoGIDWXE3zvH6ibdYBkdUCq9j', '2017-10-18 21:01:18.0', '2017-10-18 21:01:18.0'),
(9, '173626363-k', 'Pedro', 'Perez', 'cliente3@ucm.cl', '$2y$10$/IG1.odVPfrb1wXauGNT7.RIMMdaEDwkQdQlU1YyOkQzJy7E5FisG', 'cliente', 'aTIok9g6YbM8uVmYehM0apewFVMCAGuTtn1bJbNeGLTawsdkuWEC3eLEO6of', '2017-10-18 21:03:40.0', '2017-10-18 21:03:40.0'),
(11, '172232323-2', 'DANIEL EDUARDO', 'ALARCON CHAMBLES', 'daniel.alarcon.ch@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(12, '18573726-8', 'JUAN CARLOS', 'ALARCON VILLAMAN', 'j.alarconvillaman@outlook.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(13, '18575902-4', 'CARLOS ALBERTO', 'CARRERA ZUNIGA', 'carlosacz1994@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(14, '18692842-3', 'FRANCISCO JAVIER', 'DE LA FUENTE OPAZO', 'fco_delafuente_@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(15, '18656310-7', 'NICOLAS ANDRE', 'DURAN ENCINA', 'nicoooduran@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(16, '18344193-0', 'CARLOS ANDRES', 'FARFAN RETAMAL', 'lobo_100_solitario@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(17, '17322605-5', 'SANTIAGO ANDRES', 'FUENTES BENAVIDES', 'stgo90@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(18, '18329408-3', 'AMARU DAVID', 'GAJARDO MORALES', 'adgajardom@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(19, '18893801-9', 'SEBASTIAN IGNACIO', 'GARRIDO CACERES', 'sgarridocaceres@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(20, '19105900-K', 'EDUARDO ISRAEL', 'GONZALEZ TRONCOSO', 'israxx2@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(21, '18779791-8', 'ALEX FELIPE', 'HERRERA SARAVIA', 'wizwizcl@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(22, '18781115-5 ', 'MANUEL TOMAS', 'IBANEEZ BARRIOS', 'tomas.ib94@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(23, '19044801-0', 'CARLOS FELIPE', 'INOSTROZA BRAVO', 'krlos_erd@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(24, '18966705-1', 'IGNACIO JAVIER', 'LILLO TAPIA', 'lillo@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(25, '18877975-1', 'JOSE MATIAS', 'MANRIQUEZ TRONCOSO', 'josemtroncoso95@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(26, '17186568-9', 'MARTA VERONICA', 'MELLA VILLALOBOS', 'martii_mvi@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(27, '18780321-7', 'FUAD RICARDO', 'NAZAL JAQUE', 'fuad@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(28, '19106509-3', 'CARLOS MATIAS', 'ORELLANA FUENTES', 'carlosmof15@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(29, '118576067-7', 'RICARDO MATIAS', 'RIFFO ARAYA', 'rr.ricardo.riffo@gmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(30, '19105288-9', 'ESTEFANIA ANDREA', 'SILVA MOLINA', 'fanny.andrea@outlook.es', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0'),
(31, '18980990-5', 'JAIME MAURICIO', 'VALENZUELA MUNOZ', 'jiimy_94@hotmail.com', '$2y$10$G9AAb3zvRTJd3mSQaL9Tv.dY15n6hwpi1DjstN882WEVcZNBX49jy', 'cliente', NULL, '2017-11-29 07:03:02.0', '2017-11-29 07:03:02.0');

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
(1, 'ye-4344', 'auto', '3 personas');

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
  ADD PRIMARY KEY (`palabra`);

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
-- AUTO_INCREMENT de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  MODIFY `num_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
