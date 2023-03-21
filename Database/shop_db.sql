-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2022 at 09:29 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(53, 'MENS SHOES DN 23XX, NEW PRODUCT', '250', 'shoe-1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `uname` varchar(150) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `name`, `dob`, `address`, `contact`, `uname`, `postal_code`, `password`) VALUES
(1, 'Maleesha Herath', '2022-11-09', 'Herath Villa', '0778236207', 'malisha27t@gmail.com', '71034', '123456789'),
(2, 'Nimesha Rangana', '2022-10-07', '72/3 Hospital road , Diyasunnatha', '+94778236207', 'nimesh@gmail.com', '25645', '123456789'),
(3, 'Lahiru', '2022-11-09', 'Kandy', '084598752', 'pathum@gmail.com', '25987', '123456789'),
(4, 'Prageeth', '2022-11-08', 'Alpitiya', '077968733', 'prageeth@gmail.com', '71034', '123456789'),
(5, 'Kalini', '2022-11-16', 'Matara', '0778236207', 'Kalini@gmail.com', '71034', '123456789'),
(8, 'Hasitha', '2022-11-23', 'matara', '078925662', 'Hasitha@gmail.com', '987456', '987654321');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `flat` int(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pin_code` int(255) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(5, 'MENS SHOES DN 23XX, NEW PRODUCT', '250', 'shoe-1.png'),
(4, 'MENS SHOES DN 23XX, NEW PRODUCT', '113', 'shoe-3.png'),
(6, 'WOMENS SHOES DN 23XX, NEW PRODUCT', '130', 'shoe-4.png'),
(7, 'WOMENS SHOES DN 23XX, NEW PRODUCT', '320', 'shoe-6.png'),
(8, 'MENS SHOES DN 23XX, NEW PRODUCT', '142', 'fashion-img-4.png'),
(9, 'MENS SHOES DN 23XX, NEW PRODUCT', '320', 'shoe-5.png'),
(10, 'WOMENS SHOES DN 23XX, NEW PRODUCT $ 150.00 $ 133.0', '120', 'shoe-8.png'),
(11, 'WOMENS SHOES DN 23XX, NEW PRODUCT', '123', 'shoe-7.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
