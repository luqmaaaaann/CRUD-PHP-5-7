-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 03:05 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `body`
--

CREATE TABLE `body` (
  `Id` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Rincian` varchar(255) NOT NULL,
  `Rincian1` varchar(255) NOT NULL,
  `Rincian2` varchar(255) NOT NULL,
  `Img` varchar(255) NOT NULL,
  `acc` enum('ya','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `body`
--

INSERT INTO `body` (`Id`, `Judul`, `Rincian`, `Rincian1`, `Rincian2`, `Img`, `acc`) VALUES
(1, 'Design', 'Ukuran: 146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)', 'Berat: 204 g (7.20 oz)', 'Build: Glass front and back, stainless steel frame', 'a8f26-bg-photo-1.jpg', 'ya'),
(2, 'Camera', 'Main Camera 12 MP, f/1.5, 26mm (wide), 1.9µm, dual pixel PDAF, sensor-shift OIS', '12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom', 'Dual Camera 12 MP, f/2.2, 23mm (wide), 1/3.6\"', '06d75-bg-photo-3.jpg', 'ya'),
(3, 'Battery', 'Li-Ion 3095 mAh, non-removable (12.11 Wh)', 'Fast charging (23W, unofficial rating), 50% in 30 min (advertised)', 'USB Power Delivery 2.0', '86d76-bg-photo-4.jpg', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `Id` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Isi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`Id`, `Judul`, `Isi`) VALUES
(1, 'Design', 'Design Iphone 13 Pro ini membawa kenangan masalalu seperti Iphone 5'),
(2, 'Camera', 'Camera Iphone 13 Pro memberikan hasil tangkapan yang jernih.'),
(3, 'Battery', 'Pengisian daya 50% dalam waktu 30 menit dengan adaptor 20 W');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `akses` enum('admin','penulis','reviewer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `akses`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'reviewer', '21232f297a57a5a743894a0e4a801fc3', 'reviewer'),
(3, 'penulis', '21232f297a57a5a743894a0e4a801fc3', 'penulis'),
(9, 'ayu', '<p>\r\n	21232f297a57a5a743894a0e4a801fc3</p>\r\n', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
