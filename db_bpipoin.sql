-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04 Feb 2018 pada 19.47
-- Versi Server: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bpipoin`
--
CREATE DATABASE IF NOT EXISTS `db_bpipoin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_bpipoin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_28_022508_create_table_siswa', 1),
(4, '2017_04_09_101328_create_table_pelanggaran', 1),
(5, '2017_04_09_101350_create_table_penghargaan', 1),
(6, '2017_04_09_113932_create_table_pen_sis', 1),
(7, '2017_04_09_114029_create_table_pel_sis', 1),
(8, '2017_04_24_130113_create_pelanggaran_siswa_pivot_table', 2),
(9, '2017_05_22_112553_create_table_laporan', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `kode_pelanggaran` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pelanggaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggaran`
--

INSERT INTO `pelanggaran` (`kode_pelanggaran`, `jenis_pelanggaran`, `poin`, `created_at`, `updated_at`) VALUES
('a.1.', 'memalsukan dokumen sekolah.', 20, '2017-04-26 20:32:48', '2017-05-04 00:25:27'),
('a.2.', 'mencuri barang/uang milik sesama teman/orang lain.', 20, '2017-04-26 20:34:30', '2017-04-26 20:34:30'),
('a.3.', 'menyalah gunakan uang sekolah (spp dll).', 20, '2017-04-26 20:35:16', '2017-04-26 20:35:16'),
('a.4.', 'memalsukan surat izin orang tua, surat dokter.', 10, '2017-04-26 20:35:51', '2017-04-26 20:35:51'),
('a.5.', 'mencontek tugas, ulangan.', 2, '2017-04-26 20:36:18', '2017-04-26 20:36:18'),
('b.1.', 'terbukti hamil/menghamili.', 100, '2017-05-03 17:29:52', '2017-05-03 17:29:52'),
('b.10.', 'bermain kartu, tidak untuk berjudi.', 10, '2017-05-03 17:39:03', '2017-05-03 17:39:03'),
('b.11.', 'menghilangkan sarana belajar mengajar dikelas/ sarana ekstra kurukuler.', 10, '2017-05-03 17:40:26', '2017-05-03 17:40:26'),
('b.12.', 'membawa, menyimpan, menyembunyikan, menjual belikan petasan.', 5, '2017-05-03 17:41:20', '2017-05-03 17:41:20'),
('b.13.', 'tidak mengikuti program keagamaan yang telah ditentukan oleh sekolah tanpa ijin.', 5, '2017-05-03 17:42:27', '2017-05-03 17:42:27'),
('b.14.a', 'tidak mengerjakan pr atau tugas lain.', 3, '2017-05-03 17:45:47', '2017-05-03 17:45:47'),
('b.14.b', 'tidak mengikuti upacara bendera dengan sengaja.', 3, '2017-05-03 17:44:35', '2017-05-03 17:44:35'),
('b.14.c', 'tidak mengikuti upacara bendera tanpa alasan.', 3, '2017-05-03 17:46:26', '2017-05-03 17:46:26'),
('b.14.d', 'tidak mengikuti upacara bendera nasional atau keagamaan tanpa ijin', 3, '2017-05-03 17:47:42', '2017-05-03 17:47:42'),
('b.14.e', 'meninggalkan jam pelajaran ektsrakurikuler tanpa ijin.', 3, '2017-05-03 17:49:02', '2017-05-03 17:49:02'),
('b.14.f', 'tidak mengikuti ekstrakurikuler wajib tanpa surat ijin dari orang tua/wali.', 3, '2017-05-03 17:50:17', '2017-05-03 17:50:17'),
('b.14.g', 'menggunakan alat ekstrakurikuler tanpa ijin.', 3, '2017-05-03 17:50:55', '2017-05-03 17:50:55'),
('b.2.', 'menikah.', 100, '2017-05-03 17:30:43', '2017-05-03 17:30:43'),
('b.3.', 'terlibat pencurian di luar sekolah, sampai berhubungan dengan pihak berwajib.', 100, '2017-05-03 17:31:55', '2017-05-03 17:31:55'),
('b.4.', 'berjudi dengantaruhan uang.', 50, '2017-05-03 17:32:47', '2017-05-03 17:32:47'),
('b.5.', 'melakukan tindakan asusila, pelecehan seksual.', 50, '2017-05-03 17:33:56', '2017-05-03 17:33:56'),
('b.6.', 'mencemarkan nama baik sekolah.', 50, '2017-05-03 17:35:17', '2017-05-03 17:35:17'),
('b.7.', 'menggunakan/membawa minuman keras, terlibat mabuk didalam/diluar sekolah.', 50, '2017-05-03 17:36:22', '2017-05-03 17:36:22'),
('b.8.', 'terbukti berpacaran/berdua-duaan di lingkungan sekolah.', 25, '2017-05-03 17:37:17', '2017-05-03 17:37:17'),
('b.9.', 'membawa/mengedarkan buku porno, vcd porno, gambar/majalah porno.', 25, '2017-05-03 17:38:25', '2017-05-03 17:38:25'),
('c.1.', 'membawa, menggunakan, terlibat pada obat terlarang (narkoba).', 100, '2017-05-03 17:52:54', '2017-05-03 17:52:54'),
('c.2.', 'tubuh bertatto/ tindik.', 50, '2017-05-03 17:53:27', '2017-05-03 17:53:27'),
('c.3.', 'membuat tulisan corat-coret ditembok atau pada sarana sekolah yg lainya.', 10, '2017-05-03 17:56:05', '2017-05-03 17:56:05'),
('c.4.', 'merusak tanaman penghias di lingkungan sekolah.', 10, '2017-05-03 17:55:19', '2017-05-03 17:55:19'),
('c.5.', 'membawa atau merokok di lingkungan sekolah dan diluar sekolah selama masih memakai seragam sekolah.', 10, '2017-05-03 17:57:37', '2017-05-03 17:57:37'),
('c.6.', 'merusak/ membuat kotor (sarana kelas, wc, ruang kelas, bangku, kaca dll).', 10, '2017-05-03 17:59:08', '2017-05-03 17:59:08'),
('c.7.a', 'menunjukan sikap perilaku dan gerakan yang tidak senonoh terhadap guru/ karyawan.', 10, '2017-05-03 18:00:55', '2017-05-03 18:00:55'),
('c.7.b.', 'menentang perintah guru untuk hal yang positif.', 10, '2017-05-03 18:01:56', '2017-05-03 18:01:56'),
('c.7.c.', 'membantah dan tidak sopan terhadap guru atau karyawan.', 10, '2017-05-03 18:03:06', '2017-05-03 18:03:06'),
('c.7.d.', 'melontarkan kata-kata tidak senonoh terhadap guru atau karyawan.', 10, '2017-05-03 18:03:52', '2017-05-03 18:03:52'),
('c.8.', 'menyimpan sampah tidak pada tempatnya.', 3, '2017-05-03 18:04:53', '2017-05-03 18:04:53'),
('d.1.', 'dengan meyakinkan serta didukung oleh data data yang kuat menjadi anggota geng motor dan geng-geng lianya yang negatif.', 100, '2017-05-03 18:06:31', '2017-05-03 18:06:31'),
('d.2.', 'melompati jendela/ pagar/ tembok.', 10, '2017-05-03 18:07:05', '2017-05-03 18:07:05'),
('d.3.', 'terbukti merokok.', 10, '2017-05-03 18:07:35', '2017-05-03 18:07:35'),
('d.4.a', 'membolos dan tidak kembali lagi kesekolah.', 3, '2017-05-03 18:08:27', '2017-05-03 18:08:27'),
('d.4.b.', 'tidak masuk sekolah tanpa ijin.', 3, '2017-05-03 18:09:18', '2017-05-03 18:09:18'),
('d.4.c', 'setiap membolos/ meniggalkan jam pelajaran.', 3, '2017-05-03 18:09:59', '2017-05-03 18:09:59'),
('d.4.d', 'datang terlambat disekolah lebih dari 10 menit.', 3, '2017-05-03 18:11:25', '2017-05-03 18:11:25'),
('d.4.e.', 'terlambat mengikuti kegiatan ekstrakulikurer, lebih dari 10 menit.', 3, '2017-05-03 18:12:25', '2017-05-03 18:12:25'),
('d.4.f.', 'datang terlambat disekolah kurang dari 10 menit.', 2, '2017-05-03 18:13:25', '2017-05-03 18:13:25'),
('d.5.a', 'rambut/ kuku di cat berwarna.', 3, '2017-05-03 18:14:10', '2017-05-03 18:14:10'),
('d.5.b.', 'berambut gondrong, di gunduli.', 3, '2017-05-03 18:15:02', '2017-05-03 18:15:02'),
('d.5.c.', 'gundul, mohawk,punk.', 3, '2017-05-03 18:15:42', '2017-05-03 18:15:42'),
('d.6.a.', 'memakai seragam tidak sesuai dengan ketentuan.', 3, '2017-05-03 18:16:28', '2017-05-03 18:16:28'),
('d.6.b.', 'celana/ rok sobek di tempeli plester dan sejenisnya.', 3, '2017-05-03 18:17:24', '2017-05-03 18:17:24'),
('d.6.c.', 'menggunakan perhiasan (bagi anak laki-laki).', 3, '2017-05-03 18:18:32', '2017-05-03 18:18:32'),
('d.6.d.', 'memakai pakaian, tidak sesuai dengan hari yang telah di tentukan.', 3, '2017-05-03 18:19:51', '2017-05-03 18:19:51'),
('d.6.e.', 'memakai perhiasan yang berlebihan ke sekolah.', 3, '2017-05-03 18:20:59', '2017-05-03 18:20:59'),
('d.6.f.', 'tidak memakai kelngkapan seragam upacara.', 2, '2017-05-03 18:21:42', '2017-05-03 18:21:42'),
('d.6.g.', 'tidakmemakai kelengkapan seragam (bed osis, tanda sekolah, tanda nama, bed kota bandung, tanda gudep).', 2, '2017-05-03 18:23:37', '2017-05-03 18:23:37'),
('d.6.h.', 'memakai baju tidak dimasukan.', 2, '2017-05-03 18:24:44', '2017-05-03 18:24:44'),
('d.6.i.', 'tidak memakai ikat pinggang.', 2, '2017-05-03 18:27:04', '2017-05-03 18:27:04'),
('d.6.j.', 'memakai sepatu/ kaos kaki tidak sesuai ketentuan.', 2, '2017-05-03 18:28:17', '2017-05-03 18:28:17'),
('d.6.k', 'sepatu tidak memakai warna hitam.', 2, '2017-05-03 18:30:05', '2017-05-03 18:30:05'),
('d.6.l.', 'memakai sabuk ukuran besar.', 2, '2017-05-03 18:30:47', '2017-05-03 18:30:47'),
('e.1.', 'melakukan keonaran dan melawan hukum ditengah-tengah masyarakat secara pribadi dan atau berkelompok (sanksi terbesar dikeluarkan dari sekolah).', 100, '2017-05-03 18:32:41', '2017-05-03 18:32:41'),
('e.2.', 'berkelahi baik secara pribadi atau berkelompok dalam posisi salah.', 50, '2017-05-03 18:33:42', '2017-05-03 18:33:42'),
('e.3.a.', 'mengompas atau memeras siswa lain.', 20, '2017-05-03 18:35:01', '2017-05-03 18:35:01'),
('e.3.b.', 'membawa senjata tajam ke sekolah yang terindikasi untuk berkelahi.', 20, '2017-05-03 18:36:06', '2017-05-03 18:36:06'),
('e.3.c.', 'terlibat perkelahian dalam posisi benar.', 20, '2017-05-03 18:36:58', '2017-05-03 18:36:58'),
('e.3.d.', 'memberi ancaman terhadap siswa lain.', 15, '2017-05-03 18:37:34', '2017-05-03 18:37:34'),
('e.3.e.', 'membawa sejata tajam (kecuali alat kerja/ praktik).', 6, '2017-05-03 18:38:37', '2017-05-03 18:38:37'),
('e.3.f', 'mengumpat, melontarkan kata-kata yang tidak senonoh terhadap teman.', 3, '2017-05-03 18:39:41', '2017-05-03 18:39:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran_siswa`
--

CREATE TABLE `pelanggaran_siswa` (
  `no` int(11) NOT NULL,
  `kode_pelanggaran` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poin_ubah` int(11) NOT NULL,
  `poin_sis` int(11) NOT NULL,
  `user` tinyint(2) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggaran_siswa`
--

INSERT INTO `pelanggaran_siswa` (`no`, `kode_pelanggaran`, `no_induk`, `poin_ubah`, `poin_sis`, `user`, `created_at`, `updated_at`) VALUES
(1, 'A.4.', '131410018', 10, 90, 3, '2017-12-25 06:59:54', '2017-12-25 06:59:54'),
(2, 'B.14.A', '141510006', 3, 97, 2, '2017-12-25 10:30:47', '2017-12-25 10:30:47'),
(3, 'A.5.', '141510001', 2, 98, 2, '2018-01-28 02:20:31', '2018-01-28 02:20:31'),
(4, 'A.3.', '141510001', 20, 78, 3, '2018-01-28 02:30:28', '2018-01-28 02:30:28'),
(5, 'B.3.', '141510004', 100, 0, 2, '2018-02-03 23:58:29', '2018-02-03 23:58:29'),
(6, 'A.4.', '141510004', 10, -10, 2, '2018-02-03 23:58:41', '2018-02-03 23:58:41'),
(7, 'B.2.', '161710036', 100, 0, 2, '2018-02-04 00:06:30', '2018-02-04 00:06:30'),
(8, 'A.1.', '161710036', 20, 0, 2, '2018-02-04 00:06:39', '2018-02-04 00:06:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghargaan`
--

CREATE TABLE `penghargaan` (
  `kode_penghargaan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_penghargaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penghargaan`
--

INSERT INTO `penghargaan` (`kode_penghargaan`, `jenis_penghargaan`, `poin`, `created_at`, `updated_at`) VALUES
('i.1.', 'melaporkan barang temuan kepada guru/ karyawan/ pihak sekolah.', 20, '2017-05-03 18:44:18', '2017-05-03 18:44:18'),
('i.2.', 'selalu membayar uang sekolah/ spp dengan tepat waktu selama 6 (enam) bulan berturut-turut.', 10, '2017-05-03 18:45:35', '2017-05-03 18:45:35'),
('i.3.', 'membantu mendata kehadiran siswa dalam satu semester.', 5, '2017-05-03 18:46:25', '2017-05-03 18:46:25'),
('i.4.', 'melaksanakan tugas piket dengan sungguh-sungguh selama satu bulan.', 5, '2017-05-03 18:47:26', '2017-05-03 18:47:26'),
('i.5.', 'menjadi petugas upacara.', 5, '2017-05-03 18:47:56', '2017-05-03 18:47:56'),
('i.6.', 'menjadi ketua osis selama satu semester.', 10, '2017-05-03 18:48:38', '2017-05-03 18:48:38'),
('i.7.', 'menjadi pengurus osis selama satu semester.', 5, '2017-05-03 18:49:18', '2017-05-03 18:49:18'),
('i.8.', 'menjadi panitia kegiatan bakti sosial.', 5, '2017-05-03 18:50:29', '2017-05-03 18:50:29'),
('i.9.', 'menjadi duta kebersihan lingkungan.', 10, '2017-05-03 18:51:22', '2017-05-03 18:51:22'),
('ii.1.', 'mendapat nilai 100 pada ulangan harian sebanyak 3 kali.', 5, '2017-05-03 18:52:25', '2017-05-03 18:52:25'),
('ii.10.', 'prestasi tingkat nasional.', 30, '2017-05-03 18:59:37', '2017-05-03 18:59:37'),
('ii.11.', 'prestasi tingkat internasional.', 50, '2017-05-03 19:00:02', '2017-05-03 19:00:02'),
('ii.2.', 'hafal al-quran surat pendek sebanyak 10 surat.', 5, '2017-05-03 18:54:39', '2017-05-03 18:54:39'),
('ii.3.', 'hafal surat pendek sebanyak 10 surat.', 10, '2017-05-03 18:54:10', '2017-05-03 18:54:10'),
('ii.4.', 'mewakili sekolah untuk mengikuti kejuaraan.', 10, '2017-05-03 18:55:14', '2017-05-03 18:55:14'),
('ii.5.', 'mempunyai karya yg dimuat di media massa.', 15, '2017-05-03 18:56:07', '2017-05-03 18:56:07'),
('ii.6.', 'peringkat 4-10 di kelas.', 5, '2017-05-03 18:56:56', '2017-05-03 18:56:56'),
('ii.7.', 'peringkat 1-3 dikelas', 10, '2017-05-03 18:57:30', '2017-05-03 18:57:30'),
('ii.8.', 'prestasi tingkat kecamatan.', 15, '2017-05-03 18:58:06', '2017-05-03 18:58:06'),
('ii.9.', 'prestasi tingkat kota/ kabupaten.', 20, '2017-05-03 18:58:52', '2017-05-03 18:58:52'),
('iii.1.', 'prestasi tingkat sekolah.', 10, '2017-05-03 19:00:44', '2017-05-03 19:00:44'),
('iii.2.', 'prestasi tingkat kecamatan.', 15, '2017-05-03 19:01:09', '2017-05-03 19:01:09'),
('iii.3.', 'prestasi tingkat kota/ kabupaten', 20, '2017-05-03 19:02:00', '2017-05-03 19:02:00'),
('iii.4.', 'prestasi tingkat nasional.', 30, '2017-05-03 19:02:28', '2017-05-03 19:02:28'),
('iii.5.', 'prestasi tingkat internasional.', 50, '2017-05-03 19:02:56', '2017-05-03 19:02:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghargaan_siswa`
--

CREATE TABLE `penghargaan_siswa` (
  `no` int(11) NOT NULL,
  `kode_penghargaan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poin_ubah` int(11) NOT NULL,
  `poin_sis` int(11) NOT NULL,
  `user` tinyint(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penghargaan_siswa`
--

INSERT INTO `penghargaan_siswa` (`no`, `kode_penghargaan`, `no_induk`, `poin_ubah`, `poin_sis`, `user`, `created_at`, `updated_at`) VALUES
(3, 'I.3.', '141510006', 5, 102, 2, '2018-01-04 09:05:14', '2018-01-04 09:05:14'),
(4, 'I.2.', '141510001', 10, 88, 3, '2018-01-28 14:55:05', '2018-01-28 14:55:05'),
(5, 'I.3.', '141510001', 5, 63, 2, '2018-02-04 04:26:09', '2018-02-04 04:26:09'),
(6, 'II.5.', '141510001', 15, 78, 2, '2018-02-04 04:26:24', '2018-02-04 04:26:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `no_induk` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_siswa` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` int(11) NOT NULL,
  `jurusan` int(11) NOT NULL,
  `poin` int(11) NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`no_induk`, `nama_siswa`, `jk`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `photo`, `kelas`, `jurusan`, `poin`, `created_at`, `updated_at`) VALUES
('131410018', 'mochamad firman', 'L', 'Bandung', '1998-05-31', 'Islam', 'Komp. Margacinta  Jl. Margacinta        Rt. 03 / 04 Kel. Mekarjaya - Kec. Rancasari  Bandung  40613', 'A16.JPG', 3, 1, 90, '2017-06-14 14:04:55', '2018-02-04 11:55:50'),
('141510001', 'abillillah auliya saefulloh', 'L', 'Bandung', '1999-08-06', 'Islam', 'Jl. Kiaracondong  Gg. Kbn Kangkung  IX  No. 22  Rt. 03 / 08 Kel. Kebon Kangkung - Kec. Kiaracondong  Bandug 40284', 'A1.JPG', 3, 1, 88, '2017-06-14 13:49:36', '2018-02-04 06:29:09'),
('141510002', 'adelya fitri pratiwi kirana', 'P', 'Bandung', '1999-06-16', 'Islam', 'Jl. Mars Utara II  No. 16 Blok. Y  60   Rt. 02 / 02 Margahayu Raya  Kel.  Manjahlega - Kec. Rancasari  Bandung  40286', 'A2.JPG', 3, 1, 100, '2017-06-14 13:51:09', '2017-06-19 19:04:04'),
('141510004', 'aldo julio  prayoga', 'L', 'Bandung', '1999-07-08', 'Islam', 'Jl.  Pagarsih  Gg. Maskardi No. 104/88 Rt. 06/01  Kel. Babakan Tarogong - Kec. Bojongloa Kaler Bandung  40232', 'A3.JPG', 3, 1, 0, '2017-06-14 13:52:13', '2018-02-03 23:58:41'),
('141510006', 'andika rizki', 'L', 'Bandung', '1999-06-28', 'Islam', 'Jl. Darwati  No. 20  Rt. 01 / 06  KEL. Darwati  Kec. Rancasari  Bandung  40296', 'A4.JPG', 3, 1, 102, '2017-06-14 13:53:19', '2018-01-04 09:05:15'),
('141510007', 'andri aji arianto', 'L', 'Bandung', '1998-08-03', 'Islam', 'Jl. Batukali  No. 17  Rt. 09 / 11 Kel. Gumuruh  Kec. Batununggal   Bandung  40275', 'A5.JPG', 3, 1, 100, '2017-06-14 13:54:14', '2017-06-19 20:25:49'),
('141510008', 'andri suddrajat jaga sukma', 'L', 'Bandung', '1999-09-06', 'Islam', 'Jl. Margahayu III No. 20    Rt. 04/05  Kel. C ijawura - Kec. Buahbatu   Bandung   40287', 'A6.JPG', 3, 1, 100, '2017-06-14 13:55:08', '2017-06-14 13:55:08'),
('141510009', 'ardiansyah  zulfika rahayu', 'L', 'Bandung', '1999-07-28', 'Islam', 'Jl. Pelindung Hewan No. 99  Rt. 03/07  Kel. Pelindung Hewan -              Kec. Astana Anyar   Bandung  40243', 'A7.JPG', 3, 1, 100, '2017-06-14 13:56:12', '2017-06-14 13:56:12'),
('141510011', 'dani candra setiawan', 'L', 'Bandung', '1998-10-28', 'Islam', 'Jl. Peta  Blk. No. 89  Rt. 13 / 03  Kel. Situsaeur  Kec. Bojongloa Kidul   Bandung  40234', 'A8.JPG', 3, 1, 100, '2017-06-14 13:57:21', '2017-06-14 13:57:21'),
('141510012', 'deni maulana  muhamad', 'L', 'Bandung', '1998-09-06', 'Islam', 'Jl. Pasirkoja  Gg. Saluyu II No. 116/91 Rt. 09 / 06  Kel. Cibadak - Kec. Astanaanyar  Bandung  40241', 'A9.JPG', 3, 1, 100, '2017-06-14 13:58:15', '2017-06-14 13:58:15'),
('141510013', 'dewa gede galih akmal pradipta', 'L', 'Bandung', '1999-07-31', 'Islam', 'Jl. Kopo  Gg. Ekawarga I No. 5                        Rt. 01/01  Kel. Bbkn. Ciparay - Kec, Bbkn. Ciparay   Bandung 40223', 'A10.JPG', 3, 1, 100, '2017-06-14 13:59:07', '2017-06-14 13:59:07'),
('141510014', 'dian andria', 'L', 'Ciamis', '1997-12-10', 'Islam', 'Jl. PLN  1  No. 14  Rt. 01/09  Kel. Ciateul - Kec. Regol  Bandung  40252', 'A11.JPG', 3, 1, 100, '2017-06-14 14:00:08', '2017-06-14 14:00:08'),
('141510015', 'erik andrawina', 'L', 'Bandung', '1998-06-29', 'Islam', 'Jl. Kbn Gedang Timur  Rt. 03 / 09       Kel. Maleer - Kec. Batununggal   Bandung   40274', 'A12.JPG', 3, 1, 100, '2017-06-14 14:00:58', '2017-06-14 14:00:58'),
('141510016', 'feri adrian', 'L', 'Bandung', '1998-04-21', 'Islam', 'Jl. Ters. Pasirkoja  Gg.  Pasantren            Rt. 04/10 Kel. Jamika - Kec. Bojongloa Kaler   Bandung  40231', 'A13.JPG', 3, 1, 100, '2017-06-14 14:01:59', '2017-06-14 14:01:59'),
('141510017', 'galang akmal muharam', 'L', 'Bandung', '1999-04-25', 'Islam', 'Jl. Emung No. 16  Rt. 09 / 02  Kel. Burangrang - Kec. Lengkong  Bandung   40262', 'A14.JPG', 3, 1, 100, '2017-06-14 14:02:50', '2017-06-14 14:02:50'),
('141510018', 'jaka prayuda  alhadii', 'L', 'Bandung', '1999-03-15', 'Islam', 'Jl. Veteran No. 204/34.A  Rt. 02/08 Kel. Kbn. Pisang - Kec. Sumur Bandung -  Bandung 40112', 'A15.JPG', 3, 1, 100, '2017-06-14 14:03:50', '2017-06-14 14:03:50'),
('141510020', 'muhammad bima pramadinata', 'L', 'Sukabumi', '1999-03-06', 'Islam', 'Jl. Kembar Baru Utara V  No.  7  Rt.  06/09  Kel. Cigereleng - Kec. Regol  Bandung  40253', 'A17.JPG', 3, 1, 100, '2017-06-14 14:07:14', '2017-06-14 14:07:14'),
('141510021', 'muhammad akbari', 'L', 'Bandung', '1999-01-28', 'Islam', 'Jl. Kota Baru Raya  No. 12 Rt. 04/04  Kel. Ciateul - Kec. Regol   Bandung  40252', 'A18.JPG', 3, 1, 100, '2017-06-14 14:08:20', '2017-06-14 14:08:20'),
('141510022', 'nafis muhammad najib', 'L', 'Bandung', '1999-05-26', 'Islam', 'Jl.dr. Setya Budi  Gg. Bp Eni 3A/169A   Rt. 01 / 03 Kel. Ledeng - Kec. Cidadap  Bandung  40143', 'A19.JPG', 3, 1, 100, '2017-06-14 14:09:24', '2017-06-14 14:09:24'),
('141510023', 'salma fitriazi  darusman', 'P', 'Bandung', '1999-01-12', 'Islam', 'Jl. Pajagalan  II  Noi. 77/22.D  Rt. 02 / 03    Kel. Nyengseret - Kec. Astana Anyar   Bandung  40242', 'A20.JPG', 3, 1, 100, '2017-06-14 14:10:19', '2017-06-14 14:10:19'),
('141510024', 'sofian henry christianto', 'L', 'Bandung', '1998-10-18', 'Islam', 'JGg. Cokro   No. 214.C / 87  Rt. 01/ 11  Kel. Jamika - Kec. Bojongloa Kaler   Bandung 40231', 'A21.JPG', 3, 1, 100, '2017-06-14 14:11:20', '2017-06-14 14:11:20'),
('141510025', 'timotius geraldy', 'L', 'Bandung', '1998-03-16', 'Islam', 'Jl. Sabang  No. 3  Rt. 05/01                     Kel. Cihapit - Kec. Bandung Wetan - Bandung    40114', 'A22.JPG', 3, 1, 100, '2017-06-14 14:12:23', '2017-06-14 14:12:23'),
('141510026', 'veni nur ela sari', 'P', 'Bandung', '1999-06-04', 'Islam', 'Jl. Bbkn Jati Mulya  VI  Rt. 08 / 11       Kel. Gumuruh - Kec. Batununggal Bandung  40275', 'A23.JPG', 3, 1, 100, '2017-06-14 14:13:20', '2017-06-14 14:13:20'),
('141510027', 'wildan pratama', 'L', 'Bandung', '1999-01-31', 'Islam', 'Jl. Babakan Tarogong  Gg. Laksana     Rt. 01/05  Kel. Tarogong  Kec. Bojongloa Kaler  Bandung  40232', 'A24.JPG', 3, 1, 100, '2017-06-14 14:14:55', '2017-06-14 14:14:55'),
('141510028', 'wilman apriadi', 'L', 'Bandung', '1999-04-11', 'Islam', 'Jl. Anggadireja  Nop. 75  Rt. 03 / 10  Kel. Baleendah - Kec. Baleendah  -  Bandung 40375', 'A25.JPG', 3, 1, 100, '2017-06-14 14:15:47', '2017-06-14 14:15:47'),
('141510029', 'yana darmawan', 'L', 'Bandung', '1998-11-22', 'Islam', 'Ters. Gatsu (PINDAD ) Gg. H. Kasim  No. 105/127.C    Rt. 06 / 04                          Kel. Kebon Kawung -  Kec. Kiaracondong   Bandung  40284', 'A26.JPG', 3, 1, 100, '2017-06-14 14:17:02', '2017-06-14 14:17:02'),
('141510030', 'yulianthy  purwadayana', 'P', 'Bandung', '1999-07-26', 'Islam', 'Jl. Gumuruh No. 181  Rt. 05 / 07                   Kel. Gumuruh - Kec. Batununggal  Bandung  40275', 'A27.JPG', 3, 1, 100, '2017-06-14 14:17:52', '2017-06-14 14:17:52'),
('141510031', 'agung mardianto', 'L', 'Bandung', '1999-03-26', 'Islam', 'Jl. Gumuruh Gg. Babakan. Jatimulya  IV   No. 24  Rt. 07 / 07  Kel. Gumuruh - Kec. Batununggal  Bandung  40275', 'B1.JPG', 3, 2, 100, '2017-06-14 14:23:37', '2017-06-14 14:23:37'),
('141510032', 'agung setia  nur kholiq', 'L', 'Bandung', '1999-04-23', 'Islam', 'Jl. A. Yan I  Gg. Surareja  No. 170/34.B  Rt. 06/09  Kel. Kebon. Pisan - Kec. Sumur Bandung - Bandung  40112', 'B2.JPG', 3, 2, 100, '2017-06-14 14:24:56', '2017-06-14 14:24:56'),
('141510034', 'ananda andika  bagaskara putra', 'L', 'Bandung', '1999-03-18', 'Islam', 'Jl. Cibangkong No. 76/120 Rt. 07 / 08 Kel. Cibangkong  Kec. Batununggal  Bandung   40273', 'B3.JPG', 3, 2, 100, '2017-06-14 14:25:45', '2017-06-14 14:25:45'),
('141510035', 'arief budi  kusumah', 'L', 'Bandung', '1998-07-18', 'Islam', 'Jl. Soka IV  No. 120  Rt. 04 / 16           Kel. Rancaekek Kencana - Kec. Ran caekek  Bandung  40394', 'B4.JPG', 3, 2, 100, '2017-06-14 14:26:43', '2017-06-14 14:26:43'),
('141510036', 'ariq esa pratama', 'L', 'Bandung', '1999-02-24', 'Islam', '1. Jl.  Boko  I No. 6  Rt/ 03 / 08 Kel. Melong Asih - Kec. Cimahi Selatan  Bandung  40534', 'B5.JPG', 3, 2, 100, '2017-06-14 14:28:16', '2017-06-14 14:28:16'),
('141510038', 'davin giovano wilianto', 'L', 'Bogor', '1998-08-05', 'Protestan', 'Jl. Sutera Indah , Mengger Sukaati   No. 8  Kel. Mengger  - Kec. Bandung Kidul  -  Bandung  40267', 'B6.JPG', 3, 2, 100, '2017-06-14 14:29:30', '2017-06-14 14:29:30'),
('141510039', 'dhoni subagja', 'L', 'Bogor', '2000-09-02', 'Islam', 'Jl. Bodogol Kidul  Rt. 01/04  Kel. Mekar Jaya Kec. Rancasari  Bandung  40286', 'B7.JPG', 3, 2, 100, '2017-06-14 14:30:17', '2017-06-14 14:30:17'),
('141510040', 'dida handian', 'L', 'Tasik Malaya', '1998-05-22', 'Islam', 'Jl. Mekarsari  Rt. 03 / 17                               Kel. Babakansari - Kec. Kiaracondong  Bandung 40112', 'B8.JPG', 3, 2, 100, '2017-06-14 14:31:14', '2017-06-14 14:31:14'),
('141510041', 'eka bangkit  saputra', 'L', 'Bandung', '1998-05-28', 'Islam', 'Jl. Cibangkong No. 224/120  rt. 07/07  Kel. Cibangkong - Kec. Batununggal    Bandung   40273', 'B9.JPG', 3, 2, 100, '2017-06-14 14:32:10', '2017-06-14 14:32:10'),
('141510044', 'giyas fauzi rasyid', 'L', 'Subang', '1999-05-25', 'Islam', '1.  Jl. Katapang Kulon  No. 17  Rt.        Kel. Malabar - Kec. Lengkong    Bandung  40262', 'B10.JPG', 3, 2, 100, '2017-06-14 14:33:17', '2017-06-14 14:33:17'),
('141510045', 'guntur winangun', 'L', 'Bandung', '1999-04-15', 'Islam', 'Jl. Kbn. Gedang III  No. 113/119  Rt. 05 / 12  Kel. Maleer - Kec. Batununggal  4  Bandung 40274', 'B11.JPG', 3, 2, 100, '2017-06-14 14:34:08', '2017-06-19 19:12:18'),
('141510046', 'hasby shahid  ash siddiq', 'L', 'Bandung', '1999-01-31', 'Islam', 'Jl. Laswi  Kutamas Regency  Rt. 05 / 07  Desa Baleendah - Kec. Baleendah  Bandung  40375', 'B12.JPG', 3, 2, 100, '2017-06-14 14:34:59', '2017-06-14 14:34:59'),
('141510048', 'irsan setiawan', 'L', 'Bandung', '1999-05-14', 'Islam', 'Komp. GBI  C. 17  No. 6  Rt. 07 / 07 Kel. Buahbatu - Kec. Bojongsoang      Bandung  40287', 'B13.JPG', 3, 2, 100, '2017-06-14 14:35:41', '2017-06-14 14:35:41'),
('141510050', 'mochamad agil', 'L', 'Bandung', '1998-10-30', 'Islam', 'Jl. Warna Cinta  Rt. 04 / 03 Kel. Mekar Wangi  Kec. Bojongloa Kidul Bandung   40237', 'B14.JPG', 3, 2, 100, '2017-06-14 14:36:51', '2017-06-14 14:36:51'),
('141510051', 'muhamad riki  ramdani', 'L', 'Bandung', '1999-05-11', 'Islam', 'Jl. Gudang Selatan  No. 25 Rt. 03 / 05 Kel. Merdeka Kec. Sumur Bandung 40113', 'B15.JPG', 3, 2, 100, '2017-06-14 14:37:50', '2017-06-14 14:37:50'),
('141510052', 'muhamad fahmi adipraja', 'L', 'Bandung', '1999-02-20', 'Islam', 'Jl. Babakan Ciamis  No. 263/5B  Rt. 01 / 03  Kel. Babakan Ciamis - Kec. Sumur Bandung - Bandung 40177', 'B16.JPG', 3, 2, 100, '2017-06-14 14:38:39', '2017-06-14 14:38:39'),
('141510053', 'muhammad faisal ramadhan', 'L', 'Bandung', '1998-12-24', 'Islam', 'Jl. Baranangsiang  Gg. Surareja  No. 155/34 Rt. 06 / 09 Kel. Kebon Pisang Kec. Sumur Bandung 40112', 'B17.JPG', 3, 2, 100, '2017-06-14 14:39:37', '2017-06-14 14:39:37'),
('141510054', 'muhammad raka ardiansyah  saputra', 'L', 'Bandung', '1999-08-24', 'Islam', 'Jl. C iheulang  No. 37  Rt. 02 / 11  Kel. Sekeloa - Kec. Coblong  Bandung  40134', 'B18.JPG', 3, 2, 100, '2017-06-14 14:40:25', '2017-06-14 14:40:25'),
('141510055', 'muhammad zenca fachriza', 'L', 'Bandung', '1999-08-29', 'Islam', 'Griya Prima Asri Blok D.18 Jl. Kenanga No. 9 Rt. 02/13  Kel. Malakasari - Kec. Baleendah  Bandung 40375', 'B19.JPG', 3, 2, 100, '2017-06-14 14:41:25', '2017-06-14 14:41:25'),
('141510057', 'mochamad rafly kurniawan', 'L', 'Bandung', '1999-01-21', 'Islam', 'Jl. Baranangsiang No. 137/34B  Rt. 03/09 Kel. Kbn. Pisang - Kec. Sumur Bandung  -  Bandung  40112', 'B20.JPG', 3, 2, 100, '2017-06-14 14:42:13', '2017-06-14 14:42:13'),
('141510058', 'nita febriyanti', 'P', 'Bandung', '1999-02-12', 'Islam', 'Jl. Sukapura  Rt. 05/02  Kel. Sukapura - Kec. Kiaracondong  Bandung 40285', 'B21.JPG', 3, 2, 100, '2017-06-14 14:42:55', '2017-06-14 14:42:55'),
('141510059', 'rahayu andini', 'P', 'Bandung', '1999-05-27', 'Islam', 'Jl. A. Yani  Gg. Rd. Jibja N o. 13.B  Rt. 01 / 02  Kel. Cic aheum - Kec. Kiaracondong   Bandung  40282', 'B22.JPG', 3, 2, 100, '2017-06-14 14:43:43', '2017-06-14 14:43:43'),
('141510060', 'rakash zulfikar', 'L', 'Bandung', '1999-11-02', 'Islam', 'Jl. Ciheulang Baru  I No. 15  Rt. 02/07  Kel. Sekeloa - Kec. Coblon g Kota  40134', 'B23.JPG', 3, 2, 100, '2017-06-14 14:44:37', '2017-06-14 14:44:37'),
('141510061', 'refaldi', 'L', 'Bandung', '1999-06-08', 'Islam', 'Jl. Gumuruh Rt.09/06  Kel. Gumuruh - Kec. Batununggal Bandung  40275', 'B24.JPG', 3, 2, 100, '2017-06-14 14:45:31', '2017-06-14 14:45:31'),
('141510063', 'satrio adhy wicaksono', 'L', 'Bandung', '1999-01-09', 'Islam', 'Margahayu Dalam  No. 295  Rt. 03/04  Kel. C ijawura - Kec. Buahbatu Bandung  40287', 'B25.JPG', 3, 2, 100, '2017-06-14 14:46:19', '2017-06-14 14:46:19'),
('141510064', 'surya prayoga', 'L', 'Bandung', '1998-03-04', 'Islam', 'Jl. Baranangsiang  Gg. Surareja No. 233/34.B  Rt. 02/09  Kel. Kbn. Pisang - Kec. Sumur Bandung  Bandung 40112', 'B26.JPG', 3, 2, 100, '2017-06-14 14:47:07', '2017-06-14 14:47:07'),
('141510065', 'syahrio santoso', 'L', 'Bandung', '1999-04-22', 'Islam', 'Jl. Cibuntu Sayuran Rt. 05 / 06  Kel. Warung Munc ang - Kec. Bandung Kulon   Bandung 40211', 'B27.JPG', 3, 2, 100, '2017-06-14 14:47:50', '2017-06-14 14:47:50'),
('141510066', 'yan andriyan', 'L', 'Bandung', '1998-11-30', 'Islam', 'Jl. Kopo Sayati  Gg. Sukamenak              No. 30 Rt. 02 / 06 Desa  Sayati - Kec. Margahayu  Bandung  40228', 'B28.JPG', 3, 2, 100, '2017-06-14 14:48:55', '2017-06-14 14:48:55'),
('141510067', 'yodi rivelino', 'L', 'Bandung', '1999-08-14', 'Islam', 'Jl. Cijerah II B lok. 20 No. 130 Rt. 04 / 02  Kel. Gempolsari - Kec. Bandung Kulon Bandung 40215', 'B29.JPG', 3, 2, 100, '2017-06-14 14:49:38', '2017-06-14 14:49:38'),
('141510068', 'yoga yudiana', 'L', 'Bandung', '1999-06-26', 'Islam', 'Jl. Leuwipanjang Gg. 7  No. 376/198.B  Rt. 01 / 03 Kel. Situsaeur - Kec. Bojongloa Kidul  Bandung 40234', 'B30.JPG', 3, 2, 100, '2017-06-14 14:50:22', '2017-06-14 14:50:22'),
('141510070', 'alda dwiska putri darsono', 'P', 'Bandung', '2000-02-13', 'Islam', 'Jl. Karees Timur No. 119 / 121  Rt. 03 / 09  Kel. Samoja  Kec. Batununggal   Bandung 40273', 'C1.JPG', 3, 3, 100, '2017-06-14 14:52:02', '2017-06-14 14:52:02'),
('141510071', 'amalia shabrina rusdi', 'P', 'Surabaya', '1998-04-08', 'Islam', 'Bumi Kiara II No. 16  Rt. 05 / 07                 Kel. Kebonkangkung - Kec. Kiaracondong    Bandung  40284', 'C2.JPG', 3, 3, 100, '2017-06-14 14:52:53', '2017-06-14 14:52:53'),
('141510072', 'anggun maharrani', 'P', 'Jakarta', '1998-09-25', 'Islam', 'Jl. Bukit Uhud   C. No. 17  Rt. 06 / 16  Kel. Cinunuk  Kec. Cileunyi           Bandung  40624', 'C3.JPG', 3, 3, 100, '2017-06-14 14:53:43', '2017-06-14 14:53:43'),
('141510073', 'annisa noerhadi', 'P', 'Bandung', '1999-01-05', 'Islam', 'Jl. Moch. Toha Gg. H. Ahmadi No. 32/203.D  Rt. 06/05  Kel. Ciseureuh - Kec. Regol  Bandung  40255', 'C4.JPG', 3, 3, 100, '2017-06-14 14:54:32', '2017-06-14 14:54:32'),
('141510074', 'desi rachmahwati  ningsih', 'P', 'Bandung', '1998-12-09', 'Islam', 'Jl. Kbn. Gedang III  Rt. 03 / 12  kel. Maleer - Kec. Batununggal  Bandung 40274', 'C5.JPG', 3, 3, 100, '2017-06-14 14:55:21', '2017-06-14 14:55:21'),
('141510075', 'destya randyani', 'P', 'Bandung', '1999-12-04', 'Islam', 'Jl. Dago Atas Kp. Bengkok  Rt. 09/01 Kel. C iumbuleuit  Kec. Cidadap  Bandung  40135', 'C6.JPG', 3, 3, 100, '2017-06-14 14:56:12', '2017-06-14 14:56:12'),
('141510076', 'devi rismawati', 'P', 'Bandung', '1998-12-06', 'Islam', 'Jl. Malabar/ Karees Kulon No. 52/33  Rt. 02/05  Kel. Malabar - Kec. Lengkong  Bandung  40262', 'C7.JPG', 3, 3, 100, '2017-06-14 14:57:01', '2017-06-14 14:57:01'),
('141510077', 'dhea  rachmawati', 'P', 'Majalengka', '1999-01-09', 'Islam', 'Jl. Veteran No. 206/34.A   Rt. 01 / 08  Kel. Kebon Pisang - Kec. Sumur Bandung  40112', 'C8.JPG', 3, 3, 100, '2017-06-14 14:57:50', '2017-06-14 14:57:50'),
('141510078', 'edelweis', 'P', 'Jakarta', '1999-09-22', 'Budha', 'Jl.Pembangunan II No. 65.A/119           Rt. 03/01  Kel. Cibangkong - Kec. Batununggal  Bandung 40273', 'C9.JPG', 3, 3, 100, '2017-06-14 14:59:05', '2017-06-14 14:59:05'),
('141510079', 'famila aprianti', 'P', 'Bandung', '1999-04-12', 'Islam', 'Jl. Karees Kulon Rt. 01 / 05  Kel. Malabar - Kec. Lengkong  Bandung  40262', 'C10.JPG', 3, 3, 100, '2017-06-14 14:59:49', '2017-06-14 14:59:49'),
('141510080', 'febrianti', 'P', 'Bandung', '1999-02-27', 'Islam', 'Jl. Banceuy  Gg.  Cikapundung  No. 39 Rt. 01 / 03  Kel. Braga Kec. Sumur Bandung -  Bandung 40111', 'C11.JPG', 3, 3, 100, '2017-06-14 15:00:40', '2017-06-14 15:00:40'),
('141510081', 'indah khoirunnisa tosin', 'P', 'Bandung', '2000-03-21', 'Islam', 'Jl. Bojong Koneng No. 72 Rt. 04/12 Kel. Sukapada - Kec. Cibeunying  Kidul  Bandung  40125', 'C12.JPG', 3, 3, 100, '2017-06-14 15:01:23', '2017-06-14 15:01:23'),
('141510082', 'kirana septiyani putri', 'P', 'Bandung', '1999-09-17', 'Islam', 'Blok Pintu II No. 53 Rt. 03/04  Kel. Kbn Gedang - Kec. Batununggal   Bandung  40274', 'C13.JPG', 3, 3, 100, '2017-06-14 15:02:20', '2017-06-14 15:02:20'),
('141510083', 'lita tamariska  sihombing', 'P', 'Bandung', '2000-07-22', 'Yahuwa', 'Jl. Bbkn Tarogong   No. 20/196C           Rt. 09/04  kel. Suka Asih - Kec. Bojongloa Kaler  Bandung  40233', 'C14.JPG', 3, 3, 100, '2017-06-14 15:03:28', '2017-06-14 15:03:28'),
('141510084', 'lufty febriyanti', 'P', 'Bandung', '1999-02-11', 'Islam', 'Jl. Pagarsih Barat IV   No. 60/85               Rt. 03/07  kel. Sukahaji - Kec. Babakan Ciparfay 40221', 'C15.JPG', 3, 3, 100, '2017-06-14 15:04:12', '2017-06-14 15:04:12'),
('141510085', 'mita novianti', 'P', 'Bandung', '1998-11-07', 'Islam', 'Komp.  Ranca Mas  M. 21 Rt. 05 / 19  Kel. Rancamanyar  Kec. Baleendah  Bandung 40375', 'C16.JPG', 3, 3, 100, '2017-06-14 15:05:05', '2017-06-14 15:05:05'),
('141510086', 'nabila riztina', 'P', 'Bandung', '1999-05-12', 'Islam', 'Komp. Margahayu  Jl. Uranus Tengah B.3 No. 45  Rt. 02/06  Kel. Sekejati - Kec. Buah Batu  Bandung 40286', 'C17.JPG', 3, 3, 100, '2017-06-14 15:06:47', '2017-06-14 15:06:47'),
('141510087', 'nadya puspitarini', 'P', 'Bandung', '1999-03-06', 'Islam', 'Jl. Pagarsih  Gg. Maskardi No. 219 Rt. 08 / 01  Kel. Bbkn.  Tarogong - Kec.         Bojongloa Kaler  Bandung  40232', 'C18.JPG', 3, 3, 100, '2017-06-14 15:07:44', '2017-06-14 15:07:44'),
('141510089', 'natasya mentari dermawan', 'P', 'Bandung', '1999-06-15', 'Islam', 'Jl. Wastukencana  Gg. Rangkasuni No. 106/24.A  Rt. 03 / 18   Kel. Tamansari - Kec. Bandung Wetan  Bandung  40116', 'C19.JPG', 3, 3, 100, '2017-06-14 15:08:34', '2017-06-14 15:08:34'),
('141510090', 'nendah khofifah', 'P', 'Bandung', '1999-11-15', 'Islam', 'Jl. Cipaera Selatan No. 100/33  Rt. 01 / 03  Kel. Malabar Kec. Lengkong         Bandung  40262', 'C20.JPG', 3, 3, 100, '2017-06-14 15:09:35', '2017-06-14 15:09:35'),
('141510091', 'nita julian nabila', 'P', 'Bandung', '1999-07-26', 'Islam', 'Jl. Cigondewah Rahayu  Rt. 02 / 05  Kel. Cigondewah Rahayu - Kec. Bandung Kulon Bandung  40215', 'C21.JPG', 3, 3, 100, '2017-06-14 15:10:25', '2017-06-14 15:10:25'),
('141510092', 'novi triani juariah', 'P', 'Bandung', '1999-11-26', 'Islam', 'Jl. Batukali  No. 17  Rt. 09 /11  Kel. Gumuruh - Kec. Batununggal  Bandung  40275', 'C22.JPG', 3, 3, 100, '2017-06-14 15:11:20', '2017-06-14 15:11:20'),
('141510093', 'putri anggita febriani koswanti', 'P', 'Bandung', '2000-02-20', 'Islam', 'Jl. Sukaluyu Gg. Mislani  Rt. 05/13  Desa Sayati-Kec. Margahayu  Bandung  40228', 'C23.JPG', 3, 3, 100, '2017-06-14 15:12:17', '2017-06-14 15:12:17'),
('141510094', 'riska  kristi', 'P', 'Bandung', '1999-04-28', 'Islam', 'Jl. C ibaduyut  Gg. Eteh Umi No. 41  Rt. 02/01  Kel. Cibaduyut - Kec. Bojongloa Kidul   Bandung  40236', 'C24.JPG', 3, 3, 100, '2017-06-14 15:13:10', '2017-06-14 15:13:10'),
('141510095', 'riska tisnayanti', 'P', 'Bandung', '1999-12-22', 'Islam', 'Jl. Veteran   No. 202/34.A  Rt. 01/08  Kel. Kebon Pisang - Kec. Sumur Bandung  -  Bandung  40112', 'C25.JPG', 3, 3, 100, '2017-06-14 15:14:08', '2017-06-14 15:14:08'),
('141510096', 'rizkia mutiara hasbiya', 'P', 'Bandung', '1999-04-20', 'Islam', 'Jl. Srimahi III  No. 16 Rt. 06 / 01  Kel. Ancol - Kec. Regol  Bandung  40254', 'C26.JPG', 3, 3, 100, '2017-06-14 15:15:01', '2017-06-14 15:15:01'),
('141510097', 'rosalina', 'P', 'Bandung', '1999-08-11', 'Islam', 'Jl. Astana anyar No. 131/22.A  Rt. 04/08  Kel. Cibadak - Kec. Astana Anyar   Bandung 40241', 'C27.JPG', 3, 3, 100, '2017-06-14 15:15:58', '2017-06-14 15:15:58'),
('141510098', 'shafira putri azkia', 'P', 'Bandung', '1998-09-26', 'Islam', 'Jl. Babakan Garut  No. 38  Rt. 07/10  Kel. Cibangkong  Kec. Batununggal  Bandung  40273', 'C28.JPG', 3, 3, 100, '2017-06-14 15:16:52', '2017-06-14 15:16:52'),
('141510099', 'shafira rizki  amalia', 'P', 'Bandung', '1999-09-02', 'Islam', 'Jl. Ahmad Yani Gg. Jibja No. 14                  Rt. 01 / 02  Kel. Cicaheum Kec. Kiaracondong   Bandung  40282', 'C29.JPG', 3, 3, 100, '2017-06-14 15:17:44', '2017-06-14 15:17:44'),
('141510100', 'shalsya artameivia dirk', 'P', 'Bandung', '1999-04-07', 'Islam', 'Jl. Haurkining No. 6 Rt. 01 / 05  Kel. Kbn. Pisang _ Kec. Sumur Bandung    Bandung  40112', 'C30.JPG', 3, 3, 100, '2017-06-14 15:19:07', '2017-06-14 15:19:07'),
('141510101', 'tia meydiana', 'P', 'Bandung', '1999-03-04', 'Islam', 'Komp. Bumi Harapan  Blok. BB 4             No. 4  Rt. 05 / 14  Kel. C ibiru Hilir - Kec. Cileunyi   Bandung   40262', 'C31.JPG', 3, 3, 100, '2017-06-14 15:20:08', '2017-06-14 15:20:08'),
('141510102', 'winda roswianda', 'P', 'Bandung', '1999-02-24', 'Islam', 'Jl. Kalipah Apo Gg. Pamarset No. 48   Rt.  06 / 07  Kel. Karang Anyar  Kec. Astana Anyar  Bandung   40241', 'C32.JPG', 3, 3, 100, '2017-06-14 15:20:51', '2017-06-14 15:20:51'),
('141510103', 'yuli  pujianti', 'P', 'Bandung', '1999-07-17', 'Islam', 'Jl. Babakjan Jati V  Rt. 03 / 07  Kel. Gumuruh   Kec. Batununggal  Bandung   40275', 'C33.JPG', 3, 3, 100, '2017-06-14 15:21:44', '2017-06-14 15:21:44'),
('141510104', 'yulia devi yanti muslih hidayat', 'P', 'Bandung', '1999-07-11', 'Islam', 'Jl. Sekelimus Utara IX  No. 18                  Rt. 03/06  Kel. Batununggal - Kec. Bandung Kidul   Bandung  40266', 'C34.JPG', 3, 3, 100, '2017-06-14 15:22:34', '2017-06-14 15:22:34'),
('141510105', 'yulinda eka putri', 'P', 'Bandung', '2000-07-10', 'Islam', 'Jl. Bukit Raya Selatan  No. 220  Rt. 03/03  Kel. Ciumbuleuit - Kec. Cidadap  Bandung  40142', 'C35.JPG', 3, 3, 100, '2017-06-14 15:23:29', '2017-06-14 15:23:29'),
('141510107', 'silvana apriyanti feriyanto', 'P', 'Bandung', '1999-04-13', 'Islam', 'Jl. Mekarsari Cibaduyut No. 27.A         Rt. 02 / 10 Kel. Kebonlega  - Kec. Bojongloa Kidul Bandung  40235', 'C36.JPG', 3, 3, 100, '2017-06-14 15:24:19', '2017-06-14 15:24:19'),
('151610001', 'albanna rahmadani sulistyo', 'L', 'Bandung', '2000-04-24', 'Islam', 'Jl. Bougenvile V - 18 Rt. 01 / 04 Kel. Gempolsari - Kec. Bandung Kulon 40215', 'DAFTAR NAMA SISWA 2016-2017_5442_image001.png', 2, 1, 100, '2017-04-09 11:34:11', '2017-04-09 11:34:11'),
('151610002', 'aldi surya stephani', 'L', 'Bandung', '2000-09-12', 'Kristen Protestan', 'Jl. Suryani Dalam I  No. 202 Rt. 04 / 02 Kel. Warung Muncang  - Kec. Bandung Kulon  40211', 'DAFTAR NAMA SISWA 2016-2017_17738_image003.png', 2, 2, 100, '2017-04-10 04:10:17', '2017-04-10 04:10:17'),
('151610003', 'alif gufron pratama', 'L', 'Majalengka', '2000-02-19', 'Islam', 'Binong Kidul No. 11 / 127C  Rt. 02 / 03 Kel. Kebon Kangkung - Kec. Kiaracondong', 'DAFTAR NAMA SISWA 2016-2017_17738_image004.png', 2, 2, 100, '2017-04-10 04:13:25', '2017-04-10 04:13:25'),
('151610004', 'andry januaris  trisandy', 'L', 'Bandung', '2000-01-26', 'Islam', 'Jl. Babakan Sukamulya  Rt. 01 / 09  Kel. Pasanggrahan - Kec. Ujungberung', 'DAFTAR NAMA SISWA 2016-2017_17738_image007.png', 2, 2, 100, '2017-04-10 04:17:54', '2017-04-10 04:17:54'),
('151610005', 'daffa nur ihsan samsudin', 'L', 'Bandung', '2000-04-11', 'Islam', 'Jl. Kacapi No. 14  Rt. 01 / 02 Kel. Turangga - Kec. Lengkong  40262', 'DAFTAR NAMA SISWA 2016-2017_17738_image009.png', 2, 2, 100, '2017-04-10 04:19:37', '2017-04-10 04:19:37'),
('151610006', 'dava nur rohman', 'L', 'Bandung', '2000-02-03', 'Islam', 'Jl. Warung Jambu  N0. 1 2  Rt. 02 / 01 Kel.  Kebon Kangkung - Kec. Kircon  40284', 'DAFTAR NAMA SISWA 2016-2017_17738_image011.png', 2, 2, 100, '2017-04-10 04:22:21', '2017-04-10 04:22:21'),
('151610007', 'fachrul zaelani', 'L', 'Bandung', '2000-05-05', 'Islam', 'Jl. Sindang Reret Perum R S H S No. B. 27  Rt. 04 / 06  Kel. Cibiru Wetan Kec. Cileunyi  40625', 'DAFTAR NAMA SISWA 2016-2017_17738_image013.png', 2, 2, 100, '2017-04-10 04:24:12', '2017-04-10 04:24:12'),
('151610008', 'fahmi tri fauzan', 'L', 'Bandung', '2000-07-25', 'Islam', 'Jl. Kopo  Gg. Bp. Merta  No. 9  Rt. 06 / 08 Kel. Kopo - Kec. Bjngloa Kaler 40233', 'DAFTAR NAMA SISWA 2016-2017_17738_image015.png', 2, 2, 100, '2017-04-10 04:25:58', '2017-04-10 04:25:58'),
('151610009', 'farhan panji ibrahim ferasta', 'L', 'Bandung', '1999-12-22', 'Islam', 'Jl. AH. Nasution No. 19 b lk  189 Rt. 05 / 01  Kel. Pasirimpun - Kec. Mandalajati  40194', 'DAFTAR NAMA SISWA 2016-2017_17738_image017.png', 2, 2, 100, '2017-04-10 04:27:44', '2017-04-10 04:27:44'),
('151610010', 'fauzan adhitia arifiansyah', 'L', 'Bandung', '2000-06-03', 'Islam', 'Cisaranteun Kulon No 71 Rt. 05 / 01 Kel. Cisaranten Kulon - kec. Arcamanik  40294', 'DAFTAR NAMA SISWA 2016-2017_23538_image019.png', 2, 2, 100, '2017-04-12 00:55:21', '2017-04-12 00:55:21'),
('151610011', 'hafidz husni haikal', 'L', 'Bandung', '2000-08-15', 'Islam', 'Jl. Karees Sapuran  No. 64.A / 121    Rt. 01 / 02   Kel. Samoja - Kec. Natununggal 40273', 'DAFTAR NAMA SISWA 2016-2017_23538_image021.png', 2, 2, 100, '2017-04-13 04:54:00', '2017-04-13 04:54:00'),
('151610012', 'henandry samanta damanhuri', 'L', 'Kalirejo', '2000-04-02', 'Islam', 'Jl. Marga Asih II No. 9 Rt.  08 / 08 Kel. Cijawura - Kec. Buahbatu  40287', 'DAFTAR NAMA SISWA 2016-2017_23538_image023.png', 2, 2, 100, '2017-04-13 04:56:48', '2017-04-13 04:56:48'),
('151610013', 'hengki rahmawan', 'L', 'Bandung', '2000-03-17', 'Islam', 'Kp. Kendan  Rt. 01 / 10  Kel. Nagrog Kec. Nagreg  40397', 'DAFTAR NAMA SISWA 2016-2017_23538_image025.png', 2, 2, 100, '2017-04-13 04:58:33', '2017-04-13 04:58:33'),
('151610014', 'ivan aditya maulana', 'L', 'Bandung', '2000-06-03', 'Islam', 'Jl. Bojong Tengah  No. 10 Rt. 07 / 12    Kel.  Cigadung - Kec. Cibeunying Kaler  40191', 'DAFTAR NAMA SISWA 2016-2017_23538_image027.png', 2, 2, 100, '2017-04-13 05:00:09', '2017-04-13 05:00:09'),
('151610015', 'jeremy toripalu', 'L', 'Bandung', '2000-10-14', 'Katolik', 'Jl. Brigjen Katamso  Gg. Sabilulungan  No. 8 Rt. 06 / 09  Kel. Cihaurgeulis  - Kec. Cibeunying Kaler 40122', 'DAFTAR NAMA SISWA 2016-2017_23538_image029.png', 2, 2, 100, '2017-04-13 05:02:05', '2017-04-13 05:02:05'),
('151610016', 'maydiko syafar', 'L', 'Bandung', '2000-05-10', 'Islam', 'Jl. Sukaresmi IV  No. 12 Rt. 02 / 05 Desa Mekarwangi Kec. Lembang  40135', 'DAFTAR NAMA SISWA 2016-2017_23538_image031.png', 2, 2, 100, '2017-04-13 05:03:29', '2017-04-13 05:03:29'),
('151610017', 'muhamad  ilham pratama', 'L', 'Bandung', '2000-07-26', 'Islam', 'Jl. Denki Selatan  No. 51 Rt. 05 / 02  Kel. Cisereuh - Kec. Regol  40255', 'DAFTAR NAMA SISWA 2016-2017_23538_image033.png', 2, 2, 100, '2017-04-13 05:04:54', '2017-04-13 05:04:54'),
('151610018', 'muhammad derril cakrawiguna', 'L', 'Bandung', '2000-05-16', 'Islam', 'Jl. Nyengseret I  No.  70/95 Rt. 02 / 02 Kel. Pelindung Hewan - Kec. Astananyar  40243', 'DAFTAR NAMA SISWA 2016-2017_23538_image035.png', 2, 2, 100, '2017-04-13 05:06:30', '2017-04-13 05:06:30'),
('151610019', 'muhammad iqbal arrasyid', 'L', 'Bandung', '1999-03-31', 'Islam', 'Perum Bahagia Permai I  No. 14 Rt. 02 / 05  Kel. Margasari - Kec. Buahbatu  40286', 'DAFTAR NAMA SISWA 2016-2017_23538_image037.png', 2, 2, 100, '2017-04-13 05:08:00', '2017-04-13 05:08:00'),
('151610020', 'muhammad keivan alfaiz', 'L', 'Bandung', '1999-12-15', 'Islam', 'Jl. Ranca endah II  No. 19 Rt. 03 / 10  Kel. Cisaranteun Kidul - Kec. Gedebage  40295', 'DAFTAR NAMA SISWA 2016-2017_23538_image039.png', 2, 2, 100, '2017-04-13 05:09:25', '2017-04-13 05:09:25'),
('151610021', 'muhammad nugraha akbar', 'L', 'Bandung', '2000-03-09', 'Islam', 'Jl. Soka IV  No. 119  Rt. 04 / 16  Kel. Rancaekek Kencana - Kec. Rancaekek  40394', 'DAFTAR NAMA SISWA 2016-2017_23538_image041.png', 2, 2, 100, '2017-04-13 05:11:00', '2017-04-13 05:11:00'),
('151610022', 'muhammad rizky nursidiq', 'L', 'Bandung', '2000-06-22', 'Islam', 'Jl. Soekarno-Hatta No. 633 Komp. Dit  Sumber Daya Mineral No. 66 Rt. 01 / 10  Kel. Kiaracondong - Sukapura', 'DAFTAR NAMA SISWA 2016-2017_23538_image043.png', 2, 2, 100, '2017-04-13 05:12:28', '2017-04-13 05:12:28'),
('151610023', 'muh. varizki mazaya  a', 'L', 'Bandung', '2000-03-28', 'Islam', 'Jl. Karapitan Gg. Uni  No. 5.D  Rt. 01 / 01  Kel. Burangrang - Kec. Lengkong 40626', 'DAFTAR NAMA SISWA 2016-2017_23538_image044.png', 2, 2, 100, '2017-04-13 05:13:42', '2017-04-13 05:13:42'),
('151610024', 'raden mochamad novan abdull hakim', 'L', 'Bandung', '1999-11-30', 'Islam', 'Jl. Babakan Dese  No. 16 Rt. 03 / 06 Kel. Kebinwaru - Kec. Batununggal 40272', 'DAFTAR NAMA SISWA 2016-2017_23538_image045.png', 2, 2, 100, '2017-04-13 05:16:07', '2017-04-13 05:16:07'),
('151610025', 'radiyansyah hakim', 'L', 'Bandung', '2001-08-27', 'Islam', 'Jl. Cipaera Selatan No. 33 Rt. 04 / 04  Kel.  Malabar - Kec. Lengkong 40262', 'DAFTAR NAMA SISWA 2016-2017_23538_image046.png', 2, 2, 100, '2017-04-13 05:17:52', '2017-04-13 05:17:52'),
('151610026', 'rafiky septian takwim putra', 'L', 'Bandung', '1999-09-15', 'Islam', 'Jl. Sofian Haris No. 2 Rt. 04 / 09    Kel. Kebon Jeruk - Kec. Andir  40181', 'DAFTAR NAMA SISWA 2016-2017_23538_image047.png', 2, 2, 100, '2017-04-13 05:19:05', '2017-04-13 05:19:05'),
('151610027', 'refansa setia widiafsyah', 'L', 'Bandung', '2000-03-12', 'Islam', 'Cilengkrang  II    Jl. Manglayang  Baru III No. 83   Kp. Cionyam Rt. 07 / 03  Kel. Palasari - Kec. Cibiru', 'DAFTAR NAMA SISWA 2016-2017_23538_image052.png', 2, 2, 100, '2017-04-13 05:20:15', '2017-04-13 05:20:15'),
('151610028', 'rifqi gunawan', 'L', 'Bandung', '2000-06-24', 'Islam', 'Jl. Keon Jayanti No. 247/134.B  Rt. 02 / 12 Kel. Kebon Jayanti - Kec. Kiaracondong  40284', 'DAFTAR NAMA SISWA 2016-2017_23538_image054.png', 2, 2, 100, '2017-04-13 05:21:37', '2017-04-13 05:21:37'),
('151610029', 'sendi maulana', 'L', 'Bandung', '2000-06-12', 'Islam', 'Taman Kopo Indah  A.2 No. 75  Rt. 07 / 10  Kel.  Margahayu Selatan - Kec. Margahayu 40226', 'DAFTAR NAMA SISWA 2016-2017_23538_image055.png', 2, 2, 100, '2017-04-13 05:22:45', '2017-04-13 05:22:45'),
('151610030', 'sidik fathurohman hatanaka', 'L', 'Bandung', '2000-01-20', 'Islam', 'Jl. Mengger Tengah  Rt. 06 / 01  Kel. Mengger - Kec. Bandung Kidul 40267', 'DAFTAR NAMA SISWA 2016-2017_23538_image056.png', 2, 2, 100, '2017-04-13 05:23:49', '2017-04-13 05:23:49'),
('151610031', 'aditya putra suhendra', 'L', 'Bandung', '1999-10-26', 'Islam', 'Jl. Babakan Jati  Rt. 02 / 11 Kel. Gumuruh - Kec. Batununggal  40275', 'DAFTAR NAMA SISWA 2016-2017_23538_image059.png', 2, 1, 100, '2017-04-13 05:25:25', '2017-04-13 05:25:25'),
('151610032', 'alif zakya rafiq', 'L', 'Bandung', '2000-10-31', 'Islam', 'Blok Citopeng  No. 327  Rt. 06 / 22 Kel. Melong - Kec. Cimahi Selatan  40534', 'DAFTAR NAMA SISWA 2016-2017_23538_image061.png', 2, 1, 100, '2017-04-13 05:26:41', '2017-04-13 05:26:41'),
('151610033', 'anastasya reskianissa', 'P', 'Bandung', '2000-03-08', 'Islam', 'Jl. Soreang Kolot  No. 24  Rt. 03 / 03   Kel. Soreang - Kec. Soreang  40900', 'DAFTAR NAMA SISWA 2016-2017_23538_image063.png', 2, 1, 100, '2017-04-13 05:28:23', '2017-04-13 05:28:23'),
('151610034', 'an\'nur rifki rustandi', 'L', 'Bandung', '1999-05-28', 'Islam', 'Jl. Babakan Ciamis Depan  No. 4 Rt. 02 / 07 Kel. Babakan Ciamis - Kec. Sumur Bandung   40117', 'DAFTAR NAMA SISWA 2016-2017_23538_image065.png', 2, 1, 100, '2017-04-13 05:29:42', '2017-04-13 05:29:42'),
('151610035', 'ariq fadil lesmana', 'L', 'Bandung', '2000-10-13', 'Islam', 'Jl. Perum Permata Kopo GA 92  Rt. 03 /13  Desa Sayati  - Kec. Margahayu 40228', 'DAFTAR NAMA SISWA 2016-2017_23538_image067.png', 2, 1, 100, '2017-04-13 05:31:14', '2017-04-13 05:31:14'),
('151610036', 'chrisopraz prayogo', 'L', 'Bandung', '2000-05-18', 'Yahuwa', 'Jl. Jend. A. Yani  No. 218  Rt. 07 / 01  Kel. Kacapiring - Kec. Batununggal', 'DAFTAR NAMA SISWA 2016-2017_23538_image069.png', 2, 1, 100, '2017-04-13 05:32:51', '2017-04-13 05:32:51'),
('151610037', 'fabian firmansyah faran', 'L', 'Bandung', '2000-08-18', 'Islam', 'Jl. Srikania  No. 18 Rt. 07 / 06 Kel. Ancol - Kec. Regol  40254', 'DAFTAR NAMA SISWA 2016-2017_23538_image071.png', 2, 1, 100, '2017-04-13 05:33:47', '2017-06-19 19:10:27'),
('151610038', 'fadillah akbar', 'L', 'Bandung', '2000-07-12', 'Islam', 'Jl. Moh. Toha  Gg. Maos  II  No. 27 Rt. 01 / 06  Kel. Cigereleng - Kec. Regol  40253', 'DAFTAR NAMA SISWA 2016-2017_23538_image073.png', 2, 1, 100, '2017-04-13 05:34:51', '2017-04-13 05:34:51'),
('151610039', 'firman sahita', 'L', 'Bandung', '2000-07-17', 'Islam', 'Jl. Kembar VI  No. 11  Rt. 06 / 08  Kel. Cigereleng - Kec. Regol', 'DAFTAR NAMA SISWA 2016-2017_23538_image075.png', 2, 1, 100, '2017-04-13 05:35:53', '2017-04-13 05:35:53'),
('151610040', 'hadian ramadhan nur', 'L', 'Bandung', '2000-11-28', 'Islam', 'Jl. Kebon Jayanti 147/ 134B  Rt. 07 / 02 Kel. Kebon Jayanti - Kec. Kiaracondong  40284', 'DAFTAR NAMA SISWA 2016-2017_23538_image077.png', 2, 1, 100, '2017-04-13 05:37:04', '2017-04-13 05:37:04'),
('151610041', 'helma ananda nugraha', 'P', 'Bandung', '1999-10-31', 'Islam', 'Jl. Kopo Cirangrang Gg. A. Sutisna No. 21  Rt. 05 / 01 Kel. Cirangrang - Kec. Babakan Ciparay  40227', 'DAFTAR NAMA SISWA 2016-2017_23538_image078.png', 2, 1, 100, '2017-04-13 05:38:20', '2017-04-13 05:38:20'),
('151610042', 'humaira mardhiyani', 'P', 'Bandung', '2000-12-15', 'Islam', 'Jl. Lengkong Besar Gg. Icin  No. 14 Rt. 02 / 01 Kel. Paledang - Kec. Lengkong 40261', 'DAFTAR NAMA SISWA 2016-2017_23538_image081.png', 2, 1, 100, '2017-04-13 05:39:36', '2017-04-13 05:39:36'),
('151610043', 'ihksan ruhyana', 'L', 'Bandung', '2000-10-10', 'Islam', 'Jl. Cihampelas  Blk No. 322 Rt. 05 / 02  Kel. Coblong 40131', 'DAFTAR NAMA SISWA 2016-2017_23538_image083.png', 2, 1, 100, '2017-04-13 05:40:46', '2017-04-13 05:40:46'),
('151610044', 'ilham mulyadi putra', 'L', 'Jakarta', '2000-04-30', 'Islam', 'Jl. Cibaduyut Blok Lumbung Rt. 05 / 06  Kel. Kebon Lega - Kec. Bojongloa kidul 40235', 'DAFTAR NAMA SISWA 2016-2017_23538_image085.png', 2, 1, 100, '2017-04-13 05:42:01', '2017-04-13 05:42:01'),
('151610045', 'jaisy alfaliq tisara', 'L', 'Bandung', '2000-11-05', 'Islam', 'Jl. Gunung Kencana 8a  Rt. 05 / 06  Kel. Ciumbuleuit - Kec. Cidadap  40142', 'DAFTAR NAMA SISWA 2016-2017_23538_image087.png', 2, 1, 100, '2017-04-13 05:43:04', '2017-04-13 05:43:04'),
('151610046', 'miftah iqbal firmansyah', 'L', 'Bandung', '2000-01-22', 'Islam', 'Jl. Somawinata  No. 20 Rt. 04 / 07  Kel. Tanimulya - Kec. Ngamprah   40552', 'DAFTAR NAMA SISWA 2016-2017_23538_image091.png', 2, 1, 100, '2017-04-13 05:44:11', '2017-04-13 05:44:11'),
('151610047', 'mochamad akbar trianto', 'L', 'Bandung', '2000-06-10', 'Islam', 'Jl. Nursijan  Gg. Icin No. 116A Rt. 04 / 01  Kel. Paledang - Kec. Lengkong', 'DAFTAR NAMA SISWA 2016-2017_23538_image090.png', 2, 1, 100, '2017-04-13 05:45:08', '2017-04-13 05:45:08'),
('151610048', 'mochamad delfa elpana', 'L', 'Bandung', '2000-05-07', 'Islam', 'Jl. Maleer V  No. 270/118  Rt. 03/12   Kec. Batununggal  40274', 'DAFTAR NAMA SISWA 2016-2017_23538_image094.png', 2, 1, 100, '2017-04-13 05:46:28', '2017-04-13 05:46:28'),
('151610049', 'muhamad ergan budiyargo', 'L', 'Bandung', '2000-03-04', 'Islam', 'Jl. Antapani Lama  No. 46E Gg. Cempaka  Rt. 02 / 09 Kel. Antapani Tengah - Kec. Antapani  40291', 'DAFTAR NAMA SISWA 2016-2017_23538_image095.png', 2, 1, 100, '2017-04-13 05:47:23', '2017-04-13 05:47:23'),
('151610050', 'muhammad ilham naufal', 'L', 'Cianjur', '2000-04-14', 'Islam', 'Jl. Industri Dlm  Rt. 08 / 08 Kel. Arjuna - Kec. Cicendo  40172', 'DAFTAR NAMA SISWA 2016-2017_23538_image098.png', 2, 1, 100, '2017-04-13 05:48:35', '2017-04-13 05:48:35'),
('151610051', 'muhammad izan fauzillah', 'L', 'Bandung', '2000-04-18', 'Islam', 'Jl. Saturnus Raya  No. 32  Rt. 02 / Rw. 16    Kel.  Rancasari    -   Kec. Sekejati  Bandung', 'DAFTAR NAMA SISWA 2016-2017_23538_image100.png', 2, 1, 100, '2017-04-13 05:49:35', '2017-04-13 05:49:35'),
('151610052', 'muhammad naufal akbar', 'L', 'Bandung', '2000-03-16', 'Islam', 'Jl. Cibunut No. 188 / 32B  Rt 03 / 11  Kel. Kebon Pisang - Kec. Sumur bandung 40112', 'DAFTAR NAMA SISWA 2016-2017_23538_image102.png', 2, 1, 100, '2017-04-13 05:52:02', '2017-04-13 05:52:02'),
('151610053', 'muhammad reihan', 'L', 'Bandung', '2000-02-26', 'Islam', 'Jl. Maos  II Rt. 01 / 06 Kel. Cigereleng - Kec. Regol  40253', 'DAFTAR NAMA SISWA 2016-2017_23538_image103.png', 2, 1, 100, '2017-04-13 05:53:07', '2017-04-13 05:53:07'),
('151610054', 'rafly eka purnama sopian', 'L', 'Bandung', '2000-06-08', 'Islam', 'Jl. Pasirluyu  No. 145/205A  Rt. 05 / 03  Kel. Pasirluyu - Kec. Regol  40254', 'DAFTAR NAMA SISWA 2016-2017_23538_image105.png', 2, 1, 100, '2017-04-13 05:54:12', '2017-04-13 05:54:12'),
('151610055', 'ramdeska muslim', 'L', 'Bandung', '1999-12-30', 'Islam', 'Jl. Holis  Gg. Cibuntu Tengah III Rt. 04 / 10  Kel. Warung Muncang - Kec. Bandung Kulon 40211', 'DAFTAR NAMA SISWA 2016-2017_23538_image108.png', 2, 1, 100, '2017-04-13 05:55:23', '2017-04-13 05:55:23'),
('151610056', 'revi firdayani', 'P', 'Bandung', '1999-07-28', 'Islam', 'Jl. Cijerah  Raya  No. 190  Rt. 04 / 04    Kel. Cijeurah - Kec. Bandung Kulon 40213', 'DAFTAR NAMA SISWA 2016-2017_23538_image110.png', 2, 1, 100, '2017-04-13 05:56:21', '2017-04-13 05:56:21'),
('151610057', 'rifaldi feliandra ferrari', 'L', 'Bandung', '2000-01-15', 'Islam', 'Jl. Desa No. 92 Rt. 05 / 03 Kel. Babakansari  Kec. Kiaracondong   Bandung  40283', 'DAFTAR NAMA SISWA 2016-2017_23538_image112.png', 2, 1, 100, '2017-04-13 05:57:38', '2017-04-13 05:57:38'),
('151610058', 'rifky arya nur salman', 'L', 'Bandung', '2000-06-07', 'Islam', 'Jl. Mukodar Tengah  No. 4  Rt. 06 / 07  Kel. Cibeureum - Kec. Cimahi Selatan 40535', 'DAFTAR NAMA SISWA 2016-2017_23538_image113.png', 2, 1, 100, '2017-04-13 05:58:34', '2017-04-13 05:58:34'),
('151610059', 'sundhari febriantini', 'P', 'Bandung', '2000-02-16', 'Islam', 'Jl. Soka V No. 128 Rt. 04 / 16 Kel. Rancaekek Kencana -  Kec. Rancaekek  40394', 'DAFTAR NAMA SISWA 2016-2017_23538_image116.png', 2, 1, 100, '2017-04-13 05:59:38', '2017-04-13 05:59:38'),
('151610060', 'taufiq rizky darmawan suseno', 'L', 'Bandung', '2000-08-19', 'Islam', 'Taman Saturnus I  No. 45  Rt. 04 / 16 Kel. Manjahlega - Kec. Rancasari 40286', 'DAFTAR NAMA SISWA 2016-2017_23538_image118.png', 2, 1, 100, '2017-04-13 06:00:38', '2017-04-13 06:00:38'),
('151610061', 'wisang geni', 'L', 'Cilacap', '1999-01-29', 'Islam', 'Jl. Inhoftank  Gg. Sadang Asri  Rt. 03 / 06  Kel. Pelindung Hewan - Kec. Astananyar  40293', 'DAFTAR NAMA SISWA 2016-2017_23538_image119.png', 2, 1, 100, '2017-04-13 06:01:55', '2017-04-13 06:01:55'),
('151610062', 'yuflih akbar qintara', 'L', 'Bandung', '1999-08-18', 'Islam', 'Jl. Sari Indah Raya No. 11  Rt. 08 / 12  Kel.  Babakan sari - Kec. Kiaracondong  40283', 'DAFTAR NAMA SISWA 2016-2017_23538_image121.png', 2, 1, 100, '2017-04-13 06:03:01', '2017-04-13 06:03:01'),
('151610063', 'yustisia pratiwi suhastri', 'P', 'Bandung', '2000-05-25', 'Islam', 'Jl. Gatsu No. 96 Komp. Seskoad Flat A. No. 301  Rt. 05 / 07 Kel. Lingkar Selatan - Kec. Lengkong   40263', 'DAFTAR NAMA SISWA 2016-2017_23538_image123.png', 2, 1, 100, '2017-04-13 06:04:21', '2017-04-13 06:04:21'),
('151610064', 'adinda raesna nuranjaliany', 'P', 'Bandung', '2000-08-23', 'Islam', 'Jl. Emung  No. 214/36.B  Rt. 05 / 02  Kel. Burangrang - Kec. Lengkong 40262', 'DAFTAR NAMA SISWA 2016-2017_23538_image126.png', 2, 3, 100, '2017-04-13 06:09:03', '2017-04-13 06:09:03'),
('151610065', 'aliifah rifattianty  zukhruf', 'P', 'Bandung', '2000-07-21', 'Islam', 'Jl. Cisaranteun Kulon  No. 130 Rt. 02 / 07  Kel. Cisaranteun Kulon - Kec. Arcamanik  40293', 'DAFTAR NAMA SISWA 2016-2017_23538_image127.png', 2, 3, 100, '2017-04-13 06:10:16', '2017-04-13 06:10:16'),
('151610066', 'alya nur pratiwi', 'P', 'Bandung', '2000-03-10', 'Islam', 'Blok Pintu III  No. 99/126.C  Rt. 05 / 04  Kel. Kebon Gedang - Kec. Batununggal  40274', 'DAFTAR NAMA SISWA 2016-2017_23538_image130.png', 2, 3, 100, '2017-04-13 06:13:29', '2017-04-13 06:13:29'),
('151610067', 'ati apriyani', 'P', 'Lebak', '2000-04-01', 'Islam', 'Jl. Banjarsari 15  No. 1 A  Rt. 04 / 15  Kel. Sukamiskin - Kel. Arcamanil  40293', 'DAFTAR NAMA SISWA 2016-2017_23538_image132.png', 2, 3, 100, '2017-04-13 06:14:46', '2017-04-13 06:14:46'),
('151610068', 'avivah maharani agustina aryanti', 'P', 'Bandung', '2000-08-03', 'Islam', 'Komp. Sutra Graha   Jl. Sutera Raya  2 Rt. 05 / 02 Kel. Mengger - Kec. Bandung Kidul    40267', 'DAFTAR NAMA SISWA 2016-2017_23538_image135.png', 2, 3, 100, '2017-04-13 06:15:57', '2017-04-13 06:15:57'),
('151610069', 'bintan nurhaliza', 'P', 'Bandung', '2000-03-12', 'Islam', 'Jl. Kebon Pisang No. 37/34.B Rt. 10 / 10  Kel. Kebon Pisang - Kec. Sumur Bandung  40112', 'DAFTAR NAMA SISWA 2016-2017_23538_image136.png', 2, 3, 100, '2017-04-13 06:17:04', '2017-04-13 06:17:04'),
('151610070', 'chintya pratiwi', 'P', 'Bandung', '2000-08-04', 'Islam', 'Jl. Lewi Anyar V  Rt. 07 / 04  Kel. Situsaeur - Kec. Boongloa Kidul 40234', 'DAFTAR NAMA SISWA 2016-2017_23538_image137.png', 2, 3, 100, '2017-04-13 06:18:09', '2017-04-13 06:18:09'),
('151610071', 'cindy helmalia anjani', 'P', 'Bandung', '2000-06-22', 'Islam', 'Jl. Inhoftank Ranjenk  Gg. Masjid Hayalal Fallah Rt. 02 / 03  Kel. Kebonlega - Kec. Bojongloa Kidul  40235', 'DAFTAR NAMA SISWA 2016-2017_23538_image140.png', 2, 3, 100, '2017-04-13 06:19:13', '2017-04-13 06:19:13'),
('151610072', 'dhea anggelica', 'P', 'Bandung', '2000-07-31', 'Islam', 'Jl. Cibangkong  Rt. 09 / 11  Kel. Cibangkong - Kec. Batununggal   40273', 'DAFTAR NAMA SISWA 2016-2017_23538_image142.png', 2, 3, 100, '2017-04-13 06:20:18', '2017-04-13 06:20:18'),
('151610073', 'firda maryana', 'P', 'Klaten', '2000-03-16', 'Islam', 'Jl. Cihampelas  No. 108/ 35.B  Rt. 05/05  Kel. Cipaganti - Kec. Coblong  40131', 'DAFTAR NAMA SISWA 2016-2017_23538_image144.png', 2, 3, 100, '2017-04-13 06:21:36', '2017-04-13 06:21:36'),
('151610074', 'fitria melinda sanyang', 'P', 'Bandung', '2000-01-07', 'Islam', 'Jl. Tres. Buahbatu  Gg. Kujang I  No. 120 Rt. 05 / 07  Kel. Kujangsari - Kec. Bandung Kidul  40287', 'DAFTAR NAMA SISWA 2016-2017_23538_image146.png', 2, 3, 100, '2017-04-13 06:22:32', '2017-04-13 06:22:32'),
('151610075', 'havisha salsabilla  raminaswari', 'P', 'Bandung', '2000-06-27', 'Islam', 'Jl. Cibuntu Tmur  No. 05  Rt. 07 / 04  Kel. Warung Muncang - Kec. Bandung Kulon  40211', 'DAFTAR NAMA SISWA 2016-2017_23538_image148.png', 2, 3, 100, '2017-04-13 06:23:36', '2017-04-13 06:23:36'),
('151610076', 'ina julia budiarti', 'P', 'Bandung', '2000-07-31', 'Islam', 'Jl. Cisaranten Kulon No. 22 Rt. 01 / 04   Kel. Cisaranteun Kulon - Kec. Arcamanik  40293', 'DAFTAR NAMA SISWA 2016-2017_23538_image149.png', 2, 3, 100, '2017-04-13 06:24:50', '2017-04-13 06:24:50'),
('151610077', 'intan ananda dewi', 'P', 'Bandung', '2001-01-31', 'Islam', 'Jl. Pangampaan No. 273/19.B   Rt. 04 / 06  Kel. Pungkur - Kec. Regol  40252', 'DAFTAR NAMA SISWA 2016-2017_23538_image152.png', 2, 3, 100, '2017-04-13 06:25:56', '2017-04-13 06:25:56'),
('151610078', 'jeni rahayu', 'P', 'Bandung', '1999-03-19', 'Islam', 'Jl. Ciparay Tengah  Rt. 05 / 05   Kel. Cibaduyut Kidul - Kec. Bojongloa Kidul  40239', 'DAFTAR NAMA SISWA 2016-2017_23538_image154.png', 2, 3, 100, '2017-04-13 06:27:16', '2017-04-13 06:27:16'),
('151610079', 'luthfi yanti nurfi  khoerina', 'P', 'Bandung', '2000-08-09', 'Islam', 'Jl. Curug Candung No. 158  Moh. Toha Rt. 05 / 06  Kel. Wates - Kec. Bandung Kidul  40256', 'DAFTAR NAMA SISWA 2016-2017_23538_image156.png', 2, 3, 100, '2017-04-13 06:28:40', '2017-04-13 06:28:40'),
('151610080', 'nadya savitri apriliani', 'P', 'Bandung', '2000-04-26', 'Islam', 'Jl. Braga  Gg. Afandi No. 24  Rt. 06 / 04  Kel. Braga - Kec. Sumur Bandung 40111', 'DAFTAR NAMA SISWA 2016-2017_23538_image158.png', 2, 3, 100, '2017-04-13 06:29:45', '2017-04-13 06:29:45'),
('151610081', 'narenza fajriah rizaldi', 'P', 'Bandung', '2000-08-05', 'Islam', 'GBA  I  Blok  J. 36  Rt. 06 / 15  Kel.  Bojongsoang _ Kec. Bojongsoang  40288', 'DAFTAR NAMA SISWA 2016-2017_23538_image159.png', 2, 3, 100, '2017-04-13 06:31:00', '2017-04-13 06:31:00'),
('151610082', 'nita yulia', 'P', 'Bandung', '2000-07-16', 'Islam', 'Kawaluyaan  Rt. 04 / 06 Kel. Jatisari - Kec. Buahbatu  40286', 'DAFTAR NAMA SISWA 2016-2017_23538_image162.png', 2, 3, 100, '2017-04-13 06:32:01', '2017-04-13 06:32:01'),
('151610083', 'noviyanti ratnasari', 'P', 'Bandung', '1999-11-05', 'Islam', 'Jl. Pagarsih Gg. Madrasah  Rt. 06 / 01  Kel. Sukahaji - Kec. Babakan Ciparay  40222', 'DAFTAR NAMA SISWA 2016-2017_23538_image164.png', 2, 3, 100, '2017-04-13 06:33:02', '2017-04-13 06:33:02'),
('151610084', 'reffy wulandari', 'P', 'Bandung', '2000-01-25', 'Islam', 'Jl. Kancra No. 78.B Rt. 01 / 08 Kel. Burangrang - Kec. Lengkong  40262', 'DAFTAR NAMA SISWA 2016-2017_23538_image166.png', 2, 3, 100, '2017-04-13 06:34:10', '2017-04-13 06:34:10'),
('151610085', 'rima anggraeni', 'P', 'Bandung', '2000-10-27', 'Islam', 'Jl. Citamiang  No. 21  Rt. 05 / 08  Kel. Sukamaju - Kec. Cibeunying Kidul  40121', 'DAFTAR NAMA SISWA 2016-2017_23538_image167.png', 2, 3, 100, '2017-04-13 06:35:10', '2017-04-13 06:35:10'),
('151610086', 'riska januar  pradhita', 'P', 'Bandung', '2000-01-10', 'Islam', 'Jl. Mengger Hilir  No. 12.A Rt. 01 / 03  Kel. Sukapura - Kec. Dayeuhkolot   40267', 'DAFTAR NAMA SISWA 2016-2017_23538_image169.png', 2, 3, 100, '2017-04-13 06:36:10', '2017-04-13 06:36:10'),
('151610087', 'rodiana supriatin', 'P', 'Bandung', '2000-10-16', 'Islam', 'Jl. Citepus Kulon  No. 61 Rt. 03 / 06   Kel. Pasawahan - Kec. Dayeuhkolot   40256', 'business-person-silhouette-wearing-tie_318-49988.jpg', 2, 3, 100, '2017-04-13 06:40:42', '2017-04-13 06:40:42'),
('151610088', 'salsa aulia azzahra', 'P', 'Bandung', '1999-12-21', 'Islam', 'Komp. Cihanjuang Indah  B. 12 / 160 Rt. 04 / 20 Kel. Cibabat - Kec. Cimahi Utara 40513', 'DAFTAR NAMA SISWA 2016-2017_23538_image171.png', 2, 3, 100, '2017-04-13 06:42:00', '2017-04-13 06:42:00'),
('151610089', 'siti maryani', 'P', 'Sukabumi', '2000-10-18', 'Islam', 'Jl. Terate  No. 16 Rt. 08 / 10  Kel. Samoja - Kec. Batununggal  40262', 'DAFTAR NAMA SISWA 2016-2017_23538_image173.png', 2, 3, 100, '2017-04-13 06:44:46', '2017-04-13 06:44:46'),
('151610090', 'sofyah rizqi azhari', 'P', 'Bandung', '2000-02-17', 'Islam', 'Babakan Priangan IV  No. 134 RT. 10 / 01  Kel. Ciseureuh - Kec. Regol    40255', 'DAFTAR NAMA SISWA 2016-2017_23538_image175.png', 2, 3, 100, '2017-04-13 06:45:51', '2017-04-13 06:45:51'),
('151610091', 'sri hayati', 'P', 'Bandung', '2000-01-15', 'Islam', 'Jl. Moh. Toha Lp. Cibiuk  Rt. 02 / 13  Kel. Sawahan - Kec. Dayeuhkolot  40256', 'DAFTAR NAMA SISWA 2016-2017_23538_image176.png', 2, 3, 100, '2017-04-13 06:47:01', '2017-04-13 06:47:01'),
('151610093', 'vini noviyanti', 'P', 'Bandung', '1999-11-21', 'Islam', 'Jl. Leuwipanjang Gg. Samsudin No. 51  Rt. 09 / 04  Kel. Situsaeur - Kec. Bojongloa Kidul  40234', 'DAFTAR NAMA SISWA 2016-2017_23538_image178.png', 2, 3, 100, '2017-04-13 06:48:16', '2017-04-13 06:48:16'),
('151610094', 'vinna nur syalsabilla', 'P', 'Bandung', '2000-09-12', 'Islam', 'Gg. Suniaraja No. 18 Rt. 07 / 02  Kel. Braga - Kec. Sumur Bandung', 'DAFTAR NAMA SISWA 2016-2017_23538_image181.png', 2, 3, 100, '2017-04-13 06:49:22', '2017-04-13 06:49:22'),
('151610095', 'yaselia safitri', 'P', 'Bandung', '2000-05-09', 'Islam', 'Jl. Babakan Jati V Rt. 02 / 07  Kel. Gumuruh - Kec. Batununggal  40275', 'DAFTAR NAMA SISWA 2016-2017_23538_image182.png', 2, 3, 100, '2017-04-13 06:50:16', '2017-04-13 06:50:16'),
('151610096', 'yasinta nafi', 'P', 'Bandung', '2000-11-24', 'Islam', 'Jl. Cicariang No.22  Rt. 05 / 07  Kel. Sukamaju - Kec. Cibeunying Kidul', 'DAFTAR NAMA SISWA 2016-2017_23538_image186.png', 2, 3, 100, '2017-04-13 06:51:31', '2017-04-13 06:51:31'),
('151610097', 'yasmin faadillah', 'P', 'Bandung', '2000-02-24', 'Islam', 'Jl. Cibunut No. 180/34.A  Rt. 05 / 07 Kel. Kebon Pisang - Kec. Sumur Bandung  40112', 'DAFTAR NAMA SISWA 2016-2017_23538_image187.png', 2, 3, 100, '2017-04-13 06:52:31', '2017-04-13 06:52:31'),
('151610098', 'zidna rifa rikzatillah  alwan', 'P', 'Bandung', '2000-03-11', 'Islam', 'Kp. Cikoneng  Rt. 01 / 008  Desa Bojongsoang - Ke. Bojongsoang 40288', 'DAFTAR NAMA SISWA 2016-2017_23538_image188.png', 2, 3, 100, '2017-04-13 06:53:41', '2017-04-13 06:53:41'),
('151611100', 'rizqia awalu kamila', 'P', 'Bandung', '1998-12-03', 'Islam', 'Jl. Saturnus Raya  No. 32 Rt. 02 /06  Kel. Manjahlega  Kec. Rancasari  Bandung  40286', 'A28.JPG', 3, 1, 100, '2017-06-14 14:18:46', '2017-06-14 14:18:46'),
('151611104', 'firly fadillah', 'L', 'Bandung', '1998-10-12', 'Islam', 'Jl. Melong Asih I No. 8 Cijerah                Rt. 06 / 08  Kel. Cijerah  -  Kec. Bandung Kulon   Bandung  40213', 'A29.JPG', 3, 1, 100, '2017-06-14 14:19:33', '2017-06-14 14:19:33'),
('161710001', 'ahmad ramdani', 'L', 'Bandung', '2000-12-11', 'Islam', '-', 'A1.JPG', 1, 2, 100, '2017-05-30 10:17:34', '2017-06-19 00:42:28'),
('161710002', 'akmal fajari wildan', 'L', 'Bandung', '2000-10-02', 'Islam', 'Komp. Permata Cimahi No.  E.4/19   Rt. 01 / 14  Kel. Tani Mulya - Kec. Ngamprah  Bandung Barat 40220', 'A2.JPG', 1, 2, 100, '2017-05-30 10:19:10', '2017-05-30 10:19:10'),
('161710003', 'aldy hadrian maudy altman', 'L', 'Bandung', '2000-06-04', 'Islam', 'Jl. Jend. A. Yani  Gg.  Jibja  No. 28 Rt.  01/02  Kel. Cicaheum - Kec. Kiaracondong  Bandung  40282', 'A3.JPG', 1, 2, 100, '2017-05-30 10:20:32', '2017-05-30 10:20:32'),
('161710004', 'alfiq rimadhan', 'L', 'Cianjur', '2000-11-22', 'Islam', 'Jl. Cipaerta No. 94/33 Rt. 01/03  Kel. Malabar - Kec. Lengkong  Bandung  40262', 'A4.JPG', 1, 2, 100, '2017-05-30 10:21:46', '2017-05-30 10:21:46');
INSERT INTO `siswa` (`no_induk`, `nama_siswa`, `jk`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `photo`, `kelas`, `jurusan`, `poin`, `created_at`, `updated_at`) VALUES
('161710005', 'alif daffa azahara', 'L', 'Bandung', '2001-01-10', 'Islam', 'Jl. Moch. Toha  Gg.  Silih Asih VI No. 37  Rt. 03/04  Kel. Cigereleng - Kec. Regol  Bandung 40253', 'A5.JPG', 1, 2, 100, '2017-05-30 10:22:42', '2017-05-30 10:22:42'),
('161710006', 'aqsyal taufiqurrahman', 'L', 'Bandung', '2001-01-26', 'Islam', 'Jl. Komud Supadio  Gg. Hanura  No. 20/72  Kel. Husen Sastara N - Kec. Cicendo  Bandung 40174', 'A6.JPG', 1, 2, 100, '2017-05-30 10:23:43', '2017-05-30 10:23:43'),
('161710007', 'asep zen zaenul millah', 'L', 'Bandung', '2001-06-14', 'Islam', 'Jl. Kopo  Gg. Panyileukan  No. 15  Rt. 02/05  Kel. Kopo - Kec. Bojongloa Kaler Bandung  40233', 'A7.JPG', 1, 2, 100, '2017-05-30 10:24:53', '2017-05-30 10:24:53'),
('161710008', 'attirmidzy shaputra', 'L', 'Bandung', '2001-07-01', 'Islam', 'Komp. Ujung Berung Indah   Blok. 14  No. 17 Rt04/11  Kel. Cigending - Kec. Ujung Berung   Bandung  40611', 'A8.JPG', 1, 2, 100, '2017-05-30 10:26:06', '2017-05-30 10:26:06'),
('161710009', 'eren reyhan', 'L', 'Jakarta', '2001-11-07', 'Islam', 'Jl. Pasir Salam III  No. 13  Rt. 02/09  Kel. Ancol - Kec. Regol   Bdg  40254', 'A9.JPG', 1, 2, 100, '2017-05-30 10:27:09', '2017-05-30 10:27:09'),
('161710010', 'gerdino geofarrel', 'L', 'Bogor', '1999-12-23', 'Islam', 'Jl. Cimanggung Gg. Pesantren No. 17 Rt. 03/07 Kel. Kedungwaringin - Kec. Tanah Sareal  Bogor 16163', 'A10.JPG', 1, 2, 100, '2017-05-30 10:28:19', '2017-05-30 10:28:19'),
('161710011', 'gerson alexander betty', 'L', 'Sukoharjo', '1998-11-08', 'Kristen', 'Jl. Pungkur Gg. Ancol  Utara II  No. 40 Rt. 07/07 Kel. Balong Gede -  Kec. Regol    Bandung  40251', 'A11.JPG', 1, 2, 100, '2017-05-30 10:29:44', '2017-05-30 10:29:44'),
('161710012', 'haidar ma\'ruf', 'L', 'Bandung', '2001-03-04', 'Islam', 'Komp. Panghegar Permai III                        Jl. Pamekar Raya No.  1  Rt. 04/01 Kel.  Mekar Mulya - Kec. Panyileukan  Bandung  40613', 'A12.JPG', 1, 2, 100, '2017-05-30 10:31:06', '2017-05-30 10:31:06'),
('161710013', 'irgi aufalinulingga', 'L', 'Tanggerang', '2001-03-11', 'Islam', 'Jl. Karapitan No. 14   Bandung', 'A13.JPG', 1, 2, 100, '2017-05-30 10:32:17', '2017-05-30 10:32:17'),
('161710014', 'krisna ardhana putra', 'L', 'Bandung', '2001-10-24', 'Islam', 'Jl. Buana Mekar No. 12  Rt. 04/04  Kel. Kujangsari - Kec. Kujangsari  Logam Buahbatu  Bandung', 'A14.JPG', 1, 2, 100, '2017-05-30 10:33:20', '2017-05-30 10:33:20'),
('161710015', 'michael jodi ibrahim', 'L', 'Sukabumi', '1999-03-20', 'Islam', 'Jl. Setrawangi V   No. 6 Rt. 05/15  Kel. Babakan Surabaya - Kec. Kiaracondong  Bandung  40281', 'A15.JPG', 1, 2, 100, '2017-05-30 10:34:34', '2017-05-30 10:34:34'),
('161710016', 'mi\'raj satria pamungkas', 'L', 'Bandung', '2000-10-25', 'Islam', 'Komp. Griya Persada  Blok  I  No. 1  Rt. 06/19  Kel. Margasari - Kec. Buahbatu  Bandung 40286', 'A16.JPG', 1, 2, 100, '2017-05-30 10:36:07', '2017-05-30 10:36:07'),
('161710017', 'muhamad nico ferdiansyah putra', 'L', 'Bandung', '2000-11-29', 'Islam', 'Jl. Binong Jati II  Rt. 06/06 Kel. Binong - Kec. Batununggal  Bandung 40275', 'A17.JPG', 1, 2, 100, '2017-05-30 10:37:30', '2017-05-30 10:37:30'),
('161710018', 'muhamad rahadian dwiputra', 'L', 'Bandung', '2001-05-19', 'Islam', 'Komp. Cinambo Indah No. 37 Rt. 01/05  Kel. Pakemitan - Kec. Cinambo  Bandung  40612', 'A18.JPG', 1, 2, 100, '2017-05-30 10:38:29', '2017-05-30 10:38:29'),
('161710019', 'muhamad zhentra nurfauzy', 'L', 'Bandung', '2001-08-05', 'Islam', 'Jl. Menado No. 12 Rt. 04/09  Kel. Merdeka - Kec. Sumur Bandung 40113', 'A19.JPG', 1, 2, 100, '2017-05-30 10:39:50', '2017-05-30 10:39:50'),
('161710020', 'muhamad aldika pratama', 'L', 'Bandung', '2001-05-25', 'Islam', 'Jl. Ters. H. Ibrahim Adji Gg. Sukarta No. 2  Rt. 05/02  Kel. Cijawura - Kec. Buahbatu  Bandung  40287', 'A20.JPG', 1, 2, 100, '2017-05-30 10:41:05', '2017-05-30 10:41:05'),
('161710021', 'muhamad aldino', 'L', 'Bandung', '2000-03-15', 'Islam', 'Jl. Binong Kidul  Rt. 01/03 Kel. Kebon Kangkung - Kec. Kiaracondong  Bandung 40284', 'A21.JPG', 1, 2, 100, '2017-05-30 10:42:23', '2017-05-30 10:42:23'),
('161710022', 'muhammad rendhika satria nugraha', 'L', 'Jakarta', '2001-09-02', 'Islam', 'Jl. Baranangsiang No. 98.B / 34.N   Kel. Kebon Pisang - Kec. Sumur Bandung  40112', 'business-person-silhouette-wearing-tie_318-49988.jpg', 1, 2, 100, '2017-05-30 10:44:50', '2017-05-30 10:44:50'),
('161710023', 'muhammad rifqi fauzi', 'L', 'Bandung', '2000-10-14', 'Islam', 'Komp. Griya Winnaya Blok. B 27/41  Rt. 01/14  Kel. Pasirjati - Kec. Ujung Berung  40616', 'A23.JPG', 1, 2, 100, '2017-05-30 10:46:12', '2017-05-30 10:46:12'),
('161710024', 'nurul rahmadania', 'P', 'Bandung', '2000-12-13', 'Islam', 'Jl. Moch. Toha  Gg. Masjid II No. 8 Rt. 05/10  Kel.  Pelindung Hewan - Kec. Astana Anyar  Bandung  40243', 'A24.JPG', 1, 2, 100, '2017-05-30 10:47:18', '2017-05-30 10:47:18'),
('161710025', 'nyangnyang ibrahim', 'L', 'Bandung', '2001-03-11', 'Islam', 'Jl. Gatsu No. 170 Rt. 02/02 Kel. Gumuruh - Kec. Batununggal Bandung 40275', 'A25.JPG', 1, 2, 100, '2017-05-30 10:48:32', '2017-05-30 10:48:32'),
('161710026', 'revina manurung', 'P', 'Jakarta', '2002-01-22', 'Kristen protestan', 'Komp. Taman Cibaduyut Indah  Blok. K  No. 172  Rt. 94/06  Kel.  Bojongsoang - Kec. Dayeuhkolot  Bandung  40242', 'A26.JPG', 1, 2, 100, '2017-05-30 10:50:13', '2017-05-30 10:50:13'),
('161710027', 'reza naviri ramdhani', 'L', 'Bandung', '2000-12-07', 'Islam', 'Jl. Pasir Jaya X  No. 8 Rt. 04/06  Kel. Pasirluyu - Kec. Regol  Bdg 40254', 'A27.JPG', 1, 2, 100, '2017-05-30 10:51:15', '2017-05-30 10:51:15'),
('161710028', 'rifki ahmad fauji', 'L', 'Majalengka', '2000-03-27', 'Islam', 'Jl. Moch. Toha Kp. Leuwi Melang  Rt. 01/10  Desa  Cangkuang Wetan - Kec. Dayeuhkolot  Bandung 40238', 'A28.JPG', 1, 2, 100, '2017-05-30 10:52:30', '2017-05-30 10:52:30'),
('161710029', 'rionaldi ramdani', 'L', 'Bandung', '2001-10-31', 'Islam', 'Jl. Peta - Sukamulya  No  59 Rt.  05/09  Kel. Sukaasih - Kec. Bojongloa Kaler  Bandung 40233', 'A29.JPG', 1, 2, 100, '2017-05-30 10:53:36', '2017-05-30 10:53:36'),
('161710030', 'rizki apriana rusmana', 'L', 'Bandung', '2001-04-30', 'Islam', 'Jl. Lemah Hegar  No. 44  Rt. 07/04  Kel. Sukapura Kec.  Kiaraciondong  Bandung  40286', 'A30.JPG', 1, 2, 100, '2017-05-30 10:55:06', '2017-05-30 10:55:06'),
('161710031', 'rizki naufal', 'L', 'Palembang', '2001-03-06', 'Islam', 'Jl. Teluk Buyung Kaler No. 40                         Rt.  02 / 03   Kel. Arjuna  - Kec.  Cicendo  Bandung  40172', 'A31.JPG', 1, 2, 100, '2017-05-30 10:56:01', '2017-05-30 10:56:01'),
('161710032', 'ruben terry', 'L', 'Bandung', '2000-11-20', 'Islam', 'Jl. Sirnarasa No. 11 Rt. 03/09  Kel. Cibabat - Kec. Cimahi Utara  Cinahi  40513', 'A32.JPG', 1, 2, 100, '2017-05-30 10:57:08', '2017-05-30 10:57:08'),
('161710033', 'annisa', 'P', 'Bandung', '2000-08-01', 'Islam', 'Jl. Garut No. 4  Laswi Rt. 02/04 Kel. Kacapiring - Kec. Batununggal Bandung 40271', 'A20.JPG', 1, 1, 100, '2017-05-30 11:06:28', '2017-05-30 11:06:28'),
('161710034', 'ade kamalludin', 'L', 'Bandung', '2000-11-05', 'Islam', 'Jl. Kebun Kengkung  XI  Rt. 05/08 Kel. Kebon Kangkung - Kec. Kiaracondong Bandung  40284', 'B2.JPG', 1, 1, 100, '2017-05-30 11:03:31', '2017-05-30 11:03:31'),
('161710035', 'aji nurzaman', 'L', 'Bandung', '2001-05-28', 'Islam', 'Jl. Cikaso Selatan No. 15.A Rt. 07/02 Kel. Sukamaju - Kec. Cibeunying  Bandung  40121', 'B3.JPG', 1, 1, 100, '2017-05-30 11:07:31', '2017-05-30 11:07:31'),
('161710036', 'athifah salsabila', 'P', 'Bandung', '2001-04-15', 'Islam', 'Jl. Soekarno Hatta Gg. H. Hasan I No. 220 Rt. 04/07  Kel. Babakan Ciparay - Kec. Babakan Ciparay  Bandung  40223', 'A27.JPG', 1, 1, 0, '2017-05-30 11:08:35', '2018-02-04 00:06:30'),
('161710037', 'chintia nur sandriyanto', 'P', 'Bandung', '2002-02-14', 'Islam', 'Jl. Trsn Nusa Indah V Rt. 07/07  Kel. Melong - Cimahi Selatan Cimahi  40534', 'A28.JPG', 1, 1, 100, '2017-05-30 11:09:33', '2017-05-30 11:09:33'),
('161710038', 'denna mandela putra naditya', 'L', 'Bandung', '2001-06-13', 'Islam', 'Jl. Pandan Wangi  III No. 8 Rt. 02/16  Kel. Cibiru Wetan - Kec. Cileunyi  Bandung 40625', 'B6.JPG', 1, 1, 100, '2017-05-30 11:10:45', '2017-05-30 11:10:45'),
('161710039', 'fadilah hagy nugraha', 'L', 'Bandung', '2001-10-21', 'Islam', 'Jl. Jatihandap No. 141 Rt. 03/10 Kel. Jatihandap - Kec. Madalajati  Bandung  40195', 'B7.JPG', 1, 1, 100, '2017-05-30 11:11:42', '2017-05-30 11:11:42'),
('161710040', 'farhan syadat rosadan', 'L', 'Bandung', '2001-05-15', 'Islam', 'Jl. KOMUD Supadio  No. 40/72  Rt. 07/06 Kel. Husen Sastra N - Kec. Cicendo  Bandung  40174', 'B8.JPG', 1, 1, 100, '2017-05-30 11:13:06', '2017-05-30 11:13:06'),
('161710041', 'fattab david lapian', 'L', 'Balik Papan', '2002-01-16', 'Islam', 'Jl. Cibangkong  No. 53 Rt. 08/11 Kel. Cibangkong - Kec. Bantununggal  Bandung  40273', 'B9.JPG', 1, 1, 100, '2017-05-30 11:14:04', '2017-05-30 11:14:04'),
('161710042', 'firdaus muhammad rasyidi', 'L', 'Bandung', '2001-02-12', 'Islam', 'Jl. Semarang No. 3  Rt. 03/11  Kel. Antapani Kidul - Kec.  Antapani  Bandung 40291', 'B10.JPG', 1, 1, 100, '2017-05-30 11:15:17', '2017-05-30 11:15:17'),
('161710043', 'fitraradza putrapratama pamungkas', 'L', 'Bandung', '2000-12-27', 'Islam', 'Jl. Lebaksaat No. 4  Rt. 01/18  Kel. Cipageuran - Lec. Cimahi Utara  Cimahi 40511', 'B11.JPG', 1, 1, 100, '2017-05-30 11:16:50', '2017-05-30 11:16:50'),
('161710044', 'gina malini', 'P', 'Bandung', '2001-03-10', 'Islam', 'Jl. Cibaduyut  Gg. Kopsi Rt. 03/03  Kel. Cibaduyut Kidul - Kec. Bojongloa Kidul   Bandung  40236', 'B12.JPG', 1, 1, 100, '2017-05-30 11:17:51', '2017-05-30 11:17:51'),
('161710045', 'hadiyan supriatna', 'L', 'Bandung', '2001-04-07', 'Islam', 'Komp. Griya Prima Asri Jl.  Rajawali Blok.  D. 7 No.  8 Rt. 08/12 Desa - Bojongmalaka - Kec. Baleendah  Bandung  40375', 'B13.JPG', 1, 1, 100, '2017-05-30 11:19:03', '2017-05-30 11:19:03'),
('161710046', 'helinda', 'P', 'Tasik Malaya', '2000-11-27', 'Islam', 'Jl. Moch. Ramdan Gg. Murni I No. 26  Rt. 05/03  Kel. Ciateul - Kec. Regol   Bandung 40254', 'B14.JPG', 1, 1, 100, '2017-05-30 11:20:39', '2017-05-30 11:20:39'),
('161710048', 'iqbal dava pratama', 'L', 'Bandung', '2000-07-13', 'Islam', 'Jl. Papanggungan X Rt. 04/09  Kel. Bekon Kangkung - Kec. Kiaracondong  Bandung 40284', 'B16.JPG', 1, 1, 100, '2017-05-30 11:22:16', '2017-05-30 11:22:16'),
('161710049', 'kania putri quraesin', 'P', 'Bandung', '2001-07-07', 'Islam', 'Jl. Alani  No. 18/34.B  Rt. 04/12  Kel.  Kebon Pisang Sumur Bandung 40112', 'B17.JPG', 1, 1, 100, '2017-05-30 11:23:25', '2017-05-30 11:23:25'),
('161710050', 'milla aprillya indriyani', 'P', 'Bandung', '2001-04-22', 'Islam', 'Jl. Teluk Buyung Kaler No. 64 Rt. 01/03  Kel. Arjuna - Kec. Cicendo   Bandung  40172', 'B18.JPG', 1, 1, 100, '2017-05-30 11:24:34', '2017-05-30 11:24:34'),
('161710051', 'mohamad naufal insanimufti', 'L', 'Bandung', '2001-05-14', 'Islam', 'Komp. Banyu Biru  Blok  J-14  Rt. 01/10  Kel. Mekarjaya - Kec. Rancasari  Bandung  40292', 'B20.JPG', 1, 1, 100, '2017-05-30 11:26:59', '2017-05-30 11:26:59'),
('161710053', 'muhammad adryan wardhana', 'L', 'Bandung', '2001-10-29', 'Islam', 'Jl. Maleer Indah II No. 21 Rt. 09/03  Kel. Maleer - Kec. Batununggal  Badung 40274', 'B21.JPG', 1, 1, 100, '2017-05-30 11:28:02', '2017-05-30 11:28:02'),
('161710054', 'muhammad garin  garnida', 'L', 'Bandung', '2000-10-19', 'Islam', 'Jl. Haremis  II  No. 17 Rt. 05 /07  Kel. Turangga - Kec. Lengkong  Bandung  40264', 'B22.JPG', 1, 1, 100, '2017-05-30 11:29:48', '2017-05-30 11:29:48'),
('161710055', 'raki nu\'man', 'L', 'Bandung', '2001-11-07', 'Islam', 'Jl. Moch. Toha  Gg. Ripah No. 36.A Rt. 02/05 Krl. Cigereleng - Kec. Regol  Bandung 40254', 'B22.JPG', 1, 1, 100, '2017-05-30 11:31:20', '2017-05-30 11:31:20'),
('161710056', 'raviani khumaira abdullah', 'P', 'Bandung', '2001-04-10', 'Islam', 'Jl. Emong No. 26 / 16.D  Rt. 04/02  Kel. Burangrang - Kec. Lengkong  Bandung 40262', 'B23.JPG', 1, 1, 100, '2017-05-30 11:32:37', '2017-05-30 11:32:37'),
('161710057', 'rd. admiral pangestu sastrawigoena', 'L', 'Bandung', '2001-05-26', 'Islam', 'Jl. Leuwi Anyar III  D-14  Rt. 12/04  Kel. Situsaeur - Kec. Bojongloa Kidul Bandung 40234', 'B24.JPG', 1, 1, 100, '2017-05-30 11:33:50', '2017-05-30 11:33:50'),
('161710058', 'risna winarni', 'P', 'Bandung', '1998-10-09', 'Islam', 'Jl. Bojong Asih Rt. 03/04  Kel. Babakan Tarogong - Kec. Bojongloa Kaler  Bandung  40323', 'B25.JPG', 1, 1, 100, '2017-05-30 11:35:01', '2017-05-30 11:35:01'),
('161710059', 'rizky syahdilla putra', 'L', 'Bandung', '2000-08-07', 'Islam', 'Jl. Melong Kidul No. 98.A / 36.D      Rt. 03/02  Kel. Cikawao - Kec/ Lengkong  Bandung 40261', 'B26.JPG', 1, 1, 100, '2017-05-30 11:36:06', '2017-05-30 11:36:06'),
('161710060', 'salsa octavia anshari', 'P', 'Bandung', '2001-10-25', 'i', 'Jl. Raya Dayeuhkolot  Rt. 04/09  Kel. Citeurup - Kec. Dayeuhkolot  Vandung  40257', 'B27.JPG', 1, 1, 100, '2017-05-30 11:37:06', '2017-05-30 11:37:06'),
('161710061', 'siti widya ningsih', 'P', 'Bandung', '2001-01-13', 'Islam', 'Jl. Maleer Utara  No. 41.A/119 Rt. 02/04  Kel. Maleer - Kec. Batununggal  Bandung 40274', 'B28.JPG', 1, 1, 100, '2017-05-30 11:38:05', '2017-05-30 11:38:05'),
('161710062', 'sri yusfina', 'P', 'Bandung', '2001-04-28', 'Islam', 'Jl. Halimun Dalam No. 76/107  Rt. 03/08  Kel. Malabar - Kec. Lengkong  Bandung  40262', 'B29.JPG', 1, 1, 100, '2017-05-30 11:39:02', '2017-05-30 11:39:02'),
('161710063', 'tasya nabilla firanti', 'P', 'Padang', '2001-05-27', 'Islam', 'Jl. Soekarno Hata  Gg. Pusri  No. 24  Rt. 04/11  Kel. Kopo - Kec. Bojongloa Kaler  Bandung  40233', 'B30.JPG', 1, 1, 100, '2017-05-30 11:40:21', '2017-05-30 11:40:21'),
('161710064', 'violin carolina', 'P', 'Bandung', '2001-07-15', 'Islam', 'Jl. Rebab No. 21 Rt. 01/02  Kel. Turangga - Kec. Lengkong  Bandung  40264', 'B31.JPG', 1, 1, 100, '2017-05-30 11:41:16', '2017-05-30 11:41:16'),
('161710065', 'william maulana yusup', 'L', 'Bandung', '2001-07-15', 'Islam', 'Komp. Perkebunan I  No. 14  Rt. 12/15 Kel. Margasari - Kec. Buahbatu Bandung 40286', 'B32.JPG', 1, 1, 100, '2017-05-30 11:42:12', '2017-05-30 11:42:12'),
('161710066', 'alivia putri anggraeni', 'P', 'Bandung', '2001-04-27', 'Islam', 'Buana Ciwastra Residence  C.2  No. 6  Rt. 10/17  Kel. Margasari - Kec. Buahbatu  40286', 'C1.JPG', 1, 3, 100, '2017-05-30 21:10:03', '2017-06-19 19:11:18'),
('161710067', 'ananda nabila elvano putri', 'P', 'Bandung', '2001-03-15', 'Islam', 'Jl. Cibangkong No. 76/120  Rt. 07/08  Kel. Cibangkong - Batunggal  Bandung  40273', 'C2.JPG', 1, 3, 100, '2017-05-30 21:10:58', '2017-05-30 21:10:58'),
('161710068', 'anggun wulan dari', 'P', 'Bandung', '2001-08-11', 'Islam', 'Jl. Jatisari  Rt. 03/01  Kel. Jatisari - Kec. Buahbatu  Bandung  40286', 'C3.JPG', 1, 3, 100, '2017-05-30 21:11:54', '2017-05-30 21:11:54'),
('161710069', 'anindya putri maharani', 'P', 'Bandung', '2000-10-24', 'Islam', 'Jl. Cijawura Hilir  I No. 4.A  Rt. 01/11  Kel. Cijawura - Kec. Buahbatu  Bandung  40287', 'C4.JPG', 1, 3, 100, '2017-05-30 21:12:46', '2017-05-30 21:12:46'),
('161710070', 'asri dwi handayani sulistia putri', 'P', 'Bandung', '2002-03-28', 'Islam', 'Jl. Kopo Gg. Lapang  I No. 16  Rt. 03/04 Kel. Kopo - Kec. Bojongloa Kaler  Bandung 40233', 'C5.JPG', 1, 3, 100, '2017-05-30 21:13:33', '2017-05-30 21:13:33'),
('161710071', 'ayu nur hamidah', 'P', 'Bandung', '2001-07-13', 'Islam', 'Gg. Kecon Pisang No. 55/34.B  Rt. 07/10  Kel. Kebn Pisang - Kec. Sumur  Bandung  40112', 'C6.JPG', 1, 3, 100, '2017-05-30 21:14:38', '2017-05-30 21:14:38'),
('161710072', 'azzahra dwi putri', 'P', 'Bandung', '2000-12-28', 'Islam', 'Komp. Griya Kuning Asri  G.  No. 5 Rt. 07/17  Kel. Margasari - Kec. Buahbatu   Bandung 40286', 'C7.JPG', 1, 3, 100, '2017-05-30 21:15:33', '2017-05-30 21:15:33'),
('161710073', 'dea wulan gerhani', 'P', 'Bandung', '2001-01-10', 'Islam', 'Jl. Logam  Gg. Pasantren No. 338  Rt. 04/03  Hel. Kujangsari - Kec. Bandung Kidul  Bandung  40287', 'C8.JPG', 1, 3, 100, '2017-05-30 21:16:34', '2017-05-30 21:16:34'),
('161710074', 'dede nengdiana', 'P', 'Cirebon', '2000-10-07', 'Islam', 'Jl. Panghegar Ruko B. No. 3 Rt. 05/06  Kel. Sukamulya - Kec. Cinambo  Bandung 40612', 'C9.JPG', 1, 3, 100, '2017-05-30 21:17:40', '2017-05-30 21:17:40'),
('161710075', 'dewi nursifa', 'P', 'Bandung', '2001-06-19', 'Islam', 'Jl. Kebon Gedang VII  Rt. 02/08  Kel. Maleer - Kec. Batununggal  Bandung 40274', 'C10.JPG', 1, 3, 100, '2017-05-30 21:18:42', '2017-05-30 21:18:42'),
('161710076', 'dewi syifa aulia', 'P', 'Bandung', '2000-10-30', 'Islam', 'Komp. GBA 2 Blok. K-2  No.8-9  Rt. 03/08 Desa Cipagalo - Kec. Bojongsoang  Bandung  40287', 'C11.JPG', 1, 3, 100, '2017-05-30 21:20:34', '2017-05-30 21:20:34'),
('161710077', 'dinda tasya fazira', 'P', 'Bogor', '2000-11-22', 'Islam', 'Jl. Ciroyom V  No. 204/78  Rt. 01/09  Kel. Ciroyom - Kec. Andir  40182', 'C12.JPG', 1, 3, 100, '2017-05-30 21:21:40', '2017-05-30 21:21:40'),
('161710078', 'diva widya pangesti', 'P', 'Bandung', '2001-02-12', 'Islam', 'Jl. Baranangsiang  No. 283/34.B  Rt. 02/11 Kel. Kebon Pisang - Kec. Sumur Bandung  40112', 'C13.JPG', 1, 3, 100, '2017-05-30 21:22:28', '2017-05-30 21:22:28'),
('161710079', 'elvia kholillah', 'P', 'Bandung', '2001-08-04', 'Islam', 'Jl. Gagak No. 171  Rt. 07/05  Kel. Sukaluyu - Kec. Cibeunying Kaler  Bandung  40123', 'C14.JPG', 1, 3, 100, '2017-05-30 21:23:24', '2017-05-30 21:23:24'),
('161710080', 'elza ayuanita', 'P', 'Bandung', '2000-03-11', 'Islam', 'Jl. Karees Sapuran  No. 39/121  Rt. 03/01  Kel. Samoja - Kec. Batununggal  Bandung  40273', 'C15.JPG', 1, 3, 100, '2017-05-30 21:24:14', '2017-05-30 21:24:14'),
('161710081', 'eneng ripa lisnawati', 'P', 'Sukabumi', '2000-04-09', 'Islam', 'Gg, Kebon Pisang No. 51/3AB  Rt. 08/10 Kel. Kebon Pisan - Kec. Sumur Bandung 40112', 'C16.JPG', 1, 3, 100, '2017-05-30 21:25:28', '2017-05-30 21:25:28'),
('161710082', 'febia sari rahmani', 'P', 'Bandung', '2001-02-19', 'Islam', 'Jl. Mengger Hilir  No. 44  Rt. 01/03  Kel. Sukapura - Kec. Dayeuhkolot  Bandung  40267', 'C17.JPG', 1, 3, 100, '2017-05-30 21:26:25', '2017-05-30 21:26:25'),
('161710083', 'feby setia cipta', 'P', 'Bandung', '2001-02-21', 'Islam', 'Jl. Gudang Slatan No. 23 Rt. 03/05 Kel. Merdeka - Kec. Sumur Bandung 40113', 'C18.JPG', 1, 3, 100, '2017-05-30 21:27:25', '2017-05-30 21:27:25'),
('161710084', 'filita arvecia gaisella gunawan', 'P', 'Bandung', '2001-05-21', 'Islam', 'Cikoneng  Komp. Pesona Asri Estate  A.16 Rt. 06/08  Kel. Bojongsoang - Kec. Bojongsoang  Bandung 40288', 'C19.JPG', 1, 3, 100, '2017-05-30 21:28:29', '2017-05-30 21:28:29'),
('161710085', 'intan putri maharani', 'P', 'Bandung', '2001-03-26', 'Islam', 'Jl. Laswi  No. 128 Rt. 04/04  Kel. Samoja - Kec. Natununggal Bandung 40273', 'C20.JPG', 1, 3, 100, '2017-05-30 21:29:29', '2017-05-30 21:29:29'),
('161710086', 'karina cahyani', 'P', 'Bandung', '2001-09-27', 'Islam', 'Jl. Pagarsih  Gg. Siti Mariah II No. 523/86  Kel. 01/01  Kel. Jamika - Kec. Bojongloa Kaler  Bandung  40231', 'C21.JPG', 1, 3, 100, '2017-05-30 21:30:33', '2017-05-30 21:30:33'),
('161710087', 'lela nur fitriani', 'P', 'Bandung', '2001-01-26', 'Islam', 'Jl. Warna Cinta No.  1  Rt. 02/03  Kel. Mekarwangi - Lec. Bojongloa Kidul  Bandung 40237', 'C22.JPG', 1, 3, 100, '2017-05-30 21:31:20', '2017-05-30 21:31:20'),
('161710088', 'liza shopia indriani', 'P', 'Bandung', '2000-12-22', 'Islam', 'Jl. Ibrahim Adjie  Gg. Laksana No. 10A  Rt. 01/02 Kel. Margasari - Kec. Buahbatu  Bandung 40286', 'C23.JPG', 1, 3, 100, '2017-05-30 21:33:04', '2017-05-30 21:33:04'),
('161710089', 'michelle audiola', 'P', 'Bandung', '1999-11-27', 'Islam', 'Jl. Gempol Elok I  No.33  Rt. 05/13  Kel. Cigondewah Kaler - Kec. Bandung Kulon 40214', 'C24.JPG', 1, 3, 100, '2017-05-30 21:34:18', '2017-05-30 21:34:18'),
('161710090', 'nabilla hidayat', 'P', 'Bandung', '2000-11-22', 'Islam', 'Jl. Karees Kulon No. 50/33  Rt. 02/05 Kel. Malabar - Kec. Lengkong  Bandung 40262', 'C25.JPG', 1, 3, 100, '2017-05-30 21:35:26', '2017-05-30 21:35:26'),
('161710091', 'nelly hofifa', 'P', 'Banyumas', '2001-07-23', 'Islam', 'Jl. Gudang Selatan No.19 Rt. 03/05   Kel. Merdeka - Kec. Sumur Namdumg 40113', 'C26.JPG', 1, 3, 100, '2017-05-30 21:37:06', '2017-05-30 21:37:06'),
('161710092', 'puja lestari', 'P', 'Bandung', '2001-10-30', 'Islam', 'Jl. H. Kurdi I Rt. 09/01  Kel. Karasak - Kec. Astanaanyar  Bandung  40243', 'C27.JPG', 1, 3, 100, '2017-05-30 21:38:06', '2017-05-30 21:38:06'),
('161710093', 'ranesa tedya', 'P', 'Bandung', '2002-12-17', 'Islam', 'Jl. Buana Mekar  I   No. 18 Rt. 01/10 Kel. Kujangsari - Kec. Bandung Kidul    Bandung  40287', 'C28.JPG', 1, 3, 100, '2017-05-30 21:39:06', '2017-05-30 21:39:06'),
('161710094', 'risma hermawati', 'P', 'Bandung', '2001-08-18', 'Islam', 'Jl. Cidurian Utara /Sukamanah Rt. 03/13  Kel. Sikapura - Kec. Kiaracondong  Bandung  40285', 'C29.JPG', 1, 3, 100, '2017-05-30 21:39:54', '2017-05-30 21:39:54'),
('161710095', 'rosa febri gunawan', 'P', 'Cimahi', '2001-02-09', 'Islam', 'Jl. Garu VIII  No. 8  Rt. 02/10 Kel. Babakan Sumedang - Kec. Kiaracondong  Bandung  40283', 'C30.JPG', 1, 3, 100, '2017-05-30 21:41:01', '2017-05-30 21:41:01'),
('161710096', 'salsa salbila', 'P', 'Bandung', '2001-08-25', 'Islam', 'Jl. Srigadis No. 10 Rt. 02/01  Kel. Cigereleng - Kec. Regol  Bandung  40253', 'C31.JPG', 1, 3, 100, '2017-05-30 21:42:01', '2017-05-30 21:42:01'),
('161710097', 'sandra dwi andreani', 'P', 'Bandung', '2000-12-06', 'Islam', 'Jl. Kebon Jayanti  No. 67/134.A  Rt. 03/11  Kel. Kebon Jayanti - Kec. Kiaracondong  Bandung  40281', 'C32.JPG', 1, 3, 100, '2017-05-30 21:42:44', '2017-05-30 21:42:44'),
('161710098', 'shofiana nur zaeni', 'P', 'Kebumen', '2000-11-22', 'Islam', 'Jl. Ibrahim Adji  No. 40  Rt. 01/03  Kel. Kebon Kangkung - Kec. Kiaracondong  Bandung  40284', 'C33.JPG', 1, 3, 100, '2017-05-30 21:43:54', '2017-05-30 21:43:54'),
('161710099', 'siti aminah', 'P', 'Bandung', '2001-02-15', 'Islam', 'Jl. Samoja Dalam Rt. 02/07  Kel. Samoja - Kec. Batununggal  Bandung 40273', 'C34.JPG', 1, 3, 100, '2017-05-30 21:44:49', '2017-05-30 21:44:49'),
('161710100', 'tasha adjizah irawan', 'P', 'Bandung', '2001-05-06', 'Islam', 'Jl. Kebon Gedang III  Rt. 03/12 Kel. Maleer - Kec. Batununggal  Bandung  40274', 'C35.JPG', 1, 3, 100, '2017-05-30 21:45:49', '2017-05-30 21:45:49'),
('161710101', 'wina widyaningsih', 'P', 'Bandung', '2001-01-27', 'Islam', 'Jl. Bionong Kidul No. 8/127.C  Rt. 02/03  Kel. Kebon Kangkung - Kec. Kiaracondong  Bandung  40284', 'C36.JPG', 1, 3, 100, '2017-05-30 21:46:39', '2017-05-30 21:46:39'),
('161710102', 'windy yuspita', 'P', 'Tasik Malaya', '2000-07-28', 'Islam', 'Jl. Karees Kulon Rt. 06/05  Kel. Malabar - Kec. Lengkong  Bandung 40262', 'C37.JPG', 1, 3, 100, '2017-05-30 21:47:36', '2017-05-30 21:47:36'),
('161710103', 'dhafinka nurrizqan', 'L', 'Bandung', '2000-08-22', 'Islam', 'Komp. GBI  B.21  No. 20  Ciwastra', 'A33.JPG', 1, 2, 100, '2017-05-30 10:58:38', '2017-05-30 10:58:38'),
('161710104', 'sylvia rizky putri', 'P', 'Bandung', '2001-06-05', 'Islam', 'Jl. Leuwianyar 7  No. F.11  Rt. 12/04  Kel. Situsaeur - Kec. Bokongloa Kidul Bandung  40234', 'A34.JPG', 1, 2, 100, '2017-05-30 10:59:44', '2017-05-30 10:59:44'),
('161710107', 'muhamad syahdan reinaldi', 'L', 'Bandung', '2001-10-12', 'Islam', 'Jl. H. Kurdi  II / 7  No. 375/201A                 Rt. 06 / 01  Kel. Karasak - Kec. Astanaanyar  Bandung  40243', 'A35.JPG', 1, 2, 100, '2017-05-30 11:01:10', '2017-05-30 11:01:10'),
('161710108', 'kevin adwityam brahman', 'L', 'Ujung Batu', '2000-08-07', 'Islam', 'Bumi Panyawangan  Jl. Vinus Vi  No. 16  Cileunyi', 'business-person-silhouette-wearing-tie_318-49988.jpg', 1, 1, 100, '2017-05-30 11:43:35', '2017-05-30 11:43:35'),
('161710109', 'nico mukael', 'L', 'Bandung', '2000-12-16', 'Kristen Katolik', 'Jl. Langensari  No. 17  Rt. 01 / 07      Kel. Ciateul - Kec. Regol  Badung  40252', 'business-person-silhouette-wearing-tie_318-49988.jpg', 1, 1, 100, '2017-05-30 11:45:07', '2017-05-30 11:45:07'),
('161712106', 'akbar alfajrin', 'L', 'Bandung', '1998-12-01', 'Islam', 'Jl. Melong Raya  Gg. Dukuh  No. 185   Rt. 09 / 12  Kel.  Melong  Kec. Cimahi Tengah   Bandung  40534', 'B31.JPG', 3, 2, 100, '2017-06-14 14:51:15', '2017-06-14 14:51:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(4, 'M.Noor Basuki', '100081', 'ashshidiq23@gmail.com', '$2y$10$nNXtbWI2SO2UPkxmSjzhteYcgRbntcgWtj2jTlXVA//rbgIWksnNy', '2A0n4rlwtOkkGIGcCQRtYOUWFyQff4Ia1BuHXfh1GcL9wZ5JEMyFSnmjpWlY', '2017-06-18 12:51:41', '2017-06-18 12:51:41', 1),
(5, 'Hasbi Ashshidiq', '10112568', 'hasbi.ashshidiq23@gmail.com', '$2y$10$env11FBNXdkDfkHdyRND5.7495PYCELChdiG9ABWzzpXoy8nmveBy', 'Te6bQxGB2GnKbhnj36OgcHk9UO0jxRVOs5A5Jz2EH8Io1Yd6cscLjltxEZvT', '2017-06-18 13:42:58', '2017-06-18 13:42:58', 1),
(6, 'Shelvira Valia', '10112555', 'cek@email.com', '$2y$10$n8QaqYTFDdx32RczUrnjn.f/kgTP0fYEmYnaC8RPgeI0.tlI3rTy.', 'nEEJoQsoroSTYHbTkkOb416I3Fz9rcrW1BSK9ytQW3rik5w3d0p1HDpp58pk', '2017-06-18 13:46:05', '2017-06-18 13:46:05', 2),
(7, 'Rio Rizky Alamsyah', '10112563', 'gpiket@email.com', '$2y$10$hg6RlIM.k2R5ND.nI5kEA.RjTKK/NVlV5gMAz19Xg8KRhO2hC/Vdm', 'mHr9uomFBPacxkDAhKTUBv7VdknysxVHOoTqU14RUkeNBBzCGdLc9IfB5SPA', '2017-06-18 18:58:00', '2017-06-18 18:58:00', 3),
(8, 'Agus Nugroho', '11122345', 'kesiswaan@gmail.com', '$2y$10$8AniFriWl37NzlwbvYrKWuNOWUwlNPvDZX29RN1RYsuvZ5sgwvqXC', 'tFpS67coWmhjXbHubUHvEYO2EOmdrJ5JrGCeqceKsOFvaKuB6f62k3tVNrLL', '2017-06-18 22:34:07', '2017-06-18 22:34:07', 2),
(12, 'Hasbi', '123123', 'ashshidiq213@gmail.com', '$2y$10$6ULhKVCw6h.VMWuBZu79SenlSmcsikKF/jd7RHWvNCbq4oAJapnsC', NULL, '2018-02-01 02:14:05', '2018-02-01 02:14:05', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`kode_pelanggaran`);

--
-- Indexes for table `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `pelanggaran_siswa_kode_pelanggaran_index` (`kode_pelanggaran`),
  ADD KEY `pelanggaran_siswa_no_induk_index` (`no_induk`);

--
-- Indexes for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`kode_penghargaan`);

--
-- Indexes for table `penghargaan_siswa`
--
ALTER TABLE `penghargaan_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `pelanggaran_siswa_kode_pelanggaran_index` (`kode_penghargaan`),
  ADD KEY `pelanggaran_siswa_no_induk_index` (`no_induk`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`no_induk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `penghargaan_siswa`
--
ALTER TABLE `penghargaan_siswa`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD CONSTRAINT `pelanggaran_siswa_ibfk_1` FOREIGN KEY (`no_induk`) REFERENCES `siswa` (`no_induk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pelanggaran_siswa_ibfk_2` FOREIGN KEY (`kode_pelanggaran`) REFERENCES `pelanggaran` (`kode_pelanggaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penghargaan_siswa`
--
ALTER TABLE `penghargaan_siswa`
  ADD CONSTRAINT `penghargaan_siswa_ibfk_1` FOREIGN KEY (`no_induk`) REFERENCES `siswa` (`no_induk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penghargaan_siswa_ibfk_2` FOREIGN KEY (`kode_penghargaan`) REFERENCES `penghargaan` (`kode_penghargaan`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
