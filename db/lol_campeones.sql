-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2024 a las 15:32:30
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
-- Base de datos: `lol_campeones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeones`
--

CREATE TABLE `campeones` (
  `id_champion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `difficultad` int(11) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `campeones`
--

INSERT INTO `campeones` (`id_champion`, `nombre`, `rol`, `difficultad`, `image_url`) VALUES
(34, 'Aatrox', 'Luchador', 6, 'https://vignette.wikia.nocookie.net/leagueoflegends/images/6/67/Aatrox_OriginalCentered.jpg/revision/latest/scale-to-width-down/1215?cb=20180626200206'),
(36, 'Ahri', 'Mago / Asesino', 7, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Ahri_0.jpg'),
(47, 'Akali', 'Asesino', 8, 'https://th.bing.com/th/id/OIP.QKGRxIqmDvlQgh-GcJa0RAHaEK?rs=1&pid=ImgDetMain'),
(48, 'Akshan', 'Tirador / Asesino', 7, 'https://th.bing.com/th/id/OIP.WX7_a7EX0KSmlmL9yuprrQHaEK?rs=1&pid=ImgDetMain'),
(49, 'Alistar', 'Tanque / Soporte', 5, 'https://images2.minutemediacdn.com/image/upload/c_fill,w_1440,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/dataimagepngbase64iVBORw0KGgoAAAANSUhEUgAAAqwAAAGP-7c205e594181c6e4f3472fe5e4080f02.jpg'),
(51, 'Ambessa', 'Luchador / Asesino', 8, 'https://admin.esports.gg/wp-content/uploads/2024/10/Ambessa-0-1024x604.jpeg'),
(52, 'Amumu', 'Tanque / Asistencia', 4, 'https://th.bing.com/th/id/OIP.zfOKHoZM5PsshrXG5fnyEwHaEK?rs=1&pid=ImgDetMain'),
(53, 'Anivia', 'Mago', 7, 'https://th.bing.com/th/id/OIP.TBRQ7h_tbi0LHMhtiAE0ugHaEK?w=1215&h=683&rs=1&pid=ImgDetMain'),
(54, 'Annie', 'Mago / Asistencia', 5, 'https://th.bing.com/th/id/OIP.R8S51etnMtonX-tg9LXcGgHaEL?rs=1&pid=ImgDetMain'),
(55, 'Aphelios', 'Tirador', 9, 'https://th.bing.com/th/id/OIP.IsCmi74N-6SOXmlQHnsrQgHaEo?w=750&h=469&rs=1&pid=ImgDetMain'),
(57, 'Ashe', 'Tirador / Soporte', 5, 'https://th.bing.com/th/id/OIP.fpD65Z48tEZFgCMOX1dbJQHaEK?rs=1&pid=ImgDetMain'),
(58, 'Aurelion Sol', 'Mago', 8, 'https://th.bing.com/th/id/OIP.BGvywV5UJe-DuZzNS57nJwHaEK?rs=1&pid=ImgDetMain'),
(59, 'Aurora', 'Mago / Asesino', 7, 'https://th.bing.com/th/id/OIP.B4pKQ___-XY_J662bp9V2wHaEK?rs=1&pid=ImgDetMain'),
(60, 'Azir', 'Mago / Tirador', 9, 'https://th.bing.com/th/id/R.027cb5eb8267e9b2ef16950256d297d0?rik=5cYJzhSAmRHl9g&pid=ImgRaw&r=0'),
(61, 'Azir', 'Soporte / Mago', 8, 'https://i.pinimg.com/originals/07/70/80/07708020a66f08a6b34d781113734c2e.jpg'),
(62, 'Bel\'Veth', 'Luchador', 8, 'https://i.ytimg.com/vi/4IUV1b9HlL4/maxresdefault.jpg'),
(63, 'BlitzCrank', 'Tanque / Asistencia', 6, 'https://en.esportsku.com/wp-content/uploads/2020/11/Bliztcrank-450x300-1.jpg'),
(64, 'Brand', 'Mago / Asistencia', 6, 'https://th.bing.com/th/id/OIP.Jwmir2TmVdd_NieKhXB9wAAAAA?rs=1&pid=ImgDetMain'),
(65, 'Braum', 'Tanque / Asistencia', 5, 'https://th.bing.com/th/id/OIP.BCzGB3GNOXDB8en5YLJN6AHaEf?rs=1&pid=ImgDetMain'),
(67, 'Briar', 'Luchador / Asesino', 7, 'https://cdnb.artstation.com/p/assets/videos/images/066/757/087/large/vicente-vichopapa-bravo-maxresdefault.jpg?1693696132'),
(68, 'Caitlyn', 'Tirador', 4, 'https://cdnb.artstation.com/p/assets/images/images/031/473/453/large/aery-chi-cait-splash-resized.jpg?1634927194'),
(69, 'Camille', 'Luchador / Asesino', 8, 'https://i.ytimg.com/vi/8EXgkdOT8YM/maxresdefault.jpg'),
(70, 'Cassiopeia', 'Mago', 8, 'https://static.fandomspot.com/images/12/23726/00-featured-lol-original-cassiopeia-skin-splash-image.jpg'),
(71, 'Cho\'Gath', 'Tanque / Mago', 4, 'https://cdna.artstation.com/p/assets/images/images/001/455/142/large/sixmorevodka-studio-smv-league-of-legends-chogath-seventhpass.jpg?1446721395'),
(72, 'Corki', 'Tirador / MAgo', 5, 'https://th.bing.com/th/id/OIP.Oy5wignzogK-yBm7zY1GyAHaEK?rs=1&pid=ImgDetMain'),
(73, 'Darius', 'Luchador / Tanque', 5, 'https://www.pixelstalk.net/wp-content/uploads/2016/10/Darius-Wallpapers-HD.jpg'),
(74, 'Diana', 'Luchador / Asesino', 7, 'https://th.bing.com/th/id/R.b907871fd43963a7cf879e5b8fe1bd65?rik=wEhH2W%2fOsF2v0Q&riu=http%3a%2f%2fwww.tapetus.pl%2fobrazki%2fn%2f174896_league-of-legends-diana.jpg&ehk=0BbiFEkpQu73w%2fba5z0Km5%2bAEo9zci%2bYYe3BffSHZLM%3d&risl=&pid=ImgRaw&r=0'),
(75, 'Dr. Mundo', 'Tanque / Luchador', 3, 'https://th.bing.com/th/id/OIP.otgXx82gQOPdPb8r5ZgKSwHaEK?rs=1&pid=ImgDetMain'),
(76, 'Draven', 'Tirador', 10, 'https://puregaming.es/wp-content/uploads/2017/09/Draven.jpg'),
(77, 'Ekko', 'Asesino / Mago', 7, 'https://th.bing.com/th/id/OIP.0tORlHxXTenBsbeKQSljXgHaEK?rs=1&pid=ImgDetMain'),
(78, 'Elise', 'Asesino / Mago', 7, 'https://w0.peakpx.com/wallpaper/862/654/HD-wallpaper-spider-queen-queen-black-red-legs-spider-throne.jpg'),
(79, 'Evelynn', 'Asesino / Mago', 8, 'https://th.bing.com/th/id/OIP.ifM4TuhsgBpWSI79fQdsXwHaDg?w=550&h=260&rs=1&pid=ImgDetMain'),
(80, 'Ezreal', 'Tirador / Mago', 6, 'https://cdn.wallpaper.tn/large/League-Of-Legend-4K-Ezreal-Wallpaper-215547.jpg'),
(81, 'Fiddlesticks', 'Mago / Asistencia', 6, 'https://th.bing.com/th/id/OIP.H383Fbq9Ma0RIEa9EJJ8rAHaEK?rs=1&pid=ImgDetMain'),
(82, 'Fiora', 'Luchador / Asesino', 9, 'https://th.bing.com/th/id/OIP.sB8f7wMyKaeG3y-1MGFQVwHaEK?rs=1&pid=ImgDetMain'),
(83, 'Fizz', 'Asesino / Mago', 7, 'https://i.pinimg.com/736x/11/6d/98/116d98bb1e232736d0fc2df3f35910c1--splash-art-concept-art.jpg'),
(85, 'Galio', 'Tanque / Mago', 6, 'https://cdna.artstation.com/p/assets/images/images/005/159/806/large/victor-maury-victor-maury-galiothecolossus-forweb.jpg?1488926717'),
(86, 'Gangplank', 'Luchador', 7, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Gangplank_0.jpg'),
(87, 'Garen', 'Luchador / Tanque', 2, 'https://th.bing.com/th/id/OIP.zlywsu_kmKXJlx3EjQuvbgHaEK?rs=1&pid=ImgDetMain'),
(89, 'Gnar', 'Luchador / Tanque', 7, 'https://i.pinimg.com/originals/39/6e/21/396e2113e68eead14b5a51d84f976afc.jpg'),
(90, 'Gragas', 'Luchador / Mago', 6, 'https://i.pinimg.com/736x/b9/40/3a/b9403a07f0aeb333b33719aa912fc391.jpg'),
(91, 'Graves', 'Tirador', 6, 'https://th.bing.com/th/id/OIP.i7y7GuGl6SAqmlInRnfO-QHaEK?rs=1&pid=ImgDetMain'),
(92, 'Gwen', 'Luchador', 7, 'https://gameriv.com/wp-content/uploads/2021/03/gwen-splash.jpg'),
(94, 'Hecarim', 'Luchador / Tanque', 6, 'https://th.bing.com/th/id/R.8a672cecd1d19fb90869915d48139bdf?rik=LTtLcl6DtUoyMw&riu=http%3a%2f%2fddragon.leagueoflegends.com%2fcdn%2fimg%2fchampion%2fsplash%2fHecarim_0.jpg&ehk=EsopHoW%2b5lazErtd9bL7fZZ4UUaees2lSioDAdeAytM%3d&risl=&pid=ImgRaw&r=0'),
(95, 'Heimerdinger', 'Mago / Asistencia', 6, 'https://th.bing.com/th/id/OIP.IIh34MT08PJv7ijMoW4TsQHaEf?rs=1&pid=ImgDetMain'),
(96, 'Hwei', 'Mago / Asistencia', 8, 'https://th.bing.com/th/id/OIP.QJFSkB9MNNYxMYIB6a8WrwHaEK?rs=1&pid=ImgDetMain'),
(97, 'Illaoi', ' Luchador / Tanque', 8, 'https://th.bing.com/th/id/OIP.MvkUm80Ck0frxSMxN-8_9QHaEK?rs=1&pid=ImgDetMain'),
(98, 'Irelia', 'Luchador / Asesino', 5, 'https://th.bing.com/th/id/OIP.biXc6dOvD-8pjmK7F-fXDAHaFM?w=650&h=456&rs=1&pid=ImgDetMain'),
(99, 'Ivern', 'Asistencia / Mago', 6, 'https://th.bing.com/th/id/OIP.kvRpqrlAi2i-0cusj5L3_QHaEK?w=1200&h=675&rs=1&pid=ImgDetMain'),
(100, 'Janna', ' Asistencia / Mago', 4, 'https://th.bing.com/th/id/OIP.hwjPfkhUFmjWVPYS_ngGAAHaEK?rs=1&pid=ImgDetMain'),
(101, 'Jarvan IV', ' Luchador / Tanque', 5, 'https://th.bing.com/th/id/R.bbaea43f12236ec0286f1fd9d49aa446?rik=elJeNsKeavvzDQ&pid=ImgRaw&r=0'),
(102, 'Jax', 'Luchador', 5, 'https://th.bing.com/th/id/OIP.O7rSiQ9IDPlj99ZvGuhZNAHaEK?rs=1&pid=ImgDetMain'),
(103, 'Jayce', 'Tirador / Luchador', 8, 'https://th.bing.com/th/id/OIP.mzMucWW25w7k2NS-dJA0AAHaEK?rs=1&pid=ImgDetMain'),
(104, 'Jhin', 'Tirador / Mago', 7, 'https://th.bing.com/th/id/OIP.mOFBIBCbp4h7PAfvfC3PpwHaDf?w=913&h=430&rs=1&pid=ImgDetMain'),
(105, 'Jinx', 'Tirador', 4, 'https://i.ytimg.com/vi/5q5i8r8C9-o/maxresdefault.jpg'),
(106, 'K\'Sante', 'Tanque / Luchador', 8, 'https://th.bing.com/th/id/OIP.zGt_xXwtSK2E9BE-FQyiAgHaDi?rs=1&pid=ImgDetMain'),
(107, 'Kai\'Sa', 'Tirador / Mago', 6, 'https://cdnb.artstation.com/p/assets/images/images/010/905/753/large/chengwei-pan-1.jpg?1526875963'),
(108, 'Kalista', 'Tirador', 9, 'https://th.bing.com/th/id/OIP.ubM0ujcwF4zFOzPwONOsmwHaEK?rs=1&pid=ImgDetMain'),
(109, 'Karma', 'Mago / Asistencia', 5, 'https://th.bing.com/th/id/OIP.nFG1OECJ_YWy7axkEX_4uAHaEo?rs=1&pid=ImgDetMain'),
(110, 'Karthus', 'Mago', 7, 'https://th.bing.com/th/id/R.886a8903fd41bb59d69b4e3d4f747108?rik=2iIpr1XlFBA5Vg&riu=http%3a%2f%2fddragon.leagueoflegends.com%2fcdn%2fimg%2fchampion%2fsplash%2fKarthus_0.jpg&ehk=Y2DzpUR7XQrSrIKtExHsBcPUqo6710x2lGTUXhjK5KA%3d&risl=&pid=ImgRaw&r=0'),
(111, 'Kassadin', 'Mago / Asesino', 8, 'https://th.bing.com/th/id/OIP.yNCPJNvk-wct0HQs5kjCuQHaEK?rs=1&pid=ImgDetMain'),
(112, 'Katarina', 'Asesino / Mago', 8, 'https://th.bing.com/th/id/OIP.cRJz4l_paLhufoES3QPaUQHaEK?rs=1&pid=ImgDetMain'),
(113, 'Kayle', 'Mago / Tirador', 7, 'https://magazine.artstation.com/wp-content/uploads/2019/03/jessica-oyhenart-kayle-detail-1024x613.jpg'),
(118, 'Kennen', 'Mago', 6, 'https://th.bing.com/th/id/OIP.mDCkt-PCpk9HogDtgPuKQAHaEK?rs=1&pid=ImgDetMain'),
(119, 'Kha\'Zix', 'Asesino', 7, 'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Khazix_0.jpg'),
(120, 'Kindred', 'Tirador', 8, 'https://th.bing.com/th/id/OIP.Q_15vtrDZC4bFwLJ_LmgRwHaEb?rs=1&pid=ImgDetMain'),
(121, 'Kled', 'Luchador', 7, 'https://th.bing.com/th/id/OIP.bKcAUM2xZ1Ob2TbguQTU-gHaEK?rs=1&pid=ImgDetMain'),
(122, 'Kog\'Maw', 'Tirador / Mago', 5, 'https://th.bing.com/th/id/OIP.ih68qDfGGMuKh5qS_o_6KgHaEX?rs=1&pid=ImgDetMain'),
(123, 'LeBlanc', 'Asesino / Mago', 9, 'https://final-blade.com/wp-content/uploads/2022/07/LeBlancOriginalSkin.0-800x450-1.jpg'),
(124, 'Lee Sin', 'Luchador / Asesino', 9, 'https://th.bing.com/th/id/R.7b3d1d4b75239f9ce022a73f3c9bac3e?rik=XVFaqBHJv0uKTg&riu=http%3a%2f%2f4.bp.blogspot.com%2f-tT59WdP2kEQ%2fVCsD3q9z1RI%2fAAAAAAAAaGc%2fUp9bnK4kj1Q%2fs1600%2fLeeSin_Splash_0.jpg&ehk=1ilWChirw396V6I93DNCYSqPJXJaMHKeaOATxd2Rgh0%3d&ri'),
(125, 'Leona', 'Tanque / Asistencia', 3, 'https://4.bp.blogspot.com/-lNMxJ5pKkls/XT0CwXR8moI/AAAAAAAAJoY/VSxI8OPzHmUO-LJzP34sr74HrPIq4uPMQCLcBGAs/w914-h514-p-k-no-nu/leona-lol-splash-art-uhdpaper.com-4K-806-wp.thumbnail.jpg'),
(126, 'Lillia', 'Luchador / Mago', 7, 'https://motionbgs.com/media/4277/lillia-lol.jpg'),
(127, 'Kayn', 'Luchador / Asesino', 7, 'https://th.bing.com/th/id/OIP.pAmG2a3tVoP1gEklZzEGqAHaEK?rs=1&pid=ImgDetMain'),
(137, 'Lissandra', 'Mago', 6, 'https://th.bing.com/th/id/OIP.CiLIFsUnAogK4qfzeg7eRAHaEK?rs=1&pid=ImgDetMain'),
(138, 'Lucian', 'Tirador', 7, 'https://th.bing.com/th/id/OIP.7Jk9rds14YHE-6HYD85t-QHaEK?rs=1&pid=ImgDetMain'),
(139, 'Lulu', 'Soporte', 6, 'https://th.bing.com/th/id/OIP.TdYMSMfDHl3LStUttZH8EwHaEK?rs=1&pid=ImgDetMain'),
(140, 'Lux', 'Mago', 4, 'https://th.bing.com/th/id/OIP.VO9X0x0AyNwgfrjdmx1F_wHaEK?rs=1&pid=ImgDetMain'),
(141, 'Maestro Yi', 'Asesino', 4, 'https://th.bing.com/th/id/OIP.pXxY14Vcun4J7Cyso9aFrgHaEK?rs=1&pid=ImgDetMain'),
(142, 'Malphite', 'Tanque', 1, 'https://i.pinimg.com/originals/c6/22/e5/c622e56e16c01ecaa609e5b69c64780f.jpg'),
(143, 'Malzahar', 'Mago', 5, 'https://th.bing.com/th/id/OIP.5H6_icSpScfT7oh5KhlB6gHaFj?rs=1&pid=ImgDetMain'),
(144, 'Maokai', 'Tanque', 7, 'https://th.bing.com/th/id/OIP.d0ITOAEmNC0vn51-aw_SyQHaDx?w=624&h=318&rs=1&pid=ImgDetMain'),
(145, 'Milio', 'Soporte', 7, 'https://static.lag.vn/upload/news/23/03/07/LMHT-Tuong-Moi-Milio-02_LZDV.jpg?w=800&encoder=wic&subsampling=444'),
(146, 'Miss Fortune', 'Tirador', 2, 'https://th.bing.com/th/id/R.03d9f78094f156a84d5f5c9dde78068a?rik=ohAPv1w4JsTCHA&pid=ImgRaw&r=0'),
(147, 'Mordekaiser', 'Luchador', 3, 'https://th.bing.com/th/id/OIP.4uGehAYWTk7236OCLbh_xAHaEo?rs=1&pid=ImgDetMain'),
(148, 'Morgana', 'Soporte', 6, 'https://i.ytimg.com/vi/XDdDr03XeMg/maxresdefault.jpg'),
(149, 'Naafiri', 'Asesino', 7, 'https://th.bing.com/th/id/OIP.-24Toe10cW9_vwKr_PgU1wHaEK?rs=1&pid=ImgDetMain'),
(150, 'Nami', 'Soporte', 6, 'https://th.bing.com/th/id/OIP.XB0E_Pp090sVKDgCEMFsigHaEK?rs=1&pid=ImgDetMain'),
(151, 'Nasus', 'Tanque', 2, 'https://th.bing.com/th/id/OIP.gi09K0zpSzfR9VjYIbqbjQHaEK?rs=1&pid=ImgDetMain'),
(152, 'Nautilus', 'Tanque', 6, 'https://th.bing.com/th/id/OIP.n62tQrg0UUqDEDqmDtgAuwHaEX?rs=1&pid=ImgDetMain'),
(153, 'Neeko', 'Mago', 5, 'https://codigoesports.com/wp-content/uploads/2019/03/neeko-1-768x432.jpg'),
(154, 'Nidalee', 'Asesino', 7, 'https://th.bing.com/th/id/R.3f2c1a772908593a492dc7c35a0a82f9?rik=mcVcZ0pJ71ftIQ&riu=http%3a%2f%2fwww.mobafire.com%2fimages%2fchampion%2fskins%2flandscape%2fnidalee-classic.jpg&ehk=c8ObSrMde6KKMENqHADDtyeqPsZ%2fYAF5GdY7cPGgBI4%3d&risl=&pid=ImgRaw&r=0'),
(155, 'Nilah', 'Tirador', 9, 'https://th.bing.com/th/id/OIP.aEgmNXVgItYUImkxwpJNxQHaEK?w=1024&h=576&rs=1&pid=ImgDetMain'),
(156, 'Nocturne', 'Asesino', 6, 'https://th.bing.com/th/id/R.42cfaacee6255342b3423b844d2ab559?rik=65vsksOwkVikWA&riu=http%3a%2f%2fddragon.leagueoflegends.com%2fcdn%2fimg%2fchampion%2fsplash%2fNocturne_0.jpg&ehk=YHn0ZdknRa3XfcMyZi5JieIjSno2WVfZfJygIpStpuo%3d&risl=&pid=ImgRaw&r=0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invocador`
--

CREATE TABLE `invocador` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `nombre_de_invocador` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `invocador`
--

INSERT INTO `invocador` (`id_usuario`, `nombre`, `apellido`, `nombre_de_invocador`, `password`) VALUES
(1, 'Emanuel', 'Rojas Cruz', 'Smile', '$2y$10$7cT8uohsdutJPhlxAQzao.cF0oytIIujVZeNNgDW1WJBtL4bPiLsG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id_item` int(11) NOT NULL,
  `nombre_item` varchar(200) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id_item`, `nombre_item`, `tipo`, `precio`, `descripcion`, `imagen_url`) VALUES
(88, 'Espada de Doran', 'Arma', 450, 'Una espada básica con algo de vida y daño. Ideal para el inicio.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/1055.png'),
(89, 'Escudo de Doran', 'Armadura', 450, 'Un escudo que otorga vida adicional y resistencia mágica.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/1054.png'),
(90, 'Capa de Fuego Solar', 'Armadura', 2800, 'Proporciona gran daño de área al enemigo cerca.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3026.png'),
(91, 'Guerrero de Kraken', 'Arma', 3300, 'Aumenta la velocidad de ataque y daño en área a los enemigos.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/6673.png'),
(92, 'Cañón de Fuego Rápido', 'Arma', 3000, 'Aumenta significativamente la velocidad de ataque.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3046.png'),
(93, 'Báculo del Vacío', 'Magia', 3000, 'Aumenta el poder de habilidad y mejora los hechizos.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3165.png'),
(94, 'Fuerza de la Trinidad', 'Arma', 3400, 'Incrementa el daño y la velocidad de ataque, ideal para campeones cuerpo a cuerpo.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3078.png'),
(96, 'Manto de la Noche', 'Armadura', 2900, 'Bloquea habilidades enemigas y otorga poder de ataque.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3156.png'),
(97, 'Sombrero de Rabadon', 'Magia', 3800, 'Aumenta el poder de habilidad de manera significativa.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3089.png'),
(99, 'Filoscuro', 'Arma', 3300, 'Aumenta el daño crítico y la velocidad de ataque.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/6676.png'),
(100, 'Gargantilla del Crepúsculo', 'Armadura', 2600, 'Ofrece defensa y regeneración de salud a lo largo del tiempo.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3075.png'),
(101, 'Cloak of Agility', 'Armadura', 2700, 'Proporciona velocidad de movimiento y mayor agilidad en el combate.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3091.png'),
(102, 'Filo Infinito', 'Arma', 3400, 'Aumenta enormemente el daño crítico de un campeón.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3031.png'),
(103, 'Cloak of Shadows', 'Armadura', 2300, 'Permite invisibilidad durante un corto periodo de tiempo.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3143.png'),
(105, 'Sombra del Asesino', 'Armadura', 3100, 'Ideal para campeones asesinos, otorga poder y resistencia.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3142.png'),
(106, 'Desgarrador Divino', 'Arma', 3200, 'Otorga daño físico y penetración en la armadura de los enemigos.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/6632.png'),
(107, 'Cloak of Ages', 'Magia', 3300, 'Recupera maná y mejora las habilidades de daño.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3082.png'),
(108, 'Corona de la Reina', 'Magia', 2900, 'Aumenta el poder mágico y proporciona una bonificación a la velocidad de movimiento.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3003.png'),
(109, 'Espada de la Tormenta', 'Arma', 3000, 'Aumenta el daño físico y la velocidad de ataque al recibir daño.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3086.png'),
(110, 'Bastón de Poder', 'Magia', 2200, 'Mejora el poder de habilidad y proporciona velocidad de hechizos.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3020.png'),
(111, 'Alma de la Serpiente', 'Armadura', 2500, 'Otorga daño adicional y reduce el daño recibido por las habilidades enemigas.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3179.png'),
(112, 'Espada del Rey Arruinado', 'Arma', 3200, 'Daño físico con la capacidad de robar vida a los enemigos.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3153.png'),
(113, 'Fervor de la Batalla', 'Armadura', 3000, 'Aumenta el poder de ataque y la velocidad de movimiento en combate.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3095.png'),
(114, 'Puño de la Justicia', 'Armadura', 3100, 'Aumenta la resistencia y la defensa física en un combate cerrado.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3026.png'),
(115, 'Cloak of the Templar', 'Armadura', 2700, 'Proporciona defensa mágica y más resistencia al daño.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3155.png'),
(117, 'Fuerza Ciega', 'Arma', 3400, 'Incrementa la penetración en armaduras y el daño a largo alcance.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3139.png'),
(120, 'Espada de los Dioses', 'Arma', 3500, 'La espada más poderosa, otorga un enorme daño físico.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3124.png'),
(121, 'Garras del Lobo', 'Arma', 2700, 'Aumenta la velocidad de ataque y las habilidades pasivas.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3140.png'),
(124, 'Fuego de Lich', 'Magia', 3300, 'El fuego mágico aumenta el poder de habilidades y permite ataques más rápidos.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3152.png'),
(125, 'Corona Eterna', 'Magia', 3400, 'Aumenta el poder mágico y la regeneración de maná a gran escala.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3145.png'),
(126, 'Báculo de Archángel', 'Magia', 3000, 'Aumenta la regeneración de maná y el poder de habilidad al acumular poder.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3004.png'),
(127, 'Guantes de Bronce', 'Armadura', 2600, 'Aumenta la velocidad de ataque y otorga resistencia física.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3070.png'),
(128, 'Barrera Mágica', 'Magia', 3300, 'Proporciona un escudo contra daño y otorga velocidad de hechizos.', 'https://ddragon.leagueoflegends.com/cdn/12.23.1/img/item/3190.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id_region` int(11) NOT NULL,
  `nombre_region` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id_region`, `nombre_region`, `descripcion`, `imagen_url`) VALUES
(1, 'Aguasturbias', 'Aguasturbias es una ciudad portuaria muy particular enclavada en el archipiélago de las Islas de la Llama Azul. Alberga cazadores de serpientes, bandas portuarias y contrabandistas de todas partes del mundo. Aquí se puede hacer una fortuna en un instante, y los sueños de cualquiera pueden quedar hechos añicos con la misma rapidez.', 'https://th.bing.com/th/id/R.a66ba8a3cba885adbdf838623348a7d1?rik=V0huqnfnGhRLDg&riu=http%3a%2f%2flolstatic-a.akamaihd.net%2fsite%2fbilgewater%2f1d0e96db6bd69523cf508365e1042f93171e3deb%2fimg%2fact-1%2fact-1-world-layer-middleground.jpg&ehk=4gYIGXa9d9ydrk0xQlYSjvfT4BWZzhpMA2Izv7UI37M%3d&risl=&pid=ImgRaw&r=0'),
(2, 'Ciudad de Bandle', 'Hay muchas opiniones contradictorias sobre dónde se sitúa el hogar de los yordles, aunque son solo unos pocos mortales los que aseguran haber cruzado los senderos invisibles que conducen a una tierra de un misticismo peculiar más allá del reino material. Se habla de un lugar donde la magia es libre, donde los imprudentes pueden ser tentados por una miríada de maravillas, y quedar atrapados en un sueño...\r\n', 'https://th.bing.com/th/id/R.5d4548f180ec647915651c224617a334?rik=pcn3liFZ5fZEUw&riu=http%3a%2f%2fpm1.aminoapps.com%2f8715%2fa7a8f4b61e9fb3ee40d1adc2b5e4a20b5182de34r1-720-360v2_uhq.jpg&ehk=aTMknCEl9NqcH6Us9EJ5%2bNgmYoiFiavfnlPs2YlG%2brA%3d&risl=&pid=ImgRaw&r=0'),
(3, 'Demacia ', 'Demacia es un reino poderoso y honesto con una prestigiosa historia militar, y su gente siempre ha valorado profundamente los ideales de justicia, honor y deber, que coexisten con un feroz orgullo patriota. A pesar de sus principios nobles, esta nación autosuficiente se ha ido aislando cada vez más con el paso de los siglos.', 'https://th.bing.com/th/id/OIP.tgIWHDaG56kCqgPIUljgcAHaDa?rs=1&pid=ImgDetMain'),
(4, 'El Vacío', 'Comenzando a gritos su existencia junto al nacimiento del universo, el Vacío es una manifestación de la nada incognoscible que habita más allá. Es una fuerza de hambre insaciable que espera durante eones hasta que sus maestros, los misteriosos Vigilantes, marquen el momento de la destrucción definitiva.\r\n', 'https://static1-br.millenium.gg/articles/8/97/18/@/119094-todavia-se-desconoce-como-ser-la-campeona-aunque-someter-a-los-campeones-parece-una-mecanica-unica-interesante-article_m-1.jpg'),
(5, 'Freljord', 'Freljord es un lugar duro e implacable en el que la gente nace lista para luchar por la supervivencia contra todo pronóstico.\r\n\r\nLas tribus de Freljord hacen gala de un orgullo y una independencia feroces, aunque sus vecinos de Valoran suelen considerarlos salvajes, brutos e incluso primitivos, dado que desconocen las tradiciones ancestrales que los moldearon. ', 'https://th.bing.com/th/id/R.2dd6c9daffb472135cda55d69de8c821?rik=2fmuWq1cYhASng&pid=ImgRaw&r=0'),
(6, 'Islas de la Sombra', 'Hubo una época en la que estas tierras acogieron a una civilización noble y cultivada conocida por sus aliados y emisarios como las Islas Bendecidas. Sin embargo, hace más de mil años, un cataclismo mágico sin precedentes hizo añicos la barrera que protegía el reino material del espiritual y lo convirtió en uno solo... lo que condenó a todos los seres vivos al instante.\r\n\r\n', 'https://vignette.wikia.nocookie.net/leagueoflegends/images/a/a4/Harrowing-story-header.jpg/revision/latest?cb=20160507203115&path-prefix=es'),
(7, 'Ixtal', 'Famosa por su domino de la magia elemental, Ixtal fue una de las primeras naciones independientes en unirse al imperio de Shurima. En realidad, la cultura de Ixtal es mucho más antigua, pues formó parte de la gran diáspora occidental a partir de la cual se alzaron numerosas civilizaciones, entre las que figuran los Buhru, la magnífica ciudad de Helia y los ascetas de Targon. También se considera que desempeñó un papel importante en la creación de los primeros Ascendidos.\r\n\r\n', 'https://th.bing.com/th/id/OIP.4pMxJaW-rRlH_J9fEJepugHaEK?rs=1&pid=ImgDetMain'),
(8, 'Jonia', 'Jonia, rodeada por traicioneros mares, está formada por una serie de provincias aliadas desperdigadas a lo largo y ancho de un inmenso archipiélago que muchos conocen como las Tierras Primigenias. El equilibrio es una de las piedras angulares de la cultura jonia, por lo que los límites que separan el mundo material del espiritual son aquí más difusos que en el resto de Runaterra, especialmente en las profundidades de sus bosques y lo alto de sus cumbres.', 'https://th.bing.com/th/id/R.adfd59c66c1cb5b1bdc5997864ac196b?rik=Q50SKo53j%2b0umQ&riu=http%3a%2f%2fpm1.aminoapps.com%2f8716%2fc269e0fd2c823fe2f2ada7394b5cc79de61b0c49r1-640-320v2_uhq.jpg&ehk=cD6tzCg8UobOPCjW5tTCpN9kXkCRHU8j3AxT5xeITmk%3d&risl=&pid=ImgRaw&r=0'),
(9, 'Noxus', 'Noxus es un poderoso imperio con una reputación aterradora. Para quienes no se encuentran en el interior de sus fronteras, Noxus es una civilización amenazante cuya expansión no se detiene. Quienes miran más allá de su exterior militarizado descubren una sociedad sorprendentemente inclusiva que respeta y cultiva la fuerza y el talento de sus habitantes.', 'https://cdn.suwalls.com/wallpapers/games/noxus-league-of-legends-41768-1920x1200.jpg'),
(10, 'Piltover', 'Piltover es una ciudad progresista, con un poder e influencia en auge. Es el centro cultural de Valoran y el arte, la artesanía, el comercio y la innovación siempre van de la mano. Su poder no es de carácter militar, sino comercial y emprendedor. Situado en los acantilados que lo separan de Zaun por el océano, Piltover acoge a flotas enteras de barcos mercantiles que cruzan las gigantes puertas marítimas para traer bienes provenientes del resto del mundo.', 'https://static1.thegamerimages.com/wordpress/wp-content/uploads/2022/01/lol-piltover-heimer-Cropped.png'),
(11, 'Zaun', 'Zaun es un distrito suburbano que yace en los valles y cañones que conectan con Piltover. La poca luz que llega lo hace filtrada a través del humo generado en una maraña de tuberías, pues Zaun destaca por su arquitectura gris e industrial. En el pasado Zaun y Piltover estaban unidos. A pesar de que ahora están separadas, ambas sociedades mantienen una relación simbiótica.', 'https://th.bing.com/th/id/R.1bc24c15b3614b7235e238bccbd89543?rik=elY3sYuwaRXU7g&riu=http%3a%2f%2flol-stats.net%2fuploads%2fUVZ7Opa6hOkBDbmjKYGgfNQ1ET13DERdmYW9IpJz.jpeg&ehk=NJs6BfWWlMSHVo%2fYhXa29eRJIzFIZcI51ULscAx0BWE%3d&risl=&pid=ImgRaw&r=0'),
(12, 'Shurima', 'El imperio de Shurima fue una próspera civilización que recubría todo un continente. Los poderosos dioses guerreros de la Hueste Ascendida fueron los encargados de fraguarlo, y reunían a las poblaciones dispares del sur obligándolas a convivir en paz.\r\n\r\nMuy pocos osaron rebelarse. Los que lo hicieron, como la nación maldita de Icathia, fueron aniquilados sin piedad alguna......', 'https://cdnb.artstation.com/p/assets/images/images/013/642/473/large/charlie-tran-shurima.jpg?1540535666'),
(13, 'Targon', 'El monte Targon es el mayor pico de Runaterra, una montaña de roca erosionada por el sol entre un grupo de montañas que sobrepasan en altura a todos los demás occidentes geográficos del planeta. Lejos de la civilización, la ubicación del monte Targon es remota e imposible de encontrar para todos salvo para los buscadores con más determinación.', 'https://nexus.leagueoflegends.com/wp-content/uploads/2017/11/LOL_CMS_150_Social_1200_ssy33jimflfs1bx5k8ru.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campeones`
--
ALTER TABLE `campeones`
  ADD PRIMARY KEY (`id_champion`);

--
-- Indices de la tabla `invocador`
--
ALTER TABLE `invocador`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id_region`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campeones`
--
ALTER TABLE `campeones`
  MODIFY `id_champion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `invocador`
--
ALTER TABLE `invocador`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id_region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
