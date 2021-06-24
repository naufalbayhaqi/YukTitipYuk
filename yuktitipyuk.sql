-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 12:46 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jastip`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_trip` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `penawaran` varchar(255) DEFAULT NULL,
  `gambar_1` varchar(255) DEFAULT NULL,
  `gambar_2` varchar(255) DEFAULT NULL,
  `gambar_3` varchar(255) DEFAULT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_rekening` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `bukti_transfer` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_negara` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `id_negara`, `nama`, `waktu_dibuat`, `waktu_diupdate`) VALUES
(1, 1, 'Jakarta', '2021-06-24 05:38:34', '2021-06-24 05:38:34'),
(2, 2, 'Singapore', '2021-06-24 05:38:46', '2021-06-24 05:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(63, '2021-06-07-170331', 'App\\Database\\Migrations\\CreateNegaraTable', 'default', 'App', 1624166772, 1),
(64, '2021-06-07-174719', 'App\\Database\\Migrations\\CreateKotaTable', 'default', 'App', 1624166773, 1),
(65, '2021-06-08-053206', 'App\\Database\\Migrations\\CreateUserTable', 'default', 'App', 1624166773, 1),
(66, '2021-06-08-054227', 'App\\Database\\Migrations\\CreateTripTable', 'default', 'App', 1624166773, 1),
(67, '2021-06-08-065538', 'App\\Database\\Migrations\\CreatePesanTable', 'default', 'App', 1624166773, 1),
(68, '2021-06-08-070252', 'App\\Database\\Migrations\\CreatePesananTable', 'default', 'App', 1624166773, 1),
(69, '2021-06-09-050925', 'App\\Database\\Migrations\\CreateBarangTable', 'default', 'App', 1624166773, 1),
(70, '2021-06-10-101608', 'App\\Database\\Migrations\\CreateWithdrawTable', 'default', 'App', 1624166773, 1),
(71, '2021-06-11-125448', 'App\\Database\\Migrations\\CreateRequestTable', 'default', 'App', 1624166773, 1),
(72, '2021-06-16-121709', 'App\\Database\\Migrations\\CreateRekeningTable', 'default', 'App', 1624166773, 1),
(73, '2021-06-20-045830', 'App\\Database\\Migrations\\CreateDepositTable', 'default', 'App', 1624166773, 1);

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`id`, `nama`, `waktu_dibuat`, `waktu_diupdate`) VALUES
(1, 'Indonesia', '2021-06-24 05:38:29', '2021-06-24 05:38:29'),
(2, 'Singapore', '2021-06-24 05:38:39', '2021-06-24 05:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user_pengirim` bigint(20) UNSIGNED NOT NULL,
  `id_user_penerima` bigint(20) UNSIGNED NOT NULL,
  `id_pesan_utama` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_penitip` bigint(20) UNSIGNED DEFAULT NULL,
  `subjek` varchar(255) DEFAULT NULL,
  `isi` text NOT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  `nomor_rekening` varchar(255) NOT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `id_user`, `nama_bank`, `nama_rekening`, `nomor_rekening`, `waktu_dibuat`, `waktu_diupdate`) VALUES
(1, NULL, 'BNI', 'Ahmad Naufal Bayhaqi', '0321661922', '2021-06-24 05:38:58', '2021-06-24 05:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kota_user` bigint(20) UNSIGNED NOT NULL,
  `id_kota_asal` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `penawaran` varchar(255) DEFAULT NULL,
  `gambar_1` varchar(255) DEFAULT NULL,
  `gambar_2` varchar(255) DEFAULT NULL,
  `gambar_3` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user_penitip` bigint(20) UNSIGNED NOT NULL,
  `id_user_tujuan` bigint(20) UNSIGNED NOT NULL,
  `id_rekening` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `nama_ekspedisi` varchar(255) DEFAULT NULL,
  `nomor_resi` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kota_asal` bigint(20) UNSIGNED NOT NULL,
  `id_kota_tujuan` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `catatan` text DEFAULT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `total_saldo` int(11) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `foto` varchar(255) DEFAULT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `username`, `password`, `total_saldo`, `admin`, `foto`, `waktu_dibuat`, `waktu_diupdate`) VALUES
(1, 'Admin', 'admin@email.com', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 0, 1, NULL, '2021-06-20 00:26:33', '2021-06-20 00:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_rekening` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `bukti_transfer` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `waktu_dibuat` datetime DEFAULT NULL,
  `waktu_diupdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_id_trip_foreign` (`id_trip`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposit_id_user_foreign` (`id_user`),
  ADD KEY `deposit_id_rekening_foreign` (`id_rekening`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kota_id_negara_foreign` (`id_negara`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesan_id_user_pengirim_foreign` (`id_user_pengirim`),
  ADD KEY `pesan_id_user_penerima_foreign` (`id_user_penerima`),
  ADD KEY `pesan_id_user_penitip_foreign` (`id_user_penitip`),
  ADD KEY `pesan_id_pesan_utama_foreign` (`id_pesan_utama`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rekening_id_user_foreign` (`id_user`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id_user_foreign` (`id_user`),
  ADD KEY `request_id_kota_user_foreign` (`id_kota_user`),
  ADD KEY `request_id_kota_asal_foreign` (`id_kota_asal`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id_user_penitip_foreign` (`id_user_penitip`),
  ADD KEY `transaksi_id_user_tujuan_foreign` (`id_user_tujuan`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_id_user_foreign` (`id_user`),
  ADD KEY `trip_id_kota_asal_foreign` (`id_kota_asal`),
  ADD KEY `trip_id_kota_tujuan_foreign` (`id_kota_tujuan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `negara`
--
ALTER TABLE `negara`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_id_trip_foreign` FOREIGN KEY (`id_trip`) REFERENCES `trip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposit`
--
ALTER TABLE `deposit`
  ADD CONSTRAINT `deposit_id_rekening_foreign` FOREIGN KEY (`id_rekening`) REFERENCES `rekening` (`id`),
  ADD CONSTRAINT `deposit_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `kota_id_negara_foreign` FOREIGN KEY (`id_negara`) REFERENCES `negara` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_id_pesan_utama_foreign` FOREIGN KEY (`id_pesan_utama`) REFERENCES `pesan` (`id`),
  ADD CONSTRAINT `pesan_id_user_penerima_foreign` FOREIGN KEY (`id_user_penerima`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `pesan_id_user_pengirim_foreign` FOREIGN KEY (`id_user_pengirim`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `pesan_id_user_penitip_foreign` FOREIGN KEY (`id_user_penitip`) REFERENCES `user` (`id`);

--
-- Constraints for table `rekening`
--
ALTER TABLE `rekening`
  ADD CONSTRAINT `rekening_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_id_kota_asal_foreign` FOREIGN KEY (`id_kota_asal`) REFERENCES `kota` (`id`),
  ADD CONSTRAINT `request_id_kota_user_foreign` FOREIGN KEY (`id_kota_user`) REFERENCES `kota` (`id`),
  ADD CONSTRAINT `request_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_user_penitip_foreign` FOREIGN KEY (`id_user_penitip`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `transaksi_id_user_tujuan_foreign` FOREIGN KEY (`id_user_tujuan`) REFERENCES `user` (`id`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_id_kota_asal_foreign` FOREIGN KEY (`id_kota_asal`) REFERENCES `kota` (`id`),
  ADD CONSTRAINT `trip_id_kota_tujuan_foreign` FOREIGN KEY (`id_kota_tujuan`) REFERENCES `kota` (`id`),
  ADD CONSTRAINT `trip_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD CONSTRAINT `withdraw_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
