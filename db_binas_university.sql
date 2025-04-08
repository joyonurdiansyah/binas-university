-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_binas_university
CREATE DATABASE IF NOT EXISTS `db_binas_university` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_binas_university`;

-- Dumping structure for table db_binas_university.aboutmes
CREATE TABLE IF NOT EXISTS `aboutmes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.aboutmes: ~1 rows (approximately)
INSERT INTO `aboutmes` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
	(2, 'Universitas yang berfokus pada integritas, ilmu pengetahuan, dan pengembangan karakter untuk membentuk pemimpin masa depan', '["01JR4ZTD622XTF8VBVCH71CYZP.png","01JR4ZTD64HEJ9SQ068R7H8HE4.png","01JR4ZTD66FP8S35RHN4JQY9G6.png"]', '2025-04-06 00:25:11', '2025-04-06 00:25:11');

-- Dumping structure for table db_binas_university.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.admins: ~2 rows (approximately)
INSERT INTO `admins` (`id`, `nama`, `nip`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Toyohisa, S.Kom.', '3210024', 'Admin Program Studi', '"01JR32A27KWW8E6A69W43GNGGP.png"', '2025-04-05 06:30:12', '2025-04-05 06:30:12'),
	(2, 'Silvia van houten, Spd.', '3210025', 'Staff IT', '"01JR32F20QM02ZDHTGEWTB7DZ2.png"', '2025-04-05 06:32:56', '2025-04-05 06:32:56');

-- Dumping structure for table db_binas_university.announcements
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `announcements_users_id_foreign` (`users_id`),
  CONSTRAINT `announcements_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.announcements: ~1 rows (approximately)
INSERT INTO `announcements` (`id`, `title`, `content`, `slug`, `users_id`, `created_at`, `updated_at`) VALUES
	(1, 'Mahasiswa UMLA PKM Karsa Cipta Alat Sensor Batuk Pasien TBC', '<p>Tingginya kasus TBC (Tuberkulosis) menginspirasi tim Program Kreativitas Mahasiswa Karsa Cipta (PKM-KC) Prodi Fisika untuk mendesain satu unit alat monitoring batuk penderita TBC. Melalui alat ini nakes dapat memonitoring dari jarak jauh tanpa harus bertatap muka dengan pasien secara langsung. Alat tersebut seperti CCTV yang ditempatkan di salah satu ruang rumah sakit kedap suara khusus pasien TBC. Alat ini mempunyai sensor suara yang peka terhadap batuk pasien. Hasil dari sensor alat ini mengirimkan data rekap pasien TBC melalui web para nakesnya. Sehingga dapat dimonitoring dari jarak jauh. Menariknya alat ini berbasis IOT (Internet of Things). Ide karya alat ini berasal dari angan-angan bagaimana bisa mengurangi angka pasien TBC di rumah sakit. Nah salah satu sebab tingginya pasien TBC dikarenakan kurangnya monitoring dari tenaga medis serta pasien yang tidak selalu control ke rumah sakit sehingga semakin menambah jumlah kematian pasien TBC.</p>', 'Mahasiswa-UMLA', 2, '2025-04-06 00:59:05', '2025-04-06 00:59:05');

-- Dumping structure for table db_binas_university.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.cache: ~4 rows (approximately)
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel_cache_da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1743927826),
	('laravel_cache_da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1743927826;', 1743927826),
	('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1743923989),
	('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1743923989;', 1743923989);

-- Dumping structure for table db_binas_university.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.cache_locks: ~0 rows (approximately)

-- Dumping structure for table db_binas_university.cooperations
CREATE TABLE IF NOT EXISTS `cooperations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.cooperations: ~6 rows (approximately)
INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES
	(1, '01JR2P40SEXCM8XKDNKM7WM1M1.png', '2025-04-05 02:57:11', '2025-04-05 02:57:11'),
	(2, '01JR2P5XFFQESHDB5F5BS2J9Z2.png', '2025-04-05 02:58:13', '2025-04-05 02:58:13'),
	(3, '01JR2P7ZMAYQHKP3YDN1HXGTZF.png', '2025-04-05 02:59:21', '2025-04-05 02:59:21'),
	(4, '01JR2PH16AB6NDMM1S510WP125.png', '2025-04-05 03:04:17', '2025-04-05 03:04:17'),
	(5, '01JR2PHNXHNA47D3KX126GVES4.png', '2025-04-05 03:04:39', '2025-04-05 03:04:39'),
	(6, '01JR2PJH20YP97JF51905A18EA.png', '2025-04-05 03:05:07', '2025-04-05 03:05:07');

-- Dumping structure for table db_binas_university.facilities
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.facilities: ~2 rows (approximately)
INSERT INTO `facilities` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
	(1, '<p><strong data-start="55" data-end="102">Laboratorium Sistem dan Teknologi Informasi</strong></p>\n<div style="text-align: left;" data-start="104" data-end="587">Laboratorium Sistem dan Teknologi Informasi berfokus kepada pengembangan sistem informasi antara lain Enterprise System, Business Process Management, Business Modelling, Data and Knowledge Management, dan Information System Management. Lab STI juga diharapkan dapat menjadi wadah berbagai riset keahlian Sistem Informasi mulai dari aspek strategis, manajemen proyek, peningkatan performa proses bisnis dengan dukungan SI/TI sampai pada evaluasi kinerja TI dalam mendukung organisasi.</div>\n<h4 style="text-align: left;" data-start="104" data-end="587"><span style="font-size: 16px;"><strong>Topik Penelitian</strong></span></h4>\n<ul>\n<li data-start="591" data-end="618">IT Adoption in Healthcare</li>\n<li data-start="621" data-end="650">Gamification in Health Apps</li>\n<li data-start="653" data-end="700">Mobile Health (Wearable Device in Healthcare)</li>\n<li data-start="703" data-end="727">Big Data in Healthcare</li>\n<li data-start="730" data-end="750">Internet of Things</li>\n<li data-start="753" data-end="774">User Centred Design</li>\n<li data-start="777" data-end="796">Usability Testing</li>\n<li data-start="799" data-end="837">User Requirement Analysis and Design</li>\n<li data-start="840" data-end="871">E-government and E-governance</li>\n<li data-start="874" data-end="886">E-learning</li>\n<li data-start="889" data-end="912">Health Care Data Mining</li>\n</ul>\n<h4><strong>Pengurus Laboratorium</strong></h4>\n<ul>\n<li>Aidah Fitriyah Wahdah, S.Kom., M.Kom.</li>\n</ul>', '01JR2QVWY8HRM8Y7FDDR4FYF6H.png', '2025-04-05 03:27:42', '2025-04-05 03:30:31'),
	(2, '<p class="" data-start="55" data-end="319"><strong data-start="55" data-end="75">Laboratorium ICD<br><br></strong>Laboratorium ICD adalah laboratorium yang digunakan untuk pembelajaran ilmu kesehatan dan diagnosis penyakit serta tindakan yang harus dilakukan. Lab ini sebagai dasar penunjang dalam pembuatan teknologi kesehatan berbasis kecerdasan buatan.</p>\n<h4 data-start="321" data-end="341"><strong data-start="321" data-end="341">Topik Penelitian</strong></h4>\n<ul>\n<li style="text-align: justify;" data-start="344" data-end="359">e-Rekam Medik</li>\n<li style="text-align: justify;" data-start="362" data-end="394">Sistem Pakar diagnosa penyakit</li>\n</ul>\n<h4 data-start="396" data-end="421"><strong data-start="396" data-end="421">Pengurus Laboratorium</strong></h4>\n<ul>\n<li data-start="424" data-end="455">Bangjoy, S.Kom FF.Garena</li>\n</ul>', '01JR2R5B28JHRRM8ABC2ZC08MM.png', '2025-04-05 03:32:52', '2025-04-05 03:32:52');

-- Dumping structure for table db_binas_university.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table db_binas_university.footers
CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_gmaps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.footers: ~1 rows (approximately)
INSERT INTO `footers` (`id`, `image`, `link_instagram`, `link_youtube`, `link_linkedin`, `link_facebook`, `alamat`, `email`, `wa`, `link_gmaps`, `created_at`, `updated_at`) VALUES
	(1, '01JR34F18BQ8AA115R8AK29JXQ.png', 'https://www.instagram.com/joyonurdiansyah/', 'https://youtube.com/', 'https://www.linkedin.com/in/joyo-nurdiansyah/', 'https://www.facebook.com/', 'Jl. Teknik Kimia, Keputih, Kec. Jatiwaringin, Bekasi, Jawa Barat 60122', 'admin@binas-university.ac.id', '+62 878-7777-9999', 'https://maps.app.goo.gl/AxbyG8qHXnLyEFULA', '2025-04-05 07:07:52', '2025-04-05 07:07:52');

-- Dumping structure for table db_binas_university.greetings
CREATE TABLE IF NOT EXISTS `greetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.greetings: ~1 rows (approximately)
INSERT INTO `greetings` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
	(1, '<p class="" data-start="106" data-end="475"><strong data-start="106" data-end="126">Binas University</strong>, yang berdiri pada tahun 2021 di Bekasi, telah berkembang menjadi sebuah perguruan tinggi yang berkomitmen tinggi terhadap kualitas pendidikan. Dengan tiga fakultas utama, yaitu Fakultas Ilmu Kesehatan, Fakultas Ekonomi dan Bisnis, serta Fakultas Teknik, kami berusaha untuk memberikan pendidikan yang holistik dan relevan dengan kebutuhan zaman.</p>\n<p class="" data-start="477" data-end="811">Menghadapi tantangan global seperti revolusi industri 4.0, kami di <strong data-start="544" data-end="564">Binas University</strong> berfokus pada pengembangan literasi data, teknologi, dan manusia, yang dipadukan dengan nilai-nilai moral yang kuat. Kami yakin bahwa kombinasi ini akan menghasilkan lulusan yang kompeten, berintegritas, dan siap bersaing di kancah internasional.</p>\n<p class="" data-start="813" data-end="1165">Selain itu, <strong data-start="825" data-end="845">Binas University</strong> juga menerapkan tata kelola universitas yang baik (Good University Governance) dan bertekad untuk menjadi pusat keunggulan akademik. Visi kami adalah mencetak lulusan yang tidak hanya unggul dalam bidangnya masing-masing, tetapi juga memiliki jiwa sosiopreneur yang mampu memberikan dampak positif bagi masyarakat luas.</p>\n<p class="" data-start="1167" data-end="1526">Kami percaya bahwa dengan semangat kebersamaan dan dedikasi yang tinggi, <strong data-start="1240" data-end="1260">Binas University</strong> akan terus berkembang menjadi universitas yang tidak hanya berprestasi dalam akademik tetapi juga berkontribusi nyata dalam pembangunan masyarakat yang lebih baik. Semoga Allah SWT selalu memberikan petunjuk dan kekuatan kepada kita semua dalam setiap langkah kita.</p>', '01JR2Q5J3VNDSA8NTB8EF6JM52.png', '2025-04-05 03:15:30', '2025-04-05 03:15:30');

-- Dumping structure for table db_binas_university.histories
CREATE TABLE IF NOT EXISTS `histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.histories: ~1 rows (approximately)
INSERT INTO `histories` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
	(1, '<p class="" data-start="114" data-end="619"><strong data-start="114" data-end="134">Binas University</strong> didirikan pada tahun 2021 di Bekasi, sebagai respons terhadap tantangan besar yang dihadapi dunia pendidikan akibat pandemi COVID-19 pada tahun 2020. Pandemi ini tidak hanya mengganggu berbagai sektor kehidupan, tetapi juga mempercepat transformasi digital dalam dunia pendidikan. Menyadari perlunya inovasi dan adaptasi cepat terhadap perubahan ini, para pendiri Binas University mengambil langkah berani untuk mendirikan sebuah institusi pendidikan yang mampu menghadapi era baru.</p>\n<p class="" data-start="621" data-end="1073">Dengan visi untuk menciptakan lembaga pendidikan yang fleksibel, adaptif, dan berorientasi pada masa depan, Binas University dirancang untuk memenuhi kebutuhan pendidikan di era digital. Tiga fakultas utama didirikan: Fakultas Ilmu Kesehatan, Fakultas Ekonomi dan Bisnis, serta Fakultas Teknik. Fakultas-fakultas ini dipilih untuk memberikan pendidikan yang relevan dengan tuntutan global dan kebutuhan masyarakat akan tenaga profesional yang kompeten.</p>\n<p class="" data-start="1075" data-end="1462">Dalam waktu singkat, Binas University berhasil menarik perhatian sebagai institusi yang inovatif dan responsif terhadap perkembangan zaman. Dengan pendekatan pembelajaran yang mengintegrasikan teknologi, keterampilan praktis, dan nilai-nilai etika, Binas University bertujuan untuk mencetak lulusan yang siap menghadapi tantangan global dan memberikan kontribusi positif bagi masyarakat.</p>\n<p class="" data-start="1464" data-end="1691">Kini, meskipun masih berusia muda, Binas University terus berupaya memperluas dampaknya dalam dunia pendidikan, berpegang pada prinsip bahwa krisis dapat menjadi peluang untuk menciptakan sesuatu yang lebih baik dan lebih kuat.</p>', '01JR2R8QW8N0AN9F57MZSBFCK6.png', '2025-04-05 03:34:43', '2025-04-05 03:34:43');

-- Dumping structure for table db_binas_university.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.jobs: ~0 rows (approximately)

-- Dumping structure for table db_binas_university.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.job_batches: ~0 rows (approximately)

-- Dumping structure for table db_binas_university.lectures
CREATE TABLE IF NOT EXISTS `lectures` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.lectures: ~4 rows (approximately)
INSERT INTO `lectures` (`id`, `nama`, `nidn`, `pendidikan`, `jabatan`, `email`, `topik`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Shinrei Gakusha Yuto S.A', '0728089410', 'D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Junior Lecturer', 'ShinreiGakusha@gmail.com', 'Software Engineering', '01JR33127G5VSX1MNQM0AKTM9P.png', '2025-04-05 06:42:46', '2025-04-05 06:42:46'),
	(2, 'Kōji no Daibōken, Takeshi S.T.', '0728089411', ' D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Junior Lecturer dan PJ Kerjasama Prodi Teknik Informatika', 'Daiboken@gmail.com', 'Artificial Intelligence, Machine Learning, Deep Learning', '01JR335FKSRT2SCHM9T47D4AXC.png', '2025-04-05 06:45:11', '2025-04-05 06:45:11'),
	(3, 'Justice Code, Ayaka S.H.', '0728089411', 'D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Junior Lecturer dan PJ Kerjasama Prodi Teknik Informatika', 'Ayaka@gmail.com', 'Artificial Intelligence, Machine Learning, Deep Learning', '01JR33ATM22QQ1K886ZW23FYBT.png', '2025-04-05 06:48:06', '2025-04-05 06:48:06'),
	(4, 'Keizai no Mahō, Riku S.E.', '0728089412', 'D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Senior Lecturer', 'Kaizemaru@gmail.com', 'Pembuatan Rest API dengan Laravel', '01JR33EGT116828G4SKGYR462D.png', '2025-04-05 06:50:07', '2025-04-05 06:50:07');

-- Dumping structure for table db_binas_university.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.migrations: ~16 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_03_15_220602_create_cooperations_table', 1),
	(5, '2025_03_16_000442_create_students_table', 1),
	(6, '2025_03_16_001158_create_lectures_table', 1),
	(7, '2025_03_16_001456_create_admins_table', 1),
	(8, '2025_03_16_003115_create_rektors_table', 1),
	(9, '2025_03_16_003430_create_greetings_table', 1),
	(10, '2025_03_16_003949_create_facilities_table', 1),
	(11, '2025_03_16_004028_create_histories_table', 1),
	(12, '2025_03_16_004109_create_aboutmes_table', 1),
	(13, '2025_03_16_004145_create_visimisis_table', 1),
	(14, '2025_03_16_004342_create_announcements_table', 1),
	(15, '2025_03_16_004636_create_news_table', 1),
	(16, '2025_03_16_012106_create_footers_table', 2);

-- Dumping structure for table db_binas_university.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_users_id_foreign` (`users_id`),
  CONSTRAINT `news_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.news: ~1 rows (approximately)
INSERT INTO `news` (`id`, `title`, `content`, `image`, `slug`, `users_id`, `created_at`, `updated_at`) VALUES
	(1, 'Alat Pemotong Adonan Kerupuk Untuk UMKM J&R Desa Mampir Kecamatan Cileungsi', '<p>Dalam rangka pengabdian masyarakat dan tugas akhir mahasiswa, mahasiswa D3 Teknik Mesin Polinema membuat alat pemotong adonan kerupuk untuk UMKM J&amp;R Dinoyo Malang. UMKM J&amp;R merupakan produsen kerupuk berbahan ketela, yang dimiliki oleh Pak Junaedi. Selama ini proses pemotongan adonan dilakukan secara manual sehingga membutuhkan waktu lama. Dengan adanya alat pemotong adonan ini, kapasitas pemotongannya bisa mencapai 100 kg per jam. Kapasitas yang sama jika dilakukan secara manual oleh 2 orang membutuhkan waktu sekitar 2 jam.</p>', '01JR534D69GFH7SZ2Y7MHWBEJ1.jpeg', 'alat-pemotong-adonan-kerupuk-untuk-umkm-jr-desa-mampir-kecamatan-cileungsi', 2, '2025-04-06 01:23:04', '2025-04-06 01:23:04');

-- Dumping structure for table db_binas_university.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table db_binas_university.rektors
CREATE TABLE IF NOT EXISTS `rektors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.rektors: ~4 rows (approximately)
INSERT INTO `rektors` (`id`, `nama`, `nip`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Hyodo Joyo', NULL, 'Rektor', '01JR33X30A5G17J9NZGZ235WER.png', '2025-04-05 06:58:04', '2025-04-05 06:58:04'),
	(2, 'Serizawa Tamao', NULL, 'Wakil Rektor I', '01JR33XX8AV2CTM95S7FVG7G7A.png', '2025-04-05 06:58:31', '2025-04-05 07:00:01'),
	(3, 'Takiyah Genjeh', NULL, 'Wakil Rektor II', '01JR33YQB0X9HFXCJA2QMZZW3D.png', '2025-04-05 06:58:58', '2025-04-05 07:00:12'),
	(4, 'Hideoshi Bandou', NULL, 'Wakil Rektor III', '01JR33ZKQBQHSRA20DM3K8FSQH.png', '2025-04-05 06:59:27', '2025-04-05 07:00:25');

-- Dumping structure for table db_binas_university.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('qd3zDEMDmzGYDEH3x2i4IY9ApbHdP3VFe7rYjJMT', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTUM5RVJFQXhCV2pPc2t3NXZ4R1hCOXNySUdsZGpQblhCcmlXbnBzRCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdmlzaW1pc2lzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJFNNSkFCUHRZaGNWTjVDMzBPalViSmVmN3gyYzMzMzlxTlk5RmgxUlJLSUJqV1dYUTBrbHoyIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1743941906);

-- Dumping structure for table db_binas_university.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `namalengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapanggilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jalur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.students: ~0 rows (approximately)

-- Dumping structure for table db_binas_university.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$sR4518d59at8J.QH/ne.u.fGw6tLiGf2525r3Sm8FeJ0W4DcfmPwq', NULL, '2025-03-15 23:19:40', '2025-03-19 07:30:15'),
	(2, 'bangjoy', 'adamfahrisal26@gmail.com', NULL, '$2y$12$SMJABPtYhcVN5C30OjUbJef7x2c3339qNY9Fh1RRKIBjWWXQ0klz2', NULL, '2025-03-19 07:33:02', '2025-03-19 07:33:02');

-- Dumping structure for table db_binas_university.visimisis
CREATE TABLE IF NOT EXISTS `visimisis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_binas_university.visimisis: ~1 rows (approximately)
INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
	(1, '<p>"Menjadi Universitas yang sangat GEGE di bidang nya, tidak keluar dari jalan agama, Amin."</p>', '<ol>\n<li class="" data-start="106" data-end="248">\n<p class="" data-start="109" data-end="248">Menyelenggarakan pendidikan yang berkualitas dan berlandaskan nilai sportivitas, integritas, dan semangat kompetitif dalam dunia e-sport.</p>\n</li>\n<li class="" data-start="249" data-end="445">\n<p class="" data-start="252" data-end="445">Melaksanakan penelitian yang inovatif untuk kemajuan ilmu pengetahuan dan teknologi di bidang e-sport, game development, serta dampaknya terhadap industri kreatif dan kesehatan mental pemain.</p>\n</li>\n<li class="" data-start="446" data-end="611">\n<p class="" data-start="449" data-end="611">Melaksanakan pengabdian kepada masyarakat melalui pelatihan, seminar, dan event e-sport yang mendukung perkembangan talenta muda di bidang gaming dan teknologi.</p>\n</li>\n<li class="" data-start="612" data-end="789">\n<p class="" data-start="615" data-end="789">Memberikan dasar moral dan etika digital terhadap pengembangan karier di dunia e-sport serta membina karakter pemain yang berintegritas, kolaboratif, dan bertanggung jawab.</p>\n</li>\n<li class="" data-start="790" data-end="1060">\n<p class="" data-start="793" data-end="1060">Membangun kepercayaan dan mengembangkan kerja sama dengan berbagai pihak industri game, komunitas e-sport, dan institusi pendidikan untuk meningkatkan kualitas pelaksanaan catur dharma perguruan tinggi yang relevan dengan perkembangan digital dan teknologi masa kini.</p>\n</li>\n</ol>', '["01JR2RH7ZNWVHS7JVK3GDE1MTZ.png","01JR2RH7ZRT2QEM4QN3B9DHWAS.png","01JR2RH7ZTGZ7RG49BQQWMFV25.png"]', '2025-04-05 03:39:22', '2025-04-05 03:39:22');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
