-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Okt 2023 pada 15.25
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT 0,
  `barang_min_stok` int(11) DEFAULT 0,
  `barang_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'T8 LED lampholder  9W 60cm', 'Unit', 22000, 13750, 0, 2, 1, '2016-11-22 23:30:50', '2023-10-17 19:44:54', 39, 1),
('BR000002', 'T8 LED lampholder  18W 120cm', 'Unit', 16000, 27500, 0, 2, 1, '2016-11-22 23:32:02', '2023-10-17 19:45:08', 39, 1),
('BR000003', 'FITEX65', 'Unit', 5000, 6250, 0, 2, 1, '2016-11-22 23:33:08', '2023-10-17 19:13:38', 38, 1),
('BR000004', 'E27 fitting extender 65mm', 'Unit', 17000, 24000, 19000, 2, 1, '2016-11-22 23:34:19', NULL, 11, 1),
('BR000005', 'G24-E27 converter', 'Unit', 3000, 5000, 4000, 2, 1, '2016-11-22 23:35:23', NULL, 10, 1),
('BR000006', 'E27 fitting externder 95mm', 'Unit', 3500, 6000, 4500, 2, 1, '2016-11-22 23:36:23', NULL, 10, 1),
('BR000007', 'E27-E14 converter', 'Unit', 4000, 7000, 5000, 2, 1, '2016-11-22 23:37:20', NULL, 10, 1),
('BR000008', 'E40-E27 converter', 'Unit', 4500, 8000, 5500, 2, 1, '2016-11-22 23:38:36', NULL, 10, 1),
('BR000009', 'Ceiling LED 25w 3 colors', 'Unit', 5000, 9000, 6000, 2, 1, '2016-11-22 23:39:24', NULL, 10, 1),
('BR000010', 'LIGHT+ Premier 5W ', 'Unit', 3100, 6000, 0, 3, 1, '2016-11-22 23:40:49', '2023-10-17 19:43:32', 9, 1),
('BR000011', 'LIGHT+ Premier 15W ', 'Unit', 3400, 7000, 4500, 2, 1, '2016-11-22 23:41:43', NULL, 9, 1),
('BR000012', 'LIGHT+ T BULB 20W', 'Unit', 4200, 8000, 5500, 2, 1, '2016-11-22 23:42:42', NULL, 9, 1),
('BR000013', 'LIGHT+ T BULB 30W', 'Unit', 5000, 9000, 6000, 2, 1, '2016-11-22 23:43:37', NULL, 9, 1),
('BR000014', 'LIGHT+ T BULB 50W', 'Unit', 5750, 10000, 7000, 2, 1, '2016-11-22 23:44:49', NULL, 9, 1),
('BR000015', 'LIGHT+ UFO BULB 30W', 'PCS', 6750, 10000, 7250, 2, 1, '2016-11-22 23:46:15', NULL, 8, 1),
('BR000016', 'Led Round Panel 6w', 'PCS', 8750, 12000, 9500, 2, 1, '2016-11-22 23:47:14', NULL, 8, 1),
('BR000017', 'Led Round Panel 12W', 'PCS', 9500, 15000, 11500, 2, 1, '2016-11-22 23:48:03', NULL, 8, 1),
('BR000018', 'Led Round Panel 18W', 'PCS', 6750, 10000, 7250, 2, 1, '2016-11-22 23:48:47', NULL, 8, 1),
('BR000019', 'Led Panel UFO 12W', 'PCS', 8750, 12000, 9500, 2, 1, '2016-11-22 23:49:55', NULL, 8, 1),
('BR000024', 'Led Square Panel 18W ', 'PCS', 16000, 20000, 17000, 1, 1, '2016-11-23 00:18:24', NULL, 7, 1),
('BR000026', 'Led Panel 36w 60x60 ', 'PCS', 35000, 50000, 40000, 2, 1, '2016-11-23 00:19:46', NULL, 7, 1),
('BR000027', 'Led Panel 36w 30x120 ', 'PCS', 35000, 50000, 40000, 2, 1, '2016-11-23 00:20:27', NULL, 7, 1),
('BR000028', 'Led Panel Light 72w 3 color', 'PCS', 35000, 50000, 40000, 2, 1, '2016-11-23 00:21:12', NULL, 7, 1),
('BR000029', 'Led Panel Light 50w 60x60', 'PCS', 47500, 70000, 55000, 2, 1, '2016-11-23 00:21:53', NULL, 7, 1),
('BR000030', 'Streel Light Cobra COB 30W', 'PCS', 47500, 70000, 55000, 2, 1, '2016-11-23 00:22:39', NULL, 7, 1),
('BR000032', 'Led Panel Light 50w 30x120', 'PCS', 7250, 10000, 7750, 2, 1, '2016-11-23 00:33:27', '2016-11-22 16:33:57', 6, 1),
('BR000034', 'Streel Light Cobra COB 50W', 'PCS', 10250, 12000, 0, 1, 1, '2016-11-23 00:35:23', NULL, 6, 1),
('BR000035', 'Streel Light Cobra COB 100W', 'PCS', 15500, 22000, 18000, 2, 1, '2016-11-23 00:40:34', NULL, 6, 1),
('BR000037', 'T5 Split LED Tubes 18W 120cm', 'Unit', 110000, 137500, 0, 100000, 3000, '2016-11-23 00:53:37', '2023-10-17 18:18:30', 5, 1),
('BR000038', 'T8 LED Tubes 9W', 'Unit', 65000, 81250, 0, 30000, 5000, '2016-11-23 00:54:31', '2023-10-17 18:21:07', 5, 1),
('BR000039', 'K. NYM 2x1,5 Voxel Per Meter', 'Meter', 6055, 8000, 6500, 2, 1, '2016-11-23 01:07:43', NULL, 12, 1),
('BR000040', 'Antena Digital HD 12', 'PCS', 66000, 95000, 75000, 2, 1, '2016-11-23 16:53:21', NULL, 13, 1),
('BR000050', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 12000, 0, 1, '2016-11-23 00:38:12', NULL, 6, 1),
('BR000056', 'T5 LED Tubes 18W 120cm', 'Unit', 110000, 137500, 0, 5000, 1, '2016-11-23 00:52:21', '2023-10-17 18:13:12', 39, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_beli`
--

INSERT INTO `tbl_beli` (`beli_nofak`, `beli_tanggal`, `beli_suplier_id`, `beli_user_id`, `beli_kode`) VALUES
('151023000001', '2023-10-15', 1, 1, 'BL151023000001'),
('151023000001', '2023-10-16', 1, 1, 'BL151023000002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_beli`
--

CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_beli`
--

INSERT INTO `tbl_detail_beli` (`d_beli_id`, `d_beli_nofak`, `d_beli_barang_id`, `d_beli_harga`, `d_beli_jumlah`, `d_beli_total`, `d_beli_kode`) VALUES
(1, '151023000001', 'BR000056', 4500, 2, 9000, 'BL151023000001'),
(2, '151023000001', 'BR000056', 4500, 3, 13500, 'BL151023000002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(1, '241116000001', 'BR000001', 'Klem Kabel IKK No 7', 'Unit', 15000, 20000, 1, 0, 20000),
(2, '241116000002', 'BR000002', 'Klem Kabel IKK No 8', 'Bks', 16000, 20000, 1, 0, 20000),
(3, '241116000003', 'BR000003', 'Klem Kabel IKK No 9', 'Bks', 16000, 22000, 1, 0, 22000),
(4, '241116000004', 'BR000038', 'Stok Kontak Omi KK', 'PCS', 5700, 10000, 1, 0, 10000),
(5, '241116000005', 'BR000005', 'Klem kabel dms No 6', 'Bks', 3000, 5000, 1, 0, 5000),
(6, '241116000006', 'BR000006', 'Klem kabel dms No 7', 'Bks', 3500, 6000, 1, 0, 6000),
(7, '241116000007', 'BR000008', 'Klem kabel dms No 9', 'Bks', 4500, 8000, 1, 0, 8000),
(8, '241116000008', 'BR000010', 'Klem kabel Steel No 6', 'Bks', 3100, 6000, 1, 0, 6000),
(9, '241116000008', 'BR000011', 'Klem kabel Steel No 7', 'Bks', 3400, 7000, 1, 0, 7000),
(10, '241116000009', 'BR000013', 'Klem kabel Steel No 9', 'Bks', 5000, 6000, 1, 0, 6000),
(11, '251116000001', 'BR000056', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(12, '251116000001', 'BR000050', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 1, 0, 9000),
(13, '291116000001', 'BR000056', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(14, '291116000001', 'BR000040', 'Antena Digital HD 12', 'PCS', 66000, 95000, 1, 0, 95000),
(15, '291116000002', 'BR000030', 'MCB Sheineder 20A SNI', 'PCS', 47500, 70000, 1, 2000, 68000),
(16, '291116000003', 'BR000012', 'Klem kabel Steel No 8', 'Bks', 4200, 8000, 1, 0, 8000),
(17, '291116000004', 'BR000032', 'Saklar Engkel Visalux B', 'PCS', 7250, 10000, 1, 0, 10000),
(18, '291116000005', 'BR000038', 'Stok Kontak Omi KK', 'PCS', 5700, 10000, 1, 0, 10000),
(19, '291116000006', 'BR000024', 'Stop Kontak Sheineder B', 'PCS', 16000, 20000, 1, 0, 20000),
(20, '291116000006', 'BR000050', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 1, 0, 9000),
(21, '291116000007', 'BR000050', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 1, 0, 9000),
(22, '240117000001', 'BR000056', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(23, '240117000002', 'BR000056', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(24, '290317000001', 'BR000034', 'Stop Kontak Visalux B', 'PCS', 10250, 12000, 1, 0, 12000),
(25, '290317000001', 'BR000056', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(26, '151023000001', 'BR000056', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(27, '151023000002', 'BR000056', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('151023000001', '2023-10-15 16:21:53', 10000, 10000, 0, 1, 'eceran'),
('151023000002', '2023-10-15 16:39:18', 10000, 20000, 10000, 2, 'eceran'),
('240117000001', '2017-01-24 15:07:07', 10000, 20000, 10000, 1, 'eceran'),
('240117000002', '2017-01-24 15:07:26', 10000, 20000, 10000, 1, 'eceran'),
('241116000001', '2016-11-24 17:42:06', 20000, 20000, 0, 1, 'eceran'),
('241116000002', '2016-11-24 17:49:58', 20000, 20000, 0, 1, 'eceran'),
('241116000003', '2016-11-24 17:55:48', 22000, 22000, 0, 1, 'eceran'),
('241116000004', '2016-11-24 17:59:38', 10000, 10000, 0, 1, 'eceran'),
('241116000005', '2016-11-24 18:21:24', 5000, 20000, 15000, 1, 'eceran'),
('241116000006', '2016-11-24 18:27:01', 6000, 7000, 1000, 1, 'eceran'),
('241116000007', '2016-11-24 18:29:43', 8000, 10000, 2000, 1, 'eceran'),
('241116000008', '2016-11-24 18:32:01', 13000, 15000, 2000, 1, 'eceran'),
('241116000009', '2016-11-24 19:47:50', 6000, 7000, 1000, 1, 'grosir'),
('251116000001', '2016-11-25 22:07:15', 19000, 60000, 41000, 1, 'eceran'),
('290317000001', '2017-03-29 13:35:49', 22000, 56000, 34000, 1, 'eceran'),
('291116000001', '2016-11-29 19:11:48', 105000, 120000, 15000, 1, 'eceran'),
('291116000002', '2016-11-29 19:49:20', 68000, 70000, 2000, 1, 'eceran'),
('291116000003', '2016-11-29 19:57:17', 8000, 10000, 2000, 1, 'eceran'),
('291116000004', '2016-11-29 19:58:35', 10000, 12000, 2000, 1, 'eceran'),
('291116000005', '2016-11-29 22:10:10', 10000, 10000, 0, 1, 'eceran'),
('291116000006', '2016-11-29 22:23:40', 29000, 30000, 1000, 1, 'eceran'),
('291116000007', '2016-11-29 22:41:08', 9000, 10000, 1000, 2, 'eceran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(5, 'TUBES'),
(6, 'Visalux'),
(7, 'Sheineder'),
(8, 'Fonic'),
(9, 'Steel'),
(10, 'DMS'),
(11, 'IKK'),
(12, 'Voxel'),
(13, 'Antena'),
(14, 'Kabel Antena'),
(15, 'Power Supply'),
(16, 'RCA'),
(17, 'AC Cord'),
(18, 'Jack Antena '),
(19, 'Esenze'),
(20, 'Augen'),
(21, 'Itami'),
(22, 'Steker'),
(23, 'Pallas'),
(24, 'Stanco'),
(25, 'Flapon'),
(26, 'T Dos dan Rolen'),
(27, 'Tekong'),
(28, 'Maspion'),
(29, 'Kompos Gas'),
(30, 'Miyako'),
(31, 'Uticon'),
(32, 'Sekai'),
(33, 'Regancy'),
(34, 'Amasco'),
(35, 'Enter'),
(36, 'Licons'),
(37, 'Light'),
(38, 'Fitting'),
(39, 'TUBES');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL,
  `retur_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`suplier_id`, `suplier_nama`, `suplier_alamat`, `suplier_notelp`) VALUES
(1, 'PT. Indomarco Prismatama', 'Jl. Kemayoran DKI Jakarta', '0895-3266-50714');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'M Fikri Setiadi', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1'),
(2, 'fikri', 'kasir', 'e10adc3949ba59abbe56e057f20f883e', '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_user_id` (`barang_user_id`),
  ADD KEY `barang_kategori_id` (`barang_kategori_id`);

--
-- Indeks untuk tabel `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD PRIMARY KEY (`beli_kode`),
  ADD KEY `beli_user_id` (`beli_user_id`),
  ADD KEY `beli_suplier_id` (`beli_suplier_id`),
  ADD KEY `beli_id` (`beli_kode`);

--
-- Indeks untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD PRIMARY KEY (`d_beli_id`),
  ADD KEY `d_beli_barang_id` (`d_beli_barang_id`),
  ADD KEY `d_beli_nofak` (`d_beli_nofak`),
  ADD KEY `d_beli_kode` (`d_beli_kode`);

--
-- Indeks untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`),
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`),
  ADD KEY `d_jual_nofak` (`d_jual_nofak`);

--
-- Indeks untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`),
  ADD KEY `jual_user_id` (`jual_user_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indeks untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD CONSTRAINT `tbl_beli_ibfk_1` FOREIGN KEY (`beli_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_beli_ibfk_2` FOREIGN KEY (`beli_suplier_id`) REFERENCES `tbl_suplier` (`suplier_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD CONSTRAINT `tbl_detail_beli_ibfk_1` FOREIGN KEY (`d_beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_beli_ibfk_2` FOREIGN KEY (`d_beli_kode`) REFERENCES `tbl_beli` (`beli_kode`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_nofak`) REFERENCES `tbl_jual` (`jual_nofak`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
