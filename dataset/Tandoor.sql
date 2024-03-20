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
-- Table structure for table `Tandoor`
--

CREATE TABLE `Tandoor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tandoor`
--

INSERT INTO `Tandoor` (`id`, `category`, `name`, `description`, `price`) VALUES
(1, 'FRESH FISH (WINTER)', 'Fish Tikka', '6 pcs.', 349.00),
(2, 'FRESH FISH (WINTER)', 'Fish Amritsari', '8 pcs.', 349.00),
(3, 'FRESH FISH (WINTER)', 'Fish Masala Curry', NULL, 349.00),
(4, 'INDIAN BREADS', 'Tandoori Roti Plain', NULL, 13.00),
(5, 'INDIAN BREADS', 'Tandoori Roti Butter', NULL, 16.00),
(6, 'INDIAN BREADS', 'Laccha Paratha', 'Butter/Plain', 50.00),
(7, 'INDIAN BREADS', 'Stuffed Paratha', 'Paneer/Aloo/Mix Veg', 80.00),
(8, 'INDIAN BREADS', 'Amritsari Chole Kulcha', NULL, 90.00),
(9, 'INDIAN BREADS', 'Missi Roti', NULL, 40.00),
(10, 'INDIAN BREADS', 'Naan (Butter/Plain)', 'Butter/Plain', 45.00),
(11, 'INDIAN BREADS', 'Garlic Naan', NULL, 50.00),
(12, 'INDIAN BREADS', 'Cheese Naan', NULL, 60.00),
(13, 'INDIAN BREADS', 'Chur Chur Naan', NULL, 60.00),
(14, 'INDIAN BREADS', 'Paneer Chur Chur Naan', NULL, 65.00),
(15, 'CHINESE', 'Veg Chowmein', '1 scoop', 99.00),
(16, 'CHINESE', 'Chicken Chowmein', NULL, 130.00),
(17, 'CHINESE', 'Hakka Noodles', NULL, 110.00),
(18, 'CHINESE', 'Garlic Noodles', NULL, 120.00),
(19, 'CHINESE', 'Veg Fried Rice', NULL, 150.00),
(20, 'CHINESE', 'Mushroom Fried Rice', NULL, 160.00),
(21, 'CHINESE', 'Honey Chilly Potato', NULL, 180.00),
(22, 'CHINESE', 'Chilly Potato', NULL, 160.00),
(23, 'CHINESE', 'Chicken Fried Rice', NULL, 180.00),
(24, 'CHINESE', 'Chicken Loly Pop', NULL, 260.00),
(25, 'CHINESE', 'Chilly Paneer', NULL, 220.00),
(26, 'CHINESE', 'Chilly Chicken', NULL, 250.00),
(27, 'VEG STARTERS', 'Paneer Tikka', '6 pcs.', 230.00),
(28, 'VEG STARTERS', 'Paneer Malai Tikka', '6 pcs.', 230.00),
(29, 'VEG STARTERS', 'Paneer Pudina Tikka', '6 pcs.', 230.00),
(30, 'VEG STARTERS', 'Paneer Achari Tikka', '6 pcs.', 230.00),
(31, 'VEG STARTERS', 'Mushroom Tikka', NULL, 210.00),
(32, 'VEG STARTERS', 'Soya Chaap', NULL, 190.00),
(33, 'VEG STARTERS', 'Malai Soya Chaap', NULL, 210.00),
(34, 'NON VEG STARTER', 'Tandoori Chicken', 'full/half', 399.00),
(35, 'NON VEG STARTER', 'Chicken Tikka', '6 pcs.', 299.00),
(36, 'NON VEG STARTER', 'Chicken Malai Tikka', '6 pcs.', 320.00),
(37, 'NON VEG STARTER', 'Chicken Pudina Tikka', '6 pcs.', 320.00),
(38, 'NON VEG STARTER', 'Murg Achari Tikka', '6 pcs.', 320.00),
(39, 'NON VEG STARTER', 'Murgh Tangdi Kabab', '4 pcs.', 330.00),
(40, 'NON VEG STARTER', 'Chicken Seekh Kabab', NULL, 330.00),
(41, 'ROLLS', 'Veg Roll', NULL, 80.00),
(42, 'ROLLS', 'Paneer Roll', NULL, 99.00),
(43, 'ROLLS', 'Paneer Tikka Roll', NULL, 110.00),
(44, 'ROLLS', 'Mushroom Roll', NULL, 90.00),
(45, 'ROLLS', 'Chicken Tikka Roll', NULL, 90.00),
(46, 'PIZZA', 'Chicken Pizza', NULL, 270.00),
(47, 'PIZZA', 'Paneer Special Pizza', NULL, 350.00),
(48, 'PIZZA', 'Farm House Pizza', NULL, 350.00),
(49, 'PIZZA', 'Chicken Tikka Pizza', NULL, 380.00),
(50, 'BURGER & SANDWHICHES', 'Burger Achari Potato', NULL, 70.00),
(51, 'BURGER & SANDWHICHES', 'Burger Mac Pure Veg', NULL, 99.00),
(52, 'BURGER & SANDWHICHES', 'Burger Spicy Paneer', NULL, 110.00),
(53, 'BURGER & SANDWHICHES', 'Burger Crispy Chicken', NULL, 110.00),
(54, 'BURGER & SANDWHICHES', 'Veg Sandwhich', NULL, 70.00),
(55, 'BURGER & SANDWHICHES', 'Veg Grilled Sandwhich', NULL, 80.00),
(56, 'BURGER & SANDWHICHES', 'Paneer Grilled Sandwhich', NULL, 99.00),
(57, 'BURGER & SANDWHICHES', 'Chicken Tikka Sandwhich', NULL, 99.00),
(58, 'BURGER & SANDWHICHES', 'Cold Veg Sandwhich', NULL, 60.00),
(59, 'BURGER & SANDWHICHES', 'Cold Egg Sandwhich', NULL, 80.00),
(60, 'VEG GRAVY', 'Shahi Paneer', NULL, 230.00),
(61, 'VEG GRAVY', 'Paneer Butter Masala', NULL, 250.00),
(62, 'VEG GRAVY', 'Paneer Lababdar', NULL, 230.00),
(63, 'VEG GRAVY', 'Paneer Tikka Masala', NULL, 230.00),
(64, 'VEG GRAVY', 'Kadai Paneer', NULL, 230.00),
(65, 'VEG GRAVY', 'Tufani Paneer', NULL, 230.00),
(66, 'VEG GRAVY', 'Takatak Paneer', NULL, 230.00),
(67, 'VEG GRAVY', 'Dhaba Paneer', NULL, 230.00),
(68, 'VEG GRAVY', 'Paneer Lazeez', NULL, 230.00),
(69, 'VEG GRAVY', 'Paneer Bhurji', NULL, 230.00),
(70, 'VEG GRAVY', 'Malai Kofta', NULL, 230.00),
(71, 'VEG GRAVY', 'Chana Masala', NULL, 180.00),
(72, 'VEG GRAVY', 'Mix Veg', NULL, 180.00),
(73, 'VEG GRAVY', 'Mushroom Kadai', NULL, 220.00),
(74, 'NON VEG GRAVY', 'Butter Chicken Boneless', 'full/half', 85.00),
(75, 'NON VEG GRAVY', 'Butter Chicken Bone', 'full/half', 85.00),
(76, 'NON VEG GRAVY', 'Chicken Kadai', NULL, 520.00),
(77, 'NON VEG GRAVY', 'Chicken Handi', NULL, 480.00),
(78, 'NON VEG GRAVY', 'Chicken Tawa Masala', NULL, 480.00),
(79, 'NON VEG GRAVY', 'Chicken Rara', NULL, 480.00),
(80, 'NON VEG GRAVY', 'Chicken Angara', NULL, 480.00),
(81, 'NON VEG GRAVY', 'Chicken Lazeez', NULL, 230.00),
(82, 'NON VEG GRAVY', 'Chicken Lababdar', NULL, 230.00),
(83, 'DESSERT', 'Gulab Jamun', '1 pc', 45.00),
(84, 'DESSERT', 'Ice Cream', '1 scoop', 45.00),
(85, 'EXTRA', 'Tea', NULL, 30.00),
(86, 'EXTRA', 'Coffee', 'Hot/Cold', 45.00),
(87, 'EXTRA', 'Butter Milk', NULL, 40.00),
(88, 'EXTRA', 'Lassi', NULL, 50.00),
(89, 'EXTRA', 'Rose Lassi', NULL, 60.00),
(90, 'EXTRA', 'Papad Roasted', NULL, 20.00),
(91, 'EXTRA', 'Masala Roasted', NULL, 40.00),
(92, 'EXTRA', 'Green Salad', NULL, 79.00),
(93, 'EXTRA', 'Boondi Raita', NULL, 89.00),
(94, 'EXTRA', 'Veg Raita', NULL, 99.00),
(95, 'PASTA', 'Red Sauce Pasta', NULL, 230.00),
(96, 'PASTA', 'White Sauce Pasta', NULL, 230.00),
(97, 'PASTA', 'Mix Sauce Pasta', NULL, 230.00),
(98, 'COMBO', 'Veg Combo', NULL, 120.00),
(99, 'COMBO', 'Non Veg Combo', NULL, 140.00),
(100, 'VEG THALI', 'Tandoor Mini', 'Paneer + Dal + Raita + 2 Roti Tandoori + Rice + Salad Onion', 150.00),
(101, 'VEG THALI', 'Tandoor Special', 'Paneer + Vegetable + Dal + Papad + Raita + 2 Roti + Laccha Jeera Rice + Rice + Salad Onion', 220.00),
(102, 'VEG RICE', 'Steamed Rice', NULL, 110.00),
(103, 'VEG RICE', 'Jeera Rice', NULL, 165.00),
(104, 'VEG RICE', 'Veg Pulao', NULL, 190.00),
(105, 'VEG RICE', 'Veg Biryani', NULL, 220.00),
(106, 'VEG RICE', 'Paneer Tikka Biryani', NULL, 230.00),
(107, 'VEG RICE', 'Hyderabadi Biryani', NULL, 240.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Tandoor`
--
ALTER TABLE `Tandoor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Tandoor`
--
ALTER TABLE `Tandoor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
