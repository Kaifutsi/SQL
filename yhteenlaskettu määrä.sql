-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 07:05 AM
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

INSERT INTO `tilausrivi` (`SUM(``MAARA``)`) VALUES
('24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tilausrivi`
--
ALTER TABLE `tilausrivi`
  ADD PRIMARY KEY (`TILAUSRIVINUMERO`),
  ADD KEY `TILAUSNUMERO` (`TILAUSNUMERO`),
  ADD KEY `TUOTENUMERO` (`TUOTENUMERO`);

--
-- Constraints for dumped tables
--

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
