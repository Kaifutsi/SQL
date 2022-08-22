-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 01:32 PM
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
-- Database: `relaatiotietokanta`
--

-- --------------------------------------------------------

--
-- Table structure for table `harrastus`
--

CREATE TABLE `harrastus` (
  `harrastusnumero` int(20) NOT NULL,
  `harrastus` varchar(30) NOT NULL,
  `selite` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harrastus`
--

INSERT INTO `harrastus` (`harrastusnumero`, `harrastus`, `selite`) VALUES
(1, 'juoksu', 'Pitkän matkan juoksu'),
(2, 'kalliokiipeily', 'kalliokiipeilyä vuorilla');

-- --------------------------------------------------------

--
-- Table structure for table `opiskelija`
--

CREATE TABLE `opiskelija` (
  `opiskelijanumero` int(30) NOT NULL,
  `etunimi` varchar(30) NOT NULL,
  `sukunimi` varchar(30) NOT NULL,
  `puhelinnumero` varchar(30) NOT NULL,
  `sähköposti` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opiskelija`
--

INSERT INTO `opiskelija` (`opiskelijanumero`, `etunimi`, `sukunimi`, `puhelinnumero`, `sähköposti`) VALUES
(1, 'Katja', 'G', '06666666666', 'katja.g@edu.fi'),
(2, 'Matti', 'N.', '09958777777', 'matti.n.@edu.fi');

-- --------------------------------------------------------

--
-- Table structure for table `opiskelijoidenharrastukset`
--

CREATE TABLE `opiskelijoidenharrastukset` (
  `ID` int(20) NOT NULL,
  `opiskelijanumero` int(20) NOT NULL,
  `harrastusnumero` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opiskelijoidenharrastukset`
--

INSERT INTO `opiskelijoidenharrastukset` (`ID`, `opiskelijanumero`, `harrastusnumero`) VALUES
(1, 1, 2),
(2, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harrastus`
--
ALTER TABLE `harrastus`
  ADD PRIMARY KEY (`harrastusnumero`);

--
-- Indexes for table `opiskelija`
--
ALTER TABLE `opiskelija`
  ADD PRIMARY KEY (`opiskelijanumero`);

--
-- Indexes for table `opiskelijoidenharrastukset`
--
ALTER TABLE `opiskelijoidenharrastukset`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `opiskelijanumero` (`opiskelijanumero`),
  ADD KEY `harrastusnumero` (`harrastusnumero`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `opiskelijoidenharrastukset`
--
ALTER TABLE `opiskelijoidenharrastukset`
  ADD CONSTRAINT `opiskelijoidenharrastukset_ibfk_1` FOREIGN KEY (`opiskelijanumero`) REFERENCES `opiskelija` (`opiskelijanumero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `opiskelijoidenharrastukset_ibfk_2` FOREIGN KEY (`harrastusnumero`) REFERENCES `harrastus` (`harrastusnumero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
