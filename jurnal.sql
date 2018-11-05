-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 04:05 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jurnal`
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
('6701170000', 'Amine', 'Gulse', 'D3S1-4101', 'nonton', 'drama', '', '1993-08-05', 'gulseul@gmail.com'),
('6701170080', 'Mesut', 'Ozil', 'D3SI4102', 'nonton', 'action', 'bandung', '1988-10-14', 'ozil@gmail.com'),
('6701170088', 'Aulia', 'Hasna', 'D3S1-4101', 'Baca', 'komedi', 'bandung', '1999-11-25', 'auliahasna929@gmail.com'),
('6701174011', 'Syavana', 'Aldrey', '41-01', 'renang,makan', 'komedi,action', 'bali,bandung', '2018-10-11', 'aldreynoor@gmail.com'),
('999999', 'aldrey', 'noor', '41-01', 'makan,main', 'horror,action', 'lombok,bali', '2018-10-11', 'aley@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `webprog`
--

CREATE TABLE `webprog` (
  `id` int(10) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `nim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webprog`
--

INSERT INTO `webprog` (`id`, `username`, `password`, `nim`) VALUES
(12, 'Aulia', '67834', '6701170088'),
(13, 'Amine', '1010', '6701170000'),
(14, 'Ozil', '1010', '6701170080');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `webprog`
--
ALTER TABLE `webprog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `webprog`
--
ALTER TABLE `webprog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `webprog`
--
ALTER TABLE `webprog`
  ADD CONSTRAINT `webprog_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `user` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
