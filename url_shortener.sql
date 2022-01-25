-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 06:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url_shortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `run_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `name`, `run_on`) VALUES
(3, '/20220119054515-url', '2022-01-19 11:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `code`, `link`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'a68736c3', 'https://www.google.co.in/', '2022-01-19 08:57:39', '2022-01-19 08:57:39', NULL),
(2, '239ad606', 'http://www.google.co.in/', '2022-01-19 12:19:43', '2022-01-19 12:19:43', NULL),
(3, '79369170', 'https://www.google.com', '2022-01-19 13:25:45', '2022-01-19 13:25:45', NULL),
(4, '44ee0373', 'https://bootstrap-vue.org/docs/components/card', '2022-01-19 13:30:18', '2022-01-19 13:30:18', NULL),
(5, '63bf4823', 'http://localhost:3000/?code=44ee0373', '2022-01-19 13:30:47', '2022-01-19 13:30:47', NULL),
(6, '3ec5523f', 'https://www.youtube.com/watch?v=vjqmhj6wyza', '2022-01-19 13:31:05', '2022-01-19 13:31:05', NULL),
(7, '80d7690e', 'http://localhost:3000/?code=a68736c3', '2022-01-20 05:25:30', '2022-01-20 05:25:30', NULL),
(8, 'e65c3b71', 'http://localhost:3000/?code=80d7690e', '2022-01-20 05:28:13', '2022-01-20 05:28:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
