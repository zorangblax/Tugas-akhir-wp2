-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 02:12 PM
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
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_kategori`, `kategori`) VALUES
(1, 'Politik'),
(2, 'Olahraga'),
(3, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `id_kategori`, `title`, `slug`, `body`, `image`, `created`) VALUES
(13, 1, 'Agus Rahardjo: Kasus Firli Ini kalau Boleh Saya Menyalahkan ya Pak Jokowi', 'Agus-Rahardjo-Kasus-Firli-Ini-kalau-Boleh-Saya-Menyalahkan-ya-Pak-Jokowi', '<p><strong>JAKARTA, KOMPAS.TV</strong> - Mantan Ketua <a href=\"https://www.kompas.tv/tag/kpk\">KPK</a> <a href=\"https://www.kompas.tv/tag/agus-rahardjo\">Agus Rahardjo</a> merasa sedih marwah KPK yang sebelumnya dipimpinnya kini terpuruk lantaran munculnya kasus tindak pidana korupsi di pimpinan KPK.</p><p>Agus menjelaskan permasalahan KPK saat ini tidak terlepas dari proses seleksi calon pimpinan (Capim) KPK.&nbsp;</p><p>Sedari awal para pegiat antikorupsi sudah memprotes masuknya nama <a href=\"https://www.kompas.tv/tag/firli-bahuri\">Firli Bahuri</a> sebagai <a href=\"https://www.kompas.tv/tag/capim-kpk\">Capim KPK</a>, namun protes tersebut tidak mendapat respons.</p><p>Tak hanya pegiat antikorupsi, KPK melalui Deputi pengawasan internal dan pengaduan masyarakat pernah mengirim surat ke panitia seleksi Capim KPK dan siap membeberkan bukti kecacatan Firli.&nbsp;</p><p>Bahkan Agus mengaku pernah mengirimkan surat terbuka ke Presiden Joko Widodo yang berisi protes masuknya Firli menjadi Capim KPK.&nbsp;</p><p>\"Kami dulu di KPK termasuk orang yang tidak menyetujui Pak Firli ini menjadi komisioner,\" ujar Agus di program <i>Rosi KOMPAS TV</i>, Kamis (30/11/2023) malam.</p><p>Agus menambahkan jika Presiden <a href=\"https://www.kompas.tv/tag/jokowi\">Jokowi</a> mendengar aspirasi dari masyarakat dan merespons surat yang dikirimnya, kemungkinan besar KPK tidak terseret dalam permasalahan yang terjadi saat ini.</p><p>\"Saya sebetulnya ingin mengatakan bahwa sebetulnya kasus pak Firli ini bermula dari, kalau saya boleh menyalahkan ya pak Jokowi. Karena tune of the top keliatannya di periode kedua Pak Jokowi itu menurun untuk pemberantasan korupsi,\" ujar Agus.</p><p>Di sisi lain Agus menilai periode kedua Presiden Jokowi komitmen pemberantasan korupsi mulai menurun. Di periode ini jugalah muncul revisi UU KPK yang tidak diinginkan para insan KPK.&nbsp;</p><p>Menurut Agus sejatinya bukan UU KPK yang direvisi, melainkan UU Tindak Pidana Korupsi.&nbsp;</p><p>Sebab dalam UU Nomor 20 Tahun 2001 tentang Perubahan Atas UU Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi yang belum memenuhi United Nations Convention against Corruption atau kovensi PBB menentang korupsi.</p><p>\"Kalau itu yang dilakukan tidak mengutik-ngutik UU KPK itu akan antikorupsi di Indonesia relatif akan lebih baik,\" ujar Agus.&nbsp;</p>', '20231201010438.jpg', '2023-12-02 06:22:22'),
(14, 1, 'Perjalanan Firli Bahuri Jadi Ketua KPK, Lolos Serangkaian Tes hingga Berujung Tersangka', 'Perjalanan-Firli-Bahuri-Jadi-Ketua-KPK-Lolos-Serangkaian-Tes-hingga-Berujung-Tersangka', '<p><strong>JAKARTA, KOMPAS.TV</strong> - Jumat, 13 September 2019 dini hari, menjadi hari penting bagi <a href=\"https://www.kompas.tv/tag/firli-bahuri\">Firli Bahuri</a>.</p><p>Saat itu dalam pemungutan suara atau voting yang dihadiri 56 anggota Komisi III DPR, Firli terpilih menjadi pimpinan KPK periode 2019-2023. Di momen yang sama Firli juga dipilih menjadi <a href=\"https://www.kompas.tv/tag/ketua-kpk\">ketua KPK</a>.&nbsp;</p><p>Dalam voting pemilihan pimpinan KPK, sebanyak 56 anggota Komisi III DPR setuju Firli yang ketika itu berpangkat Irjen Polisi menjadi pimpinan KPK.</p><p>Setelah voting, rapat diskors selama lima menit, untuk menentukan ketua lembaga antirasuah tersebut.&nbsp;</p><p>Berdasarkan kesepakatan seluruh fraksi di DPR, Komisi III akhirnya sepakat memilih Firli Bahuri sebagai Ketua KPK yang baru periode 2019-2023.</p><p>Pada 20 Desember 2019, Presiden Jokowi melantik Firli Bahuri, Nawawi Pomolango, Lili Pintauli Siregar, Nurul Ghufron dan Alexander Marwata sebagai pimpinan KPK 2019-2023 di Istana Negara.</p><h2><strong>Lolos Serangkaian Tes&nbsp;</strong></h2><p>Jauh sebelum nama Firli masuk ke Komisi III DPR, ada rangkaian ujian dan tes yang harus dilalui Capim KPK.&nbsp;</p><p>Firli bukan satu-satunya orang yang ikut seleksi pimpinan KPK. Total ada 384 orang yang mendaftar jadi pimpinan KPK. Pendaftaran calon pimpinan KPK ditutup pada Kamis, 4 Juli 2019.</p><p>Para pendaftar diseleksi oleh panitia seleksi (Pansel) calon pimpinan (Capim) KPK. Pansel Capim KPK ini bentukan Presiden Joko Widodo.&nbsp;</p><p>Pansel Capim KPK 2019-2023 yakni Yenti Ganarsih (ketua merangkap anggota), Indriyanto Senoadji (wakil ketua merangkap anggota).</p><p>Kemudian tujuh anggota yakni Harkristuti Harkrisnowo, Marcus Priyo Gunarto, Hamdi Moeloek, Diani Sadia Wati, Mualimin Abdi, Hendardi, dan Al Araf.</p><p>Dari 384 pendaftar ada 192 Capim KPK yang lolos administrasi, termasuk Firli Bahuri. Selanjutnya 104 Capim KPK lolos uji kompetensi.</p><p>Jumlahnya terus menyusut hingga 40 Capim yang lolos tes psikologi dan menyusut menjadi 20 nama peserta yang dinyatakan lolos <i>profile assessment</i>.</p><p>Firli dan 19 capim KPK lainnya yang lolos <i>profile assessment</i>, berhak mengikuti tes selanjutnya yakni tes kesehatan, uji publik dan wawancara.&nbsp;</p><p>Tes kesehatan dan uji publik ini menjadi tahap akhir untuk memilih 10 orang capim KPK yang akan diserahkan ke Presiden Jokowi kemudian mengikuti uji kelayakan dan kepatutan di DPR.</p><p>Pada 2 September 2019 Pansel Capim KPK menyerahkan 10 nama yang disaring dari tahapan tes dan ujian kepada Presiden Joko Widodo. Ada nama Firli Bahuri di 10 Capim KPK yang diberikan ke Presiden Jokowi.&nbsp;</p><h2><strong>Dibawa ke DPR</strong></h2><p>Nama Firli dan sembilan Capim KPK lainnya dibawa ke DPR untuk iktu uji kelayakan dan kepatutan. Lagi-lagi Firli mengikuti serangkaian tes untuk menjadi pimpinan KPK.&nbsp;</p><p>Proses <i>fit and proper test</i> atau uji kelayakan dan kepatutan terhadap 10 capim KPK periode 2019-2023 berlangsung selama dua hari mulai 11 September 2019.</p>', '20210924231450.jpg', '2023-12-02 06:36:01'),
(19, 1, 'Jokowi: RI Butuh Rp15.000 T Demi Capai Net Zero Emission 2060', 'Jokowi-RI-Butuh-Rp15000-T-Demi-Capai-Net-Zero-Emission-2060', '<p>Presiden Joko Widodo (Jokowi) mengungkapkan Indonesia membutuhkan US$ 1 triliun (Rp 15 ribu triliun dengan asumsi kurs Rp 15 ribu/US$) untuk mencapai net zero emission 2060. Untuk itu, dibutuhkan dukungan pendanaan dari negara maju.<br><br>Hal ini diungkapkan Jokowi dalam World Climate Action Summit COP28 dalam sesi National Statement di Dubai, UEA, Jumat (1/12/2023).<br>\"Yang mulia semua upaya tersebut membutuhkan pembiayaan besar, bagi negara yang sedang berkembang tidak mampu melakukan sendiri,\" kata Jokowi.<br><br>Sehingga ia mengundang kolaborasi dari mitra bilateral, investasi swasta, dukungan negara sahabat. Saat ini Indonesia memiliki platfom pembiayaan inovatif yang kredibel, seperti bursa karbon, mekanisme transisi energi, sukuk dan obligasi hijau, serta dana lingkungan hidup.<br><br>Untuk itu, ia berpesan ke bank pembangunan dunia seperti National Development Bank (NDB) untuk meningkatkan kapasitas pendanaan transisi energi dengan bunga rendah. Tujuannya agar target Paris Agreement dan Net Zero Emission bisa dicapai.<br><br>\"Jika kita bisa menuntaskan masalah pendanaan transisi energi ini dari situlah masalah dunia bisa diselesaikan,\" kata Jokowi.<br><br>Dalam kesempatan itu, ia menegaskan posisi Indonesia mau bekerja keras mencapai net zero emission pada tahun 2060 atau lebih awal, sekaligus menikmati pertumbuhan ekonomi yang tinggi, juga ketimpangan yang terus diturunkan.<br><br>\"Saya yakin banyak negara berkembang memiliki posisi yang sama dengan Indonesia. Tapi agenda ini tidak bisa dilakukan masing-masing negara perlu kerja sama yang kolaboratif dan inklusif berupa aksi nyata untuk menghasilkan karya nyata,\" tuturnya.<br><br>Keberhasilan Indonesia ditunjukkan dari penurunan emisi karbon antara tahun 2020 - 2022 yang mencapai 42%, di atas perencanaan business as usual tahun 2015. Dalam hal perbaikan pengelolaan Forest and Other Land Used (FOLU), Indonesia terus memperluas lahan hutan mangrove dan merehabilitasi hutan.<br><br>Jokowi juga menyinggung keberhasilan dalam pembangunan Pembangkit Listrik Tenaga Surya di Cirata, Jawa Barat dengan kapasitas 192 MW. PLTS itu merupakan hasil kerja sama dengan UEA.</p>', 'jokowi.jpg', '2023-12-02 20:13:59'),
(20, 1, 'Penerbangan Terlambat, Ganjar Pranowo Batal Hadiri Konferensi Kebijakan Luar Negeri di Jakarta  ArtikelPenerbangan Terlambat, Ga', 'Penerbangan-Terlambat-Ganjar-Pranowo-Batal-Hadiri-Konferensi-Kebijakan-Luar-Negeri-di-Jakarta-ArtikelPenerbangan-Terlambat-Ganja', '<p>Calon presiden nomor urut 3, Ganjar Pranowo batal hadir dalam Conference of Indonesian Foreign Policy yang diselenggarakan oleh Foreign Policy Community of Indonesia (FPCI) di Grand Sahid Jaya, Jakarta Pusat, Sabtu (2/12/2023).<br><br>Dengan gagal hadirnya Ganjar, hanya ada satu calon presiden yang memenuhi undangan hadir secara luring di acara tersebut, yaitu Anies Baswedan.&nbsp;</p><p>Adapun acara tersebut berfokus pada isu-isu hubungan diplomasi Indonesia Pendiri dan Ketua Komunitas Kebijakan Luar Negeri Indonesia (FPCI) Dino Patti Djalal menyebut, Ganjar tidak dapat hadir ke acara tersebut lantaran terkendala penerbangan.<br><br>Ia diketahui tengah berkampanye di Nusa Tenggara Timur (NTT) dan Nusa Tenggara Barat (NTB) hari ini. Akhirnya, Ganjar pun tidak bisa hadir secara luring seperti Anies.&nbsp;</p><p>\"Dalam satu jam terakhir kita tektok terus karena ternyata ada masalah pesawat.Dan bukan masalah, (tapi) keterlambatan pesawat sehingga sampai sekarang beliau masih di udara,\" kata Dino di sela-sela acara, Sabtu.&nbsp;</p><p>Semula, Ganjar dijadwalkan mengisi sesi pleno 3 pukul 12.50 WIB - 13.50 WIB secara offline. Namun, kehadirannya berubah menjadi daring menggunakan aplikasi Zoom pada pukul 18.15 WIB karena tengah berkampanye.</p><p>Namun, penerbangan yang terlambat membuat dia tak bisa hadir. \"Dan tentunya dengan itu, dengan sangat menyesal Pak Ganjar mohon belum bisa hadir melakukan zoom interview dengan FPCI,\" beber Dino.</p><p>Kendati begitu, Dino menyatakan bahwa Ganjar minta diberikan waktu khusus untuk melakukan wawancara mengenai topik yang sama. Dengan begitu, Ganjar juga bisa menyatakan pandangnnya mengenai dunia internasional, sama seperti yang dilakukan oleh Anies pada pagi tadi.&nbsp;</p><p>\"Ini one of the hardest things for me to say dan tentu kami sangat kecewa. Tapi kami juga respect bahwa Pak Ganjar, ini di luar kontrol beliau dalam arti schedule pesawat yang berubah dan sekarang beliau masih di udara. Jadi secara teknis tidak mungkin bisa melakukan wawancara di Zoom,\" jelas Dino.</p><p>Sebelumnya, Anies hadir lebih dulu dan mengisi sesi Pleno 2 pada pukul 10.00 WIB - 11.00 WIB. Anies menyampaikan pandangannya tentang hubungan diplomatik dan apa saja yang akan dia lakukan ketika menjabat sebagai presiden.<br><br>Usai menyampaikan pandangan, ia lantas menjadi panelis yang dimoderatori oleh Dino. Saat itu, Anies diberikan pertanyaan dadakan oleh beberapa orang yang diizinkan Dino naik ke atas panggung.<br><br>Beberapa pertanyaan itu bersifat jawab cepat, dan berisi hal-hal di luar dugaan. Contohnya, pelajaran favorit di masa sekolah, lebih pilih ASEAN atau G20, pilih tiga orang untuk diajak makan malam bersama, hingga pilih Indonesia jago kandang atau jago di negeri lain.<br><br><br>&nbsp;</p>', '656b06fb936f0.jpg', '2023-12-02 20:54:06'),
(21, 1, 'Todung soal Pengakuan Agus Rahardjo: Jauh di Luar Imajinasi Liar Saya', 'Todung-soal-Pengakuan-Agus-Rahardjo-Jauh-di-Luar-Imajinasi-Liar-Saya', '<p>Deputi Hukum TPN Ganjar-Mahfud, Todung Mulya Lubis mengaku terkejut dengan kabar soal dugaan intervensi Presiden Joko Widodo (Jokowi) terhadap KPK. Dugaan ini muncul usai pengakuan mantan Ketua KPK Agus Rahardjo yang diminta Jokowi menghentikan kasus e-KTP yang menjerat Setya Novanto pada 2017 lalu.</p><p>Todung mengaku terkejut mendengar hal ini.<br><br>\"Itu jauh di luar imajinasi liar saya sebagai aktivis antikorupsi. Kalau betul itu terjadi, saya kira dia [Agus] tidak berdusta. Ini tidak bisa diterima,\" ujar Todung di sela konferensi pers bersama TPN Ganjar-Mahfud, Sabtu (2/12). Dia menduga intervensi dari pihak lain inilah yang jadi salah satu penyebab Indeks Persepsi Korupsi di Indonesia merosot.</p><p>Pada 2022, Indeks Persepsi Korupsi Indonesia memperoleh skor 34 dengan peringkat 110 dari 180 negara. Skor ini lebih rendah empat poin dibanding tahun sebelumnya.<br><br>\"Kita itu cuma lebih baik dari Myanmar, Laos, Filipina. Kita kalah dari Timor Leste,\" kata Todung.<br><br>Dia pun berharap ada koreksi terlebih pelemahan KPK sebagai badan pemberantas korupsi menurutnya terjadi sistematis di depan mata.<br><br>Kasus korupsi pengadaan e-KTP kala itu menjerat Setya Novanto (Setnov). Setnov menjabat sebagai Ketua DPR RI dan Ketum Partai Golkar yang bergabung jadi koalisi pendukung Jokowi pada 2016.<br><br>Dalam program \'Rosi\' yang diunggah di YouTube KompasTV, Agus bercerita dirinya dipanggil sendirian tanpa ditemani pimpinan KPK lain.<br><br>\"Itu di sana begitu saya masuk Presiden sudah marah, menginginkan, karena begitu saya masuk beliau sudah teriak \'hentikan\'. Kan saya heran yang dihentikan apanya. Setelah saya duduk saya baru tahu kalau yang suruh dihentikan itu adalah kasusnya Pak Setnov, Ketua DPR waktu itu mempunyai kasus e-KTP supaya tidak diteruskan,\" kata Agus.</p><h4>Bantahan Istana</h4><p>Istana membantah soal pengakuan Agus dan pertemuan dengan Jokowi tersebut.<br><br>Koordinator Staf Khusus Presiden Ari Dwipayana mengaku telah mengecek pertemuan dimaksud, namun tidak ada dalam agenda presiden.<br><br>\"Setelah dicek, pertemuan yang diperbincangkan tersebut tidak ada dalam agenda Presiden,\" kata Ari melalui keterangan tertulis.<br><br>Ia enggan menjawab ihwal Jokowi meminta kasus e-KTP dihentikan. Ia meminta publik untuk melihat fakta di mana Setnov tetap diproses hukum.<br><br>\"Kita lihat saja apa kenyataannya yang terjadi. Kenyataannya, proses hukum terhadap Setya Novanto terus berjalan pada tahun 2017 dan sudah ada putusan hukum yang berkekuatan hukum tetap,\" ujar Ari.</p><p>\"Presiden dalam pernyataan resmi tanggal 17 November 2017 dengan tegas meminta agar Setya Novanto mengikuti proses hukum di KPK yang telah menetapkannya menjadi tersangka korupsi kasus KTP elektronik. Presiden juga yakin proses hukum terus berjalan dengan baik,\" imbuhnya.<br><br>Ari juga mengomentari perihal pembahasan revisi UU KPK yang disinggung Agus. Ia menjelaskan inisiator revisi tersebut justru DPR, bukan Pemerintah.<br><br>\"Perlu diperjelas bahwa Revisi UU KPK pada tahun 2019 itu inisiatif DPR, bukan inisiatif Pemerintah, dan terjadi dua tahun setelah penetapan tersangka Setya Novanto,\" kata Ari.</p>', '3191241e-10c4-470d-8d9a-6c66daefa04c_169.jpeg', '2023-12-02 21:00:10'),
(22, 1, 'Puluhan Alat Peraga Kampanye Caleg PKS Depok Diduga Dirusak', 'Puluhan-Alat-Peraga-Kampanye-Caleg-PKS-Depok-Diduga-Dirusak', '<p>Ketua DPD PKS Kota <a href=\"https://www.tempo.co/tag/depok\"><strong>Depok</strong></a> Imam Budi Hartono mengungkap adanya perusakan atas puluhan alat peraga kampanye calon anggota legislatif atau <a href=\"https://metro.tempo.co/read/1765812/partai-di-depok-impor-64-bacaleg-untuk-pemilu-2024\"><strong>caleg</strong></a> asal partainya di Kecamatan Bojongsari dan Sawangan. Perusakan didatanya terjadi di 47 titik APK.</p><p>Imam menduga perusakan sengaja dilakukan, bukan karena faktor alam.&nbsp;\"Ini unsur yang disengaja dan dilakukan secara sistematis,\" katanya pada Sabtu, 2 Desember 2023.</p><p>mam meminta panwaslu tingkat Kecamatan Bojongsari dan Sawangan mengusut tuntas pelaku dan dalang dari perusakan APK Caleg PKS tersebut. Dia juga mengingatkan bahwa tindakan perusakan secara sengaja sudah tergolong pidana.</p><p>Ia juga menilai apa yang terjadi ikut menciderai demokrasi di Kota Depok karena orang yang menyuruh berarti tidak siap bersaing secara sehat. \"Tim sudah membuat laporan ke panwascam Sawangan,\" kata Imam.</p><p>Mantan Ketua Komisi IV DPRD Jawa Barat ini pun meminta agar seluruh caleg PKS tetap semangat menghadapi pemilu 2024 dan menyerahkan sepenuhnya kepada Bawaslu untuk menindaklanjuti.</p>', '1202464_720.jpg', '2023-12-03 08:41:49'),
(24, 2, 'PDIP Blak-blakan Soal Nasib Bobby-Gibran Usai Dukung Prabowo', 'PDIP-Blak-blakan-Soal-Nasib-Bobby-Gibran-Usai-Dukung-Prabowo', '<p><strong>Dalam pemilu 2024</strong>, Gibran Rakabuming Raka diketahui maju sebagai calon wakil presiden mendampingi Prabowo Subianto. Bobby Nasution diketahui memberikan dukungan pada pasangan tersebut.</p><p>Nasib keduanya di PDIP diungkap Sekjen Hasto Kristiyanto. Untuk Bobby, Hasto menjelaskan keanggotaannya sudah gugur karena mendukung Prabowo-Gibran.</p><p>\"Mas Bobby memberikan dukungan (Prabowo-Gibran), konstitusi yang melarang itu. Sehingga otomatis keanggotaannya di PDI Perjuangan dengan statusnya itu gugur secara otomatis. Jadi itu yang terjadi,\" kata Hasto di Nusa Dua, Bali, Rabu (22/11/2023).</p><p>Hasto mengatakan dalam undang-undang partai politik, tiap anggota hanya diperbolehkan masuk satu partai saja, seperti dikutip dari detik.com.</p><p>Sementara untuk Gibran, Hasto mengatakan berbeda dengan Bobby. Proses yang dilaluinya masih menimbulkan kontroversi dan persoalan etika serta manipulasi hukum.</p><p>Namun beda nasib keduanya juga jadi pertanyaan. Sebab PDIP tidak tegas kepada Gibran, tidak seperti ke Bobby.</p>', 'bobby-gibran-dok-detikcom-cnbc-indonesia_1691.jpeg', '2023-12-03 10:46:39');

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `category` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
