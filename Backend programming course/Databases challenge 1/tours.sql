-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 14, 2022 at 11:57 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tours`
--

-- --------------------------------------------------------

--
-- Table structure for table `tour_destination`
--

CREATE TABLE `tour_destination` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `phone_number` int(4) NOT NULL,
  `address` varchar(255) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `postal_code` smallint(6) NOT NULL,
  `chaffeur` tinyint(1) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `country` char(1) DEFAULT NULL,
  `column_before_column` varchar(300) DEFAULT NULL,
  `rooms` int(11) DEFAULT NULL,
  `suites` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tour_destination`
--

INSERT INTO `tour_destination` (`id`, `hotel_name`, `phone_number`, `address`, `rating`, `postal_code`, `chaffeur`, `enquiry_id`, `country`, `column_before_column`, `rooms`, `suites`) VALUES
(1, 'twelve apostles', 987898665, 'Victoria Road, Camps Bay, Cape Town, South Africa', 5, 8005, 1, 13, NULL, NULL, 0, 0),
(2, 'twelve apostles', 878764256, 'Victoria Road, Camps Bay, Cape Town, South Africa', 5, 8005, 1, 105, NULL, NULL, 0, 0),
(3, 'Manabay', 217896537, 'Sunny Sea Side, Constantia', 5, 7990, 0, 14, NULL, NULL, 0, 0),
(4, 'Silo Hotel', 729073808, 'Waterfront Dock, Foreshore', 5, 8001, 1, 23, NULL, NULL, 0, 0),
(5, 'Mojojo', 278987378, '3 Latourne Str, Silvertree', 3, 8005, 0, 197, NULL, NULL, 0, 0),
(6, 'Raddisson WHite', 878764256, '18 Long Str, Cape town', 4, 8000, 0, 55, NULL, NULL, 0, 0),
(7, 'Mojojo', 877637827, '3 Latourne Str, Silvertree', 3, 8005, 0, 5, NULL, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tour_destination`
--
ALTER TABLE `tour_destination`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_value` (`enquiry_id`),
  ADD UNIQUE KEY `enquiry_id_index` (`enquiry_id`),
  ADD KEY `room_suite_single_index` (`rooms`,`suites`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
