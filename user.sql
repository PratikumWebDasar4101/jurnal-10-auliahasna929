-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2018 at 12:17 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webprog`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nim` varchar(20) NOT NULL,
  `nama_depan` text NOT NULL,
  `nama_belakang` text NOT NULL,
  `kelas` text NOT NULL,
  `hobi` text NOT NULL,
  `genre_film` text NOT NULL,
  `tempat_wisata` text NOT NULL,
  `tanggal_lahir` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nim`, `nama_depan`, `nama_belakang`, `kelas`, `hobi`, `genre_film`, `tempat_wisata`, `tanggal_lahir`, `email`) VALUES
('111111', 'Endak', 'Konti', '41-02', 'makan,main', 'horror,action', 'lombok,bali', '2018-10-10', 'endak@gmail.com'),
('1234567890', 'kentang', 'goreng', '41-01', 'renang,makan', 'horror,action', 'lombok,bali', '2018-10-12', 'kentang@gmail.com'),
('6701174011', 'Syavana', 'Aldrey', '41-01', 'renang,makan', 'komedi,action', 'bali,bandung', '2018-10-11', 'aldreynoor@gmail.com'),
('999999', 'aldrey', 'noor', '41-01', 'makan,main', 'horror,action', 'lombok,bali', '2018-10-11', 'aley@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
