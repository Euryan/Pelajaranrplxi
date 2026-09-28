-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2026 at 06:13 AM
-- Server version: 8.0.44
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xirpl1`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama`, `jenis_kelamin`, `user_id`) VALUES
(1, '123456789', 'Sugiono', 'L', 5),
(2, '32456345', 'Jokooooo', 'L', 2),
(3, '756453', 'Jaka', 'L', 1),
(4, '54223', 'Rereee', 'L', 3),
(5, '867556', 'Ruru', 'P', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `guru_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode_mapel`, `nama_mapel`, `guru_id`) VALUES
(1, 'A0001', 'Sunda', 1234),
(2, 'A0002', 'Inggris', 2345),
(3, 'A0004', 'KKRPL', 3344),
(4, 'A0005', 'Jawa', 3333),
(5, 'A0006', 'Lengserkan Prabowo', 11221);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_rapor`
--

CREATE TABLE `nilai_rapor` (
  `id` int NOT NULL,
  `siswa_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `nilai_kkm` int NOT NULL,
  `nilai_pengetahuan` int NOT NULL,
  `nilai_keterampilan` int NOT NULL,
  `Keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nilai_rapor`
--

INSERT INTO `nilai_rapor` (`id`, `siswa_id`, `mapel_id`, `nilai_kkm`, `nilai_pengetahuan`, `nilai_keterampilan`, `Keterangan`) VALUES
(1, 12345, 1, 75, 90, 90, 'GG'),
(2, 23342, 3, 75, 90, 90, 'GG'),
(6, 435443, 1, 75, 90, 90, 'GG'),
(27, 9955, 5, 75, 90, 90, 'GG'),
(56, 8743, 7, 75, 90, 90, 'GG');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int NOT NULL,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `users_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `kelas`, `jenis_kelamin`, `users_id`) VALUES
(1, '2456', 'wewe', 'x pplg 6', 'P', 6),
(3, '798', 'rrere', 'x pplg 6', 'P', 10),
(4, '65789', 'uio', 'x pplg 6', 'L', 7),
(5, '3456', 'acac', 'x pplg 6', 'P', 9),
(6, '897897', 'yuyu', 'x pplg 6', 'P', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','guru','siswa') NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Jaka_Guru', 'wowo', 'admin', '2026-08-19 06:55:46'),
(2, 'Joko_Guru', 'wowo123', 'admin', '2026-08-19 06:58:29'),
(3, 'Rere_Guru', 'owowow', 'admin', '2026-08-19 06:59:39'),
(4, 'Ruru_Guru', 'owowow', 'admin', '2026-08-19 06:59:42'),
(5, 'Sugiono_Guru', 'owowow', 'admin', '2026-08-19 07:14:09'),
(6, 'Wewe_Siswa', 'owowow', 'siswa', '2026-08-26 06:22:49'),
(7, 'Uio_Siswa', 'owowow', 'siswa', '2026-08-26 06:24:57'),
(8, 'Yuyu_Siswa', 'owowow', 'siswa', '2026-08-26 06:24:57'),
(9, 'Acac_Siswa', 'owowow', 'siswa', '2026-08-26 06:24:57'),
(10, 'Rere_Siswa', 'owowow', 'siswa', '2026-08-26 06:24:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`,`nip`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`,`kode_mapel`);

--
-- Indexes for table `nilai_rapor`
--
ALTER TABLE `nilai_rapor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`,`nis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
