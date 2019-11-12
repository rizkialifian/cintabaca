-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 05:30 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinta_baca`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `nomor_handphone` bigint(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `limit_pinjam` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `username`, `password`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `nomor_handphone`, `email`, `tanggal_daftar`, `limit_pinjam`) VALUES
(1, 'Sandi', '12345678', 'Reni Kustina Sandi', 'Perempuan', 'Bandung', '1991-11-09', 'Jl. Purbasari No. 101', 85723464779, 'lintang.pranoto@gmail.com', '2019-11-10', 2),
(2, 'jatun', '12345679', 'Rifkiandi Darajatun', 'Laki-Laki', 'Jakarta', '1973-12-12', 'Komp Pertamina II No. 72', 8111880540, 'anggara.noverdy@gmail.com', '2019-11-10', 2),
(3, 'ammad', '12345680', 'Naufal Muhammad', 'Laki-Laki', 'Depok', '2004-06-04', 'Jl.Mando Dami Rt.04/Rw.07 No.41, Kec.Cilodong Kel.Kalimulya Depok,jawa barat', 8999352678, 'athreefa@yahoo.com', '2019-11-10', 3),
(4, 'ndrik', '12345681', 'Antonius Hendrik', 'Laki-Laki', 'Bandung', '1980-09-10', 'Jl. Tubagus Ismail Gg. Virgo No. 3', 8562185892, 'gue_vie@yahoo.com', '2019-11-10', 3),
(5, 'hyadi', '12345682', 'Nurcahyadi', 'Laki-Laki', 'Bogor', '1988-06-15', 'Jl.masjid alkhouf rt 04/13 no 56. Bojonggede kabupaten bogor', 85695343620, 'antoniushendrik@live.com', '2019-11-10', 3),
(6, 'riadi', '12345683', 'Sukriadi', 'Laki-Laki', 'Bekasi', '1977-02-20', 'Harapan Indah 2 Cluster Asera One South Blok 1S10 No.8 Bekasi', 811100112, 'Sukriadi@telkomsel.co.id', '2019-11-10', 3),
(7, 'athan', '12345684', 'Jennifer jonathan', 'Perempuan', 'Jakarta utara', '1984-04-14', 'Pluit timur blok h utara no 17', 818496020, 'since_1703@yahoo.com', '2019-11-10', 3),
(9, 'awati', '12345686', 'Rika Setiawati', 'Perempuan', 'Bandung', '1973-11-20', 'Jl Purabaya no 253/66 Pajajaran', 87821603010, 'paulus.manalu@yahoo.com', '2019-11-10', 3),
(10, 'adhan', '12345687', 'Abdurrahman Ramadhan', 'Laki-Laki', 'Bogor', '1998-02-01', 'Jalan Siliwangi no 43', 87889555982, 'fakih_kurniawan@yahoo.com', '2019-11-10', 3),
(11, 'iyono', '12345688', 'Edy Priyono', 'Laki-Laki', 'Semarang', '1981-11-05', 'Jl Bukit Beringin Timur IV E 193', 85711492525, 'edy.priyono@ymail.com', '2019-11-10', 3),
(12, 'chman', '12345689', 'Taufik Rochman', 'Laki-Laki', 'SERANG', '1995-02-02', 'SERANG', 81318322309, 'amaliamustikasari@gmail.com', '2019-11-10', 3),
(13, 'riani', '12345690', 'Fidya Dwi Putriani', 'Perempuan', 'JAKARTA SELATAN', '1993-07-30', 'JL. BENDA 1 NO.13 RT.001/004 PULO, KEBAYORAN BARU', 82114095600, 'shintya.wulandary@gmail.com', '2019-11-10', 3),
(14, 'slami', '12345691', 'Mutiara Ilma Islami', 'Perempuan', 'Jakarta', '1992-10-09', 'Pancoran Barat XI C RT 5 RW 3 No.37, Kost Gunari, Pancoran Barat, Jakarta Selatan', 85755458034, 'rizkyakbar.33@gmail.com', '2019-11-10', 3),
(15, 'dipta', '12345692', 'Rizky Prastya Udipta', 'Laki-Laki', 'Jakarta Selatan', '1991-05-01', 'Jalan Haji Sinen RT 04 RW 07 No 109 Ragunan, Pasar Minggu, Jakarta Selatan 12550', 81310935229, 'cakra_uver@yahoo.co.id', '2019-11-10', 3),
(16, 'ahman', '12345693', 'Iip Paturahman', 'Laki-Laki', 'Lebak', '1990-12-26', 'Kp. Ciawi Rt. 003 Rw. 006 Kel Cijoro Pasir', 81212766526, 'flxbiondy@gmail.com', '2019-11-10', 3),
(17, 'asdfasdf', '12345694', 'Wahyu Bambang Prabowo', 'Laki-Laki', 'Bekasi', '1989-05-25', 'asdfasdf', 81510033323, 'eithea.net@gmail.com', '2019-11-10', 3),
(18, 'ngkas', '12345695', 'Galih Jati Pamungkas', 'Laki-Laki', 'Jakarta Selatan', '1989-02-24', 'Jl. RS. Fatmawati Komplek PUSDATIN flat 1/B1', 818859422, 'laterbyletter@gmail.com', '2019-11-10', 3),
(19, 'resia', '12345696', 'Rosy Anresia', 'Perempuan', 'Bekasi', '1987-09-02', 'Jl. Penggalang Raya No. 35', 81586604892, 'sodiekimamp@gmail.com', '2019-11-10', 3),
(20, 'ibuan', '12345697', 'Rizky Hasibuan', 'Laki-Laki', 'Depok', '1986-11-03', 'Villa alam permai 9 no 12 harjamukti cimanggis depok', 87878992546, 'mok.firdaus@gmail.com', '2019-11-10', 3),
(21, 'dayat', '12345698', 'Asep Deni hidayat', 'Laki-Laki', 'Bandung', '1986-04-11', 'Kp. Palasari RT 1 RW 1 Bojongmangu pameungpeuk', 81321773741, 'Nuryadinirfan21@gmail.com', '2019-11-10', 3),
(22, 'Gusta', '12345699', 'Rahan Yama Gusta', 'Laki-Laki', 'Bogor', '1985-07-20', 'Bogor', 8128627250, 'achmadfurqonzhillani@gmail.com', '2019-11-10', 3),
(23, 'nanto', '12345700', 'R. Rizki Andhitya Yunanto', 'Laki-Laki', 'Bekasi', '1983-09-12', 'Jl. Kusuma Barat VI blok BB 4 no. 1 Wisma Jaya Bekasi', 8122833946, 'israatinroy@gmail.com', '2019-11-10', 3),
(24, 'yanny', '12345701', 'Widitya Putri Fitriyanny', 'Perempuan', 'Depok', '1982-07-03', 'Permata Depok Regency, cluster diamond 2 blok C9 no 9, kel Ratujaya, kec cipayung, Depok', 81370116470, 'yogaldiano@gmail.com', '2019-11-10', 3),
(25, 'ibuan', '12345702', 'Alfin Hasibuan', 'Laki-Laki', 'Jakarta Barat', '1981-11-06', 'Kp. Utan jati rt.04/011 no.09', 8111988452, 'moch.muldan@gmail.com', '2019-11-10', 3),
(26, 'manti', '12345703', 'Rama Bramanti', 'Laki-Laki', 'JAKARTA', '1980-07-17', 'JALAN HAJI SYAIP NO. 1', 8113036603, 'wardanaadi5@gmail.com', '2019-11-10', 3),
(27, 'graha', '12345704', 'Putra ananta nugraha', 'Laki-Laki', 'Jakarta pusat', '2008-06-10', 'Jl cempaka putih raya no 47', 811373543, 'harry.rachman.h@gmail.com', '2019-11-10', 3),
(28, 'ANDRA', '12345705', 'MAWAN ADI CANDRA', 'Laki-Laki', 'Kab Bekasi', '1979-03-08', 'PERUMAHAN TAMAN SENTOSA BLOK D16 NO12B, RT27 RW8,', 811154284, 'hadnanditio@gmail.com', '2019-11-10', 3),
(29, 'nalia', '12345706', 'Lala Krisnalia', 'Perempuan', 'Bogor', '1978-04-30', 'Bukit cimanggu villa gg 17', 81318446515, 'achmadfarid12@gmail.com', '2019-11-10', 3),
(30, 'ibadi', '12345707', 'Hardhosoewarno Johan Pribadi', 'Laki-Laki', 'Jakarta Barat', '1976-07-04', 'Jl.Lontar 7 No.11A Tanjungduren Utara', 82299885858, 'nugrohotriwahyu@gmail.com', '2019-11-10', 3),
(31, 'dro P', '12345708', 'Sri Narendro P', 'Laki-Laki', 'Bandung', '1975-05-16', 'Gardenia Loka Blok F10/7, Serpong Utara, Tangerang Selatan', 81287536628, 'tia.sulis125@gmail.com', '2019-11-10', 3),
(32, 'orong', '12345709', 'paulina torong', 'Perempuan', 'jakarta timur', '1974-12-13', 'jln.pondok kelapa raya gg.gurusinga no.37 pondok kelapa', 81318607022, 'hasmansyah.putra@gmail.com', '2019-11-10', 3),
(33, 'nyoto', '12345710', 'Anggreni Sunyoto', 'Perempuan', 'Bogor', '1974-02-09', 'Jl Empang Gg Wahir No. 48', 811111233, 'qmawsoler@gmail.com', '2019-11-10', 3),
(34, 'YAWAN', '12345711', 'PRASETYAWAN', 'Laki-Laki', 'BOGOR', '1991-03-01', 'CIMANGGU GG PASAMA NO 47', 81296698026, 'prasetyawan1000@gmail.com', '2019-11-10', 3),
(35, 'rpodo', '12345712', 'Joko Narpodo', 'Laki-Laki', 'Jakarta Timur', '1971-07-19', 'Komplek Pondok Bambu Townhouse Jl. Bahana 2, Blok B-5. Jakarta Timur, 13430', 81218602337, 'tyairsyad07@gmail.com', '2019-11-10', 3),
(36, 'iatna', '12345713', 'Yahya Sugiatna', 'Laki-Laki', 'Bogor', '1971-02-07', 'Komp. Budi Agung', 81906091900, 'gyogyanti@gmail.com', '2019-11-10', 3),
(37, 'ngsih', '12345714', 'Wiwi Kurnianingsih', 'Perempuan', 'bogor', '1970-02-22', 'Jl. Kemuning 1 no.11 Taman Yasmin Bogor', 85288882202, 'rachmanlazuardi.9a@gmail.com', '2019-11-10', 3),
(38, 'nggih', '12345715', 'Muharyo Singgih', 'Laki-Laki', 'Jkaarta Timur', '1969-03-19', 'Perumkar DKI Blok D5 No. 17 RY019/02, Kel. Pondok Kelapa, Kec. Duren Sawit', 811964809, 'erkiafrianto@gmail.com', '2019-11-10', 3),
(39, 'ardjo', '12345716', 'R. Donald Soetardjo', 'Laki-Laki', 'Makassar', '1967-10-04', 'ASPOL Tello Baru, Makassar', 818153313, 'fadlimartin86@gmail.com', '2019-11-10', 3),
(40, 'arman', '12345717', 'setiawarman', 'Laki-Laki', 'bogor', '1992-09-17', 'ciapus cikaret gg emad', 89607084452, 'warmaneman4884@gmail.com', '2019-11-10', 3),
(41, 'ludin', '12345718', 'Zamaludin', 'Laki-Laki', 'Bogor', '1998-07-07', 'Kp sawah hilir', 87874744305, 'zamaludinkabul21@gmail.com', '2019-11-10', 3),
(42, 'KENDI', '12345719', 'SEPTI SAKINA KENDI', 'Perempuan', 'Bogor', '1994-09-20', 'Jl. RIMBQ BARU. GG SWADAYA KP DAMPIT', 81316836056, 'Septisakinakendi@gmail.com', '2019-11-10', 3),
(43, 'UTOYO', '12345720', 'SLAMET SUTOYO', 'Laki-Laki', 'BOGOR', '1963-11-04', 'CIMANGGU GG PASAMA NO 47', 8131407634, 'Tahieroioi@gmail.com', '2019-11-10', 3),
(44, 'Ramli', '12345721', 'Herman Ramli', 'Laki-Laki', 'Jakarta Selatan', '1962-06-16', 'Apt Permata Hijau Twr II', 8128053888, 'ismaditriantoro@gmail.com', '2019-11-10', 3),
(45, 'jhang', '12345722', 'Stefanus tjhang', 'Laki-Laki', 'Jakarta', '1961-09-05', 'Jl seni budaya 2 no 45', 8128422626, 'sukirmanhengky74@gmail.com', '2019-11-10', 3),
(46, 'hyadi', '12345723', 'Nurcahyadi', 'Laki-Laki', 'Bogor', '1988-06-15', 'Jl.masjid alkhouf rt 04/13 no 56. Bojonggede kabupaten bogor', 85695343620, 'nurcahyadi950@gmail.com', '2019-11-10', 3),
(47, 'ianto', '12345724', 'Rendy Novianto', 'Laki-Laki', 'BOGOR', '1991-12-01', 'Jln Batutulis Gg mekarjaya 2', 8998501075, 'rendy.novianto2@gmail.com', '2019-11-10', 3),
(48, 'inata', '12345725', 'Rizki Hadiwinata', 'Laki-Laki', 'Bogor', '1990-02-08', 'Jl. Panaragan Kidul No. 44 RT. 03 RW. 05 Bogor Tengah', 85719464114, 'rizki.hadiwinata@gmail.com', '2019-11-10', 3),
(49, 'adana', '12345726', 'I Nyoman Arthadana', 'Laki-Laki', 'Bogor', '2019-04-02', 'Bukit Cimanggu City Blok Y5/5', 81317259090, 'nyomanarthadana@gmail.com', '2019-11-10', 3),
(50, 'rdika', '12345727', 'Nazhif mahardika', 'Laki-Laki', 'Jakarta', '2005-04-11', 'Jl. Kelapa sawit 2', 87866831177, 'denaz.nazhif45@gmail.com', '2019-11-10', 3),
(51, 'rnita', '12345728', 'Ristian Adi Ghurnita', 'Laki-Laki', 'Bogor', '1985-09-25', 'Cemplang Baru Blok E No 132, 004/010, Cilendek Barat, Bogor Barat', 8388250005, 'ghurnita.ristian@gmail.com', '2019-11-10', 3),
(52, 'IANTI', '12345729', 'EKA FITRIANTI', 'Perempuan', 'Bogor', '1986-06-09', 'Perumahan Graha Grande Blok D no 43 RT.006/007', 81297579971, 'ekafitrianti86@gmail.com', '2019-11-10', 3),
(53, 'lyani', '12345730', 'Mulyani', 'Laki-Laki', 'Bogor', '1989-01-25', 'Sukaraja kaum rt 03/05 kec sukaraja kab bogor', 8989493131, 'Mul.dede.89@gmail.com', '2019-11-10', 3),
(54, 'awati', '12345731', 'Irmawati', 'Perempuan', 'Bogor', '1978-02-12', 'Sukaraja rt 2/5 no.41', 81290115535, 'sgc.irma@gmail.com', '2019-11-10', 3),
(55, 'irpan', '12345732', 'Suhirpan', 'Laki-Laki', 'Bogor', '1988-03-04', 'Cilendek Timur RT 01/05 No.108 Kel.Cilendek Timur Kec. Bogor Barat', 85320000623, 'ringgoman11@gmail.com', '2019-11-10', 3),
(56, 'risma', '12345733', 'Arief Kharisma', 'Laki-Laki', 'Klaten', '1987-12-30', 'Klaten', 82130787820, 'arief.kharisma@gmail.com', '2019-11-10', 3),
(57, 'iawan', '12345734', 'bayu trisno arief setiawan', 'Laki-Laki', 'Bogor', '1982-04-25', 'Tirta Mas Residence Blok L No 7', 81310512444, 'bayutrisnoas@gmail.com', '2019-11-10', 3),
(58, 'Wari', '12345735', 'Ndaru Naris Wari', 'Perempuan', 'Kebumen', '1998-08-31', 'Bonjoklor RT 02 RW 02, Bonorowo', 82326389057, 'naris.wari3155@gmail.com', '2019-11-10', 3),
(59, 'AHAYU', '12345736', 'INDRI PERMATA SARI RAHAYU', 'Perempuan', 'JAKARTA', '1988-03-13', 'RAWAMANGUN MUKA SELATAN 3 RT002 RW13 NO 20 RAWAMANGUN PULOGADUNG', 85935214800, 'indrirahayu9@gmail.com', '2019-11-10', 3),
(61, 'rdhya', '12345738', 'Angga Ardhya', 'Laki-Laki', 'Lhokseumawe', '1995-01-08', 'Jl. Tembakau Komplek Bukit Bintang Dusun E', 82195333449, 'angga.agai169@gmail.com', '2019-11-10', 3),
(62, 'BRI A', '12345739', 'INDRA FEBRI A', 'Laki-Laki', 'Surakarta', '1995-02-05', 'Perum Cempaka Asri 4 Blulukan', 85702080704, 'indrafarya16@gmail.com', '2019-11-10', 3),
(63, 'ifari', '12345740', 'M.Yusuf Alghifari', 'Laki-Laki', 'Bogor Utara', '2004-04-18', 'Jl Pelita 1 No 29 Kedung Halang Bogor Utara', 89611335075, 'ghifarighifari18@gmail.com', '2019-11-10', 3),
(64, 'STUTI', '12345741', 'HANIDA WIDYASTUTI', 'Perempuan', 'Bandung', '1979-01-14', 'Jl.KH.AHMAD SYADILI PERUM D PILLAR BLOK 3B NO 17 DESA JELEGONG KEC.RANCAEKEK', 81213575135, 'hanidawidi@gmail.com', '2019-11-10', 3),
(65, 'agiyo', '12345742', 'Deo subagiyo', 'Laki-Laki', 'Bogor', '1988-12-28', 'Kota batu', 81776970704, 'deosubagiyo@gmail.com', '2019-11-10', 3),
(66, 'amrin', '12345743', 'Husni Thamrin', 'Laki-Laki', 'Jakarta Selatan', '1968-06-20', 'Jl.kirai RT.08 RW.02 Cipete Utara', 89629613578, 'husnialbertjunio@gmail.com', '2019-11-10', 3),
(67, 'Syani', '12345744', 'Faizal Anwar Syani', 'Laki-Laki', 'bogor', '1985-09-19', 'villa ciomas indah blok L2 no 6 Ciomas Bogor', 85691513647, 'faizalanwarsyani@rocketmail.com', '2019-11-10', 3),
(68, 'iyani', '12345745', 'Fera Dewiyani', 'Perempuan', 'Tangerang', '1978-09-22', 'Jl. Ciujung I No.19 Rt.009 Rw.002', 81387748182, 'dewiyani.fera@yahoo.co.id', '2019-11-10', 3),
(69, 'sudin', '12345746', 'Samsudin', 'Laki-Laki', 'Bogor', '1996-08-08', 'Kp. Neglasari no. 16 kel. Cibuluh kec. Bogor utara kota bogor', 87885578760, 'samsudin0808@gmail.com', '2019-11-10', 3),
(70, 'mbudi', '12345747', 'Mukti Argo Pambudi', 'Laki-Laki', 'Bogor', '1978-07-05', 'Bukit Cimanggu City S10 No 33', 8111104669, 'muktiargo@gmail.com', '2019-11-10', 3),
(71, 'ahesa', '12345748', 'Angga Mahesa', 'Laki-Laki', 'Bogor', '1994-08-19', 'Bogor Raya Permai FAX 4/6', 81283431604, 'mahesaangga23@gmail.com', '2019-11-10', 3),
(72, 'umpul', '12345749', 'Maria Theresia A kumpul', 'Perempuan', 'Jakarta timur', '1985-05-01', 'Jl taruna jaya', 81311675488, 'mizzis_05@yahoo.co.id', '2019-11-10', 3),
(73, 'ntoro', '12345750', 'Agus Dwi Priantoro', 'Laki-Laki', 'Jakarta', '1984-04-08', 'Jl. Condet No.7 Gedong, Pasar Rebo,Jakarta Timur', 81298587686, 'agusdp_kimiaui@yahoo.com', '2019-11-10', 3),
(74, 'YAWAN', '12345751', 'PRASETYAWAN', 'Laki-Laki', 'BOGOR', '1991-03-01', 'GG PASAMA NO 47 CIMANGGU', 81296698026, 'eskoglobalindonesia01@gmail.com', '2019-11-10', 3),
(75, 'bukke', '12345752', 'Monang Sidabukke', 'Laki-Laki', 'Bekasi', '1972-04-26', 'Griya Metropolitan 2 Blok D2 No.14', 8111618589, 'mdabukke@gmail.com', '2019-11-10', 3),
(76, 'ibowo', '12345753', 'Sigit Wibowo', 'Laki-Laki', 'Kab. Bogor', '1987-02-11', 'Jl. Roda Pembangunan', 8119211666, 'sgt.wibowo@gmail.com', '2019-11-10', 3),
(77, 'YUSUF', '12345754', 'MUHAMAD MAULANA YUSUF', 'Laki-Laki', 'Bogor', '2000-06-20', 'Kp. Legok RT.01/04 Desa Banjarwaru Kec. Ciawi', 83892001114, 'maulanamuhamad444@gmail.com', '2019-11-10', 3),
(78, 'ibawa', '12345755', 'Eddy Angkawibawa', 'Laki-Laki', 'Jakarta', '1963-09-30', 'Jl. Kampung-Bali 12 No. 3,', 85775345039, 'eangkawibawa@gmail.com', '2019-11-10', 3),
(79, 'atama', '12345756', 'Panji Muhammad Pratama', 'Laki-Laki', 'Sukabumi', '1990-10-09', 'Jl. Pasir Makmur 2 No.85 RT/RW.05/08 Perum Nanggeleng', 85722569692, 'panji.m.pratama@gmail.com', '2019-11-10', 3),
(80, 'fiana', '12345757', 'Kurnia Latifiana', 'Perempuan', 'Bantul', '1988-03-14', 'Perum GWI Jl Sawo 28 Banguntapan', 82133013998, 'k.latifiana@gmail.com', '2019-11-10', 3),
(81, 'Wahid', '12345758', 'Yani Mulki Wahid', 'Laki-Laki', 'Bogor', '1994-04-01', 'Jalan Raya Tajur, Komp UNITEX Jl. Mawar 3 No. 18', 87781712650, 'yanimulkiwahid@gmail.com', '2019-11-10', 3),
(82, 'l Nur', '12345759', 'Eka Yudha El Nur', 'Laki-Laki', 'Depok', '1979-05-18', 'Jl. Nangka Golden Leaf Residence no. 14-15', 81296886714, 'ekayudhaelnur@yahoo.com', '2019-11-10', 3),
(83, 'Murty', '12345760', 'Fitria Murty', 'Perempuan', 'BOGOR', '1985-07-07', 'KOMP. BOJONG DEPOK BARU 3 BLOK MD 3', 81804939132, 'fitriamurty@gmail.com', '2019-11-10', 3),
(84, 'imam', '12345761', 'Teguh imam', 'Laki-Laki', 'Jakarta', '1992-05-21', 'Jalan swadarma raya RT007/003', 81383902360, 'teguhimam10@gmail.com', '2019-11-10', 3),
(85, 'ukman', '12345762', 'Lukman', 'Laki-Laki', 'Majalengka', '1990-05-01', 'Blok Capgawe RT.004/003', 85353552290, 'lukmandoank77@gmail.com', '2019-11-10', 3),
(86, 'Bong', '12345763', 'Eric Erwin Bong', 'Laki-Laki', 'Bogor', '1979-12-19', 'Komplek Royal Tajur, Garden V/1, Jl. Raya Tajur', 8129622488, 'bonkhz@yahoo.com', '2019-11-10', 3),
(87, 'Disna', '12345764', 'Tri Agung Disna', 'Laki-Laki', 'Bogor', '1981-12-19', 'Jl. Abiyasa Raya No.56', 81332883888, 'goenk.2k@gmail.com', '2019-11-10', 3),
(88, 'bar K', '12345765', 'Abraham Akbar K', 'Laki-Laki', 'BOGOR', '1998-03-26', 'Griya katulampa A4 no.4', 85778117035, 'maharba98@gmail.com', '2019-11-10', 3),
(89, 'silah', '12345766', 'Evi rosilah', 'Perempuan', 'Bogor', '1975-10-08', 'Nirwana estate blok i no.16', 8119540045, 'evirosilah@yahoo.com', '2019-11-10', 3),
(91, 'Wasi', '12345768', 'Abdul Wasi', 'Laki-Laki', 'Bogor', '1995-12-28', 'Kp. Parung Aleng No.005 Rt 002/007, Cikeas, Sukaraja', 82242563332, 'wasiabdul28@gmail.com', '2019-11-10', 3),
(92, 'ahmat', '12345769', 'Welly rahmat', 'Laki-Laki', 'Bogor', '1984-04-27', 'Gunung putri', 87876994121, 'welly_rc@yahoo.co.id', '2019-11-10', 3),
(93, 'analu', '12345770', 'Friska Manalu', 'Perempuan', 'Jakarta Barat', '1991-05-23', 'Jalan kembangan utara no 53 RT 003 RW 01, kelurahan kembangan utara, jakarta barat', 89688934250, 'friskamanalu23@gmail.com', '2019-11-10', 3),
(94, 'epono', '12345771', 'Soegeng Soepono', 'Laki-Laki', 'Jakarta Timur', '1989-05-20', 'Jl. Suryopranoto No. 9 B-D Kel. Petojo Selatan Kec. Gambir', 85810126745, 'soegeng.soegeng2020@gmail.com', '2019-11-10', 3),
(95, 'satya', '12345772', 'Pangti satya', 'Laki-Laki', 'Jakarta', '1976-04-05', 'Komp polri blok o/41', 81519049076, 'pangti@yahoo.com', '2019-11-10', 3),
(96, 'ragih', '12345773', 'Yoserio Saragih', 'Laki-Laki', 'Bogor', '1985-09-04', 'Kedung Halang Rt 5 Rw 1 No 4', 8567513856, 'yoserio_saragih@yahoo.com', '2019-11-10', 3),
(97, 'rdana', '12345774', 'Bela Putra Perdana', 'Laki-Laki', 'Bogor', '1993-07-26', 'Jl. Banda no. 64 pondok aren ciluar Bogor', 87775855576, 'belaputraperdana@gmail.com', '2019-11-10', 3),
(98, 'fudin', '12345775', 'Ari Syarifudin', 'Laki-Laki', 'Bogor', '1977-10-08', 'Sindangsari Rt.03/07 Kel. Kebon Kalapa Kec. Bogor Tengah', 85710502289, 'asyasatria@gmail.com', '2019-11-10', 3),
(99, 'baeti', '12345776', 'Hablan Alifia Nurbaeti', 'Perempuan', 'Subang', '1997-09-04', 'dusun karang anyar barat desa sukamandijaya kecamatan ciasem kabupaten subang', 87726252453, 'h.blan49@gmail.com', '2019-11-10', 3),
(100, 'mhudi', '12345777', 'Hilvan Samhudi', 'Laki-Laki', 'Bekasi', '1976-03-22', 'Jl. Kemang Anyelir 1 Blok AA No. 7 Kemang Pratama 2', 8111866008, 'hilvansamhudi@gmail.com', '2019-11-10', 3),
(102, 'ahayu', '12345779', 'Aulia Artahayu', 'Perempuan', 'Depok', '1987-12-18', 'Kp. Sindang Karsa No. 31', 8176075336, 'bloobz_aiken@yahoo.com', '2019-11-10', 3),
(103, 'adana', '12345780', 'Moch Reza Kresna Pradana', 'Laki-Laki', 'Jakarta Selatan', '1984-08-11', 'Jl. Komplek DPR I/51A', 8561590123, 'reza.pradana84@gmail.com', '2019-11-10', 3),
(104, 'salim', '12345781', 'Ilam salim', 'Laki-Laki', 'Bandung barat', '1988-02-06', 'Perum pasir kemiri no 30A cigugur girang parompong bandung barat', 8996826999, 'dp.salim@gmail.com', '2019-11-10', 3),
(105, 'ullah', '12345782', 'Wira Hidayatullah', 'Laki-Laki', 'Jakarta Timur', '1997-06-05', 'Komplek kodam jaya cipayung rt 03/007', 81318227028, 'chiloxchodam5@gmail.com', '2019-11-10', 3),
(106, 'putra', '12345783', 'Dimas Dwi Saputra', 'Laki-Laki', 'jakarta selatan', '1988-08-31', 'Jl Pengadegan Timur', 81315228131, 'fitriahakd@ymail.com', '2019-11-10', 3),
(107, 'uardi', '12345784', 'Hendry Lazuardi', 'Laki-Laki', 'Depok', '1972-06-15', 'Mutiara Mekarsari 1', 8159992870, 'dhi_ka2@yahoo.com', '2019-11-10', 3),
(108, 'ARJAT', '12345785', 'AJAT SUDARJAT', 'Laki-Laki', 'bogor', '1987-05-10', 'jl flamboyan raya no.25', 81296661358, 'akane.asuhara@gmail.com', '2019-11-10', 3),
(109, 'san S', '12345786', 'Mochamad Insan S', 'Laki-Laki', 'Bandung', '1978-01-31', 'Jl. Pasanggrahan III no. 20', 81221113131, 'moch.insan31@gmail.com', '2019-11-10', 3),
(110, 'syach', '12345787', 'Raden Fauzan Juliansyach', 'Laki-Laki', 'BOGOR', '1999-07-21', 'Jl.Kebon anggrek Atas No 10 RT 01 RW 02 Kel.Kebon pedes Kec Tanah sareal', 85236901880, 'raden.fauzan96@gmail.com', '2019-11-10', 3),
(111, 'Fajar', '12345788', 'Budi Fajar', 'Laki-Laki', 'Bekasi', '1994-05-09', 'Jababeka II', 87779020181, 'budiueo@yahoo.com', '2019-11-10', 3),
(112, 'opian', '12345789', 'muhammad firman sopian', 'Laki-Laki', 'bogor', '1986-10-11', 'kp cimanglid rt 2/2 sirnagalih tamansari', 85691427052, 'firmanneverdie@gmail.com', '2019-11-10', 3),
(113, 'UTOYO', '12345790', 'SLAMET SUTOYO', 'Laki-Laki', 'BOGOR', '1963-11-04', 'CIMANGGU GG PASAMA NO 47', 8131407634, 'prasetyawan.pras@gmail.com', '2019-11-10', 3),
(114, 'iawan', '12345791', 'Wawan Setiawan', 'Laki-Laki', 'Tangerang selatan', '1979-04-24', 'Kuricang 19 BLok GD 5/11', 85721215215, 'wawantiawan79@gmail.com', '2019-11-10', 3),
(115, 'chman', '12345792', 'Syaiful Rachman', 'Laki-Laki', 'Bogor', '1999-06-26', 'Jl.pancasan baru RT 03/ RW 12 no.13 kel.pasir jaya kec.bogor barat kota Bogor 16119', 89634383032, 'syaifulrachman1933@gmail.com', '2019-11-10', 3),
(116, 'rdani', '12345793', 'Laksmi TDJW Wardani', 'Perempuan', 'Bandung', '1977-01-16', 'Jalan Sariendah Baru 1 no 10', 81806224174, 'laksmitdjww@gmail.com', '2019-11-10', 3),
(117, 'Ahmad', '12345794', 'Fakriza Ahmad', 'Laki-Laki', 'Jakarta Timur', '1995-12-25', 'JL.KEBON MANGGIS III RT/RW 011/002 KEBON MANGGIS, MATRAMAN', 89608572069, 'afakriza@gmail.com', '2019-11-10', 3),
(118, 'diani', '12345795', 'Ratu Ramadiani', 'Perempuan', 'Bogor', '1993-03-18', 'Cijahe Gang Sawargi No. 13 RT 02 RW 01 Kelurahan Curug Mekar', 8568842838, 'raturamadiani@gmail.com', '2019-11-10', 3),
(119, 'ahadi', '12345796', 'Reza Trinugrahadi', 'Laki-Laki', 'bogor', '1989-09-06', 'Komp. Laladon Indah', 8127000425, 'reza.trinugrahadi@gmail.com', '2019-11-10', 3),
(120, 'nsyah', '12345797', 'Dani Ruchdiansyah', 'Laki-Laki', 'Bogor', '1989-12-11', 'Perum Mulya Residence Blok B2 No.8 Kel. Padasuka Kec. Ciomas Kab. Bogor', 8569056360, 'daniruchdiansyah@gmail.com', '2019-11-10', 3),
(121, 'rdana', '12345798', 'Angki Perdana', 'Laki-Laki', 'Bekasi', '1976-06-13', 'Jl Cibodas 3 no. 2', 81294028675, 'angkiperdana@gmail.com', '2019-11-10', 3),
(122, 'asbiy', '12345799', 'Muhammad Hasbiy', 'Laki-Laki', 'Jambi', '1993-12-13', 'Jl. KH. M. Saleh Pasir Panjang', 85366662121, 'hasbiysyukurm@gmail.com', '2019-11-10', 3),
(123, 'atama', '12345800', 'Randi Pratama', 'Laki-Laki', 'Bogor', '1990-09-11', 'Jalan Panaragan Penggilingan, RT 02/06, No. 7, Kelurahan Panaragan,', 85697716079, 'randiprath@gmail.com', '2019-11-10', 3),
(124, 'manto', '12345801', 'Albert Amanto', 'Laki-Laki', 'Jakarta', '1990-04-19', 'Jl. Kalibata Timur I no 36', 8111988939, 'albert_amanto@rekayasa.co.id', '2019-11-10', 3),
(125, 'Halim', '12345802', 'Iwan Yulainto Halim', 'Laki-Laki', 'Jakarta Barat', '1976-07-25', 'Bukit Indah 18 No 16', 818972979, 'mail4iwan@yahoo.com', '2019-11-10', 3),
(126, 'arini', '12345803', 'dewi sekarini', 'Perempuan', 'bogor', '1979-12-30', 'jl cemara kipas II no. 8 taman yasmin bogor', 8119449263, 'rumahnahza@gmail.com', '2019-11-10', 3),
(127, 'chana', '12345804', 'anis richana', 'Perempuan', 'bogor', '1971-05-04', 'jl bukit tasmania no 8 tanah baru bogor', 8164848223, 'anisrie@gmail.com', '2019-11-10', 3),
(128, 'nsyah', '12345805', 'Yudha Nurdiansyah', 'Laki-Laki', 'Cianjur', '1991-05-12', 'Jl. Pangeran Hidayatullah Gg. Bhakti V Cianjur Kota', 8996793599, 'yudhanurdiansyah91@gmail.com', '2019-11-10', 3),
(129, 'Djari', '12345806', 'Stendie Vially Djari', 'Laki-Laki', 'Bogor', '1989-06-16', 'Perum bukit warnasari endah blok e no 1 rt 04/09', 81298333077, 'tendy.djari@yahoo.com', '2019-11-10', 3),
(130, 'Putra', '12345807', 'Aulia Ananda Putra', 'Laki-Laki', 'Kota Bogor', '1998-01-06', 'Jl. Ciwaringin Gg. sukarna No. 34, Kecamatan Bogor Tengah, Kota Bogor', 81316583049, 'auliaananda49@gmail.com', '2019-11-10', 3),
(131, 'ntino', '12345808', 'Willy Valentino', 'Laki-Laki', 'Bogor', '1991-02-12', 'Cluster Belalai Gajah Blok AA 11 No 7', 85711874580, 'wlyvalentino12@gmail.com', '2019-11-10', 3),
(132, 'yanto', '12345809', 'Dony Agus Krishadiyanto', 'Laki-Laki', 'Bogor', '1982-09-02', 'Puri Babakan Sakinah No.12 RT.04/09 Cimahpar Bogor Utara', 81219800079, 'doniekris168@gmail.com', '2019-11-10', 3),
(133, 'awati', '12345810', 'Ika rosmawati', 'Perempuan', 'Bogor', '1982-09-30', 'Bogor gading residence blok i no.6 sukahati', 8568449807, 'Ikarozma82@gmail.com', '2019-11-10', 3),
(134, 'yawan', '12345811', 'Heru Setyawan', 'Laki-Laki', 'Bekasi', '1980-11-07', 'Perumahan margahayu JL. Beringin 3 Blok A No. 112 RT/RW 008/014', 87882822482, 'heru.wiguna90@gmail.com', '2019-11-10', 3),
(135, 'WANUS', '12345812', 'MUHAMMAD IHWANUS', 'Laki-Laki', 'Jakarta Pusat', '1992-09-20', 'Jalan Sadar II No. 19-21', 85785045264, 'muhish.sholik@gmail.com', '2019-11-10', 3),
(136, 'unani', '12345813', 'Ahmad Agung Toha Yunani', 'Laki-Laki', 'Bogor', '1993-08-19', 'Sindangbarang aspol bogor kota barat', 81282611006, 'ahmadagungtohayunani@gmail.com', '2019-11-10', 3),
(137, 'Hakim', '12345814', 'Muhammad Hakim', 'Laki-Laki', 'BEKASI', '1993-06-27', 'Jl. Raya Kodau GG. Kujang III No. 54 RT. 002 RW. 023', 81282743272, 'muhammadhakim182@gmail.com', '2019-11-10', 3),
(138, 'usuma', '12345815', 'Rezky Anggakusuma', 'Laki-Laki', 'Bandung', '1985-01-18', 'Jalan Sukanegla Gang Maja 3 No. 167', 818982027, 'rezkyangga.jstni@gmail.com', '2019-11-10', 3),
(139, 'Ghani', '12345816', 'Muhammad Fakhri Ghani', 'Laki-Laki', 'Bogor', '1996-03-31', 'Tanah baru rt 04/04 no. 48 kec. Bogor utara kel. Tanah baru', 85714754748, 'fahrrighani@gmail.com', '2019-11-10', 3),
(140, 'Dewi', '12345817', 'Rosiana Dewi', 'Perempuan', 'DKI Jakarta', '1990-12-15', 'Jl Kalianyar X rt 5 rw 7 no 27. Kalianyar - Tambora', 81806506997, 'rosianads@yahoo.com', '2019-11-10', 3),
(141, 'FUDIN', '12345818', 'AKHMAD SAEFUDIN', 'Laki-Laki', 'BANJAR', '1980-08-15', 'LINGK. PARUNGLESANG RT 04 RW 09', 8170265299, 'liaiyul7@gmail.com', '2019-11-10', 3),
(142, 'riana', '12345819', 'Destia Ariana', 'Perempuan', 'Bogor', '1983-12-16', 'Jl. Abiyasa Raya No.56', 81283055050, 'ariana.destia@gmail.com', '2019-11-10', 3),
(143, 'skoro', '12345820', 'booby baskoro', 'Laki-Laki', 'depok', '1991-05-08', 'jl leci 2', 8111617743, 'barrabestoro@gmail.com', '2019-11-10', 3),
(144, 'IDDIN', '12345821', 'ALI ZAINAL ABIDDIN', 'Laki-Laki', 'BANDUNG', '1998-09-23', 'Jl. Lebak 1 no.194', 8122001427, 'abiz4inn@gmail.com', '2019-11-10', 3),
(145, 'akiya', '12345822', 'Arina Fitri Zakiya', 'Perempuan', 'Bogor', '1982-01-19', 'Kebun Raya Residence Blok V no. 28A, Mekarjaya, Ciomas, Bogor', 82113555182, 'avicenna22purnomo@gmail.com', '2019-11-10', 3),
(146, 'adhan', '12345823', 'M. Fiqri Ramadhan', 'Laki-Laki', 'Bogor', '1998-12-20', 'Jl. Pamikul Ujung Rt 05 Rw 17', 88211390291, 'moch.fiqriramdhan@gmail.com', '2019-11-10', 3),
(147, 'Aulia', '12345824', 'Syahril Aulia', 'Laki-Laki', 'Bogor', '2004-10-10', 'Jl ceremai ujung no 100 RT 02/10 kelurahan bantarjati kecamatan Bogor Utara kota bogor', 8381868893, 'syahrilaulia767@yahoo.co.id', '2019-11-10', 3),
(148, 'Intan', '12345825', 'Tomy Intan', 'Laki-Laki', 'Jakarta Utara', '1984-04-18', 'Apartment Green Bay B25AC Pluit', 81371700707, 'titan_yk@yahoo.com', '2019-11-10', 3),
(149, 'putra', '12345826', 'Setianto Ramaputra', 'Laki-Laki', 'Bandung Barat', '1989-05-04', 'Jalan Waruga Jaya no.154/3', 87722089355, 'ian0589@yahoo.com', '2019-11-10', 3),
(150, 'Putri', '12345827', 'Suli Mumpuni Kusumo Putri', 'Perempuan', 'Jakarta', '1976-11-19', 'Komp. Depsos jln. Tat Twam Asi No. 17 Ps. Rebo', 81510006231, 'sulikusumo@gmail.com', '2019-11-10', 3),
(151, 'idana', '12345828', 'Wahyu Widana', 'Laki-Laki', 'Jakarta', '1973-01-21', 'Jl. Srengseng Sawah RT011 RW03 Kel. Srengseng Sawah Kec. Jagakarsa Jakarta Selatan', 8128435422, 'wwidana@yahoo.com', '2019-11-10', 3),
(152, 'kinah', '12345829', 'Alfiyah sakinah', 'Perempuan', 'Jakarta pusat', '1996-10-08', 'Asrama polri kemayoran no 34 rt 002 rw 009, kel gunung sahari selatan, kec kemayoran', 82122554377, 'alfiyahsakinah@yahoo.co.id', '2019-11-10', 3),
(153, 'ria R', '12345830', 'Denny Satria R', 'Laki-Laki', 'Bandung', '2000-12-08', 'Jln setiabudhi km10 Rt03 rw 07 kel ledeng kec cidadap', 8814531986, 'dennyallard347@gmail.com', '2019-11-10', 3),
(154, 'zhari', '12345831', 'Rizki Azhari', 'Laki-Laki', 'Bogor', '1999-04-13', 'Cijujung Blodes RT03 Rw02, Desa Cijujung, kecamatan Sukaraja', 8982005611, 'rizkiazhari13@gmail.com', '2019-11-10', 3),
(155, 'iypmf', '12345832', 'Anggiypmf', 'Perempuan', 'Jakarta', '1992-06-17', 'Jakarta', 81383902361, 'anggiypmf@gmail.com', '2019-11-10', 3),
(156, 'putra', '12345833', 'Dimas Dwi Saputra', 'Laki-Laki', 'jakarta selatan', '1988-08-31', 'Jl Pengadegan Timur', 81315228131, 'dimasdwisaputra1731@gmail.com', '2019-11-10', 3),
(158, 'iawan', '12345835', 'Wawan Setiawan', 'Laki-Laki', 'Tangerang Selatan', '1979-04-24', 'Jl. Kuricang 19 Blok GD 5/11, Pondok Ranji, Ciputat Timur', 85721215215, 'dabit_kinantan@yahoo.co.id', '2019-11-10', 3),
(159, 'uanda', '12345836', 'Achmad Dimyati Juanda', 'Laki-Laki', 'Tangerang', '1994-08-13', 'Rajeg rajawali', 85890084219, 'ahmad.dimyati08@gmail.com', '2019-11-10', 3),
(160, 'Samat', '12345837', 'Samat', 'Laki-Laki', 'Bandung', '1974-05-02', 'Pt simnu jln raya dayeuh kolot no 179 kab bandung', 81321129174, 'samferry123@gmail.com', '2019-11-10', 3),
(161, 'udono', '12345838', 'Bramanto hudono', 'Laki-Laki', 'Bogor', '1982-05-25', 'Jl. Destarata 6 no. 1 bogor', 85781580889, 'realbamz@yahoo.com', '2019-11-10', 3),
(162, 'Majid', '12345839', 'Abdul Majid', 'Laki-Laki', 'Bogor', '1989-10-06', 'Kebun Raya Residence, Cluster Citra Park Extension No.27 Pasirkuda, Bogor Barat', 82220223576, 'infokemajid@gmail.com', '2019-11-10', 3),
(163, 'virza', '12345840', 'Laila Nouvirza', 'Perempuan', 'Jakarta Barat', '1969-11-28', 'Jl. Anggrek Cendrawasih IX K22 Slipi Jakarta Barat', 82124319193, 'lailanouvirza@gmail.com', '2019-11-10', 3),
(166, 'Rizky', '12345843', 'Rizky', 'Laki-Laki', 'Sukabumi', '1995-04-20', 'Gang haji Maksudi RT 003 RW 006', 8977569016, 'rizky5094@gmail.com', '2019-11-10', 3),
(167, 'inaga', '12345844', 'Hardianto Sinaga', 'Laki-Laki', 'Bogor', '1997-10-27', 'Kamp. Situpete RT.004/010 Sukadamai, Tanah Sareal', 82113359293, 'hardisinaga27@gmail.com', '2019-11-10', 3),
(168, 'awati', '12345845', 'Desi Prasetiawati', 'Perempuan', 'Tangerang', '1978-12-08', 'Bukit Serpong Mas blok BV no 106. serpong Tangerang kode pos 15325', 81212003399, 'delfihutajulu@yahoo.com', '2019-11-10', 3),
(169, 'rajat', '12345846', 'M. Maidin Sudrajat', 'Laki-Laki', 'Bogor', '1998-08-01', 'Gang madrasah jalan assogiri tanah baru', 89655439100, 'maidin0108@gmail.com', '2019-11-10', 3),
(171, 'IARTI', '12345848', 'TRI BUDIARTI', 'Perempuan', 'depok', '1963-02-05', 'jl leci 2', 82112039926, 'tribudiarti96@gmail.com', '2019-11-10', 3),
(172, 'ryadi', '12345849', 'Adi Suryadi', 'Laki-Laki', 'Jakarta Selatan', '1981-01-12', 'Jl Pendopo Raya Blok N No. 15', 8111320202, 'adisuryadi96@gmail.com', '2019-11-10', 3),
(173, 'iawan', '12345850', 'Riki kurniawan', 'Laki-Laki', 'Bogor', '1989-10-22', 'Kp pos rt 02 rw 05 desa leuweungkolot', 81286145698, 'rikkikoerniawan@gmail.com', '2019-11-10', 3),
(174, 'biana', '12345851', 'Dina rubiana', 'Perempuan', 'Bogor', '1978-12-27', 'Jl bukit intan golf no 8', 8111113622, 'farrel1707@yahoo.com', '2019-11-10', 3),
(175, 'smana', '12345852', 'Junita Lesmana', 'Perempuan', 'Bandung Barat', '1973-06-06', 'Jl Wangsakencana 7 Kota Baru Parahyangan', 81809206673, 'june66lesmana@gmail.com', '2019-11-10', 3),
(176, 'salim', '12345853', 'Eddy Agussalim', 'Laki-Laki', 'Bandung', '2019-08-21', 'Jl. Taman Kayu Manis no 2A', 8112222586, 'eddyagussalim@gmail.com', '2019-11-10', 3),
(177, 'asari', '12345854', 'Anggraini Adityasari', 'Perempuan', 'Bogor', '1976-11-10', 'Mutiara Sentul N-16 Cibinong', 8129522754, 'raniaditya16@gmail.com', '2019-11-10', 3),
(178, 'akoso', '12345855', 'Latif Jati Prakoso', 'Laki-Laki', 'Bogor', '1994-02-16', 'Kp cimanglid kab.bogor', 81286075524, 'latif.jp@gmail.com', '2019-11-10', 3),
(179, 'ludin', '12345856', 'Agus Jamaludin', 'Laki-Laki', 'Cianjur', '1980-08-08', 'Kp. Pasir Kadu RT 001/RW 003, Desa Langensari Kecamatan Karangtengah', 83817209008, 'a.jalu@yahoo.com', '2019-11-10', 3),
(180, 'ifari', '12345857', 'Mohamad Ersyad Ghifari', 'Laki-Laki', 'Bogor', '1997-06-24', 'Babakan Fakultas No. 26 RT 3 RW 4 Kel. Tegallega Kec. Bogor Tengah Kota Bogor', 8382681948, 'hablanalifia04@gmail.com', '2019-11-10', 3),
(181, 'iasta', '12345858', 'Wenny Hariasta', 'Perempuan', 'Bogor', '1985-04-16', 'Perum Baranangsiang indah jalan wijaya kusuma 2 block A5 no.26 katulampa bogor timur', 81236700054, 'wennyharyesta@gmail.com', '2019-11-10', 3),
(182, 'ang P', '12345859', 'Mugi Gilang P', 'Laki-Laki', 'Bogor', '1995-07-22', 'jl tubagus asik rt 003 003 Dramaga Bogor', 85711233268, 'mugi.gilang@yahoo.co.id', '2019-11-10', 3),
(183, 'Marga', '12345860', 'Yohanes Ade Marga', 'Laki-Laki', 'Temanggung', '1993-03-28', 'Alamat ktp : Banaran RT 2/ RW 1 Pringapus, Kec. Ngadirejo, Kab. Temanggung, Jawa Tengah', 8562940371, 'yohanesademarga@hotmail.com', '2019-11-10', 3),
(184, 'MANTO', '12345861', 'RUDI ISMANTO', 'Laki-Laki', 'BOGOR', '1985-06-25', 'Jl RAYA TAJUR', 8118248884, 'rudi.ismanto3913@gmail.com', '2019-11-10', 3),
(185, 'iudin', '12345862', 'Ravi Rapiudin', 'Laki-Laki', 'Pandeglang', '1993-07-03', 'Kp ciparahu RT 17 RW 009 desa sumber jaya kecamatan sumur, Pandeglang', 85771771340, 'ravialfahreza36@gmail.com', '2019-11-10', 3),
(186, 'amita', '12345863', 'Prajna Paramita', 'Perempuan', 'Bogor', '1982-08-20', 'Komp IPB 2 Sindang Barang', 81382772021, 'this.is.michan@gmail.com', '2019-11-10', 3),
(187, 'amadi', '12345864', 'Didit pramadi', 'Laki-Laki', 'bogor', '1977-05-06', 'taman sari persada blok b2 no.9 bogor', 8111254264, 'pramaditea@gmail.com', '2019-11-10', 3),
(190, 'mudra', '12345867', 'Amirul Huda Musyafa Samudra', 'Laki-Laki', 'Tangerang Selatan', '2002-10-01', 'Villa Mutiara Serpong F4/11', 8811059611, 'ahms1.ahms@gmail.com', '2019-11-10', 3),
(191, 'utama', '12345868', 'nindya tri utama', 'Laki-Laki', 'garut', '1992-07-20', 'perum tanjung indah k.1 no.8 rt.1 rw.8 des.tanjung kamuning kec.tarogong kaler kab.garut', 8128284294, 'dmnindya@gmail.com', '2019-11-10', 3),
(192, 'nsyah', '12345869', 'Budi Fadliansyah', 'Laki-Laki', 'Bogor', '1985-09-21', 'Malabar ujung no. 23', 89656936306, 'budifadliansyah@gmail.com', '2019-11-10', 3),
(193, 'ZI S.', '12345870', 'M. SAHROZI S.', 'Laki-Laki', 'Bogor', '1988-01-15', 'KP. POS MUARA RT 005/001 BOJONG GEDE', 85213333535, 'nismaraaulinaginting@gmail.ccom', '2019-11-10', 3),
(194, 'IBOWO', '12345871', 'ARI WIBOWO', 'Laki-Laki', 'depok', '1963-03-26', 'jl leci 2', 81219106126, 'ariwibowo0263@gmail.com', '2019-11-10', 3),
(195, 'aniel', '12345872', 'Thaufik Daniel', 'Laki-Laki', 'Bogor', '2000-04-09', 'Kp. Pangkalan Cibuluh Bogor Utara', 85319401009, 'danielthaufik@gmail.com', '2019-11-10', 3),
(196, 'Gani', '12345873', 'I Made Sapik Gani', 'Laki-Laki', 'Jakarta', '1982-08-06', 'Jl kartini V no 17 Jakarta pusat', 81703681982, 'sapikg7@gmail.com', '2019-11-10', 3),
(197, 'putra', '12345874', 'Idam Juni Saputra', 'Laki-Laki', 'Bogor', '1996-04-28', 'Jl perintis kemerdekaan GG mesjid III Panaragan bakbis RT 03/05, Kel.kebon kalapa, kec.bogor tengah kota Bogor', 87834901108, 'idamjunii@gmail.com', '2019-11-10', 3),
(198, 'dalah', '12345875', 'Hamdalah', 'Laki-Laki', 'Bogor', '1995-11-07', 'Jl. Amasandi Rt 02/09 Cikaret,  Bogor selatan,  kota bogor', 81311133688, 'hamdalahlubis95@gmail.com', '2019-11-10', 3),
(199, 'Putra', '12345876', 'Septian Dwi Putra', 'Laki-Laki', 'Bogor', '1989-09-30', 'Jalan karanggan no 33', 85697045571, 'tianinvincible@gmail.com', '2019-11-10', 3),
(200, 'diana', '12345877', 'Resdiana', 'Laki-Laki', 'Bogor', '1987-05-09', 'Batu tulis gang lurah Rt 06/04', 8568015096, 'resdianawilakartaa@gmail.com', '2019-11-10', 3),
(201, 'robi', '12345878', 'Fadli robi', 'Laki-Laki', 'Tangerang', '1990-02-21', 'Jl KH Hasyim Ashari', 81999210290, 'jurnaldliy@gmail.com', '2019-11-10', 3),
(202, 'sari', '12345879', 'Anggia noviarta sari', 'Perempuan', 'Bandung', '1981-11-07', 'Komp pandan wangi blok F 4', 85624133460, 'anggianoviartasari@gmail.com', '2019-11-10', 3),
(203, 'Duyeh', '12345880', 'Muhammad Duyeh', 'Laki-Laki', 'Bogor', '1995-12-15', 'Kp Ciderum Desa ciderum Kecamatan Caringain Kabupaten Bogor', 81295347037, 'duyehmuhammad@gmail.com', '2019-11-10', 3),
(204, 'ayati', '12345881', 'Caecilia Tri Damayati', 'Perempuan', 'Bandung', '1968-04-13', 'Jl Sultan Agung no. 4', 81809068270, 'ctridamayati@yahoo.co.id', '2019-11-10', 3),
(205, 'asati', '12345882', 'Intan putri larasati', 'Perempuan', 'Jakarta selatan', '1990-09-04', 'Pasar minggu', 85693557057, 'vanila_cheze@yahoo.co.id', '2019-11-10', 3),
(206, 'andra', '12345883', 'Aditya Sandra', 'Laki-Laki', 'Bogor', '1988-01-11', 'Jln bahagia no. 7', 81284763770, 'aditya.putera6@gmail.com', '2019-11-10', 3),
(207, 'atama', '12345884', 'Angga Pratama', 'Laki-Laki', 'Bogor', '1993-10-11', 'Kp Leuwikotok Rt 02 Rw 05 No 10 kel. Pasirlaja Kec. Sukaraja Kab. Bogor', 82112927403, 'anggatama16@gmail.com', '2019-11-10', 3),
(208, 'rafah', '12345885', 'Rafli Fauzan Arafah', 'Laki-Laki', 'Bogor', '1999-03-26', 'Gang dadali RT01/RW02 No.26 Kelurahan Gunung Batu, Kecamatan Bogor Barat, kota bogor', 82119266007, 'raflifauzan45@gmail.com', '2019-11-10', 3),
(209, 'hlepi', '12345886', 'Rozi fahlepi', 'Laki-Laki', 'Bogor', '1983-01-10', 'Kpp pratama ciawi jl dadali no 14 bogor', 81311010625, 'tukangkrupuk@gmail.com', '2019-11-10', 3),
(210, 'isman', '12345887', 'Kelly Kadarisman', 'Laki-Laki', 'Jakarta Timur', '1974-11-07', 'Jl. Bojong Indah RT.05 RW.06 gg. Swadaya II no 49', 85885835656, 'kellykadarisman@rocketmail.com', '2019-11-10', 3),
(211, 'y yoe', '12345888', 'Jerry yoe', 'Laki-Laki', 'Bogor', '1978-09-09', 'Vila bogor indah', 81514007066, 'yoestiadi@yahoo.com', '2019-11-10', 3),
(212, 'Wahab', '12345889', 'Aziz Wahab', 'Laki-Laki', 'Kab. Sukabumi', '2018-06-01', 'Kp. Ciutara Kel. nyangkowek kec cicurug', 817220143, 'dipanggil.daeng@gmail.com', '2019-11-10', 3),
(213, 'hyono', '12345890', 'Bun Cahyono', 'Laki-Laki', 'Bandung', '1967-09-20', 'Perumahan Bumisariwangi I B 2', 8989333077, 'buncahyo@gmail.com', '2019-11-10', 3),
(214, 'yawan', '12345891', 'Hafizh Kemal Hilmyawan', 'Laki-Laki', 'Jakarta', '1995-08-20', 'Jl. Pulomas 3F no. 5 kayu putih', 81807042009, 'kemal.hilmyawan@gmail.com', '2019-11-10', 3),
(215, 'ra GK', '12345892', 'Ade Chandra GK', 'Laki-Laki', 'Bogor', '1997-07-15', 'Jl. Raya Dramaga Tatra Dramaga (Belakang Gudang Bulog) Situ Leutik Bogor, Jawa Barat', 81999076247, 'ade.chandragitakusuma@gmail.com', '2019-11-10', 3),
(216, 'ADEWO', '12345893', 'TRI ONGKO BAYU SADEWO', 'Laki-Laki', 'Jakarta Pusat', '1994-02-08', 'Badan Kebijakan Fiskal, Jl. DR. Waidin Raya No. 1, Jakarta', 81298443349, 'bayusadewotriongko@gmail.com', '2019-11-10', 3),
(217, 'nsyah', '12345894', 'Tri Irvan Robiansyah', 'Laki-Laki', 'Ciamis', '1990-03-28', 'Jalan raya kawali cipaku dusin ciakarhilir rt 001 rw 001 desa ciakar kecamatan Cipaku Kabupaten Ciamis', 82116415454, 'triirvanrobiansyah@gmail.com', '2019-11-10', 3),
(218, 'asari', '12345895', 'Estrellita Lindiasari', 'Perempuan', 'Bogor', '1986-09-14', 'Jalan Sempur Kaler No 36', 87780055529, 'mita.moermanto@gmail.com', '2019-11-10', 3),
(219, 'ianti', '12345896', 'Destria Kurnianti', 'Perempuan', 'Jakarta Timur', '1987-12-04', 'Jl.i Gusti Ngurah Rai Kp. Jembatan rt017/012, No. 39', 87739871221, 'destria.kurnianti@gmail.com', '2019-11-10', 3),
(220, 'udito', '12345897', 'Kornelius Septyo Pramudito', 'Laki-Laki', 'Bogor', '1982-09-15', 'Komp.IPB Br. Siang IV Blok A/40', 81220246030, 'dnadito@gmail.com', '2019-11-10', 3),
(221, 'ciati', '12345898', 'Natalia Suciati', 'Perempuan', 'Bekasi', '1976-12-19', 'Jalan Kemang Anyelir I Blok AA No.7 Kemang Pratama 2', 8111039931, 'nataliasuciati19@gmail.com', '2019-11-10', 3),
(222, 'STORO', '12345899', 'BARRA AGUNGBESTORO', 'Laki-Laki', 'depok', '1996-03-21', 'jl leci 2', 81383500452, 'baskoro55@gmail.com', '2019-11-10', 3),
(223, 'iawan', '12345900', 'Iwan Setiawan', 'Laki-Laki', 'Jakarta Timur', '1977-02-27', 'Apt Bassura City tower Edelweiss unit E/21/AJ', 81317189668, 'setiawan27.iwan@gmail.com', '2019-11-10', 3),
(224, 'raksa', '12345901', 'Rangga Nayadiraksa', 'Laki-Laki', 'Bogor', '1994-04-15', 'Kp. Padasuka gg. Saleh rt/rw 003/005 kec. Ciomas kab. Bogor', 81324507722, 'rangganayadiraksa94@gmail.com', '2019-11-10', 3),
(225, 'iawan', '12345902', 'T Julio Aji setiawan', 'Laki-Laki', 'Jakarta Selatan', '1996-07-06', 'Jalan Praja Dalam F Gang Bakti No 12 RT 10 RW 2 Kebayoran Lama Selatan, Kebayoran Lama, Jakarta Selatan 12240', 89678838121, 'Thomasjulioas@gmail.com', '2019-11-10', 3),
(226, 'pandi', '12345903', 'Muhammad Ripandi', 'Laki-Laki', 'bogor', '1994-09-27', 'jl. alternatif cibubur-cileungsi kp.tengah rt.03/rw.03 no.61 kec.cileungsi kab.bogor', 82122348234, 'mr.rip.99@gmail.com', '2019-11-10', 3),
(227, 'uyono', '12345904', 'Suyono', 'Laki-Laki', 'Bandung', '1969-06-14', 'Cijawura Hilir', 82128188477, 'suyono.bandung@gmail.com', '2019-11-10', 3),
(228, 'graha', '12345905', 'Taufik Nugraha', 'Laki-Laki', 'Bogor', '1995-12-25', 'Jl. Artzimar II rt06/01 kawung luwuk tegal gundil kota bogor', 89601013249, 'opiktaufiknugraha@gmail.com', '2019-11-10', 3),
(229, 'Fauzi', '12345906', 'Ginanjar Imamil Fauzi', 'Laki-Laki', 'Bogor', '1989-08-21', 'Perumahan Ciomas River View Blok C No. 21', 85221135393, 'ginanjar.imamil@gmail.com', '2019-11-10', 3),
(230, 'ngkas', '12345907', 'Hangga Rokhib Pamungkas', 'Laki-Laki', 'Bogor', '1989-04-01', 'Kedung Halang Rt 5 Rw 1 No 4', 81260004080, 'hellskitchenz@yahoo.com', '2019-11-10', 3),
(231, 'yanti', '12345908', 'Maria Listya Deliyanti', 'Perempuan', 'Depok', '1968-05-03', 'Sukatani permai jl sawo 6 blok ee3 no.10', 8161851820, 'mldeliyanti@gmail.com', '2019-11-10', 3),
(232, 'tanoe', '12345909', 'Sondhiar Hitomartanoe', 'Laki-Laki', 'Bandung', '1977-03-27', 'Jalan Jend. Ahmad Yani no 795 (kalo toko tutup boleh titip ke sebelah no 793)', 816615696, 'sondhiar@yahoo.com', '2019-11-10', 3),
(233, 'Sukma', '12345910', 'Sukma', 'Perempuan', 'Purworejo', '1989-10-17', 'Bendo 1 rt 02 rw 02, kec. Grabag, kab. Purworejo', 85292731535, 'esdewanti@gmail.com', '2019-11-10', 3),
(234, 'iatie', '12345911', 'Linniatie', 'Perempuan', 'Bandung', '1979-07-16', 'Jl. Wangsareja 15 Bandung', 8156124611, 'linni.natawijaya@gmail.com', '2019-11-10', 3),
(235, 'Soleh', '12345912', 'Fadhlurahman Soleh', 'Laki-Laki', 'Serang', '1995-12-08', 'Puri Citra Blok C6 No 31 RT/RW 023/006 Desa Pipitan Kecamatan Walantaka Kota Serang', 85219691522, 'fadhlurahman18@gmail.com', '2019-11-10', 3),
(236, 'rofan', '12345913', 'Elizabeth Labirina Krofan', 'Perempuan', 'Bogor', '1976-09-24', 'Bukit cimanggu city blok v3 no 20', 81293834785, 'elizabethkrofan24@gmail.com', '2019-11-10', 3),
(237, 'liady', '12345914', 'Denny Muliady', 'Laki-Laki', 'Ogan komering Iir', '1992-11-01', 'Blok B Kali Deras', 8112331495, 'dennymuliady@gmail.com', '2019-11-10', 3),
(238, 'angga', '12345915', 'Arya Dewa Erlangga', 'Laki-Laki', 'Bekasi', '1981-10-31', 'Jl. Cemara 3 Blok F No. 143, Jatimulya', 811101518, 'arya.dewa.erlangga@gmail.com', '2019-11-10', 3),
(239, 'rdhya', '12345916', 'Angga Ardhya', 'Laki-Laki', 'Lhokseumawe', '1995-01-08', 'Jl. Tembakau Komplek Bukit Bintang Dusun E', 81295333449, 'agai.angga169@gmail.com', '2019-11-10', 3),
(240, 'Putra', '12345917', 'Hasmansyah Putra', 'Laki-Laki', 'Bekasi', '1971-01-26', 'Griya Metropolitan 2 Blok D2 No.14', 8119790578, 'haspoetra@gmail.com', '2019-11-10', 3),
(241, 'raini', '12345918', 'Wenny anggraini', 'Perempuan', 'Bogor', '1972-03-16', 'Jl bhayangkara 1 no.14', 8111141995, 'ayunapriani@yahoo.com', '2019-11-10', 3),
(242, 'ana B', '12345919', 'Risan Brahmana B', 'Laki-Laki', 'Bandung', '1982-06-08', 'Komp pandan wangi F 4', 8562339500, 'arias.mtr@gmail.com', '2019-11-10', 3),
(243, 'arhan', '12345920', 'Muhammad Alifa Farhan', 'Laki-Laki', 'Tangerang', '2019-09-03', 'Jl. Nusa Indah no 240 Komplek PDK', 85315050540, 'malifafarhan@gmail.com', '2019-11-10', 3),
(244, 'Alyas', '12345921', 'Rano Alyas', 'Laki-Laki', 'Bogor', '1993-07-15', 'Jl raya sukahati 116 Cibinon, Bogor, jawa barat', 81902921728, 'rano.waru@gmail.com', '2019-11-10', 3),
(245, 'usran', '12345922', 'Muhammad Yusran', 'Laki-Laki', 'Jakarta utara', '1988-03-06', 'Jl mawar luar no 15', 81219599911, 'yusranmg@gmail.com', '2019-11-10', 3),
(246, 'HANTI', '12345923', 'NADHIRA RAMADHANTI', 'Perempuan', 'JAKARTA PUSAT', '1997-01-24', 'JL. H. UNG', 89606208374, 'dhiranadhira24@gmail.com', '2019-11-10', 3),
(247, 'adana', '12345924', 'Gede Anditya Putra Pradana', 'Laki-Laki', 'Tangerang Selatan', '1988-05-03', 'Versailles Residence F6/20', 8175472234, 'gedeanditya@gmail.com', '2019-11-10', 3),
(248, 'ndini', '12345925', 'laisha andini', 'Perempuan', 'bogor', '1995-07-01', 'kp ks tubun asrama brimob sat 2 pelopor', 81317057009, 'laishaandini@gmail.com', '2019-11-10', 3),
(249, 'nsyah', '12345926', 'Asep Firmansyah', 'Laki-Laki', 'BOGOR', '1984-04-14', 'Semplak Gg. Taryono RT 004/007 Kel. Semplak Kec. Bogor Barat, Kota Bogor', 85716376600, 'asep.firmansyah1484@gmail.com', '2019-11-10', 3),
(250, 'rahap', '12345927', 'Ivren Miraharza Harahap', 'Laki-Laki', 'Jakarta Selatan', '1982-11-26', 'Kalibata City J21CF', 8126511142, 'ivrenharahap@yahoo.com', '2019-11-10', 3),
(251, 'nggih', '12345928', 'Muharyo Singgih', 'Laki-Laki', 'Jkaarta Timur', '1969-03-19', 'Perumkar DKI Blok D5 No. 17 RY019/02, Kel. Pondok Kelapa, Kec. Duren Sawit', 811964809, 'singgihm@yahoo.com', '2019-11-10', 3),
(252, 'Flora', '12345929', 'Fama Flora', 'Perempuan', 'Tangerang Selatan', '1970-12-07', 'Kencana Loka V3 No 22 BSD', 8121089401, 'fflorabsd@gmail.com', '2019-11-10', 3),
(254, 'bolon', '12345931', 'Christin Melati Tampubolon', 'Perempuan', 'Bogor', '1990-04-01', 'Telaga Kahuripan gugus candraloka blok dd8 no.12A', 8569885520, 'momaaas.cooking@gmail.com', '2019-11-10', 3),
(255, 'groho', '12345932', 'Tri Wahyu Nugroho', 'Laki-Laki', 'Bandung', '1989-05-02', 'Cipedes  DAlam 1 No.4', 81234502589, 'tw.noegroho@gmail.com', '2019-11-10', 3),
(256, 'Iche', '12345933', 'Moe Iche', 'Perempuan', 'Depok', '1972-10-25', 'Jln Akses UI no 27 kelapa dua cimanggis', 82182600614, 'alma_putri28@yahoo.com', '2019-11-10', 3),
(257, 'Mizan', '12345934', 'Mizan', 'Laki-Laki', 'Bogor', '1988-06-05', 'Lo Lebakwangi RT 2/ RW 2 Parung', 87870022296, 'mizanelzan88@gmail.com', '2019-11-10', 3),
(258, 'awani', '12345935', 'Dwi Laksmi Pribawani', 'Perempuan', 'Jakarta Pusat', '1980-10-09', 'Jl. Pramuka sari 3 no.18', 817611830, 'pribawani@gmail.com', '2019-11-10', 3),
(259, 'IYADI', '12345936', 'ARIEF KEN RIYADI', 'Laki-Laki', 'Bekasi', '1978-09-02', 'Jl. Duri Blok G11/01 Jatiwaringin Asri', 8990165960, 'akirey_ken@yahoo.com', '2019-11-10', 3),
(260, 'dipta', '12345937', 'Rizky Prastya Udipta', 'Laki-Laki', 'Jakarta Selatan', '1991-05-01', 'Jalan Haji Sinen RT 04 RW 07 No 109 Ragunan, Pasar Minggu, Jakarta Selatan 12550', 81310935229, 'rizkyudipta@gmail.com', '2019-11-10', 3),
(261, 'iyono', '12345938', 'Sutriyono', 'Laki-Laki', 'Jakarata timur', '1988-09-05', 'Jln pangkalan jati VI rt.6 rw.5 no.5', 82122775816, 'rio.p@yahoo.com', '2019-11-10', 3),
(262, 'nsyah', '12345939', 'Budiyansyah', 'Laki-Laki', 'bogor', '1996-11-25', 'jln.sindang barang pilar 1 kavling panorama (panorama 8) rt 03/rw 06', 82122013380, 'budiyansyah09@gmail.com', '2019-11-10', 3),
(263, 'Putri', '12345940', 'Maria Karina Putri', 'Perempuan', 'Jakarta Pusat', '2019-02-02', 'Kwitang IC', 85725587872, 'mariakarinaputridiwanti@gmail.com', '2019-11-10', 3),
(264, 'ianty', '12345941', 'Ispadya oktarianty', 'Perempuan', 'Palopo', '1987-10-04', 'Komplek bogor raya permai blok FE 1 no.16', 81280008873, 'ekohariyanto06@gmail.com', '2019-11-10', 3),
(265, 'rtanu', '12345942', 'Budiman Hartanu', 'Laki-Laki', 'Tangerang Selatan,', '1975-03-13', 'Fiore B9/9 Foresta BSD City', 81294751313, 'budiman.hartanu@mncgroup.com', '2019-11-10', 3),
(266, 'namas', '12345943', 'Andy Tanamas', 'Laki-Laki', 'Tangerang', '1973-06-02', 'Taman Parahyangan VI/23 Lippo Karawaci', 8121002639, 'andy.tanamas@gmail.com', '2019-11-10', 3),
(267, 'Firka', '12345944', 'Abdul Firka', 'Laki-Laki', 'Tangerang', '1987-07-28', 'Jl. Tanah Seratus RT.004/03, Ciledug', 81282112404, 'fircka.rm@gmail.com', '2019-11-10', 3),
(268, 'iansi', '12345945', 'Dwi Afrosiansi', 'Laki-Laki', 'Kota Bogor', '1965-10-01', 'Tm. Yasmin jl Cemara 4 no 24 Cilendek Bogor', 81310308196, 'd.afrosiansi@gmail.com', '2019-11-10', 3),
(269, 'ahman', '12345946', 'Muhamad Dany Dwi Mulyana Sahman', 'Laki-Laki', 'Bogor', '1991-10-08', 'Jl. Bantarkemang Raya No. 61', 81324121825, 'daniisahman@gmail.com', '2019-11-10', 3),
(270, 'ngkas', '12345947', 'Hangga Rokhib Pamungkas', 'Laki-Laki', 'Bogor', '1989-04-01', 'Kedung Halang Rt 5 Rw 1 No 4', 81260004080, 'pamungkasrokhib@gmail.com', '2019-11-10', 3),
(271, 'narta', '12345948', 'Hoo Leonarta', 'Laki-Laki', 'Jakarta', '1983-08-02', 'jln kamboja ujung dx 7', 8158010302, 'gunn3r555@yahoo.com.sg', '2019-11-10', 3),
(272, 'Lola', '12345949', 'Lola', 'Perempuan', 'bandung', '1982-04-11', 'jl. kembar mas utara I no 25', 81322217700, 'lolahermawan@gmail.com', '2019-11-10', 3),
(273, 'Basir', '12345950', 'Muhammad Basir', 'Laki-Laki', 'Depok', '1962-03-19', 'Sukatani permai jl sawo 6 blok ee3 no.10', 8161926106, 'deliyanti@citra.co.id', '2019-11-10', 3),
(274, 'nsyah', '12345951', 'Ardiansyah', 'Laki-Laki', 'Tangerang selatan', '2015-05-19', 'Jl deposito no.111/b-10', 811734249, 'arsyah14@gmail.com', '2019-11-10', 3),
(275, 'AWATI', '12345952', 'DEVITA NURISYA EGAWATI', 'Perempuan', 'DEPOK', '1995-09-14', 'PERUM. BUKIT SAWANGAN INDAH D31/14, RT 11/05, DUREN MEKAR, BOJONGSARI, DEPOK.', 85773231078, 'devrisya3424@gmail.com', '2019-11-10', 3),
(276, 'atria', '12345953', 'Viki Satria', 'Laki-Laki', 'Jakarta Pusat', '1994-08-07', 'Jl. Prapatan 1 No. 15 RT 02/RW 05 Kel. Senen, Kec. Senen', 8872237693, 'vikisatria94@gmail.com', '2019-11-10', 3),
(277, 'Rusli', '12345954', 'Verawaty Rusli', 'Perempuan', 'Bandung', '1978-10-09', 'Jl. Srigunting Timur No. 9', 81802069888, 'Verawaty.rusli.tan@gmail.com', '2019-11-10', 3),
(278, 'ammad', '12345955', 'Naufal Muhammad', 'Laki-Laki', 'Depok', '2004-06-04', 'Jl.Mando Dami Rt.04/Rw.07 No.41, Kec.Cilodong Kel.Kalimulya Depok,jawa barat', 8999352678, 'naufalm377@gmail.com', '2019-11-10', 3),
(279, 'yanto', '12345956', 'Reza Dwi Haryanto', 'Laki-Laki', 'Banyumas', '1995-11-07', 'Ds. nusamangir RT01 RW04 Kec. Kemranjen, Banyumas', 85742610077, 'rezadwiad@gmail.com', '2019-11-10', 3),
(280, 'nnisa', '12345957', 'Hani khoirunnisa', 'Perempuan', 'Bogor', '1989-07-03', 'Pabuaran Rt: 04/14 cibinong kab. Bogor', 82128589484, 'hanikhoirunnisa69@gmail.com', '2019-11-10', 3),
(281, 'Iwan', '12345958', 'Iwan', 'Laki-Laki', 'Jakarta', '1978-02-15', 'Jl. Pusdiklat Depnaker No. 9', 8567815278, 'iw4nlay@gmail.com', '2019-11-10', 3);
INSERT INTO `anggota` (`id_anggota`, `username`, `password`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `nomor_handphone`, `email`, `tanggal_daftar`, `limit_pinjam`) VALUES
(282, 'Dewi', '12345959', 'Raden Riyani Yasminia Dewi', 'Perempuan', 'Kota Bandung', '1980-05-14', 'Jalan Sukahaji Permai No. 14 RT 002 RW 007 Kel. Sukarasa Kec. Sukasari', 87822082459, 'ri.yasminia@gmail.com', '2019-11-10', 3),
(283, 'ianto', '12345960', 'Feris Yulianto', 'Laki-Laki', 'Tangerng Selatan', '1982-07-14', 'Perumahan Griya Rajawali Bintaro I Blok B2/40 RT 008/02 Sawah Baru Ciputat', 8156616768, 'feris_eka@yahoo.co.id', '2019-11-10', 3),
(284, 'OSCAR', '12345961', 'YOPIE OSCAR', 'Laki-Laki', 'TANGERANG SELATAN', '1982-02-15', 'JL. MAWAR II NO.16 KOMPLEK PONDOK JURANG MANGU INDAH', 81314282548, 'oscar.yopie@gmail.com', '2019-11-10', 3),
(285, 'holeh', '12345962', 'Achmad sholeh', 'Laki-Laki', 'Malang', '1972-07-10', 'Bandulan VIII no 103 kec sukun', 816551229, 'sholeh004@gmail.com', '2019-11-10', 3),
(286, 'iyo W', '12345963', 'Wahyu Aji Anindhiyo W', 'Laki-Laki', 'Bogor', '1978-06-06', 'Jl. Pinus Ponderosa No 86', 81315381681, 'wahyu.aji99@gmail.com', '2019-11-10', 3),
(287, 'ajulu', '12345964', 'Delfi F Hutajulu', 'Perempuan', 'BOGOR', '1989-12-09', 'Kp.Muarasari No. 18 Bogor', 85283828009, 'delfijulu@gmail.com', '2019-11-10', 3),
(288, 'MUKTI', '12345965', 'ERIA SYAHRI PRAMUKTI', 'Perempuan', 'Depok', '1987-05-02', 'GDC Sektor Melati Blok F5/14', 8128937987, 'eria_sp@yahoo.com', '2019-11-10', 3),
(289, 'marta', '12345966', 'Azimarta', 'Laki-Laki', 'Bogor', '1999-03-26', 'Kp. Sawah RT 003 RW 006, kelurahan tanah baru, Bogor Utara.', 83819653106, 'akhsep16@gmail.com', '2019-11-10', 3),
(290, 'mdoni', '12345967', 'Amdoni', 'Laki-Laki', 'Tangerang Selatan', '1966-12-26', 'Jl. Pisok 2 Blok EA 11 No. 26', 811847722, 'amdoninz@gmail.com', '2019-11-10', 3),
(291, 'diono', '12345968', 'David Tandiono', 'Laki-Laki', 'Bogor', '1979-08-16', 'Pondok Indah Tajur No. 5', 8128858870, 'bonkhz@gmail.com', '2019-11-10', 3),
(293, 'laeha', '12345970', 'Siti Zulaeha', 'Perempuan', 'Tangerang Selatan', '1983-06-04', 'Arcadia Residence blok D no.3 Kademangan Setu', 81314129004, 'sz.sitizulaeha@gmail.com', '2019-11-10', 3),
(294, 'Muhim', '12345971', 'Cholikul Muhim', 'Laki-Laki', 'Jakarta', '1989-11-25', 'Kelapa Gading', 85769566200, 'kholikul@gmail.com', '2019-11-10', 3),
(295, 'Murti', '12345972', 'Ari Murti', 'Laki-Laki', 'Tangerang Selatan', '1969-10-07', 'Kencana Loka V3 No 22 BSD', 87771262004, 'Fama_Flora@yahoo.com', '2019-11-10', 3),
(296, 'graha', '12345973', 'Aditya Anugraha', 'Laki-Laki', 'Bogor', '1985-06-05', 'Bogor Park Residence Blok R No 5', 818904608, 'adityaanugraha@gmail.com', '2019-11-10', 3),
(297, 'zhief', '12345974', 'Muhammad Fajar Nazhief', 'Laki-Laki', 'DKI Jakarta', '1992-04-08', 'Klender', 87781977470, 'fadlim4rtin@gmail.com', '2019-11-10', 3),
(298, 'Wenny', '12345975', 'Wenny', 'Perempuan', 'Jakarta', '1985-09-09', 'Menara mandiri', 818124844, 'wenny.maddy@gmail.com', '2019-11-10', 3),
(299, 'hyono', '12345976', 'Hendi cahyono', 'Laki-Laki', 'Kabupaten bogor', '1982-05-01', 'Perum pondok Karadenan asri 2blok.A no.4 kel.Karadenan kec. Cibinong kab.bogor', 82310044629, 'hendycahyono.9@gmail.com', '2019-11-10', 3),
(301, 'mawan', '12345978', 'Tri Agus Hermawan', 'Laki-Laki', 'Depok', '1977-03-08', 'Perumahan Taman Tanah Baru blok Bbo. 11', 8123030704, 'dianita.hermawan@yahoo.co.id', '2019-11-10', 3),
(302, 'NTOWI', '12345979', 'IMAM TANTOWI', 'Laki-Laki', 'Bogor', '1994-04-06', 'KP. PONDOK RT 003/009 BABAKAN CISEENG', 8632629783, 'nismaraaulinaginting@gmail.com', '2019-11-10', 3),
(303, 'njaya', '12345980', 'Fanibagasanjaya', 'Laki-Laki', 'BOGOR', '1998-11-08', 'Jl.H.HAMID RT 01 RW 03 Kel.Kedungwaringin Kec.TanahSareal', 89601728542, 'fanibagasanjaya@gmail.com', '2019-11-10', 3),
(304, 'YANTO', '12345981', 'DWI WURYANTO', 'Laki-Laki', 'Depok', '1985-02-21', 'GDC Sektor Melati Blok F5/14', 81383094848, 'eria.s.pramukti@gmail.com', '2019-11-10', 3),
(305, 'emany', '12345982', 'Anneke Bremany', 'Perempuan', 'Jakarta Selatan', '1978-08-24', 'jl Kayu putih no.6', 8118886858, 'annekesayang@yahoo.com', '2019-11-10', 3),
(306, 'khman', '12345983', 'M arief rakhman', 'Laki-Laki', 'Bogor', '2001-05-24', 'Jl. Bhayangkara 1 no.14', 8111172108, 'ayunapriani@gmail.com', '2019-11-10', 3),
(307, 'witya', '12345984', 'Aji adwitya', 'Laki-Laki', 'Bogor', '1998-04-21', 'Jl.raya ciapus gg. Kh mansyur', 8985143015, 'ajiadwitya376@gmail.com', '2019-11-10', 3),
(308, 'putra', '12345985', 'Hari fajar putra', 'Laki-Laki', 'Bogor', '1983-07-10', 'Sukamanah 1 no. 24', 8111924331, 'hari.fajar14@gmail.com', '2019-11-10', 3),
(309, 'ongko', '12345986', 'Fajar Sasongko', 'Laki-Laki', 'Tangerang Selatan', '1972-06-18', 'Jl. Bintaro Melati VB Bukit II TR-14', 8111880010, 'fsasongko@gmail.com', '2019-11-10', 3),
(310, 'darum', '12345987', 'Riobagianto Gandarum', 'Laki-Laki', 'Jakarta', '1954-02-14', 'Jl tanjung 4, blok J/7, Rancho Indah, Tanjung Barat', 81314081383, 'gandarumr@gmail.com', '2019-11-10', 3),
(311, 'Lioe', '12345988', 'Prayogo Hartarto Lioe', 'Laki-Laki', 'JAKARTA', '1990-09-19', 'MUARA KARANG BLOK M9 UTARA NO 95', 81381925569, 'prayogolioe@gmail.com', '2019-11-10', 3),
(312, 'atama', '12345989', 'Aria windu pratama', 'Laki-Laki', 'Bogor', '1992-12-24', 'Taman kenari blok b2/23', 81298899147, 'dnadito@yahoo.com', '2019-11-10', 3),
(313, 'yanka', '12345990', 'Pingky Chandra Priyanka', 'Perempuan', 'Bandung', '1991-07-09', 'Jl gumuruh no 45/113', 82130589007, 'pingkypriyanka97@gmail.com', '2019-11-10', 3),
(314, 'nsyah', '12345991', 'Jaka Radiansyah', 'Laki-Laki', 'Bekasi', '1981-05-14', 'Taman Jatimakmur Indah Blok G No.5 , Jatimakmur, Pondok Gede, Kota Bekasi 17413', 8119869320, 'jkradiansyah@yahoo.com', '2019-11-10', 3),
(315, 'na WS', '12345992', 'Tonny Pryatna WS', 'Laki-Laki', 'Bogor', '1955-09-26', 'Jln. Palayu Raya 30, Bantarjati, Bogor 16152', 87770088883, 'tama_verrel@yahoo.com', '2019-11-10', 3),
(316, 'yanti', '12345993', 'Susi Dwiyanti', 'Perempuan', 'Bandung', '1974-02-05', 'Jl. Cijawura Hilir no. 55 RT05/08', 87823236065, 'ibutio@gmail.com', '2019-11-10', 3),
(317, 'ugrah', '12345994', 'Sofyan Anugrah', 'Laki-Laki', 'Cianjur', '2019-09-22', 'Kp. Balakang kidul rt/rw 001/002, dsa. Sindanglaya, kec cipanas', 82214451231, 'yananugrah22@gmail.com', '2019-11-10', 3),
(318, 'ammad', '12345995', 'Naufal Muhammad', 'Laki-Laki', 'Depok', '2004-06-04', 'Jl.Mando Dami Rt.04/Rw.07 No.41, Kec.Cilodong Kel.Kalimulya', 8999352678, 'naufalmd20@gmail.com', '2019-11-10', 3),
(319, 'riana', '12345996', 'Alia Febriana', 'Perempuan', 'Jakarta Pusat', '1977-02-18', 'Jl. Mesjid III no. 21', 811983277, 'apolonia@gmail.com', '2019-11-10', 3),
(320, 'arani', '12345997', 'Dhaifina Asmarani', 'Perempuan', 'Purbalingga', '1988-08-16', 'Purbalingga Kulon', 81328033588, 'dhaifina.asmarani@gmail.com', '2019-11-10', 3),
(321, 'Rusli', '12345998', 'Dadi Rusli', 'Laki-Laki', 'Bogor', '1987-07-05', 'Kp.lumbung', 89676981587, 'dadirusli78@gmail.com', '2019-11-10', 3),
(322, 'asari', '12345999', 'Alina Ratih Widyasari', 'Perempuan', 'Bogor', '1978-09-13', 'Jl. Lokatmala no.4 Vila Duta', 87711030319, 'alinaratih@yahoo.co.id', '2019-11-10', 3),
(323, 'endro', '12346000', 'Darmawan Suhendro', 'Laki-Laki', 'Bogor', '1977-07-29', 'Jl. Raya Tajur No. 57 RT 05/02 kel. Sindang rasa bogor timur', 8111905056, 'darmawansuhendro92@gmail.com', '2019-11-10', 3),
(324, 'stari', '12346001', 'safendrri komara ragamustari', 'Laki-Laki', 'Bogor', '1980-12-28', 'jl. Binamarga no, 18 Komp. LIPI', 81219635481, 'e.chrysanti@gmail.com', '2019-11-10', 3),
(325, 'rizqa', '12346002', 'Twinna Derizqa', 'Perempuan', 'Bogor', '1990-12-27', 'perumahan puri karadenan blok b1 no1 rt 01 rw 017', 82122142619, 'twinnaderizqa@gmail.com', '2019-11-10', 3),
(326, 'ardjo', '12346003', 'Wibowo Rahardjo', 'Laki-Laki', 'Bogor', '1971-01-12', 'Bukit Cimanggu City Greenland cluster River Park View blok AA7 no. 1', 82127679090, 'wibowo_rh@yahoo.com', '2019-11-10', 3),
(327, 'iyana', '12346004', 'Leni Widiyana', 'Perempuan', 'Jakarta Barat', '1987-10-05', 'Jelambar Selatan VIII No. 27', 85695010668, 'widiyanaleni@gmail.com', '2019-11-10', 3),
(328, 'tanon', '12346005', 'Syali Gestanon', 'Laki-Laki', 'Bogor', '1979-09-10', 'Bogor', 81802202200, 'f4dlimartin@gmail.com', '2019-11-10', 3),
(329, 'ozali', '12346006', 'Sonni Rozali', 'Laki-Laki', 'Bandung', '1965-07-07', 'Jl. Cijawura Hilir no. 55 RT05/08', 8128136925, 'tampubolonctine@gmail.com', '2019-11-10', 3),
(330, 'stomo', '12346007', 'Wasistomo', 'Laki-Laki', 'Jakarta', '1972-09-24', 'Jl. S. Parman M-1', 8112505615, 'wasis.tomo@gmail.com', '2019-11-10', 3),
(331, 'ogari', '12346008', 'Lamsihar Panogari', 'Laki-Laki', 'Depok', '1975-06-11', 'Kp. Sidamukti 002/001 Sukamaju', 83846111175, 'axlamsihar11@gmail.com', '2019-11-10', 3),
(332, 'SPITA', '12346009', 'TOUFAN GALIH PUSPITA', 'Laki-Laki', 'JAKARTA PUSAT', '1983-07-11', 'ASRAMA POLSEK TANAH ABANG RT 003 RW 007 LT 5 NO 9 KEL BENDUNGAN HILIR KEC TANAH ABANG JAKARTA PUSAT', 8179001771, 'Ldt_23@yahoo.co.id', '2019-11-10', 3),
(333, 'nsyah', '12346010', 'Dede Budimansyah', 'Laki-Laki', 'Bogor', '1995-07-12', 'Jl villa randu 3, cimanggu permai', 85211926629, 'debudimansyah12@gmail.com', '2019-11-10', 3),
(334, 'yanto', '12346011', 'Dani Ariyanto', 'Laki-Laki', 'Jakarta', '1971-08-23', 'Mursid residence no 9D', 8111220488, 'dna986726@icloud.com', '2019-11-10', 3),
(335, 'nnida', '12346012', 'Lela nurlaela tunnida', 'Perempuan', 'Kab.bogor', '1984-06-06', 'Perum pondok karadenan asri 2 blok.A no.4 rt.08/07 kel.karadenan kec. Cibinong kab.bogor', 81286978958, 'etunnida@gmail.com', '2019-11-10', 3),
(336, 'MDANI', '12346013', 'DENI RAMDANI', 'Laki-Laki', 'Tangerang', '1981-07-28', 'Jl.Batar Bayu Blok B4 No.8,perumahan Benua Indah kel.Pabuaran tumpeng Tangerang', 81286307728, 'ramdanideni2707@gmail.com', '2019-11-10', 3),
(337, 'putro', '12346014', 'Dimas Aji Saputro', 'Laki-Laki', 'DKI Jakarta', '1986-08-23', 'Cakung', 81221238919, 'dwidharmalestari@gmail.com', '2019-11-10', 3),
(338, 'diedi', '12346015', 'Titi Suryandari Budiedi', 'Perempuan', 'Jakarta', '1974-06-30', 'Casamora Jagakarsa Blok B no 6', 811296811, 'titisuryandari@gmail.com', '2019-11-10', 3),
(339, 'haeri', '12346016', 'Irpan juhaeri', 'Laki-Laki', 'Bogor', '1994-01-04', 'Bukit cimanggu city pos 7', 83811383867, 'revanabieputra94@gmail.com', '2019-11-10', 3),
(340, 'mawan', '12346017', 'Wawan Darmawan', 'Laki-Laki', 'Depok', '1971-09-20', 'Perumahan Mutiara', 87878444379, 'wdargasasmita@gmail.com', '2019-11-10', 3),
(341, 'hlefi', '12346018', 'Reza Pahlefi', 'Laki-Laki', 'Kabupaten Tangerang', '1994-01-03', 'Kp. Rancagong Rt. 001 Rw. 002 Kel. Rancagong Kec. Legok', 81383529283, 'ezarezapahlefi@gmail.com', '2019-11-10', 3),
(342, 'Regan', '12346019', 'Regan', 'Laki-Laki', 'Jakarta', '1982-01-19', 'Jalan gunung sahari IX no 30J', 8176759888, 'eonelay@yahoo.com', '2019-11-10', 3),
(343, 'utoni', '12346020', 'Anne shintya suwarsa futoni', 'Perempuan', 'Bogor', '1995-03-21', 'Tm cibalagung rt 1/5 kel pasir kaya kec bogor barat', 8568208731, 'anneshintya13@gmail.com', '2019-11-10', 3),
(344, 'putra', '12346021', 'Rifaldi Adi Saputra', 'Laki-Laki', 'Bekasi', '1994-02-17', 'Kp. Kandang RT. 007 RW. 004 Kel. Sukasari Kec. Serang Baru Kab. Bekasi', 81296704522, 'rifaldi.adi.saputra17@gmail.com', '2019-11-10', 3),
(356, 'MA W.', '12346033', 'R. HERTITO KUSUMA W.', 'Laki-Laki', 'Bogor', '1980-08-25', 'Jalan Kebon Anggrek Lebak No. 22A RT 002/002 Kebon Pedes, Tanah Sareal, Bogor', 81385464477, 'hertito_kw@yahoo.co.id', '2019-11-10', 3),
(357, 'mawan', '12346034', 'Dedi Ismawan', 'Laki-Laki', 'Bandung', '1986-07-08', 'Jln.Pasir Kaliki Gg.H.Moch.Tabri No.44A/65, RT/RW 03/011, Kel.Sukabungah ,Sukajadi', 82282809938, 'dediismawan5@gmail.com', '2019-11-10', 3),
(358, 'h zas', '12346035', 'risnaniyyah zas', 'Perempuan', 'bogor', '1986-01-01', 'jl destarata VI no 40 rt 02/16 kelurahan tegal gundil', 87870687726, 'risnaniyyahzas@yahoo.co.id', '2019-11-10', 3),
(359, 'rnomo', '12346036', 'Edi Purnomo', 'Laki-Laki', 'Bekasi', '1992-05-28', 'Kp. Pasir limus, Ds. Wangunharja RT:006/RW:003, Kec. Cikarang Utara, Kab. Bekasi', 89630020348, 'danzeldy@gmail.com', '2019-11-10', 3),
(360, 'garia', '12346037', 'Sonny Joey Saptaputra Nagaria', 'Laki-Laki', 'Depok', '1973-02-05', 'Gema Pesona Z8', 81283603415, 'sonnynagaria@gmail.com', '2019-11-10', 3),
(361, 'atman', '12346038', 'Encep Supratman', 'Laki-Laki', 'Bogor', '1987-07-17', 'Jl dekeng kp gandasari RT 02/ Rw 01 no. 22', 87893878492, 'veslee17@gmail.com', '2019-11-10', 3),
(362, 'irman', '12346039', 'Muhammad Sukirman', 'Laki-Laki', 'Bogor', '1979-12-29', 'Jl Rulita No.20 Harjasari Bogor Selatan', 81316353781, 'muhammadsukirman@yahoo.com', '2019-11-10', 3),
(363, 'ardjo', '12346040', 'R. Donald Soetardjo', 'Laki-Laki', 'Makassar', '1967-10-04', 'ASPOL Tello Baru, Makassar', 818153313, 'donaldsoet@gmail.com', '2019-11-10', 3),
(364, 'elani', '12346041', 'Jaelani', 'Laki-Laki', 'Bogor', '1990-11-14', 'Ciawi Bogor', 85691509200, 'aquilani212@gmail.com', '2019-11-10', 3),
(365, 'ngsih', '12346042', 'Widyanti Wulaningsih', 'Perempuan', 'Jakarta Utara', '1975-06-25', 'Kompleks Cakrawala II Blok C No. 7', 818749753, 'widyanti.wulaningsih25@gmail.com', '2019-11-10', 3),
(366, 'yanti', '12346043', 'Suryanti', 'Perempuan', 'Bogor', '1973-12-01', 'Jl Mawar III non6', 8128185180, 'ita@kotabaruparahyangan.com', '2019-11-10', 3),
(367, 'omson', '12346044', 'Lord Thomson', 'Laki-Laki', 'Depok', '1976-07-22', 'Sidamukti 002/001', 81294421332, 'dnasiv123@gmail.com', '2019-11-10', 3),
(368, 'bunan', '12346045', 'Fergie Goklas Michael Tambunan', 'Laki-Laki', 'Depok', '2008-10-13', 'Kp.Sidamukti 002/001 Sukamaju', 83819660066, 'sihartambunan11@gmail.com', '2019-11-10', 3),
(369, 'UNTUR', '12346046', 'GUNTUR', 'Laki-Laki', 'Balikpapan', '1984-08-30', 'JL. D.I Panjaitan No.3 Rt.25', 8125377262, 'adebeto0309@gmail.com', '2019-11-10', 3),
(370, 'risca', '12346047', 'Bintang Frisca', 'Perempuan', 'Depok', '1989-02-27', 'Kp. Sidamukti 002/001', 81311113689, 'bintangfrisca@gmail.com', '2019-11-10', 3),
(371, 'ahaan', '12346048', 'Evy Yulianty Siahaan', 'Perempuan', 'Depok', '1979-03-11', 'Kp. Sidamukti 002/001 Sukamaju', 83808849091, 'evysiahaan11@gmail.com', '2019-11-10', 3),
(372, 'manto', '12346049', 'Albert Amanto', 'Laki-Laki', 'Jakarta', '1990-04-19', 'Jl. Kalibata Timur I no 36', 8111988939, 'albert.amanto@yahoo.com', '2019-11-10', 3),
(373, 'yanda', '12346050', 'Valencia Cayanda', 'Perempuan', 'Bogor', '1979-05-23', 'Jl Rulita No.20 Harjasari Bogor Selatan', 81316353782, 'al_ayyubi@gmail.com', '2019-11-10', 3),
(374, 'yanda', '12346051', 'Valencia Cayanda', 'Perempuan', 'Bogor', '1979-05-23', 'Jl Rulita No.20 Harjasari Bogor Selatan', 81316353782, 'muhammadsukirman291279@gmail.com', '2019-11-10', 3),
(375, 'Naja', '12346052', 'Halwa Latief Naja', 'Laki-Laki', 'Pacitan', '1995-12-12', 'Gesingan, RT 01/08, Tulakan, Pacitan', 8562502512, 'halwalatief@gmail.com', '2019-11-10', 3),
(376, 'diana', '12346053', 'Andi herdiana', 'Laki-Laki', 'Jakarta', '1971-12-20', 'Komplek Kodam Jaya II Cililitan', 8121090601, 'andi_herdiana@yahoo.com', '2019-11-10', 3),
(377, 'nsyah', '12346054', 'Indra Akbar Adhiansyah', 'Laki-Laki', 'Jakarta Selatan', '1974-12-16', 'Jalan Tebet Timur 1 D no.9', 811850610, 'indranoor@gmail.com', '2019-11-10', 3),
(378, 'Amin', '12346055', 'Achmad Amin', 'Laki-Laki', 'Jakarta Timur', '1976-12-15', 'Jl. Tutul VI Blok M No.441, Pondok Bambu, Duren Sawit', 81280171717, 'achmad.amin.djp@gmail.com', '2019-11-10', 3),
(379, 'yanti', '12346056', 'Alifah Syara Damayanti', 'Perempuan', 'Jakarta Selatan', '2019-04-30', 'Jalan Tebet Timur 1D no.9', 81806161981, 'indranoor1974@yahoo.com', '2019-11-10', 3),
(380, 'drian', '12346057', 'Ilyas Andrian', 'Laki-Laki', 'Bekasi', '1986-09-21', 'Jl Bahagia VI Rt 004/016', 82112426874, 'ilyasandrian11@gmail.com', '2019-11-10', 3),
(381, 'asser', '12346058', 'Yasser', 'Laki-Laki', 'BOGOR', '1984-01-30', 'CIJAHE RAYA NO. 5 BOGOR BARAT', 81286100025, 'yasserarafat4x4@gmail.com', '2019-11-10', 3),
(382, 'Gusta', '12346059', 'Rahan Yama Gusta', 'Laki-Laki', 'Bogor', '1985-02-07', 'Bogor', 8128627250, 'fajar.nazhief@gmail.com', '2019-11-10', 3),
(383, 'setyo', '12346060', 'Uji Prasetyo', 'Laki-Laki', 'Tangerang', '1979-05-24', 'Perumahan Puri Permata Blok E1 No 14', 81284300240, 'uji.prasetyo@gmail.com', '2019-11-10', 3),
(384, 'ianto', '12346061', 'Ferdianto', 'Laki-Laki', 'bekasi', '1985-02-25', 'Pekayon', 87875877111, 'jasmerah@gmail.com', '2019-11-10', 3),
(385, 'fitri', '12346062', 'Ani Safitri', 'Perempuan', 'DKI Jakarta', '1972-02-26', 'Jl. KH Guru Mughni RT 005/001', 81280280405, 'anisafitri26@yahoo.com', '2019-11-10', 3),
(386, 'zaldi', '12346063', 'Muhammad Ihsan Rizaldi', 'Laki-Laki', 'Jakarta Selatan', '1990-08-06', 'Jalan tebet timur 1 no.9', 81282345378, 'moka.kreativisual@gmail.com', '2019-11-10', 3),
(387, 'erlin', '12346064', 'Berlin', 'Laki-Laki', 'Kabupaten Bandung Ba', '1982-04-10', 'Jalan Somawinata No.62', 81320656019, 'berurinberurin@gmail.com', '2019-11-10', 3),
(388, 'oraya', '12346065', 'Latifah Soraya', 'Perempuan', 'Bogor', '1981-12-10', 'Puri Arraya Blok DK No.31 Cicadas Cikampak Bogor', 85717949991, 'soraya0514@gmail.com', '2019-11-10', 3),
(389, 'Ajie', '12346066', 'Bambang Bimo Ajie', 'Laki-Laki', 'Bogor', '1976-10-13', 'Griya Bogor Asri. Jl. Kutilang 22. Rt.06/03', 8889000821, 'Bambang.ajie1@gmail.com', '2019-11-10', 3),
(390, 'n Nur', '12346067', 'Syafarudin Nur', 'Laki-Laki', 'Sleman', '2019-03-26', 'Perumahan Jatisawit Asri Blok O.11 Balecatur Gamping Sleman DIY', 82221045125, 'syafarudin.nur@gmail.com', '2019-11-10', 3),
(391, 'lyani', '12346068', 'Devi Tri Yulia Mulyani', 'Perempuan', 'Bogor', '1980-07-10', 'Griya Bogor Asri. Jl. Kutilang 22. Rt.06/03', 88219622254, 'ydevitri107@gmail.com', '2019-11-10', 3),
(392, 'iawan', '12346069', 'Saka Ardy Setiawan', 'Laki-Laki', 'Bogor', '1991-12-22', 'Pondok Rajeg Asri Blok E3 No.08 RT.005/011', 81212720588, 'muhammad.sukirman@trakindo.co.id', '2019-11-10', 3),
(393, 'ryono', '12346070', 'Nano Aryono', 'Laki-Laki', 'Jakarta Timur', '1974-06-05', 'Jl. Kayu Mas I', 811936795, 'wahyu.aji7878@yahoo.com', '2019-11-10', 3),
(394, 'mawan', '12346071', 'Handoyo Nur Rismawan', 'Laki-Laki', 'JAKARTA UTARA', '1985-01-23', 'GG.PEJUANG V RT.003 RW.004 NO.25', 85219581166, 'handoyorismawan2405@gmail.com', '2019-11-10', 3),
(395, 'y Leo', '12346072', 'Sanny Leo', 'Perempuan', 'Jakarta Barat', '1976-04-22', 'Permata Mediterania, Jl. A VI No.38', 8161917808, 'sannyleo@gmail.com', '2019-11-10', 3),
(396, 'atria', '12346073', 'Doddy Satria', 'Laki-Laki', 'Jakarta', '1983-11-20', 'Mampang Prapatan', 81298458525, 'ferdianto.bankdki@gmail.com', '2019-11-10', 3),
(397, 'Ramli', '12346074', 'Herman Ramli', 'Laki-Laki', 'Jakarta Selatan', '1962-06-16', 'Apt Permata Hijau Twr II', 8128053888, 'sanny_leo@yahoo.com', '2019-11-10', 3),
(398, 'fiana', '12346075', 'Ade Sofiana', 'Perempuan', 'Jakarta Timur', '1971-12-12', 'Jl. Kayu Mas I', 811936795, 'wahyu.aji@samudera.id', '2019-11-10', 3),
(399, 'lista', '12346076', 'Alfan Yulista', 'Laki-Laki', 'Jakarta Selatan', '1982-07-15', 'Jl. Tebet Timur II B No. 10, RT 013/RW 005', 8111095767, 'bolenk_182@yahoo.com', '2019-11-10', 3),
(400, 'jatun', '12346077', 'Rifkiandi Darajatun', 'Laki-Laki', 'Jakarta', '1973-12-12', 'Komp Pertamina II No. 72', 8111880540, 'rifki.darajatun@gmail.com', '2019-11-10', 3),
(401, 'oraya', '12346078', 'Latifah Soraya', 'Perempuan', 'Bogor', '1981-12-10', 'Puri Arraya Blok DK No.31 Cicadas Cikampak Bogor', 85717949991, 'ayyachiba@gmail.com', '2019-11-10', 3),
(402, 'jatun', '12346079', 'Rivan F Darajatun', 'Laki-Laki', 'Jakarta', '2001-06-02', 'Komp Pertamina II No. 72', 81382937098, 'rfd7373@gmail.com', '2019-11-10', 3),
(403, 'resia', '12346080', 'Heraresia', 'Perempuan', 'Jakarta', '1974-09-12', 'Komp Pertamina II No. 72', 87808081591, 'rifkiad@yahoo.co.uk', '2019-11-10', 3),
(404, 'narko', '12346081', 'Adi Sunarko', 'Laki-Laki', 'Bekadi', '1979-06-02', 'Komplek Kav PATI TNI AU Jatisari Jatiasih', 81292681205, 'kobul79@yahoo.com', '2019-11-10', 3),
(405, 'ridlo', '12346082', 'Tuntun Atmaturidlo', 'Laki-Laki', 'Bogor', '1985-10-04', 'Jl. Tumenggung Wiradireja No. 117 RT.002 RW.08 Kelurahan Cimahpar Kecamatan Bogor Utara Kota Bogor Propinsi Jawa Barat', 85624318485, 'ridloleo@gmail.com', '2019-11-10', 3),
(406, 'Mauli', '12346083', 'Fadlan Mauli', 'Laki-Laki', 'Bogor', '1991-01-05', 'Jalan Raya Ciomas, Bojong Menteng Rt.05 Rw.06 No.48, Kec. Kota Bogor Barat', 8111155533, 'fadlanmauli@gmail.com', '2019-11-10', 3),
(407, 'barat', '12346084', 'Arlina Hutabarat', 'Perempuan', 'Jakarta Timur', '1976-04-29', 'Rusun Pulo Gebang', 818943877, 'Arlina2904@gmail.com', '2019-11-10', 3),
(408, 'ngrum', '12346085', 'Silvy Widyaningrum', 'Perempuan', 'Bogor', '1971-06-22', 'Perumahan Kota Wisata Paris C4/25', 8161869300, 'silvywidyaningrum@gmail.com', '2019-11-10', 3),
(409, 'udi N', '12346086', 'Ari Budi N', 'Laki-Laki', 'jakarta', '1981-09-07', 'gudang peluru barat IV no.9 RT.10 RW.003', 81210800110, 'arigupel@gmail.com', '2019-11-10', 3),
(410, 'santo', '12346087', 'Herry Susanto', 'Laki-Laki', 'Depok', '1980-04-10', 'Jl H Japat 1 no 63A, RT 06/01', 8119881396, 'hericz@gmail.com', '2019-11-10', 3),
(411, 'uthfi', '12346088', 'Amil Luthfi', 'Laki-Laki', 'Jakarta Pusat', '1966-05-30', 'Cempaka Putih Tengah 33/18A', 8568041966, 'amil305@gmail.com', '2019-11-10', 3),
(412, 'Fuadi', '12346089', 'Ahmad Jalaluddin Al Fuadi', 'Laki-Laki', 'Bogor', '1991-01-25', 'Kp. Segog Rt001/Rw003 Desa Cibening Kecamatan Pamijahan Kabupaten Bogor', 85717701640, 'ahmadjalaluddinalfuadi@gmail.com', '2019-11-10', 3),
(413, 'adhi', '12346090', 'fajar adhi', 'Laki-Laki', 'Bandung', '1986-09-30', 'Sukamantri II no.90', 8112288628, 'fajar.adhinegoro@gmail.com', '2019-11-10', 3),
(414, 'rifin', '12346091', 'Hilman Fakhrul Arifin', 'Laki-Laki', 'BOGOR', '1993-09-28', 'GRIYA BUKIT JAYA BLOK F9/9 RT5 RW026 GUNUNG PUTRI-BOGOR', 81299422750, 'hilmanfakhrul@gmail.com', '2019-11-10', 3),
(415, 'ggani', '12346092', 'MGG Irne Renggani', 'Perempuan', 'Jakarta Pusat', '1979-06-18', 'Jl. Semboja No.1C', 81332502604, 'i_irne@yahoo.com', '2019-11-10', 3),
(416, 'yanto', '12346093', 'Eko Noviyanto', 'Laki-Laki', 'Klaten', '1983-11-13', 'Danguran', 8112772330, 'noviyanto.eko@gmail.com', '2019-11-10', 3),
(417, 'rifin', '12346094', 'Zaenal Arifin', 'Laki-Laki', 'Bogor', '1987-02-18', 'Kp. Ciherang Pondok RT.05 RW.01 Caringin - Bogor 16730', 81318622423, 'nalarifin@gmail.com', '2019-11-10', 3),
(418, 'Fatah', '12346095', 'E Abdul Fatah', 'Laki-Laki', 'Bandung', '1989-10-11', 'Kp panguyangan rt 02/05 desa cihanyir kec cikancung kab bandung', 8979327224, 'fatahelfariez11@gmail.com', '2019-11-10', 3),
(419, 'Sari', '12346096', 'Fita Permata Sari', 'Perempuan', 'Jakarta Selatan', '1978-06-21', 'Jalan Mawar Indah No 73B', 8118569889, 'fsari@slb.com', '2019-11-10', 3),
(420, 'endha', '12346097', 'Hanif Dhimas Dhanurwendha', 'Laki-Laki', 'Jakarta', '1990-07-31', 'Menara BTN, Jl. Gajah Mada No. 1 (Sharia Division Lt 11) Jakarta Pusat', 85736011300, 'hanifdhimasd@gmail.com', '2019-11-10', 3),
(421, 'Aris', '12346098', 'Ruly Aris', 'Laki-Laki', 'Bekasi', '1996-06-19', 'Taman nirwana blok b no 1bekasi timur', 81703062012, 'rulyaris.vim@gmail.com', '2019-11-10', 3),
(422, 'iarto', '12346099', 'Galih Sugiarto', 'Laki-Laki', 'Bogor', '1993-03-04', 'Warung Pari Gg Baru 1 No. 1 RT 04 RW 01', 81318139304, 'gsugiarto7@gmail.com', '2019-11-10', 3),
(423, 'iarti', '12346100', 'iindah yuniarti', 'Perempuan', 'Magelang', '1990-01-20', 'Gemulung rt 02 rw 09 banyuwangi bandongan magelang', 81578348024, 'iindah_yuniarti@yahoo.co.id', '2019-11-10', 3),
(424, 'IARTI', '12346101', 'IINDAH YUNIARTI', 'Perempuan', 'Magelang', '1990-01-20', 'Dusun gemulung rt 02 rw 09 Banyuwangi bandongan Magelang 56151', 81578348024, 'faisalirawan30@gmail.com', '2019-11-10', 3),
(425, 'usuma', '12346102', 'karang hadiri kusuma', 'Laki-Laki', 'BOGOR', '1991-04-23', 'Taman Cimanggu', 8119694411, 'maulifadlan@yahoo.com', '2019-11-10', 3),
(426, 'Soleh', '12346103', 'Yusup Soleh', 'Laki-Laki', 'Bogor', '1993-01-03', 'Jl. Cilebut no.13 rt.04 rw.13', 85814091652, 'solehyusup@gmail.com', '2019-11-10', 3),
(427, 'NTIYA', '12346104', 'DITHA TANTIYA', 'Perempuan', 'PURWAKARTA', '1987-12-05', 'JL TERUSAN IBRAHIM SINGADILAGA NO 05', 82133331875, 'dithatantiya@yahoo.com', '2019-11-10', 3),
(428, 'Sari', '12346105', 'Finda Mayang Sari', 'Perempuan', 'Cibubur', '1975-09-21', 'Zona Einstein R2/8', 8557881115, 'fitasarialam@yahoo.com', '2019-11-10', 3),
(429, 'awadi', '12346106', 'Sigit Hawadi', 'Laki-Laki', 'Depok', '1970-04-15', 'Permata Depok Sektor Mirah I Blok L 3 No.9', 81285053728, 'sigithawadi60@gmail.com', '2019-11-10', 3),
(430, 'HOLIL', '12346107', 'HOLIL', 'Laki-Laki', 'Kab.sukabumu', '1971-03-17', 'Kp.cicurug.rt.006/002.dsa.ci kembang.kec.caringin.kab.sukabumi', 82124285363, 'henipah78@yahoo.com', '2019-11-10', 3),
(431, 'ianti', '12346108', 'Dewi Yulianti', 'Perempuan', 'Bandung', '1986-07-04', 'Sukamantri II No.90', 8112253332, 'adhi.slovco@gmail.com', '2019-11-10', 3),
(432, 'hlevi', '12346109', 'Farhan Reza Fahlevi', 'Laki-Laki', 'Bogor', '2000-08-30', 'Perumahan Mutiara Bogor Raya Blok E.3 No.18 RT 005/016', 89517091585, 'fahlevi819@gmail.com', '2019-11-10', 3),
(433, 'MUKTI', '12346110', 'RENDY MUKTI', 'Laki-Laki', 'BANDUNG', '1990-12-01', 'JL. LEUWI PANJANG GG SARI ASIH NO. 68A', 81221029059, 'dithatantiya@gmail.com', '2019-11-10', 3),
(434, 'hkamy', '12346111', 'Furqon Ahkamy', 'Laki-Laki', 'Bekasi', '1984-11-15', 'Cluster Citra Residence No. D6 RT.13 RW.16 Duren Jaya, Bekasi Timur', 811646446, 'furqon.ahkamy@gmail.com', '2019-11-10', 3),
(435, 'ahayu', '12346112', 'Septi Eka Rahayu', 'Perempuan', 'Klaten', '1996-09-24', 'Tlebukan RT/RW 001/013 Solodiran Manisrenggo Klaten', 87834813628, 'Septiekarahayu@yahoo.co.id', '2019-11-10', 3),
(436, 'putra', '12346113', 'Meidilah dwi putra', 'Laki-Laki', 'Jakarta', '1979-05-23', 'Jl bhakti VII no 13 . Rt 02/09 kemanggisan,palmerah,jakarta barat', 8161188787, 'fatahalfarisi11@gmail.com', '2019-11-10', 3),
(437, 'WARNI', '12346114', 'GUSTI WARNI', 'Perempuan', 'jakarta timur', '1975-08-01', 'malaka country estate jl.malaka hijau II no.24 Pondok kopi', 81380708131, 'gusti.smansa94@gmail.com', '2019-11-10', 3),
(438, 'rtono', '12346115', 'Marga Suswartono', 'Laki-Laki', 'Jakarta timur', '1970-04-28', 'Malaka country estate', 8124208339, 'marga.yogya@gmail.com', '2019-11-10', 3),
(439, 'Sidik', '12346116', 'Fajar Sidik', 'Laki-Laki', 'Bogor', '1991-01-01', 'Jl. Masjid Attaqwa No. 22 RT 003/005 Kp. Bubulak', 85717478944, 'fajar.sidik91@gmail.com', '2019-11-10', 3),
(440, 'Kala', '12346117', 'Indra Kala', 'Laki-Laki', 'Tangerang Selatan', '1978-12-02', 'Grand Residence @Pondok Cabe Blok B4/18', 811169659, 'klandra2@yahoo.com', '2019-11-10', 3),
(441, 'Yusuf', '12346118', 'Dede Yusuf', 'Laki-Laki', 'Jakarta Pusat', '1984-04-25', 'Citayam', 85285693155, 'dede24yusuf@gmail.com', '2019-11-10', 3),
(442, 'santa', '12346119', 'Melany Susanta', 'Perempuan', 'Bandung', '2019-03-27', 'Jl. Taman Kayu Manis no 2A', 8122327175, 'eddyaguss@gmail.com', '2019-11-10', 3),
(443, 'Nasir', '12346120', 'Muhammad Nasir', 'Laki-Laki', 'Bogor', '1980-04-12', 'Taman Tirta Cimanggu', 81318686677, 'banyubeningswim@yahoo.co.id', '2019-11-10', 3),
(444, 'atama', '12346121', 'Doddy Pratama', 'Laki-Laki', 'Palembang', '1983-06-16', 'Jl. Cendana II Blok GG No.24 Jakabaring', 811715445, 'doddy_pratama@telkomsel.co.id', '2019-11-10', 3),
(445, 'hendi', '12346122', 'Adang rohendi', 'Laki-Laki', 'Bandung', '1986-09-16', 'Kp curug dedes rt 01 rw 10 desa drawati paseh bandung', 85974929722, 'Arohendi1609@gmail.com', '2019-11-10', 3),
(446, 'dayat', '12346123', 'Muhammad Hidayat', 'Laki-Laki', 'Depok', '1994-12-07', 'Depok', 81297613334, 'hendrylazuardi@yahoo.com', '2019-11-10', 3),
(447, 'safat', '12346124', 'Yosafat', 'Laki-Laki', 'Palangka Raya', '1996-01-09', 'Jl. Batu Hurun no. 018', 82251610850, 'fvsyosafat@gmail.com', '2019-11-10', 3),
(448, 'yanto', '12346125', 'Nugroho Noviyanto', 'Laki-Laki', 'Jakarta Selatan', '1978-12-11', 'Apartemen Kalibata City Tower Gaharu No. G.11.BA', 8111007605, 'nu61e@yahoo.com', '2019-11-10', 3),
(449, 'DAELI', '12346126', 'FIRMAN PASKAH DAELI', 'Laki-Laki', 'JAKARTA TIMUR', '1993-04-12', 'JALAN RAYA BAMBU APUS RAYA, CIPAYUNG JAKARTA TIMUR', 81316985909, 'iqkal745950@gmail.com', '2019-11-10', 3),
(450, 'ugian', '12346127', 'Humisar Hasugian', 'Laki-Laki', 'Jakarta Selatan', '1980-04-03', 'Apartemen Kalibata City Tower Gaharu No. G.11.BA', 83892019213, 'nugie.ijo@gmail.com', '2019-11-10', 3),
(451, 'zain', '12346128', 'Aliya faiqoh zain', 'Perempuan', 'Jakarta timur', '1985-11-07', 'Jl. SD Inpress no 7 rt 09 rw 04 kebonpala jakarta timur', 81381249856, 'alya.zain85@gmail.com', '2019-11-10', 3),
(452, 'YAWAN', '12346129', 'Hardianto PRASTYAWAN', 'Laki-Laki', 'Jakarta', '1985-12-07', 'Jl. Erlangga I No. 19', 81294112194, 'prastyawan.hardianto@gmail.com', '2019-11-10', 3),
(453, 'osyid', '12346130', 'Dian Rosyid', 'Laki-Laki', 'Jombang', '1993-07-23', 'Badang RT/RW 003/004 Badang Ngoro Jombang Jawa Timur', 85731970223, 'septieka123@gmail.com', '2019-11-10', 3),
(454, 'hmana', '12346131', 'Graha Agung Brahmana', 'Laki-Laki', 'Bogor', '1991-08-25', 'Dian Asri 2 Blok B7 No 11 RT 04 RW 015 Pabuaran', 81380459510, 'grahagung@gmail.com', '2019-11-10', 3),
(455, 'yanti', '12346132', 'Dian Iryanti', 'Perempuan', 'Bogor', '1994-10-25', 'Kp Muara No.166A RT.03/RW.09, Sindangrasa Bogor Timur', 85780877374, 'Iryanti.dian@gmail.com', '2019-11-10', 3),
(456, 'Niyah', '12346133', 'Safitri Tsa\'Niyah', 'Perempuan', 'Jakarta Selatan', '1995-10-10', 'Jl. Kalibata Tengah No 37', 85770938536, 'saniasafi43@gmail.com', '2019-11-10', 3),
(457, 'adana', '12346134', 'Jaka Arya Pradana', 'Laki-Laki', 'Bogor', '1987-08-25', 'Jl. Babakan Lama no. 27', 81221848845, 'ja.pradana@gmail.com', '2019-11-10', 3),
(458, 'ianti', '12346135', 'Dinda Khairina Aztianti', 'Perempuan', 'Bogor', '1995-01-01', 'JL DUTA AYU NO.16 BLOK A6 RT.02/RW.11, DUTA KENCANA 2, BOGOR', 85691319616, 'dian.valarbi@gmail.com', '2019-11-10', 3),
(459, 'rudin', '12346136', 'Ahmad Bahrudin', 'Laki-Laki', 'BOGOR', '1974-11-01', 'Bukit Cimanggu VIlla', 811101886, 'fadlanmg@gmail.com', '2019-11-10', 3),
(460, 'njaya', '12346137', 'Sanjaya', 'Laki-Laki', 'Karawang', '1993-10-10', 'Perum graha blok A4 no 25', 81321187509, 'sanjayaamn2025@gmail.com', '2019-11-10', 3),
(461, 'hardi', '12346138', 'Muhardi', 'Laki-Laki', 'Jakarta', '1986-09-05', 'Jalan Mega Kebon Jeruk B5/24', 81319211033, 'muhardimedan@gmail.com', '2019-11-10', 3),
(462, 'fiani', '12346139', 'Nina Nisfiani', 'Perempuan', 'Bogor', '1995-01-16', 'pondok bambu kuning, blok F8 No.7, Bojong Gede', 81322059780, 'diandodo56@gmail.com', '2019-11-10', 3),
(463, 'rhana', '12346140', 'Ferra Farhana', 'Perempuan', 'Jakarta Timur', '1979-06-26', 'Jakarta', 82122292324, 'hendryla1506@gmail.com', '2019-11-10', 3),
(464, 'TIANI', '12346141', 'ERNI RUSTIANI', 'Perempuan', 'BOGOR', '1971-03-01', 'BUKIT BOGOR RAYA BLOK I16 No. 20 BOGOR', 85319766000, 'ernirustiani@unpak.ac.id', '2019-11-10', 3),
(465, 'yesti', '12346142', 'Erizka Kun Mayesti', 'Perempuan', 'Bogor', '1983-12-30', 'Perumahan Pondok Bambu Kuning Blok C1 No 2', 81907094143, 'erizka.kun@gmail.com', '2019-11-10', 3),
(466, 'endro', '12346143', 'Haenri Sudarendro', 'Laki-Laki', 'solo', '1966-09-11', 'jalan cepaka 3 badran', 81226999998, 'titisb@pertamina.com', '2019-11-10', 3),
(467, 'ulana', '12346144', 'Firkan Maulana', 'Laki-Laki', 'Bandung', '1973-04-11', 'Jln Satria Kulon 3 No G 21 Komplek Cibolerang Indah', 87776658583, 'ckan.kasep@gmail.com', '2019-11-10', 3),
(468, 'erick', '12346145', 'Magnus Frederick', 'Laki-Laki', 'Jakarta Timur', '1997-08-07', 'Jl. Bunga Rampai 4/6 No.265', 81313176579, 'magnusf963@gmail.com', '2019-11-10', 3),
(469, 'ohman', '12346146', 'Asep saefurrohman', 'Laki-Laki', 'Bogoe', '1979-09-24', 'Taman pajajaran tahap 3 blok c2 no 6 katulampa bogor', 811445099, 'asep_saefurrohman@telkomsel.co.id', '2019-11-10', 3),
(470, 'baqir', '12346147', 'Raden muhammad baqir', 'Laki-Laki', 'Bogor', '1998-01-25', 'Jl raden khanafiah rt 03/15', 85210155731, 'radenbaqir2@gmail.com', '2019-11-10', 3),
(471, 'stira', '12346148', 'Marhaban rizki yudhistira', 'Laki-Laki', 'bogor', '1998-11-22', 'Jl taweuran 3 no 19 bantarjati', 89614258546, 'mrizkiyudistira@gmail.com', '2019-11-10', 3),
(472, 'aragi', '12346149', 'Theresia Lindya Saragi', 'Perempuan', 'Bogor', '1973-09-07', 'Legenda Wisata Picasso K10/30', 87878600899, 'lindya.th@gmail.com', '2019-11-10', 3),
(473, 'Fahmi', '12346150', 'Fahmi', 'Laki-Laki', 'Jakarta selatan', '1984-07-16', 'Pemuda Residence 2 no.4 Jl Pemuda 2 Srengseng Sawah', 8111833854, 'abdat.fahmi@gmail.com', '2019-11-10', 3),
(474, 'ianty', '12346151', 'Novianty', 'Perempuan', 'Jakarta', '1987-11-18', 'Jl. Kampung Utan no. 35', 8128141148, 'novi.novianty@gmail.com', '2019-11-10', 3),
(475, 'sarah', '12346152', 'Nadia siti sarah', 'Perempuan', 'Bandung', '1991-09-04', 'Jl . Dahlia blok O-125 Nata endah II Sadang', 81293340775, 'nadiassarah@gmail.com', '2019-11-10', 3),
(476, 'ianto', '12346153', 'Fajar rizqi Dianto', 'Laki-Laki', 'Jakarta', '1990-09-05', 'Jl.rambutan no.4b', 81327559139, 'frespati275@gmail.com', '2019-11-10', 3),
(477, 'apari', '12346154', 'Toha Sapari', 'Laki-Laki', 'Bandung', '1982-01-05', 'Setradago indah I', 8122195068, 'tohasapari@yahoo.co.id', '2019-11-10', 3),
(478, 'Akbar', '12346155', 'Muhammad Ridho Akbar', 'Laki-Laki', 'Bogor', '1996-01-31', 'Jl.parikesit raya no 31 Perum indraprasta bogor utara', 87820996316, 'rachman_lazuardi14@yahoo.com', '2019-11-10', 3),
(479, 'ayati', '12346156', 'Elis nurhayati', 'Perempuan', 'Bandung', '1981-09-01', 'Setradago indah I', 8122265523, 'tohasapari@gmail.com', '2019-11-10', 3),
(480, 'TMAJI', '12346157', 'HARFA SINA ATMAJI', 'Laki-Laki', 'KEBUMEN', '1996-11-22', 'GG. WALIKONANG NO 27 WONOYOSO RT 07, RW.05', 87837532123, 'harfa_sina@yahoo.com', '2019-11-10', 3),
(481, 'stian', '12346158', 'Ricky Agustian', 'Laki-Laki', 'Karawang', '1986-08-30', 'Jalan Melati no. 14 - Guro 2 - Karawang 41314', 81277777997, 'ricky_agustian@ymail.com', '2019-11-10', 3),
(482, 'manto', '12346159', 'Diki chrismanto', 'Laki-Laki', 'Palembang', '1982-12-24', 'Jl demang lebar daun no.72 A', 8127156700, 'diki_chrismanto@telkomsel.co.id', '2019-11-10', 3),
(483, 'ryono', '12346160', 'Mantik Haryono', 'Laki-Laki', 'Depok', '1978-05-18', 'Permata Cimanggis cluster mutiara c2/11', 8111891654, 'dikichris@gmail.com', '2019-11-10', 3),
(484, 'putra', '12346161', 'Dadan Sukma Saputra', 'Laki-Laki', 'Jakarta Selatan', '1978-05-10', 'Ciganjur Brigif II', 81703052011, 'danabidrea@gmail.com', '2019-11-10', 3),
(485, 'Sidik', '12346162', 'Arrijal Sidik', 'Laki-Laki', 'Bogor', '1988-02-05', 'Jl. Hegarmanah III No.57 Kel.Gunung Batu Kec.Bogor Barat', 87821404774, 'arrijal.sidik@gmail.com', '2019-11-10', 3),
(486, 'iawan', '12346163', 'Yosep Setiawan', 'Laki-Laki', 'Bandung Barat', '1986-09-22', 'Dee Camaroong Residence No A11 Citeurep Cimahi Utara', 82120111786, 'yosepsetiawan565@gmail.com', '2019-11-10', 3),
(487, 'dayat', '12346164', 'Asep Deni hidayat', 'Laki-Laki', 'Bandung', '1986-04-11', 'Kp. Palasari RT 1 RW 1 Bojongmangu pameungpeuk', 81321773741, 'asden.compmuslim@gmail.com', '2019-11-10', 3),
(488, 'yawan', '12346165', 'Rachmawan Primadya Setyawan', 'Laki-Laki', 'Kabupaten Bogor', '1992-09-01', 'Griya Bukit Jaya E10/14', 87888707539, 'rachmawanprimadya@gmail.com', '2019-11-10', 3),
(489, 'tizah', '12346166', 'Febrina Maria Khatizah', 'Perempuan', 'Kota Bandung', '1986-02-17', 'Kacapiring 96', 81572321321, 'febrinamkhatizah@gmail.com', '2019-11-10', 3),
(490, 'ntoso', '12346167', 'Heru santoso', 'Laki-Laki', 'Bogor', '1982-03-16', 'Graha pajajaran', 81312427572, 'heroe.santoso@gmail.com', '2019-11-10', 3),
(491, 'abowo', '12346168', 'Bambang Eko Prabowo', 'Laki-Laki', 'Bekasi', '1987-07-29', 'Vila Galaksi B6 No 7', 811295437, 'prabowo.be@gmail.com', '2019-11-10', 3),
(492, 'Tarwi', '12346169', 'Ahmad Tarwi', 'Laki-Laki', 'Bekasi', '1971-04-18', 'Taman Harapan Baru Blok O3 No. 5, Pejuang, Medansatria, Bekasi', 87784438225, 'ahmad.tarwi@gmail.com', '2019-11-10', 3),
(493, 'wanto', '12346170', 'Danang Purwanto', 'Laki-Laki', 'Jakarta', '1982-12-15', 'Jl.Nurul Ihsan RT004/03 no.1A Cipedak Jagakarsa', 818786834, 'danang_purwanto82@yahoo.com', '2019-11-10', 3),
(494, 'ngsih', '12346171', 'Wiwi Kurnianingsih', 'Perempuan', 'bogor', '1970-02-22', 'Jl. Kemuning 1 no.11 Taman Yasmin Bogor', 85288882202, 'iniwiwi@yahoo.com', '2019-11-10', 3),
(495, 'nsyah', '12346172', 'Rahadhian Firmansyah', 'Laki-Laki', 'Jakarta Selatan', '1978-07-30', 'Asrama Polantas No. 14 Rt 006/002 Pejaten Barat Pasar Minggu', 81383034501, 'rahadhianf@gmail.com', '2019-11-10', 3),
(496, 'YANTO', '12346173', 'HARIS WIJAYANTO', 'Laki-Laki', 'Rancaekek bandung', '1977-09-18', 'Jl.kh.ahmad syadili perum d pillar blok 3b no 17 Desa Jelegong kec.Rancaekek Bandung', 81220177092, 'abitama09@gmail.com', '2019-11-10', 3),
(497, 'yanto', '12346174', 'Bayu triariyanto', 'Laki-Laki', 'Bogor', '1982-04-06', 'Sindang barangjembatan gg.roda 2 no. 36', 81294317019, 'bayu3ibank@gmail.com', '2019-11-10', 3),
(498, 'setyo', '12346175', 'eko prasetyo', 'Laki-Laki', 'Jakarta', '1987-05-21', 'Jalan utan panjang 3 kemayoran jakpus', 816748749, 'ekonce@gmail.com', '2019-11-10', 3),
(499, 'ffary', '12346176', 'Gusti Abi Dzar Al Ghiffary', 'Laki-Laki', 'Bogor', '1995-09-13', 'Kp. Cimanglid, Gg. Purnama 2, No. 67, Rt 06/01', 82117536059, 'gustialghi@gmail.com', '2019-11-10', 3),
(500, 'narko', '12346177', 'Mohammad Teddy Widjanarko', 'Laki-Laki', 'Bogor', '1971-12-28', 'Jl. Hateup no. 10, Bantarjati, Bogor Utara', 8129960200, 'teddy@rekayasa.co.id', '2019-11-10', 3),
(501, 'stuti', '12346178', 'Datien Widyastuti', 'Perempuan', 'Jakarta Selatan', '1978-03-20', 'Asrama Polantas No. 14 Rt 006/002 Pejaten Barat Pasar Minggu', 85697812718, 'ilafirmansyah@gmail.com', '2019-11-10', 3),
(502, 'groho', '12346179', 'ardi nugroho', 'Laki-Laki', 'bekasi', '1977-06-06', 'Jl. puma 7 b12 no. 7 Cikarang baru, Bekasi', 81229508028, 'ardinug5150@gmail.com', '2019-11-10', 3),
(503, 'arani', '12346180', 'Retno Dewi Novrida Maharani', 'Perempuan', 'Bogor', '1997-11-06', 'Jl Raya Tajur Kp Muara 1 No 80 Rt 02 Rw 02', 81995191488, 'retnodnm@gmail.com', '2019-11-10', 3),
(504, 'iawan', '12346181', 'Bhanad Shofa Kurniawan', 'Perempuan', 'Bogor', '1988-03-15', 'Jalan Medika III, Blok AQ 7 BMA RT 4 RW 19 Menteng, Kota Bogor Barat', 816748749, 'neninurkhamidah@gmail.com', '2019-11-10', 3),
(505, 'Putra', '12346182', 'Qinthara Putra', 'Laki-Laki', 'Bandung', '1993-03-05', 'Jl Purba Endah C41', 81221756063, 'qintharaps@gmail.com', '2019-11-10', 3),
(506, 'SMOYO', '12346183', 'FIERMANDA ADYANTO PRASMOYO', 'Laki-Laki', 'BANDUNG', '1993-05-16', 'MARGAHAYU RAYA Q-II NO.107', 8122150812, 'fiermanda93@gmail.com', '2019-11-10', 3),
(507, 'Utomo', '12346184', 'Kartikaning Budi Utomo', 'Laki-Laki', 'Bogor', '1965-07-07', 'Perum Bantarjati, Jl. Palayu V No. 38', 8176450315, 'k.budiutomo77@gmail.com', '2019-11-10', 3),
(508, 'ulana', '12346185', 'Alfan Fahri Maulana', 'Laki-Laki', 'Bandung', '1995-04-14', 'Bumi Panyileukan Blok Q2 No. 17', 81290002144, 'alfanfm38@gmail.com', '2019-11-10', 3),
(509, 'kifli', '12346186', 'Zulkifli', 'Laki-Laki', 'jakarta timur', '1988-04-09', 'jl. taruna jaya no. 27 rt 4 rw 5', 817750602, 'allesta_black@yahoo.com', '2019-11-10', 3),
(510, 'iawan', '12346187', 'rudi setiawan', 'Laki-Laki', 'Bekasi', '1974-08-10', 'Taman Rahayu Regency', 89615282181, 'redhita@gmail.com', '2019-11-10', 3),
(511, 'YANTO', '12346188', 'TRI WIDYANTO', 'Laki-Laki', 'MAROS', '1989-04-07', 'LINGK KAMPUNG BARU NO. 4', 81242427032, 'sikupolresmaros@gmail.com', '2019-11-10', 3),
(512, 'mawan', '12346189', 'Angga Dharmawan', 'Laki-Laki', 'Tangerang', '1991-08-27', 'Komplek Garuda, blok A.9 no.14, Kampung Melayu Timur, Teluknaga, Tangerang', 85642744303, 'angga.dharmawan27@gmail.com', '2019-11-10', 3),
(513, 'stira', '12346190', 'Marhaban rizki yudhistira', 'Laki-Laki', 'bogor', '1998-11-22', 'Jl taweuran 3 no 19 bantarjati tegal gundil bogor utara', 89614258546, 'marhabanrizkiy@gmail.com', '2019-11-10', 3),
(514, 'siana', '12346191', 'Usie Lusiana', 'Perempuan', 'Bandung', '1982-03-04', 'Gegerkalong Girang no.181 rt.04/01, Bandung', 8122337090, 'usielusiana@gmail.com', '2019-11-10', 3),
(515, 'dayat', '12346192', 'ichsan Hidayat', 'Laki-Laki', 'Jakarta Selatan', '1971-12-10', 'Jl. Tanjung 8 Blok I no 8', 811189499, 'ichhsan@gmail.com', '2019-11-10', 3),
(516, 'ayani', '12346193', 'mutia handayani', 'Perempuan', 'Tangerang selatan', '1974-12-04', 'Greenwoods garden no.p-12', 81290000992, 'cut_mutia_handayani@yahoo.com', '2019-11-10', 3),
(517, 'LVANI', '12346194', 'RANIA SALVANI', 'Perempuan', 'Bogor', '1992-03-19', 'Taman Kenari Blok A 5 No.29', 85811779454, 'raniasalvani@gmail.com', '2019-11-10', 3),
(518, 'yanto', '12346195', 'Bayu triariyanto', 'Laki-Laki', 'Bogor', '1982-04-06', 'Sindangbarang jembatan gg roda 2 no 36', 81294317019, 'bayu3aryanto@gmail.com', '2019-11-10', 3),
(519, 'yafei', '12346196', 'Surya syafei', 'Laki-Laki', 'Karawang', '1995-12-28', 'Dusun rawabambu 1 rt02/06, desa sindangmulya kec. Kutawaluya kab. Karawang', 82222203559, 'suryasyafeii@gmail.com', '2019-11-10', 3),
(520, 'riadi', '12346197', 'Nugroho Hariadi', 'Laki-Laki', 'Depok', '1977-12-16', 'Permata Depok Regency (Diamond 2) Blok C15/11', 81253245441, 'hariadi.nugroho@gmail.com', '2019-11-10', 3),
(521, 'setyo', '12346198', 'Muhammad Budi Prasetyo', 'Laki-Laki', 'Depok', '1984-02-06', 'Jalan Giring-giring I No. 86', 81310798892, 'm.budi.prasetyo@gmail.com', '2019-11-10', 3),
(522, 'afika', '12346199', 'Rafika', 'Perempuan', 'Bogor', '1980-08-25', 'Ciomas Grande kav 15 Cikonéng', 8121896020, 'rafika@bsm.co.id', '2019-11-10', 3),
(523, 'Yani', '12346200', 'Ahmad Yani', 'Laki-Laki', 'Bogor', '1981-09-30', 'Nuansa Asri Laladon Blok A No. 10 RT 01 RW 11 Kel. Laladon Kec. Ciomas Kab. Bogor', 81310236956, 'ay300981@gmail.com', '2019-11-10', 3),
(524, 'amono', '12346201', 'Fajar Hadi Pramono', 'Laki-Laki', 'Serang', '1995-04-04', 'Komplek kidemang block b2 no9', 87806757059, 'fazharhady@gmail.com', '2019-11-10', 3),
(525, 'yanto', '12346202', 'Windra Mai Haryanto', 'Laki-Laki', 'Jakarta', '1982-05-16', 'Cijantung', 82123334246, 'ferdianto252720@gmail.com', '2019-11-10', 3),
(526, 'iawan', '12346203', 'Iwan kurniawan', 'Laki-Laki', 'Bogor', '1998-05-11', 'Jl merdeka kebon kopi rt01 rw06 no:29', 89602618595, 'iwankur520@gmail.com', '2019-11-10', 3),
(527, 'nsyah', '12346204', 'Riki Ardiansyah', 'Laki-Laki', 'Bogor', '1992-05-29', 'Lebak kantik', 85891939632, 'rikiardiansyah827@yahoo.com', '2019-11-10', 3),
(528, 'iyani', '12346205', 'Erwin Efiyani', 'Perempuan', 'Bogor', '1976-05-17', 'Bogor Raya Residence Blok E4 No. 3', 81380278503, 'erwinefiyani@gmail.com', '2019-11-10', 3),
(529, 'vanda', '12346206', 'Donny Novanda', 'Laki-Laki', 'Bogor', '1976-11-29', 'Taman kenari nusantara blok mg 4 No 26', 81808076130, 'novan_done@yahoo.com', '2019-11-10', 3),
(530, 'Saefu', '12346207', 'Bambang Saefu', 'Laki-Laki', 'Bogor', '1982-06-22', 'Bukit Cimanggu City', 85860080676, 'bambang.saefu@gmail.com', '2019-11-10', 3),
(531, 'ullah', '12346208', 'Muhamad Nawawi Amarullah', 'Laki-Laki', 'Bogor', '1995-06-15', 'Kp. Cisauk RT 003/005 Ds. Situ Ilir Kec. Cibungbulang Kab. Bogor', 85697345988, 'nawawiam06@gmail.com', '2019-11-10', 3),
(532, 'putra', '12346209', 'Dwi Sukma Saputra', 'Laki-Laki', 'Bogor', '1980-12-20', 'Bogor Raya Permai blok FC 4 no 24. Curug,', 85228010207, 'desukma@gmail.com', '2019-11-10', 3),
(533, 'ungan', '12346210', 'Sihol Hasudungan', 'Laki-Laki', 'Jakarta timur', '1983-08-11', 'Jalan suci susukan Ciracas Jakarta timur', 87878645745, 'sihalohosihol@gmail.com', '2019-11-10', 3),
(534, 'ibowo', '12346211', 'Ristanto Handri Wibowo', 'Laki-Laki', 'bandung barat', '1986-03-19', 'perum permata jl zamrud 5 no 5b tanimulya ngamprah', 81572200144, 'hdanri86@gmail.com', '2019-11-10', 3),
(535, 'potan', '12346212', 'Sumitro Pandapotan', 'Laki-Laki', 'Bogor', '1995-05-21', 'Kedung Badak RT 05 RW 01 no 5B Tanah Sareal Kota Bogor', 87808946932, 'sumitrops@gmail.com', '2019-11-10', 3),
(536, 'stari', '12346213', 'Sri Lestari', 'Perempuan', 'Tangerang', '1980-01-15', 'Jl. Raden Fatah No. 8', 81294239178, 'sritari7380@gmail.com', '2019-11-10', 3),
(537, 'iawan', '12346214', 'Angga Putra Kurniawan', 'Laki-Laki', 'Blitar', '1992-03-02', 'Jln Semeru Blk Masjid agung No 5 Kel. Kauman Kec. Kepanjenkidul', 85853379656, 'anggaradiraja10@gmail.com', '2019-11-10', 3),
(538, 'puloh', '12346215', 'Ujang Saepuloh', 'Laki-Laki', 'Sukabumi', '1984-01-02', 'Kp. Cikaret RT. 017 RW. 006 Desa Cikaret Kecamatan Kebonpedes Kabupaten Sukabumi', 85659540944, 'uze.harlino@gmail.com', '2019-11-10', 3),
(539, 'rmadi', '12346216', 'Ghufran Firmadi', 'Laki-Laki', 'Medan', '1994-06-23', 'Jl. Pltp no 42 a komp. Pln paya pasir', 81236257541, 'gfirmadi@gmail.com', '2019-11-10', 3),
(541, 'illah', '12346218', 'Muhammad Nur Fadhlillah', 'Laki-Laki', 'Bandung', '1994-03-15', 'Jl. Parakan Indah II No. 2', 82115016993, 'fadhlillahmuhammad@gmail.com', '2019-11-10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(6) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `nama_penulis` varchar(50) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `tahun` int(4) NOT NULL,
  `jumlah` int(1) NOT NULL,
  `kode_rak` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `nama_buku`, `nama_penulis`, `genre`, `tahun`, `jumlah`, `kode_rak`) VALUES
(1, '13 Kisah Horor Kkn', 'Jan Mandalino', 'horor', 2019, 7, 0),
(2, 'Mereka Ada', 'MWV.MYSTIC', 'horor', 2019, 8, 0),
(3, 'Mutilasi', 'Erby S.', 'horor', 2018, 5, 0),
(4, 'Senjakala', 'Risa Saraswati', 'horor', 2018, 6, 0),
(5, 'Aku Tahu Kapan Kamu Mati', 'Arumi E', 'horor', 2018, 4, 0),
(6, 'Pendidikan Agama Islam & Budi Pekerti ', 'Choeroni, Choeroni, Nurokhim, Muh. Syafrudin', 'pendidikan', 2019, 4, 0),
(7, 'Manajemen Pendidikan Karakter', 'Dr. Bambang Samsul Arifin, M.Si, Dr. H. A. Rusdian', 'pendidikan', 2019, 4, 0),
(8, 'Statistik Pendidikan', 'Drs. Syafril, M.Pd', 'pendidikan', 2019, 5, 0),
(9, 'Pendidikan Karakter Era Milenial', 'Hendarman, IR., M.SC., Ph.D.', 'pendidikan', 2019, 7, 0),
(10, 'Psikologi Pendidikan', 'Mochamad Nursalim, Dr., M.Si., DKK.', 'pendidikan', 2019, 8, 0),
(11, 'Politik Hukum Pidana Ekonomi Indonesia', 'Iza Fadri', 'Politik', 2013, 8, 0),
(12, 'Percakapan Politik', 'A. Sudiarja', 'politik', 2018, 5, 0),
(13, 'Dasar - Dasar Ilmu Politik ', 'Miriam Budiardjo', 'Politik', 2009, 4, 0),
(14, 'Konflik Politik Lokal', 'Dr. Zaman Zaini, M.Si.', 'politik', 2018, 8, 0),
(15, 'Identitas Politik Umat Islam', 'Prof. Dr. Kuntowijoyo', 'Politik', 2018, 8, 0),
(16, 'Sebuah Usaha Melupakan', 'Boy Candra', 'romantis', 2016, 2, 0),
(17, 'Hujan', 'Tere Liye', 'romantis', 2016, 3, 0),
(18, 'Sahabat Kok Romantis?', 'Fiky', 'romantis', 2019, 4, 0),
(19, 'Iih...Romantis!!!', 'Bacem Wong', 'romantis', 2013, 3, 0),
(20, 'Terlalu Cabe Untuk Romantis', 'Bambang Haryadi', 'romantis', 2018, 2, 0),
(21, 'Sejarah Peradaban Islam', 'Badri Yatim', 'sejarah', 2009, 2, 0),
(22, '1000+ Sejarah Yang Masih Menjadi Misteri', 'Yusup Somadinata', 'sejarah', 2019, 6, 0),
(23, 'Guns Of The Elite Forces', 'John Walter', 'sejarah', 2019, 6, 0),
(24, 'Keris dan Katana - Ikhtisar Sejarah', 'Nino Oktorino', 'sejarah', 2019, 9, 0),
(25, 'Dari Puncak Bar-Bar', 'Peter Jackson', 'sejarah', 2019, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(6) NOT NULL,
  `id_pengembalian` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `lama_peminjaman` int(11) NOT NULL,
  `denda_total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `waktu_masuk` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id_kehadiran`, `id_anggota`, `tanggal_masuk`, `waktu_masuk`) VALUES
(10, 278, '2019-11-10', '17:49:13'),
(11, 103, '2019-11-10', '18:29:08'),
(12, 315, '2019-11-10', '18:29:14'),
(13, 311, '2019-11-10', '19:03:33'),
(14, 144, '2019-11-12', '20:26:02'),
(15, 15, '2019-11-12', '20:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_anggota` int(6) NOT NULL,
  `id_buku` int(6) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_anggota`, `id_buku`, `tanggal_masuk`, `tanggal_kembali`) VALUES
(1, 1, 1, '2019-11-12', '2019-11-19'),
(2, 2, 3, '2019-11-12', '2019-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_anggota` int(6) NOT NULL,
  `id_buku` int(6) NOT NULL,
  `real_tanggal_kembali` date NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pustakawan`
--

CREATE TABLE `pustakawan` (
  `id_pustakawan` varchar(6) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `nomor_hp` bigint(13) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`),
  ADD KEY `id_pengembalian` (`id_pengembalian`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_anggota` (`id_anggota`,`id_buku`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`,`id_anggota`,`id_buku`);

--
-- Indexes for table `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`id_pustakawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `id_anggota` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
