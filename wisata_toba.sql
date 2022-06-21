-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2022 at 06:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_toba`
--

-- --------------------------------------------------------

--
-- Table structure for table `akomodasi`
--

CREATE TABLE `akomodasi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `id_area` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akomodasi`
--

INSERT INTO `akomodasi` (`id`, `name`, `address`, `phone_number`, `created_at`, `updated_at`, `deleted_at`, `picture_url`, `id_area`, `created_by`) VALUES
(11, 'HOTEL HINENI', 'Jl.Raja Johanes 7A Partali Toruan. Hutabarat – Tarutung', '(0633)20556', '2022-04-04', NULL, NULL, '534652291_hotel hineni.jpeg', 17, 11),
(12, 'HOTEL BALI & RESTAURANT', 'Jl.Balige No.1 Desa Simamora Kec.Tarutung', '0823698324915', '2022-04-04', NULL, NULL, '754515745_hotel bali.jpeg', 17, 11),
(13, 'VILLA KARTINI PENGINAPAN KELUARGA', 'Jl.J.C.T Simorangkir  (Jalan Menuju Salib Kasih) ', '0811911924', '2022-04-04', NULL, NULL, '131714882_villa kartini.jpeg', 17, 11),
(14, 'HOTEL HOSEA', 'Jl.Sisingamangaraja- Situmeang Hasundutan No.12 Sipoholon.', '', '2022-04-04', NULL, NULL, '1596926498_hotel hosea.jpeg', 18, 11),
(15, 'HOTEL BUNGARAN', 'Jl.Tarutung,Pagarbatu,Sipoholon', '0812 6946 7858', '2022-04-04', NULL, NULL, '1516201486_hotel bungaran.jpeg', 18, 11),
(16, 'HOTEL PARRONA INDAH', 'Jl.Balige Silangit,Siborongborong', '(0633) 41515', '2022-04-04', NULL, NULL, '1158557276_hotel parrona indah.jpeg', 19, 11),
(17, 'HOTEL PARRONA', 'Jl.Tugu No.20 Siborongborong ', '(0633) 41515', '2022-04-04', NULL, NULL, '1229043207_hotel parrona.jpeg', 19, 11),
(18, 'NOAH HOTEL SILANGIT', 'Jl.Raya Balige-Tarutung,Silangit Siborongborong', '', '2022-04-04', NULL, NULL, '787932654_hotel noah.jpeg', 19, 11),
(19, 'Aries Hotel', 'Jl. Sm Raja No.230, Siborong Borong I, Siborong-Borong, Kabupaten Tapanuli Utara, Sumatera Utara 22474', '(021) 29707601', '2022-04-04', NULL, NULL, '4752762_aries hotel.jpeg', 19, 11),
(20, 'VILLA MARSAULINA', 'Jl.S.M.Raja Muara', '0821 1062 8758', '2022-04-04', NULL, NULL, '317791067_villa marsaulina.jpeg', 20, 11),
(21, 'GNB HOTEL', 'Jl.S.M.Raja No.12 Muara ', '(0633) 42900', '2022-04-04', NULL, NULL, '14554858_gnb hotel.jpeg', 20, 11);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `created_at`, `deleted_at`, `updated_at`, `created_by`) VALUES
(17, 'Tarutung', '2022-04-04', NULL, NULL, 11),
(18, 'Sipoholon', '2022-04-04', NULL, NULL, 11),
(19, 'Siborongborong', '2022-04-04', NULL, NULL, 11),
(20, 'Muara', '2022-04-04', NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `picture_url`, `created_by`) VALUES
(1, 'FESTIVAL TENUN ULOS SE- KABUPATEN TAPANULI UTARA', '<p>Pada hari Jumat tanggal 29 Nopember 2019 diadakan Festival TENUN ULOS Se-Kabupaten Tapanuli Utara bertempat di Panatapan Hutaginjang Muara&nbsp;</p>\r\n<p>Peserta 10 orang per desa,dengan membawa peralatan Tenun masing-masing</p>\r\n<p>Desa Sangkaran meraih juara 1 dengan Hasil tenunan PUCCA KLASIK</p>\r\n<p>semoga kedepannya para pengrajin Tenun Ulos ekonominya semakin meningkat dan hasil Tenunan Kabupaten Tapanuli Utara semakin di kenal Dunia</p>', '2022-04-04', NULL, NULL, '1618946596_festival tenun.jpeg', 11),
(2, 'FESTIVAL DANAU TOBA (FDT) 2016', '<p>Festival Danau Toba (FDT) 2016&ndash;acara berskala nasional bertemakan seni budaya akan dilaksanakan selama 4 hari ini dimulai 9-12 September 2016.</p>\r\n<p>Pelaksanaan FDT 2016 akan dipusatkan di Muara, Kecamatan Muara Kabupaten Tapanuli Utara.</p>\r\n<p>Kementerian Pariwisata menyebutkan acara-acara yang diselenggarakan sungguh menarik dan bervariasi.</p>\r\n<p>Yakni seperti Lomba Renang Danau Toba, Lomba paramotor layang, Lomba Solu Marsada-sada, dan Mardua-dua,.</p>\r\n<p>Kemudian Lomba Duta Wisata Danau Toba (Ucok/Butet), Lomba fotografi, Lomba Lukis Anak-anak, Lomba Vokal Group, Lomba Paduan Suara, Lomba Kuliner, Lomba Marathon 5k dan Pameran Pariwisata, Industri dan Ekonomi Kreatif serta masih banyak lagi.</p>', '2022-04-04', NULL, NULL, '2147370683_festival danau toba.jpeg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `object_wisata`
--

CREATE TABLE `object_wisata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `object_wisata`
--

INSERT INTO `object_wisata` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `picture_url`, `created_by`) VALUES
(18, 'SALIB KASIH', '<p>Salib Kasih yang terletak di Desa Dolok, kecamatan Siatas Barita, Kabupaten Tapanuli Utara, Sumatra Utara.</p>\r\n<p>Destinasi ini adalah wisata religi yang terkenal di Tapanuli, Salib Kasih merupakan monument berbentuk Salib yang berukuran besar. Menurut sejarah monument ini didirikan untuk mengenang jasa seorang misionaris Jerman yang membawa agama Kristen ke Tapanuli.</p>\r\n<p>Di sekeliling Salib Kasih adalah wisata alam berupa hutan yang masih rimbun, jelas ini adalah pemandangan dari wisata alam yang sayang sekali untuk di lewatkan begitu saja.&nbsp;</p>', '2022-04-04', '2022-04-04', NULL, '213202654_salib kasih.jpeg', 1),
(19, 'PEMANDIAN AIR SODA PARBUBU', '<p>Pemandia Air Soda Parbubu terletak di Parbubu I, Tarutung, Kabupaten Tapanuli Utara, Sumatera Utara.&nbsp;</p>\r\n<p>Pemandian satu ini memang cukup berbeda dengan pemandian air panas lain yang ada di Tapanuli Utara, pasalnya pemandian air soda hanya ada 2 di dunia. Satu ada di Venezuela, satu lagi berada di Desa Parbubu.</p>\r\n<p>Meskipun tidak berenang Anda tidak akan tenggelam di kolamnya, karena terdapat gas dari dasar kolam yang akan membentuk banyak buih dan gelembung udara. Setelah mandi sari pemandian soda ini dijamin tubuhmu akan terasa segar dan ringan. Rutin mandi di sini juga akam membuat kulit terasa lebih halus.</p>', '2022-04-04', NULL, NULL, '2104544678_Pemandian-Air-Soda-Parbubu.jpeg', 1),
(20, 'KAWAH SIPOHOLON', '<p>Kawah Sipoholon terletak di Situmeang Hasundutan, Sipoholon, Kabupaten Tapanuli Utara, Sumatera Utara.</p>\r\n<p>Objek wisata satu ini merupakan pemandian air panas yang terkenal di Tapanuli Utara. Di sini terdapat dua sumber mata air yang posisinya berdampingan satu sama lain. Kedua sumber mata air inilah yang menjadi daya tarik utama di wisata Kawah Sipoholon</p>', '2022-04-04', NULL, NULL, '1623912637_Kawah-Sipoholon.jpeg', 1),
(21, 'SOPO PARTUNGKOAN', '<p>Sopo Partungkoan terletak di Jl. Sm Raja No.100, Hutatoruan X, Tarutung, Kabupaten Tapanuli Utara, Sumatera Utara.</p>\r\n<p>Sopo Partungkoan merupakan bangunan megah bergaya arsitektur khas Tapanuli Utara. Bangunan megah ini sangat cocok untuk dijadikan backround untuk foto selfie.</p>\r\n<p>Bangunan ini usianya sudah ratusan tahun, biasanya dipakai sebahai gedung pertemuan dan dijadikan sebagai lokasi pertunjukkan daerah.</p>', '2022-04-04', NULL, NULL, '447955044_sopo partungkoan.jpeg', 1),
(22, 'HUTA GINJANG', '<p>Lokasi nya terletak di Huta Ginjang, Kec. Muara, Kab. Tapanuli Utara. Panorama indah di sini sulit untuk di tepis, hijaunya perbukitan yang disampingnya juga terdapat Danau Toba.</p>\r\n<p>Berada di ketinggian 1.550 mdpl menjadikan Huta Ginjang menjadi lokasi favorit untuk olahraga paralayang. Para penggiat paralayang Sumatra biasa berlatih paralayang di Huta Ginjang. Bahkan presiden Joko Widodo juga pernah mengunjungi tempat ini hanya untuk melihat pemandangan Danau Toba.</p>', '2022-04-04', NULL, NULL, '268310256_hutaginjang.jpeg', 11),
(23, 'BUKIT DOA ', '<p><strong>[Update] </strong>Bukit ini berada di Desa Huta Ginjang Kecamatan Muara. Umat Kristen yang berada di Tapanuli pasti sudah tak asing dengan destinasi wisata satu ini. Selain dijadikan wisata religi bagi kaum Kristen, Bukit Doa juga bisa dijadikan wisata bersama keluarga ataupun teman dekat. Ada lokasi yang biasa digunakan untuk gathering maupun outbond.</p>', '2022-04-04', '2022-04-04', NULL, '88951410_bukit doa.jpeg', 11),
(24, 'PULAU SIBANDANG', '<p>Pulau ini berada di Kecataman Muara. Selain Samosir, pulau lain yang biasa dijadikan destinasi wisata untuk melihat pemandangan Danau Toba adalah Pulau Sibandang. Pemandangan alam dengan kombinasi hijaunya pepohonan yang juga masih lebat, serta hamparan air di Danau Toba akan membuatmu lupa waktu. Sayangnya belum banyak fasilitas yang terdapat di pulau ini, jadi usahakan sediakan perlengkapanmu dengan cermat.</p>', '2022-04-04', NULL, NULL, '1161574705_Pulau-Sibandang.jpeg', 11),
(25, 'TUGU TOGA ARITONANG', '<p>Lokasi Tugu Toga Aritonang terletak di Dolok Martumbur, kec. Muara, kab. Tapanuli Utara.Tugu Toga Aritonang didirikan oleh Marga Aritonang yang merupakan keturunan langsung dari Raja Lontung ke-6. Tugu Toga Aritonang juga salah satu tempat dengan view terbaik untuk melihat pemandangan Danau Toba. Pemandangan di sekitar tugu juga tak kalah keren. Anda akan disuguhkan kombinasi bukit yang hijau rindang dan masih lebat serta birunya Danau Toba.&nbsp;</p>', '2022-04-04', NULL, NULL, '988826744_Tugu-Toga-Aritonang.jpeg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `picture_url`, `created_at`, `updated_at`, `deleted_at`, `created_by`) VALUES
(14, 'TENUNAN TARUTUNG', '1225827740_tenunan.jpeg', '2022-04-04', NULL, NULL, 11),
(15, 'KACANG SIHOBUK', '994326609_kacang sihobuk.jpeg', '2022-04-04', NULL, NULL, 11),
(16, 'KUE TALAM TARUTUNG', '1162183982_kue talam.jpeg', '2022-04-04', NULL, NULL, 11),
(17, 'KUE PUTU TARUTUNG', '448871826_kue putu.jpeg', '2022-04-04', NULL, NULL, 11),
(18, 'SASAGUN PAHAE', '14174471_sasagun.jpeg', '2022-04-04', NULL, NULL, 11),
(19, 'OMBUS OMBUS SIBORONGBORONG', '261295489_ombus ombus.jpeg', '2022-04-04', NULL, NULL, 11),
(20, 'KOPI SIBORONGBORONG', '220305352_kopi siborongborong.jpeg', '2022-04-04', NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin123', 'admin@gmail.com'),
(11, 'admin_aja', 'admin_aja', 'admin_aja@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akomodasi`
--
ALTER TABLE `akomodasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_area` (`id_area`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `object_wisata`
--
ALTER TABLE `object_wisata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akomodasi`
--
ALTER TABLE `akomodasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `object_wisata`
--
ALTER TABLE `object_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akomodasi`
--
ALTER TABLE `akomodasi`
  ADD CONSTRAINT `akomodasi_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `akomodasi_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `object_wisata`
--
ALTER TABLE `object_wisata`
  ADD CONSTRAINT `object_wisata_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
