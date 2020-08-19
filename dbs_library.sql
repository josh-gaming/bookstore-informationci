-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2020 pada 12.49
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs_library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(5) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  `img_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email`, `password`, `role`, `img_admin`) VALUES
(319, 'Adam Firdaus', 'nissa@gmail.com', 'b4616dd8f249f7d6011b97195979ab6b', '', 'photo-200620-7ee7fa932c.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_author`
--

CREATE TABLE `tbl_author` (
  `author_id` int(5) NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `years_active` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_author`
--

INSERT INTO `tbl_author` (`author_id`, `author_name`, `years_active`, `country`, `email`) VALUES
(2934, 'Anissa Firdaus', '2017 - Presents', 'Indonesia', 'adamfrds@gmail.com'),
(15022, 'Adam Firdaus', '2016 - Sekarang', 'Korea (Republic of)', 'adamfrdsid@gmail.com'),
(22015, 'Anissa Nabila', '2015 - Presents', 'Indonesia', 'anssanbla16@gmail.com'),
(42064, 'Sheila Ondricka', '2005 - Presents', 'Lebanon', 'jstiedemann@gmail.com'),
(43082, 'Prof. Darron Lehner', '2005 - 2019', 'Australia', 'emilie28@cassin.com'),
(48035, 'Ms. Rosa Gerlach', '2019-Presents', 'Sudan', 'wprohaska@nienow.biz'),
(58642, 'Quinton Beatty', '2002-Presents', 'Svalbard & Jan Mayen Islands', 'kenneth.abernathy@yahoo.com'),
(60523, 'Kennedi Wilkinson', '2002 - 2019', 'Oman', 'franco.mraz@hotmail.com'),
(64724, 'Mrs. Christina Hyatt', '2009-2019', 'New Caledonia', 'vivianne.anderson@hotmail.com'),
(66040, 'Ken Price', '2011 - 2019', 'American Samoa', 'bethany61@hotmail.com'),
(69322, 'Karianne Volkman', '2014 - 2019', 'Lithuania', 'nayeli.lind@mertz.info'),
(69374, 'Jazmyn Towne', '2005-Presents', 'Solomon Islands', 'walker.alta@schiller.org'),
(76019, 'Hilbert Metz', '2009 - 2019', 'Tanzania', 'jermaine.veum@yahoo.com'),
(80307, 'Prof. Kim Rutherford', '2007-2019', 'Gibraltar', 'llynch@gmail.com'),
(81558, 'Coty Boyer', '2013-Presents', 'Latvia', 'lillie.larkin@ullrich.info'),
(93877, 'Vergie Sauer', '2011 - 2019', 'Reunion', 'casandra24@hotmail.com'),
(98575, 'Carmine Gutkowski III', '2005 - 2019', 'Sri Lanka', 'wilderman.nat@hotmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_book_detail`
--

CREATE TABLE `tbl_book_detail` (
  `book_id` int(5) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `author_id` int(5) DEFAULT NULL,
  `category_id` int(5) DEFAULT NULL,
  `publisher_id` int(5) DEFAULT NULL,
  `location_id` int(5) DEFAULT NULL,
  `price` bigint(100) NOT NULL,
  `stock_unit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_book_detail`
--

INSERT INTO `tbl_book_detail` (`book_id`, `book_title`, `author_id`, `category_id`, `publisher_id`, `location_id`, `price`, `stock_unit`) VALUES
(431, 'Tes Ubah', 15022, NULL, 19357, 44264, 56500, 2),
(542, 'MERN Stack Mastering', 22015, 325, 75291, 77831, 498500, 34),
(632, 'Linux for Dummies', 15022, 933, 83700, 77831, 150000, 72),
(17295, 'Belajar Codeigniter', 2934, 933, 1263, 44264, 75000, 165);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(5) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(325, 'Keluarga'),
(334, 'Finansial'),
(354, 'Humaniora'),
(433, 'Gaya Hidup'),
(450, 'Matematika'),
(464, 'Fiksi Populer'),
(507, 'Psikologi'),
(531, 'Romance'),
(604, 'Sains'),
(716, 'Ilmu Sosial'),
(752, 'Persiapan Ujian'),
(797, 'Seni & Desain'),
(826, 'Anak-Anak'),
(933, 'Komputer & Teknologi'),
(992, 'Kamus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(5) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_location`
--

INSERT INTO `tbl_location` (`location_id`, `location`) VALUES
(44264, 'Rack no. 223'),
(77831, 'Rack no. 1515');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_publisher`
--

CREATE TABLE `tbl_publisher` (
  `publisher_id` int(5) NOT NULL,
  `publisher_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_publisher`
--

INSERT INTO `tbl_publisher` (`publisher_id`, `publisher_name`, `address`, `email`) VALUES
(1263, 'Gramedia Jaya', 'Aston', 'act@gerak.com'),
(19357, 'Stark Industries', '4848 Waino CanyonSouth Reva, KS 50076-6403', 'loyce.nienow@hotmail.com'),
(20531, 'Hand, Kessler and Armstrong', '68585 Hudson Circles Suite 698\nSouth Leaborough, I', 'ajenkins@yahoo.com'),
(24522, 'Sawayn LLC', '85296 Aidan Gateway Suite 873\nDelaneyberg, CO 3030', 'wherzog@gmail.com'),
(31637, 'Mertz-Huels', '646 Destiney Mountain\nYasmeenfort, NC 38280', 'jackson.langosh@kuphal.com'),
(33628, 'Rath PLC', '702 Delilah Throughway Apt. 193\nRudolphland, NE 08', 'uking@yahoo.com'),
(35655, 'Kohler, Pagac and Nolan', '219 Vivienne Locks Suite 533\nSydneyland, NH 24267', 'trantow.danyka@roberts.com'),
(36345, 'Boyer and Sons', '9809 Peyton Shore Apt. 941\nRaynorborough, TX 86837', 'kolby71@yahoo.com'),
(40550, 'Emard PLC', '525 Zulauf Circle Apt. 094\nAlessandraland, LA 0745', 'ewell31@schinner.com'),
(44652, 'Grant, Ratke and Rippin', '49670 Koelpin Ville\nYoshikofurt, AK 23063-8406', 'marietta.hamill@dooley.info'),
(52268, 'Gerlach-Abbott', '229 Witting Brook Apt. 537\nPort Antonioville, MO 6', 'bgutkowski@yahoo.com'),
(53969, 'Abernathy-Hintz', '50161 Brekke Track\nPort Pansyshire, KS 67221', 'fkiehn@hotmail.com'),
(62369, 'West-Hettinger', '163 Joaquin Glen\nGerhardton, NV 76064', 'stiedemann.bobby@gmail.com'),
(63309, 'McKenzie-Lockman', '111 Dina Locks Suite 771\nLake Alekville, MI 41531-', 'spencer.ernestina@kuvalis.com'),
(73277, 'Mraz LLC', '66892 Keebler Park\nSouth Larue, MS 30327-0092', 'emilie44@hotmail.com'),
(75291, 'Larkin, Mayert and Wisozk', '385 Ryleigh Summit\nWest Maybelle, AR 70362', 'breitenberg.katlyn@corwin.com'),
(81454, 'Vandervort, Schowalter and Kutch', '30341 Meggie Locks Apt. 659\nLake Brayan, OH 95426-', 'jleuschke@yahoo.com'),
(83700, 'Dickens-Collier', '68084 Christiansen Estates Suite 252\nNelliefurt, N', 'tfisher@yahoo.com'),
(95897, 'Keeling PLC', '95819 Finn Bypass\nLucyborough, AK 24216', 'ziemann.presley@kertzmann.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `fullname`, `alamat`, `no_hp`, `email`, `password`) VALUES
(4353, 'Adam Firdaus', 'Perumahan Pondok Graha K no. 8', 6289621030954, 'adamfrdsid@gmail.com', 'nissabila15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tbl_author`
--
ALTER TABLE `tbl_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indeks untuk tabel `tbl_book_detail`
--
ALTER TABLE `tbl_book_detail`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `author_id` (`author_id`,`category_id`,`publisher_id`,`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indeks untuk tabel `tbl_publisher`
--
ALTER TABLE `tbl_publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_book_detail`
--
ALTER TABLE `tbl_book_detail`
  ADD CONSTRAINT `tbl_book_detail_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`location_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_book_detail_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `tbl_author` (`author_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_book_detail_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_book_detail_ibfk_4` FOREIGN KEY (`publisher_id`) REFERENCES `tbl_publisher` (`publisher_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
