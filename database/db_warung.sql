-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2022 pada 10.24
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_warung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kue`
--

CREATE TABLE `tb_kue` (
  `kode_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar_menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kue`
--

INSERT INTO `tb_kue` (`kode_menu`, `nama_menu`, `harga`, `gambar_menu`) VALUES
(2, 'Roti Kering', 7000, 'img15.jpg'),
(26, 'Kue Coklat', 20000, '635b64a5c477e.jpg'),
(30, 'Kue Mangkuk', 5000, '635b6512d48d8.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_makanan`
--

CREATE TABLE `tb_makanan` (
  `kode_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar_menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_makanan`
--

INSERT INTO `tb_makanan` (`kode_menu`, `nama_menu`, `harga`, `gambar_menu`) VALUES
(1, 'Ayam Bakar', 15000, '635b4f559da8e.jpg'),
(85, 'Ayam KFC', 15000, '635a1ba034549.jpg'),
(86, 'Ayam Geprek', 15000, '635a2075f2bbb.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu`
--

CREATE TABLE `tb_menu` (
  `kd_menu` varchar(7) NOT NULL,
  `name_menu` varchar(50) NOT NULL,
  `kategori_id` varchar(7) NOT NULL,
  `harga` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` enum('tersedia','tidak_tersedia') NOT NULL DEFAULT 'tersedia',
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu`
--

INSERT INTO `tb_menu` (`kd_menu`, `name_menu`, `kategori_id`, `harga`, `description`, `status`, `photo`) VALUES
('MN001', 'Ayam Serundeng', 'KT001', 30000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350315287.jpg'),
('MN002', 'Ayam geprek', 'KT001', 25000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350448179.jpg'),
('MN003', 'Opor Ayam', 'KT001', 30000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350471862.jpg'),
('MN004', 'Nasi Kuning', 'KT002', 15000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350514500.jpg'),
('MN005', 'Nasi Pecel', 'KT002', 20000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350547631.jpg'),
('MN006', 'Nasi Goreng Ayam', 'KT002', 15000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350588507.jpg'),
('MN007', 'Jus Alpukat', 'KT005', 10000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '155435061848.jpg'),
('MN008', 'Jus Anggur', 'KT005', 10000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350648687.jpg'),
('MN009', 'Jus Jeruk', 'KT005', 10000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554350665679.jpg'),
('MN010', 'Sop sapi', 'KT006', 20000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554369912639.jpg'),
('MN011', 'Es teh manis', 'KT004', 5000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554369938443.jpg'),
('MN012', 'Jahe', 'KT004', 5000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554369966769.jpg'),
('MN013', 'Nasi Goreng Telur', 'KT002', 15000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554370011485.jpg'),
('MN014', 'Jus Tomat', 'KT005', 10000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'tersedia', '1554370061484.jpg'),
('MN015', 'Ayam', 'KT002', 14998, ' Ayam Bakar', 'tersedia', '16667565464.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_minuman`
--

CREATE TABLE `tb_minuman` (
  `kode_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar_menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_minuman`
--

INSERT INTO `tb_minuman` (`kode_menu`, `nama_menu`, `harga`, `gambar_menu`) VALUES
(2, 'Es Lemon', 7000, 'img11.jpg'),
(3, 'Coffe', 7000, '635cd9656a103.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `kode_menu` int(50) NOT NULL,
  `nomor_meja` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `total` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`kode_menu`, `nomor_meja`, `nama_menu`, `harga`, `jumlah`, `total`) VALUES
(27, 4, 'Bayam', 13000, 1, 13000),
(35, 3, 'Coffe', 7000, 2, 14000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(2, 'web', 'admin', 'admin', 'admin'),
(3, 'pelangan', 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kue`
--
ALTER TABLE `tb_kue`
  ADD PRIMARY KEY (`kode_menu`);

--
-- Indeks untuk tabel `tb_makanan`
--
ALTER TABLE `tb_makanan`
  ADD PRIMARY KEY (`kode_menu`);

--
-- Indeks untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`kd_menu`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `tb_minuman`
--
ALTER TABLE `tb_minuman`
  ADD PRIMARY KEY (`kode_menu`);

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`kode_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kue`
--
ALTER TABLE `tb_kue`
  MODIFY `kode_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_makanan`
--
ALTER TABLE `tb_makanan`
  MODIFY `kode_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `tb_minuman`
--
ALTER TABLE `tb_minuman`
  MODIFY `kode_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `kode_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
