-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 12:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `body`, `image`, `created`) VALUES
(13, 'Agus Rahardjo: Kasus Firli Ini kalau Boleh Saya Menyalahkan ya Pak Jokowi', 'Agus-Rahardjo-Kasus-Firli-Ini-kalau-Boleh-Saya-Menyalahkan-ya-Pak-Jokowi', '<p><strong>JAKARTA, KOMPAS.TV</strong> - Mantan Ketua <a href=\"https://www.kompas.tv/tag/kpk\">KPK</a> <a href=\"https://www.kompas.tv/tag/agus-rahardjo\">Agus Rahardjo</a> merasa sedih marwah KPK yang sebelumnya dipimpinnya kini terpuruk lantaran munculnya kasus tindak pidana korupsi di pimpinan KPK.</p><p>Agus menjelaskan permasalahan KPK saat ini tidak terlepas dari proses seleksi calon pimpinan (Capim) KPK.&nbsp;</p><p>Sedari awal para pegiat antikorupsi sudah memprotes masuknya nama <a href=\"https://www.kompas.tv/tag/firli-bahuri\">Firli Bahuri</a> sebagai <a href=\"https://www.kompas.tv/tag/capim-kpk\">Capim KPK</a>, namun protes tersebut tidak mendapat respons.</p><p>Tak hanya pegiat antikorupsi, KPK melalui Deputi pengawasan internal dan pengaduan masyarakat pernah mengirim surat ke panitia seleksi Capim KPK dan siap membeberkan bukti kecacatan Firli.&nbsp;</p><p>Bahkan Agus mengaku pernah mengirimkan surat terbuka ke Presiden Joko Widodo yang berisi protes masuknya Firli menjadi Capim KPK.&nbsp;</p><p>\"Kami dulu di KPK termasuk orang yang tidak menyetujui Pak Firli ini menjadi komisioner,\" ujar Agus di program <i>Rosi KOMPAS TV</i>, Kamis (30/11/2023) malam.</p><p>Agus menambahkan jika Presiden <a href=\"https://www.kompas.tv/tag/jokowi\">Jokowi</a> mendengar aspirasi dari masyarakat dan merespons surat yang dikirimnya, kemungkinan besar KPK tidak terseret dalam permasalahan yang terjadi saat ini.</p><p>\"Saya sebetulnya ingin mengatakan bahwa sebetulnya kasus pak Firli ini bermula dari, kalau saya boleh menyalahkan ya pak Jokowi. Karena tune of the top keliatannya di periode kedua Pak Jokowi itu menurun untuk pemberantasan korupsi,\" ujar Agus.</p><p>Di sisi lain Agus menilai periode kedua Presiden Jokowi komitmen pemberantasan korupsi mulai menurun. Di periode ini jugalah muncul revisi UU KPK yang tidak diinginkan para insan KPK.&nbsp;</p><p>Menurut Agus sejatinya bukan UU KPK yang direvisi, melainkan UU Tindak Pidana Korupsi.&nbsp;</p><p>Sebab dalam UU Nomor 20 Tahun 2001 tentang Perubahan Atas UU Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi yang belum memenuhi United Nations Convention against Corruption atau kovensi PBB menentang korupsi.</p><p>\"Kalau itu yang dilakukan tidak mengutik-ngutik UU KPK itu akan antikorupsi di Indonesia relatif akan lebih baik,\" ujar Agus.&nbsp;</p>', '20231201010438.jpg', '2023-12-02 06:22:22'),
(14, 'Perjalanan Firli Bahuri Jadi Ketua KPK, Lolos Serangkaian Tes hingga Berujung Tersangka', 'Perjalanan-Firli-Bahuri-Jadi-Ketua-KPK-Lolos-Serangkaian-Tes-hingga-Berujung-Tersangka', '<p><strong>JAKARTA, KOMPAS.TV</strong> - Jumat, 13 September 2019 dini hari, menjadi hari penting bagi <a href=\"https://www.kompas.tv/tag/firli-bahuri\">Firli Bahuri</a>.</p><p>Saat itu dalam pemungutan suara atau voting yang dihadiri 56 anggota Komisi III DPR, Firli terpilih menjadi pimpinan KPK periode 2019-2023. Di momen yang sama Firli juga dipilih menjadi <a href=\"https://www.kompas.tv/tag/ketua-kpk\">ketua KPK</a>.&nbsp;</p><p>Dalam voting pemilihan pimpinan KPK, sebanyak 56 anggota Komisi III DPR setuju Firli yang ketika itu berpangkat Irjen Polisi menjadi pimpinan KPK.</p><p>Setelah voting, rapat diskors selama lima menit, untuk menentukan ketua lembaga antirasuah tersebut.&nbsp;</p><p>Berdasarkan kesepakatan seluruh fraksi di DPR, Komisi III akhirnya sepakat memilih Firli Bahuri sebagai Ketua KPK yang baru periode 2019-2023.</p><p>Pada 20 Desember 2019, Presiden Jokowi melantik Firli Bahuri, Nawawi Pomolango, Lili Pintauli Siregar, Nurul Ghufron dan Alexander Marwata sebagai pimpinan KPK 2019-2023 di Istana Negara.</p><h2><strong>Lolos Serangkaian Tes&nbsp;</strong></h2><p>Jauh sebelum nama Firli masuk ke Komisi III DPR, ada rangkaian ujian dan tes yang harus dilalui Capim KPK.&nbsp;</p><p>Firli bukan satu-satunya orang yang ikut seleksi pimpinan KPK. Total ada 384 orang yang mendaftar jadi pimpinan KPK. Pendaftaran calon pimpinan KPK ditutup pada Kamis, 4 Juli 2019.</p><p>Para pendaftar diseleksi oleh panitia seleksi (Pansel) calon pimpinan (Capim) KPK. Pansel Capim KPK ini bentukan Presiden Joko Widodo.&nbsp;</p><p>Pansel Capim KPK 2019-2023 yakni Yenti Ganarsih (ketua merangkap anggota), Indriyanto Senoadji (wakil ketua merangkap anggota).</p><p>Kemudian tujuh anggota yakni Harkristuti Harkrisnowo, Marcus Priyo Gunarto, Hamdi Moeloek, Diani Sadia Wati, Mualimin Abdi, Hendardi, dan Al Araf.</p><p>Dari 384 pendaftar ada 192 Capim KPK yang lolos administrasi, termasuk Firli Bahuri. Selanjutnya 104 Capim KPK lolos uji kompetensi.</p><p>Jumlahnya terus menyusut hingga 40 Capim yang lolos tes psikologi dan menyusut menjadi 20 nama peserta yang dinyatakan lolos <i>profile assessment</i>.</p><p>Firli dan 19 capim KPK lainnya yang lolos <i>profile assessment</i>, berhak mengikuti tes selanjutnya yakni tes kesehatan, uji publik dan wawancara.&nbsp;</p><p>Tes kesehatan dan uji publik ini menjadi tahap akhir untuk memilih 10 orang capim KPK yang akan diserahkan ke Presiden Jokowi kemudian mengikuti uji kelayakan dan kepatutan di DPR.</p><p>Pada 2 September 2019 Pansel Capim KPK menyerahkan 10 nama yang disaring dari tahapan tes dan ujian kepada Presiden Joko Widodo. Ada nama Firli Bahuri di 10 Capim KPK yang diberikan ke Presiden Jokowi.&nbsp;</p><h2><strong>Dibawa ke DPR</strong></h2><p>Nama Firli dan sembilan Capim KPK lainnya dibawa ke DPR untuk iktu uji kelayakan dan kepatutan. Lagi-lagi Firli mengikuti serangkaian tes untuk menjadi pimpinan KPK.&nbsp;</p><p>Proses <i>fit and proper test</i> atau uji kelayakan dan kepatutan terhadap 10 capim KPK periode 2019-2023 berlangsung selama dua hari mulai 11 September 2019.</p>', '20210924231450.jpg', '2023-12-02 06:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Zorangblax', 'Zorang@gmail.com', 'artworks-Xn7M8gv4VMki7nxv-RfC9jQ-t500x500.jpg', '$2y$10$qaF9uKtLGHSMisL.PiNcL.qVoD0muuKNR5U1nxW7xS2YlKFhpFwJG', 1, 1, 1700143468),
(2, 'manolop', 'mano@gmail.com', '710ucHIKXcL.jpg', '$2y$10$/.GuaXwlMyqLolU1CUwA.eHYShhQ4WAIhCR8ll9LCuZcH3TjUtr2.', 2, 1, 1700708023);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(5, 1, 3),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Berita');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/editprofile', 'fas fa-fw fa-user-edit', 1),
(5, 3, 'Berita', 'berita', 'far fa-fw fa-newspaper', 1),
(6, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(7, 1, 'Post Berita', 'admin', 'far fa-fw fa-plus-square', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
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
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
