-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 09:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `banjir`
--

CREATE TABLE `banjir` (
  `Tempat` varchar(50) NOT NULL,
  `Korban` int(50) NOT NULL,
  `Jumlah_Pengusian` int(50) NOT NULL,
  `Kerusakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banjir`
--

INSERT INTO `banjir` (`Tempat`, `Korban`, `Jumlah_Pengusian`, `Kerusakan`) VALUES
('Kalimantan Selatan', 2711, 112709, 'Tidak Ada'),
('Sulawesi Selatan', 3, 0, 'Tidak Ada'),
('Bekasi', 66, 0, 'Tidak Ada'),
('Bogor', 66, 0, 'Tidak Ada'),
('Jakarta', 66, 0, 'Tidak Ada'),
('Tangerang', 66, 0, 'Tidak Ada'),
('Nusa Tenggara', 23362, 20929, 'Tidak Ada');

-- --------------------------------------------------------

--
-- Table structure for table `bencana`
--

CREATE TABLE `bencana` (
  `Bencana` varchar(50) NOT NULL,
  `Tempat` varchar(50) NOT NULL,
  `Korban` int(50) NOT NULL,
  `Jumlah_Pengusian` int(50) NOT NULL,
  `Kerusakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bencana`
--

INSERT INTO `bencana` (`Bencana`, `Tempat`, `Korban`, `Jumlah_Pengusian`, `Kerusakan`) VALUES
('Banjir', 'Kalimantan Selatan ', 2711, 112709, 'Tidak Ada'),
('Banjir', 'Sulawesi Selatan', 3, 0, 'Tidak Ada'),
('Banjir', 'Bekasi', 66, 0, 'Tidak Ada'),
('Banjir', 'Bogor', 66, 0, 'Tidak Ada'),
('Banjir', 'Jakarta', 66, 0, 'Tidak Ada'),
('Banjir', 'Tangerang', 66, 0, 'Tidak Ada'),
('Banjir', 'Nusa Tenggara', 23362, 20929, 'Tidak Ada'),
('Gempa Bumi', 'Jawa Timur', 115, 0, 'Tidak Ada'),
('Gempa Bumi', 'Sulawesi Barat', 3474, 0, 'Tidak Ada'),
('Tanah Longsor', 'Sumedang', 40, 0, 'Rumah Rusak Berat'),
('Tanah Longsor', 'Nusa Tenggara', 23362, 0, 'Rumah Rusak Berat'),
('Tsunami', 'Selat Sunda', 913, 2000, 'Rumah,Hotel,Warung'),
('Siklon Seroja', 'Nusa Tenggara Timur', 330, 467784, 'Rumah Rusak Berat'),
('Siklon Seroja', 'Nusa Tenggara Barat', 2, 48949, 'Rumah Rusak Berat'),
('Siklon Seroja', 'Timor Leste', 42, 0, 'Rumah Rusak Berat');

-- --------------------------------------------------------

--
-- Table structure for table `dataalternatif`
--

CREATE TABLE `dataalternatif` (
  `Alternatif` varchar(50) NOT NULL,
  `C1 Data Donasi` int(50) NOT NULL,
  `C2 Data Bencana` int(50) NOT NULL,
  `C3 Bantuan` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataalternatif`
--

INSERT INTO `dataalternatif` (`Alternatif`, `C1 Data Donasi`, `C2 Data Bencana`, `C3 Bantuan`) VALUES
('R1 Banjir', 200000, 8, 49),
('R2 Gempa Bumi', 300000, 3, 115),
('R3 Tanah Longsor', 500000, 3, 40),
('R4 Tsunami', 100000, 1, 913),
('R5 Siklon Seroja', 250000, 3, 42);

-- --------------------------------------------------------

--
-- Table structure for table `datakriteria`
--

CREATE TABLE `datakriteria` (
  `Kriteria` varchar(50) NOT NULL,
  `Kepentingan` int(50) NOT NULL,
  `Cost / Benefit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datakriteria`
--

INSERT INTO `datakriteria` (`Kriteria`, `Kepentingan`, `Cost / Benefit`) VALUES
('C1 Data Donasi', 5, 'Cost'),
('C2 Data Bencana', 3, 'Benefit'),
('C3 Bantuan', 3, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `donasi`
--

CREATE TABLE `donasi` (
  `Nama` varchar(50) NOT NULL,
  `Nominal` int(50) NOT NULL,
  `Bank` varchar(50) NOT NULL,
  `Nomer_Rekening` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donasi`
--

INSERT INTO `donasi` (`Nama`, `Nominal`, `Bank`, `Nomer_Rekening`) VALUES
('Slamet Pribadi', 200000, 'BNI', 318181566),
('Setyadi Pramono', 500000, 'BNI', 318181567),
('Wahyuono', 200000, 'BNI', 318181568),
('H.Much.Ali Yusuf', 300000, 'BNI', 318181569),
('H.Muhammad Gunawan', 500000, 'BNI', 318181570),
('Binsar Samosir', 100000, 'BNI', 318181571),
('Agus Feri Handoko', 100000, 'BNI', 318181572),
('Suyatno Yogo Sumitro', 25000, 'BNI', 318181573);

-- --------------------------------------------------------

--
-- Table structure for table `gempabumi`
--

CREATE TABLE `gempabumi` (
  `Tempat` varchar(50) NOT NULL,
  `Korban` int(50) NOT NULL,
  `Jumlah_Pengusian` int(50) NOT NULL,
  `Kerusakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gempabumi`
--

INSERT INTO `gempabumi` (`Tempat`, `Korban`, `Jumlah_Pengusian`, `Kerusakan`) VALUES
('Jawa Timur', 115, 0, 'Tidak Ada'),
('Sulawesi Barat', 3474, 0, 'Tidak Ada');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('admin', 'admin'),
('kiki', 'baru'),
('kiki', 'bebas'),
('kiki', 'bebas'),
('kiki', 'bebas'),
('admin', 'admin'),
('admin', 'admin'),
('yuni', 'baru'),
('yuni', 'baru'),
('kiki', 'baru'),
('kiki', 'bebas'),
('kiki', 'skirsi'),
('', ''),
('kiki', 'yafshbsdkj'),
('kiki', 'dhgkfh'),
('kiki', 'fshghbfd'),
('gsds', 'dfa'),
('vhjdvhjf', 'gfsfg'),
('dsf', 'afva'),
('sdfg', 'fgbr');

-- --------------------------------------------------------

--
-- Table structure for table `renking`
--

CREATE TABLE `renking` (
  `Alternatif` varchar(50) NOT NULL,
  `Vektor_V` int(50) NOT NULL,
  `Ranking` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renking`
--

INSERT INTO `renking` (`Alternatif`, `Vektor_V`, `Ranking`) VALUES
('R1 Banjir', 2142238, 2),
('R2 Gempa Bumi', 1724443, 3),
('R3 Tanah Longsor', 1030357, 5),
('R4 Tsunami', 3676803, 1),
('R5 Siklon Seroja', 1426169, 4),
('', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `siklon`
--

CREATE TABLE `siklon` (
  `Tempat` varchar(50) NOT NULL,
  `Korban` int(50) NOT NULL,
  `Jumlah_Pengusian` int(50) NOT NULL,
  `Kerusakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siklon`
--

INSERT INTO `siklon` (`Tempat`, `Korban`, `Jumlah_Pengusian`, `Kerusakan`) VALUES
('Nusa Tenggara Timur', 330, 467784, 'Rumah Rusak Berat'),
('Nusa Tenggara Barat', 2, 48949, 'Rumah Rusak Berat'),
('Timor Leste', 42, 0, 'Rumah Rusak Berat');

-- --------------------------------------------------------

--
-- Table structure for table `tanahlongsor`
--

CREATE TABLE `tanahlongsor` (
  `Tempat` varchar(50) NOT NULL,
  `Korban` int(50) NOT NULL,
  `Jumlah_Pengusian` int(50) NOT NULL,
  `Kerusakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanahlongsor`
--

INSERT INTO `tanahlongsor` (`Tempat`, `Korban`, `Jumlah_Pengusian`, `Kerusakan`) VALUES
('Sumedang', 40, 0, 'Rumah Rusak Berat'),
('Nusa Tenggara', 23362, 0, 'Rumah Rusak Berat');

-- --------------------------------------------------------

--
-- Table structure for table `tsunami`
--

CREATE TABLE `tsunami` (
  `Tempat` varchar(50) NOT NULL,
  `Korban` int(50) NOT NULL,
  `Jumlah_Pengusian` int(50) NOT NULL,
  `Kerusakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tsunami`
--

INSERT INTO `tsunami` (`Tempat`, `Korban`, `Jumlah_Pengusian`, `Kerusakan`) VALUES
('Selat Sunda', 913, 2000, 'Rumah,Hotel,Warung');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
