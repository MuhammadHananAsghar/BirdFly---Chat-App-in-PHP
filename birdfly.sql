-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2021 at 01:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `birdfly`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(17, 955767987, 1376713986, 'hahah hanan asghar'),
(18, 955767987, 1376713986, 'whats up'),
(19, 955767987, 1376713986, 'hello'),
(20, 955767987, 1376713986, 'agddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
(21, 955767987, 1376713986, 'hello'),
(22, 1376713986, 955767987, 'waht are you doing'),
(23, 955767987, 1376713986, 'hello'),
(24, 955767987, 1376713986, 'hohohoh'),
(25, 955767987, 1376713986, 'hello'),
(26, 955767987, 1376713986, 'hello'),
(27, 955767987, 1376713986, 'hahaha'),
(28, 955767987, 1376713986, 'insert chat'),
(29, 955767987, 1376713986, 'ahll'),
(30, 1376713986, 955767987, 'hell'),
(31, 1376713986, 955767987, 'oo'),
(32, 955767987, 1376713986, 'gg'),
(33, 1168929314, 1558898990, 'hello'),
(34, 1558898990, 1168929314, 'how are you'),
(35, 1558898990, 1168929314, 'i am fine'),
(36, 1558898990, 1168929314, 'what about u'),
(37, 1168929314, 1558898990, 'i am also fine'),
(38, 1168929314, 1558898990, 'what are you doing'),
(39, 1558898990, 1168929314, 'nothing special'),
(40, 1558898990, 1168929314, 'taking rest on the bed'),
(41, 1558898990, 1168929314, 'what are you doing'),
(42, 1168929314, 1558898990, 'am also doing nothing special');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `image`, `status`) VALUES
(13, 1558898990, 'Muhammad', 'Hanan', 'hanan@hanan.com', '2b37661f80c1b0e51e5ed54781a7ff52', '1619609204wp6617268.jpg', 'Active now'),
(14, 1168929314, 'Muhammad', 'Amir', 'amir@amir.com', '63eefbd45d89e8c91f24b609f7539942', '1619609234ayeza-khan-1-1.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
