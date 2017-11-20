-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 06:55 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siak`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_umum_debet`
--

CREATE TABLE `jurnal_umum_debet` (
  `id_jurnal_umum_debet` varchar(250) NOT NULL,
  `id_rekening` varchar(250) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `kode_jurnal_umum` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_umum_debet`
--

INSERT INTO `jurnal_umum_debet` (`id_jurnal_umum_debet`, `id_rekening`, `jumlah`, `kode_jurnal_umum`) VALUES
('blabladebet', '7fb5c02b-2ed5-4daa-a731-747bf1cd0062', 1000000, 'A10');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_umum_kredit`
--

CREATE TABLE `jurnal_umum_kredit` (
  `id_jurnal_umum_kredit` varchar(250) NOT NULL,
  `id_rekening` varchar(250) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `kode_jurnal_umum` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_umum_kredit`
--

INSERT INTO `jurnal_umum_kredit` (`id_jurnal_umum_kredit`, `id_rekening`, `jumlah`, `kode_jurnal_umum`) VALUES
('blablakredit', '15c518fb-4bb0-4e91-9b70-b80bdf543cfa', 1000000, 'A10');

-- --------------------------------------------------------

--
-- Table structure for table `table_jurnal_umum_main`
--

CREATE TABLE `table_jurnal_umum_main` (
  `id_jurnal_umum_main` varchar(250) NOT NULL,
  `id_jurnal_umum_debet` varchar(250) NOT NULL,
  `id_jurnal_umum_kredit` varchar(250) NOT NULL,
  `id_keterangan` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_jurnal_umum_main`
--

INSERT INTO `table_jurnal_umum_main` (`id_jurnal_umum_main`, `id_jurnal_umum_debet`, `id_jurnal_umum_kredit`, `id_keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('blabla_main', 'blabladebet', 'blablakredit', 'K10', '2017-11-20 16:56:13', '2017-11-20 16:56:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_nomer_rekening`
--

CREATE TABLE `table_nomer_rekening` (
  `id_rekening` varchar(200) NOT NULL,
  `nama_rekening` varchar(200) NOT NULL,
  `kode_rekening` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_nomer_rekening`
--

INSERT INTO `table_nomer_rekening` (`id_rekening`, `nama_rekening`, `kode_rekening`, `created_at`, `update_at`, `delete_at`) VALUES
('15c518fb-4bb0-4e91-9b70-b80bdf543cfa', 'BCA 2', '8876', '2017-11-19 18:25:25', '2017-11-20 14:41:19', '0000-00-00 00:00:00'),
('7fb5c02b-2ed5-4daa-a731-747bf1cd0062', 'Kas', '1101', '2017-11-19 15:34:10', '2017-11-19 15:34:10', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurnal_umum_debet`
--
ALTER TABLE `jurnal_umum_debet`
  ADD PRIMARY KEY (`id_jurnal_umum_debet`),
  ADD KEY `id_rekening` (`id_rekening`);

--
-- Indexes for table `jurnal_umum_kredit`
--
ALTER TABLE `jurnal_umum_kredit`
  ADD PRIMARY KEY (`id_jurnal_umum_kredit`),
  ADD KEY `id_rekening` (`id_rekening`);

--
-- Indexes for table `table_jurnal_umum_main`
--
ALTER TABLE `table_jurnal_umum_main`
  ADD PRIMARY KEY (`id_jurnal_umum_main`),
  ADD KEY `id_jurnal_umum_debet` (`id_jurnal_umum_debet`),
  ADD KEY `id_jurnal_umum_kredit` (`id_jurnal_umum_kredit`);

--
-- Indexes for table `table_nomer_rekening`
--
ALTER TABLE `table_nomer_rekening`
  ADD PRIMARY KEY (`id_rekening`),
  ADD UNIQUE KEY `kode_rekening` (`kode_rekening`),
  ADD UNIQUE KEY `nama_rekening` (`nama_rekening`),
  ADD UNIQUE KEY `id_rekening` (`id_rekening`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jurnal_umum_debet`
--
ALTER TABLE `jurnal_umum_debet`
  ADD CONSTRAINT `jurnal_umum_debet_ibfk_1` FOREIGN KEY (`id_rekening`) REFERENCES `table_nomer_rekening` (`id_rekening`);

--
-- Constraints for table `jurnal_umum_kredit`
--
ALTER TABLE `jurnal_umum_kredit`
  ADD CONSTRAINT `jurnal_umum_kredit_ibfk_1` FOREIGN KEY (`id_rekening`) REFERENCES `table_nomer_rekening` (`id_rekening`);

--
-- Constraints for table `table_jurnal_umum_main`
--
ALTER TABLE `table_jurnal_umum_main`
  ADD CONSTRAINT `table_jurnal_umum_main_ibfk_1` FOREIGN KEY (`id_jurnal_umum_debet`) REFERENCES `jurnal_umum_debet` (`id_jurnal_umum_debet`),
  ADD CONSTRAINT `table_jurnal_umum_main_ibfk_2` FOREIGN KEY (`id_jurnal_umum_kredit`) REFERENCES `jurnal_umum_kredit` (`id_jurnal_umum_kredit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
