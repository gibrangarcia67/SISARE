-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2024 a las 05:30:07
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
-- Base de datos: `sisare`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `grupo` varchar(5) NOT NULL,
  `especialidad` varchar(35) NOT NULL,
  `matricula` bigint(20) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `genero` varchar(2) NOT NULL,
  `correo_p` varchar(60) NOT NULL,
  `correo_m` varchar(60) NOT NULL,
  `cantidad_r` int(11) NOT NULL,
  `cantidad_s` int(11) NOT NULL,
  `cantidad_c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`grupo`, `especialidad`, `matricula`, `nombre`, `genero`, `correo_p`, `correo_m`, `cantidad_r`, `cantidad_s`, `cantidad_c`) VALUES
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328050240026, 'CASTRO SOLIS MARTIN GERARDO', 'H', 'martin41macace@gmail.com', 'rociomaribel1416@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328050240043, 'IBARRA GALVAN SANTIAGO DE JESUS', 'H', 'juan.ibarra273031@gmail.com', '', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328050240045, 'HERNANDEZ LERMA HECTOR EDUARDO', 'H', 'estebaneduardo1010@gmail.com', 'lermaveronica75@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328050240230, 'SILVA AVENDAÑO ANDRES', 'H', 'oasilva9@gmail.com', 'karen.an@live.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328050240304, 'GARCIA RAMIREZ ANNIE BELEM', 'M', 'jggarciavic@gmail.com', 'marwalle78@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328050240342, 'TORRES ORNELAS PERLA NOHEMI', 'M', '', '', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328050240378, 'PUGA RAMOS AMERICA PAULINA', 'M', 'jp_gapu83@outlook.es', 'luzdelcarmen.ramos13@outlook.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328050240513, 'SOTO MIRELES MONICA', 'M', 'gs172206@gmail.com', '', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328051190076, 'MEDRANO BARRIENTOS JOSE ANGEL', 'H', '', '', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328051190389, 'HERNANDEZ GOMEZ CESIA REGINA', 'M', 'miguel.hm11@gmail.com', 'cecia.gm11@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328051190538, 'OLVERA SAHAGUN CRISTINA', 'M', 'Cesariolv24@gmail.com', 'Contrerassara290@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052360048, 'UVALLE DE LA FUENTE JESUS ALEJANDRO', 'H', 'alejandro.uvalle.g@gmail.com', 'perlafuentehdz@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052360515, 'HERNANDEZ LEAL VANESSA ANGELIQUE', 'M', 'lealhernandezarnulfo@gmail.com', 'yaneth1990hernandez@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710002, 'MALDONADO ACUÑA JULIO CESAR', 'H', 'maldonadofj@hotmail.com', 'novel_da@hotmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710003, 'GUERRERO ZUÑIGA ERICK JOSE', 'H', 'seleneye.27@gmail.com', 'seleneye.27@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710004, 'HERNANDEZ PEÑA NAHUM AZAHEL', 'H', 'No tiene', 'Sandradehdz1@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710005, 'JALOMO ZAVALA XIMENA MARIEL', 'M', '', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710006, 'RODRIGUEZ RUIZ JENNYFER', 'M', 'fmascorro@gmail.com', 'maribelrc973@gmail.com843128', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710007, 'GARCIA NIETO ANGEL JAVIER', 'H', '.', 'marely_nieto@hotmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710008, 'VAZQUEZ BALDERAS ANUAR ALEJANDRO', 'H', 'anuarvc@live.com', 'irisabalderas.idbp@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710010, 'SAN GABRIEL RODRIGUEZ CESAR OLAF', 'H', 'moreno.fonseca@gmail.com', 'Karlayanet.47@gmail.com ', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710011, 'TOVIAS RAMIREZ MARIEL ALEJANDRA', 'M', 'yadiz.bonddecamero@gmail.com', 'yadiz.bonddecamero@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710012, 'NIÑO GONZALEZ JAIME ANDRE', 'H', 'jaimenin@gmail.com', 'patricia.glz@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710013, 'RAMOS RODRIGUEZ JESUS ADRIAN', 'H', 'carj187@gmail.com', 'crisrodriguezbaez@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710014, 'NAVARRO HERNANDEZ DYLAN ALEXANDER', 'H', '', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710015, 'GUIJARRO CARRIZALES CARLOS IGNACIO', 'H', 'juceguflores@gmail.com', 'ankacaga1@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710016, 'CARRIZALES AGUIAR JORGE LUIS', 'H', 'sirahuen70@gmail.com', 'anagalle78@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710017, 'GUEVARA GALINDO ANGEL GABRIEL', 'H', 'adrian7212@gmail.com', 'garvivi@hotmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710018, 'MARTINEZ LOPEZ FARID ALEXANDER', 'H', '', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710019, 'ZUÑIGA GARZA JOSE DIEGO', 'H', 'alejandrozunigazuniga0@gmail.com', 'anagarzardz77@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710020, 'URESTI GUEVARA SAUL', 'H', 'shaulin_74@hotmail.com', 'lizpath_1979@hotmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710021, 'MATA BUTRON JESUS ALBERTO', 'H', 'jmata73x@gmail.com', 'mkbutron@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710023, 'VALDEZ REYES RUBEN ALEJANDRO', 'H', 'rubenvi245@gmail.con', 'nelzabethrm@gmail.con', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710024, 'GUILLEN AVALOS HAROLD ISAIAS', 'H', '', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710025, 'MARTINEZ TORRES SAID AGUEDAEL', 'H', 'tachidito _500@hotmail.com', 'btm_1977@hotmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710026, 'GARCIA VAZQUEZ ALESSIA', 'M', 'vgv1969@hotmail.com', 'veronicavaz1008@hotmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710027, 'MASCORRO BARRAZA JORGE UBALDO', 'H', 'nbarrazardz@gmail.com', 'nbarrazardz@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710028, 'ACEVEDO HERNANDEZ FELIPE OMAR', 'H', 'patrycyah.hal@gmail.com', 'patrycyah.hal1@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710029, 'GARCIA CONTRERAS CARLO ALEJANDRO', 'H', 'alejandrogar@gmail.com', 'contreraskarlaenid@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710030, 'MOLINA REYES ALEXIS IVAN', 'H', 'molinaalvaradojaimeivan@gmail.com', 'nohemisotuyo10@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710031, 'GONZALEZ PEREZ PAULHO DAMIAN', 'H', 'Gonzper09@hotmail.com', '', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710032, 'SUAREZ GOMEZ ALAYSSA YERAY', 'M', '', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710036, 'SIFUENTES GUEVARA OSCAR ISAI', 'H', 'Oscarsifu2013@gmail.com', 'Annykriss@hotmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710038, 'CARREON DEL ANGEL KEVIN ASAHEL', 'H', 'hcarreon.resendez@outlook.com', 'supermeches.81@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710039, 'CEPEDA GARCIA SOPHIA YANELLY MARIAMNE', 'M', 'cncg.cc14@gmail.com', 'cncg.cc14@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710041, 'ESTRADA HUERTA FABIAN EMILIANO', 'H', 'fabianesdeleon@hotmail.com ', 'claudiahuertam@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710042, 'GONZALEZ DIAZ EDALY KRISTELL', 'M', 'almagloriadiaztorres1@gmail.com', 'almagloriadiaztorres1@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710043, 'WALLE CASTRO JUAN PABLO', 'H', 'pablito_ely@hotmail.com', '', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710044, 'VAZQUEZ TORRES LUIS', 'H', 'here_torres@hotmail.com', 'here_torres@hotmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710045, 'GONZALEZ CHARLES OSWALDO', 'H', 'No tiene', 'vice.charles@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710046, 'GOMEZ CASTILLO MIGUEL ANGEL', 'H', 'ingmagomez_m@yahoo.com.mx', 'yadira_castillo6@hotmail.com ', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710047, 'HERRERA OLVERA KAREL ERNESTO', 'H', 'abelof@hotmail.com', 'mary.tlallian@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710048, 'VARGAS CEPEDA SANTIAGO', 'H', 'Hvargasmartinez@gmail.com', 'Corinacepeda10@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710049, 'GONZALEZ CARDENAS JORGE ORLANDO', 'H', 'glzeisrael@hotmail.com', 'nenarosy2015@outlook.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710050, 'PEREZ REYES DAVID GERARDO', 'H', 'omarperezreyes0408@gmail.com', 'norma12067@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710051, 'GARCIA VERDIN JESUS ALFREDO', 'H', 'jagg1324@hotmail.com', 'juvetu@hotmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710052, 'VAZQUEZ ENRIQUEZ DAVID EMILIANO', 'H', '', '', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710053, 'DRAGUSTINOVIS MARTINEZ HUMBERTO RUBEN', 'H', 'hdragustinovis@hotmail.com ', 'lizamdragus@hotmail.com ', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710055, 'SOTO CABALLERO JOSE DANIEL', 'H', 'jdnekosensei@gmail.com', '', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710057, 'ACUÑA OLVERA EMILIO SEBASTIAN', 'H', 'Jose_luis_acuna@gmail.com', 'Doris.2018.olvera@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710058, 'AGUIRRE REVILLA CAMILA SIMONE', 'M', 'jonasaguirre2020@gmail.com', 'emmaliliarevillaramírez@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710060, 'SAAVEDRA DE LEÓN GILBERTO', 'H', 'sdeleon@docentes.uat.edu.mx', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710061, 'DIAZ SOTO YULISSA AMAYRANI', 'M', 'lajilissa@gmail.com', 'lajilissa@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710064, 'LIZARRITURRI ELIZONDO GERARDO', 'H', 'glizarriturri@hotmail.com', 'elizondoalma400@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710065, 'TORRES DIAZ JESUS ISAAC', 'H', '', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710066, 'ACUÑA PINEDA ELEAZAR ISAI', 'H', '. ', '. ', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710067, 'CARBAJAL GALVAN ROBERTA ABRIL', 'M', 'frc_norma@hotmail.com', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710068, 'GOMEZ GARCÍA ANGEL EDUARDO', 'H', 'a_gomez74@hotmail.com', 'perlagarciardz71@hotmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710069, 'REYES ZAPATA CESAR', 'H', 'fvanzzini@gmail.com', 'gzapatat917@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710071, 'RODRIGUEZ CAMPOS ALEJANDRO', 'H', 'marcer_campos@hotmail.com', '', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710072, 'SERRANO MARTINEZ ANGEL', 'H', 'iranserrano@yahoo.com', 'mimore_7@hotmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710075, 'HERNANDEZ CASANOVA ORLANDO', 'H', 'marcohdz65@hotmail.com', 'elena.262010@hotmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710076, 'DE SANTIAGO PICASSO JOSE CRISTOBAL', 'H', 'cristosantiagohdz@hotmail.com', 'fabypicasso@hotmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710077, 'CANO RODRIGUEZ ANGEL MIGUEL', 'H', 'no tiene', 'ana960855@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710078, 'MARTINEZ CUELLAR JOSE ARMANDO', 'H', 'famtzg74171gmail.com', 'marycuellarssntillan@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710079, 'RETA MUÑOZ CIELO RUBI', 'M', 'porras2000porras@outlook.es', 'mali2000munox@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710081, 'ALEJOS CANTU MAURO DAMIAN', 'H', 'alejos_mauro87@hotmail.com', 'greee.alejos@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710082, 'CASTILLO CEPEDA DIEGO', 'H', 'diego20070310@gmail.com', 'Karynacl14@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710083, 'REYES MUÑOZ LUIS FELIPE', 'H', 'jose11buenrostro@gmail.com', 'vicky750509@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710084, 'DEL ANGEL ZAMORA VALENTIN EMMANUEL', 'H', 'Vcae1474@gmail.com', 'Vcae1474@gamil.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710085, 'CASTILLO IBARRA SAMUEL', 'H', 'juliocv76@gmail.com', 'nedyig2@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710086, 'MARTINEZ LOPEZ VALERIA DESIREE', 'M', 'n.a', 'eneidalopez87@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710087, 'GALLEGOS TORRES LUIS FABIAN', 'H', 'wuichogp79@gmail.com', 'mayyra1803@hotmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710088, 'ORNELAS VAZQUEZ ANGEL EMMANUEL', 'H', 'CESARORNELAS001@HOTMAIL.COM', 'bere01031990@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710089, 'TREJO LAVIN CARLOS ALBERTO', 'H', 'ctrejo54@hotmail.com', 'karina_laving@hotmail.vom', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710090, 'RIVERA YADO ANGEL FERNANDO', 'H', 'lupita_yado@hotmail.com', 'lupita_yado@hotmal.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710091, 'MEDINA BERDINES PARIS NAHOMI', 'M', 'cmedina26@hotmail.com', 'etnaberdines1979@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710092, 'LOPEZ FLORES SOFIA MONSERRAT', 'M', 'f_lopez_luna@hotmail.com', 'marfloresr@hotmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710093, 'RIVERA HERNANDEZ FRANCISCO JAVIER', 'H', 'fcorise@hotmail.com', 'edehalmanza@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710094, 'ALVAREZ PEDRAZA JOSE PABLO', 'H', 'ajbenja.50@gmail.com', 'felapedraza10@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710095, 'GARCIA DIAZ ITZAMARA BETANIA', 'M', 'pedrogvazquez85@gmail.com', 'imprentadiart26@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710096, 'SILVA CRUZ YULIAN MARTIN', 'H', 'martinsa1980@gmail.com', 'rosscruz52@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710098, 'MEDINA VAZQUEZ BRAULIO', 'H', 'eo_medina@hotmail.com', 'keyras0284@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710099, 'RIVAS COLCHADO JOSE ROBERTO', 'H', 'Robertocolchado40@gmail.com', 'Robertocolchado40@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710100, 'MARTINEZ CASTRO AXEL JOAKIM', 'H', 'j-j-mc@hotmail.com', 'melissacs47@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710101, 'ZUÑIGA CARREON JOSE MARIA', 'H', 'sofiamagda68@gmail.com', 'sofiamagda68@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710102, 'HERRERA GARCIA EMMANUEL ENRIQUE', 'H', '-', 'Dianahg68@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710103, 'NAVA SEVILLA SANTIAGO', 'H', 'santiagonase@gmail.com', 'msevilla2908@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710104, 'BETANCOURT LOPEZ LUIS HEBERTO', 'H', 'belosa2022@gmail.com', 'belosa2022@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710106, 'RODRIGUEZ VAZQUEZ BRANDON ARTURO', 'H', 'arturorodriguezlucio619@gmail.com', 'vazquezmartinezfidela@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710109, 'PEREZ OLVERA ANDRES ABELARDO', 'H', 'Abelardoperez@live.com.mx', 'Jolvera@uat.edu.mx', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710110, 'PUENTE ZAPATA NOXIMIS NOELY', 'M', 'moisespuente126@gmail.com', 'aliss861510@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710111, 'HERNANDEZ RODRIGUEZ ALAN', 'H', 'No cuenta con el', 'sirodriguez@correosdemexico.gob.mx', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710112, 'HERNANDEZ RODRIGUEZ ALEJANDRO', 'H', 'No tiene ', 'sirodriguez@correosdemexico.gob.mx', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710113, 'SANCHEZ GALLARDO AURELIO', 'H', 'edgararmandosanchez400@gmail.com', 'galaerika978@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710114, 'ESCOBAR GAYTAN YOZEL YOMARY', 'M', '', '', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710115, 'HERNANDEZ MUÑIZ ALEJANDRO DANIEL', 'H', '', '', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710116, 'HERRERA HERRERA NORI NATALI', 'M', 'angieeriky@gmail.com', 'angieeriky@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710117, 'MAYORGA DE LA CERDA GABRIEL ADAMY', 'H', 'Aaa@c.om', 'esperanzadelacerda@hotmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710118, 'SOTO VENEGAS DIEGO', 'H', 'sotodiego793@gmail.com', 'consuelo_2301@yahoo.com.mx', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710119, 'BAZALDUA INFANTE MILCA', 'M', 'victorbazaldua@hotmail.com ', '', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710120, 'MOYEDA CANALES LUDWIKA MARBELLA', 'M', '. ', 'marveliacanales13@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710121, 'URBINA FLORES MICHEL GIOVANNI', 'H', 'Urbinaflores0708@gmail.com', 'Marcelaflores17@live.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710122, 'REYES ORNELAS EMMANUEL', 'H', 'hilariamaria08@gmail.com', 'hilariamaria08@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710123, 'CASTILLO SOTO MIGUEL ANGEL', 'H', 'macgsabil@gmail.com', 'hannmide190297@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710125, 'LEOS NAPOLES EDUARDO ALEJANDRO', 'H', 'benapoleschrys@gmail.com', 'benapoleschrys@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710126, 'GALVAN LEGORRETA ANDREA', 'M', 'huhoalbertogalvan@gmail.com', 'mafer.lego@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710127, 'MIRELES MORALES ALEJANDRO', 'H', 'pcabr2014@gmail.com', 'anetita72@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710128, 'MUÑIZ MATA DULCE MARIANA', 'M', 'dulcemariadelcarmenmatamartine@gmail.com', 'dulcemariadelcarmenmatamartine@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710129, 'ANGELES VILLARREAL LUIS FERNANDO', 'H', '', '', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710130, 'ORTIZ GATTAS MARIO KHALED', 'H', 'fmortiz76@hotmail.com', 'marcelagattas1613@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710131, 'GOMEZ ESCOBAR RODOLFO GAMALIEL', 'H', 'tavogama66@gmail.com', 'nellyflores109@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710133, 'NUÑEZ VARELA MIGUEL EDUARDO', 'H', 'Ed.adalid@gmail.com', 'Dianavarelahernandez@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710135, 'VILLARREAL PONCE MAURICIO ANTONIO', 'H', 'palmo_4850@hotmail.es', 'isi18sierrachiquita@gmail.com', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710137, 'TAPIA HIGUERA ISABELLA JOSELYN', 'M', 'daniela.996@outlook.es', '', 0, 0, 0),
('5A', 'PROGRAMACIÓN', 22328052710138, 'ESCANDON ESCOBAR JOSUE', 'H', 'Cristóbal001@gmail.com ', 'esmekje75@gmail.com', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710139, 'GARCIA MIRELES EMILIANO', 'H', 'alexgs71@hotmail.com', 'imelda18101975.im@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710140, 'DIAZ RINCON CAMILA YARLETH', 'M', 'Finado', 'rociorincon0409@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710141, 'LIOU CONTRERAS GIBRAN AXEL', 'H', 'tres.cabritas@gmail.com', 'No tiene', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710142, 'MARQUEZ DOMINGUEZ FATIMA MIROSLAVA', 'M', 'Jamacedillo2012@gmail.com', 'hdominguezsalazar@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710143, 'LEDEZMA RODRIGUEZ ADHIR EMILIANO', 'H', 'silvestreledezmasayas@gmail.com', 'brendayasminrdzgmz@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710144, 'RAMIREZ PEREZ ABEL EDUARDO', 'H', 'abel_antonio_ramirez@hotmail.com', 'mariaprz.acc@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710145, 'RAMIREZ GONZALEZ AIME ANDREA', 'M', 'carminagonzalezruiz@gmail.com', 'carminagonzalezruiz@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710147, 'PADILLA RODRIGUEZ LESLIE DESIDE', 'M', 'alexpadilla0592@gmail.com ', 'jpadillar0901@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710148, 'CASTRO RIOS CAMILA ITZEL', 'M', '', '', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710151, 'MENDOZA QUINTANILLA MICHEL MONSERRATH', 'M', 'michellemendozaquintanilla@gmail.com', 'michellemendozaquintanilla@gmail.com', 0, 0, 0),
('5E', 'MECATRÓNICA ', 22328052710152, 'GARCIA CHAVEZ JORGE DANIEL', 'H', 'garciajosedaniel294@gmail.com', 'cnallely770@gmail.com', 0, 0, 0),
('5H', 'TRANSFORMACIÓN DE PLÁSTICOS', 22328052710155, 'GONZALEZ SOTO JORGE HUMBERTO', 'H', 'gs172206@gmail.com', '', 0, 0, 0),
('5B', 'PROGRAMACIÓN', 22328052710156, 'MARTINEZ VILLANUEVA LESLY XIMENA', 'M', 'vlesly182@gmail.com', 'juanyvill368@gmail.com', 0, 0, 0),
('5F', 'MECATRÓNICA', 22328052710158, 'RODRIGUEZ JUAREZ MANOLA GRISSEL', 'M', 'manuelrodriguez11@gmail.com', 'griseldajuarezgarcia16@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328050240121, 'CAMPOS LOPEZ DARIO ALEXANDER', 'H', '', '', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328050240190, 'GONZALEZ FONTI MARIANA', 'M', 'enriquegonzalezgallaga@gmail.com', 'yfontidelgado@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328050240227, 'MERCADO RAMIREZ ALEXIS JAVIER', 'H', 'iscfjmz@gmail.com', 'adrianarag@outlook.es', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328050240397, 'MARTINEZ SALDAÑA MAGALY ALEXANDRA', 'M', 'Gamaga7622@hotmail.com', 'Gamaga7622@hotmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328050241007, 'SANCHEZ ARIAS MIGUEL ALEJANDRO', 'H', 'mw1sanchez@gmail.com', 'erearias.itca@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328051190365, 'CHAVEZ MARTINEZ MARIAM ALEJANDRA', 'M', '', '', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328051190380, 'MARES TORRES SAMUEL', 'H', '', '', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328051190384, 'ORTIZ QUINTANILLA ANGEL RODRIGO', 'H', '', '', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710002, 'VILLARREAL DE LA FUENTE AARON', 'H', 'jhvillarreal2023@hotmail.com', 'ceciliadelafuenteramirez@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710003, 'RUIZ MIRELES OSCAR OSBALDO', 'H', 'Pugaalbertocarlos@gmail.com', 'Yurimirelesrodriguez@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710004, 'HERRERA SILGUERO OLAF', 'H', 'aherrera.he@gmail.com', 'SYLCA17@GMAIL.COM', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710005, 'URBINA FLORES CHRISTIAN ALESSANDRO', 'H', 'UrbinaFlores0708@gmail.com', 'marcelaflores17@live.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710006, 'GALLEGOS CARMONA JORGE DE JESUS', 'H', 'jorgegallegos75@hotmail.com', 'angelicacarmona93@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710008, 'VERASTEGUI HERNANDEZ JESUS EMANUEL', 'H', 'rodolfoverastegui2019@gmail.com', 'lasfuentes05hernandez@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710009, 'ROSALES HERNANDEZ RUBEN ALEJANDRO', 'H', 'alesitaha10@gmail.com', 'alesitaha10@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710010, 'VILLANUEVA PACHECO ALIM YAZID', 'H', 'coqueman2378@gmail.com', 'caprilu.pacheco@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710012, 'NIETO SANCHEZ JENNIFER ESTEPHANIA', 'M', 'sanchezhilda227@gmail.com', 'sanchezhilda227@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710013, 'ALVAREZ ESCOBEDO AARON ANTONIO', 'H', 'antonioalvarezzz634@gmail.com', 'ilerayag@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710014, 'RENTERIA HAROS ANGEL OSWALDO', 'H', 'flipsrenteria@hotmail.com', 'rosario.bujanos4@hotmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710015, 'RAMIREZ PIZAÑA DIEGO ALEJANDRO', 'H', 'eloy_ahdz@hotmail.com', 'kapzi_14@hotmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710016, 'LARA CAMACHO WENDY JOSELIN', 'M', 'rogelio.gonzalezreyes17021971@gmail.com', 'elislaracamacho02@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710017, 'DE LA VEGA CANO MAURICIO', 'H', 'lic.delavega@live.com.mx', 'annamargarett.29@gmail.com ', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710018, 'VAZQUEZ MANZANO PAUL FRANCISCO', 'H', 'mariorojo0577@gmail.com', 'terezamanort@gmail.com ', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710019, 'ABUNDIS PEREZ ANGEL', 'H', 'angel_abundis85@hotmail.com', 'silia.estello@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710020, 'CASTAÑON GARCIA ALDO MANUEL', 'H', 'garciacinthya734@gmail.com', '', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710021, 'GUEVARA LIÑAN ELLIUTTH ISAAC', 'H', 'albertoguevarasalas@gmail.com', 'glmkbgl1209@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710022, 'FERNANDEZ CANTU ARANZA JOCELYN', 'M', 'antoniofdezangel@gmail.com', 'hestybalyzcantu@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710023, 'CASTILLO LORES MIGUEL ANGEL', 'H', 'mikecastillosintesis@gmail.com', 'betylores2013@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710024, 'ABUNDIS VALENCIA MARIA INES', 'M', 'mainabundis1508@gmail.com', 'abundisrosario22@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710025, 'MARTINEZ BALBOA REGINA', 'M', 'nadeshpaez19@gmail.com', 'edna.nna10@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710026, 'MARTINEZ WALLE YUREN SARAHI', 'M', 'martinezsergio. rh@gmail.com', 'yurisiawalleq@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710028, 'MONTES HERNANDEZ LUIS ANGEL', 'H', '-', 'lauraplancasa@hotmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710029, 'MORON NAVARRO JEREMY VIDAL', 'H', 'moronsantiagofranciscovidal@gmail.com', 'moronnavarro1@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710031, 'RUIZ DE LA CRUZ RENATA GUADALUPE', 'M', 'phruiz18@hotmail.com', 'cestadistica@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710033, 'MANRIQUEZ LAZOS LEVIR ADIEEL', 'H', '.', '.', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710034, 'SANCHEZ LOPEZ ZAHID DE JESUS', 'H', 'adrianithakastl80@gmail.com', '', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710035, 'ZAVALA BARRON FARID ANTONIO', 'H', 'cecyfarid2019@gmail.com', 'cecyfarid2019@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710036, 'JIMENEZ VELAZQUEZ ROBERTO ABAD', 'H', 'btojimenez807@gmail.com', 'carmenaideevelazquez@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710037, 'GUERRERO MORALES FATIMA', 'M', '', '', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710038, 'CARDONA GUEVARA XIMENA ELIZABETH', 'M', 'angelicavara09@gmail.com', 'angelicavara09@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710039, 'BLANCO CASTILLO ROGELIO', 'H', 'darioblanco1@hotmail.com', 'blanca1013@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710041, 'TORRES MIRELES VICTOR DAMIAN', 'H', 'moisestorresmartinez7@gmail.com', 'victortorresmireles@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710042, 'LOPEZ MALDONADO DAMIAN ALEXANDER', 'H', 'ol5371147@gmail.com ', 'maldaniela844@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710044, 'SOSA SOTRES MELANIE CASSANDRA', 'M', 'memo.sosa07@gmail.com', 'estados.de.cuenta1217@gmail.com ', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710045, 'MALDONADO DELGADO ABIZAI GAMALIEL', 'H', 'lmaldonador@upv.edu.mx', 'merary1825@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710047, 'SOLIS REYES ROMAN ELOY', 'H', 'romaneloy610@gmail.com', 'pastelesyady@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710048, 'ANGUIANO AYALA ALAN', 'H', 'Ayalalili634@gmail.com', '', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710049, 'ALVAREZ GALLARDO ELIAS', 'H', 'efrén751024@gmail.com ', 'perlagallardomanzano@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710050, 'GARCIA ROCHA ALAN JAVIER', 'H', 'No cuenta con uno ', 'xochilita73@live.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710051, 'MARTINEZ HERNANDEZ ANGEL FABIAN', 'H', 'mglmartinezfranco@gmail.com', 'ostoasu@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710052, 'HERRERA RAMOS ADAMARIS', 'M', 'herreraisidrojorgeisidro@gmail.com', 'zohet2802@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710053, 'CARRIZALES TREVIÑO AMERICA JOANA', 'M', 'naditrevy@gmail.com', 'naditrevy@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710054, 'RANGEL MIRELES AVRIL MICHELLE', 'M', 'victor_pablo86@hotmail.com', 'Irenegugua@icloud.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710055, 'TREVIÑO CERVANTES LEONARDO DAVID', 'H', 'gtbarbosa@uat.edu.mx', '', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710057, 'HERNANDEZ MORALES RAUL ALEXANDER', 'H', 'rulii_hdz@hotmail.com', 'griselda_mn21@hotmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710058, 'ZUÑIGA FUENTES JULIAN', 'H', 'davidzuniga2506@gmail.com', 'Claudia.fuentes.mdo.1804@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710059, 'CORONADO CASTILLO LUIS MANUEL', 'H', 'cope740127@gmail.com', 'cncl1973@hotmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710061, 'CASTILLO IBARRA JULIO ABDIEL', 'H', 'juliocv76@gmail.com', 'Nedyig2@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710062, 'CASTILLO HUERTA OSIEL ARAM', 'H', 'nely.abigail.h.g@gmail.com', 'nely.abigail.h.g@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710066, 'SIFUENTES MARTINEZ DANTE CECILIO', 'H', 'orfelindajassohernandez@gmail.com', 'orfelindajassohernandez@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710067, 'SALVADOR HERNANDEZ LORETO SIMONETT', 'M', 'luis_salvadort@hotmail.com', 'hrosemary@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710069, 'BECERRA MIRELES EMILIO ALEJANDRO', 'H', 'marcosbecerra@gmail.com', 'gecholulu@hotmail.com ', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710070, 'CEREZO RODRIGUEZ MARIO', 'H', 'mario.cerezo@ica.mx', 'lauracerezo050980@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710071, 'ZAPATA FLORES FERNANDO', 'H', 'hrzapatar@hotmail.com ', 'Ing_inventariovictoria@hotmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710072, 'RUIZ TORRES DANIEL ALEJANDRO', 'H', 'raulwero27@gmail.com', 'torres.damian1485@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710073, 'ANDRADE OLVERA CESAR ALESSANDRO', 'H', 'C.m.olvera.ramirez@gmail.com', 'C.m.olvera.ramirez@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710074, 'RUIZ VARGAS SAMUEL IRAM', 'H', 'iramruiz39@gmail.com', '', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710075, 'GARCIA SAMANO CESAR ENRIQUE', 'H', 'isidrogarciavaldez@hotmail.com', 'claudiasamano7619@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710076, 'VAZQUEZ REYES JHOMAR GONZALO', 'H', 'marey3835@gmail.com', '', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710078, 'LOPEZ VARGAS CAMILA SUGEY', 'M', 'josealfredolopezcruz79@gmail.com', 'sugeylucerovargas@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710079, 'MORENO HERNANDEZ HANNA LINETH', 'M', 'sergio.moreno@live.com.mx', 'hale29@live.com.mx', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710080, 'GUZMAN GARZA JOSE EMILIANO', 'H', 'aurelio.guzman@benft.edu.mx', 'Pilygarzalopez@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710081, 'ARAUJO RICO SANTIAGO', 'H', 'yuly.rico.morales@gmail.com', 'yuly.rico.morales@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710082, 'MEDRANO VILLA AURORA CLARISA', 'M', 'cybermedrano@gmail.com', 'marisol_villa_pedraza@hotmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710083, 'HERNANDEZ LUGO VICTOR GABRIEL', 'H', 'politogel15@gmail.com', 'gelydsanti@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710084, 'REYNA LEOS VICTOR HUGO', 'H', 'Karlylu17@gmail.com', 'Karlylu17@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710086, 'MALDONADO ACOSTA URIEL GERARDO', 'H', 'jluisnegro66@gmail.com', 'chabeli2230@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710087, 'SOTO HERNANDEZ DIEGO ANTONIO', 'H', 'marcosoto008@gmail.com', 'fhn2010@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710088, 'LUNA HERNANDEZ JACK', 'H', 'mlunam99@hotmail.com', 'Yadiragpe180277@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710089, 'DURAN VAZQUEZ ANGEL GABRIEL', 'H', 'comesespejitos@gmail.com', 'comeespejitos@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710092, 'LERMA ROSALES MIGUEL ALEJANDRO', 'H', 'mike.lerma@gmail.com', 'sirg_00@hotmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710095, 'JIMENEZ CASTILLO ITZEL YOSELIN', 'M', 'Ceciliap.drw@gmail.com', 'Ceciliap.drw@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710096, 'MANCHA BRIONES ISAAC URIEL', 'H', 'manchaisaac02@gmail.com', 'manchaisaac02@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710098, 'PUENTE ZAPATA KEILA GERALDINE', 'M', 'moisespuente126@gmail.com', 'aliss861510@gmail.com ', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710099, 'CARDENAS ZUÑIGA EDSON JAVIER', 'H', 'Fcoctllomobil@gmail.com', 'Marianes_22@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710100, 'MENDEZ PECH FELIX EDUARDO', 'H', 'Dramatik_2022@outlook.es', 't.s.p.c.2007@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710101, 'ALVAREZ AGUILAR CRISTO ISAIAS', 'H', 'marielita_0888@hotmail.com', 'marielita_0888@hotmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710102, 'GARZA SOTO SAHORY KIRYAT', 'M', 'luisgarzabat@gmail.com', 'perlasoto0912@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710103, 'VALDEZ RUIZ VICTORIA CORAZON', 'M', 'jaimevaldezpollos@gmail.com', 'victoriarioss99@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710104, 'HERNANDEZ CARDENAS ANA CECILIA', 'M', 'hghr_1980@hotmail.com', 'ilenia_82@hotmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710106, 'HERNANDEZ ESCOBEDO JOSE PABLO', 'H', 'mariotamatanzoo@gmail.com', 'fabiolairis29@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710108, 'GARCIA TELLO JOSE FRANCISCO', 'H', 'elodiatello80@gmail.com', 'Marcialvw73@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710109, 'FLORES YUNAN RHANDA YERAY', 'M', 'mike_1981@hornail.com', 'yunanrhanda@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710110, 'GONZALEZ VALLEJO JESUS BENJAMIN', 'H', 'jnbgr83@gmail.com', 'vallejo_loren@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710111, 'LOPEZ HINOJOSA LEONARDO', 'H', 'alexlopez@idtconsulting.com.mx', 'lettyh8a@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710112, 'DIAZ DE LEON CARDENAS JESUS', 'H', 'jesus.diazdeleon@tamaulipas.gob.mx', 'nerycadi@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710113, 'DE LA FUENTE REYES VALERIA CAROLINA', 'M', 'jorgedfr79@gmail.com', 'sjreyesreyna@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710114, 'RIVERA ZUÑIGA ITZEL AMAIRANI', 'M', 'joseangelrivera.1976@gmail.com', 'patty_1251@hotmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710115, 'HERNANDEZ QUILANTAN RAUL ALEJANDRO', 'H', 'naquilantanc@gmail.com', 'naquilantanc@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710117, 'DE LA GARZA ZAVALA EDGAR JAIR', 'H', 'Matildezavala9@gmail.com', 'Matildezavala9@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710118, 'MONREAL ROMERO DANIEL ALEJANDRO', 'H', 'juanmr77@hotmail.com', 'mirosceci@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710119, 'LOPEZ PEREZ HENRY ABDIEL', 'H', 'henrylopezruiz@gmail.com', 'perezloyra@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710120, 'AVALOS SANTIBAÑEZ ABRAHAM ALDAHIR', 'H', 'carlos.yegua1979@gmail.com', 'lauraesr18@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710121, 'LEAL PORRAS CARLOS FELIPE', 'H', 'luislealdelaG@gmail.com', 'nancy-porras@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710122, 'OLAZARAN IZAGUIRRE ENRIQUE GERARDO', 'H', 'e_olazaran@hotmail.com', 'belindacoral@hotmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710124, 'PORRAS HERRERA CARLOS RICARDO', 'H', 'jporrasquintanilla@gmail.com', 'armandina_gl@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710126, 'CEPEDA ORTEGA JESE ISAIAS', 'H', 'josecepeda24@gmail.com', '', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710127, 'MARTINEZ LIBRADO ANGEL DAVID', 'H', 'rober76mar@gmail.com', 'roxanalibrado206@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710129, 'GALVAN AVALOS SEBASTIAN', 'H', 'Isela.avalos@hotmail.com', 'isela.avalos@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710130, 'GUZMAN INFANTE JOSE DE JESUS', 'H', 'jjguzmanmorales@hotmail.com', 'infantearevalo@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710132, 'REYES GONZALEZ ANGEL GABRIEL ABIMAEL', 'H', 'Jgrl4010@gmail.com ', '', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710133, 'GERONIMO OSORIO GABRIELA NAHOMY', 'M', 'josebaltazarosorio1999@gmail.com', 'nardaosorio84@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710136, 'LOPEZ JIMENEZ FERNANDO DANIEL', 'H', '', '', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710137, 'REYES REYES FLOR ODALYS', 'M', 'jassojosse@gmail.com', 'erika_reyesv@hotmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710138, 'VELAZQUEZ HERNANDEZ SAMUEL ISAIAS', 'H', 'robertovelazquezguzman75@gmail.com', 'adrianahdz_zavala@hotmail.es', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710139, 'RUIZ ALVAREZ JOSE RODRIGO', 'H', ' ', '', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710140, 'GAONA FRANCO MAGDA EDITH', 'M', 'analuciagallegos510@gmail.com', 'analuciagallegos510@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710141, 'RUIZ GUEVARA ANA VICTORIA', 'M', 'sergioaruizlavin@gmail.com', '0411carmen@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710142, 'IBARRA HERNANDEZ DULCE ISEL', 'M', 'ibarra.83@hotmail.com', 'iselhcas@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710143, 'PEREZ MALDONADO DILAN ALEXANDER', 'H', 'Yolandamaldonado581@gmail.com', 'Yolandamaldonado581@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710144, 'SALDIVAR TIRADO RODRIGO', 'H', 'no tiene ', 'Iselagpetirado@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710145, 'ESQUIVEL PEREYDA JESUS EDUARDO', 'H', 'pereidarojas1984@outlook.com', '', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710146, 'FLORES MENDOZA DIEGO ALEXANDER', 'H', 'burgosraul740@gmail.com', 'lucymendoza610@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710149, 'CARDENAS MARTINEZ DANIEL ALEXANDER', 'H', '', '', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710151, 'SOLIS MEDELLIN ARMANDO', 'H', 'galleraaztek@outlook.com', 'carmen.medellin019@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710152, 'TIJERINA HERNANDEZ ARTURO', 'H', 'antoniotijerina2@gmail.com', '', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710153, 'RODRIGUEZ GONZALEZ NAIMA AMAYRANY', 'M', 'Nancydego1@gmail.com', 'Nancydego1@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710154, 'PAZ RIVERA YEIMY ITZEL', 'M', 'Naschmaster@hotmail', 'patosepsy77@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710155, 'BANDA VIERA NICOLAS GUADALUPE', 'H', 'jumababal2@gmsil.com', 'jumababal2@gmsil.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710158, 'REYNA ORNELAS LUIS DARIO', 'H', 'juanreyor72@gmail.com', 'gabyollerena@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710159, 'VALLE BECERRA MIA MARISOL', 'M', 'maite.73_@hotmail.com', 'maite.73_@hotmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710160, 'KORRODI RIVERA DIEGO ARTURO', 'H', '', '', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710161, 'TRUJILLO RAMIREZ LUIS ALONZO', 'H', 'dr.jorgetrujillob@gmail.com', 'luysaramirez@hotmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710162, 'SALAZAR ZUÑIGA MARIO DAVID', 'H', 'marioa_sh@gmail.com', 'Jenyy0121@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710163, 'OVALLE REQUENA JOSE SANTIAGO', 'H', 'israelovalle75@gmail.com', 'mary_reqquena@hotmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710164, 'DIAZ ALVAREZ JOSE LUIS', 'H', 'Luis15.D@icloud.com', 'yanetholmo16@outlook.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710166, 'FERNANDEZ CANTU ANTONIO OMAR', 'H', 'antoniofdezangel@gmail.com', 'hestybalyzcantu@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710167, 'URBINA PADILLA JARED ISSAC', 'H', 'padillajessica311@gmail.com', 'padillajessica311@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710168, 'OLVERA SAHAGUN MARIANA', 'M', 'contrerassara290@gmail.com', 'contrerassara290@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710169, 'MENDOZA QUINTANILLA ALISON MAITE', 'M', 'mendoza.quintanilla.alison.maite@gmail.com', 'mendoza.quintanilla.alison.maite@gmail.com', 0, 0, 0),
('3F', 'MECATRÓNICA', 23328052710171, 'RUIZ NARVAEZ JOHAN AMILKAR', 'H', '', '', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710172, 'RUIZ VASQUEZ XIMENA', 'M', 'jcruizr72@gmail.com', 'lupitavazqzr@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710174, 'RODRIGUEZ CONTRERAS BRISSIA MONTSERRAT', 'M', 'será.rdz.mor@gmail.com', 'anacontreras1576@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710175, 'PUGA MEDINA YONATAN ALEJANDRO', 'H', 'chepina2562@gmail.com ', 'chepina2562@gmail.com ', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710176, 'GOMEZ PASCUAL LAILA MARIAN', 'M', 'silviapascual1001@gmail.com', 'eduardoct871@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710177, 'CALDERON FONSECA JOSE MANUEL', 'H', '', '', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710178, 'LOERA LOPEZ JASON', 'H', 'rosariolopezh1314@gmail.com', 'rosariolopezh1314@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710179, 'CAMACHO VARGAS ANGELICA YAZMIN', 'M', 'camachovargasangelicayazmin@gmail.com', '', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710180, 'PARRA DE LA ROSA HASHLEE YOSELIN', 'M', 'carlos.alberto.parragomez@gmail.com', 'hasdapyyo@hotmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710181, 'CARDENAS PUENTE FATIMA', 'M', 'hectorcardenas.14@outlook.es', 'lupitapuentemireles@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710183, 'MEZA DORIA MARTHA ALEJANDRA', 'M', 'Sin correo ', 'anallanci0924@hotmail.com ', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710184, 'HERNANDEZ GUTIERREZ DAFNE ABIGAIL', 'M', 'Cpenriquehdz@hotmail.com', 'cpraquel81@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710185, 'DIAZ MARTINEZ ANA KARENINA', 'M', 'vikydmtz23@gmail.com', 'graviota.974@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710186, 'SANCHEZ VERDIN MARIA FERNANDA', 'M', 'sanchezrito585@gmail.com', 'naverdinl_87@outlook.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710187, 'ALVIZO MELENDEZ ALEXA GUADALUPE', 'M', '8342723686gris@gmail.com', '8342723686gris@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710189, 'QUINTERO GARZA SEBASTIAN ALEJANDRO', 'H', 'alexs_haqq0210@hotmail.com', 'pz_garza@hotmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710190, 'RODRIGUEZ GUEVARA OSCAR ALEJANDRO', 'H', 'jou.rodriguez1985@gmail.com', 'Marissaguevara54@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710191, 'RUIZ VARGAS DANIELA MARGARITA', 'M', 'iramruiz39@gmail.com', 'magueysuscinco@gmail.com', 0, 0, 0),
('3B', 'PROGRAMACIÓN', 23328052710192, 'TREVIÑO OLVERA JUAN CARLOS', 'H', 'elbarbaro72@gmail.com', 'r.paty.olvera@gmail.com', 0, 0, 0),
('3A', 'PROGRAMACIÓN', 23328052710193, 'TAPIA PALOMO TADEO YAHIR', 'H', 'jorgetadeo0204@gmail', 'palomofrancisca8@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710194, 'SALDAÑA SOTO RAMIRO', 'H', 'mirtasoto1723@gmail.com', 'mirtasoto1723@gmail.com', 0, 0, 0),
('3E', 'MECATRÓNICA', 23328052710195, 'MONTALVO TOVIAS FRANCISCO GAEL', 'H', 'pacomontalvo72@gmail.com', 'karina.tovias.quintero@gmail.com', 0, 0, 0),
('3H', 'TRANSFORMACIÓN DE PLÁSTICOS', 23328052710196, 'NIETO ESTRADA PAOLA MICHELLE', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710001, 'ACUÑA FERNANDEZ JOSUE ALEJANDRO', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710002, 'ALVAREZ VALDES SEBASTIAN', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710003, 'AMAYA LOPEZ SANTOS LEONEL', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710004, 'BALDERAS AGUILAR YOIGAEL EMILIANO', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710005, 'CAMARILLO CEPEDA JORGE MIGUEL', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710006, 'CASTAÑON OCHOA DAMIAN ESAU', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710007, 'CASTILLO ASTELLO SOFIA GUADALUPE', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710008, 'CASTILLO HUERTA JAZIRA VANNEY', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710009, 'CERDA FRANCO ALBERTO', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710010, 'CRUZ PECINA GABRIEL ESTEBAN', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710011, 'FLORES RODRIGUEZ JAVIER ADRIAN', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710012, 'FLORES GARCIA SANTIAGO MARTIN', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710013, 'GARCIA CERVANTES OMAR', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710014, 'GARZA MEJIA RAUL EMMANUEL', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710015, 'GONZALEZ SOTO CESAR ALEJANDRO', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710016, 'GONZALEZ FONTI XIMENA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710017, 'GRANADOS POSADA ROOSMY MARIA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710018, 'HACES RAMIREZ ANGEL GERARDO', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710019, 'LOPEZ RODRIGUEZ YELENA LIZETH', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710020, 'LOPEZ LUNA CELINEZ ITZAYARA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710021, 'MADRID CEPEDA FERNANDO DANIEL', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710022, 'MARTINEZ MONTOYA ERIK AARON', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710023, 'MARTINEZ WALLE SERGIO ENRIQUE', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710024, 'MEDELLIN REYNA JOSUE ISAI', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710025, 'MEDRANO DE LA GARZA NERLIB', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710026, 'MELENDEZ MONTOYA ASLHY ASTRID', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710027, 'NIÑO MALDONADO MARIANA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710028, 'NUÑO HERNANDEZ YANDEL ADRIAN', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710029, 'REYES HERRERA CAMILA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710030, 'RODRIGUEZ CASTILLO BIANCA MARCELLA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710031, 'RODRÌGUEZ FUENTES YAHIR EMILIANO', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710032, 'RODRIGUEZ REYES FRANCISCO ENRIQUE', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710033, 'RODRIGUEZ DESILOS KIMBERLY VALENTINA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710034, 'SALAS MONTELONGO DIEGO KRISTOF', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710035, 'SALAZAR VILLANUEVA DEINNA YAMILETH', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710036, 'SOTO MEZA ALLEN SAMIR', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710037, 'TORRES REYES OSCAR HUMBERTO', 'H', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710038, 'VAZQUEZ ALVAREZ MARLA FERNANDA', 'M', '', '', 0, 0, 0),
('1A', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710039, 'ZAPATA VAZQUEZ MANUEL SALVADOR', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710040, 'BALDERAS CRUZ EDNA KEIRA', 'M', '', '', 1, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710041, 'BLANCO ALFARO LUIS MANUEL', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710042, 'CALDERON AVALOS GENESIS REBECA', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710043, 'CANO ALMAGUER MONTSERRAT GUADALUPE', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710044, 'CARDENAS REYES JOSE DE JESUS', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710045, 'CASTRO CASTILLO JESUS DANIELLE', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710046, 'CHAVEZ REYES YARETSY EMILENE', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710047, 'CORTINA PORTILLO SANDERS FABIAN', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710048, 'CRUZ TOVAR JORGE LUIS', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710049, 'DIAZ CERDA EMMANUEL ALEJANDRO', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710050, 'ESPINOZA GONZALEZ BRAYAN EMMANUEL', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710051, 'GALLEGOS MARTINEZ AXEL JARED', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710052, 'GARCIA ZUÑIGA ERIK EDUARDO', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710053, 'GONZALEZ VAZQUEZ LUIS ALBERTO', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710054, 'HERNANDEZ LERMA SEBASTIAN', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710055, 'HERRERA BARBOZA ERICK', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710056, 'MARTINEZ RODRIGUEZ IAN ABRAHAM', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710057, 'MERAZ LOERA BRANDON RAFAEL', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710058, 'MORALES RODRIGUEZ GLENDY JERIT', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710059, 'MUÑOZ RIOS INES MARISOL', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710060, 'OJEDA SOTO DIEGO JESUS', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710061, 'OJEDA RIVERA IVAN MAXIMILIANO', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710062, 'OSUNA BRAVO CARLOS', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710063, 'PUENTE ZAPATA MARIA JOSE', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710064, 'QUINTANILLA TORRES KAREN SOFIA', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710065, 'RAMIREZ RUIZ LUIS MANUEL', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710066, 'RAMOS CERVANTES VALERIA SARAHI', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710067, 'RAMOS MEDINA ANTHONY MAURICIO', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710068, 'REYES ZAPATA RAFAEL', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710069, 'SILVA GUEVARA JOSELYN FABIOLA', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710070, 'SILVA AVENDAÑO JESUS ANTONIO', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710071, 'SUAREZ GUTIERREZ GADIEL ISAIAS', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710072, 'TOVAR ZURITA GUADALUPE DE JESUS', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710073, 'URESTI MATA NAYLA OFELIA', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710074, 'VALDEZ REYES MIRANDA ABIGAIL', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710075, 'VALLES BALDERAS ANGEL OMAR', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710076, 'VARELA PORRAS BROSNAN GERARDO', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710077, 'VERA BARRON SUSAN ALEJANDRA', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710078, 'VILLARREAL PONCE SEBASTIAN', 'H', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710079, 'VILLELA EZQUIVEL FLOR MARGARITA', 'M', '', '', 0, 0, 0),
('1B', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710080, 'YADO IZAGUIRRE DAVID ANTONIO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710081, 'ALFARO TORRES MIGUEL ANGEL', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710082, 'ALVAREZ TORRES BRISA CAMILA', 'M', '', '', 0, 0, 0);
INSERT INTO `alumnos` (`grupo`, `especialidad`, `matricula`, `nombre`, `genero`, `correo_p`, `correo_m`, `cantidad_r`, `cantidad_s`, `cantidad_c`) VALUES
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710083, 'AVILA REYES ERICK OSSIEL', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710084, 'BECERRA IZAGUIRRE AZUL IDALY', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710085, 'BUDARTH PIÑON DANIEL ALEJANDRO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710086, 'CABRIALES LOPEZ EVELIN LIZBETH', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710087, 'CARRILLO LINARES JESUS ANTONIO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710088, 'CASTAÑON GONZALEZ JUAN DAVID', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710089, 'DIAZ VARGAS GUADALUPE MARISOL', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710090, 'FLORES HERNANDEZ EDUARDO MISAHEL', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710091, 'GARCIA SAAVEDRA ANGELA PAOLA', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710092, 'GARZA RODRIGUEZ JOSE ANTONIO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710093, 'GONZALEZ ROBLES EMILIANO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710094, 'GONZALEZ OCHOA AXEL', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710095, 'GUERRERO MATA LUIS ANGEL GUADALUPE', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710096, 'HERNANDEZ GALINDO PABLO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710097, 'HERRERA RODRIGUEZ HORTENCIA ANGELLINNE', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710099, 'LOPEZ MARTINEZ GAEL ALBERTO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710100, 'MARTINEZ JIMENEZ DIEGO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710101, 'MARTINEZ ORTIZ RODRIGO ALEJANDRO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710102, 'MATA LIMAS JESSED ARMANDO ZOE', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710103, 'MATA RODRIGUEZ PEDRO GABRIEL', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710104, 'PERALES SALDAÑA JOSTHYN ALEXIS', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710105, 'PORRAS VILLA CESAR ALBERTO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710106, 'QUIÑONES ZARATE KATE ALEXANDRA', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710107, 'REYES LEO FRIDA SELENE', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710108, 'REYNA CASTILLO SEBASTIAN', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710109, 'RIOS MUÑIZ JOSE DAVID', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710110, 'RODRIGUEZ RODRIGUEZ DILAN EDUARDO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710111, 'SANCHEZ MARTINEZ SANTIAGO ALEXANDER', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710112, 'SANDOVAL OLMOS JORGE ALEJANDRO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710113, 'SAUCEDO MIRANDA DIEGO HIRAM', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710114, 'SOLIS REYES EDWIN GABRIEL', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710115, 'TAVARES RODRIGUEZ NORMA JUDITH', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710116, 'VERA CERDA SOFIA ALEJANDRA', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710117, 'ZAPATA TEJEDA LUIS FERNANDO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710118, 'ZAPATA ZUÑIGA RAMIRO EMILIANO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710119, 'ZAYAS PINEDA JOSE EDMUNDO', 'H', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710120, 'ZURITA GARCIA DAVID ALEXANDER', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710121, 'ARCOS DOMINGUEZ ALEXIS GABRIEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710122, 'BECERRA FRANCISCO OSCAR LEONARDO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710123, 'CASTILLO HUERTA EMMANUEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710124, 'CASTILLO PORRAS LUIS ALFREDO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710125, 'CRUZ CEBALLOS RENATTA NOHEMI', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710126, 'CEVADA SUASTEGUI ABRIL', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710127, 'CRUZ ANAYA CRISTOBAL YANDEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710128, 'FLORES GARCIA EDUARDO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710129, 'GARCIA TIJERINA SEBASTIAN EMANUEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710130, 'GATICA PONCE MIGUEL DIDIER', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710131, 'GOMEZ CORDOVA WILLYAM RONALDO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710132, 'GONZALEZ TREJO VICTOR MANUEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710133, 'HEREDIA JUAREZ JAHIR EMMANUEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710134, 'HERNANDEZ ROCHA ANGEL EMMANUEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710135, 'HUERTA RIVAS JAVIER EDUARDO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710136, 'JASSO NAVA WILLIAM DANIEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710137, 'LASTRA PERALES JOSE ERNESTO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710138, 'LUMBRERAS VIVEROS LEONARDO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710139, 'MARTINEZ SALDIERNA ALONZO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710140, 'MARTINEZ SANCHEZ AMBAR JULISSA', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710141, 'MENDOZA PESINA LUIS MIGUEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710142, 'MORQUECHO GONZALEZ MARIA JOSE', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710143, 'NERY CAMACHO ITZEL AURORA', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710144, 'PADILLA AMARO ERICK', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710145, 'PARRA GARCIA VIRGINIA JANETH', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710146, 'PARTIDA CARDENAS RAMON ANTONIO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710147, 'PEREZ YARZABAL ANA SOFIA', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710148, 'PICAZO GALAN HUGO ALEJANDRO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710149, 'PONCE CHARLES EMILIANO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710150, 'QUIROZ GONZALEZ MARIA JOSE', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710151, 'RAMIREZ BAEZ JOHAN MAGDALENO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710152, 'RAMIREZ CARRILLO SEBASTIAN', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710153, 'REYES MUÑOZ ANA PAOLA', 'M', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710154, 'ROCHA MARTINEZ BRUNO ALEXANDER', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710155, 'RODRIGUEZ MUÑIZ JUAN FRANCISCO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710156, 'RUELAS RODRIGUEZ JOSE JAVIER', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710157, 'SANCHEZ GUEVARA RODRIGO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710158, 'SANCHEZ SANCHEZ RICARDO JOEL', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710159, 'TORRES LORES IAAN ARMANDO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710160, 'VARGAS AGUILAR EDWIN ALBERTO', 'H', '', '', 0, 0, 0),
('1D', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710161, 'ZUÑIGA SOLIS MARIANA FABIOLA', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710162, 'BERNAL CHAIRES GENESIS MIRANDA', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710163, 'CALDERON FONSECA SAMANTHA MAYBEN', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710164, 'CARDENAS RODRIGUEZ ROMINA ZOE', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710165, 'CASTILLO MEDINA ZOE CAMILA', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710166, 'CASTRO MANCHA DANIELA PATRICIA', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710167, 'DELGADO SALAZAR SERGIO RAFAEL', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710168, 'DIAZ SALAZAR CHRISTOPHER RAFAEL', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710169, 'DIMAS YADO DIEGO ALEJANDRO', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710170, 'GARCIA DIAZ FERNANDA', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710171, 'LUNA MONTOYA YAIMA IDAY', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710172, 'MENDEZ GUEVARA ANGEL DANIEL', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710173, 'MENDOZA QUINTANILLA IVANA NATHALI', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710174, 'MONTAÑO LOZANO MAXIMO HAZIEL', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710175, 'MONTERRUBIO LOPEZ JAYDAN', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710176, 'MUÑIZ MATA MATHIAS EDUARDO', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710177, 'ORTEGA RANGEL ERIKA ALEJANDRA', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710178, 'RODRIGUEZ ANDRADE JORGE JAIME', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710179, 'SALAZAR VALLEJO EDUARDO JASHID', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710180, 'ZAPATA GARZA ERIK ABDIEL', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710181, 'ZUÑIGA RIOS PEDRO EMMANUEL', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710182, 'HERNANDEZ CRESPO LUIS FELIPE', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710183, 'MARTINEZ LUNA DENIS', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710184, 'ROSAS GARCIA MARLON GILLARDIN SPENCER', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710185, 'URBINA CHAVEZ KATIA VALENTINA', 'M', '', '', 0, 0, 0),
('1C', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710186, 'RUIZ CERVANTES FRANCISCO JAVIER', 'H', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710187, 'ZAMORA GARZA MHERALY DONAJI', 'M', '', '', 0, 0, 0),
('1E', 'COMPONENTE BASICO Y PROPEDEUTICO', 24328052710188, 'ZUÑIGA GARZA ANA SOFIA', 'M', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citatorios`
--

CREATE TABLE `citatorios` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id` int(11) NOT NULL,
  `motivo` longtext NOT NULL,
  `fecha` date NOT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suspensiones`
--

CREATE TABLE `suspensiones` (
  `id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `citatorios`
--
ALTER TABLE `citatorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suspensiones`
--
ALTER TABLE `suspensiones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citatorios`
--
ALTER TABLE `citatorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suspensiones`
--
ALTER TABLE `suspensiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
