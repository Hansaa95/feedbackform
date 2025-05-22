-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 06:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `feedback_type` varchar(50) NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback_type`, `submitted_at`) VALUES
(1, 'හොඳයි', '2025-05-20 16:28:19'),
(2, 'හොඳ නැහැ', '2025-05-20 16:36:06'),
(3, 'එපා උනා', '2025-05-20 16:36:12'),
(4, 'හොඳයි', '2025-05-20 16:36:13'),
(5, 'නියමයි', '2025-05-20 16:36:15'),
(6, 'හොඳ නැහැ', '2025-05-20 16:36:18'),
(7, 'හොඳයි', '2025-05-20 16:38:13'),
(8, 'නියමයි', '2025-05-20 16:38:16'),
(9, 'එපා උනා', '2025-05-20 16:38:20'),
(10, 'හොඳ නැහැ', '2025-05-20 16:38:23'),
(11, 'හොඳයි', '2025-05-20 16:40:06'),
(12, 'හොඳ නැහැ', '2025-05-20 16:40:08'),
(13, 'එපා උනා', '2025-05-20 16:40:13'),
(14, 'එපා උනා', '2025-05-20 16:41:14'),
(15, 'නියමයි', '2025-05-20 16:41:17'),
(16, 'එපා උනා', '2025-05-20 16:42:55'),
(17, 'හොඳ නැහැ', '2025-05-20 16:42:57'),
(18, 'නියමයි', '2025-05-20 16:43:00'),
(19, 'හොඳයි', '2025-05-20 16:43:03'),
(20, 'එපා උනා', '2025-05-20 16:43:05'),
(21, 'හොඳ නැහැ', '2025-05-20 16:43:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
