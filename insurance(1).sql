-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2017 at 07:32 AN
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `logo` varchar(70) NOT NULL,
  `location` text NOT NULL,
  `contact` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`c_id`, `c_name`, `logo`, `location`, `contact`) VALUES
(1, 'Star Assurance', 'ghana.png', 'Airport First, Accra', '+2335643789'),
(2, 'Enterprise Insurance', 'jamaica.png', 'Accra', '+2335678899'),
(3, 'Starlife', 'argentina.png', 'Kumasi', '+2334567878'),
(4, 'Vanguard Assurance', 'japan.png', 'Accra', '+23354675890'),
(5, 'SIC Insurance', 'ivory-coast.png', 'Accra', '+2333456789768');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `base_rate` float NOT NULL,
  `img` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_id`, `name`, `description`, `base_rate`, `img`) VALUES
(1, 1, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'record.png'),
(2, 2, 'car insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'like-2.png'),
(3, 5, 'home owners', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'house.png'),
(4, 3, 'vehicle insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'locked-1.png'),
(5, 4, 'train insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'hourglass-1.png'),
(6, 1, 'light bulb insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'idea.png'),
(7, 1, 'phone Insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'smartphone-7.png'),
(8, 1, ' Travel Insurance', 'Get our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for ', 0, 'worldwide-1.png'),
(9, 2, 'noise insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'volume-control-1.png'),
(10, 1, 'home owners ', 'efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba', 0, 'hold.png'),
(11, 3, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'clock.png'),
(12, 5, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'tie.png'),
(13, 4, 'home owners', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'owl.png');

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `id` int(2) NOT NULL,
  `name` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`id`, `name`) VALUES
(1, 'Motor Third Party'),
(2, 'Motor Third Party Fire & Theft Cover'),
(3, 'Motor Comprehensive Cover');

-- --------------------------------------------------------

--
-- Table structure for table `simulator_assets`
--

CREATE TABLE `simulator_assets` (
  `a_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `img` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simulator_assets`
--

INSERT INTO `simulator_assets` (`a_id`, `name`, `img`) VALUES
(1, 'House', 'home.jpg'),
(2, 'Car', 'school-bus.png'),
(3, 'Commercial Building', 'bank4.jpg'),
(4, 'land', 'farm.jpg'),
(5, 'school', 'school.png'),
(6, 'television', 'televisions.png'),
(7, 'violin', 'violin.png'),
(8, 'smart phone', 'phone-call-2.png'),
(9, 'documents', 'briefcase.png'),
(10, 'Laboratory', 'test-tubes.png');

-- --------------------------------------------------------

--
-- Table structure for table `simulator_policies`
--

CREATE TABLE `simulator_policies` (
  `p_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `p_name` varchar(64) NOT NULL,
  `descriptions` text NOT NULL,
  `pimg` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simulator_assets`
--
ALTER TABLE `simulator_assets`
  ADD PRIMARY KEY (`a_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `simulator_assets`
--
ALTER TABLE `simulator_assets`
  MODIFY `a_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
