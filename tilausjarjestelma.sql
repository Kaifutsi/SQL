-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 05:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tilausjarjestelma`
--

-- --------------------------------------------------------

--
-- Table structure for table `asiakas`
--

CREATE TABLE `asiakas` (
  `ASIAKASNUMERO` int(20) NOT NULL,
  `ASIAKKAAKSITULOPAIVA` varchar(20) NOT NULL,
  `YRITYS` varchar(20) NOT NULL,
  `ETUNIMI` varchar(20) NOT NULL,
  `SUKUNIMI` varchar(20) NOT NULL,
  `KATUOSOITE` varchar(20) NOT NULL,
  `POSTINUMERO` varchar(20) NOT NULL,
  `POSTITOIMIPAIKKA` varchar(20) NOT NULL,
  `PUHELIN` varchar(20) NOT NULL,
  `EMAIL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asiakas`
--

INSERT INTO `asiakas` (`ASIAKASNUMERO`, `ASIAKKAAKSITULOPAIVA`, `YRITYS`, `ETUNIMI`, `SUKUNIMI`, `KATUOSOITE`, `POSTINUMERO`, `POSTITOIMIPAIKKA`, `PUHELIN`, `EMAIL`) VALUES
(1, '2010-11-12', 'Jukka Oy', 'Jukka', 'Kukkonen', 'Haapaniementie 3', '80770', 'KUOPIO', '0402113421', 'jukka.kukkonen@hotma'),
(2, '2011-08-12', 'Jukka 2 Oy', 'Jukka', 'Kukkonen', 'Lasitie 3', '80130', 'JOENSUU', '0503454422', 'kimmo.kukkonen@hotma'),
(3, '2010-03-04', 'Teemu Oy', 'Teemu', 'Heikkinen', 'Kellopolku 3', '80130', 'JOENSUU', '050786821', 'teemu.heikkinen@hotm'),
(4, '2011-02-02', 'Tiina Ky', 'Tiina', 'Heikkinen', 'Kellopolku 3', '80130', 'JOENSUU', '050788812', 'tiina.heikkinen@yaho'),
(5, '2011-05-04', 'Leena Oy', 'Leena', 'Turunen', 'Käsityökuja 3', '80130', 'JOENSUU', '044567123', 'leena.turunen@gmail.'),
(6, '2009-05-04', 'Harrin Asennus Ky', 'Harri', 'Heikkinen', 'Asennuskatu 23', '80100', 'JOENSUU', '0405234123', 'harri.turunen@gmail.');

-- --------------------------------------------------------

--
-- Table structure for table `tilaus`
--

CREATE TABLE `tilaus` (
  `TILAUSNUMERO` int(20) NOT NULL,
  `ASIAKASNUMERO` int(20) NOT NULL,
  `TILAUSPAIVA` date NOT NULL,
  `TOIMITUSPAIVA` date NOT NULL,
  `ERAPAIVA` date NOT NULL,
  `MAKSUTAPA` varchar(20) NOT NULL,
  `LISATIETOJA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tilaus`
--

INSERT INTO `tilaus` (`TILAUSNUMERO`, `ASIAKASNUMERO`, `TILAUSPAIVA`, `TOIMITUSPAIVA`, `ERAPAIVA`, `MAKSUTAPA`, `LISATIETOJA`) VALUES
(1, 1, '2019-11-22', '2019-11-22', '2019-12-11', '1', ''),
(2, 2, '2019-10-22', '2019-10-22', '2019-11-11', '1', ''),
(3, 3, '2019-11-22', '2019-11-22', '2019-12-11', '1', ''),
(4, 4, '2019-10-22', '2019-10-22', '2019-11-11', '1', ''),
(5, 5, '2019-09-22', '2019-09-22', '2019-11-11', '1', ''),
(6, 1, '2022-08-22', '2022-08-23', '2022-08-25', '1', ''),
(7, 6, '2022-08-24', '2022-08-25', '2022-08-25', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `tilausrivi`
--

CREATE TABLE `tilausrivi` (
  `TILAUSRIVINUMERO` int(20) NOT NULL,
  `TILAUSNUMERO` int(20) NOT NULL,
  `TUOTENUMERO` int(20) NOT NULL,
  `MAARA` int(20) NOT NULL,
  `HINTA` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tilausrivi`
--

INSERT INTO `tilausrivi` (`TILAUSRIVINUMERO`, `TILAUSNUMERO`, `TUOTENUMERO`, `MAARA`, `HINTA`) VALUES
(1, 1, 1, 2, '5'),
(2, 1, 2, 2, '4'),
(3, 2, 2, 3, '5'),
(4, 2, 3, 2, '9'),
(5, 2, 4, 2, '25'),
(6, 3, 1, 2, '5'),
(7, 3, 2, 2, '4'),
(8, 3, 4, 2, '25'),
(9, 4, 1, 2, '5'),
(10, 4, 3, 2, '9'),
(11, 4, 4, 2, '25'),
(12, 5, 1, 1, '5'),
(13, 6, 4, 2, '25'),
(14, 7, 1, 3, '5');

-- --------------------------------------------------------

--
-- Table structure for table `tuote`
--

CREATE TABLE `tuote` (
  `TUOTENUMERO` int(20) NOT NULL,
  `TUOTENIMI` text NOT NULL,
  `SELITE` text NOT NULL,
  `AHINTA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tuote`
--

INSERT INTO `tuote` (`TUOTENUMERO`, `TUOTENIMI`, `SELITE`, `AHINTA`) VALUES
(1, 'SAHA', 'RAKENNUSSAHA', 5),
(2, 'VASARA', 'RAKENNUSKÄYTTÖÖN', 4),
(3, 'METRIMITTA', '10 M', 9),
(4, 'KIRVES', '3 kg', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asiakas`
--
ALTER TABLE `asiakas`
  ADD PRIMARY KEY (`ASIAKASNUMERO`);

--
-- Indexes for table `tilaus`
--
ALTER TABLE `tilaus`
  ADD PRIMARY KEY (`TILAUSNUMERO`),
  ADD KEY `ASIAKASNUMERO` (`ASIAKASNUMERO`),
  ADD KEY `ASIAKASNUMERO_2` (`ASIAKASNUMERO`),
  ADD KEY `ASIAKASNUMERO_3` (`ASIAKASNUMERO`);

--
-- Indexes for table `tilausrivi`
--
ALTER TABLE `tilausrivi`
  ADD PRIMARY KEY (`TILAUSRIVINUMERO`),
  ADD KEY `TILAUSNUMERO` (`TILAUSNUMERO`),
  ADD KEY `TUOTENUMERO` (`TUOTENUMERO`);

--
-- Indexes for table `tuote`
--
ALTER TABLE `tuote`
  ADD PRIMARY KEY (`TUOTENUMERO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tilaus`
--
ALTER TABLE `tilaus`
  ADD CONSTRAINT `tilaus_ibfk_1` FOREIGN KEY (`ASIAKASNUMERO`) REFERENCES `asiakas` (`ASIAKASNUMERO`);

--
-- Constraints for table `tilausrivi`
--
ALTER TABLE `tilausrivi`
  ADD CONSTRAINT `tilausrivi_ibfk_1` FOREIGN KEY (`TILAUSNUMERO`) REFERENCES `tilaus` (`TILAUSNUMERO`),
  ADD CONSTRAINT `tilausrivi_ibfk_2` FOREIGN KEY (`TUOTENUMERO`) REFERENCES `tuote` (`TUOTENUMERO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
