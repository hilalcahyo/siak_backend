-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2017 at 06:58 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
('09efc638-a281-4a73-90d0-ee9700faba99', '012dc5f8-539c-4116-ba1e-f621e059d783', 900, 'HJiYNaAYAM_MABOK_2'),
('0e46f9f8-c037-4bdc-9265-d92cbc25a54b', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK'),
('708a290a-7502-4499-8120-13cefbd2065f', '012dc5f8-539c-4116-ba1e-f621e059d783', 900, 'HJiYNaAYAM_MABOK_2'),
('7f131cdd-b26d-4c17-8975-1beb712b3ca3', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaBBB'),
('8816bd01-8d0b-4d1b-a989-4d59aaa31ea7', '012dc5f8-539c-4116-ba1e-f621e059d783', 900, 'HJiYNaAYAM_MABOK_2'),
('ae186322-5108-4548-9307-f392a6ef846f', '012dc5f8-539c-4116-ba1e-f621e059d783', 123432324, ''),
('b2496111-cec6-4518-9d03-ba70bb065d4a', '012dc5f8-539c-4116-ba1e-f621e059d783', 900, 'HJiYNaAYAM_MABOK_2'),
('blabladebet', '7fb5c02b-2ed5-4daa-a731-747bf1cd0062', 1000000, 'A10'),
('d44ba536-3dc1-4a12-8f24-df044e8bd50a', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK_2');

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
('0e46f9f8-c037-4bdc-9265-d92cbc25a54b', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK'),
('14cc4038-06b5-454d-9b49-444f22e2abdf', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaYgG'),
('1e743aa1-6ce7-4f1c-97ca-8d031b0726f9', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK_2'),
('69bb575c-6e5f-41e7-91c0-a35d55ebcd97', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK_2'),
('775e7a6b-b45f-49c3-bf89-8a81abef2e65', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK_2'),
('7f131cdd-b26d-4c17-8975-1beb712b3ca3', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaBBB'),
('a46447fc-5d74-43ca-9a42-e48af3da2546', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaYYY'),
('abd04463-9414-4d15-befc-221755a569ff', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK_2'),
('b10cb73b-a090-42b1-b69d-cb3e6959bbf3', '420970ea-ade1-4c79-a941-15222f8c7a58', 900, 'HJiYNaAYAM_MABOK_2'),
('blablakredit', '15c518fb-4bb0-4e91-9b70-b80bdf543cfa', 1000000, 'A10'),
('fbadb20c-3581-4230-818b-179c652daff0', '0513cbc5-17b4-4928-bcda-752cdc7cc8de', 233232324324, '');

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
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_jurnal_umum_main`
--

INSERT INTO `table_jurnal_umum_main` (`id_jurnal_umum_main`, `id_jurnal_umum_debet`, `id_jurnal_umum_kredit`, `id_keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('19665225-eba2-497c-9fe3-daff2fbdccc9', 'b2496111-cec6-4518-9d03-ba70bb065d4a', '775e7a6b-b45f-49c3-bf89-8a81abef2e65', '222ba568-9ef1-4db6-96f6-86109a357ea5', '2017-11-27 17:31:29', '2017-11-27 17:31:29', NULL),
('3328b8f7-1898-4f58-adf8-2a3222f27e04', 'd44ba536-3dc1-4a12-8f24-df044e8bd50a', '69bb575c-6e5f-41e7-91c0-a35d55ebcd97', '222ba568-9ef1-4db6-96f6-86109a357ea5', '2017-11-27 17:05:32', '2017-11-27 17:05:32', NULL),
('60ec622e-09cb-4620-9479-2f0a05f3a232', '09efc638-a281-4a73-90d0-ee9700faba99', 'abd04463-9414-4d15-befc-221755a569ff', '222ba568-9ef1-4db6-96f6-86109a357ea5', '2017-11-27 17:24:35', '2017-11-27 17:24:35', NULL),
('74030536-3910-44b7-8c6d-0b9013662c53', '8816bd01-8d0b-4d1b-a989-4d59aaa31ea7', '1e743aa1-6ce7-4f1c-97ca-8d031b0726f9', '222ba568-9ef1-4db6-96f6-86109a357ea5', '2017-11-27 17:23:04', '2017-11-27 17:23:04', NULL),
('asfd;njklonja;sdfknj;fdsaknjdsaf', '0e46f9f8-c037-4bdc-9265-d92cbc25a54b', '7f131cdd-b26d-4c17-8975-1beb712b3ca3', '05a34411-4433-42dc-96dc-a1cf2fd18648', '2017-11-27 17:04:42', '2017-11-27 17:04:42', NULL),
('c96ef866-50f4-4b67-95b2-0b3116c09353', 'ae186322-5108-4548-9307-f392a6ef846f', 'fbadb20c-3581-4230-818b-179c652daff0', 'b90bfbb4-266f-4d04-aa1e-6d38881c58f4', '2017-11-27 17:35:28', '2017-11-27 17:35:28', NULL),
('d6e6de72-c024-402d-afcc-7dbaad8eb0d3', '708a290a-7502-4499-8120-13cefbd2065f', 'b10cb73b-a090-42b1-b69d-cb3e6959bbf3', '222ba568-9ef1-4db6-96f6-86109a357ea5', '2017-11-27 17:24:34', '2017-11-27 17:24:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_keterangan`
--

CREATE TABLE `table_keterangan` (
  `id_keterangan` varchar(250) NOT NULL,
  `deskripsi_keterangan` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_keterangan`
--

INSERT INTO `table_keterangan` (`id_keterangan`, `deskripsi_keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('05a34411-4433-42dc-96dc-a1cf2fd18648', 'Jual JasaTunai', '2017-11-26 19:28:31', '2017-11-26 19:28:31', 0),
('222ba568-9ef1-4db6-96f6-86109a357ea5', 'Beli Peralatan(Komputer,Rak, Kursi, Meja, Printer) Tunai', '2017-11-26 18:22:45', '2017-11-26 18:22:45', 0),
('3cfa3644-eccc-49af-a111-740b1dc92dc6', 'Bayar Listrik', '2017-11-27 07:48:57', '2017-11-27 07:48:57', 0),
('883b1178-9e0f-4574-a2e8-4b2d157149d1', 'Modal Usaha(Setoran Tunai)', '2017-11-26 17:38:21', '2017-11-26 17:38:21', 0),
('b90bfbb4-266f-4d04-aa1e-6d38881c58f4', 'beli tank', '2017-11-27 14:47:16', '2017-11-27 14:47:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_nomer_rekening`
--

CREATE TABLE `table_nomer_rekening` (
  `id_rekening` varchar(200) NOT NULL,
  `nama_rekening` varchar(200) NOT NULL,
  `kode_rekening` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_nomer_rekening`
--

INSERT INTO `table_nomer_rekening` (`id_rekening`, `nama_rekening`, `kode_rekening`, `created_at`, `updated_at`, `deleted_at`) VALUES
('012dc5f8-539c-4116-ba1e-f621e059d783', 'bni46', 'aasdfadsfdas', '2017-11-27 10:51:30', '2017-11-27 10:51:30', 0),
('0513cbc5-17b4-4928-bcda-752cdc7cc8de', 'BNI Britama', '103294329', '2017-11-27 10:52:57', '2017-11-27 10:52:57', 0),
('15c518fb-4bb0-4e91-9b70-b80bdf543cfa', 'BCA 2', '8876', '2017-11-19 18:25:25', '2017-11-20 14:41:19', 0),
('420970ea-ade1-4c79-a941-15222f8c7a58', 'Bank Jabar', '1090191', '2017-11-27 14:12:07', '2017-11-27 14:12:07', 0),
('7fb5c02b-2ed5-4daa-a731-747bf1cd0062', 'Kas', '1101', '2017-11-19 15:34:10', '2017-11-19 15:34:10', 0),
('8196e965-d7ea-4e4d-8e11-a0d5f831cdb7', 'BRI BRIZZI', '1000', '2017-11-27 11:12:17', '2017-11-27 11:12:17', 0),
('868f33b0-7bcb-4c68-9cfd-46b45d72e30b', '111', '100012', '2017-11-27 11:17:34', '2017-11-27 11:17:34', 0),
('a6780581-6295-4cbc-ad36-8107ca489181', 'BRI', '100013', '2017-11-27 10:38:55', '2017-11-27 10:38:55', 0),
('fb88d1de-133b-4e63-8455-9bc21c1a333a', 'z', '10001', '2017-11-27 11:16:48', '2017-11-27 11:16:48', 0);

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
  ADD KEY `id_jurnal_umum_kredit` (`id_jurnal_umum_kredit`),
  ADD KEY `table_jurnal_umum_main_ibfk_3` (`id_keterangan`);

--
-- Indexes for table `table_keterangan`
--
ALTER TABLE `table_keterangan`
  ADD PRIMARY KEY (`id_keterangan`);

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
  ADD CONSTRAINT `table_jurnal_umum_main_ibfk_2` FOREIGN KEY (`id_jurnal_umum_kredit`) REFERENCES `jurnal_umum_kredit` (`id_jurnal_umum_kredit`),
  ADD CONSTRAINT `table_jurnal_umum_main_ibfk_3` FOREIGN KEY (`id_keterangan`) REFERENCES `table_keterangan` (`id_keterangan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
