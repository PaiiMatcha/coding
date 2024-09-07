-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2024 at 11:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `test_database`
--

CREATE TABLE `test_database` (
  `name` varchar(255) NOT NULL,
  `amount` int(10) NOT NULL,
  `data` date NOT NULL,
  `kas_type` enum('k','d') NOT NULL,
  `description` text NOT NULL,
  `kas_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `test_database`
--

INSERT INTO `test_database` (`name`, `amount`, `data`, `kas_type`, `description`, `kas_id`) VALUES
('hgdgdcrut', 77, '0007-07-07', 'd', '7', 1),
('hgdgdcrut', 33, '0003-03-03', 'd', '3', 2),
('Edo', 100000, '0005-05-05', 'k', 'Berhasil', 3),
('Husain', 12345, '0011-11-11', 'd', 'Gagal', 4),
('ASEP', 9000, '0008-08-08', 'k', 'Berhasil\r\n', 5),
('Nadeo', 22, '0022-02-22', 'k', '2', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test_database`
--
ALTER TABLE `test_database`
  ADD PRIMARY KEY (`kas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test_database`
--
ALTER TABLE `test_database`
  MODIFY `kas_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
