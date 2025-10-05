-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2025 at 10:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robi_motor`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(10) NOT NULL,
  `nm_brg` varchar(50) DEFAULT NULL,
  `hrg_brg` int(11) DEFAULT NULL,
  `hrg_brg_beli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `hrg_brg`, `hrg_brg_beli`) VALUES
('BR01', 'Honda CBR150', 30000, 28000),
('BR02', 'Yamaha R15', 25000, 22000),
('BR03', 'Suzuki GSX150', 35000, 32000),
('BR04', 'Kawasaki Ninja 150', 40000, 37000);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(10) NOT NULL,
  `nm_kasir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nm_kasir`) VALUES
('KS01', 'Cintya'),
('KS02', 'Anie'),
('KS03', 'Fenny'),
('KS04', 'Lany');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_plgn` varchar(10) NOT NULL,
  `nm_plgn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_plgn`, `nm_plgn`) VALUES
('PL01', 'Rahman'),
('PL02', 'Maya'),
('PL03', 'Tony'),
('PL04', 'Sidik');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_sup` varchar(10) NOT NULL,
  `nm_sup` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_sup`, `nm_sup`) VALUES
('SP01', 'Honda'),
('SP02', 'Yamaha'),
('SP03', 'Suzuki'),
('SP04', 'Kawasaki');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_beli`
--

CREATE TABLE `transaksi_beli` (
  `kd_beli` varchar(10) NOT NULL,
  `id_sup` varchar(10) DEFAULT NULL,
  `id_kasir` varchar(10) DEFAULT NULL,
  `kd_brg` varchar(10) DEFAULT NULL,
  `tgl_beli` date DEFAULT NULL,
  `jml_brg_beli` int(11) DEFAULT NULL,
  `tot_hrg_beli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_beli`
--

INSERT INTO `transaksi_beli` (`kd_beli`, `id_sup`, `id_kasir`, `kd_brg`, `tgl_beli`, `jml_brg_beli`, `tot_hrg_beli`) VALUES
('BL01', 'SP04', 'KS04', 'BR04', '2020-06-20', 5, 185000),
('BL02', 'SP03', 'KS04', 'BR01', '2020-07-01', 5, 140000),
('BL03', 'SP01', 'KS03', 'BR03', '2020-07-01', 10, 320000),
('BL04', 'SP02', 'KS03', 'BR02', '2020-07-05', 12, 264000),
('BL05', 'SP03', 'KS04', 'BR01', '2020-08-06', 5, 140000),
('BL06', 'SP02', 'KS04', 'BR04', '2020-08-06', 5, 185000),
('BL07', 'SP01', 'KS03', 'BR03', '2020-08-12', 5, 160000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_jual`
--

CREATE TABLE `transaksi_jual` (
  `kd_jual` varchar(10) NOT NULL,
  `id_kasir` varchar(10) DEFAULT NULL,
  `kd_brg` varchar(10) DEFAULT NULL,
  `id_plgn` varchar(10) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL,
  `jml_brg_jual` int(11) DEFAULT NULL,
  `tot_hrg_jual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_jual`
--

INSERT INTO `transaksi_jual` (`kd_jual`, `id_kasir`, `kd_brg`, `id_plgn`, `tgl_jual`, `jml_brg_jual`, `tot_hrg_jual`) VALUES
('JL01', 'KS01', 'BR04', 'PL03', '2020-07-03', 5, 200000),
('JL02', 'KS01', 'BR01', 'PL01', '2020-07-03', 1, 30000),
('JL03', 'KS02', 'BR02', 'PL04', '2020-07-10', 2, 50000),
('JL04', 'KS01', 'BR03', 'PL01', '2020-07-12', 3, 105000),
('JL05', 'KS02', 'BR01', 'PL02', '2020-08-01', 1, 30000),
('JL06', 'KS02', 'BR02', 'PL03', '2020-08-05', 2, 50000),
('JL07', 'KS01', 'BR03', 'PL01', '2020-08-10', 4, 140000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_plgn`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_sup`);

--
-- Indexes for table `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  ADD PRIMARY KEY (`kd_beli`);

--
-- Indexes for table `transaksi_jual`
--
ALTER TABLE `transaksi_jual`
  ADD PRIMARY KEY (`kd_jual`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;