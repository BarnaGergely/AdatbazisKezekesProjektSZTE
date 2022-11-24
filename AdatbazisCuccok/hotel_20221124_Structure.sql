SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `dolgozo` (
  `szemelyiigazolvanyszam` int(32) NOT NULL,
  `beosztas` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `fizetes` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `ellenor` (
  `szemelyiigazolvanyszam` int(32) NOT NULL,
  `ellenorallapota` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `leiras` text COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `foglalas` (
  `foglalasszama` int(11) NOT NULL,
  `szobaszam` int(4) DEFAULT NULL,
  `foglalaskezdete` date DEFAULT NULL,
  `foglalasvege` date DEFAULT NULL,
  `foglalasallapota` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `foglaloszemely` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `kupon` (
  `lejaratidatum` date NOT NULL,
  `learazaserteke` int(2) NOT NULL,
  `tulajdonos` int(32) NOT NULL,
  `allapot` varchar(16) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `rang` (
  `nev` varchar(32) COLLATE utf8_hungarian_ci NOT NULL,
  `szemelyiigazolvanyszam` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `szemely` (
  `keresztnev` varchar(128) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `vezeteknev` varchar(128) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szemelyallapota` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szemelyiigazolvanyszam` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `szoba` (
  `szobaszam` int(4) NOT NULL,
  `nev` varchar(32) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `legutobbitakarito` int(32) DEFAULT NULL,
  `legutobbitakaritasidopontja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


ALTER TABLE `dolgozo`
  ADD PRIMARY KEY (`szemelyiigazolvanyszam`);

ALTER TABLE `ellenor`
  ADD PRIMARY KEY (`szemelyiigazolvanyszam`);

ALTER TABLE `foglalas`
  ADD PRIMARY KEY (`foglalasszama`),
  ADD KEY `szobaFoglal` (`szobaszam`),
  ADD KEY `szemelyFoglal` (`foglaloszemely`);

ALTER TABLE `kupon`
  ADD PRIMARY KEY (`lejaratidatum`,`learazaserteke`,`tulajdonos`),
  ADD KEY `kuponBirtokol` (`tulajdonos`);

ALTER TABLE `rang`
  ADD PRIMARY KEY (`nev`,`szemelyiigazolvanyszam`) USING BTREE,
  ADD KEY `rangjaVan` (`szemelyiigazolvanyszam`);

ALTER TABLE `szemely`
  ADD PRIMARY KEY (`szemelyiigazolvanyszam`);

ALTER TABLE `szoba`
  ADD PRIMARY KEY (`szobaszam`),
  ADD KEY `takarit` (`legutobbitakarito`);


ALTER TABLE `foglalas`
  MODIFY `foglalasszama` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `dolgozo`
  ADD CONSTRAINT `Dolgozo_bovit` FOREIGN KEY (`szemelyiigazolvanyszam`) REFERENCES `szemely` (`szemelyiigazolvanyszam`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `ellenor`
  ADD CONSTRAINT `ellenorBovit` FOREIGN KEY (`szemelyiigazolvanyszam`) REFERENCES `szemely` (`szemelyiigazolvanyszam`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `foglalas`
  ADD CONSTRAINT `szemelyFoglal` FOREIGN KEY (`foglaloszemely`) REFERENCES `szemely` (`szemelyiigazolvanyszam`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `szobaFoglal` FOREIGN KEY (`szobaszam`) REFERENCES `szoba` (`szobaszam`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `kupon`
  ADD CONSTRAINT `kuponBirtokol` FOREIGN KEY (`tulajdonos`) REFERENCES `szemely` (`szemelyiigazolvanyszam`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `rang`
  ADD CONSTRAINT `rangjaVan` FOREIGN KEY (`szemelyiigazolvanyszam`) REFERENCES `szemely` (`szemelyiigazolvanyszam`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `szoba`
  ADD CONSTRAINT `takarit` FOREIGN KEY (`legutobbitakarito`) REFERENCES `dolgozo` (`szemelyiigazolvanyszam`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
