-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 03:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, 'Ahmad Puji Wahyono', 'ahmad@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', 'Ahmad.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(5, '001', 'Fatmawati S.Pd', 'fatmawati@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'guru.png', 'Y'),
(6, '002', 'Rahayu S.Pd', 'rahayu@gmail.com', '6fc978af728d43c59faa400d5f6e0471ac850d4c', 'female.jpg', 'Y'),
(7, '003', 'Jaka Subadri S.Pd', 'jakasubadri@gmail.com', '221407c03ae5c73109cce71d27e24637824f3333', 'male.jpg', 'Y'),
(8, '004', 'Tiwi Sukmawati S.Pd', 'tiwisukmawati@gmail.com', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', 'female.jpg', 'Y'),
(9, '005', 'Refika Idayanti S.Pd', 'refika@gmail.com', 'de1f53b6fbc3fecd35b0bbc963e21902a149e5e3', 'female.jpg', 'Y'),
(10, '006', 'Alif Filza Firstian S.Pd', 'filza@gmail.com', '20dd129da16a9afb802d8b595485f8d2719aea44', '_5b6c37c5-cc6f-48f6-bc50-5d2f442b808d.jpg', 'Y'),
(11, '007', 'Sri Wahyuningsih S.Pd', 'sriwahyuni@gmail.com', '15346b593c4d0cf05fb6e67a5669d852e6550481', 'female.jpg', 'Y'),
(12, '008', 'Umi Warsiti S.Pd', 'umi@gmail.com', '52c24d49be8ef49d19f9983b6c3d1c5892c593db', 'female.jpg', 'Y'),
(13, '009', 'Suwanto S.Pd', 'suwanto@gmail.com', '19b3f0ed02e60c8bae808b496b3cce99dc8f9e69', '8468890e-7a32-4557-b378-bb02d774d4c1.png', 'Y'),
(14, '010', 'Suprayitno S.Pd', 'suprayitno@gmail.com', '47ab9979443fb7ed1c193d06773333ba7876094f', '_35928030-f7b5-4fb7-bf77-12891ba6621f.jfif', 'Y'),
(15, '011', 'Astutik S.Pd', 'astutik@gmail.com', 'e7001334d9d19559a8bb0dd6015f16e31d15566c', '_4c97cce2-2d9a-4934-a5b2-90943e2629b5.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kepsek`
--

CREATE TABLE `tb_kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_kepsek` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nip`, `nama_kepsek`, `email`, `password`, `foto`, `status`) VALUES
(2, '35431300354', 'Ahmad Puji Wahyono', 'admin@gmail.com', '9795e42e3e26c1d7080e5886fa2cb416c3d1aa54', 'male.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_master_mapel`
--

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_master_mapel`
--

INSERT INTO `tb_master_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(1, 'MP-1561560093', 'Bahasa Indonesia'),
(2, 'MP-1561560129', 'Matematika'),
(3, 'MP-1561871991', 'Biologi'),
(4, 'MP-1561872004', 'Sejarah'),
(5, 'MP-1561872013', 'Teknologi Informasi'),
(6, 'MP-1561872026', 'Seni Budaya'),
(7, 'MP-1561872043', 'Bahasa Inggris'),
(8, 'MP-1615002340', 'Ilmu Pengetahuan Alam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(4, 'MPL-1615004563', 'Senin', '08.00-09.00', '1', 6, 2, 3, 2, 2),
(5, 'MPL-1616288498', 'Rabu', '09.00-10.00', '2', 8, 7, 1, 2, 2),
(6, 'MPL-1582242668', 'Senin', '08.00-09.00', '1', 5, 1, 1, 4, 8),
(8, 'MPL-1722740085', 'Senin', '07.00-08.00', '1', 5, 1, 5, 4, 8),
(9, 'MPL-1722740112', 'Senin', '09.00-10.00', '2', 5, 1, 6, 4, 8),
(10, 'MPL-1722740152', 'Senin', '11.00-12.00', '3', 5, 1, 7, 4, 8),
(11, 'MPL-1722740871', 'Senin', '07.00-08.00', '1', 5, 1, 5, 0, 9),
(12, 'MPL-1722740911', 'Senin', '07.00-08.00', '1', 5, 1, 5, 0, 9),
(13, 'MPL-1722740948', 'Selasa', '07.00-08.00', '1', 5, 1, 6, 0, 9),
(25, 'MPL-1722832863', 'Senin', '07.00-08.00', '1', 5, 1, 5, 4, 9),
(26, 'MPL-1722832879', 'Senin', '09.00-10.00', '2', 5, 1, 6, 4, 9),
(27, 'MPL-1722832897', 'Senin', '11.00-12.00', '3', 5, 1, 7, 4, 9),
(28, 'MPL-1722832915', 'Senin', '09.00-10.00', '2', 6, 2, 5, 4, 9),
(29, 'MPL-1722832992', 'Senin', '07.00-08.00', '1', 6, 2, 6, 4, 9),
(30, 'MPL-1722833019', 'Senin', '11.00-12.00', '3', 6, 2, 7, 4, 9),
(31, 'MPL-1722833066', 'Senin', '11.00-12.00', '3', 7, 3, 5, 4, 9),
(32, 'MPL-1722833095', 'Senin', '09.00-10.00', '2', 7, 3, 5, 4, 9),
(33, 'MPL-1722833124', 'Senin', '09.00-10.00', '2', 7, 3, 7, 4, 9),
(34, 'MPL-1723261382', 'Senin', '07.00-08.00', '1', 6, 1, 5, 6, 9),
(35, 'MPL-1723261413', 'Senin', '09.00-10.00', '2', 6, 1, 6, 6, 9),
(36, 'MPL-1723261437', 'Senin', '11.00-12.00', '3', 6, 1, 11, 6, 9),
(40, 'MPL-1725354046', 'Senin', '07.00-08.00', '1', 5, 2, 5, 6, 9),
(41, 'MPL-1725354094', 'Senin', '09.00-10.00', '2', 5, 2, 6, 6, 9),
(42, 'MPL-1725354115', 'Senin', '11.00-12.00', '3', 5, 2, 11, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(5, 'KL-1616673105', 'VII'),
(6, 'KL-1616673114', 'VIII'),
(11, 'KL-1722993337', 'IX');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(6, 'Semester 1', 1),
(7, 'Semester 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(10, '2024001', '	DARIE NURSHANDRINA', 'Surabaya', '2011-01-05', 'Perempuan', 'Jl. Jambu', '3d22ff0aff24f389b501c83ccb9f6d219021ec92', 'Vidnoz_AiFaceSwap_1710069737746.png', '1', '2024', 5),
(11, '2024002', '	FAYA NAILA ANISA', 'Surabaya', '2011-01-02', 'Perempuan', 'Jl. Mangga', 'e2e084bd5ecd60be4bab00f46f86687851d61dc0', 'female.jpg', '1', '2024', 5),
(12, '2024003', 'GALIH WIDYA SAPUTRA', 'Surabaya', '2011-02-08', 'Laki-laki', 'Jl. Salak', 'ae7142edd340ce617b290d543f9e0a27eeee2ab7', 'male.jpg', '1', '2024', 5),
(13, '2024004', '	LOVELY TZUCHI ESTER SIMATUPANG', 'Surabaya', '2011-03-08', 'Perempuan', 'Jl. Jambu', '5801a6bbd14818d85b4a166ec55b32cc307cf13d', 'female.jpg', '1', '2024', 5),
(14, '2024005', '	MUHAMMAD RAFTA RIZKY RIANDRA', 'Surabaya', '2011-04-13', 'Laki-laki', 'Jl. Pisang', '710c12d70ea7f86a52e9e58352798c3e35377c4a', 'male.jpg', '1', '2024', 5),
(15, '2023001', '	ADELIA SAPTYARINA ADELIA', 'Surabaya', '2016-02-11', 'Perempuan', 'Jl. Manggis', '98d231533495e995bb0b2795e242ce653520e00e', 'female.jpg', '1', '2023', 6),
(16, '2023002', '	ADINDA', 'Surabaya', '2016-04-16', 'Perempuan', 'Jl. Manggis', '2f7df2f4beb23fb52a0b304205c424bd690456dd', 'female.jpg', '1', '2023', 6),
(17, '2023003', '	AMYRA DARA CALISTA', 'Surabaya', '2016-08-10', 'Perempuan', 'Jl. Jalak', '764ba98c11d6c10f501109657c821e39ff652e44', 'female.jpg', '1', '2023', 6),
(18, '2023004', '	ANAYA LUTFIA', 'Surabaya', '2016-11-15', 'Laki-laki', 'Jl. Bali', 'a3e65f162ef2790edb45d79f843f00f66d7dae99', 'female.jpg', '1', '2023', 6),
(19, '2023005', 'MUHAMMAD HAEKAL ', 'Surabaya', '2016-10-10', 'Laki-laki', 'Jl. Sumatra', '7f9fd5d8db01e30bc46f7571d997aa618c8276cd', 'male.jpg', '1', '2023', 6),
(25, '2024006', 'Adella Rahma Suhendra', 'Surabaya', '2011-11-30', 'Laki-laki', 'Jl. Mawar No. 23\r\nKel. Kedung Baruk Kec. Rungkut\r\nSURABAYA', '4656128ab22be37ee301782fbef33d3c06fe354a', 'female.jpg', '1', '2024', 5),
(26, '2024007', 'Mardigu Wowik bin Abdillah', 'Pasuruan', '2011-12-18', 'Laki-laki', 'Jl. Raya Kedung Asem 23\r\nKel. Kedung Baruk\r\nKec. Rungkut\r\nSURABAYA', 'ce41c7b701fe78f7066cb697fff1183e552ad360', 'Refika.PNG', '1', '2024', 5),
(27, '2024008', 'Tan Cay Sing', 'Pasuruan', '2011-07-21', 'Laki-laki', 'Jl. Cokroaminoto 354\r\nKel. Siman\r\nKec. Siman\r\nKab. PONOROGO', 'ce41c7b701fe78f7066cb697fff1183e552ad360', '_8a97d208-fdac-40ae-adaf-2d738e2f63db.jpg', '1', '2024', 5),
(28, '2024009', 'Fatkan Mubin', 'Surabaya', '0000-00-00', 'Laki-laki', 'JL. Kedung Baruk 23', 'c29abefdc78f1ebddf35e2314783967623611b10', 'male.jpg', '1', '2024', 5),
(29, '2024010', 'Fatkan Mubin Asidiki', 'Surabaya', '2024-09-15', 'Laki-laki', 'JL. PRoambodo 354', '2f0a9105e978b6d2c738b5aeb227554da278204c', 'male.jpg', '1', '2024', 5),
(30, '2023006', 'Ayu Ting ting', 'Pasuruan', '2023-07-26', 'Perempuan', 'Jl. Sulawesi 32', '2411ae3a8b1a7f15a380f1fe0f4af6d9458f90e6', 'female.jpg', '1', '2023', 6),
(31, '2023007', 'Ayu Azhari', 'Sidoarjo', '2023-08-24', 'Laki-laki', 'Jl. Sulawesi 23', '6cf2aa7db9aa5c6084928db017d1c9b7f5564782', 'female.jpg', '1', '2023', 6),
(32, '2023008', 'Mardiana Sulistiyowati', 'Sidoarjo', '2023-02-28', 'Perempuan', 'Jl. Ambaraw 100', '9efeac409c901be1e72bcee0516808f85cb1a850', 'female.jpg', '1', '2023', 6),
(33, '2023009', 'Sarah Azhari', 'Sidoarjo', '2023-04-19', 'Perempuan', 'Jl. Hasyim Ashary 12', 'fe566f24d190ad1980d6acbd5c636a340c556183', 'female.jpg', '1', '2023', 6),
(34, '2023010', 'Micel Agustinus', 'Malang', '2023-02-22', 'Laki-laki', 'Jl. Legundi 89', '4cf5c4a3496aee4b24becbafbf35f516f6a3599b', 'male.jpg', '1', '2023', 6),
(35, '2022001', 'Farhan Pratama', 'Surabaya', '2022-03-22', 'Laki-laki', 'Jl. Abimanyu 12', '9a351c340c1164b43e3ae9aff21a5d87a52947fd', 'male.jpg', '1', '2022', 11),
(36, '2022002', 'Fauziyah Ambarawa', 'Surabaya', '2022-08-18', 'Perempuan', 'Jl. Beliton 32', '110083e1fd3b3b182e68a082278b8bb8b33457f3', 'female.jpg', '1', '2022', 11),
(37, '2022003', 'Atiyah Malika', 'Surabaya', '2022-03-29', 'Perempuan', 'Jl Mangga 34', '64bbd279756a77630fa88243cc484743ba60956a', 'female.jpg', '1', '2022', 11),
(38, '2022006', 'Mardika Dirgantara', 'Surabaya', '2022-07-20', 'Laki-laki', 'Jl. Kalimantan 90', 'a0c57557bbeadf7d29dbac1ed0c2b21085ca0ebf', 'male.jpg', '1', '2022', 11),
(39, '2022007', 'Amalia Ayu', 'Pasuruan', '2022-07-20', 'Perempuan', 'Jl. Jawa 78', 'be6bafe47b7f930fe73f9194d820832689ffa68a', 'female.jpg', '1', '2022', 11),
(40, '2022008', 'Julius Tirtono', 'Surabaya', '2022-08-23', 'Laki-laki', 'Jl. Solo 45', 'be6bafe47b7f930fe73f9194d820832689ffa68a', 'male.jpg', '1', '2022', 11),
(41, '2022004', 'Riski Ramadan', 'Pasuruan', '2022-01-03', 'Laki-laki', 'Jl. Bali 40', 'bb4a0369972a81f603a9b4d2043cccad89f62d7c', 'male.jpg', '1', '2022', 11),
(42, '2022005', 'Agus Maho', 'Sidoarjo', '2022-03-31', 'Laki-laki', 'Jl. Sulawesi 67', 'bdd40485f0c2cf4d320aae2d4033e959fed112cb', 'male.jpg', '1', '2022', 11),
(43, '2022009', 'Dahlia Indah', 'Surabaya', '2022-08-18', 'Perempuan', 'Jl. Ambarawa 68', 'd4ac572402311f9e65eb58c130e026604e8fdec2', 'female.jpg', '1', '2022', 11),
(44, '2022010', 'Malika Galih', 'Sidoarjo', '2022-08-18', 'Perempuan', 'Jl. Belitung 45', '187b9484eb36454385f52be865bb6b43b1f1ac58', 'female.jpg', '1', '2022', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(9, '2024/2025', 1),
(10, '2025/2026', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id_walikelas`, `id_guru`, `id_mkelas`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 5, 3),
(4, 6, 1),
(5, 8, 2),
(6, 5, 5),
(7, 6, 6),
(8, 7, 7),
(9, 8, 8),
(10, 9, 9),
(11, 10, 10),
(12, 8, 7),
(13, 7, 11);

-- --------------------------------------------------------

--
-- Table structure for table `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','C') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `_logabsensi`
--

INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_siswa`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
(1, 2, 1, '2021-03-02', '', '1'),
(2, 4, 2, '2021-03-06', 'I', '1'),
(3, 2, 1, '2021-03-21', 'H', '2'),
(4, 2, 3, '2021-03-21', 'H', '3'),
(5, 5, 1, '2021-03-21', 'H', '1'),
(6, 5, 3, '2021-03-21', 'H', '1'),
(7, 2, 1, '2021-03-23', 'H', '4'),
(8, 2, 3, '2021-03-23', 'I', '4'),
(9, 6, 1, '2021-03-23', 'H', '1'),
(10, 6, 3, '2021-03-23', 'H', '1'),
(11, 6, 4, '2021-03-23', 'H', '1'),
(12, 6, 1, '2021-03-25', 'I', '2'),
(13, 6, 3, '2021-03-25', 'I', '2'),
(14, 6, 4, '2021-03-25', 'I', '2'),
(15, 14, 6, '2024-08-05', 'H', '1'),
(16, 14, 7, '2024-08-05', 'H', '1'),
(17, 14, 8, '2024-08-05', 'H', '1'),
(18, 25, 10, '2024-08-05', 'H', '1'),
(19, 25, 11, '2024-08-05', 'H', '1'),
(20, 25, 12, '2024-08-05', 'H', '1'),
(21, 25, 13, '2024-08-05', 'H', '1'),
(22, 25, 14, '2024-08-05', 'H', '1'),
(23, 28, 10, '2024-08-05', 'H', '1'),
(24, 28, 11, '2024-08-05', 'H', '1'),
(25, 28, 12, '2024-08-05', 'H', '1'),
(26, 28, 13, '2024-08-05', 'H', '1'),
(27, 28, 14, '2024-08-05', 'H', '1'),
(28, 29, 15, '2024-08-05', 'H', '1'),
(29, 29, 16, '2024-08-05', 'H', '1'),
(30, 29, 17, '2024-08-05', 'H', '1'),
(31, 29, 18, '2024-08-05', 'H', '1'),
(32, 29, 19, '2024-08-05', 'I', '1'),
(33, 30, 20, '2024-08-05', 'H', '1'),
(34, 30, 21, '2024-08-05', 'H', '1'),
(35, 30, 22, '2024-08-05', 'H', '1'),
(36, 30, 23, '2024-08-05', 'H', '1'),
(37, 30, 24, '2024-08-05', 'S', '1'),
(38, 25, 10, '2024-08-06', 'H', '2'),
(39, 25, 11, '2024-08-06', 'H', '2'),
(40, 25, 12, '2024-08-06', 'H', '2'),
(41, 25, 13, '2024-08-06', 'H', '2'),
(42, 25, 14, '2024-08-06', 'H', '2'),
(43, 26, 15, '2024-08-06', 'H', '1'),
(44, 26, 16, '2024-08-06', 'H', '1'),
(45, 26, 17, '2024-08-06', 'H', '1'),
(46, 26, 18, '2024-08-06', 'H', '1'),
(47, 26, 19, '2024-08-06', 'H', '1'),
(48, 28, 10, '2024-08-06', 'H', '2'),
(49, 28, 11, '2024-08-06', 'H', '2'),
(50, 28, 12, '2024-08-06', 'H', '2'),
(51, 28, 13, '2024-08-06', 'H', '2'),
(52, 28, 14, '2024-08-06', 'H', '2'),
(53, 30, 20, '2024-08-06', 'H', '2'),
(54, 30, 21, '2024-08-06', 'H', '2'),
(55, 30, 22, '2024-08-06', 'H', '2'),
(56, 30, 23, '2024-08-06', 'H', '2'),
(57, 30, 24, '2024-08-06', 'H', '2'),
(58, 34, 10, '2024-08-10', 'H', '1'),
(59, 34, 11, '2024-08-10', 'H', '1'),
(60, 34, 12, '2024-08-10', 'H', '1'),
(61, 34, 13, '2024-08-10', 'H', '1'),
(62, 34, 14, '2024-08-10', 'H', '1'),
(63, 34, 25, '2024-08-10', 'H', '2'),
(64, 34, 26, '2024-08-10', 'H', '2'),
(65, 34, 27, '2024-08-10', 'H', '2'),
(66, 35, 15, '2024-08-10', 'H', '1'),
(67, 35, 16, '2024-08-10', 'H', '1'),
(68, 35, 17, '2024-08-10', 'H', '1'),
(69, 35, 18, '2024-08-10', 'H', '1'),
(70, 35, 19, '2024-08-10', 'H', '1'),
(71, 34, 10, '2024-08-11', '', '3'),
(72, 34, 11, '2024-08-11', '', '3'),
(73, 34, 12, '2024-08-11', '', '3'),
(74, 34, 13, '2024-08-11', '', '3'),
(75, 34, 14, '2024-08-11', '', '3'),
(76, 34, 25, '2024-08-11', '', '3'),
(77, 34, 26, '2024-08-11', '', '3'),
(78, 34, 27, '2024-08-11', '', '3'),
(79, 34, 10, '2024-09-04', 'H', '4'),
(80, 34, 11, '2024-09-04', 'H', '4'),
(81, 34, 12, '2024-09-04', 'H', '4'),
(82, 34, 13, '2024-09-04', 'H', '4'),
(83, 34, 14, '2024-09-04', 'H', '4'),
(84, 34, 25, '2024-09-04', 'H', '4'),
(85, 34, 26, '2024-09-04', 'H', '4'),
(86, 34, 27, '2024-09-04', 'H', '4'),
(87, 34, 28, '2024-09-04', 'H', '4'),
(88, 34, 29, '2024-09-04', 'H', '4'),
(89, 35, 15, '2024-09-04', 'H', '2'),
(90, 35, 16, '2024-09-04', 'H', '2'),
(91, 35, 17, '2024-09-04', 'H', '2'),
(92, 35, 18, '2024-09-04', 'H', '2'),
(93, 35, 19, '2024-09-04', 'H', '2'),
(94, 35, 30, '2024-09-04', 'H', '2'),
(95, 35, 31, '2024-09-04', 'H', '2'),
(96, 35, 32, '2024-09-04', 'H', '2'),
(97, 35, 33, '2024-09-04', 'H', '2'),
(98, 35, 34, '2024-09-04', 'H', '2'),
(99, 36, 35, '2024-09-04', 'H', '1'),
(100, 36, 36, '2024-09-04', 'H', '1'),
(101, 36, 37, '2024-09-04', 'H', '1'),
(102, 36, 38, '2024-09-04', 'H', '1'),
(103, 36, 39, '2024-09-04', 'H', '1'),
(104, 36, 40, '2024-09-04', 'H', '1'),
(105, 36, 41, '2024-09-04', 'H', '1'),
(106, 36, 42, '2024-09-04', 'H', '1'),
(107, 36, 43, '2024-09-04', 'H', '1'),
(108, 36, 44, '2024-09-04', 'H', '1'),
(109, 38, 15, '2024-09-04', 'H', '1'),
(110, 38, 16, '2024-09-04', 'H', '1'),
(111, 38, 17, '2024-09-04', 'H', '1'),
(112, 38, 18, '2024-09-04', 'H', '1'),
(113, 38, 19, '2024-09-04', 'H', '1'),
(114, 38, 30, '2024-09-04', 'H', '1'),
(115, 38, 31, '2024-09-04', 'H', '1'),
(116, 38, 32, '2024-09-04', 'H', '1'),
(117, 38, 33, '2024-09-04', 'H', '1'),
(118, 38, 34, '2024-09-04', 'H', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indexes for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indexes for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
