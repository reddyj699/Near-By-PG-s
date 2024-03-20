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
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`firstname`, `lastname`, `email`, `phoneno`) VALUES
('jaswanth', 'reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'reddyj699@gmail.com', 9100077859),
('Jaswanth', 'Reddy', 'jaswanth9840', 9100077859),
('Jaswanth', 'Reddy', 'jaswanth98401', 29100077859),
('Jaswanth', 'Reddy', 'jaswanth98401', 29100077859),
('Jaswanth', 'Reddy', 'jaswanth98401', 29100077859),
('sai', 'likhitha', 'sailikhithaandraju@gmail.com', 7386367368);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
