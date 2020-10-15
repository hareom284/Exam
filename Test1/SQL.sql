-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2020 at 09:20 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SQL`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `bonousamount` int(11) NOT NULL,
  `bonousdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`id`, `bonousamount`, `bonousdate`, `staff_id`) VALUES
(1, 5000, '2020-10-15 07:18:26', 2),
(2, 30000, '2020-10-15 07:18:46', 7),
(3, 40000, '2020-10-15 07:19:05', 8),
(4, 45000, '2020-10-15 07:19:34', 2),
(5, 35000, '2020-10-15 07:20:02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Manager'),
(2, 'Executive'),
(3, 'Ass. Manager'),
(4, 'Lead'),
(5, 'HR'),
(6, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `idno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fathername` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salary` int(80) NOT NULL,
  `joindate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `departmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `idno`, `name`, `fathername`, `salary`, `joindate`, `departmentid`) VALUES
(1, '123456AB1', 'Ko Ko', 'U Kyaw', 1000000, '2020-10-15 07:03:06', 1),
(2, '123456AB2', 'Aye Aye', 'U Zaw Than Thnin', 200000, '2020-10-15 07:05:00', 6),
(3, '123456AB3', 'Myat Sandar Hlaing', 'U Soe Linn', 300000, '2020-10-15 07:06:39', 3),
(4, '123456AB4', 'Daw Htwe Nyo', 'U Nyut Win', 500000, '2020-10-15 07:07:58', 2),
(5, '123456AB5', 'Kay Thwe', 'U Wanna Htun', 450000, '2020-10-15 07:08:55', 4),
(6, '123456AB6', 'San Myint Aung', 'U Kyaw Min', 400000, '2020-10-15 07:09:55', 5),
(7, '123456AB7', 'Phyo Wai Paing', 'U Myint Aung', 150000, '2020-10-15 07:11:07', 6),
(8, '123456AB8', 'Thae Su Wai', 'U Thiha Aung', 200000, '2020-10-15 07:11:58', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
