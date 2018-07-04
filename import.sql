-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 03, 2018 at 11:09 PM
-- Server version: 5.7.22
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name_auth` varchar(100) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name_cat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name_cat`) VALUES
(1, '{\"screen\": \"50 inch\", \"resolution\": \"2048 x 1152 pixels\", \"ports\": {\"hdmi\": 1, \"usb\": 3}, \"speakers\": {\"left\": \"10 watt\", \"right\": \"10 watt\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `Id` tinyint(3) UNSIGNED NOT NULL,
  `Item` varchar(100) NOT NULL,
  `Shop_name` varchar(100) NOT NULL,
  `Rating` varchar(100) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Special_price` varchar(100) NOT NULL,
  `Image_url` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`Id`, `Item`, `Shop_name`, `Rating`, `Price`, `Special_price`, `Image_url`, `tag`, `DateUpdated`) VALUES
(1, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$29.50', '$29.50', '/assets/products/ph_britva.jpg', '', '2018-07-02 23:18:05'),
(2, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$66.50', '$66.50', '/assets/products/shower.jpg', '', '2018-07-02 23:18:56'),
(3, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$29.50', '$29.50', '/assets/products/ph_britva.jpg', '', '2018-07-02 23:18:57'),
(4, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$29.50', '$29.50', '/assets/products/ph_britva.jpg', '', '2018-07-02 23:49:52'),
(5, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-02 23:49:56'),
(6, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$39.50', '$39.50', '/assets/products/ph_sound.jpg', '', '2018-07-02 23:49:56'),
(7, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$66.50', '$66.50', '/assets/products/shower.jpg', '', '2018-07-02 23:49:57'),
(8, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 11:25:03'),
(9, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 11:25:05'),
(13, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 11:26:54'),
(14, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 12:10:39'),
(15, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 12:25:52'),
(16, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 12:47:30'),
(17, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 12:47:37'),
(18, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 12:48:36'),
(19, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$400.99', '$299.50', '/assets/products/ph_apple.jpg', '', '2018-07-03 13:11:28'),
(20, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$29.50', '$29.50', '/assets/products/ph_britva.jpg', '', '2018-07-03 14:07:26'),
(21, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '799.50', '$799.50', '/assets/products/ph_macbook.jpg', '', '2018-07-03 14:41:28'),
(22, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '799.50', '$799.50', '/assets/products/ph_macbook.jpg', '', '2018-07-03 20:20:14'),
(23, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$39.50', '$39.50', '/assets/products/ph_sound.jpg', '', '2018-07-03 20:34:06'),
(31, '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '', '2018-07-03 21:15:41'),
(32, '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '', '2018-07-03 21:16:34'),
(33, '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '', '2018-07-03 21:17:19'),
(34, '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '', '2018-07-03 21:17:21'),
(35, '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '', '2018-07-03 21:17:33'),
(36, 'Smartphone Samsung Galaxy S9 PLUS (Ultraviolet)', 'SUPERSHOP', '', '$66.50', '$66.50', '/assets/products/shower.jpg', '', '2018-07-03 22:47:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
