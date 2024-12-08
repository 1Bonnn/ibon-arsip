-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 08:42 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifiles_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `hp` text NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` text NOT NULL,
  `level` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`id_user`, `nama`, `email`, `hp`, `username`, `password`, `level`, `image`, `date_created`, `is_active`) VALUES
(36, 'Donny Kurniawan', 'ata.adonia@gmail.com', '08995625604', 'admin', '$2y$10$BvwR9yx/Qz8akN2kDos6.OM.JKNZMTyArEY0BqwNgEzEUVYTlfiui', 'Admin', 'default.jpg', '2020-02-18', 1),
(38, 'Donny Kurniawan', 'ata.adonia@gmail.com', '08995625604', 'user', '$2y$10$Ydr0pnUNagzO56BYFW5ecOw00c2rks50fjWcDPzlf3ubPTNiDYo6q', 'User', 'default.jpg', '2020-04-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_file`
--

CREATE TABLE `tb_file` (
  `id_file` int(11) NOT NULL,
  `sess_id` int(11) NOT NULL,
  `tgl_upload` date NOT NULL,
  `nama_dokumen` text NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_file`
--

INSERT INTO `tb_file` (`id_file`, `sess_id`, `tgl_upload`, `nama_dokumen`, `file`) VALUES
(1, 38, '2020-07-13', 'Tes', 'Company_Name.docx'),
(2, 38, '2020-07-13', 'tes45', 'Email_Newsletter.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_input`
--

CREATE TABLE `tb_input` (
  `id_input` int(11) NOT NULL,
  `asal` text NOT NULL,
  `tgl_input_asal` date NOT NULL,
  `no_nama_input` text NOT NULL,
  `nama_input` text NOT NULL,
  `deskripsi` text NOT NULL,
  `file_input` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_input`
--

INSERT INTO `tb_input` (`id_input`, `asal`, `tgl_input_asal`, `no_nama_input`, `nama_input`, `deskripsi`, `file_input`) VALUES
(2, 'Kudus', '2020-07-12', '12345678', 'Donny Kurniawan', 'Saya coba dan mencoba', 'Email_Newsletter.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_output`
--

CREATE TABLE `tb_output` (
  `id_output` int(11) NOT NULL,
  `asal_output` text NOT NULL,
  `tgl_output_asal` date NOT NULL,
  `no_nama_output` text NOT NULL,
  `nama_output` text NOT NULL,
  `deskripsi_output` text NOT NULL,
  `file_output` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_output`
--

INSERT INTO `tb_output` (`id_output`, `asal_output`, `tgl_output_asal`, `no_nama_output`, `nama_output`, `deskripsi_output`, `file_output`) VALUES
(3, 'Semarang', '2020-07-12', '121212121', 'Ratna Damayanti', 'Ini Untuk mencoba Aplikasi', 'Company_Name.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_scan`
--

CREATE TABLE `tb_scan` (
  `id_scan` int(11) NOT NULL,
  `sess_id_scan` int(11) NOT NULL,
  `tgl_upload_scan` date NOT NULL,
  `nama_dokumen_scan` text NOT NULL,
  `scan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_scan`
--

INSERT INTO `tb_scan` (`id_scan`, `sess_id_scan`, `tgl_upload_scan`, `nama_dokumen_scan`, `scan`) VALUES
(3, 38, '2020-07-12', 'Gambar 1', 'avatar04.png'),
(4, 38, '2020-07-15', 'Gambar2', 'avatar5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_file`
--
ALTER TABLE `tb_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `tb_input`
--
ALTER TABLE `tb_input`
  ADD PRIMARY KEY (`id_input`);

--
-- Indexes for table `tb_output`
--
ALTER TABLE `tb_output`
  ADD PRIMARY KEY (`id_output`);

--
-- Indexes for table `tb_scan`
--
ALTER TABLE `tb_scan`
  ADD PRIMARY KEY (`id_scan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_file`
--
ALTER TABLE `tb_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_input`
--
ALTER TABLE `tb_input`
  MODIFY `id_input` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_output`
--
ALTER TABLE `tb_output`
  MODIFY `id_output` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_scan`
--
ALTER TABLE `tb_scan`
  MODIFY `id_scan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
