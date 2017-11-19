-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_siak
CREATE DATABASE IF NOT EXISTS `db_siak` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_siak`;

-- Dumping structure for table db_siak.table_nomer_rekening
CREATE TABLE IF NOT EXISTS `table_nomer_rekening` (
  `id_rekening` varchar(200) NOT NULL,
  `nama_rekening` varchar(200) NOT NULL,
  `kode_rekening` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_siak.table_nomer_rekening: ~4 rows (approximately)
/*!40000 ALTER TABLE `table_nomer_rekening` DISABLE KEYS */;
INSERT INTO `table_nomer_rekening` (`id_rekening`, `nama_rekening`, `kode_rekening`, `created_at`, `update_at`, `delete_at`) VALUES
	('7fb5c02b-2ed5-4daa-a731-747bf1cd0062', 'Kas', '1101', '2017-11-19 22:34:10', '2017-11-19 22:34:10', '0000-00-00 00:00:00'),
	('15c518fb-4bb0-4e91-9b70-b80bdf543cfa', 'BCA', '100011', '2017-11-20 01:25:25', '2017-11-20 01:25:25', '0000-00-00 00:00:00'),
	('4be9b85d-d350-4f8d-ae1a-6eadc466cc93', 'BNI', '100012', '2017-11-20 01:26:10', '2017-11-20 01:26:10', '0000-00-00 00:00:00'),
	('56cea04d-658f-412c-9e50-111bfbfbc29d', 'BRI', '100013', '2017-11-20 01:26:19', '2017-11-20 01:26:19', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `table_nomer_rekening` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
