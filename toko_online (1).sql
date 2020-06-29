-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2020 pada 03.44
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nm_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(14, 'Giwang Kepompong Bunga Kuning', 'Berat	   : 100 gram', 'Pernak Pernik', 15000, 2, 'Giwang_kepompong_bunga__12_1.jpg'),
(15, 'Kain Sutra Habutai', 'Ukuran: 115cm x 200cm', 'Kain', 200000, 2, 'habutai1.jpg'),
(17, 'Kain Ecoprint Katun Jati', 'Ukuran: 150cm x 200cm', 'Kain', 200000, 2, 'ekk-011.jpg'),
(18, 'Kemeja Ecoprint Katun Tunjung 16 M', 'Ukuran M: lingkar dada 110cm, tinggi 67cm', 'Pakaian Pria', 250000, 4, 'kemeja1.jpg'),
(22, 'Mukena Ecoprint Broken White 51', 'Ukuran: mukena atas 130cm x 125cm, mukena bawah 115cm x 160cm', 'Pakaian Wanita', 300000, 2, 'mej-5111.jpg'),
(23, 'Kemeja Ecoprint Katun Mahoni 19 XL', 'Ukuran XL: lingkar dada 120cm, tinggi 74cm', 'Pakaian Pria', 250000, 4, 'kmjmahoni11.jpg'),
(25, 'Kain Viscos Jarak Pakis', 'Ukuran: panjang 2,5 meter', 'Kain', 200000, 50, 'WhatsApp_Image_2020-06-15_at_22_52_31.jpeg'),
(26, 'Kain Ecoprint Viscos Jartiyodium', 'Panjang 2,5 meter', 'Kain', 200000, 3, 'WhatsApp_Image_2020-06-15_at_22_21_28.jpeg'),
(27, 'Bros Bunga', 'Kepompong', 'Pernak Pernik', 10000, 7, 'IMG-20200624-WA00581.jpg'),
(28, 'Hiasan Dinding 3 Dimensi', 'Ukuran : 35cm X 27cm', 'Pernak Pernik', 250000, 1, 'IMG-20200624-WA00631.jpg'),
(29, 'Balet Kepompong 3 Demensi', 'Hiasan Dinding Kepompong', 'Pernak Pernik', 250000, 2, 'IMG-20200624-WA00621.jpg'),
(30, 'Kerudung Ecoprint Habutai Tunjung 23', 'Ukuran: 115cm x 115cm', 'Pakaian Wanita', 100000, 2, 'ehs-23.jpg'),
(31, 'Kerudung Ecoprint Viskos Jati', 'Ukuran: 95cm x 95cm', 'Pakaian Wanita', 100000, 2, 'ehk-03.jpg'),
(32, 'Blazer viscos Jatrak', 'All size', 'Pakaian Wanita', 300000, 2, 'IMG-20200626-WA0001.jpg'),
(33, 'Bunga Kepompong', 'Hiasan Bunga', 'Pernak Pernik', 200000, 1, 'IMG-20200626-WA0006.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Indah', 'Makassar', '2020-06-13 14:05:48', '2020-06-14 14:05:48'),
(2, 'Dewi', 'Makassar', '2020-06-13 15:57:07', '2020-06-14 15:57:07'),
(3, 'Deta', 'Bandung', '2020-06-14 17:38:55', '2020-06-15 17:38:55'),
(4, 'Ica', 'Makassar', '2020-06-15 08:37:06', '2020-06-16 08:37:06'),
(5, 'Yuni', 'Makassar', '2020-06-15 08:58:07', '2020-06-16 08:58:07'),
(6, 'Risma', 'Makassar', '2020-06-17 17:03:37', '2020-06-18 17:03:37'),
(7, 'Khaerunnisah', 'Makassar', '2020-06-18 08:30:17', '2020-06-19 08:30:17'),
(8, 'Risna', 'Leworeng', '2020-06-20 08:21:15', '2020-06-21 08:21:15'),
(9, 'Mirna', 'Soppeng', '2020-06-24 19:48:02', '2020-06-25 19:48:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_barang`, `nm_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 13, 'Kerudung Ecoprint Silkcrepe Tingi 36', 1, 100000, ''),
(2, 2, 1, 'Kain Sutra Habutai', 1, 150000, ''),
(3, 2, 3, 'Kemeja Ecoprint Katun Tunjung 16 M', 1, 200000, ''),
(4, 2, 4, 'Kemeja Ecoprint Mahoni', 1, 200000, ''),
(5, 2, 13, 'Kerudung Ecoprint Silkcrepe Tingi 36', 1, 100000, ''),
(6, 3, 13, 'Kerudung Ecoprint Silkcrepe Tingi 36', 1, 100000, ''),
(7, 4, 4, 'Kemeja Ecoprint Mahoni', 1, 200000, ''),
(8, 5, 4, 'Kemeja Ecoprint Mahoni', 1, 200000, ''),
(9, 5, 1, 'Kain Sutra Habutai', 1, 150000, ''),
(10, 5, 3, 'Kemeja Ecoprint Katun Tunjung 16 M', 1, 200000, ''),
(11, 6, 14, 'Giwang Kepompong Bunga Kuning', 1, 15000, ''),
(12, 7, 3, 'Kemeja Ecoprint Katun Tunjung 16 M', 1, 200000, ''),
(13, 8, 4, 'Kemeja Ecoprint Mahoni', 1, 200000, ''),
(14, 8, 3, 'Kemeja Ecoprint Katun Tunjung 16 M', 1, 200000, ''),
(15, 9, 26, 'Kain Ecoprint Viscos Jartiyodium', 1, 200000, ''),
(16, 9, 28, 'Hiasan Dinding 3 Dimensi', 1, 250000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Ica', 'Khaerunnisah', '1234', 2),
(4, 'ica', 'ica', 'ica', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
