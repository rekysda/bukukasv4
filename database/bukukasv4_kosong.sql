-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 04:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukukasv4`
--
CREATE DATABASE IF NOT EXISTS `bukukasv4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bukukasv4`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `purchase` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `year`, `purchase`, `sale`, `profit`) VALUES
(1, 2013, 2000, 3000, 1000),
(2, 2014, 4500, 5000, 500),
(3, 2015, 3000, 4500, 1500),
(4, 2016, 2000, 3000, 1000),
(5, 2017, 2000, 4000, 2000),
(6, 2018, 2200, 3000, 800),
(7, 2019, 5000, 7000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `apiemail`
--

DROP TABLE IF EXISTS `apiemail`;
CREATE TABLE `apiemail` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apiemail`
--

INSERT INTO `apiemail` (`id`, `name`, `value`) VALUES
(1, 'email_sekolah', 'rekysda@gmail.com'),
(3, 'sent_notif_paid', '1'),
(4, 'email_kepsek', 'rekysmtp@gmail.com'),
(5, 'send_notif_bukutamu', '1'),
(6, 'send_notif_pelanggaran', '1');

-- --------------------------------------------------------

--
-- Table structure for table `apisms`
--

DROP TABLE IF EXISTS `apisms`;
CREATE TABLE `apisms` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apisms`
--

INSERT INTO `apisms` (`id`, `name`, `value`) VALUES
(1, 'sent_notif_paid', '0');

-- --------------------------------------------------------

--
-- Table structure for table `m_options`
--

DROP TABLE IF EXISTS `m_options`;
CREATE TABLE `m_options` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_options`
--

INSERT INTO `m_options` (`id`, `name`, `value`) VALUES
(1, 'tahun_ppdb_default', '2021'),
(2, 'tahun_akademik_default', '1'),
(3, 'is_ppdb_online', '1'),
(4, 'gelombang_ppdb_default', ''),
(5, 'kartu_peserta', '<p>LLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n'),
(7, 'tahun_default', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'site_title', 'Buku Kas ver 4.0'),
(2, 'site_description', 'Buku Kas ver 4.0'),
(3, 'site_keyword', 'sister'),
(4, 'forgot_password', '1'),
(5, 'signup_member', '0'),
(6, 'protocol', 'smtp'),
(7, 'smtp_host', 'ssl://smtp.googlemail.com'),
(8, 'smtp_user', 'sistersmtp@gmail.com'),
(9, 'smtp_pass', '#kirimemail2020'),
(10, 'smtp_port', '465'),
(11, 'mailtype', 'html'),
(12, 'charset', 'utf-8'),
(13, 'newline', '\\r\\n'),
(14, 'forbidden', '0'),
(15, 'email_master', 'rekysda@gmail.com'),
(16, 'login_token', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` int(10) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user` varchar(100) NOT NULL,
  `aksi` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`id`, `tanggal`, `user`, `aksi`, `item`) VALUES
(15, '2019-10-02 06:17:40', 'admin@admin.com', 'Tambah Role', 'asd'),
(16, '2019-10-02 06:17:56', 'admin@admin.com', 'Edit Role', 'asd dsa'),
(17, '2019-10-02 06:18:06', 'admin@admin.com', 'Hapus Role', 'asd dsa'),
(18, '2019-10-02 06:22:08', 'admin@admin.com', 'Tambah Menu', 'asd'),
(19, '2019-10-02 06:27:41', 'admin@admin.com', 'Tambah Sub Menu', 'asd'),
(20, '2019-10-02 06:28:20', 'admin@admin.com', 'Edit Sub Menu', 'aktifitas'),
(21, '2019-10-02 06:29:04', 'admin@admin.com', 'Edit Sub Menu', 'zzz'),
(22, '2019-10-02 06:29:23', 'admin@admin.com', 'Edit Sub Menu', 'zzz'),
(23, '2019-10-02 06:33:16', 'admin@admin.com', 'Tambah Sub Menu', 'zzz'),
(24, '2019-10-02 06:33:23', 'admin@admin.com', 'Hapus Sub Menu', 'zzz'),
(25, '2019-10-02 06:33:29', 'admin@admin.com', 'Tambah Menu', 'zzz'),
(26, '2019-10-02 06:34:04', 'admin@admin.com', 'Tambah Menu', 'zzzzzzzzzz'),
(27, '2019-10-02 06:34:07', 'admin@admin.com', 'Hapus Menu', 'zzzzzzzzzz'),
(28, '2019-12-24 13:24:09', 'admin@admin.com', 'Edit Websetting', ''),
(29, '2019-12-24 13:43:05', 'admin@admin.com', 'Edit Siswa', 'FAHMI MUHLISIN'),
(30, '2019-12-24 13:48:57', 'admin@admin.com', 'Tambah Sub Menu', 'api-email'),
(31, '2019-12-24 14:31:36', 'admin@admin.com', 'Tambah Pelanggaran Siswa', ''),
(32, '2019-12-24 15:01:57', 'admin@admin.com', 'Edit Profil', 'admin@admin.com'),
(33, '2019-12-25 10:54:22', 'admin@admin.com', 'Hapus Sub Menu', 'Laporan Pelanggaran Tanggal'),
(34, '2019-12-25 10:54:36', 'admin@admin.com', 'Hapus Sub Menu', 'Laporan Pelanggaran Siswa'),
(35, '2019-12-25 10:55:28', 'admin@admin.com', 'Hapus Role', 'Guru'),
(36, '2019-12-25 10:55:36', 'admin@admin.com', 'Hapus Role', 'Member'),
(37, '2020-01-10 01:58:52', 'admin@admin.com', 'Tambah Role', 'StaffSekolah'),
(38, '2020-01-10 02:01:00', 'admin@admin.com', 'Hapus User', 'Hapus User'),
(39, '2020-01-10 02:23:51', 'admin@admin.com', 'Hapus Sekolah', '123'),
(40, '2020-01-10 02:37:57', 'admin@admin.com', 'Tambah Gelombang Jalur', ''),
(41, '2020-01-10 02:40:14', 'admin@admin.com', 'Hapus Gelombang Jalur', '#ID : 10'),
(42, '2020-01-10 02:40:39', 'admin@admin.com', 'Tambah Gelombang Jalur', ''),
(43, '2020-01-10 02:43:42', 'admin@admin.com', 'Edit Gelombang Jalur', ''),
(44, '2020-01-10 02:43:50', 'admin@admin.com', 'Edit Gelombang Jalur', ''),
(45, '2020-01-10 04:03:21', 'admin@admin.com', 'Edit Gelombang Jalur', ''),
(46, '2020-01-11 11:29:05', 'admin@admin.com', 'Tambah Siswa', '112'),
(47, '2020-01-11 12:04:04', 'admin@admin.com', 'Edit Siswa', '1121'),
(48, '2020-01-11 12:04:33', 'admin@admin.com', 'Edit Siswa', '1121'),
(49, '2020-01-11 12:05:26', 'admin@admin.com', 'Edit Siswa', '1121'),
(50, '2020-01-11 13:43:04', 'admin@admin.com', 'Hapus Gelombang Jalur', '#ID : 11'),
(51, '2020-01-11 13:43:09', 'admin@admin.com', 'Hapus Gelombang Jalur', '#ID : 9'),
(52, '2020-01-11 13:43:19', 'admin@admin.com', 'Hapus Gelombang Jalur', '#ID : 7'),
(53, '2020-01-11 13:43:29', 'admin@admin.com', 'Hapus Gelombang Jalur', '#ID : 8'),
(54, '2020-01-11 13:43:38', 'admin@admin.com', 'Edit Gelombang Jalur', ''),
(55, '2020-01-11 13:45:02', 'admin@admin.com', 'Edit Biaya', 'Uang Gedung ANGS 1 2019'),
(56, '2020-01-11 13:45:13', 'admin@admin.com', 'Edit Biaya', 'Uang SPP Bulan Juli 2019'),
(57, '2020-01-11 13:45:27', 'admin@admin.com', 'Edit Biaya', 'SERAGAM 2019'),
(58, '2020-01-11 13:45:33', 'admin@admin.com', 'Hapus Biaya', '#ID : 6'),
(59, '2020-01-11 13:45:40', 'admin@admin.com', 'Hapus Biaya', '#ID : 7'),
(60, '2020-01-11 13:45:45', 'admin@admin.com', 'Hapus Biaya', '#ID : 9'),
(61, '2020-01-11 13:46:29', 'admin@admin.com', 'Tambah Biaya', '2019_UANG GEDUNG'),
(62, '2020-01-11 13:46:51', 'admin@admin.com', 'Tambah Biaya', '2019_SERAGAM'),
(63, '2020-01-11 13:47:04', 'admin@admin.com', 'Tambah Biaya', '2019_SPP JULI'),
(64, '2020-01-11 13:47:21', 'admin@admin.com', 'Edit Biaya', '2019_UANG GEDUNG I'),
(65, '2020-01-11 13:47:32', 'admin@admin.com', 'Tambah Biaya', '2019_UANG GEDUNG II'),
(66, '2020-01-11 13:47:46', 'admin@admin.com', 'Tambah Biaya', '2019_UANG GEDUNG III'),
(67, '2020-01-11 13:53:09', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(68, '2020-01-11 13:53:19', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(69, '2020-01-11 13:53:28', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(70, '2020-01-11 13:53:40', 'admin@admin.com', 'Hapus Jalur Biaya', 'Modul PPDB'),
(71, '2020-01-11 13:53:46', 'admin@admin.com', 'Hapus Jalur Biaya', 'Modul PPDB'),
(72, '2020-01-11 13:54:03', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(73, '2020-01-11 13:54:26', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(74, '2020-01-11 13:54:44', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(75, '2020-01-11 13:54:55', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(76, '2020-01-11 13:55:04', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(77, '2020-01-11 13:55:16', 'admin@admin.com', 'Tambah Jalur Biaya', 'Modul PPDB'),
(78, '2020-01-11 15:22:26', 'admin@admin.com', 'Edit Siswa', '1121'),
(79, '2020-01-14 02:13:11', 'admin@admin.com', 'Edit Siswa', '2010'),
(80, '2020-01-14 02:13:34', 'admin@admin.com', 'Edit Siswa', '2010'),
(81, '2020-01-14 03:13:23', 'admin@admin.com', 'Edit Siswa', '2010'),
(82, '2020-01-14 03:13:46', 'admin@admin.com', 'Hapus Siswa', '2010'),
(83, '2020-01-14 03:13:53', 'admin@admin.com', 'Edit Siswa', 'FAHMI MUHLISIN'),
(84, '2020-01-14 03:15:12', 'admin@admin.com', 'Edit Siswa', 'FIRHAN GHULAM ACHMAD'),
(85, '2020-01-14 05:27:29', 'admin@admin.com', 'Hapus Formulir', ''),
(86, '2020-01-21 02:40:52', 'admin@admin.com', 'Hapus Formulir', ''),
(87, '2020-01-21 02:41:01', 'admin@admin.com', 'Tambah Formulir', ''),
(88, '2020-01-22 03:08:57', 'rekysda@gmail.com', 'Tambah Ruangan', 'SMA001'),
(89, '2020-01-22 03:12:56', 'rekysda@gmail.com', 'Edit Ruangan', 'Ruangan 3'),
(90, '2020-01-22 03:13:23', 'rekysda@gmail.com', 'Edit Ruangan', 'Ruangan 2'),
(91, '2020-01-22 03:13:28', 'rekysda@gmail.com', 'Edit Ruangan', 'Ruangan 1'),
(92, '2020-01-22 03:27:20', 'rekysda@gmail.com', 'Edit Ruangan', 'Ruangan 3'),
(93, '2020-01-22 03:27:28', 'rekysda@gmail.com', 'Edit Ruangan', 'SMP003'),
(94, '2020-01-22 03:27:39', 'rekysda@gmail.com', 'Edit Ruangan', 'SMA004'),
(95, '2020-01-22 03:27:51', 'rekysda@gmail.com', 'Edit Ruangan', 'SMA0002'),
(96, '2020-01-22 03:28:02', 'rekysda@gmail.com', 'Edit Ruangan', 'SMP001'),
(97, '2020-01-22 03:28:09', 'rekysda@gmail.com', 'Edit Ruangan', 'SMA002'),
(98, '2020-02-12 05:22:53', 'rekysda@gmail.com', 'Tambah Sub Menu', 'user-sekolah'),
(99, '2020-02-12 05:23:15', 'rekysda@gmail.com', 'Edit Sub Menu', 'web-setting'),
(100, '2020-03-17 00:55:07', 'rekysda@gmail.com', 'Hapus Sub Menu', 'User Sekolah'),
(101, '2020-03-17 00:55:37', 'rekysda@gmail.com', 'Hapus Sekolah', 'SMP SISTER'),
(102, '2020-03-17 00:55:58', 'rekysda@gmail.com', 'Hapus Gelombang Jalur', '#ID : 6'),
(103, '2020-03-18 04:19:42', 'rekysda@gmail.com', 'Tambah Kategori Pelanggaran', 'qwe'),
(104, '2020-03-18 04:19:45', 'rekysda@gmail.com', 'Hapus Kategori Pelanggaran', 'qwe'),
(105, '2020-03-18 04:19:48', 'rekysda@gmail.com', 'Tambah Kategori Pelanggaran', 'qwe'),
(106, '2020-03-18 04:33:11', 'rekysda@gmail.com', 'Hapus Sub Menu', 'API SMS'),
(107, '2020-03-18 04:34:24', 'rekysda@gmail.com', 'Hapus Menu', 'page'),
(108, '2020-03-18 04:34:29', 'rekysda@gmail.com', 'Hapus Menu', 'post'),
(109, '2020-03-23 01:10:07', 'rekysda@gmail.com', 'Tambah Sub Menu', 'siswa-berkas'),
(110, '2020-03-23 01:15:33', 'rekysda@gmail.com', 'Edit Sub Menu', 'siswa-berkas'),
(111, '2020-03-23 04:13:16', 'rekysda@gmail.com', 'Tambah berkas', 'KK'),
(112, '2020-03-23 04:17:11', 'rekysda@gmail.com', 'Tambah berkas', 'KK'),
(113, '2020-03-23 04:21:05', 'rekysda@gmail.com', 'Tambah berkas', 'KK'),
(114, '2020-03-23 04:22:38', 'rekysda@gmail.com', 'Tambah berkas', 'aaa'),
(115, '2020-03-23 04:22:55', 'rekysda@gmail.com', 'Tambah berkas', 'KK'),
(116, '2020-03-23 04:23:23', 'rekysda@gmail.com', 'Tambah berkas', 'ijasah'),
(117, '2020-03-23 04:24:46', 'rekysda@gmail.com', 'Tambah berkas', '001'),
(118, '2020-03-23 04:25:43', 'rekysda@gmail.com', 'Tambah berkas', 'rewrwr'),
(119, '2020-03-23 04:26:10', 'rekysda@gmail.com', 'Tambah berkas', '001'),
(120, '2020-03-23 04:26:20', 'rekysda@gmail.com', 'Tambah berkas', 'etet'),
(121, '2020-03-23 04:26:48', 'rekysda@gmail.com', 'Tambah berkas', 'gdfgdfg'),
(122, '2020-03-23 04:27:04', 'rekysda@gmail.com', 'Tambah berkas', 'standart'),
(123, '2020-03-23 04:28:08', 'rekysda@gmail.com', 'Tambah berkas', '123'),
(124, '2020-03-23 04:28:19', 'rekysda@gmail.com', 'Tambah berkas', 'standart'),
(125, '2020-03-23 04:28:29', 'rekysda@gmail.com', 'Tambah berkas', 'KK'),
(126, '2020-03-23 04:29:02', 'rekysda@gmail.com', 'Tambah berkas', 'Anggota Luar'),
(127, '2020-03-23 04:29:50', 'rekysda@gmail.com', 'Tambah berkas', 'Anggota Luar'),
(128, '2020-03-23 04:30:26', 'rekysda@gmail.com', 'Tambah berkas', 'KK'),
(129, '2020-05-13 14:44:29', 'rekysda@gmail.com', 'Tambah Sub Menu', 'laporan-pelanggaran'),
(130, '2020-05-15 08:52:03', 'rekysda@gmail.com', 'Tambah Sub Menu', 'prestasi-siswa'),
(131, '2020-05-15 08:53:06', 'rekysda@gmail.com', 'Tambah Sub Menu', 'laporan-prestasi-siswa'),
(132, '2020-05-15 13:42:30', 'rekysda@gmail.com', 'Tambah Pelanggaran Siswa', ''),
(133, '2020-05-15 13:58:45', 'rekysda@gmail.com', 'Tambah Prestasi Siswa', ''),
(134, '2020-05-15 14:02:32', 'rekysda@gmail.com', 'Tambah Prestasi Siswa', ''),
(135, '2020-05-15 14:43:40', 'rekysda@gmail.com', 'Hapus prestasi Siswa', ''),
(136, '2020-05-15 15:51:44', 'rekysda@gmail.com', 'Tambah Prestasi Siswa', ''),
(137, '2020-05-15 15:55:04', 'rekysda@gmail.com', 'Edit Prestasi Siswa', ''),
(138, '2020-05-15 15:56:51', 'rekysda@gmail.com', 'Edit Prestasi Siswa', ''),
(139, '2020-05-15 15:57:04', 'rekysda@gmail.com', 'Hapus prestasi Siswa', ''),
(140, '2020-05-15 16:01:56', 'rekysda@gmail.com', 'Edit Prestasi Siswa', ''),
(141, '2020-05-15 16:11:41', 'rekysda@gmail.com', 'Edit Prestasi Siswa', ''),
(142, '2020-05-15 16:13:17', 'rekysda@gmail.com', 'Tambah Prestasi Siswa', ''),
(143, '2020-07-13 05:14:20', 'rekysda@gmail.com', 'Edit Biaya', '2019_SPP JULI'),
(144, '2020-07-13 05:15:51', 'rekysda@gmail.com', 'Edit Biaya', '2020_SERAGAM'),
(145, '2020-07-13 05:15:55', 'rekysda@gmail.com', 'Edit Biaya', '2020_UANG GEDUNG I'),
(146, '2020-07-13 05:15:59', 'rekysda@gmail.com', 'Edit Biaya', '2020_UANG GEDUNG III'),
(147, '2020-07-13 05:16:07', 'rekysda@gmail.com', 'Edit Biaya', '2020_UANG GEDUNG II'),
(148, '2020-07-13 05:16:12', 'rekysda@gmail.com', 'Edit Biaya', '2020_SPP JULI'),
(149, '2020-07-15 03:36:22', 'rekysda@gmail.com', 'Edit Siswa', 'FAHMI MUHLISIN'),
(150, '2020-07-15 04:35:10', 'rekysda@gmail.com', 'Edit Kelas', 'X IPA 1'),
(151, '2020-07-15 04:35:15', 'rekysda@gmail.com', 'Edit Kelas', 'X IPS 1'),
(152, '2020-07-15 04:35:23', 'rekysda@gmail.com', 'Edit Kelas', 'XI IPA 1'),
(153, '2020-07-15 04:35:41', 'rekysda@gmail.com', 'Hapus Kelas', 'X IPA 1'),
(154, '2020-07-15 04:35:44', 'rekysda@gmail.com', 'Hapus Kelas', 'X IPS 1'),
(155, '2020-07-15 04:35:59', 'rekysda@gmail.com', 'Edit Guru', 'Agus Musanib'),
(156, '2020-07-15 04:37:30', 'rekysda@gmail.com', 'Edit Kelas', 'XI IPA 1'),
(157, '2020-07-15 04:38:33', 'rekysda@gmail.com', 'Tambah Jadwal', ''),
(158, '2020-07-21 01:48:17', 'rekysda@gmail.com', 'Edit Guru', 'Aina Yonavia'),
(159, '2020-07-21 01:49:03', 'rekysda@gmail.com', 'Tambah Jadwal', ''),
(160, '2020-07-27 04:38:25', 'rekysda@gmail.com', 'Tambah Sub Menu', 'masterekstrakurikuler'),
(161, '2020-07-27 04:39:09', 'rekysda@gmail.com', 'Edit Sub Menu', 'ekstrakurikuler'),
(162, '2020-07-27 04:50:33', 'rekysda@gmail.com', 'Tambah ekstrakurikuler', 'PRAMUKA'),
(163, '2020-07-27 04:52:11', 'rekysda@gmail.com', 'Tambah ekstrakurikuler', 'TIK'),
(164, '2020-07-27 04:52:17', 'rekysda@gmail.com', 'Edit ekstrakurikuler', 'TIK 2'),
(165, '2020-07-27 04:52:43', 'rekysda@gmail.com', 'Hapus ekstrakurikuler', 'TIK 2'),
(166, '2020-07-27 04:52:49', 'rekysda@gmail.com', 'Tambah ekstrakurikuler', 'TIK'),
(167, '2020-07-27 05:08:31', 'rekysda@gmail.com', 'Tambah ekstrakurikuler', 'asd'),
(168, '2020-07-27 05:08:34', 'rekysda@gmail.com', 'Hapus ekstrakurikuler', 'asd'),
(169, '2020-07-27 05:11:07', 'rekysda@gmail.com', 'Tambah Menu', 'Marketing'),
(170, '2020-07-27 05:12:04', 'rekysda@gmail.com', 'Tambah Sub Menu', 'pengumuman'),
(171, '2020-07-27 05:25:23', 'rekysda@gmail.com', 'Tambah pengumuman', 'asd'),
(172, '2020-08-18 01:34:00', 'rekysda@gmail.com', 'Tambah Sub Menu', 'preregistrasi'),
(173, '2020-08-18 01:36:01', 'rekysda@gmail.com', 'Hapus Formulir', ''),
(174, '2020-08-18 01:36:13', 'rekysda@gmail.com', 'Tambah Formulir', ''),
(175, '2020-08-18 03:56:46', 'siswa', 'Tambah berkas', 'Ijasah'),
(176, '2020-08-18 03:57:34', 'siswa', 'Tambah berkas', 'ijazah'),
(177, '2020-08-18 03:57:58', 'rekysda@gmail.com', 'Tambah berkas', 'ijasah'),
(178, '2020-08-18 04:13:33', 'rekysda@gmail.com', 'Tambah berkas', 'KK'),
(179, '2020-08-18 05:08:35', 'rekysda@gmail.com', 'Tambah berkas', 'ijasah'),
(180, '2020-08-18 05:08:51', 'rekysda@gmail.com', 'Tambah berkas', 'kk'),
(181, '2020-08-18 05:18:36', 'siswa', 'Tambah berkas', 'ijasah'),
(182, '2020-08-18 05:18:49', 'siswa', 'Tambah berkas', 'kk'),
(183, '2020-08-18 05:18:59', 'rekysda@gmail.com', 'Tambah berkas', 'kk'),
(184, '2020-08-19 01:56:43', 'siswa', 'Tambah berkas', 'kk'),
(185, '2020-08-19 01:57:28', 'siswa', 'Tambah berkas', 'KK'),
(186, '2020-08-19 02:16:42', 'rekysda@gmail.com', 'Hapus Preregistrasi', ''),
(187, '2020-08-19 06:41:05', 'rekysda@gmail.com', 'Tambah Sub Menu', 'rapor'),
(188, '2020-08-21 02:06:18', 'rekysda@gmail.com', 'Hapus Jalur Biaya', 'Modul PPDB'),
(189, '2020-08-21 02:06:21', 'rekysda@gmail.com', 'Hapus Jalur Biaya', 'Modul PPDB'),
(190, '2020-08-21 02:06:23', 'rekysda@gmail.com', 'Hapus Jalur Biaya', 'Modul PPDB'),
(191, '2020-08-21 02:06:25', 'rekysda@gmail.com', 'Hapus Jalur Biaya', 'Modul PPDB'),
(192, '2020-08-21 02:54:38', 'rekysda@gmail.com', 'Tambah Sub Menu', 'download'),
(193, '2020-08-21 06:33:21', 'siswa', 'Tambah berkas', 'dd'),
(194, '2020-08-21 06:39:21', 'siswa', 'Tambah berkas', 'kk'),
(195, '2020-08-21 06:40:01', 'siswa', 'Tambah berkas', 'batman'),
(196, '2020-08-25 02:18:09', 'rekysda@gmail.com', 'Tambah Sub Menu', 'setting'),
(197, '2020-08-25 03:25:06', 'rekysda@gmail.com', 'Hapus Formulir', ''),
(198, '2020-08-25 03:25:37', 'rekysda@gmail.com', 'Tambah Formulir', ''),
(199, '2020-12-01 02:58:11', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Laporan Mutasi Rusak'),
(200, '2020-12-01 02:58:15', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Cetak Label'),
(201, '2020-12-01 02:58:19', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Surat Kode'),
(202, '2020-12-01 02:58:23', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Surat Masuk'),
(203, '2020-12-01 02:58:27', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Surat Keluar'),
(204, '2020-12-01 02:58:33', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Pengumuman'),
(205, '2020-12-01 02:58:41', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Pemutihan Siswa Batal'),
(206, '2020-12-01 02:58:45', 'rekysda@gmail.com', 'Hapus Sub Menu', 'BukuTamu'),
(207, '2020-12-01 02:58:49', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Aktifitas'),
(208, '2020-12-01 02:58:55', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Pemutihan Siswa'),
(209, '2020-12-01 02:59:00', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Laporan Prestasi Siswa'),
(210, '2020-12-01 02:59:05', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Prestasi Siswa'),
(211, '2020-12-01 02:59:09', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Laporan Pelanggaran'),
(212, '2020-12-01 02:59:14', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Pelanggaran Siswa'),
(213, '2020-12-01 02:59:19', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Pelanggaran'),
(214, '2020-12-01 02:59:23', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Kategori Pelanggaran'),
(215, '2020-12-01 02:59:27', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Laporan BukuTamu'),
(216, '2020-12-01 02:59:32', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Mutasi Rusak'),
(217, '2020-12-01 02:59:36', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Rekap Barang'),
(218, '2020-12-01 02:59:42', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Laporan Barang'),
(219, '2020-12-01 02:59:46', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Laporan Mutasi'),
(220, '2020-12-01 02:59:50', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Mutasi Keluar'),
(221, '2020-12-01 02:59:54', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Mutasi Masuk'),
(222, '2020-12-01 02:59:58', 'rekysda@gmail.com', 'Hapus Sub Menu', 'Inventaris'),
(223, '2020-12-01 03:07:42', 'rekysda@gmail.com', 'Tambah Sub Menu', 'aktifitas'),
(224, '2020-12-01 03:07:48', 'rekysda@gmail.com', 'Hapus Role', 'StaffSekolah'),
(225, '2020-12-01 03:07:55', 'rekysda@gmail.com', 'Hapus Role', 'Guru'),
(226, '2020-12-01 03:07:57', 'rekysda@gmail.com', 'Hapus Role', 'SiswaAktif'),
(227, '2020-12-01 03:07:59', 'rekysda@gmail.com', 'Hapus Role', 'CalonSiswa'),
(228, '2020-12-01 03:11:30', 'rekysda@gmail.com', 'Hapus Menu', 'marketing'),
(229, '2020-12-01 03:11:34', 'rekysda@gmail.com', 'Hapus Menu', 'pemutihan'),
(230, '2020-12-01 03:11:38', 'rekysda@gmail.com', 'Hapus Menu', 'bk'),
(231, '2020-12-01 03:11:40', 'rekysda@gmail.com', 'Hapus Menu', 'bukutamu'),
(232, '2020-12-01 03:11:42', 'rekysda@gmail.com', 'Hapus Menu', 'surat'),
(233, '2020-12-01 03:11:45', 'rekysda@gmail.com', 'Hapus Menu', 'sarpras'),
(234, '2020-12-01 03:11:47', 'rekysda@gmail.com', 'Hapus Menu', 'guru'),
(235, '2020-12-01 03:11:49', 'rekysda@gmail.com', 'Hapus Menu', 'rapor'),
(236, '2020-12-01 03:11:57', 'rekysda@gmail.com', 'Hapus Menu', 'kepegawaian'),
(237, '2020-12-01 03:12:00', 'rekysda@gmail.com', 'Hapus Menu', 'siswa'),
(238, '2020-12-01 03:12:01', 'rekysda@gmail.com', 'Hapus Menu', 'keuangan'),
(239, '2020-12-01 03:12:04', 'rekysda@gmail.com', 'Hapus Menu', 'ppdb'),
(240, '2020-12-01 03:12:15', 'rekysda@gmail.com', 'Hapus Menu', 'akademik'),
(241, '2020-12-01 03:15:23', 'rekysda@gmail.com', 'Hapus Menu', 'api'),
(242, '2020-12-01 03:15:48', 'rekysda@gmail.com', 'Edit Websetting', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'Administrator', 'admin', 'rekysda@gmail.com', '1577199716178.jpg', '$2y$10$1AJLIeMf95DuIcC3xZPGf.MZDBRslbARhg0MTI0CKEiNJWmCAO8oi', 1, 1, 1555463755);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_sekolah`
--

DROP TABLE IF EXISTS `user_access_sekolah`;
CREATE TABLE `user_access_sekolah` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sekolah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_sekolah`
--

INSERT INTO `user_access_sekolah` (`id`, `user_id`, `sekolah_id`) VALUES
(37, 3, 2),
(38, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_submenu`
--

DROP TABLE IF EXISTS `user_access_submenu`;
CREATE TABLE `user_access_submenu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `submenu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_submenu`
--

INSERT INTO `user_access_submenu` (`id`, `role_id`, `submenu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `menu_id` varchar(50) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `icon`, `menu_id`, `menu`) VALUES
(1, 'fa fa-fw fa-wrench', 'admin', 'Admin'),
(2, 'fa fa-fw fa-users', 'user', 'User'),
(3, 'fa fa-fw fa-navicon', 'menu', 'Menu'),
(4, 'fa fa-fw fa-users', 'log', 'Log');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

DROP TABLE IF EXISTS `user_sub_menu`;
CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `sort`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fa fa-fw fa-dashboard', 1, 0),
(2, 2, 'My Profile', 'user', 'fa fa-fw fa-user', 1, 1),
(3, 2, 'Edit Profile', 'user/edit', 'fa fa-fw fa-user', 1, 1),
(4, 3, 'Menu Management', 'menu', 'fa fa-fw fa-folder', 1, 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fa fa-fw fa-folder-open', 2, 1),
(7, 1, 'Role', 'admin/role', 'fa fa-fw fa-user-secret', 1, 1),
(8, 2, 'Change Password', 'user/changepassword', 'fa fa-fw fa-key', 1, 1),
(9, 1, 'Users', 'admin/userlogin', 'fa fa-fw fa-users', 1, 1),
(10, 1, 'Web Setting', 'admin/websetting', 'fa fa-fw fa-wrench', 3, 1),
(11, 4, 'Aktifitas', 'log/aktifitas', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apiemail`
--
ALTER TABLE `apiemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apisms`
--
ALTER TABLE `apisms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_options`
--
ALTER TABLE `m_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_sekolah`
--
ALTER TABLE `user_access_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_submenu`
--
ALTER TABLE `user_access_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `apiemail`
--
ALTER TABLE `apiemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apisms`
--
ALTER TABLE `apisms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_options`
--
ALTER TABLE `m_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_access_sekolah`
--
ALTER TABLE `user_access_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_access_submenu`
--
ALTER TABLE `user_access_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
