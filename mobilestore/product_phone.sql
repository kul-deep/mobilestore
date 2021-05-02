-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 05:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_phone`
--

CREATE TABLE `product_phone` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `ram` varchar(10) NOT NULL,
  `storage` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_phone`
--

INSERT INTO `product_phone` (`id`, `name`, `brand`, `ram`, `storage`, `price`, `stock`) VALUES
(1, 'MI Note 5 pro', 'MI', '3GB', '64GB', 13000, 2),
(2, 'Vivo v9', 'Vivo', '3GB', '128GB', 20000, 3),
(3, 'Nokia 6.1', 'Nokia', '4GB', '64GB', 10000, 4),
(4, 'One Plus 9', 'One Plus', '4GB', '128GB', 50000, 1),
(5, 'iphone 12 pro max', 'Apple', '4GB', '128GB', 125000, 0),
(6, 'Samsung Galaxy note9', 'Samsung', '3GB', '64GB', 15000, 2),
(7, 'Nokia 7.1', 'Nokia', '4GB', '128GB', 20000, 4),
(8, 'iphone 11', 'Apple', '3GB', '128GB', 70000, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_phone`
--
ALTER TABLE `product_phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_phone`
--
ALTER TABLE `product_phone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
