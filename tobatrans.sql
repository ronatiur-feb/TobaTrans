-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08 Jan 2019 pada 02.26
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tobatrans`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `lokasi` varchar(1000) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul`, `gambar`, `lokasi`, `deskripsi`, `tanggal`) VALUES
(1, 'Siregar Aek Nalas', 'Siregar Aek Nalas.jpg', 'Toba Samosir', 'qedew', '2018-12-09 04:18:00'),
(2, 'Air Terjun Sipiso-piso', 'Air Terjun Sipiso-piso.jpg', 'Tanah Karo', 'Air terjun yang terletak di haranggaol, tanah karo Sumatera Utara. Air terjun ini banyak dikunjungi para wisatawan', '2018-12-10 02:19:00'),
(3, 'Dantob', 'Dantob.jpg', 'Lumban silintong', 'Mantap kali pun', '2018-12-14 08:42:00'),
(4, 'Air terju sipiso piso', 'Air terju sipiso piso.jpg', 'Tanah Karo', 'Mantap keren', '2018-12-14 08:07:00'),
(5, 'Kolam air Soda', 'Kolam air Soda.jpg', 'Tarutung, Tapanuli Utara', 'Kolam ini terkenal dengan soda nya', '2018-12-14 08:21:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `subjek` varchar(50) NOT NULL,
  `isi` varchar(200) NOT NULL,
  `tanggapan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama_user`, `subjek`, `isi`, `tanggapan`) VALUES
(3, 'asda', 'Admin', 'Mantul', ''),
(4, 'asda', 'Admin', 'asdasd', 'Mantap'),
(5, 'asda', 'Admin', 'Jaya\r\n\r\n', ''),
(7, 'asda', 'Marthin', 'cepat,murah', ''),
(8, 'asda', 'Admin', 'Toba TRANS KEREN', ''),
(9, 'Marthin', 'Admin', 'keren', 'janhn laho'),
(10, 'Marthin', 'sada', 'asdasd', ''),
(11, 'Marthin', 'lappet', 'lappet', ''),
(12, 'Marthin', 'Layanan', 'adasdwasdwd', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lamaran_supir`
--

CREATE TABLE `lamaran_supir` (
  `id_lamaran` int(11) NOT NULL,
  `nama_supir` varchar(45) DEFAULT NULL,
  `punya_kendaraan` varchar(45) DEFAULT NULL,
  `pengalaman` varchar(200) DEFAULT NULL,
  `alamat_email` varchar(100) DEFAULT NULL,
  `nomor_telepon` varchar(45) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `status_supir` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `lamaran_supir`
--

INSERT INTO `lamaran_supir` (`id_lamaran`, `nama_supir`, `punya_kendaraan`, `pengalaman`, `alamat_email`, `nomor_telepon`, `deskripsi`, `status_supir`) VALUES
(1, 'Aldo Simanungkalit', 'tidak', 'pernah jadi kurir JNE', 'aldo@gmail.com', '082344457860', 'saya dulunya kerja di kurir JNE sebagai supir mobil bos', 'Di tolak'),
(2, 'Andi Pratama Sitanggang', 'Mobil', 'kerja jadi kurir j&t', 'andi@gmail.com', '081314567869', 'nfwnwei', 'Di panggil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `foto_mobil` varchar(45) DEFAULT NULL,
  `nama_mobil` varchar(45) DEFAULT NULL,
  `plat_nomor` varchar(45) DEFAULT NULL,
  `jenis` int(11) DEFAULT NULL,
  `kapasitas_penumpang` int(11) DEFAULT NULL,
  `fasilitas` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `foto_mobil`, `nama_mobil`, `plat_nomor`, `jenis`, `kapasitas_penumpang`, `fasilitas`, `status`) VALUES
(1, 'Mitsubishi Pajero Sport.jpg', 'Mitsubishi Pajero Sport', 'BB 1456 QZ', 1, 5, 'ac, audio, TV', 'Tersedia'),
(2, 'Toyota Xenia Putih.jpg', 'Toyota Xenia Putih', 'BB 1567 AX', 1, 5, 'ac, audio, p3k', 'Tersedia'),
(3, 'Isuzu ELF.jpg', 'Isuzu ELF', 'BB 1456 YX', 2, 11, 'ac, wifi, TV', 'Tersedia'),
(4, 'apv.jpg', 'Toyota Agya', 'B 1789 AZK', 1, 4, 'AC, TAPE, P3K', 'Tersedia'),
(5, 'Toyota Innova.jpg', 'Toyota Innova', 'BK 1236 JX', 1, 7, 'AC, TV, P3K', 'Tidak tersedia'),
(6, 'Toyota Fortuner.jpg', 'Toyota Fortuner', 'B 2346 XYZ', 1, 6, 'AC, TV, WIFI', ''),
(7, 'APV.jpg', 'APV', 'BB 1234 KK', 1, 7, 'FULL AC ,Music ,Tv', ''),
(8, 'Xenia.jpg', 'Xenia', 'BK 1234 KK', 1, 7, 'FULL AC ,Music ,Tv', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_wisata`
--

CREATE TABLE `paket_wisata` (
  `id_paket` int(11) NOT NULL,
  `tujuan` varchar(45) DEFAULT NULL,
  `harga` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `paket_wisata`
--

INSERT INTO `paket_wisata` (`id_paket`, `tujuan`, `harga`) VALUES
(1, 'pangururan', 80000),
(2, 'siallagan', 60000),
(3, 'keliling danau toba', 200000),
(4, 'lumban julu', 90000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_mobil`
--

CREATE TABLE `pesan_mobil` (
  `id_pesan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `tujuan` varchar(60) DEFAULT NULL,
  `jumlah_penumpang` varchar(40) NOT NULL,
  `total_harga` double DEFAULT NULL,
  `keterangan_penumpang` varchar(500) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `pas_photo_supir` varchar(200) NOT NULL,
  `nama_supir` varchar(60) DEFAULT NULL,
  `no_telp_supir` varchar(20) NOT NULL,
  `nama_mobil` varchar(45) DEFAULT NULL,
  `plat_nomor` varchar(45) DEFAULT NULL,
  `keterangan_supir` varchar(45) DEFAULT NULL,
  `komentar_penumpang` varchar(45) DEFAULT NULL,
  `id_supir` varchar(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pesan_mobil`
--

INSERT INTO `pesan_mobil` (`id_pesan`, `nama_pelanggan`, `tujuan`, `jumlah_penumpang`, `total_harga`, `keterangan_penumpang`, `tanggal`, `pas_photo_supir`, `nama_supir`, `no_telp_supir`, `nama_mobil`, `plat_nomor`, `keterangan_supir`, `komentar_penumpang`, `id_supir`, `id_user`, `id_mobil`) VALUES
(15, 'Ronaldo Sitanggang', 'Dolok Sanggul', '4', 200000, 'jangan ngebut ya bang. ada anak kecil', '2018-12-10 07:12:00', 'Antonius Silalahi.jpg', 'Antonius Silalahi', '081345678987', 'Mitsubishi Pajero Sport', 'BB 1456 QZ', 'Selesai', 'Buruk', '19', 2, 1),
(16, 'Kornelius Sipayung', 'Dolok Sanggul', '4', 200000, 'JANGAN NGEBUT. BAWA OPUNG\"', '2018-12-10 07:18:00', 'ronaldo.jpg', 'Agusman Marpaung', '082345678765', 'Toyota Innova', 'BK 1236 JX', 'Selesai', 'Sangat Baik', '10', 12, 5),
(17, 'Kornelius Sipayung', 'Porsea', '4', 240000, 'bawanya pelan ya mas', '2018-12-10 07:21:00', 'Antonius Silalahi.jpg', 'Antonius Silalahi', '081345678987', 'Toyota Fortuner', 'B 2346 XYZ', 'Selesai', 'Sangat Baik', '19', 12, 6),
(18, 'Layla Hutasuhut', 'Siborong-borong', '4', 120000, 'JANGAN NGEBUT', '2018-12-10 07:26:00', '', 'Marthin Tampubolon', '082356789876', 'Toyota Agya', 'B 1789 AZK', 'Di proses', '', '13', 4, 4),
(19, 'Ruben Manurung', 'Dolok Sanggul', '4', 200000, 'SAYA BAWA PRESIDEN. DIHARAPKAN PELAN-PELAN', '2018-12-10 07:30:00', 'Antonius Silalahi.jpg', 'Antonius Silalahi', '081345678987', 'Toyota Avanza', 'BB 1567 AX', 'Di proses', '', '19', 8, 2),
(20, 'Ruben Manurung', 'Dolok Sanggul', '4', 200000, 'JAN HVDHEWKEW', '2018-12-10 07:38:00', 'Antonius Silalahi.jpg', 'Antonius Silalahi', '081345678987', 'Toyota Avanza', 'BB 1567 AX', 'Di proses', '', '19', 8, 2),
(21, 'Ruben Manurung', 'Porsea', '5', 300000, 'SDHWJDS\r\n', '2018-12-10 07:43:00', 'ronaldo.jpg', 'Agusman Marpaung', '082345678765', 'Toyota Innova', 'BK 1236 JX', 'Di proses', '', '10', 8, 5),
(22, 'jhon mejer', 'Dolok Sanggul', '11', 550000, 'JANGAN BALAP', '2018-12-10 07:56:00', '', 'Obrian Rao', '081256789876', 'Isuzu ELF', 'BB 1456 YX', 'Selesai', 'Sangat Baik', '11', 6, 3),
(23, 'syl', 'Tarutung', '2', 40000, 'besar', '2018-12-10 03:23:00', '', '', '', 'Mitsubishi Pajero Sport', 'BB 1456 QZ', '', '', '', 20, 1),
(24, 'jhon mejer', 'Siborong-borong', '6', 180000, 'JANGAN NGEBUT BANG', '2018-12-10 05:35:00', 'si anu.jpg', 'si anu', '081345678909', 'Toyota Innova', 'BK 1236 JX', 'Selesai', 'Sangat Baik', '21', 6, 5),
(25, 'Ronaldo Sitanggang', 'Siborong-borong', '3', 90000, 'jangan ngebut bang', '2018-12-11 04:27:00', 'ronaldo.jpg', 'Agusman Marpaung', '082345678765', 'Toyota Innova', 'BK 1236 JX', 'Sedang dalam perjalanan', 'Baik', '10', 2, 5),
(26, 'Marthin', 'Balige', '2', 80000, 'Jangan cepat cepat bawa mobil nya\r\n', '2018-12-11 10:26:00', '', '', '', 'Mitsubishi Pajero Sport', 'BB 1456 QZ', '', '', '', 22, 1),
(27, 'Marthin', 'Balige', '2', 80000, 'asdasdasd', '2018-12-11 01:54:00', '', '', '', 'Toyota Avanza', 'BB 1567 AX', '', '', '', 22, 2),
(30, 'Marthin', 'Porsea', '3', 180000, 'ygug', '2018-12-17 03:27:00', '', '', '', 'Mitsubishi Pajero Sport', 'BB 1456 QZ', '', '', '', 27, 1),
(33, 'Ronaldo Sitanggang', 'Porsea', '3', 180000, 'sdwee w', '2018-12-17 05:51:00', 'Antonius Silalahi.jpg', 'Antonius Silalahi', '081345678987', 'Toyota Xenia Putih', 'BB 1567 AX', 'Selesai', 'Sangat Baik', '19', 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `nama_foto` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_persetujuan_supir`
--

CREATE TABLE `status_persetujuan_supir` (
  `id_status_persetujuan` int(11) NOT NULL,
  `keterangan_persetujuan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `toba_wisata`
--

CREATE TABLE `toba_wisata` (
  `id_toba_wisata` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `tujuan` varchar(45) DEFAULT NULL,
  `jumlah_pengunjung` int(11) NOT NULL,
  `total_harga` double DEFAULT NULL,
  `keterangan_pengunjung` varchar(1000) DEFAULT NULL,
  `metode_bayar` varchar(100) NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL,
  `status_transaksi` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `toba_wisata`
--

INSERT INTO `toba_wisata` (`id_toba_wisata`, `nama`, `tujuan`, `jumlah_pengunjung`, `total_harga`, `keterangan_pengunjung`, `metode_bayar`, `bukti_bayar`, `status_transaksi`, `tanggal`, `id_user`) VALUES
(1, 'Agusman Marpaung', 'keliling danau toba', 10, 2000000, 'cdmkdsckd s sdscs ', 'Transfer ATM', 'belum dikirim', 'di proses', '0000-00-00 00:00:00', 10),
(2, 'Agusman Marpaung', 'keliling danau toba', 10, 2000000, 'cdmkdsckd s sdscs ', 'Transfer ATM', 'belum dikirim', 'di proses', '2018-12-11 05:33:00', 10),
(3, 'Agusman Marpaung', 'keliling danau toba', 10, 2000000, 'cdmkdsckd s sdscs ', 'Transfer ATM', 'belum dikirim', 'di proses', '2018-12-11 05:34:00', 10),
(4, 'Ronaldo Sitanggang', 'keliling danau toba', 15, 3000000, 'jangan jauh jauh', 'Transfer ATM', 'Pantai Parapat.jpg', 'di proses', '2018-12-11 05:35:00', 2),
(5, 'Ronaldo Sitanggang', 'pangururan', 20, 1600000, '', 'Bayar di tempat', 'bayar tunai', 'di proses', '2018-12-11 05:55:00', 2),
(6, 'Kornelius Sipayung', 'keliling danau toba', 10, 2000000, 'jnadnbscbjsdv ewf wew ', 'Bayar di tempat', 'bayar tunai', 'di proses', '2018-12-11 06:55:00', 12),
(7, 'Kornelius Sipayung', 'siallagan', 20, 1200000, 'hheuh weuhhwu fhwe', 'Transfer ATM', 'belum dikirim', 'di proses', '2018-12-11 06:56:00', 12),
(8, 'Marthin', 'pangururan', 2, 160000, 'Mantap ya ', 'Transfer ATM', 'belum dikirim', 'di proses', '2018-12-11 10:28:00', 22),
(11, 'Marthin', 'pangururan', 3, 240000, 'asdx', 'Transfer ATM', 'belum dikirim', 'di proses', '2018-12-12 01:53:00', 27),
(12, 'Marthin', 'pangururan', 2, 160000, 'aasdas', 'Transfer ATM', 'Dantob.jpg', 'di proses', '2018-12-13 04:48:00', 27),
(13, 'Ronaldo Sitanggang', 'keliling danau toba', 5, 1000000, 'dqvqe ew  ', 'Transfer ATM', 'Pantai Si adonang.jpg', 'di proses', '2018-12-13 04:55:00', 2),
(14, 'Ronaldo Sitanggang', 'pangururan', 2, 160000, 'asdasd', 'Transfer ATM', 'Pantai Parapat.jpg', 'di proses', '2018-12-13 05:05:00', 2),
(15, 'Marthin', 'siallagan', 2, 120000, 'asdasd', 'Transfer ATM', 'Pantai Si adonang.jpg', 'di proses', '2018-12-13 05:06:00', 27),
(16, 'Marthin', 'pangururan', 2, 160000, 'asd', 'Transfer ATM', 'Siregar Aek Nalas.jpg', 'Lunas', '2018-12-13 05:15:00', 27),
(17, 'Marthin', 'pangururan', 22, 1760000, 'jjhj', 'Transfer ATM', '17.jpg', 'Lunas', '2018-12-13 05:19:00', 27),
(18, 'Marthin', 'siallagan', 3, 180000, 'i love your style', 'Transfer ATM', '18.jpg', 'di proses', '2018-12-14 10:40:00', 27),
(19, 'Ronaldo Sitanggang', 'siallagan', 5, 300000, 'ef ewfw', 'Transfer ATM', '19.jpg', 'Lunas', '2018-12-17 05:40:00', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tujuan`
--

CREATE TABLE `tujuan` (
  `id_tujuan` int(11) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tujuan`
--

INSERT INTO `tujuan` (`id_tujuan`, `kecamatan`, `harga`) VALUES
(3, 'Tarutung', 20000),
(4, 'Balige', 40000),
(5, 'Porsea', 60000),
(6, 'Dolok Sanggul', 50000),
(7, 'Siborong-borong', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `namalengkap` varchar(45) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `nomortelepon` varchar(45) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pas_photo` varchar(45) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `namalengkap`, `tanggallahir`, `jenis_kelamin`, `alamat`, `nomortelepon`, `email`, `pas_photo`, `username`, `password`, `role`) VALUES
(1, 'admin', '2018-12-27', 'L', 'tarutung', '082361789987', 'admin@tobatrans.com', 'admin.jpg', 'admin', 'admin', 1),
(2, 'Ronaldo Sitanggang', '2018-12-29', 'L', 'medan', '082360057298', 'ronaldo@gmail.com', 'ronaldostg.jpg', 'ronaldo', 'ronaldo', 2),
(3, 'Parlindungan', '2018-12-02', 'L', 'porsea', '081375618890', 'parlindungan@gmail.com', 'parlindungan.jpg', 'parlindungan', 'parlindungan', 3),
(4, 'Layla Hutasuhut', '2018-12-26', 'P', 'Silimbat', '082144567683', 'layla@ymail.com', '', 'layla', 'layla', 2),
(5, 'togi', '1999-10-10', 'L', 'Medan', '081356789890', 'togi@gmail.com', '', 'togi', 'togi', 2),
(6, 'jhon mejer', '1999-01-22', 'L', 'Sipoholon', '089567899987', 'jhon@gmail.com', '', 'jhon', 'jhon', 2),
(8, 'Ruben Manurung', '2018-12-28', 'L', 'Tanjung Balai', '086756789876', 'ruben@gmail.com', '', 'ruben', 'ruben', 2),
(9, 'Andi Satria Lumban Raja', '1987-12-03', 'L', 'Jalan Gerje Balige', '081345678909', 'andi@gmail.com', '', 'andi', 'andi', 3),
(10, 'Agusman Marpaung', '1990-12-03', 'L', 'Jalan S.M Raja Tarutung', '082345678765', 'agusman@gmail.com', 'ronaldo.jpg', 'agusman', 'agusman', 3),
(11, 'Obrian Rao', '1998-12-05', 'L', 'Jalan F.L. Tobing, Laguboti', '081256789876', 'obrian@gmail.com', '', 'obrian', 'obrian', 3),
(12, 'Kornelius Sipayung', '2018-12-06', 'L', 'Medan Baru', '0976123456677', 'kornelius@gmail.com', '', 'kornelius', 'kornelius', 2),
(13, 'Marthin Tampubolon', '2018-12-29', 'L', 'Jalan Gerje Balige', '082356789876', 'marthin@gmail.com', '', 'marthin', 'marthin', 3),
(15, 'wq', '4444-12-03', 'L', 'ffre', '356753212345', 'adonang@gmail.com', 'wq.jpg', 'aku', 'aku', 3),
(16, 'wq', '4444-12-03', 'L', 'ffre', '356753212345', 'adonang@gmail.com', 'wq.jpg', 'aku', 'aku', 2),
(19, 'Antonius Silalahi', '2018-12-29', 'L', 'Jalan SM. Raja Tarutung', '081345678987', 'antonius@gmail.com', 'Antonius Silalahi.jpg', 'anto', 'anto', 3),
(20, 'syl', '2018-12-11', 'P', 'tarutung', '123', 'syl', '', 'syl', 'syl', 2),
(21, 'si anu', '4444-12-13', 'L', 'Jalan Gereja, kec. Balige', '081345678909', 'anu@gmail.com', 'si anu.jpg', 'anu', 'anu', 3),
(22, 'Marthinn', '1998-04-25', 'L', 'Medan', '081377062114', 'marthintampubolon92@gmail.com', 'image/profil/Marthinn.jpg', 'mar', '<br /><b>Notice</b>:  Undefined index: [password] ', 2),
(23, 'Marthin', '1998-04-25', 'L', 'Medan', '081377062114', 'marthintampubolon92@gmail.com', 'image/profil/Marthin.jpg', 'mar', 'mar', 2),
(24, 'Marthin', '1112-05-25', 'L', 'asdasd', '2123123', 'asdasd', 'image/profil/Marthin.jpg', 'mar11', 'mar11', 2),
(25, 'Marh', '2222-12-12', 'L', 'asdas', '12312', 'andreas@gmail.com', 'image/profil/asda.jpg', 'a', '<br /><b>Notice</b>:  Undefined index: [password] ', 2),
(26, 'Marthin36', '1222-03-12', 'L', 'asdas', '12313', 'as', 'image/profil/asda.jpg', 'a2', 'a3', 2),
(27, 'Marthin', '0222-12-12', 'L', 'sdas', '131', 'fisikafisika@gmail.com', 'image/profil/Marthin.jpg', 'ad', 'ad', 2),
(28, 'aldo', '0455-04-12', 'L', 'Jalan Sutomo Balige', '09998888888766', 'aldo@gmail.com', 'image/profil/aldo.jpg', 'aldo', 'aldo', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `lamaran_supir`
--
ALTER TABLE `lamaran_supir`
  ADD PRIMARY KEY (`id_lamaran`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  ADD PRIMARY KEY (`id_paket`),
  ADD UNIQUE KEY `idtransaksi_UNIQUE` (`id_paket`);

--
-- Indexes for table `pesan_mobil`
--
ALTER TABLE `pesan_mobil`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `fk_pesan_mobil_user2_idx` (`id_user`),
  ADD KEY `fk_pesan_mobil_mobil2_idx` (`id_mobil`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `status_persetujuan_supir`
--
ALTER TABLE `status_persetujuan_supir`
  ADD PRIMARY KEY (`id_status_persetujuan`);

--
-- Indexes for table `toba_wisata`
--
ALTER TABLE `toba_wisata`
  ADD PRIMARY KEY (`id_toba_wisata`),
  ADD KEY `fk_toba_wisata_user1_idx` (`id_user`);

--
-- Indexes for table `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id_tujuan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lamaran_supir`
--
ALTER TABLE `lamaran_supir`
  MODIFY `id_lamaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesan_mobil`
--
ALTER TABLE `pesan_mobil`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `toba_wisata`
--
ALTER TABLE `toba_wisata`
  MODIFY `id_toba_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id_tujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesan_mobil`
--
ALTER TABLE `pesan_mobil`
  ADD CONSTRAINT `fk_pesan_mobil_mobil2` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesan_mobil_user2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `toba_wisata`
--
ALTER TABLE `toba_wisata`
  ADD CONSTRAINT `fk_toba_wisata_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
