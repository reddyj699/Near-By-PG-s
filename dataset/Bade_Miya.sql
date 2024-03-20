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
-- Table structure for table `Bade_Miya`
--

CREATE TABLE `Bade_Miya` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Bade_Miya`
--

INSERT INTO `Bade_Miya` (`id`, `category`, `name`, `description`, `price`) VALUES
(1, 'ROLLS', 'Aloo Tikki Roll', NULL, 60.00),
(2, 'ROLLS', 'Aloo Achari Roll', NULL, 80.00),
(3, 'ROLLS', 'Veg Kebab Roll', NULL, 90.00),
(4, 'ROLLS', 'Falafel Roll', NULL, 90.00),
(5, 'ROLLS', 'Veg Szechwan Roll', NULL, 90.00),
(6, 'ROLLS', 'Paneer Tikka Roll', NULL, 90.00),
(7, 'ROLLS', 'Paneer Makhani Roll', NULL, 90.00),
(8, 'ROLLS', 'Paneer Bhuna Roll', NULL, 90.00),
(9, 'ROLLS', 'Paneer Honey Chilli Roll', NULL, 90.00),
(10, 'ROLLS', 'Soya Chaap Roll', NULL, 90.00),
(11, 'ROLLS', 'Chicken Sheekh Kebab Roll', NULL, 100.00),
(12, 'ROLLS', 'Double Egg Chicken Sheekh Roll', NULL, 120.00),
(13, 'BIRYANI\'S (NON-VEG)', 'Chicken Dum Biryani', NULL, 130.00),
(14, 'BIRYANI\'S (NON-VEG)', 'Lucknowi Chicken Biryani', NULL, 140.00),
(15, 'BIRYANI\'S (NON-VEG)', 'Chicken Tikka Biryani', NULL, 150.00),
(16, 'BIRYANI\'S (NON-VEG)', 'Achari Chicken Tikka Biryani', NULL, 150.00),
(17, 'BIRYANI\'S (NON-VEG)', 'Chicken Keema Biryani', NULL, 150.00),
(18, 'BIRYANI\'S (NON-VEG)', 'Chicken Kofta Biryani', NULL, 150.00),
(19, 'BIRYANI\'S (NON-VEG)', 'Chicken Mughlai Biryani', NULL, 170.00),
(20, 'MOMOS', 'Chicken Momos Steamed', NULL, 100.00),
(21, 'MOMOS', 'Tandoori Chicken Momos', NULL, 120.00),
(22, 'MOMOS', 'Fried Momos Chicken', NULL, 130.00),
(23, 'MOMOS', 'Chili Momos Chicken', NULL, 130.00),
(24, 'MOMOS', 'Szechwan Momos Chicken', NULL, 130.00),
(25, 'MOMOS', 'BBQ Chicken Momos', NULL, 130.00),
(26, 'MOMOS', 'Peri Peri Momos', NULL, 130.00),
(27, 'STARTERS', 'Paneer Tikka', NULL, 120.00),
(28, 'STARTERS', 'Paneer Achari Tikka', NULL, 130.00),
(29, 'STARTERS', 'Paneer Pudina Tikka', NULL, 130.00),
(30, 'STARTERS', 'Paneer Malai Tikka', NULL, 140.00),
(31, 'STARTERS', 'Soya Chaap Tandoori / Achari / Pudina', NULL, 120.00),
(32, 'STARTERS', 'Afghani Soya Chaap', NULL, 140.00),
(33, 'STARTERS', 'Momos Veg (8 pcs) Steamed Fried', NULL, 80.00),
(34, 'STARTERS', 'Tandoori Momos Veg (8 pcs)', NULL, 100.00),
(35, 'STARTERS', 'Fried Momos (8 pcs)', NULL, 100.00),
(36, 'STARTERS', 'BBQ/Perl Peri Momos', NULL, 110.00),
(37, 'STARTERS', 'Chill Garlic Szechwan Momos', NULL, 110.00),
(38, 'STARTERS', 'Double Egg Chicken Sheekh Roll', NULL, 120.00),
(39, 'STARTERS', 'Chicken Tikka Roll', NULL, 100.00),
(40, 'STARTERS', 'Chicken Malai Tikka Roll', NULL, 120.00),
(41, 'STARTERS', 'Chicken Bhuna Roll', NULL, 100.00),
(42, 'STARTERS', 'Chicken Shawarma Roll', NULL, 100.00),
(43, 'STARTERS', 'BBQ Chicken Roll', NULL, 100.00),
(44, 'STARTERS', 'Chicken Szechwan Roll', NULL, 110.00),
(45, 'STARTERS', 'Chicken Mamna Roll', NULL, 100.00),
(46, 'STARTERS', 'Double Egg Roll', NULL, 70.00),
(47, 'STARTERS', 'Egg Roll', NULL, 50.00),
(48, 'STARTERS', 'Extra Cheese', NULL, 20.00),
(49, 'INDIAN BREADS', 'Plain Parathas', NULL, 20.00),
(50, 'INDIAN BREADS', 'Laccha Parathas', NULL, 20.00),
(51, 'INDIAN BREADS', 'Plain Parathas', NULL, 20.00),
(52, 'INDIAN BREADS', 'Laccha Parathas', NULL, 20.00),
(53, 'BEVERAGES', 'Cold Coffee', NULL, 40.00),
(54, 'BEVERAGES', 'Iced Tea', NULL, 30.00),
(55, 'BEVERAGES', 'Chach', NULL, 25.00),
(56, 'BEVERAGES', 'Lassi', NULL, 40.00),
(57, 'BEVERAGES', 'Cold Coffee', NULL, 40.00),
(58, 'BEVERAGES', 'Iced Tea', NULL, 30.00),
(59, 'BEVERAGES', 'Chach', NULL, 25.00),
(60, 'BEVERAGES', 'Lassi', NULL, 40.00),
(61, 'CURRIES', 'Chicken Tava Masala', NULL, 140.00),
(62, 'CURRIES', 'Chicken Bhuna Masala', NULL, 140.00),
(63, 'CURRIES', 'Chicken Keema Masala', NULL, 150.00),
(64, 'CURRIES', 'Chicken Handi', NULL, 140.00),
(65, 'CURRIES', 'Chicken Tikka Masala', NULL, 150.00),
(66, 'CURRIES', 'Chicken Kolhapuri Spicy', NULL, 150.00),
(67, 'CURRIES', 'Chicken Kadai', NULL, 150.00),
(68, 'CURRIES', 'Butter Chicken', NULL, 150.00),
(69, 'CURRIES', 'Murgh Tikka Lababdar', NULL, 160.00),
(70, 'CURRIES', 'Chicken Combo Meal Paratha', NULL, 150.00),
(71, 'FUSION', 'Veg Masala Maggi', NULL, 40.00),
(72, 'FUSION', 'Grilled Paneer Wrap', NULL, 100.00),
(73, 'FUSION', 'Stuffed Naan Paneer', NULL, 100.00),
(74, 'FUSION', 'Quesadilla Paneer', NULL, 100.00),
(75, 'FUSION', 'Taco Indiana Paneer', NULL, 120.00),
(76, 'FUSION', 'Szechwan Egg Wrap', NULL, 70.00),
(77, 'FUSION', 'Tandoori Chicken Momos 8 pcs', NULL, 120.00),
(78, 'FUSION', 'Stuffed Chicken Naan', NULL, 100.00),
(79, 'FUSION', 'Chicken Quesadilla', NULL, 100.00),
(80, 'FUSION', 'Grilled Chicken Cheese Wrap', NULL, 100.00),
(81, 'FUSION', 'Taco Indiana Chicken', NULL, 120.00),
(82, 'FUSION', 'Spicy Chicken Wrap Peri Peri', NULL, 100.00),
(83, 'FUSION', 'Chicken Keema Wrap', NULL, 100.00),
(84, 'GRILLED SANDWICHES', 'Veg Cheese Grilled Sandwich', NULL, 50.00),
(85, 'GRILLED SANDWICHES', 'Bombay Grilled Sandwich-Veg', NULL, 60.00),
(86, 'GRILLED SANDWICHES', 'Arabic Paneer Sandwich', NULL, 90.00),
(87, 'GRILLED SANDWICHES', 'Paneer Tikka Sandwich', NULL, 90.00),
(88, 'GRILLED SANDWICHES', 'Paneer Club Sandwich', NULL, 120.00),
(89, 'GRILLED SANDWICHES', 'Zesty Paneer Sandwich', NULL, 80.00),
(90, 'GRILLED SANDWICHES', 'Paneer Makhani Sandwich', NULL, 80.00),
(91, 'GRILLED SANDWICHES', 'Omlette Cheese Sandwich', NULL, 60.00),
(92, 'GRILLED SANDWICHES', 'Arabic Chicken Sandwich', NULL, 90.00),
(93, 'GRILLED SANDWICHES', 'Chicken Tikka Sandwich', NULL, 90.00),
(94, 'GRILLED SANDWICHES', 'Chicken Club Sandwich', NULL, 120.00),
(95, 'GRILLED SANDWICHES', 'BBQ Chicken Sandwich', NULL, 90.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bade_Miya`
--
ALTER TABLE `Bade_Miya`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bade_Miya`
--
ALTER TABLE `Bade_Miya`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
