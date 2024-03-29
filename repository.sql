-- Adminer 4.8.1 MySQL 5.5.5-10.6.12-MariaDB-0ubuntu0.22.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `anggota`;
CREATE TABLE `anggota` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(191) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  `agama` varchar(40) DEFAULT NULL,
  `lahir` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(191) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `hp` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tahun_lulus` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `anggota` (`id`, `user_id`, `nama_lengkap`, `nim`, `agama`, `lahir`, `jenis_kelamin`, `alamat`, `hp`, `avatar`, `created_at`, `updated_at`, `tahun_lulus`, `email`) VALUES
(111,	1,	'sandy eko',	111,	'sandy eko priyatna',	'Batam 11 Juli 1993',	'L',	'bengkong',	'081273750241',	'3x4.jpg',	NULL,	'2021-08-04 23:14:38',	2011,	NULL),
(115,	33,	'raja',	11,	NULL,	NULL,	'L',	'tiban ayu',	'',	NULL,	'2021-04-20 19:52:26',	'2021-04-20 19:52:26',	0,	NULL),
(117,	5,	'tito',	NULL,	NULL,	NULL,	'L',	'Aalen, Jerman\r\n\r\naa',	'',	NULL,	'2021-04-22 20:27:07',	'2021-04-22 20:27:07',	0,	NULL),
(139,	34,	'suho k',	1010,	'suho',	'batam',	'Laki-laki',	'batam',	'128312084124',	'3x4.jpg',	'2021-06-25 08:35:07',	'2021-08-04 23:16:54',	NULL,	NULL),
(180,	NULL,	'DAILAMI',	213132131,	'ISLAM',	'jambi',	'LAKI-LAKI',	'TIBAN',	'9123141414124',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59',	NULL,	NULL),
(181,	NULL,	'DAILAMI2',	213132132,	'ISLAM',	'jambi',	'LAKI-LAKI',	'TIBAN',	'9123141414124',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59',	NULL,	NULL),
(182,	NULL,	'DAILAMI3',	213132133,	'ISLAM',	'jambi',	'LAKI-LAKI',	'TIBAN',	'9123141414124',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59',	NULL,	NULL),
(183,	NULL,	'DAILAMI4',	213132134,	'ISLAM',	'jambi',	'LAKI-LAKI',	'TIBAN',	'9123141414124',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59',	NULL,	NULL);

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `author` (`id`, `author`, `created_at`, `updated_at`) VALUES
(1,	'sandy',	'2022-02-09 22:38:21',	'2022-02-10 01:49:08'),
(3,	'raja',	'2022-02-10 01:50:19',	'2022-02-10 01:50:19'),
(4,	'nurcahaya',	'2022-02-10 01:50:25',	'2022-02-10 01:50:25'),
(5,	'Yoni',	'2022-07-27 23:47:45',	'2022-07-27 23:47:45'),
(6,	'wawan',	NULL,	NULL),
(7,	'DIO FEBRIAN ADITHIA',	NULL,	NULL);

DROP TABLE IF EXISTS `data_akademik`;
CREATE TABLE `data_akademik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fakultas` varchar(60) DEFAULT NULL,
  `program_studi` varchar(60) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `tahun_lulus` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `ipk` int(11) DEFAULT NULL,
  `no_ijazah` varchar(140) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `data_akademik` (`id`, `fakultas`, `program_studi`, `angkatan`, `tahun_lulus`, `id_anggota`, `ipk`, `no_ijazah`, `nim`, `created_at`, `updated_at`) VALUES
(1,	'teknik informatika',	'teknik informatika',	2011,	2014,	111,	3,	'12312312312',	1111,	NULL,	NULL),
(2,	'a',	'a',	NULL,	22,	136,	22,	NULL,	NULL,	'2021-04-24 12:32:25',	'2021-04-24 19:32:25'),
(3,	'teknik',	'aaa',	2021,	2011,	138,	3,	'aaaaaaaaa',	222,	'2021-04-24 12:45:35',	'2021-04-24 19:45:35'),
(4,	'aadada',	'22',	2020,	2020,	111,	4,	'4124141241',	2222,	'2021-06-25 00:08:37',	'2021-06-25 07:08:37'),
(5,	'kedokteran',	'kedokteran',	2017,	2020,	139,	4,	'123123121',	1010,	'2021-06-25 08:35:07',	'2021-06-25 15:35:07');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `kegiatans`;
CREATE TABLE `kegiatans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug2` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `kegiatans` (`id`, `user_id`, `title`, `content`, `slug2`, `thumbnail`, `created_at`, `updated_at`) VALUES
(3,	1,	'3woi',	'<p>aa</p>',	'3woi',	'computer.png',	'2021-07-01 15:37:27',	'2021-06-28 13:31:57');

DROP TABLE IF EXISTS `kerja`;
CREATE TABLE `kerja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tempat_kerja` varchar(60) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `jabatan` varchar(60) NOT NULL,
  `gaji` varchar(200) NOT NULL,
  `status` varchar(60) NOT NULL,
  `waktu` varchar(80) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `kerja` (`id`, `tempat_kerja`, `id_anggota`, `jabatan`, `gaji`, `status`, `waktu`, `tanggal`, `created_at`, `updated_at`) VALUES
(1,	'Kampus BTP',	111,	'IT',	'Rp 5000000 - Rp 6000000',	'bekerja',	'<3',	NULL,	'2021-07-12 13:31:22',	'0000-00-00 00:00:00'),
(2,	'ITEBA',	111,	'IT',	'5000',	'bekerja',	'aa',	NULL,	'2021-06-30 19:25:26',	'0000-00-00 00:00:00'),
(3,	'PT Unitech',	139,	'purchasing',	'Rp 4000000 - Rp 5000000',	'Bekerja',	'<3',	NULL,	'2021-06-30 20:23:33',	'2021-07-01 03:23:33'),
(4,	'PT GUdang garam',	139,	'purchasing',	'Rp 4000000 - Rp 5000000',	'Bekerja',	'1-3',	NULL,	'2021-06-30 20:26:04',	'2021-07-01 03:26:04'),
(5,	'coba',	139,	'coba',	'Rp 4000000 - Rp 5000000',	'Bekerja',	'3-6',	NULL,	'2021-06-30 20:28:52',	'2021-07-01 03:28:52'),
(6,	'tes lagi',	139,	'a',	'Rp 4000000 - Rp 5000000',	'Bekerja',	'>6',	NULL,	'2021-06-30 20:30:23',	'2021-07-01 03:30:23'),
(7,	'tes lagi 1',	139,	'a',	'Rp 4000000 - Rp 5000000',	'Bekerja',	'>6',	NULL,	'2021-06-30 20:32:40',	'2021-07-01 03:32:40'),
(8,	'tes lagi 3',	139,	'a',	'Rp 4000000 - Rp 5000000',	'Bekerja',	'>6',	NULL,	'2021-06-30 20:33:19',	'2021-07-01 03:33:19'),
(9,	'tes lagi 4',	139,	'a',	'Rp 4000000 - Rp 5000000',	'Bekerja',	'>6',	NULL,	'2021-06-30 20:33:47',	'2021-07-01 03:33:47'),
(10,	'PT EPSON',	139,	'IT',	'Rp 5000000 - Rp 6000000',	'Tidak Bekerja',	'<3',	NULL,	'2021-08-01 19:49:22',	'2021-08-02 02:49:22');

DROP TABLE IF EXISTS `lokers`;
CREATE TABLE `lokers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lokers` (`id`, `user_id`, `title`, `content`, `slug`, `thumbnail`, `category`, `created_at`, `updated_at`) VALUES
(33,	1,	'Lowongan PT EPSON',	'<p>Dibutuhkan IT Programer Lulusan minimal D3</p>\r\n\r\n<p>dengan syrat kualifikasi :</p>\r\n\r\n<ul>\r\n	<li>Belum Menikah</li>\r\n	<li>Menguasai Framework laravel</li>\r\n	<li>Menguasai Database&nbsp;</li>\r\n</ul>',	'lowongan-pt-epson',	'logo_epson.jpg',	'loker',	'2021-07-03 04:56:25',	'2021-07-03 04:56:25'),
(34,	1,	'Lowongan kerja PT DJARUM',	'<p>ini contoh</p>',	'lowongan-kerja-pt-djarum',	NULL,	'loker',	'2021-08-01 19:50:55',	'2021-08-02 02:50:55'),
(35,	33,	'pembekalan wisudawan',	'<p>Hallo Para Calon Wisudawan/i Polibatam!!<br />\r\n<br />\r\nIkatan Alumni Polibatam / IA POLBAT kali ini mengadakan, WORKSHOP PEMBEKALAN KARIR bagi para calon wisudawan/i Polibatam.<br />\r\n<br />\r\nPada kesempatan ini workshop yang diadakan IA Polbat menghadirkan narasumber-narasumber yang telah sukses meniti karir dan sangat berpengalaman pada bidangnya masing-masing!!<br />\r\n<br />\r\nIngat dan catat tanggalnya:<br />\r\nSabtu, 28 November 2020<br />\r\nJam 13.00 s/d Selesai<br />\r\n<br />\r\nVia Online Zoom<br />\r\nLink ▶️ https://bit.ly/39aFHLq<br />\r\n<br />\r\nYuk ikutan dan daftarkan diri kalian!!<br />\r\nDitunggu kehadirannya!!</p>',	'pembekalan-wisudawan',	'kegiatan.jpg',	'kegiatan',	'2021-08-05 05:37:18',	'2021-08-05 05:37:18'),
(36,	33,	'Event Polibatam Virtual Job FAIR 2020',	'<p>Salam Hangat Sahabat IA Polbat ! Event Polibatam Virtual Job FAIR 2020 on air via Youtube Chanel Polibatam TV !! &nbsp;Rangkaian kegiatan yang rangkum dalam event Polibatam Virtual Job Fair 2020 akan hadir pada Chanel Youtube Polibaam TV, jadi yang ketinggalan tetap bisa nonton dan menyerap informasi kegiatan selama job fair disana!! &nbsp;Jangan lupa yaa!! Kegiatan akan berlangsung selama Tanggal 16 - 19 Desember 2020 &nbsp;Informasi lebih lanjut ? Pantengin terus Social Media kita!!</p>',	'event-polibatam-virtual-job-fair-2020',	'2.jpg',	'kegiatan',	'2021-08-05 05:40:54',	'2021-08-05 05:40:54'),
(37,	33,	'contoh',	'<p>tes</p>',	'contoh',	NULL,	'loker',	'2021-08-04 23:15:42',	'2021-08-05 06:15:42'),
(38,	1,	'zizik',	'<p>adasdadadasdasd</p>',	'zizik',	'sss.png',	'kegiatan',	'2022-02-14 09:52:46',	'2022-02-14 09:52:46');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5,	'2014_10_12_000000_create_users_table',	1),
(6,	'2014_10_12_100000_create_password_resets_table',	1),
(7,	'2019_08_19_000000_create_failed_jobs_table',	1),
(8,	'2021_04_05_033138_create_anggota_table',	1);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `prodi`;
CREATE TABLE `prodi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_studi` varchar(100) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `prodi` (`id`, `program_studi`, `department`, `created_at`, `updated_at`) VALUES
(1,	'Room Division Management',	'',	'2022-02-10 18:31:19',	'2022-02-10 18:47:24'),
(3,	'Food Beverage Management',	'IT',	'2022-02-10 18:47:39',	'2022-02-10 18:47:39'),
(4,	'Culinary Management',	'',	'2022-02-10 18:47:49',	'2022-02-10 18:47:49');

DROP TABLE IF EXISTS `repo`;
CREATE TABLE `repo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `year` int(11) DEFAULT NULL,
  `id_author` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `file_repo` varchar(250) DEFAULT NULL,
  `thumbnail` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `repo` (`id`, `date`, `year`, `id_author`, `id_type`, `id_prodi`, `title`, `description`, `file_repo`, `thumbnail`, `created_at`, `updated_at`) VALUES
(10,	'2017-01-17',	2017,	1,	1,	3,	'coba',	'Obesity is strongly associated with the degree of inflammation characterised by proinflammatory cytokines, such as tumour necrosis factor-α (TNF-α). Lifestyle modification with exercise is the right strategy because it can stimulate interleukin 6 (IL-6) secretion which acts as an anti-inflammatory. This study aimed to analyse the response of interval and continuous exercise to inflammatory markers in obese women. Twenty-four women participated in this study and were randomly divided into 3 groups: CONG (n=8, control group without any intervention): MCEG (n=8, continuous exercise group) and MIEG (n=8, interval exercise group). ELISA was used to measure the levels of IL-6 and TNF-α, pre-exercise and post-exercise. The data were analysed using the paired sample t-test. The mean levels of TNF-α, pre-exercise and post-exercise, were 19.35±2.73 vs 19.36±2.23 pg/ml (P=0.989) in CONG, 19.42±2.79 vs 16.63±0.82 pg/ml (P=0.017) in MCEG, and 19.46±3.08 vs 16.96±2.11 pg/ml (P=0.079) in MIEG. Mean levels of IL-6, pre-exercise and post-exercise, were 7.56±2.88 vs 7.66±4.12 pg/ml (P=0.957) for CONG, 7.68±3.41 vs 13.97±2.38 pg/ml (P=0.001) for MCEG, and 7.78±1.99 vs 13.66±3.55 pg/ml (P=0.001) for MIEG. We concluded that interval and continuous exercise decreased pro-inflammatory and increased anti-inflammatory cytokines.',	NULL,	NULL,	'2022-02-15 19:35:23',	'2022-12-26 02:18:54'),
(15,	'2019-12-26',	2017,	7,	6,	1,	'PENGARUH PELATIHAN HOUSEKEEPING TERHADAP KINERJA ROOM ATTENDANT DI SWISS-BELLHOTEL HARBOUR BAY BATAM',	'<p>Penelitian ini bertujuan untuk mengetahui seberapa besar pengaruh pelatihan<br />\r\nhousekeeping department terhadap kinerja karyawan room attendant di Swissbelhotel<br />\r\nHarbour Bay Batam. Sampel yang digunakan didalam penelitian ini<br />\r\nberjumlah 12 orang karyawan room attendant. Teknik pengumpulan sampel yang<br />\r\ndigunakan pada penelitian ini menggunakan teknik sampling jenuh yaitu teknik<br />\r\npenentuan sampeldengan menggunakan seluruh populasi menjadi sampel. Hal ini<br />\r\ndilakukan bila jumlah populasi relatif kecil, kurang dari 30 orang. Analisis data<br />\r\nmenggunakan kuantitatif pendekatan deduktif-induktif dengan model analisa korelasi<br />\r\nRank Spearman, pengujian hipotesis menggunakan uji koefisien determinasi (R2) dan<br />\r\nt test dengan rumus, sedangkan pengolahan data menggunakan SPSS 20 dan<br />\r\nMicrosoft Office Excel 2010. Hasil penelitian menujukkan bahwa berdasarkan hasil<br />\r\nperhitungan yang diperoleh dari koefisien korelasi (rs) sebesar 0,29 sehingga dapat<br />\r\ndikatakan bahwa pengaruh pelatihan housekeeping department terhadap kinerja<br />\r\nkaryawan room attendant mempunyai hubungan yang lemah atau rendah.</p>',	'Pengaruh Pelatihan Housekeeping Department Terhadap Kinerja Room Attendant di Swiss-belhotel Harbour Bay Batam_2.pdf',	NULL,	'2022-12-25 20:24:20',	'2022-12-25 20:24:20');

DROP TABLE IF EXISTS `subsidi_bbms`;
CREATE TABLE `subsidi_bbms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `subsidi_bbms` (`id`, `tanggal`, `saldo`, `created_at`, `updated_at`) VALUES
(38071,	'01/09/2023',	22351000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38072,	'02/09/2023',	30258444,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38073,	'05/09/2023',	31476000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38074,	'06/09/2023',	12706944,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38075,	'07/09/2023',	30421500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38076,	'08/09/2023',	22037832,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38077,	'09/09/2023',	29975000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38078,	'10/09/2023',	10246500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38079,	'11/09/2023',	23463000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38080,	'12/09/2023',	20812000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38081,	'13/09/2023',	29288500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38082,	'14/09/2023',	29288500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38083,	'15/09/2023',	29575000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38084,	'16/09/2023',	23576000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38085,	'19/09/2023',	39401022,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38086,	'20/09/2023',	33820812,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38087,	'21/09/2023',	14713622,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38088,	'23/09/2023',	36230500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38089,	'25/09/2023',	26514500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38090,	'26/09/2023',	19705008,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38091,	'27/09/2023',	16807500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38092,	'28/09/2023',	16227700,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38093,	'29/09/2023',	19994500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38094,	'30/09/2023',	20842112.31,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38095,	'01/09/2023',	22351000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38096,	'02/09/2023',	30258444,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38097,	'05/09/2023',	31476000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38098,	'06/09/2023',	12706944,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38099,	'07/09/2023',	30421500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38100,	'08/09/2023',	22037832,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38101,	'09/09/2023',	29975000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38102,	'10/09/2023',	10246500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38103,	'11/09/2023',	23463000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38104,	'12/09/2023',	20812000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38105,	'13/09/2023',	29288500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38106,	'14/09/2023',	29288500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38107,	'15/09/2023',	29575000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38108,	'16/09/2023',	23576000,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38109,	'19/09/2023',	39401022,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38110,	'20/09/2023',	33820812,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38111,	'21/09/2023',	14713622,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38112,	'23/09/2023',	36230500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38113,	'25/09/2023',	26514500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38114,	'26/09/2023',	19705008,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38115,	'27/09/2023',	16807500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38116,	'28/09/2023',	16227700,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38117,	'29/09/2023',	19994500,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37'),
(38118,	'30/09/2023',	20842112.31,	'2023-12-13 17:51:37',	'2023-12-13 17:51:37');

DROP TABLE IF EXISTS `tb_pi`;
CREATE TABLE `tb_pi` (
  `id_pi` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `tempat_magang` varchar(50) NOT NULL,
  `tanggal_magang` date NOT NULL,
  `file_buku` varchar(50) NOT NULL,
  `nama_pembimbing` varchar(50) NOT NULL,
  `status_validasi` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_pi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `tb_skripsi`;
CREATE TABLE `tb_skripsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `abstrak` varchar(200) NOT NULL,
  `nama_pembimbing` varchar(50) NOT NULL,
  `file_pengesahan` varchar(50) NOT NULL,
  `file_buku` varchar(50) NOT NULL,
  `status_validasi` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1,	'Article',	'2022-02-10 19:14:10',	'2022-02-10 19:14:10'),
(2,	'Book Section',	'2022-02-10 19:14:24',	'2022-02-10 19:14:24'),
(3,	'Monograph',	'2022-02-10 19:14:49',	'2022-02-10 19:14:49'),
(4,	'Conference or Workshop Item',	'2022-02-10 19:14:56',	'2022-02-10 19:14:56'),
(5,	'Book',	'2022-02-10 19:15:03',	'2022-02-10 19:15:03'),
(6,	'Thesis',	'2022-02-10 19:15:20',	'2022-02-10 19:15:20'),
(7,	'Patent',	'2022-02-10 19:15:27',	'2022-02-10 19:15:27'),
(8,	'Experiment',	'2022-02-10 19:15:34',	'2022-02-10 19:15:34'),
(9,	'Teaching Resource',	'2022-02-10 19:15:41',	'2022-02-10 19:15:41'),
(10,	'Other',	'2022-02-10 19:15:52',	'2022-02-10 19:15:52');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  `name` varchar(191) NOT NULL,
  `nim` int(11) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `role`, `name`, `nim`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'admin',	'sandy',	111,	'sandy@btp.ac.id',	NULL,	'$2y$10$ID3Y8BxQB/VA0.X3XBLF/uceeJjhEmSGZikfQfORso8qyBfTG/t9y',	'HOkB8Ccqr46IbMrTgkvPNxN9oYyLqtODG1BHuBt8rKqlyxM0k6XKK3I2THWi',	'2021-04-13 20:09:24',	'2021-04-13 20:09:24'),
(65,	'anggota',	'DAILAMI',	0,	'DAI@GMAIL.COM',	NULL,	'$2y$10$mP6XZLZLbIbf5IisBwtgo.X4DLoTf0EIBV3qaxRKoJkYqoT8c6c2G',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59'),
(66,	'anggota',	'DAILAMI2',	0,	'DAI2@GMAIL.COM',	NULL,	'$2y$10$9f9uupHJJNJNGHxFEnXrEeKpu8lih.tDXXvQYVqaaWOuv8fBZ4MqC',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59'),
(67,	'anggota',	'DAILAMI3',	0,	'DAI22@GMAIL.COM',	NULL,	'$2y$10$aZxPuFCQg2BG5UawZJCTS.38ilrOTCKHeE3Ax1bhn6nmAfwOHC0TS',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59'),
(68,	'anggota',	'DAILAMI4',	0,	'DAI3@GMAIL.COM',	NULL,	'$2y$10$fXjGbXtTqInKLdCdGGa6XOzc1sMnoDpRylBVzZ/AeQaIJiDIqchIy',	NULL,	'2021-09-01 05:43:59',	'2021-09-01 05:43:59'),
(73,	'pengguna',	'sandy eko',	NULL,	'sandys@btp.ac.id',	NULL,	'$2y$10$PBByTgZrFJJONTjuD59M/.V65BBDirFzzdMP/c/Ceq7bFaWVu6zBm',	'dYfDHHDJte84GWiFGdEsGAS4OZLX7WgHChDSfXn86JxME72PmjxviTCuZrAs',	'2022-08-01 00:01:17',	'2022-08-01 00:01:17'),
(74,	'admin',	'test',	NULL,	'test@mail.com',	NULL,	'$2y$10$nDx3kBKi39QfQAwt6uhHfO/BtbRPRpUjjlDdcC/Qhlto5xPAiATx2',	'fpqdMLu4xdH701vdntgQ1exBsEdp7iVupVO6FeofxGHHjkZDKtlX4ystmZqD',	'2023-12-11 08:46:29',	'2023-12-11 08:46:29');

-- 2023-12-14 00:58:33
