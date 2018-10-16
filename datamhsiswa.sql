-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Okt 2018 pada 11.56
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datamhsiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputmhs`
--

CREATE TABLE `inputmhs` (
  `nama` varchar(50) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jeniskelamin` varchar(20) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `fakultas` varchar(20) NOT NULL,
  `asal` varchar(30) NOT NULL,
  `mottohidup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inputmhs`
--

INSERT INTO `inputmhs` (`nama`, `nim`, `jeniskelamin`, `prodi`, `fakultas`, `asal`, `mottohidup`) VALUES
('heldha', '6701174028', 'Perempuan', 'Managemen Informatika', 'FIT', 'jogja', 'maju terus'),
('suga', '6701174050', 'Laki-Laki', 'Desain Komunikasi Visual', 'FIK', 'daegu', 'selalu tidur'),
('popo', '7701174079', 'Perempuan', 'Teknik Informatika', 'FIF', 'busan', 'makan untuk hidup');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `inputmhs`
--
ALTER TABLE `inputmhs`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
