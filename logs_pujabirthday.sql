-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql106.epizy.com
-- Generation Time: Nov 20, 2021 at 08:22 AM
-- Server version: 5.7.35-38
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26586500_roshan`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs_pujabirthday`
--

CREATE TABLE `logs_pujabirthday` (
  `id` int(11) NOT NULL,
  `type` varchar(256) NOT NULL,
  `value` varchar(256) NOT NULL,
  `remarks` varchar(256) NOT NULL,
  `ipaddress` varchar(256) NOT NULL,
  `os` varchar(256) NOT NULL,
  `browser` varchar(256) NOT NULL,
  `device` varchar(256) NOT NULL,
  `time` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_pujabirthday`
--

INSERT INTO `logs_pujabirthday` (`id`, `type`, `value`, `remarks`, `ipaddress`, `os`, `browser`, `device`, `time`) VALUES
(2, 'cake and foods', 'cake and foods by Puja Magar', 'Cake and foods section is active', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-04 23:48:44'),
(3, 'light the cake', 'light the cake by Puja Magar', 'Cake has been lightened by Puja Magar', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-04 23:49:17'),
(4, 'rating', 'rating by puja', 'PujaMagarlikedthewish!', '172.69.77.7', 'Android', 'Handheld Browser', 'Mobile', '2021-06-04 23:50:01'),
(5, 'Login', 'Loged in by puja magar', '', '172.69.77.21', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 06:54:26'),
(6, 'Starts here', 'Start Birthday by Puja Magar', 'Birthday has been started by Puja Magar', '172.69.77.13', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 06:54:46'),
(7, 'Login', 'Loged in by puja magar', '', '172.69.77.21', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 09:04:08'),
(8, 'Start Birthday', 'Start Birthday by Puja Magar', 'Birthday has been started by Puja Magar', '172.69.77.21', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 09:04:42'),
(9, 'cake and foods', 'cake and foods by Puja Magar', 'Cake and foods section is active', '172.69.77.21', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 09:04:45'),
(10, 'foods', 'foods by Puja Magar', ' Puja Magar has viewed the foods', '172.69.77.21', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 09:04:48'),
(11, 'See Dance', 'See Dance by Puja Magar', 'Dance has been viewed by Puja Magar', '172.69.77.9', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 09:04:50'),
(12, 'See GIF', 'See GIF by Puja Magar', 'Final GIF has been seen by Puja Magar', '172.69.77.9', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 09:04:53'),
(13, 'From here--', '------------', '------------------------', '--------', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 09:05:01'),
(14, 'Login', 'Loged in by puja magar', '', '172.69.77.13', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:14:28'),
(15, 'Start Birthday', 'Start Birthday by Puja Magar', 'Birthday has been started by Puja Magar', '172.69.77.13', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 12:14:41'),
(16, 'cake and foods', 'cake and foods by Puja Magar', 'Cake and foods section is active', '172.69.77.13', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:14:50'),
(17, 'light the cake', 'light the cake by Puja Magar', 'Cake has been lightened by Puja Magar', '172.69.77.13', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:14:54'),
(18, 'foods', 'foods by Puja Magar', ' Puja Magar has viewed the foods', '172.69.77.12', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:14:56'),
(19, 'See Dance', 'See Dance by Puja Magar', 'Dance has been viewed by Puja Magar', '172.69.77.13', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:14:59'),
(20, 'See GIF', 'See GIF by Puja Magar', 'Final GIF has been seen by Puja Magar', '172.69.77.13', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:15:04'),
(21, 'rating', 'rating by puja', 'PujaMagarlikedthewish!', '172.69.77.15', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:15:14'),
(22, 'rating', 'rating by puja', 'PujaMagarlikedthewish!', '172.69.77.15', 'Realme', 'Handheld Browser', 'Mobile', '2021-06-05 12:15:16'),
(23, '----------', '------------------', '', '172.69.77.21', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 13:22:48'),
(24, 'Start Birthday', 'Start Birthday by Puja Magar', 'Birthday has been started by Puja Magar', '172.69.77.3', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 13:33:11'),
(25, 'Start Birthday', 'Start Birthday by Puja Magar', 'Birthday has been started by Puja Magar', '172.69.77.21', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 13:46:23'),
(26, 'cake and foods', 'cake and foods by Puja Magar', 'Cake and foods section is active', '172.69.77.7', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 14:39:19'),
(27, 'light the cake', 'light the cake by Puja Magar', 'Cake has been lightened by Puja Magar', '172.69.77.7', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 14:39:23'),
(28, 'foods', 'foods by Puja Magar', ' Puja Magar has viewed the foods', '172.69.77.3', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 14:39:29'),
(29, 'See Dance', 'See Dance by Puja Magar', 'Dance has been viewed by Puja Magar', '172.69.77.15', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 14:39:41'),
(30, 'See GIF', 'See GIF by Puja Magar', 'Final GIF has been seen by Puja Magar', '172.69.77.15', 'Windows 10', 'Chrome', 'Computer', '2021-06-05 14:39:52'),
(31, 'Login', 'Loged in by puja magar', '', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:20:17'),
(32, 'Start Birthday', 'Start Birthday by Puja Magar', 'Birthday has been started by Puja Magar', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:20:25'),
(33, 'cake and foods', 'cake and foods by Puja Magar', 'Cake and foods section is active', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:20:33'),
(34, 'light the cake', 'light the cake by Puja Magar', 'Cake has been lightened by Puja Magar', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:20:35'),
(35, 'foods', 'foods by Puja Magar', ' Puja Magar has viewed the foods', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:20:41'),
(36, 'See Dance', 'See Dance by Puja Magar', 'Dance has been viewed by Puja Magar', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:20:50'),
(37, 'See GIF', 'See GIF by Puja Magar', 'Final GIF has been seen by Puja Magar', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:21:19'),
(38, 'light the cake', 'light the cake by Puja Magar', 'Cake has been lightened by Puja Magar', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:22:30'),
(39, 'light the cake', 'light the cake by Puja Magar', 'Cake has been lightened by Puja Magar', '172.69.77.9', 'Android', 'Handheld Browser', 'Mobile', '2021-06-05 15:22:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs_pujabirthday`
--
ALTER TABLE `logs_pujabirthday`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs_pujabirthday`
--
ALTER TABLE `logs_pujabirthday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
