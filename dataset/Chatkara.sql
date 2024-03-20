-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 06:29 PM
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
-- Table structure for table `Chatkara`
--

CREATE TABLE `Chatkara` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Chatkara`
--

INSERT INTO `Chatkara` (`id`, `category`, `name`, `description`, `price`) VALUES
(1, 'PARATHA HUT', 'Plain Parantha', NULL, 20.00),
(2, 'PARATHA HUT', 'Aloo Parantha', NULL, 50.00),
(3, 'PARATHA HUT', 'Aloo Pyaz Parantha', NULL, 55.00),
(4, 'PARATHA HUT', 'Gobi Parantha', NULL, 55.00),
(5, 'PARATHA HUT', 'Paneer Parantha', NULL, 60.00),
(6, 'PARATHA HUT', 'Cheese Paneer Parantha', NULL, 70.00),
(7, 'PARATHA HUT', 'Cheese Parantha', NULL, 65.00),
(8, 'PARATHA HUT', 'Mushroom Cheese Parantha', NULL, 70.00),
(9, 'PARATHA HUT', 'Mix veg Parantha', NULL, 60.00),
(10, 'PARATHA HUT', 'Mushroom Paratha', NULL, 65.00),
(11, 'PARATHA HUT', 'Egg Parantha', NULL, 65.00),
(12, 'MINI MEAL', 'Matter Paneer with 4 Tawa Chappati', NULL, 110.00),
(13, 'MINI MEAL', 'Khoya Paneer with 4 Tawa Chappati', NULL, 120.00),
(14, 'MINI MEAL', 'Paneer Butter Masala with 4 Tawa Chappati', NULL, 110.00),
(15, 'MINI MEAL', 'Dall Makhani with 4 Tawa Chappati', NULL, 90.00),
(16, 'MINI MEAL', 'Dall Fry With 4 Chappati', NULL, 80.00),
(17, 'MINI MEAL', 'Kadai Paneer with 4 Tawa Chappati', NULL, 110.00),
(18, 'MINI MEAL', 'Paneer Kathi Roll', NULL, 60.00),
(19, 'MINI MEAL', 'Egg Kathi Roll', NULL, 60.00),
(20, 'MINI MEAL', 'Egg Curry with Tawa Chappati', NULL, 110.00),
(21, 'MINI MEAL', 'Mix Veg Polao with Curd', NULL, 90.00),
(22, 'MINI MEAL', 'Chappati', NULL, 8.00),
(23, 'CHATKARA CHASKA', 'Aloo Tikki', NULL, 40.00),
(24, 'CHATKARA CHASKA', 'Aloo Chole Tikki', NULL, 50.00),
(25, 'CHATKARA CHASKA', 'Aloo Chat', NULL, 40.00),
(26, 'CHATKARA CHASKA', 'Dahi Patasi', NULL, 60.00),
(27, 'CHATKARA CHASKA', 'Papadi Chat', NULL, 50.00),
(28, 'CHATKARA CHASKA', 'Bheli Puri', NULL, 40.00),
(29, 'CHATKARA CHASKA', 'Plain Samosa', NULL, 15.00),
(30, 'CHATKARA CHASKA', 'Cholle Samosa', NULL, 30.00),
(31, 'CHATKARA CHASKA', 'Pyaz Kachori', NULL, 20.00),
(32, 'CHATKARA CHASKA', 'Cholle Kulchha', NULL, 50.00),
(33, 'CHATKARA CHASKA', 'Daal ki Kachori', NULL, 15.00),
(34, 'SWEET CORN&POPCORN', 'Masala Sweet Corn Small', NULL, 40.00),
(35, 'SWEET CORN&POPCORN', 'Masala Sweet Corn Large', NULL, 60.00),
(36, 'SWEET CORN&POPCORN', 'Butter Masala Pop Corn Small', NULL, 45.00),
(37, 'SWEET CORN&POPCORN', 'Butter Masala Pop Corn Large', NULL, 65.00),
(38, 'FRESH HEALTHY SNACKS', 'Spinach Corn Sandwich', NULL, 55.00),
(39, 'FRESH HEALTHY SNACKS', 'Paneer Cottage Sandwich', NULL, 65.00),
(40, 'FRESH HEALTHY SNACKS', 'Paneer Salsa Sandwich', NULL, 65.00),
(41, 'FRESH HEALTHY SNACKS', 'Masala Pie', NULL, 65.00),
(42, 'FRESH HEALTHY SNACKS', 'Extra Dahi', NULL, 20.00),
(43, 'FRESH HEALTHY SNACKS', 'Extra Butter', NULL, 10.00),
(44, 'FRESH HEALTHY SNACKS', 'Extra Cholle/Bhaji', NULL, 20.00),
(45, 'FRESH HEALTHY SNACKS', 'Saffola Oats All Flavor', NULL, 35.00),
(46, 'CHATKARA CHASKA', 'Khaman Dhokla', NULL, 35.00),
(47, 'DESSERT', 'Gulab Jamun', NULL, 40.00),
(48, 'DESSERT', 'Tea', NULL, 15.00),
(49, 'DESSERT', 'Dark Fantasy', NULL, 60.00),
(50, 'DESSERT', 'Rum Ball', NULL, 35.00),
(51, 'MEALS', 'Cholley Bhatura', NULL, 60.00),
(52, 'MEALS', 'Extra Bhatura', NULL, 20.00),
(53, 'MEALS', 'Paav Bhaji', NULL, 60.00),
(54, 'MEALS', 'Extra Paav', NULL, 15.00),
(55, 'MEALS', 'Masala Paav', NULL, 50.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Chatkara`
--
ALTER TABLE `Chatkara`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Chatkara`
--
ALTER TABLE `Chatkara`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
