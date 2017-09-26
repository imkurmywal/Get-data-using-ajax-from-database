-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2017 at 08:46 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logindata`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`FirstName`, `LastName`, `Email`, `Password`, `Id`) VALUES
('Jhon', 'Doe', 'Jhon.doe@gmail.com', 'jhon.4321', 1),
('Alex', 'Doe', 'alexdoe@gmail.com', 'alex9876', 2),
('Haris', 'Shah', 'haris.shah77@gmail.com', '4567834', 3),
('Farid', 'Ch', 'farid.ch124@gmail.com', 'dfsdfd3424', 4),
('Hamid', 'Khan', 'hamidkhan90@gmail.com', 'hameeed234545353fgd', 6),
('Johny', 'Dheep', 'johnydheep4509@gmail.com', '3458979hkhj', 7),
('Rahim', 'Shah', 'rahimkk@gmail.com', 'rahimkkkkkk', 8),
('Ahmed', 'Khan', 'khan.ahmed@gmail.com', 'kkk729', 9),
('Ibrar', 'Ahmed', 'ahmed9000@gmail.com', 'awery679', 10),
('Faizan', 'Awan', 'faizan765@gmail.com', '667789fgdfgdg', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
