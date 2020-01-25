-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 03:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id_buku` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `jenis_buku` varchar(50) NOT NULL,
  `bahasa_buku` varchar(30) NOT NULL,
  `tgl_terbit` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_buku`, `gambar`, `link`, `judul_buku`, `jenis_buku`, `bahasa_buku`, `tgl_terbit`, `penerbit`, `pengarang`, `stok`) VALUES
(14045, 'conan.jpg', '01_Tintin_in_the_Land_of_the_Soviets.pdf', 'Detective Conan', 'komik', 'indonesia', '01/24/2020', 'Gramedia', 'San Roberto', 123),
(31233, 'toefl.jpg', 'EssentialGrammarInUse.pdf', 'Essential Grammar In Use', 'sains', 'indonesia', '01/16/2020', 'Gramedia', 'M Albar Fikri', 12),
(64532, 'kalkulus.jpg', 'Persona.pdf', 'Persona', 'sains', 'indonesia', '01/11/2020', 'Gramedia', 'JIhan Soraya Putri', 12);

-- --------------------------------------------------------

--
-- Table structure for table `lapor`
--

CREATE TABLE `lapor` (
  `lapor_id` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `kategori_id` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `tkp` varchar(90) NOT NULL,
  `keterangan` text NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapor`
--

INSERT INTO `lapor` (`lapor_id`, `gambar`, `kategori_id`, `tanggal`, `tkp`, `keterangan`, `status`) VALUES
(1, 'oke', 'Pembunuhan', '2020-10-08', 'Jalan Sudirman', 'tesenggol bacok', 'mati'),
(2, 'default.jpg', 'pembunuhan', '2020-01-04', 'kHD', 'ASLDKJ', 'belum'),
(3, 'default.jpg', 'pembunuhan', '2020-01-04', 'kHD', 'ASLDKJ', 'belum'),
(4, 'default.jpg', 'pencurian', '2020-01-03', 'jalan sudirman', 'mati', 'belum'),
(5, 'default.jpg', 'pencurian', '2020-01-03', 'jalan sudirman', 'mati', 'belum'),
(6, 'default.jpg', 'kecelakaan', '2020-01-12', 'asd', 'lkajsd\r\n\r\n', 'belum'),
(7, 'default.jpg', 'kecelakaan', '2020-01-15', 'asd', 'lkajsd\r\n\r\n', 'belum'),
(8, 'default.jpg', 'kecelakaan', '2020-01-15', 'asd', 'lkajsd\r\n\r\n', 'belum'),
(9, 'default.jpg', 'pembunuhan', '2020-01-04', 'llkasjdlkj', 'alskdj', 'belum'),
(10, 'default.jpg', 'kecelakaan', '2020-01-26', 'a', 'a', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(12) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `peran` varchar(12) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `peran`, `nama`, `alamat`, `no_telp`) VALUES
(1855301036, 'valdo', 'valdo', 'member', 'Mei Monthyca', 'Jl Sudirman Ujung', '081145294521'),
(1855301093, 'albar', 'albar', 'admin', 'M Albar Fikri', 'Jl Ronggowarsito', '089627452420'),
(1855301096, 'dita', 'dita', 'member', 'Rufina Pramudita', 'Jl. Rumbai atas', '087712348271');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `lapor`
--
ALTER TABLE `lapor`
  ADD PRIMARY KEY (`lapor_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lapor`
--
ALTER TABLE `lapor`
  MODIFY `lapor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
