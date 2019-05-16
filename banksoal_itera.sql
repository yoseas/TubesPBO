-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 09:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksoal_itera`
--

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` char(7) NOT NULL,
  `nama_mk` char(20) DEFAULT NULL,
  `prodi` char(30) DEFAULT NULL,
  `semester` int(2) NOT NULL,
  `kategori` varchar(3) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `prodi`, `semester`, `kategori`, `path`) VALUES
('GT1176', 'Pengantar Survey', 'Teknik Geomatika', 5, '', ''),
('IF2212', 'Basis Data', 'Teknik Informatika', 3, '', ''),
('IF666', 'Basis Data', 'Informatika', 4, 'UAS', 'D:\\Java repository\\Tubes\\src\\File\\UAS BASDAT.pdf'),
('IF777', 'Basis data', 'Teknik Informatika', 4, 'UTS', 'D:\\Java repository\\Tubes\\src\\File\\UTS BASDAT 14 MARET 2018.pdf'),
('ME221', 'Gambar Teknik', 'Teknik Mesin', 3, '', ''),
('TL122', 'Hidrologi', 'Teknik Lingkungan', 4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `kategori` char(20) NOT NULL,
  `nama_mk` char(30) NOT NULL,
  `prodi` char(30) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`kategori`, `nama_mk`, `prodi`, `semester`) VALUES
('Soal UAS', 'Sistem Operasi', 'Teknik Informatika', 4),
('Soal UTS', 'Kriptografi', 'Teknik Informatika', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`) VALUES
('', '', ''),
('abiim', 'iterajaya', 'abim@ymail.com'),
('admin', 'admin', 'admin123@gmail.com'),
('rbbhaskara', 'hiyahiya69', 'rbbhaskara@gmail.com'),
('yose', 'asdasda', 'yose@yahoo.com'),
('yoseas', '28061999', 'yoseas@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
