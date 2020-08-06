-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 06, 2020 at 01:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_online_code`
--

-- --------------------------------------------------------

--
-- Table structure for table `artis`
--

CREATE TABLE `artis` (
  `kd_artis` varchar(15) NOT NULL,
  `nm_artis` varchar(50) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `bayaran` int(20) DEFAULT NULL,
  `award` int(5) DEFAULT NULL,
  `negara` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artis`
--

INSERT INTO `artis` (`kd_artis`, `nm_artis`, `jk`, `bayaran`, `award`, `negara`) VALUES
('A001', 'ROBERT DOWNEY JR', 'PRIA', 0, 2, 'AS'),
('A002', 'ANGELINA JOLIE', 'WANITA', 70000000, 1, 'AS'),
('A003', 'JACKIE CHAN', 'PRIA', 20000000, 7, 'HK'),
('A004', 'JOE TASLIM', 'PRIA', 35000000, 1, 'ID'),
('A005', 'CHELSEA ISLAN', 'WANITA', 30000000, 0, 'ID');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `kd_film` varchar(100) NOT NULL,
  `nm_film` varchar(100) DEFAULT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `artis` varchar(15) DEFAULT NULL,
  `produser` varchar(15) DEFAULT NULL,
  `pendapatan` int(25) DEFAULT NULL,
  `nominasi` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`kd_film`, `nm_film`, `genre`, `artis`, `produser`, `pendapatan`, `nominasi`) VALUES
('F001', 'IRON MAN', 'G001', 'A001', 'PD01', 2000000000, 3),
('F002', 'IRON MAN 2', 'G001', 'A001', 'PD01', 1800000000, 2),
('F003', 'IRON MAN 3', 'G001', 'A001', 'PD01', 1200000000, 0),
('F004', 'AVENGER CIVIL WAR', 'G001', 'A001', 'PD01', 2000000000, 1),
('F005', 'SPIDERMEN HOME COMING', 'G001', 'A001', 'PD01', 1300000000, 0),
('F006', 'THE RAID', 'G001', 'A004', 'PD03', 800000000, 5),
('F007', 'FAST & FURIOUS', 'G001', 'A004', 'PD05', 830000000, 2),
('F008', 'HABIBIE DAN AINUN', 'G004', 'A005', 'PD03', 670000000, 4),
('F009', 'POLICE STORY', 'G001', 'A003', 'PD02', 700000000, 3),
('F010', 'POLICE STORY 2', 'G001', 'A003', 'PD02', 710000000, 1),
('F011', 'POLICE STORY 3', 'G001', 'A003', 'PD02', 615000000, 0),
('F012', 'RUSH HOUR', 'G003', 'A003', 'PD05', 695000000, 2),
('F013', 'KUNGFU PANDA', 'G003', 'A003', 'PD05', 923000000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `kd_genre` varchar(15) NOT NULL,
  `nm_genre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`kd_genre`, `nm_genre`) VALUES
('G001', 'ACTION'),
('G002', 'HORROR'),
('G003', 'COMEDY'),
('G004', 'DRAMA'),
('G005', 'THRILLER'),
('G006', 'FICTION');

-- --------------------------------------------------------

--
-- Table structure for table `produser`
--

CREATE TABLE `produser` (
  `kd_produser` varchar(15) NOT NULL,
  `nm_produser` varchar(100) DEFAULT NULL,
  `internasional` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produser`
--

INSERT INTO `produser` (`kd_produser`, `nm_produser`, `internasional`) VALUES
('PD01', 'MARVEL', 'YA'),
('PD02', 'HONGKONG CINEMA', 'YA'),
('PD03', 'RAPI FILM', 'TIDAK'),
('PD04', 'PARKIT', 'TIDAK'),
('PD05', 'PARAMOUNT PICTURE', 'YA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(4) NOT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `umur`, `kota`) VALUES
(1, 'Rizal Mutaqin', 23, 'Bandung'),
(2, 'Rizal Mutaqin', 23, 'Bandung'),
(3, 'Gugun', 24, 'Bandung'),
(4, 'Faturahman', 24, 'Gorontalo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artis`
--
ALTER TABLE `artis`
  ADD PRIMARY KEY (`kd_artis`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`kd_film`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`kd_genre`);

--
-- Indexes for table `produser`
--
ALTER TABLE `produser`
  ADD PRIMARY KEY (`kd_produser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
