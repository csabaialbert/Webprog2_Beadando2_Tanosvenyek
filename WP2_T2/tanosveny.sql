-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 03:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanosveny`
--

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(10) UNSIGNED NOT NULL,
  `csaladi_nev` varchar(45) NOT NULL DEFAULT '',
  `utonev` varchar(45) NOT NULL DEFAULT '',
  `bejelentkezes` varchar(12) NOT NULL DEFAULT '',
  `jelszo` varchar(40) NOT NULL DEFAULT '',
  `jogosultsag` varchar(3) NOT NULL DEFAULT '_1_'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `utonev`, `bejelentkezes`, `jelszo`, `jogosultsag`) VALUES
(1, 'Rendszer', 'Admin', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '__1'),
(2, 'Családi_2', 'Utónév_2', 'Login2', '6cf8efacae19431476020c1e2ebd2d8acca8f5c0', '_1_'),
(14, 'valami', 'valaki', 'sdasd', '7e240de74fb1ed08fa08d38063f6a6a91462a815', '_1_'),
(5, 'valami', 'valaki', 'sdasd', '7e240de74fb1ed08fa08d38063f6a6a91462a815', '_1_'),
(6, 'Családi_6', 'Utónév_6', 'Login6', '7ca01f28594b1a06239b1d96fc716477d198470b', '_1_'),
(7, 'Családi_7', 'Utónév_7', 'Login7', '41ad7e5406d8f1af2deef2ade4753009976328f8', '_1_'),
(8, 'Családi_8', 'Utónév_8', 'Login8', '3a340fe3599746234ef89591e372d4dd8b590053', '_1_'),
(9, 'Családi_9', 'Utónév_9', 'Login9', 'c0298f7d314ecbc5651da5679a0a240833a88238', '_1_'),
(10, 'Családi_10', 'Utónév_10', 'Login10', 'a477427c183664b57f977661ac3167b64823f366', '_1_'),
(11, 'Csabai', 'Albert', 'csaalb', 'debf3f0b3c651227f4aec3d20a62e067f2458324', '__1'),
(13, 'Nagy', 'Ferenc', 'feri', '1a64c2e42185659d8c92b9f8457e812ae2b7833f', '_1_'),
(15, 'Várhegyi-Miłoś', 'Ádám', 'adamvm', '5b7fc0b67e26763a0e2db4e69fc62b0e72a15fde', '__1');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `url` varchar(30) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `szulo` varchar(30) NOT NULL,
  `jogosultsag` varchar(3) NOT NULL,
  `sorrend` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`url`, `nev`, `szulo`, `jogosultsag`, `sorrend`) VALUES
('admin', 'Admin', '', '001', 70),
('apiteszt', 'API teszt', 'restapi', '011', 21),
('belepes', 'Belépés', '', '100', 50),
('grafikon', 'Grafikon', '', '111', 40),
('kilepes', 'Kilépés', '', '011', 60),
('nyitolap', 'Nyitólap', '', '111', 10),
('pdfmaker', 'TCPDF', '', '111', 30),
('restapi', 'Rest API', '', '111', 20),
('tanosveny', 'Tanösvény', 'restapi', '011', 22);

-- --------------------------------------------------------

--
-- Table structure for table `np`
--

CREATE TABLE `np` (
  `id` int(2) NOT NULL,
  `nev` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np`
--

INSERT INTO `np` (`id`, `nev`) VALUES
(1, 'Aggteleki Nemzeti Park Igazgatóság'),
(2, 'Balaton-felvidéki Nemzeti Park Igazgatóság'),
(3, 'Bükki Nemzeti Park Igazgatóság'),
(4, 'Duna-Dráva Nemzeti Park Igazgatóság'),
(5, 'Duna-Ipoly Nemzeti Park Igazgatóság'),
(6, 'Fertő-Hanság Nemzeti Park Igazgatóság'),
(7, 'Hortobágyi Nemzeti Park Igazgatóság'),
(8, 'Kiskunsági Nemzeti Park Igazgatóság'),
(9, 'Körös-Maros Nemzeti Park Igazgatóság'),
(10, 'Őrségi Nemzeti Park Igazgatóság');

-- --------------------------------------------------------

--
-- Table structure for table `telepules`
--

CREATE TABLE `telepules` (
  `id` int(3) NOT NULL,
  `nev` varchar(16) DEFAULT NULL,
  `npid` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telepules`
--

INSERT INTO `telepules` (`id`, `nev`, `npid`) VALUES
(1, 'Abaliget', 4),
(2, 'Ágasegyháza', 8),
(3, 'Aggtelek', 1),
(4, 'Apaj', 8),
(5, 'Ásotthalom', 8),
(6, 'Babócsa', 4),
(7, 'Bakonybél', 2),
(8, 'Balatonederics', 2),
(9, 'Balatonmagyaród', 2),
(10, 'Barcs', 4),
(11, 'Bélapátfalva', 3),
(12, 'Berettyóújfalu', 7),
(13, 'Biharugra', 9),
(14, 'Budapest', 5),
(15, 'Bugac', 8),
(16, 'Bükkszentkereszt', 3),
(17, 'Cégénydányád', 7),
(18, 'Celldömölk', 10),
(19, 'Csáfordjánosfa', 6),
(20, 'Csákvár', 5),
(21, 'Császártöltés', 8),
(22, 'Cserépfalu', 3),
(23, 'Cserkút', 4),
(24, 'Csopak', 2),
(25, 'Dejtár', 5),
(26, 'Dévaványa', 9),
(27, 'Drégelypalánk', 5),
(28, 'Dunapataj', 8),
(29, 'Dunaremete', 6),
(30, 'Esztergom', 5),
(31, 'Farmos', 5),
(32, 'Felsőtárkány', 3),
(33, 'Fertőrákos', 6),
(34, 'Fót', 5),
(35, 'Fülöpháza', 8),
(36, 'Fülöpszállás', 8),
(37, 'Gánt', 5),
(38, 'Garadna', 3),
(39, 'Gyékényes', 4),
(40, 'Gyöngyös', 3),
(41, 'Győr', 6),
(42, 'Hollókő', 3),
(43, 'Hortobágy', 7),
(44, 'Ipolytarnóc', 3),
(45, 'Izsák', 8),
(46, 'Jósvafő', 1),
(47, 'Kaposvár', 4),
(48, 'Kecskemét', 8),
(49, 'Kékkút', 2),
(50, 'Kercaszomor', 10),
(51, 'Kisapáti', 2),
(52, 'Kisszentmárton', 4),
(53, 'Kölked', 4),
(54, 'Kőszeg', 10),
(55, 'Kunadacs', 8),
(56, 'Lakitelek', 8),
(57, 'Magyaregregy', 4),
(58, 'Magyarszombatfa', 10),
(59, 'Matty', 4),
(60, 'Miskolc', 3),
(61, 'Mohács', 4),
(62, 'Mórahalom', 8),
(63, 'Nagykovácsi', 5),
(64, 'Nagykőrös', 5),
(65, 'Óbánya', 4),
(66, 'Ócsa', 5),
(67, 'Old', 4),
(68, 'Orfű', 4),
(69, 'Orgovány', 8),
(70, 'Osli', 6),
(71, 'Őriszentpéter', 10),
(72, 'Őrtilos', 4),
(73, 'Paks', 4),
(74, 'Pálmonostora', 8),
(75, 'Pannonhalma', 6),
(76, 'Parád', 3),
(77, 'Pécs', 4),
(78, 'Perkupa', 1),
(79, 'Pilisszentiván', 5),
(80, 'Poroszló', 7),
(81, 'Pörböly', 4),
(82, 'Ravazd', 6),
(83, 'Salgótarján', 3),
(84, 'Sámsonháza', 3),
(85, 'Sarród', 6),
(86, 'Somlójenő', 2),
(87, 'Szabadkígyós', 9),
(88, 'Szalafő', 10),
(89, 'Szarvas', 9),
(90, 'Szarvaskő', 3),
(91, 'Szatymaz', 8),
(92, 'Szeghalom', 9),
(93, 'Szekszárd', 5),
(94, 'Szeremle', 4),
(95, 'Szigliget', 2),
(96, 'Szilvásvárad', 3),
(97, 'Szögliget', 1),
(98, 'Tarpa', 7),
(99, 'Tihany', 2),
(100, 'Tiszaalpár', 8),
(101, 'Tiszafüred', 7),
(102, 'Tiszalúc', 3),
(103, 'Tokaj', 1),
(104, 'Vámospércs', 7),
(105, 'Villány', 4),
(106, 'Vízvár', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ut`
--

CREATE TABLE `ut` (
  `id` int(3) NOT NULL,
  `nev` varchar(59) DEFAULT NULL,
  `hossz` decimal(4,2) DEFAULT NULL,
  `allomas` int(2) DEFAULT NULL,
  `ido` decimal(3,2) DEFAULT NULL,
  `vezetes` int(2) DEFAULT NULL,
  `telepulesid` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ut`
--

INSERT INTO `ut` (`id`, `nev`, `hossz`, `allomas`, `ido`, `vezetes`, `telepulesid`) VALUES
(1, 'Anna-ligeti tanösvény ', '2.00', 8, '1.50', -1, 89),
(2, 'Apródok útja tanösvény ', '7.20', 8, '3.00', -1, 27),
(3, 'Aqua Colun tanösvény ', '3.50', 5, '2.00', -1, 45),
(4, 'Árpád fejedelem tanösvény ', '3.00', 11, '2.00', -1, 100),
(5, 'Ártéri tanösvény ', '0.50', 4, '0.50', -1, 106),
(6, 'Babócsai Basa-kert tanösvény ', '1.00', 2, '1.00', -1, 6),
(7, 'Baradla tanösvény ', '7.50', 18, '3.00', -1, 3),
(8, 'Bárányfoki tanösvény ', '2.10', 6, '1.00', -1, 93),
(9, 'Báránypirosító tanösvény ', '1.60', 5, '1.60', -1, 35),
(10, 'Barát-réti tanösvény ', '6.50', 4, '3.00', -1, 32),
(11, 'Barcsi Borókás tanösvény ', '2.00', 4, '1.00', -1, 10),
(12, 'Bazaltorgonák tanösvény ', '4.00', 7, '2.00', -1, 51),
(13, 'Bél-kői tanösvény ', '5.00', 7, '2.50', -1, 11),
(14, 'Bihari-sík tanösvény ', '7.20', 20, '5.20', -1, 12),
(15, 'Bodrogzugi vízitúra tanösvény ', '5.00', 3, '2.00', 0, 103),
(16, 'Bódva-völgyi tanösvény ', '2.50', 7, '1.00', 0, 78),
(17, 'Boróka tanösvény ', '2.90', 5, '1.50', -1, 15),
(18, 'Boros-Dráva tanösvény ', '1.00', 2, '0.50', -1, 67),
(19, 'Boroszlán tanösvény ', '7.00', 8, '3.00', -1, 7),
(20, 'Boszorkány-kő geológiai tanösvény ', '0.40', 13, '0.50', -1, 83),
(21, 'Bőköz tanösvény ', '4.00', 6, '1.50', -1, 52),
(22, 'Bölömbika tanösvény ', '3.00', 6, '1.50', -1, 62),
(23, 'Búbos vöcsök tanösvény ', '1.50', 13, '1.50', 0, 9),
(24, 'Buda-hegyi tanösvény', '2.00', 8, '3.00', -1, 84),
(25, 'Cankó tanösvény ', '1.00', 9, '1.50', -1, 36),
(26, 'Cégénydányádi Kastélypark tanösvény ', '1.50', 19, '1.00', 0, 17),
(27, 'Chernel-kerti tanösvény ', '0.50', 0, '0.50', 0, 54),
(28, 'Cserépfalui Ördögtorony tanösvény ', '10.00', 20, '4.50', -1, 22),
(29, 'Csipak tanösvény ', '3.00', 9, '1.50', -1, 62),
(30, 'Csodarét tanösvény ', '4.00', 10, '2.00', -1, 5),
(31, 'Csomoros-sziget tanösvény ', '0.70', 10, '1.00', -1, 10),
(32, 'Csörgőalma tanösvény ', '0.00', 1, '0.50', -1, 71),
(33, 'Denevér tanösvény ', '5.00', 13, '3.00', -1, 1),
(34, 'Erdei tanösvény ', '2.70', 6, '2.00', -1, 15),
(35, 'Eresztvényi kőbányák ', '2.50', 6, '1.00', -1, 83),
(36, 'Erzsébet-sziget tanösvény ', '3.00', 2, '1.50', -1, 6),
(37, 'Fekete harkály tanösvény ', '5.00', 13, '3.00', -1, 47),
(38, 'Felsőszeri tanösvény ', '1.70', 6, '1.00', -1, 88),
(39, 'Fóti-Somlyó tanösvény ', '3.50', 11, '3.00', -1, 34),
(40, 'Földtani tanösvény ', '2.00', 13, '1.50', -1, 37),
(41, 'Fürge cselle tanösvény ', '3.20', 8, '1.50', -1, 50),
(42, 'Fürkész ösvény ', '2.00', 12, '1.50', -1, 46),
(43, 'Górési tanösvény ', '11.00', 5, '3.00', -1, 101),
(44, 'Halásztelki tanösvény ', '3.00', 10, '1.50', -1, 89),
(45, 'Hankovszky-liget tanösvény ', '0.35', 8, '0.50', -1, 48),
(46, 'Hany Istók tanösvény ', '5.00', 7, '2.00', 0, 70),
(47, 'Haraszt-hegyi tanösvény ', '3.50', 7, '3.00', -1, 20),
(48, 'Holt-Rába tanösvény ', '6.00', 5, '2.00', 0, 41),
(49, 'Ilona-völgyi geológiai tanösvény ', '6.50', 9, '2.50', -1, 76),
(50, 'Ipolytarnóc - Biológiai tanösvény ', '6.00', 13, '1.25', -1, 44),
(51, 'Ipolytarnóc - Borókás-árok geológiai tanösvény ', '0.80', 7, '1.00', -1, 44),
(52, 'Ipolytarnóc - Kőszikla tanösvény ', '0.90', 20, '1.50', -1, 44),
(53, 'Ipolytarnóc - Kőzetpark ', '0.70', 20, '0.50', -1, 44),
(54, 'Jági tanösvény ', '3.50', 6, '2.00', -1, 79),
(55, 'Jakab-hegyi tanösvény ', '8.00', 10, '2.00', -1, 23),
(56, 'Jávorkúti tanösvény ', '3.00', 4, '1.00', -1, 38),
(57, 'Jónásrészi tanösvény ', '5.00', 11, '3.00', -1, 104),
(58, 'Káli-medence túrahálózat ', '25.00', 79, '8.00', -1, 49),
(59, 'Kamon-kő tanösvény ', '6.00', 9, '3.00', -1, 95),
(60, 'Kékbegy tanösvény ', '0.21', 3, '0.50', -1, 31),
(61, 'Kékmoszat tanösvény ', '2.40', 12, '2.00', -1, 28),
(62, 'Kesznyéteni TK agrár-környezetgazdálkodási tanösvény ', '4.80', 6, '3.50', -1, 102),
(63, 'Kígyósi tanösvény ', '5.00', 4, '2.00', 0, 87),
(64, 'Kismély-völgyi tanösvény ', '1.00', 5, '1.00', -1, 77),
(65, 'Kisvátyoni tanösvény ', '8.00', 6, '3.00', 0, 13),
(66, 'Kitaibel tanösvény ', '3.00', 9, '2.00', -1, 86),
(67, 'Kontyvirág tanösvény ', '2.40', 6, '1.50', -1, 56),
(68, 'Kormorános-erdő tanösvény ', '2.00', 6, '0.50', -1, 59),
(69, 'Kosbor tanösvény ', '1.70', 5, '1.50', -1, 55),
(70, 'Kő-közi tanösvény ', '0.80', 5, '1.00', -1, 32),
(71, 'Kőpark tanösvény ', '0.20', 0, '0.50', -1, 14),
(72, 'Körtike tanösvény ', '6.20', 11, '2.50', -1, 88),
(73, 'Kövi benge tanösvény ', '0.30', 20, '1.00', 0, 33),
(74, 'Lóczy gejzír-sétaút ', '18.00', 15, '6.00', -1, 99),
(75, 'Madarak és fák útja ', '1.00', 5, '1.00', -1, 15),
(76, 'Madárvédelmi tanösvény ', '0.30', 8, '0.50', -1, 54),
(77, 'Mágor-pusztai tanösvény ', '0.50', 5, '1.50', 0, 92),
(78, 'Magyar-bányai kőpark ', '0.15', 13, '0.50', -1, 83),
(79, 'Mérus-erdő tanösvény ', '1.00', 1, '0.50', -1, 6),
(80, 'Millenniumi természetismereti és erdészeti bemutató sétaút ', '2.50', 20, '1.00', -1, 96),
(81, 'Nagymező - Kis-kőháti-zsomboly tanösvény ', '3.00', 3, '1.00', -1, 96),
(82, 'Nagypartosi tanösvény ', '2.50', 6, '1.00', -1, 53),
(83, 'Nagy-Szénás tanösvény ', '2.10', 7, '1.50', -1, 63),
(84, 'Nyéki-Holt-Duna tanösvény ', '2.20', 6, '1.00', -1, 81),
(85, 'Óbányai Pro Silva tanösvény ', '2.00', 5, '0.50', -1, 65),
(86, 'Olasz-kapui tanösvény ', '7.20', 6, '3.00', -1, 96),
(87, 'Orfűi Vízfő tanösvény ', '1.00', 4, '0.50', -1, 68),
(88, 'Öregtavi tanösvény ', '25.00', 18, '6.00', -1, 43),
(89, 'Őrtilosi Dráva-ártér tanösvény ', '2.00', 0, '0.75', -1, 72),
(90, 'Paksi Ürge-mező tanösvény ', '4.00', 11, '1.00', -1, 73),
(91, 'Pálfája tanösvény ', '1.80', 10, '1.50', -1, 64),
(92, 'Páskom legelő tanösvény ', '3.00', 6, '2.00', -1, 25),
(93, 'Pele apó ösvénye ', '8.50', 38, '5.00', -1, 8),
(94, 'Pele körút ', '0.80', 10, '1.00', -1, 24),
(95, 'Pimpó tanösvény ', '5.80', 6, '4.00', -1, 69),
(96, 'Poszáta tanösvény ', '2.00', 8, '1.50', -1, 45),
(97, 'Ravazd-Sokorópátkai tanösvény ', '15.00', 3, '3.00', 0, 82),
(98, 'Réce tanösvény ', '1.00', 5, '0.50', -1, 4),
(99, 'Réhelyi tanösvény ', '1.50', 8, '1.00', -1, 26),
(100, 'Rejtek - Répáshuta tanösvény ', '9.00', 12, '4.50', -1, 16),
(101, 'Rekettye tanösvény ', '2.30', 6, '2.00', -1, 2),
(102, 'Rezgőnyár tanösvény ', '0.30', 7, '0.50', -1, 71),
(103, 'Ság-hegy élővilága ', '0.20', 13, '0.20', -1, 18),
(104, 'Ság-hegyi geológiai tanösvény ', '1.00', 18, '0.50', -1, 18),
(105, 'Salgó - Somoskő vára tanösvény ', '3.50', 6, '1.00', -1, 83),
(106, 'Sárgaliliom tanösvény ', '6.20', 11, '2.50', -1, 58),
(107, 'Sár-hegyi természetismereti tanösvény ', '7.00', 12, '3.00', -1, 40),
(108, 'Sas-hegy tanösvény ', '0.85', 7, '1.00', -1, 14),
(109, 'Sáskajárás sétaút ', '0.80', 8, '1.00', -1, 15),
(110, 'Selyem-réti tanösvény ', '1.50', 6, '2.00', -1, 66),
(111, 'Sirály tanösvény ', '2.00', 5, '1.50', -1, 91),
(112, 'Sóvirág tanösvény ', '0.50', 0, '1.00', -1, 31),
(113, 'Sötét-völgyi tanösvény ', '4.30', 9, '2.00', -1, 93),
(114, 'Strázsa-hegyi tanösvény ', '1.20', 7, '1.50', -1, 30),
(115, 'Szádvár tanösvény ', '4.50', 12, '3.00', -1, 97),
(116, 'Szalajka-völgyi természetvédelmi bemutatóösvény ', '4.20', 10, '2.50', -1, 96),
(117, 'Szala menti tanösvény ', '3.80', 9, '1.50', -1, 71),
(118, 'Szálkahalmi tanösvény ', '1.10', 5, '1.00', -1, 43),
(119, 'Szarvaskői geológiai tanösvény ', '8.80', 11, '3.50', -1, 90),
(120, 'Szeremlei-Holt-Duna tanösvény ', '2.40', 6, '1.00', -1, 94),
(121, 'Szigetközi Ökoturisztikai Bemutató Útvonal ', '18.00', 12, '2.00', 0, 29),
(122, 'Sziki őszirózsa tanösvény ', '4.00', 10, '2.00', 0, 85),
(123, 'Szilvás-kői geológiai tanösvény ', '3.50', 12, '1.50', -1, 83),
(124, 'Szinva tanösvény ', '4.00', 6, '3.00', -1, 60),
(125, 'Szomoróczi tanösvény ', '3.00', 6, '1.00', -1, 50),
(126, 'Tanösvény a Turjánban ', '1.20', 9, '1.00', -1, 66),
(127, 'Tarpai Szőlő-hegy tanösvény ', '3.00', 6, '2.00', 0, 98),
(128, 'Templom-hegyi tanösvény ', '2.00', 6, '1.00', -1, 105),
(129, 'Pannonhalmi arborétum', '1.50', 3, '0.30', 0, 75),
(130, 'Tisza-tavi vízi sétány és tanösvény ', '1.50', 4, '2.00', -1, 80),
(131, 'Tohonya-Kuriszlán tanösvény II. útvonal ', '9.00', 25, '6.00', -1, 46),
(132, 'Tohonya-Kuriszlán tanösvény I. útvonal ', '4.50', 12, '2.50', -1, 46),
(133, 'Tőzike tanösvény ', '3.00', 5, '1.00', -1, 19),
(134, 'Tüskés-réti tanösvény ', '1.00', 4, '1.00', -1, 77),
(135, 'Újmohácsi tanösvény ', '3.10', 7, '1.00', -1, 61),
(136, 'Üde rétek tanösvény ', '3.00', 5, '2.00', -1, 10),
(137, 'Várdomb tanösvény ', '0.30', 6, '0.50', 0, 100),
(138, 'Vár-hegyi tanösvény ', '10.00', 6, '4.50', -1, 32),
(139, 'Vártúra ösvény ', '1.20', 0, '1.00', -1, 42),
(140, 'Vár-völgyi földtani tanösvény ', '3.00', 10, '1.00', -1, 57),
(141, 'Vasút-oldali túraútvonal ', '10.00', 1, '2.50', -1, 39),
(142, 'Vizi Rence Túraútvonal ', '6.00', 0, '3.00', -1, 33),
(143, 'Vöcsök tanösvény ', '3.20', 7, '2.50', -1, 74),
(144, 'Vörös-mocsár tanösvény ', '2.50', 2, '2.00', -1, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `np`
--
ALTER TABLE `np`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `telepules`
--
ALTER TABLE `telepules`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ut`
--
ALTER TABLE `ut`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
