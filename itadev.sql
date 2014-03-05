-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2014 at 06:41 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itadev`
--
CREATE DATABASE IF NOT EXISTS `itadev` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `itadev`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE IF NOT EXISTS `korisnici` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `ime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lozinka` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`ID`, `ime`, `lozinka`, `status`) VALUES
(1, 'Goran', 'goran', 2);

-- --------------------------------------------------------

--
-- Table structure for table `postovi`
--

CREATE TABLE IF NOT EXISTS `postovi` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tekst` text COLLATE utf8_unicode_ci NOT NULL,
  `datum_objave` date NOT NULL,
  `id_autor` int(2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_autor` (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `statusi`
--

CREATE TABLE IF NOT EXISTS `statusi` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `statusi`
--

INSERT INTO `statusi` (`ID`, `naziv`) VALUES
(1, 'administrator'),
(2, 'korisnik');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD CONSTRAINT `korisnici_ibfk_1` FOREIGN KEY (`status`) REFERENCES `statusi` (`ID`);

--
-- Constraints for table `postovi`
--
ALTER TABLE `postovi`
  ADD CONSTRAINT `postovi_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `korisnici` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
