-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2024 at 12:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010252_pbo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `jenis_cuti` varchar(225) NOT NULL,
  `alasan` varchar(225) NOT NULL,
  `pesan_penolakan` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kerja`
--

CREATE TABLE `laporan_kerja` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kegiatan` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `durasi` time NOT NULL,
  `status` varchar(225) NOT NULL,
  `lokasi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_kerja`
--

CREATE TABLE `penilaian_kerja` (
  `id` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sesipresensi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_masuk` time NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sesi_presensi`
--

CREATE TABLE `sesi_presensi` (
  `id` int(11) NOT NULL,
  `kode_unik` varchar(225) NOT NULL,
  `expire_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penilaian_kerja`
--
ALTER TABLE `penilaian_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sesi_presensi`
--
ALTER TABLE `sesi_presensi`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
