-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 06:28 PM
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
-- Table structure for table `Aladeens`
--

CREATE TABLE `Aladeens` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Aladeens`
--

INSERT INTO `Aladeens` (`id`, `category`, `name`, `description`, `price`) VALUES
(1, 'NON VEG STARTERS', 'Chicken Tikka', NULL, 190.00),
(2, 'NON VEG STARTERS', 'Chicken achari tikka', NULL, 200.00),
(3, 'NON VEG STARTERS', 'Chicken seekh kebab', NULL, 200.00),
(4, 'NON VEG STARTERS', 'Chicken tangdi Half', NULL, 150.00),
(5, 'NON VEG STARTERS', 'Chicken tangdi Full', NULL, 280.00),
(6, 'NON VEG STARTERS', 'Chicken Tandoori Half', NULL, 190.00),
(7, 'NON VEG STARTERS', 'Chicken Tandoori Full', NULL, 360.00),
(8, 'NON VEG STARTERS', 'Fish Tikka', NULL, 270.00),
(9, 'NON VEG STARTERS', 'Fish Achari Tikka', NULL, 280.00),
(10, 'ROLLS', 'Egg Roll', NULL, 70.00),
(11, 'ROLLS', 'Paneer Tikka Roll', NULL, 100.00),
(12, 'ROLLS', 'Chilly Paneer Roll', 'Chinese', 100.00),
(13, 'ROLLS', 'Chilly Chicken Roll', 'Chinese', 120.00),
(14, 'ROLLS', 'Chicken Tikka Roll', NULL, 120.00),
(15, 'ROLLS', 'Chicken Seekh Kebab Roll', NULL, 130.00),
(16, 'CONTINENTAL', 'Masala egg omelette', '2 eggs', 60.00),
(17, 'CONTINENTAL', 'Bread Masala omelette', '2 eggs', 70.00),
(18, 'CONTINENTAL', 'Egg Benjo', NULL, 70.00),
(19, 'CONTINENTAL', 'Egg Cheese Benjo', NULL, 80.00),
(20, 'CONTINENTAL', 'Paneer Tikka sandwich', NULL, 80.00),
(21, 'CONTINENTAL', 'Chicken Tikka sandwich', NULL, 110.00),
(22, 'CONTINENTAL', 'White sauce pasta', NULL, 140.00),
(23, 'CONTINENTAL', 'Red sauce pasta', NULL, 140.00),
(24, 'CONTINENTAL', 'Mix sauce pasta', NULL, 150.00),
(25, 'CONTINENTAL', 'Chicken White Sauce Pasta', NULL, 170.00),
(26, 'VEG STARTERS', 'Paneer Tikka', NULL, 160.00),
(27, 'VEG STARTERS', 'Paneer Achari Tikka', NULL, 170.00),
(28, 'BIRYANI & RICE', 'Plain Rice', NULL, 70.00),
(29, 'BIRYANI & RICE', 'Jeera rice', NULL, 80.00),
(30, 'BIRYANI & RICE', 'Paneer Tikka Fried Rice', NULL, 130.00),
(31, 'BIRYANI & RICE', 'Chicken Tikka Fried Rice', NULL, 140.00),
(32, 'BIRYANI & RICE', 'Paneer Tikka Biryani', NULL, 150.00),
(33, 'BIRYANI & RICE', 'Veg dum biryani', NULL, 150.00),
(34, 'BIRYANI & RICE', 'Chicken Tikka Biryani', NULL, 160.00),
(35, 'BIRYANI & RICE', 'Chicken Dum Biryani', NULL, 160.00),
(36, 'VEG GRAVY', 'Paneer Bhurji', NULL, 120.00),
(37, 'VEG GRAVY', 'Butter Paneer Masala Full', NULL, 200.00),
(38, 'VEG GRAVY', 'Butter Paneer Masala Half', NULL, 110.00),
(39, 'VEG GRAVY', 'Paneer Tikka masala Full', NULL, 200.00),
(40, 'VEG GRAVY', 'Paneer Tikka masala Half', NULL, 110.00),
(41, 'VEG GRAVY', 'Kadhai Paneer Full', NULL, 200.00),
(42, 'VEG GRAVY', 'Kadhai Paneer Half', NULL, 110.00),
(43, 'VEG GRAVY', 'Handi Paneer Full', NULL, 210.00),
(44, 'VEG GRAVY', 'Handi Paneer Half', NULL, 120.00),
(45, 'VEG GRAVY', 'Paneer Lawabdar Full', NULL, 210.00),
(46, 'VEG GRAVY', 'Paneer Lawadbar Half', NULL, 120.00),
(47, 'VEG GRAVY', 'Paneer Kolhapuri Full', NULL, 210.00),
(48, 'VEG GRAVY', 'Paneer Kolhapuri Half', NULL, 120.00),
(49, 'VEG GRAVY', 'Dal fry', NULL, 120.00),
(50, 'VEG GRAVY', 'Dal tadka', NULL, 130.00),
(51, 'VEG GRAVY', 'Dal makhani', NULL, 180.00),
(52, 'VEG GRAVY', 'Sev Tamatar', NULL, 150.00),
(53, 'NON VEG GRAVY', 'Egg bhurji', NULL, 100.00),
(54, 'NON VEG GRAVY', 'Butter Chicken Full', NULL, 280.00),
(55, 'NON VEG GRAVY', 'Butter Chicken Half', NULL, 150.00),
(56, 'NON VEG GRAVY', 'Chicken Tikka Masala Full', NULL, 280.00),
(57, 'NON VEG GRAVY', 'Chicken Tikka Masala Half', NULL, 150.00),
(58, 'NON VEG GRAVY', 'Kadhai Chicken Full', NULL, 280.00),
(59, 'NON VEG GRAVY', 'Kadhai Chicken Half', NULL, 150.00),
(60, 'NON VEG GRAVY', 'Chicken Lawabdar Full', NULL, 290.00),
(61, 'NON VEG GRAVY', 'Chicken Lawabdar Half', NULL, 160.00),
(62, 'NON VEG GRAVY', 'Chicken Handi Full', NULL, 290.00),
(63, 'NON VEG GRAVY', 'Chicken Handi Half', NULL, 160.00),
(64, 'NON VEG GRAVY', 'Chicken Kolhapuri Full', NULL, 290.00),
(65, 'NON VEG GRAVY', 'Chicken Kolhapuri Half', NULL, 160.00),
(66, 'NON VEG GRAVY', 'Fish curry', NULL, 300.00),
(67, 'VEG BURGER', 'Veg Crispy Burger', NULL, 70.00),
(68, 'VEG BURGER', 'Veg Cheese Burger', NULL, 80.00),
(69, 'NON VEG BURGER', 'Paneer Burger', NULL, 100.00),
(70, 'NON VEG BURGER', 'Paneer Cheese Burger', NULL, 110.00),
(71, 'NON VEG BURGER', 'Chicken Burger', NULL, 120.00),
(72, 'NON VEG BURGER', 'Chicken Tikka Burger', NULL, 130.00),
(73, 'SIDES', 'Classic fries', NULL, 70.00),
(74, 'SIDES', 'Masala Fries', NULL, 80.00),
(75, 'SIDES', 'Peri Peri Fries', NULL, 90.00),
(76, 'SIDES', 'Chicken popcorn', NULL, 150.00),
(77, 'SIDES', 'Fried Chicken', NULL, 200.00),
(78, 'SIDES', 'Peri Peri Chicken wings', NULL, 200.00),
(79, 'SIDES', 'Nachos with dip', NULL, 80.00),
(80, 'SIDES', 'Cheese Nachos', NULL, 90.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Aladeens`
--
ALTER TABLE `Aladeens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Aladeens`
--
ALTER TABLE `Aladeens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
