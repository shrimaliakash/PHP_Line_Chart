-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 07:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akash_hiddenbrians`
--
CREATE DATABASE IF NOT EXISTS `akash_hiddenbrians` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `akash_hiddenbrians`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `working_days` int(10) NOT NULL,
  `present_days` int(10) NOT NULL,
  `absent_days` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `month`, `working_days`, `present_days`, `absent_days`) VALUES
(1, 'Ernest', 'Adams', 'Jun', 26, 15, 11),
(2, 'Michael', 'Adams', 'Jun', 26, 20, 6),
(3, 'Ralph', 'Adams', 'Jun', 26, 14, 12),
(4, 'Walter', 'Adams', 'Jun', 26, 24, 2),
(5, 'Edward', 'Alexander', 'Jun', 26, 26, 0),
(6, 'Harry', 'Alexander', 'Jun', 26, 25, 1),
(7, 'Craig', 'Allen', 'Jun', 26, 25, 1),
(8, 'Denise', 'Allen', 'Jun', 26, 24, 2),
(9, 'Henry', 'Allen', 'Jun', 26, 24, 2),
(10, 'Dennis', 'Alvarez', 'Jun', 26, 26, 0),
(11, 'Ernest', 'Adams', 'July', 26, 15, 11),
(12, 'Michael', 'Adams', 'July', 27, 20, 7),
(13, 'Ralph', 'Adams', 'July', 27, 14, 13),
(14, 'Walter', 'Adams', 'July', 27, 24, 3),
(15, 'Edward', 'Alexander', 'July', 27, 27, 0),
(16, 'Harry', 'Alexander', 'July', 27, 25, 2),
(17, 'Craig', 'Allen', 'July', 27, 25, 2),
(18, 'Denise', 'Allen', 'July', 27, 20, 7),
(19, 'Henry', 'Allen', 'July', 27, 19, 8),
(20, 'Dennis', 'Alvarez', 'July', 27, 10, 17);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
