-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 05:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uefa_2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  `group_id` char(1) DEFAULT NULL,
  `wins` int(11) DEFAULT 0,
  `draws` int(11) DEFAULT 0,
  `losses` int(11) DEFAULT 0,
  `points` int(11) GENERATED ALWAYS AS (`wins` * 3 + `draws`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `group_id`, `wins`, `draws`, `losses`) VALUES
(1, 'Inggris', '3', 1, 2, 0),
(2, 'Denmark', '3', 1, 0, 2),
(3, 'Slovenia', '3', 1, 0, 2),
(4, 'Serbia', '3', 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` char(1) NOT NULL,
  `group_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
('A', 'Group A'),
('B', 'Group B'),
('C', 'Group C'),
('D', 'Group D');

-- --------------------------------------------------------

--
-- Table structure for table `klasemen_uefa`
--

CREATE TABLE `klasemen_uefa` (
  `id` int(11) NOT NULL,
  `nama_group` varchar(10) NOT NULL,
  `nama_negara` varchar(100) NOT NULL,
  `jumlah_menang` int(11) NOT NULL,
  `jumlah_seri` int(11) NOT NULL,
  `jumlah_kalah` int(11) NOT NULL,
  `jumlah_poin` int(11) NOT NULL,
  `nama_operator` varchar(100) NOT NULL,
  `nim_mahasiswa` varchar(50) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klasemen_uefa`
--

INSERT INTO `klasemen_uefa` (`id`, `nama_group`, `nama_negara`, `jumlah_menang`, `jumlah_seri`, `jumlah_kalah`, `jumlah_poin`, `nama_operator`, `nim_mahasiswa`, `tanggal_input`) VALUES
(3, 'C', 'Inggris', 1, 2, 0, 5, 'Dinda', '201011401432', '2024-07-02 14:34:33'),
(4, 'C', 'Denmark', 0, 3, 0, 3, 'Nur ', '201011401432', '2024-07-02 14:35:03'),
(5, 'C', 'Slovenia', 0, 3, 0, 3, 'Ishma', '201011401432', '2024-07-02 14:35:35'),
(6, 'C', 'Serbia', 0, 2, 1, 2, 'Dinda', '201011401432', '2024-07-02 14:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nim`, `password`) VALUES
(1, '201011401432', 'dinda123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `klasemen_uefa`
--
ALTER TABLE `klasemen_uefa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `klasemen_uefa`
--
ALTER TABLE `klasemen_uefa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
