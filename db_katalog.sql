-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Sep 2018 pada 06.47
-- Versi Server: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_katalog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kategori` int(15) NOT NULL,
  `judul_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `judul_kategori`) VALUES
(1, 'Edukasi'),
(2, 'E-Commerce'),
(3, 'Fintech'),
(4, 'Food'),
(5, 'Health'),
(6, 'IoT'),
(7, 'Software House'),
(8, 'Transportation'),
(9, 'Travel'),
(10, 'Wedding');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komentar`
--

CREATE TABLE IF NOT EXISTS `tb_komentar` (
  `id_komentar` int(15) NOT NULL,
  `id_startup` int(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `isi_komentar` text NOT NULL,
  `hapus` int(11) NOT NULL DEFAULT '0',
  `tgl` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komentar`
--

INSERT INTO `tb_komentar` (`id_komentar`, `id_startup`, `nama`, `isi_komentar`, `hapus`, `tgl`) VALUES
(1, 1, 'Rino Ridlo Julianto', 'Wah, bukunya bagus sekali. Ceritanya menarik, berkaitan dengan sejarah yang dibumbui dengan cerita fiksi', 0, '2017-06-20 08:51:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slide`
--

CREATE TABLE IF NOT EXISTS `tb_slide` (
  `id_slide` int(15) NOT NULL,
  `judul_slide` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` text NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slide`
--

INSERT INTO `tb_slide` (`id_slide`, `judul_slide`, `keterangan`, `gambar`, `urutan`) VALUES
(2, 'Tasawuf Modern', 'Serial tasawuf modern karya penulis Agus Mustofa', 'slide.jpg', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_startup`
--

CREATE TABLE IF NOT EXISTS `tb_startup` (
  `id_startup` int(15) NOT NULL,
  `nama_startup` varchar(50) NOT NULL,
  `founder` varchar(30) NOT NULL,
  `tahun` int(30) NOT NULL,
  `nohp` int(25) NOT NULL,
  `website` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `id_kategori` int(15) NOT NULL,
  `review` text NOT NULL,
  `cover` varchar(100) NOT NULL,
  `best` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_startup`
--

INSERT INTO `tb_startup` (`id_startup`, `nama_startup`, `founder`, `tahun`, `nohp`, `website`, `alamat`, `id_kategori`, `review`, `cover`, `best`) VALUES
(1, 'Triponyu', 'Oliver Bowden', 2009, 2147483647, 'www.triponyu.com', 'Solo', 9, '&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;strong&gt;&lt;em&gt;&quot;Aku telah dihabisi, ditipu, dan dikhianati. Mereka membunuh ayahku dan aku akan membalaskan dendam ini, apa pun risikonya!&quot;&lt;/em&gt;&lt;/strong&gt; 1789 : kota Paris yang megah menyaksikan terbitnya Revolusi Prancis. Jalanan batu berubah menjadi sungai darah ketika rakyat bangkit menentang golongan bangsawan yang menindas mereka. Tapi keadilan revolusi harus dibayar dengan sangat mahal... Pada masa jurang antara si kaya dan si miskin mencapai jarak terjauh, dan sebuah negara menghancurkan dirinya sendiri, seorang pemuda dan seorang gadis berjuang untuk membalaskan apa saja yang telah direnggut dari mereka. Segera Arno dan Elise terseret ke dalam pertarungan antara Assassin dan Templar yang sudah berlangsung ratusan tahun, sebuah dunia yang penuh dengan bahaya lebih mematikan daripada jangkauan imajinasi mereka.&lt;/p&gt;', 'triponyu.jpg', '0'),
(3, 'Mobilan', 'Bashid Hery Purnomo', 2017, 2147483647, 'www.mobilan.com', 'Solo', 9, '&lt;p&gt;Mobilan&lt;/p&gt;', 'mobilan.jpg', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` enum('admin','member') NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `email`, `level`, `avatar`) VALUES
(4, 'Admin Bookstore', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'rinoridlojulianto@gmail.com', 'admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_pass` varchar(35) NOT NULL,
  `user_email` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `user_name`, `user_pass`, `user_email`) VALUES
(4, 'Nadya', 'nadya', '202cb962ac59075b964b07152d234b70', 'nadya@gmail.com'),
(5, 'Nadya', 'nadya', '202cb962ac59075b964b07152d234b70', 'permata@gmail.com'),
(6, 'riski', 'riski', '202cb962ac59075b964b07152d234b70', 'riski@gmail.com'),
(7, 'riski', 'rizyun', '202cb962ac59075b964b07152d234b70', 'rizyun@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `tb_startup`
--
ALTER TABLE `tb_startup`
  ADD PRIMARY KEY (`id_startup`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id_komentar` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id_slide` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_startup`
--
ALTER TABLE `tb_startup`
  MODIFY `id_startup` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
