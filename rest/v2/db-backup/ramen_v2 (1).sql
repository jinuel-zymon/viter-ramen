-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 08:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramen_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ramen_drinks`
--

CREATE TABLE `ramen_drinks` (
  `drinks_aid` int(11) NOT NULL,
  `drinks_title` varchar(50) NOT NULL,
  `drinks_price` varchar(20) NOT NULL,
  `drinks_description` text NOT NULL,
  `drinks_category` varchar(30) NOT NULL,
  `drinks_is_active` tinyint(1) NOT NULL,
  `drinks_datetime` varchar(20) NOT NULL,
  `drinks_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ramen_drinks`
--

INSERT INTO `ramen_drinks` (`drinks_aid`, `drinks_title`, `drinks_price`, `drinks_description`, `drinks_category`, `drinks_is_active`, `drinks_datetime`, `drinks_created`) VALUES
(1, 'Redhorse 1', '150', 'Extra Strong', 'Beer', 1, '2024-11-07 16:04:49', '2024-11-07 10:25:57'),
(2, 'blue', '100', 'dsfsfsd', 'Sake', 1, '2024-11-11 13:36:38', '2024-11-08 07:22:57'),
(4, 'sake 2', '250', 'dfdfdf', 'Sake', 1, '2024-11-11 13:36:47', '2024-11-08 07:25:21'),
(5, 'Lipton', '333', 'dfsdfsdf', 'Tea', 1, '2024-11-08 07:39:03', '2024-11-08 07:38:52'),
(6, 'Green', '222', 'fgdgdfgdf', 'Tea', 1, '2024-11-08 07:39:15', '2024-11-08 07:39:15'),
(7, 'red', '222', 'dfsdfsdf', 'Wine', 1, '2024-11-08 08:02:50', '2024-11-08 08:02:50'),
(8, 'Mint', '222', 'dfsfsdf', 'Tea', 1, '2024-11-08 08:03:13', '2024-11-08 08:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `ramen_ramen`
--

CREATE TABLE `ramen_ramen` (
  `ramen_aid` int(11) NOT NULL,
  `ramen_title` varchar(50) NOT NULL,
  `ramen_price` varchar(20) NOT NULL,
  `ramen_description` text NOT NULL,
  `ramen_category` varchar(50) NOT NULL,
  `ramen_photo` varchar(50) NOT NULL,
  `ramen_is_active` tinyint(1) NOT NULL,
  `ramen_datetime` varchar(20) NOT NULL,
  `ramen_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ramen_ramen`
--

INSERT INTO `ramen_ramen` (`ramen_aid`, `ramen_title`, `ramen_price`, `ramen_description`, `ramen_category`, `ramen_photo`, `ramen_is_active`, `ramen_datetime`, `ramen_created`) VALUES
(1, '0000', '150', 'sdfsdfsdfdsfsdfdsfsd', 'dsfs', 'michi-dessert.webp', 1, '2024-11-11 13:36:07', '2024-11-07 14:06:58'),
(2, 'ggg', '200', 'jhghjhgj', 'jghg', 'Brand.jpg', 1, '2024-11-11 13:36:16', '2024-11-07 15:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `ramen_settings_category`
--

CREATE TABLE `ramen_settings_category` (
  `category_aid` int(11) NOT NULL,
  `category_title` varchar(50) NOT NULL,
  `category_is_active` tinyint(1) NOT NULL,
  `category_datetime` varchar(20) NOT NULL,
  `category_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ramen_settings_category`
--

INSERT INTO `ramen_settings_category` (`category_aid`, `category_title`, `category_is_active`, `category_datetime`, `category_created`) VALUES
(2, 'Ramen 1', 1, '2024-11-06 13:57:31', '2024-11-06 13:57:31'),
(3, 'Reamn2', 1, '2024-11-06 13:59:12', '2024-11-06 13:59:12'),
(4, 'sdfgdsfg', 1, '2024-11-06 14:32:33', '2024-11-06 13:59:18'),
(5, 'asdf', 1, '2024-11-06 13:59:29', '2024-11-06 13:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `ramen_settings_mop`
--

CREATE TABLE `ramen_settings_mop` (
  `mop_aid` int(11) NOT NULL,
  `mop_title` varchar(50) NOT NULL,
  `mop_is_active` tinyint(1) NOT NULL,
  `mop_datetime` varchar(20) NOT NULL,
  `mop_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ramen_settings_mop`
--

INSERT INTO `ramen_settings_mop` (`mop_aid`, `mop_title`, `mop_is_active`, `mop_datetime`, `mop_created`) VALUES
(2, 'Cash', 1, '2024-11-11 09:46:52', '2024-11-06 10:05:12'),
(4, 'GCash', 1, '2024-11-11 09:45:35', '2024-11-11 09:45:29'),
(5, 'Credit Card', 1, '2024-11-11 09:45:40', '2024-11-11 09:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `ramen_settings_promo`
--

CREATE TABLE `ramen_settings_promo` (
  `promo_aid` int(11) NOT NULL,
  `promo_title` varchar(50) NOT NULL,
  `promo_is_active` tinyint(1) NOT NULL,
  `promo_datetime` varchar(20) NOT NULL,
  `promo_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ramen_sidesdessert`
--

CREATE TABLE `ramen_sidesdessert` (
  `sidesdessert_aid` int(11) NOT NULL,
  `sidesdessert_title` varchar(50) NOT NULL,
  `sidesdessert_price` varchar(20) NOT NULL,
  `sidesdessert_description` text NOT NULL,
  `sidesdessert_is_active` tinyint(1) NOT NULL,
  `sidesdessert_datetime` varchar(20) NOT NULL,
  `sidesdessert_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ramen_sidesdessert`
--

INSERT INTO `ramen_sidesdessert` (`sidesdessert_aid`, `sidesdessert_title`, `sidesdessert_price`, `sidesdessert_description`, `sidesdessert_is_active`, `sidesdessert_datetime`, `sidesdessert_created`) VALUES
(3, 'zxzx', '222', 'ddsfsdf', 1, '2024-11-07 13:56:32', '2024-11-07 13:56:32'),
(4, 'hello', '444', 'fgfdgdfgdfg', 1, '2024-11-07 15:35:24', '2024-11-07 15:35:24'),
(5, 'yyyy', '700', 'hgjgjgh', 1, '2024-11-07 15:36:16', '2024-11-07 15:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `ramen_toppings`
--

CREATE TABLE `ramen_toppings` (
  `toppings_aid` int(11) NOT NULL,
  `toppings_title` varchar(50) NOT NULL,
  `toppings_price` varchar(20) NOT NULL,
  `toppings_description` text NOT NULL,
  `toppings_is_active` tinyint(1) NOT NULL,
  `toppings_datetime` varchar(20) NOT NULL,
  `toppings_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ramen_toppings`
--

INSERT INTO `ramen_toppings` (`toppings_aid`, `toppings_title`, `toppings_price`, `toppings_description`, `toppings_is_active`, `toppings_datetime`, `toppings_created`) VALUES
(2, 'carrots', '50', 'fdgdfggfdfdgfg', 1, '2024-11-07 15:54:19', '2024-11-07 12:20:00'),
(3, 'eggs', '223', 'fghdfghd', 1, '2024-11-07 15:53:47', '2024-11-07 12:20:04'),
(4, 'green onions', '90', 'rtyertyert', 1, '2024-11-07 15:54:01', '2024-11-07 12:20:07'),
(5, 'naruto', '33', 'fgfdgfgfdggf', 1, '2024-11-07 15:54:34', '2024-11-07 15:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `ramen_transaction`
--

CREATE TABLE `ramen_transaction` (
  `transaction_aid` int(11) NOT NULL,
  `transaction_cart_dessertCart` text NOT NULL,
  `transaction_cart_drinks` text NOT NULL,
  `transaction_cart_ramen` text NOT NULL,
  `transaction_cart_toppings` text NOT NULL,
  `transaction_change` int(11) NOT NULL,
  `transaction_mop` varchar(20) NOT NULL,
  `transaction_payment` int(11) NOT NULL,
  `transaction_subtotal` int(11) NOT NULL,
  `transaction_finaltotal` int(11) NOT NULL,
  `transaction_is_active` tinyint(1) NOT NULL,
  `transaction_datetime` varchar(20) NOT NULL,
  `transaction_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ramen_transaction`
--

INSERT INTO `ramen_transaction` (`transaction_aid`, `transaction_cart_dessertCart`, `transaction_cart_drinks`, `transaction_cart_ramen`, `transaction_cart_toppings`, `transaction_change`, `transaction_mop`, `transaction_payment`, `transaction_subtotal`, `transaction_finaltotal`, `transaction_is_active`, `transaction_datetime`, `transaction_created`) VALUES
(1, '[]', '[]', '[{\"ramen_aid\":2,\"ramen_title\":\"ggg\",\"ramen_price\":\"866\",\"ramen_description\":\"jhghjhgj\",\"ramen_category\":\"jghg\",\"ramen_photo\":\"Brand.jpg\",\"ramen_is_active\":1,\"ramen_datetime\":\"2024-11-07 15:35:39\",\"ramen_created\":\"2024-11-07 15:35:39\",\"quantity\":1}]', '[{\"toppings_aid\":3,\"toppings_title\":\"eggs\",\"toppings_price\":\"223\",\"toppings_description\":\"fghdfghd\",\"toppings_is_active\":1,\"toppings_datetime\":\"2024-11-07 15:53:47\",\"toppings_created\":\"2024-11-07 12:20:04\",\"quantity\":1},{\"toppings_aid\":4,\"toppings_title\":\"green onions\",\"toppings_price\":\"90\",\"toppings_description\":\"rtyertyert\",\"toppings_is_active\":1,\"toppings_datetime\":\"2024-11-07 15:54:01\",\"toppings_created\":\"2024-11-07 12:20:07\",\"quantity\":2},{\"toppings_aid\":5,\"toppings_title\":\"naruto\",\"toppings_price\":\"33\",\"toppings_description\":\"fgfdgfgfdggf\",\"toppings_is_active\":1,\"toppings_datetime\":\"2024-11-07 15:54:34\",\"toppings_created\":\"2024-11-07 15:54:34\",\"quantity\":1},{\"toppings_aid\":2,\"toppings_title\":\"carrots\",\"toppings_price\":\"50\",\"toppings_description\":\"fdgdfggfdfdgfg\",\"toppings_is_active\":1,\"toppings_datetime\":\"2024-11-07 15:54:19\",\"toppings_created\":\"2024-11-07 12:20:00\",\"quantity\":1}]', 21, 'Cash', 1400, 1352, 1379, 1, '2024-11-11 10:28:12', '2024-11-11 10:28:12'),
(2, '[{\"sidesdessert_aid\":4,\"sidesdessert_title\":\"hello\",\"sidesdessert_price\":\"444\",\"sidesdessert_description\":\"fgfdgdfgdfg\",\"sidesdessert_is_active\":1,\"sidesdessert_datetime\":\"2024-11-07 15:35:24\",\"sidesdessert_created\":\"2024-11-07 15:35:24\",\"quantity\":1},{\"sidesdessert_aid\":5,\"sidesdessert_title\":\"yyyy\",\"sidesdessert_price\":\"700\",\"sidesdessert_description\":\"hgjgjgh\",\"sidesdessert_is_active\":1,\"sidesdessert_datetime\":\"2024-11-07 15:36:16\",\"sidesdessert_created\":\"2024-11-07 15:36:16\",\"quantity\":1}]', '[{\"drinks_aid\":1,\"drinks_title\":\"Redhorse 1\",\"drinks_price\":\"150\",\"drinks_description\":\"Extra Strong\",\"drinks_category\":\"Beer\",\"drinks_is_active\":1,\"drinks_datetime\":\"2024-11-07 16:04:49\",\"drinks_created\":\"2024-11-07 10:25:57\",\"quantity\":1},{\"drinks_aid\":7,\"drinks_title\":\"red\",\"drinks_price\":\"222\",\"drinks_description\":\"dfsdfsdf\",\"drinks_category\":\"Wine\",\"drinks_is_active\":1,\"drinks_datetime\":\"2024-11-08 08:02:50\",\"drinks_created\":\"2024-11-08 08:02:50\",\"quantity\":1}]', '[{\"ramen_aid\":2,\"ramen_title\":\"ggg\",\"ramen_price\":\"200\",\"ramen_description\":\"jhghjhgj\",\"ramen_category\":\"jghg\",\"ramen_photo\":\"Brand.jpg\",\"ramen_is_active\":1,\"ramen_datetime\":\"2024-11-11 13:36:16\",\"ramen_created\":\"2024-11-07 15:35:39\",\"quantity\":1}]', '[{\"toppings_aid\":5,\"toppings_title\":\"naruto\",\"toppings_price\":\"33\",\"toppings_description\":\"fgfdgfgfdggf\",\"toppings_is_active\":1,\"toppings_datetime\":\"2024-11-07 15:54:34\",\"toppings_created\":\"2024-11-07 15:54:34\",\"quantity\":1},{\"toppings_aid\":4,\"toppings_title\":\"green onions\",\"toppings_price\":\"90\",\"toppings_description\":\"rtyertyert\",\"toppings_is_active\":1,\"toppings_datetime\":\"2024-11-07 15:54:01\",\"toppings_created\":\"2024-11-07 12:20:07\",\"quantity\":1}]', 124, 'Credit Card', 2000, 1839, 1876, 1, '2024-11-11 13:37:21', '2024-11-11 13:37:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ramen_drinks`
--
ALTER TABLE `ramen_drinks`
  ADD PRIMARY KEY (`drinks_aid`);

--
-- Indexes for table `ramen_ramen`
--
ALTER TABLE `ramen_ramen`
  ADD PRIMARY KEY (`ramen_aid`);

--
-- Indexes for table `ramen_settings_category`
--
ALTER TABLE `ramen_settings_category`
  ADD PRIMARY KEY (`category_aid`);

--
-- Indexes for table `ramen_settings_mop`
--
ALTER TABLE `ramen_settings_mop`
  ADD PRIMARY KEY (`mop_aid`);

--
-- Indexes for table `ramen_settings_promo`
--
ALTER TABLE `ramen_settings_promo`
  ADD PRIMARY KEY (`promo_aid`);

--
-- Indexes for table `ramen_sidesdessert`
--
ALTER TABLE `ramen_sidesdessert`
  ADD PRIMARY KEY (`sidesdessert_aid`);

--
-- Indexes for table `ramen_toppings`
--
ALTER TABLE `ramen_toppings`
  ADD PRIMARY KEY (`toppings_aid`);

--
-- Indexes for table `ramen_transaction`
--
ALTER TABLE `ramen_transaction`
  ADD PRIMARY KEY (`transaction_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ramen_drinks`
--
ALTER TABLE `ramen_drinks`
  MODIFY `drinks_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ramen_ramen`
--
ALTER TABLE `ramen_ramen`
  MODIFY `ramen_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ramen_settings_category`
--
ALTER TABLE `ramen_settings_category`
  MODIFY `category_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ramen_settings_mop`
--
ALTER TABLE `ramen_settings_mop`
  MODIFY `mop_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ramen_settings_promo`
--
ALTER TABLE `ramen_settings_promo`
  MODIFY `promo_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ramen_sidesdessert`
--
ALTER TABLE `ramen_sidesdessert`
  MODIFY `sidesdessert_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ramen_toppings`
--
ALTER TABLE `ramen_toppings`
  MODIFY `toppings_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ramen_transaction`
--
ALTER TABLE `ramen_transaction`
  MODIFY `transaction_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
