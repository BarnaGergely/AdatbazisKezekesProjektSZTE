-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 03:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `dolgozo`
--

CREATE TABLE `dolgozo` (
  `szemelyiigazolvanyszam` int(32) NOT NULL,
  `beosztas` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `fizetes` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `dolgozo`
--

INSERT INTO `dolgozo` (`szemelyiigazolvanyszam`, `beosztas`, `fizetes`) VALUES
(2, 'Takarító', 437034),
(4, 'Takarító', 518966),
(5, 'Takarító', 368561),
(6, 'Takarító', 558890),
(7, 'Takarító', 156753),
(8, 'Takarító', 364929),
(9, 'Takarító', 301868),
(10, 'Takarító', 369447),
(11, 'Takarító', 287845),
(12, 'Marketinges', 264421),
(13, 'Marketinges', 583733),
(14, 'Marketinges', 519366),
(15, 'Marketinges', 140858),
(16, 'Marketinges', 580629),
(17, 'Szakács', 428014),
(18, 'Szakács', 434040),
(19, 'Szakács', 305187),
(20, 'Szakács', 100985),
(21, 'Manager', 419397),
(22, 'Manager', 471964),
(23, 'Manager', 301300),
(24, 'Naplopó', 312150),
(25, 'Naplopó', 169338),
(26, 'Naplopó', 397371);

-- --------------------------------------------------------

--
-- Table structure for table `ellenor`
--

CREATE TABLE `ellenor` (
  `szemelyiigazolvanyszam` int(32) NOT NULL,
  `ellenorallapota` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `leiras` text COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `ellenor`
--

INSERT INTO `ellenor` (`szemelyiigazolvanyszam`, `ellenorallapota`, `leiras`) VALUES
(8, 'Késik', 'Nem talált ide.'),
(9, 'Késik', NULL),
(10, 'Dühös', 'Arrogáns és minden apró részletbe bele kötő matektanár, aki imádja a jó sütiket.'),
(57, 'Itt van', NULL),
(61, 'Késik', NULL),
(77, 'Itt van', NULL),
(78, 'Dühös', 'Nem értékelte az úszás oktatással egybe kötött pióca kúránkat.');

-- --------------------------------------------------------

--
-- Table structure for table `foglalas`
--

CREATE TABLE `foglalas` (
  `foglalasszama` int(11) NOT NULL,
  `szobaszam` int(4) DEFAULT NULL,
  `foglalaskezdete` date DEFAULT NULL,
  `foglalasvege` date DEFAULT NULL,
  `foglalasallapota` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `foglaloszemely` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `foglalas`
--

INSERT INTO `foglalas` (`foglalasszama`, `szobaszam`, `foglalaskezdete`, `foglalasvege`, `foglalasallapota`, `foglaloszemely`) VALUES
(1, 1, '2022-11-01', '2022-11-03', 'Archív', 1234),
(2, 2, '2022-11-02', '2022-11-06', 'Archív', 74),
(3, 3, '2022-11-03', '2022-11-09', 'Archív', 73),
(4, 4, '2022-11-04', '2022-11-12', 'Törölt', 72),
(5, 5, '2022-11-05', '2022-11-15', 'Archív', 71),
(7, 7, '2022-11-07', '2022-11-21', 'Aktív', 66),
(8, 8, '2022-11-08', '2022-11-24', 'Aktív', 68),
(9, 9, '2022-11-19', '2022-11-27', 'Foglalva', 67),
(10, 10, '2022-11-20', '2022-11-30', 'Foglalva', 66);

-- --------------------------------------------------------

--
-- Table structure for table `kupon`
--

CREATE TABLE `kupon` (
  `lejaratidatum` date NOT NULL,
  `learazaserteke` int(2) NOT NULL,
  `tulajdonos` int(32) NOT NULL,
  `allapot` varchar(16) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `kupon`
--

INSERT INTO `kupon` (`lejaratidatum`, `learazaserteke`, `tulajdonos`, `allapot`) VALUES
('2022-11-11', 10, 7, 'Használt'),
('2022-12-11', 10, 60, 'Használt'),
('2022-12-12', 20, 60, 'Érvényes'),
('2022-12-13', 10, 61, 'Érvényes'),
('2022-12-14', 2, 62, 'Érvényes'),
('2022-12-15', 12, 63, 'Érvényes'),
('2022-12-16', 15, 64, 'Érvényes'),
('2022-12-17', 5, 65, 'Érvényes'),
('2022-12-18', 1, 50, 'Érvényes'),
('2022-12-18', 9, 50, 'Érvényes'),
('2022-12-18', 99, 50, 'Érvényes');

-- --------------------------------------------------------

--
-- Table structure for table `rang`
--

CREATE TABLE `rang` (
  `nev` text COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szemelyiigazolvanyszam` int(32) NOT NULL,
  `id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `rang`
--

INSERT INTO `rang` (`nev`, `szemelyiigazolvanyszam`, `id`) VALUES
('Főbérlő', 912, 2),
('Tizedes', 912, 3),
('Törzsvásárló', 2, 7),
('Tizedes', 2, 8),
('Törzsvásárló', 43, 14),
('Tizedes', 43, 15),
('Közlegény', 43, 16),
('Főbérlő', 4, 17),
('Törzsvásárló', 4, 18),
('Közlegény', 5, 21),
('Törzsvásárló', 6, 22),
('Tizedes', 6, 23),
('Közlegény', 6, 24),
('Törzsvásárló', 7, 32),
('Tizedes', 7, 33),
('Közlegény', 7, 34),
('Tizedes', 1, 35),
('Közlegény', 1, 36),
('Törzsvásárló', 8, 37),
('Tizedes', 8, 38),
('Közlegény', 8, 39),
('Közlegény', 9, 40),
('Közlegény', 10, 41),
('Közlegény', 11, 42);

-- --------------------------------------------------------

--
-- Table structure for table `szemely`
--

CREATE TABLE `szemely` (
  `keresztnev` varchar(128) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `vezeteknev` varchar(128) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szemelyallapota` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szemelyiigazolvanyszam` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `szemely`
--

INSERT INTO `szemely` (`keresztnev`, `vezeteknev`, `szemelyallapota`, `szemelyiigazolvanyszam`) VALUES
('Simon', 'Pop', 'Aktív', 1),
('Elek', 'Remek', 'Aktív', 2),
('Ella', 'Szalmon', 'Aktív', 4),
('Kolos', 'Techno', 'Aktív', 5),
('Antal', 'Trab', 'Aktív', 6),
('Viola', 'Ultra', 'Aktív', 7),
('Erika', 'Am', 'Aktív', 8),
('Ilus', 'Bac', 'Aktív', 9),
('Ella', 'Citad', 'Aktív', 10),
('Emma', 'Dil', 'Aktív', 11),
('Lenke', 'Eszte', 'Aktív', 12),
('Elek', 'Feles', 'Aktív', 13),
('Imre', 'Füty', 'Aktív', 14),
('Áron', 'Git', 'Aktív', 15),
('Mónika', 'Har', 'Aktív', 16),
('Réka', 'Heu', 'Aktív', 17),
('Jenő', 'Hü', 'Aktív', 18),
('Ica', 'Kukor', 'Aktív', 19),
('Pál', 'Kala', 'Aktív', 20),
('B. Ödön', 'Zsíros', 'Aktív', 21),
('Nóra', 'Külö', 'Aktív', 22),
('Ödön', 'Körm', 'Aktív', 23),
('Ede', 'Kér', 'Aktív', 24),
('Anna', 'Major', 'Aktív', 25),
('Győző', 'Meg', 'Aktív', 26),
('Cina', 'Vak', 'Aktív', 27),
('Eta', 'Veg', 'Aktív', 28),
('Dóra', 'Virra', 'Arhív', 29),
('Béla', 'Vég', 'Arhív', 30),
('Eszter', 'Wincs', 'Arhív', 31),
('Blanka', 'Kasza', 'Arhív', 32),
('Nóra', 'Kandisz', 'Arhív', 33),
('Inka', 'Kispál', 'Arhív', 34),
('Zoltán', 'Pofá', 'Arhív', 35),
('Piroska', 'Budipa', 'Arhív', 36),
('Aranka', 'Tank', 'Arhív', 37),
('Pál', 'Bekre', 'Arhív', 38),
('Imre', 'Cicz', 'Arhív', 39),
('Ella', 'Mortad', 'Arhív', 40),
('Pista', 'Trap', 'Arhív', 41),
('Lenke', 'Fejet', 'Arhív', 42),
('Emőke', 'Csecs', 'Arhív', 43),
('Zoltán', 'Fá', 'Arhív', 44),
('Áron', 'Minden', 'Arhív', 45),
('Csilla', 'Csin', 'Arhív', 46),
('Zsolt', 'Mor', 'Arhív', 47),
('Olga', 'Rabsz', 'Arhív', 48),
('Ábel', 'Koaxk', 'Arhív', 49),
('Ágnes', 'Patkóm', 'Arhív', 50),
('Anna', 'Locsolók', 'Passzív', 51),
('Ottó', 'Riz', 'Passzív', 52),
('Eszti', 'Nemer', 'Passzív', 53),
('Pál', 'Ne', 'Passzív', 54),
('Pál', 'Ka', 'Passzív', 55),
('Ágnes', 'Elektrom', 'Passzív', 56),
('Zóra', 'Hú', 'Passzív', 57),
('Zóra', 'Raj', 'Passzív', 58),
('Dóra', 'Dia', 'Passzív', 59),
('R. Ákos', 'Tüdő', 'Passzív', 60),
('Ödön', 'Tök', 'Passzív', 61),
('Dóra', 'Ria', 'Passzív', 62),
('Elek', 'Lev', 'Passzív', 63),
('Elek', 'Hot', 'Passzív', 64),
('Anna', 'Teásk', 'Passzív', 65),
('Áron', 'Bármi', 'Passzív', 66),
('Zoltán', 'Hugyo', 'Passzív', 67),
('Ica', 'Metall', 'Passzív', 68),
('Gina', 'Va', 'Passzív', 69),
('Lóránt', 'Csik', 'Passzív', 70),
('Balint', 'Masztur', 'Passzív', 71),
('Virág', 'Bor', 'Passzív', 72),
('Zóra', 'Ví', 'Passzív', 73),
('Zóra', 'Gá', 'Passzív', 74),
('Kálmán', 'Nyúl', 'Passzív', 75),
('Ilonka', 'Ipsz', 'Passzív', 76),
('Kálmán', 'Mikorka', 'Passzív', 77),
('Elek', 'Petting', 'Passzív', 78),
('Szilárd', 'Szikla', 'Passzív', 79),
('Elek', 'Ebéd', 'Passzív', 80),
('Pista', 'Zöld', 'Passzív', 911),
('Pista', 'Zöld', 'Passzív', 912),
('Réka', 'Nyomo', 'Aktív', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `szoba`
--

CREATE TABLE `szoba` (
  `szobaszam` int(4) NOT NULL,
  `nev` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `legutobbitakarito` int(32) DEFAULT NULL,
  `legutobbitakaritasidopontja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `szoba`
--

INSERT INTO `szoba` (`szobaszam`, `nev`, `legutobbitakarito`, `legutobbitakaritasidopontja`) VALUES
(1, 'Sötét lyuk', 5, '2022-09-28 06:30:00'),
(2, 'Tetotéri panorámás', 13, '2022-10-01 06:30:00'),
(3, 'H142-es', 5, '2022-10-01 06:30:00'),
(4, 'Mission control center', 5, '2022-10-01 06:30:00'),
(5, 'Satcom vezérloterem', 5, '2022-10-01 06:30:00'),
(7, 'Északi', 5, '2022-10-01 06:30:00'),
(8, 'Kiss Ilona szobálya', 15, '2022-11-03 09:51:00'),
(9, 'Folyosó vége', 5, '2022-11-04 09:51:00'),
(10, 'Folyosó közepe', 5, '2022-10-01 06:30:00'),
(11, 'Sárga', 23, '2022-11-06 09:51:00'),
(12, 'Mocsár zöld', 10, '2022-11-04 17:20:00'),
(13, 'Zöld', 5, '2022-11-06 09:52:00'),
(14, 'Lila', 4, '2022-11-20 09:51:00'),
(15, 'Déli 1 ágyas', 5, '2022-09-29 06:30:00'),
(16, 'Közepes lyuk', 15, '2022-11-07 09:51:00'),
(17, 'Nincs ablaka', 5, '2022-10-01 06:30:00'),
(18, 'Gyilkos szoba', 14, '2022-11-20 09:51:00'),
(19, 'Alaksor 1-es', 5, '2022-10-01 06:30:00'),
(20, 'Tetotéri lakosztály', 5, '2022-10-01 06:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dolgozo`
--
ALTER TABLE `dolgozo`
  ADD PRIMARY KEY (`szemelyiigazolvanyszam`);

--
-- Indexes for table `ellenor`
--
ALTER TABLE `ellenor`
  ADD PRIMARY KEY (`szemelyiigazolvanyszam`);

--
-- Indexes for table `foglalas`
--
ALTER TABLE `foglalas`
  ADD PRIMARY KEY (`foglalasszama`),
  ADD KEY `szobaszam` (`szobaszam`),
  ADD KEY `foglalas_ibfk_3` (`foglaloszemely`);

--
-- Indexes for table `kupon`
--
ALTER TABLE `kupon`
  ADD PRIMARY KEY (`lejaratidatum`,`learazaserteke`,`tulajdonos`),
  ADD KEY `tulajdonos` (`tulajdonos`);

--
-- Indexes for table `rang`
--
ALTER TABLE `rang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `szemelyiigazolvanyszam` (`szemelyiigazolvanyszam`);

--
-- Indexes for table `szemely`
--
ALTER TABLE `szemely`
  ADD PRIMARY KEY (`szemelyiigazolvanyszam`);

--
-- Indexes for table `szoba`
--
ALTER TABLE `szoba`
  ADD PRIMARY KEY (`szobaszam`),
  ADD KEY `szoba_ibfk_1` (`legutobbitakarito`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foglalas`
--
ALTER TABLE `foglalas`
  MODIFY `foglalasszama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rang`
--
ALTER TABLE `rang`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dolgozo`
--
ALTER TABLE `dolgozo`
  ADD CONSTRAINT `dolgozo_ibfk_1` FOREIGN KEY (`szemelyiigazolvanyszam`) REFERENCES `szemely` (`szemelyiIgazolvanySzam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ellenor`
--
ALTER TABLE `ellenor`
  ADD CONSTRAINT `ellenor_ibfk_1` FOREIGN KEY (`szemelyiigazolvanyszam`) REFERENCES `szemely` (`szemelyiIgazolvanySzam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foglalas`
--
ALTER TABLE `foglalas`
  ADD CONSTRAINT `foglalas_ibfk_2` FOREIGN KEY (`szobaszam`) REFERENCES `szoba` (`szobaszam`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foglalas_ibfk_3` FOREIGN KEY (`foglaloszemely`) REFERENCES `szemely` (`szemelyiIgazolvanySzam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kupon`
--
ALTER TABLE `kupon`
  ADD CONSTRAINT `kupon_ibfk_1` FOREIGN KEY (`tulajdonos`) REFERENCES `szemely` (`szemelyiIgazolvanySzam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rang`
--
ALTER TABLE `rang`
  ADD CONSTRAINT `rang_ibfk_1` FOREIGN KEY (`szemelyiigazolvanyszam`) REFERENCES `szemely` (`szemelyiIgazolvanySzam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `szoba`
--
ALTER TABLE `szoba`
  ADD CONSTRAINT `szoba_ibfk_1` FOREIGN KEY (`legutobbitakarito`) REFERENCES `dolgozo` (`szemelyiigazolvanyszam`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
