-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Feb 2023 pada 05.36
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ihbscg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id`, `nik`, `teacher_name`, `subject`) VALUES
(8, 18022023, 'Fajar Setia ', 'Waka Kurikulum'),
(9, 223456, 'Sukron', 'Bahasa Indonesia'),
(10, 223457, 'Hasan Bisri', 'Bahasa Arab'),
(11, 223458, 'Zakaria', 'Matematika'),
(12, 223459, 'Hendro', 'Aqidah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `wali_name` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `sub_class` enum('VII','VIII','IX','X','XI','XII') NOT NULL,
  `total_students` int(11) NOT NULL,
  `total_poin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `wali_name`, `class_name`, `sub_class`, `total_students`, `total_poin`) VALUES
(1, 'Hasan Basri', 'VIII C', 'VIII', 30, 0),
(2, 'Zakaria', 'VIII A', 'VIII', 30, 18),
(3, 'Rudi', 'XI IPS', 'XI', 30, 0),
(4, 'Sukron', 'VII A', 'VII', 30, 0),
(5, 'Hendro', 'IX B', 'IX', 30, 0),
(6, 'Radia', 'XII IPA', 'XII', 30, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggaran`
--

CREATE TABLE `tb_pelanggaran` (
  `id` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `wali_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `point` int(11) NOT NULL,
  `reported_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pelanggaran`
--

INSERT INTO `tb_pelanggaran` (`id`, `nisn`, `student_id`, `class_id`, `teacher_id`, `wali_id`, `type_id`, `note`, `point`, `reported_on`) VALUES
(15, 1234, 1, 2, 10, 1, 5, 'Baca Al quran 1 juz', 9, '2023-02-23 11:03:52'),
(16, 5646, 3, 2, 11, 3, 5, 'Menghafal 1 juz', 9, '2023-02-23 11:05:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone_number` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nisn`, `std_name`, `class_id`, `address`, `phone_number`) VALUES
(1, 1234, 'Ahmad', 2, 'Bekasi', 8965665),
(2, 2345, 'Hanif ', 1, 'Depok', 8965665),
(3, 5646, 'Rayzan', 2, 'Jakarta', 8965665),
(4, 6272, 'Sultan', 3, 'Bogor', 8965665);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tipe_pelanggaran`
--

CREATE TABLE `tb_tipe_pelanggaran` (
  `id` int(11) NOT NULL,
  `violation_name` text NOT NULL,
  `get_point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tipe_pelanggaran`
--

INSERT INTO `tb_tipe_pelanggaran` (`id`, `violation_name`, `get_point`) VALUES
(1, 'Bolos', 10),
(2, 'Baju Tidak Rapi', 4),
(3, 'Rambut Gondrong', 6),
(4, 'Tidur Di Kelas', 8),
(5, 'Berkelahi', 9),
(27, 'Bulliying', 16),
(28, 'Profokasi', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level` enum('Admin','Guru','Siswa','Wali') NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `remember_me` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id`, `full_name`, `email`, `username`, `password`, `level`, `status`, `remember_me`) VALUES
(2, 'Robby Ilhamkusuma', 'robbyikusuma88@gmail.com', 'Admin', '$2y$10$qGtSTKeASa.Z1PZDD7vAcu.IYSukWOmT.DptVS1xxle98ti85Tpdi', 'Admin', 1, 'PuRrF2IySPM5nDZ8NGvbwlYHkFB5O98sgJad7UGW0Q3JHVAjf4ymx7x6YsRcpu96'),
(4, 'Guru SMP', 'gurusmpihbs@gmail.com', 'gurusmp', '$2y$10$LjtCMugr/0UxxT03PZAOz.lqwW2h/sEfoNJGxOQJDOVH0dTLgMWia', 'Guru', 1, ''),
(6, 'siswa smp', 'siswasmpihbs@gmail.com', 'siswasmp', '$2y$10$9lxDkULQduWYD.aXTMW/NuSORgQ/h3oDgbWsPZsOqu9kUDEHh33M6', 'Siswa', 1, ''),
(14, 'Guru SMA', 'gurusma@gmail.com', 'gurusma', '$2y$10$yFWRkqgfc5uEwEUsBd1fJOojDpPZ1d4uDyl93vDT2m1oTS6eSuD2.', 'Guru', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_wali`
--

CREATE TABLE `tb_wali` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `phone_number` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_wali`
--

INSERT INTO `tb_wali` (`id`, `student_id`, `parent_name`, `phone_number`) VALUES
(1, 1, 'Sabiis', 8965665),
(2, 2, 'Roni', 8965665),
(3, 3, 'Abu Japar', 8965665),
(4, 4, 'Pian', 8965665),
(5, 5, 'Pipin', 8965665);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_website`
--

CREATE TABLE `tb_website` (
  `id` int(1) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_website`
--

INSERT INTO `tb_website` (`id`, `school_name`, `point`) VALUES
(1, 'IHBS', 65);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pelanggaran`
--
ALTER TABLE `tb_pelanggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indeks untuk tabel `tb_tipe_pelanggaran`
--
ALTER TABLE `tb_tipe_pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_wali`
--
ALTER TABLE `tb_wali`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indeks untuk tabel `tb_website`
--
ALTER TABLE `tb_website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggaran`
--
ALTER TABLE `tb_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_tipe_pelanggaran`
--
ALTER TABLE `tb_tipe_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_wali`
--
ALTER TABLE `tb_wali`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_website`
--
ALTER TABLE `tb_website`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
