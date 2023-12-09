-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 03:31 PM
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
-- Database: `wmsu_oc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `food_name` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `store` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complete__delivery`
--

CREATE TABLE `complete__delivery` (
  `id` int(11) NOT NULL,
  `track_no` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `food_name` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `mop` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `response` varchar(255) NOT NULL,
  `food_ready` varchar(255) NOT NULL,
  `payment_stat` varchar(255) NOT NULL,
  `complete` int(11) DEFAULT NULL,
  `errand_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complete__delivery`
--

INSERT INTO `complete__delivery` (`id`, `track_no`, `customer_id`, `food_name`, `vendor`, `quantity`, `price`, `total`, `mop`, `payment`, `location`, `response`, `food_ready`, `payment_stat`, `complete`, `errand_id`, `date_created`) VALUES
(28, 52959117, 2, 'rice', 'Vendor1', 1, 20, 20, 'cash', 'yes', 'pickup', '', 'yes', 'yes', 0, 0, '2023-12-07 14:38:17'),
(29, 52959117, 2, 'rice', 'Vendor1', 1, 20, 20, 'cash', 'yes', 'pickup', '', 'yes', 'yes', 0, 0, '2023-12-05 14:38:17'),
(30, 52959117, 2, 'adobo', 'Vendor1', 1, 40, 40, 'cash', 'yes', 'pickup', '', 'yes', 'yes', 0, 0, '2023-12-08 14:38:17'),
(31, 63946116, 2, 'adobo', 'Vendor1', 1, 40, 40, 'cash', 'yes', 'pickup', '', 'yes', 'yes', 0, 0, '2023-12-08 14:39:04'),
(32, 10560874, 2, 'rice', 'Vendor1', 1, 20, 20, 'cash', 'yes', '', '', 'yes', 'yes', 0, 16, '2023-12-08 16:09:45'),
(33, 10560874, 2, 'Chicken', 'Vendor2', 1, 35, 35, 'cash', 'yes', '', '', 'yes', 'yes', 0, 16, '2023-12-08 16:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `track_no` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `food_name` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `response` varchar(255) NOT NULL,
  `mop` varchar(255) NOT NULL,
  `food_ready` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `complete` int(11) DEFAULT NULL,
  `errand_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `track_no`, `customer_id`, `food_name`, `vendor`, `quantity`, `price`, `total`, `location`, `response`, `mop`, `food_ready`, `payment`, `complete`, `errand_id`, `date_created`) VALUES
(66, 26237388, 2, 'adobo', 'Vendor1', 1, 40, 40, 'pickup', 'Pending', 'pickup', 'no', 'no', 0, 0, '2023-12-08 21:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `errand_sales`
--

CREATE TABLE `errand_sales` (
  `id` int(11) NOT NULL,
  `track_no` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `mop` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `errand` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `errand_sales`
--

INSERT INTO `errand_sales` (`id`, `track_no`, `total`, `mop`, `payment`, `errand`, `date_created`) VALUES
(15, 95235658, 20, 'cash', 'yes', '5', '2023-12-03 20:45:51'),
(16, 95235658, 20, 'cash', 'yes', '5', '2023-12-03 20:45:58'),
(17, 61052936, 15, 'cash', 'yes', '5', '2023-12-05 22:45:18'),
(18, 55612885, 20, 'cash', 'yes', '5', '2023-12-06 22:42:12'),
(19, 55612885, 20, 'cash', 'yes', '5', '2023-12-06 22:42:20'),
(20, 14985093, 15, 'cash', 'yes', '5', '2023-12-06 23:00:04'),
(21, 10560874, 18, 'cash', 'yes', '16', '2023-12-08 16:09:45'),
(22, 10560874, 18, 'cash', 'yes', '16', '2023-12-08 16:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `fees` int(11) DEFAULT NULL,
  `additional` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `fees`, `additional`, `date_created`) VALUES
(1, 15, 3, '2023-12-08 15:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `food_name`, `price`, `status`, `category`, `image_url`, `vendor_id`, `date_created`) VALUES
(5, 'adobo', 40, 'Available', 'Solo Meal', '/usercont/QDV5tbiGLJcGib8JlVayP2GqXFQ2bfH8.jpg', 14, '2023-12-08 14:35:53'),
(6, 'rice', 20, 'Available', 'Solo Meal', '/usercont/E6tHGOjbZ4PnMWZVdkFfeGQjUeomHyP7.jpg', 14, '2023-12-08 14:36:10'),
(7, 'Chicken', 35, 'Available', 'Solo Meal', '/usercont/Q84K31U7dhrA3gr90UqRdqJffae6r7Dl.jpg', 15, '2023-12-08 16:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `remittance`
--

CREATE TABLE `remittance` (
  `id` int(11) NOT NULL,
  `track_no` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `mop` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `refereance` int(11) DEFAULT NULL,
  `errand` varchar(255) NOT NULL,
  `df` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `date_created`) VALUES
(1, 'customer', '2023-11-29 01:49:12'),
(2, 'admin', '2023-11-29 01:49:12'),
(3, 'vendor', '2023-11-29 01:50:37'),
(4, 'errand', '2023-11-29 01:50:37'),
(5, 'staff', '2023-11-30 23:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(11) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `middle_name`, `last_name`, `sex`, `contact`, `email`, `password`, `user_type`, `role`, `image_url`, `code`, `verify`, `date_created`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', '123456789', 'admin@wmsu.edu.ph', 'sha256$OnPYmkg1So8hMpOj$e081fdad41e370990af5ec3f16c9f178a098b9b7a3087ea9e7e07768c0a91d81', 2, 'admin', 'https://i.ibb.co/T4D0vD7/334445509-1139125010112015-3116619608976503677-n.png', 0, 0, '2023-11-29 01:53:40'),
(2, 'customer1', 'customer1', 'customer1', 'customer1', '12345678', 'customer1@wmsu.edu.ph', 'sha256$m6qhIxgeKgUOiBb6$fb8284ef3be48dedd5ac7afefa2f55376246de1e66d25271cbcbeda5d2c2dcd5', 1, 'customer', 'https://i.ibb.co/T4D0vD7/334445509-1139125010112015-3116619608976503677-n.png', 0, 0, '2023-11-29 01:58:01'),
(10, 'No Record', 'No Record', 'No Record', 'No Record', 'No Record', 'No Record', 'No Record', 5, 'No Record', 'https://i.ibb.co/T4D0vD7/334445509-1139125010112015-3116619608976503677-n.png', 0, 0, '2023-11-30 23:37:20'),
(13, 'customer2', 'customer2', 'customer2', 'customer2', '123456789', 'customer2@wmsu.edu.ph', 'sha256$cSnLqzEFvZkf41R7$f81c5c992b569c5fb6c6eb8f1672a56766d9b74ac479278954e0618c712c736f', 1, 'customer', 'https://i.ibb.co/T4D0vD7/334445509-1139125010112015-3116619608976503677-n.png', 0, 0, '2023-12-07 00:23:35'),
(14, 'Vendor1', 'Vendor1', 'Vendor1', 'Vendor1', '123456789', 'Vendor1@gmail.com', 'pbkdf2:sha256:260000$u6TFyw9FGLJc3Qhc$69d9af3179d09b12186f563aad88a340ef87f47f1335d6b4d0bf63aa77eb79ee', 3, 'vendor', '/usercont/s2p8Xtvmlbnt9qH8MtsJi8AxgchSsCBl.jpg', 0, 0, '2023-12-08 14:35:10'),
(15, 'Vendor2', 'Vendor2', 'Vendor2', 'Vendor2', '12345678', 'Vendor2@gmail.com', 'sha256$FnRy9SAMKfcDHx82$4fb89b0d35ffe29e86742ce189cc657df584576a2ab651c13b3c85cfb48dbbac', 3, 'vendor', '/usercont/OZXEmivZLkjXKfQTIyEsec5cMgYTbQAO.jpg', 0, 0, '2023-12-08 16:01:25'),
(16, 'Errand1', 'Errand1', 'Errand1', 'Errand1', '12345678', 'Errand1@gmail.com', 'sha256$1N1S2mChCD7blllq$2463ffb25e573cd738c3a4a2b6f21e1f6157cfa88442eb1a99f1a77a98902587', 4, 'errand', '/usercont/7thYMZHhhHxjEVdZe6Q09wYFOFxbTurM.jpg', 0, 0, '2023-12-08 16:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) NOT NULL,
  `gcash_no` int(11) DEFAULT NULL,
  `gcash_name` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `user_id`, `store_name`, `gcash_no`, `gcash_name`, `date_created`) VALUES
(4, 14, 'arnel', 1234567, 'Vendor1', '2023-12-08 14:35:10'),
(5, 15, 'Vendor2', 123456789, 'Vendor2', '2023-12-08 16:01:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complete__delivery`
--
ALTER TABLE `complete__delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `errand_sales`
--
ALTER TABLE `errand_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remittance`
--
ALTER TABLE `remittance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user_type` (`user_type`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `complete__delivery`
--
ALTER TABLE `complete__delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `errand_sales`
--
ALTER TABLE `errand_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `remittance`
--
ALTER TABLE `remittance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_type`) REFERENCES `role` (`id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
