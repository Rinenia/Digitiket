-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2020 pada 07.56
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pgw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nama`, `alamat`, `divisi`) VALUES
(1, 'Cathrine', 'Semarang', 'Backend Engineer'),
(2, 'Joni', 'Mars', 'Backend Engineer'),
(3, 'Bella', 'Pekalongan', 'Frontend Engineer'),
(4, 'Timmy', 'Jakarta', 'Marketing'),
(5, 'Melli', 'Bekasi', 'Backend Engineer'),
(6, 'Felix', 'Medan', 'Marketing'),
(7, 'Marsela', 'Bekasi', 'UI/UX'),
(8, 'Marco', 'Bekasi', 'UI/UX'),
(9, 'Rifki', 'Jakarta', 'Marketing'),
(10, 'Cania', 'Pemalang', 'Marketing'),
(11, 'Arya Mellia', 'Semarang', 'Sosmed'),
(12, 'Sindy', 'Boyolali', 'Sosmed'),
(13, 'Aw Karin', 'Jakarta', 'Sosmed'),
(14, 'Novilda', 'Bandung', 'Sosmed'),
(15, 'Syalsadela', 'Semarang', 'Sosmed'),
(16, 'Dwi', 'Jakarta', 'Sosmed');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
