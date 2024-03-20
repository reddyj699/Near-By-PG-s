-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 06:26 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21048547_jaswanth`
--

-- --------------------------------------------------------

--
-- Table structure for table `pgdata`
--

CREATE TABLE `pgdata` (
  `pgname` varchar(100) NOT NULL,
  `rent` int(20) NOT NULL,
  `advance` int(20) NOT NULL,
  `rooms` int(11) NOT NULL,
  `electricity` int(4) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  `share` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `distance` float NOT NULL,
  `rent2` int(11) NOT NULL,
  `rent3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pgdata`
--

INSERT INTO `pgdata` (`pgname`, `rent`, `advance`, `rooms`, `electricity`, `contactno`, `share`, `gender`, `distance`, `rent2`, `rent3`) VALUES
('Dhoila', 0, 7500, 30, 0, 7410828160, 'Double', 'Co-head', 0.6, 75000, 0),
('JoyHomeStay', 200000, 10000, 30, 200, 9983444405, 'Triple', 'Boys', 1, 160000, 130000),
('Scholars', 230000, 10000, 30, 0, 8005700449, 'Triple', 'Boys', 1.1, 170000, 140000),
('Pioneer', 0, 10000, 10, 100, 8107312114, 'Triple', 'Boys', 1.7, 190000, 180000),
('Tranquiil', 0, 10000, 30, 0, 9414006220, 'Double', 'Boys', 1.7, 120000, 0),
('Elegance', 210000, 10000, 30, 100, 8905969068, 'Triple', 'Boys', 0.9, 170000, 150000),
('ChillOut', 220000, 10000, 30, 0, 7688882555, 'Double', 'Co-head', 2.5, 165000, 0),
('N.S. Hostel', 0, 10000, 30, 0, 9799605406, 'Double', 'Boys', 1.2, 190000, 0),
('Narayan', 0, 10000, 10, 0, 8440022116, 'Triple', 'Boys', 1.7, 130000, 110000),
('Joy Stel', 0, 10000, 10, 0, 9983257776, 'Triple', 'Boys', 2.1, 200000, 180000),
('Shiv Shakti', 0, 10000, 10, 100, 8559855477, 'Triple', 'Boys', 1.4, 170000, 150000),
('SundarOne', 200000, 10000, 10, 100, 9772379100, 'Triple', 'Co-head', 2.1, 170000, 150000),
('Allies Hub', 250000, 10000, 40, 0, 8114468324, 'Double', 'Boys', 1.5, 190000, 0),
('H.R. Hostel', 0, 10000, 30, 50, 7737169615, 'Double', 'Boys', 1.2, 132000, 0),
('RiverSide', 200000, 10000, 10, 0, 8655734163, 'Double', 'Boys', 0.5, 185000, 0),
('S.K Hostels', 170000, 10000, 10, 100, 9929002271, 'Double', 'Boys', 0.4, 150000, 0),
('Golden Homes', 0, 10000, 10, 0, 9928045335, 'Double', 'Boys', 0.6, 170000, 0),
('Arya\'s Hostel', 200000, 10000, 10, 100, 9828500555, 'Double', 'Boys', 0.65, 165000, 0),
('Atulya Hostel', 205000, 20000, 10, 100, 9414460650, 'Double', 'Co-head', 10, 175000, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
