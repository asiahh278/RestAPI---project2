-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2023 pada 05.28
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_project_asiah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cartoons`
--

CREATE TABLE `cartoons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_cartoon` text NOT NULL,
  `description` text NOT NULL,
  `author` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cartoons`
--

INSERT INTO `cartoons` (`id`, `title_cartoon`, `description`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'The Promise Neverland', 'The Promised Neverland bercerita tentang kehidupan anak-anak yang tinggal di panti asuhan Grace Field House. Anak-anak tersebut antara lain adalah Emma, Ray, dan Norman yang menghabiskan waktunya bermain di panti sebelum mereka diadopsi. Emma, Ray, dan Norman adalah anak-anak tertua yang ada di panti asuhan tersebut.', 1, '2023-05-05 03:51:48', NULL, NULL),
(2, 'My Little Pony', 'Bersama kelima sahabatnya, Twilight Sparkle memulai sebuah perjalanan untuk merebut kembali kota mereka yang hancur akibat serangan Tempest Shadow.', 1, '2023-05-08 01:55:53', NULL, NULL),
(3, 'Tobot', 'Saat menyelidiki serangkaian kecelakaan mobil misterius, Dr. Franklin Char diculik oleh para pelaku. Kejadian ini mengaktifkan kreasinya yang disebut \"Tobots\", mobil yang menjelma menjadi robot dengan kunci khusus yang disebut \"Tokey\". Dua Tobot pertama Dr. Char, Tobot X dan Tobot Y, masing-masing dipercayakan kepada putra kembarnya Ryan dan Kory, untuk memerangi kejahatan dan melindungi lingkungan mereka.', 1, '2023-05-08 02:00:29', NULL, NULL),
(4, 'Robocar Poli', 'Di Brooms Town, sebuah kota kecil dengan tim penyelamat yang mumpuni, selalu saja terjadi kecelakaan seperti mobil yang meluncur dari tebing saat hujan, tabrakan mobil, atau anak yang terkunci di dalam rumah pemadam kebakaran. Di setiap episode, tim penyelamat kota menyelamatkan karakter dari masalah. Di akhir setiap episode, tim penyelamat sangat menyarankan karakter yang berada dalam bahaya, serta penonton', 1, '2023-05-08 00:06:16', '2023-05-08 00:06:16', NULL),
(6, 'Ejen Ali', 'Ejen Ali menceritakan tentang seorang bocah yang tak sengaja menjadi agen MATA setelah menggunakan Infinity Retinal Intelligent System (IRIS), sebuah perangkat prototipe yang dibuat oleh MATA. Setelah insiden tersebut, Ali dan pamannya Bakar bekerja sama dalam misi MATA.', 2, '2023-05-08 00:12:55', '2023-05-08 00:12:55', NULL),
(7, 'Rainbow Ruby', 'Ruby adalah anak tunggal yang tinggal bersama ayah dan ibunya. Di kamarnya, dia memiliki beberapa mainan ajaib, dan mereka semua bisa hidup di Desa Pelangi. Suatu ketika Ruby mendapat misi ke desa pelangi karena hati cocho bersinar', 3, '2023-05-08 18:48:54', '2023-05-08 23:42:15', '2023-05-08 23:42:15'),
(8, 'Upin & Ipin: Keris Siamang Tunggal', 'Upin & Ipin: Keris Siamang Tunggal adalah film petualangan dan fantasi terbaru dari Upin & Ipin dan keenam sahabatnya: Ehsan, Fizi, Mail, Jarjit, Mei Mei, dan Susanti dalam menyelamatkan kerajaan fantasi Inderaloka dari ancaman musuhnya, Raja Bersiong yang jahat. Cerita bermula saat Upin, Ipin, dan para sahabatnya tak sengaja menemukan keris mistis di gudang Tok Dalang yang ternyata membuka portal menuju kerajaan Inderaloka.', 3, '2023-05-08 23:43:45', '2023-05-08 23:43:45', NULL),
(9, 'Spirited Away', 'Spirited Away menceritakan tentang anak yang pergi kedalam dunia Ghaib untuk mencari orang tuanya. Bagaimana kelanjutannya, saksikan keseruannya', 3, '2023-05-10 21:18:02', '2023-05-10 21:18:02', NULL),
(13, 'Cars', 'Lightning McQueen, si mobil balap, harus belajar bertanggung jawab setelah membuat rusak banyak properti di Radiator Springs. Kini, ia harus memperbaiki semua kerusakan sebelum ia bisa balapan lagi.', 3, '2023-05-14 19:30:18', '2023-05-14 19:30:18', NULL),
(14, 'Toy Story 4', 'Woody selalu merasa percaya diri akan posisinya di dunia, dan prioritasnya adalah menjaga anaknya, baik itu Andy atau Bonnie. Namun ketika Bonnie menambahkan sebuah mainan baru bernama Forky dalam kamar mainannya, sebuah pengembaraan bersama teman-teman lama dan baru akan membawa Woody untuk menyaksikan betapa besarnya dunia ini bagi sebuah mainan seperti dirinya.', 3, '2023-05-14 19:33:39', '2023-05-14 19:36:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user login', '7bc6ba7d722792bc2ba65be0fa92b661ab1da3e3865187a61578b9cc8ccf1aee', '[\"*\"]', '2023-05-05 23:36:19', NULL, '2023-05-05 23:35:08', '2023-05-05 23:36:19'),
(3, 'App\\Models\\User', 2, 'user login', '31b4932af2fd93742b85a53768a3134b9448c68820d0777f5995bef07dbb39ae', '[\"*\"]', NULL, NULL, '2023-05-06 18:38:30', '2023-05-06 18:38:30'),
(5, 'App\\Models\\User', 2, 'user login', '460c99430a75d77ab632c8bdd6185b24ee1eac503aef5c9b7ecec4a1fb48d1e8', '[\"*\"]', '2023-05-08 00:27:35', NULL, '2023-05-08 00:11:12', '2023-05-08 00:27:35'),
(6, 'App\\Models\\User', 3, 'user login', '5f5bd2ce49f70a02de1025a131dc1c0ddc07c51db34ed7c72e6e0e82b60e51b0', '[\"*\"]', '2023-05-14 19:36:26', NULL, '2023-05-08 18:45:55', '2023-05-14 19:36:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$UDiHqhzMkbSnGV.OJ/Si6OjypprMrq2DImz3.FLSDfkQVRGXyMAY6', '2023-05-09 01:46:35', NULL, NULL),
(2, 'Erwin Smith', 'erwinsmith@gmail.com', '$2y$10$UDiHqhzMkbSnGV.OJ/Si6OjypprMrq2DImz3.FLSDfkQVRGXyMAY6', '0000-00-00 00:00:00', NULL, NULL),
(3, 'Armin Alert', 'arminalert@gmail.com', '$2y$10$UDiHqhzMkbSnGV.OJ/Si6OjypprMrq2DImz3.FLSDfkQVRGXyMAY6', '2023-05-09 01:44:19', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cartoons`
--
ALTER TABLE `cartoons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cartoons`
--
ALTER TABLE `cartoons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
