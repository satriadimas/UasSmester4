-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table antrian.antrian
CREATE TABLE IF NOT EXISTS `antrian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `waktu_panggil` datetime DEFAULT NULL,
  `waktu_selesai` varchar(50) DEFAULT NULL,
  `pelayanan_id` int(11) NOT NULL,
  `loket_id` int(11) NOT NULL,
  `antrian_last` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- Dumping data for table antrian.antrian: ~6 rows (approximately)
/*!40000 ALTER TABLE `antrian` DISABLE KEYS */;
REPLACE INTO `antrian` (`id`, `tanggal`, `status`, `waktu_panggil`, `waktu_selesai`, `pelayanan_id`, `loket_id`, `antrian_last`) VALUES
	(1, '22-07-14 08:47:19', 'selesai', NULL, NULL, 1, 1, NULL),
	(2, '22-07-14 08:47:19', 'selesai', NULL, NULL, 1, 1, NULL),
	(3, '22-07-14 08:50:56', 'selesai', NULL, NULL, 2, 1, NULL),
	(4, '22-07-14 08:50:56', 'berlansung', NULL, NULL, 2, 1, NULL),
	(5, '22-07-14 08:51:42', 'berlansung', NULL, NULL, 3, 1, NULL),
	(6, '22-07-14 08:51:42', 'berlansung', NULL, NULL, 3, 1, NULL);
/*!40000 ALTER TABLE `antrian` ENABLE KEYS */;

-- Dumping structure for table antrian.loket
CREATE TABLE IF NOT EXISTS `loket` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `pelayanan_id` int(11) NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table antrian.loket: ~4 rows (approximately)
/*!40000 ALTER TABLE `loket` DISABLE KEYS */;
REPLACE INTO `loket` (`id`, `nama`, `pelayanan_id`, `keterangan`) VALUES
	(1, 'Loket 1', 1, 'loket taller'),
	(2, 'Loket 2', 2, 'Loket CS'),
	(5, 'Loket 3', 3, 'taller 2'),
	(6, 'Loket 4', 4, 'Loket CS 2');
/*!40000 ALTER TABLE `loket` ENABLE KEYS */;

-- Dumping structure for table antrian.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table antrian.migrations: ~3 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(1, '2021-07-11-044811', 'App\\Database\\Migrations\\Pelayanan', 'default', 'App', 1657654238, 1),
	(2, '2021-07-11-054601', 'App\\Database\\Migrations\\Loket', 'default', 'App', 1657654238, 1),
	(3, '2021-07-11-081843', 'App\\Database\\Migrations\\Antrian', 'default', 'App', 1657654238, 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table antrian.pelayanan
CREATE TABLE IF NOT EXISTS `pelayanan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table antrian.pelayanan: ~4 rows (approximately)
/*!40000 ALTER TABLE `pelayanan` DISABLE KEYS */;
REPLACE INTO `pelayanan` (`id`, `nama`, `kode`, `keterangan`) VALUES
	(1, 'Taller', 'A', 'Menerima diskusi'),
	(2, 'Customer Service', 'B', 'Menerima keluh kesah'),
	(3, 'Taller 2', 'C', 'taller 2'),
	(4, 'Customer Service 2', 'D', 'CS2');
/*!40000 ALTER TABLE `pelayanan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
