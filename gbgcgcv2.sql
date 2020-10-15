-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 12:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gbgcgcv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ari_date_yop`
--

CREATE TABLE `ari_date_yop` (
  `SNo` int(11) NOT NULL,
  `ari` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `yop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ari_date_yop`
--

INSERT INTO `ari_date_yop` (`SNo`, `ari`, `name`, `date`, `yop`) VALUES
(1, 'are_amcat', 'AMCAT', '2019-08-17', 2020),
(2, 'are_amcat', 'AMCAT', '2020-04-25', 2021),
(3, 'are_cocubes', 'COCUBES-1', '0000-00-00', 2020),
(4, 'are_cocubes', 'COCUBES-1', '2020-05-02', 2021),
(5, 'are_cocubes', 'COCUBES-2', '0000-00-00', 2020),
(6, 'AT1_score', 'AT1', '0000-00-00', 2020),
(7, 'AT1_score', 'AT1', '0000-00-00', 2021),
(8, 'AT2_score', 'AT2', '0000-00-00', 2020),
(9, 'AT2_score', 'AT2', '0000-00-00', 2021),
(10, 'AT3_score', 'AT3', '0000-00-00', 2021),
(11, 'AT4_score', 'AT4', '0000-00-00', 2021),
(12, 'AT5_score', 'AT5', '0000-00-00', 2021),
(13, 'AT6_score', 'AT6', '0000-00-00', 2021),
(14, 'DT1_score', 'DT1', '0000-00-00', 2021),
(15, 'GT1_score', 'GT1', '0000-00-00', 2021),
(16, 'TT1_percentage', 'TT1', '0000-00-00', 2021),
(17, 'TT2_percentage', 'TT2', '0000-00-00', 2021),
(18, 'TT3_percentage', 'TT3', '0000-00-00', 2021),
(19, 'TT4_percentage', 'TT4', '0000-00-00', 2021),
(20, 'TT5_percentage', 'TT5', '0000-00-00', 2021),
(21, 'TT6_percentage', 'TT6', '0000-00-00', 2021),
(22, 'TT7_percentage', 'TT7', '0000-00-00', 2021),
(23, 'TT8_percentage', 'TT8', '0000-00-00', 2021);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ari_date_yop`
--
ALTER TABLE `ari_date_yop`
  ADD PRIMARY KEY (`SNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ari_date_yop`
--
ALTER TABLE `ari_date_yop`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
