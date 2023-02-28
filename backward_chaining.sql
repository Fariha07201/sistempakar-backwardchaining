-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 11:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backward_chaining`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kode`, `nama_gejala`) VALUES
(1, 'G01', 'Sendi terasa sakit'),
(2, 'G02', 'Kesulitan berjalan'),
(3, 'G03', 'Rasa nyeri yang hebat disertai pembengkakan, panas, muncul kemerahan pada sendi'),
(4, 'G04', 'Sekitar sendi tampak bersisik, terkelupas, gatal'),
(5, 'G05', 'Pusing'),
(6, 'G06', 'Sakit kepala'),
(7, 'G07', 'Mudah lelah'),
(8, 'G08', 'Jantung berdebar'),
(9, 'G09', 'Sakit dada'),
(10, 'G10', 'Perubahan pandangan mata tampak buram'),
(11, 'G11', 'Telinga berdenging'),
(12, 'G12', 'Merah disekitar dubur'),
(13, 'G13', 'Adanya benjolan disekitar anus serta nyeri jika disentuh'),
(14, 'G14', 'Adanya pendarahan setelah BAB diikuti rasa nyeri'),
(15, 'G15', 'Keluar lendir setelah BAB'),
(16, 'G16', 'Nyeri'),
(17, 'G17', 'Kaku pada sendi'),
(18, 'G18', 'Bengkak pada sendi'),
(19, 'G19', 'Kulit kemerahan dibagian sendi meradang'),
(20, 'G20', 'Ruang gerak terganggu'),
(21, 'G21', 'Tengkuk pegal-pegal'),
(22, 'G22', 'Adanya bintik putih diatas kelopak mata'),
(23, 'G23', 'Sakit kuning'),
(24, 'G24', 'Sakit perut'),
(25, 'G25', 'Diare'),
(26, 'G26', 'Mual dan muntah'),
(27, 'G27', 'Bengkak pada perut tangan wajah'),
(28, 'G28', 'Kulit terasa gatal'),
(29, 'G29', 'Warna urine gelap'),
(30, 'G30', 'Tinja pucat atau keputihan'),
(31, 'G31', 'lelah letih lesu'),
(32, 'G32', 'Mudah memar'),
(33, 'G33', 'Kebingungan'),
(34, 'G34', 'Penurunan kesadaran'),
(35, 'G35', 'Kehilangan selera makan dan penurunan berat badan'),
(36, 'G36', 'Bau mulut'),
(37, 'G37', 'Sensasi mengganjal di kerongkongan terutama saat menelan'),
(38, 'G38', 'Mudah kenyang'),
(39, 'G39', 'Sering bersendawa'),
(40, 'G40', 'Sakit tenggorokan '),
(41, 'G41', 'Batuk kronis tanpa dahak terutama malam hari');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_penyakit` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama_penyakit`, `keterangan`) VALUES
(1, 'P01', 'Asam Urat', 'Asam urat adalah asam yang berbentuk kristal-kristal yang merupakan hasil akhir dari metabolisme purin (bentuk turunan nukleoprotein), yaitu salah satu komponen asam nukleat yang terdapat pada inti sel-sel tubuh. \r\nPenanganan yang dapat digunakan sebagai pencegahan meliputi:\r\n1. Mengatur pola makan\r\nKurangi makanan yang mengandung purin tinggi seperti hati, ginjal, otak, jantung, paru, jeroan, udang, remis, kerang, sarden, ekstrak daging (abon, dendeng), ragi (tape), kacangkacangan, kembang kol, bayam, buncis, jamur, daun singkong, daun pepaya, kangkung.\r\n2. Menghindari alkohol\r\n3. Banyak minum air\r\n4. Menurunkan berat badan dengan olahraga'),
(2, 'P02', 'Tekanan Darah Tinggi', 'Hipertensi adalah kondisi dimana tekanan darah sistolik lebih tinggi dari 140 mmHg atau tekanan darah diastolik yang lebih tinggi dari 90 mmHg ataupun keduanya. Hipertensi adalah suatu penyakit yang tidak menimbulkan gejala (asimptomatik), sehingga sering ditemukan secara kebetulan. Penyakit hipertensi sering disebut sebagai “silent killer” karena tidak terdapat tanda-tanda yang dapat dilihat dari luar selama bertahun-tahun dan kemudian bisa menyebabkan stroke dan berbagai penyakit jantung.\r\nTatalaksana / penanganan hipertensi ada dua yaitu :\r\n1. Modifikasi gaya hidup, meliputi :\r\na. Menurunkan berat badan (memelihara berat badan normal (indeks massa tubuh 18,5 – 24,5 kg/m2)\r\nb. Diet (menkonsumsi makanan kaya buah buahan, sayuran, rendah lemak)\r\nc. Diet rendah garam (2,4 gram natrium atau 6 gram garam per hari)\r\nd. Olahraga (aerobic ϐisik secara teratur, misalnya jalan cepat 30 menit per hari, setiap hari.\r\n\r\n2. Terapi Farmakologis :\r\na. Pengobatan untuk mengontrol tekanan darah menjadi normal. Terapi farmakologis dengan obat antihipertensi yang dianjurkan oleh JNC VII yaitu diuretika, terutama jenis thiazide atau aldosteron antagonis, beta blocker, calcium chanel blocker atau calcium antagonist, \r\nAngiotensin Converting Enzyme Inhibitor (ACE I), Angiotensin II Receptor Blocker atau AT1 receptor antagonist / blocker (ARB).\r\nb. Pengobatan hipertensi dapat juga dilakukan dengan \r\nramuan jamu saintiϐik dalam bentuk sediaan rebusan simplisia. Ramuan tersebut tersusun atas daun kumis kucing, seledri, pegagan, kunyit, temulawak, meniran.'),
(3, 'P03', 'Wasir', 'Hemoroid atau dikenal juga dengan ambeien/wasir merupakan salah satu jenis penyakit yang sering dijumpai di \r\nmasyarakat, dan telah ada sejak zaman dahulu. Plexus hemoroid merupakan jalinan pembuluh darah normal yang terletak pada bagian ujung rektum. Gangguan pada \r\nhemoroid terjadi ketika plexus ini membesar. Pada dasarnya hemoroid bukan merupakan keadaan patologik, hanya apabila hemoroid ini menyebabkan keluhan atau penyulit, maka diperlukan tindakan.\r\nPenanganan pada penyakit ini seperti kebanyakan penyakit-penyakit yang berhubungan dengan faktor resiko gaya hidup, timbulnya hemoroid juga dapat \r\ndicegah. Secara khusus, tips-tips untuk mencegah hemoroid antara lain : hindari terlalu banyak duduk, jangan menahan \r\nkencing dan buang air besar, jangan suka menggosok dan menggaruk dubur berlebihan, dan jangan mengejan / mengedan secara berlebihan saat buang air besar.'),
(4, 'P04', 'Radang Sendi', 'Osteoartritis (OA) merupakan penyakit degeneratif pada sendi / radang sendi.\r\nPada umumnya penderita OA berusia di atas 40 tahun dan populasi bertambah berdasarkan peningkatan usia. Osteoartritis adalah gangguan yang penyebabnya multifaktorial antara lain usia, mekanik, genetik, hormonal dan faktor kebudayaan. Penyakit ini merupakan penyebab utama gangguan muskuloskeletal di seluruh dunia dan \r\nmenjadi penyebab ketidakmampuan ϐisik terbesar kedua setelah penyakit jantung iskemik untuk usia diatas 50 tahun.\r\nPenanganan untuk penyakit ini adalah Terapi fisik meliputi latihan perbaikan lingkup gerak sendi, penguatan otot-otot (quadrisep/pangkal paha) dan alat bantu gerak sendi (assistive devices for ambulation): pakai tongkat pada sisi yang sehat. Kemudian Terapi okupasi meliputi proteksi sendi dan konservasi energi, menggunakan splint dan alat bantu gerak sendi untuk aktivitas fisik sehari-hari.'),
(5, 'P05', 'Kolesterol Tinggi', 'Hiperkolesterolemia / kolesterol tinggi adalah kondisi medis yang ditandai dengan peningkatan nilai kolesterol di dalam darah melebihi batas normal. Pada kondisi tersebut apabila terjadi dalam jangka panjang menyebabkan terbentuknya gumpalan lemak dalam pembuluh darah sehingga dapat berisiko aterosklerosis. Aterosklerosis berupa penyempitan pembuluh darah terutama di jantung, otak, ginjal, dan \r\nmata disebabkan oleh karena kondisi tingginya kolesterol dalam darah. Pada otak, aterosklerosis menyebabkan stroke, sedangkan pada jantung menyebabkan penyakit jantung koroner.\r\nKeberhasilan menurunkan hiperkolesterolemia diutamakan dengan melakukan perubahan perilaku mengarah ke pola hidup sehat (non medikamentosa) namun dapat juga disertai dengan penggunaan obat-obatan (medikamentosa). Bukti penurunan morbiditas dan mortalitas kardiovaskular yang berhubungan dengan intervensi gaya hidup tidak sekuat bukti yang berhubungan dengan intervensi farmakologis. '),
(6, 'P06', 'Gangguan Fungsi Hati', 'Pada gangguan fungsi hati biasanya terjadi kelainan enzim.Sel hati banyak sekali menghasilkan enzim antara lain: laktat \r\ndehidrogenase, serum transaminase (SGPT, SGOT), gamma glutamyl transpeptidase (γGT), dan alkali phosphatase (ALP). Apabila terjadi kerusakan sel atau peningkatan permeabilitas membran sel, enzim akan banyak keluar ke ruang ekstraseluler \r\ndan dapat digunakan sebagai sarana diagnosis.\r\nPenanaganan yang dapat dilakukan adalah Istirahat cukup dan hindari stres, Menghindari makanan yang berminyak dan berlemak, Menghentikan konsumsi alkohol dan obat yang menjadi pemicu gangguan fungsi hati, Diet dengan gizi seimbang.'),
(7, 'P07', 'Gangguan Lambung', 'Dispepsia / Gangguan Fungsi Lambung merupakan rasa tidak nyaman yang \r\nberasal dari daerah perut bagian atas. Rasa tidak nyaman tersebut dapat berupa salah satu atau beberapa gejala berikut yaitu: nyeri epigastrium, rasa terbakar di epigastrium, rasa penuh setelah makan, \r\ncepat kenyang, rasa kembung pada saluran cerna atas, mual, muntah, dan sendawa. Infeksi Helicobacter pylori (Hp) saat ini dipandang sebagai salah satu faktor penting dalam menangani dispepsia, \r\nbaik organik maupun fungsional, sehingga pembahasan mengenai dispepsia perlu dihubungkan dengan penanganan infeksi Hp.\r\nTerapi Non Farmakologis, meliputi :\r\n a. Diet (rendah lemak, menghindari makan terlalu banyak di malam hari dan membagi asupan makanan sehari-hari menjadi beberapa makanan kecil).\r\n b. Menghindari stres.');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(10) NOT NULL,
  `kode_penyakit` varchar(10) NOT NULL,
  `daftar_gejala` text NOT NULL,
  `tanaman_herbal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `kode_penyakit`, `daftar_gejala`, `tanaman_herbal`) VALUES
(1, 'P01', 'G01 G02 G03 G04', 'TH01 TH02 TH03 TH04 TH05 TH06'),
(2, 'P02', 'G05 G06 G07 G08 G09 G10 G11', 'TH07 TH08 TH09 TH10 TH11'),
(3, 'P03', 'G12 G13 G14 G15', 'TH10 TH11 TH12 TH04 TH05 TH06'),
(4, 'P04', 'G16 G17 G18 G19 G20', 'TH13 TH09 TH14 TH04 TH05 TH06'),
(5, 'P05', 'G06 G21 G22', 'TH15 TH16 TH17 TH01 TH04 TH05 TH06'),
(6, 'P06', 'G23 G24 G25 G26 G27 G28 G29 G30 G31 G32 G33', 'TH18 TH04 TH05'),
(7, 'P07', 'G36 G37 G38 G39 G40 G41', 'TH19 TH20 TH21 TH05');

-- --------------------------------------------------------

--
-- Table structure for table `tanaman_herbal`
--

CREATE TABLE `tanaman_herbal` (
  `id` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `tanaman_herbal` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanaman_herbal`
--

INSERT INTO `tanaman_herbal` (`id`, `kode`, `tanaman_herbal`, `keterangan`) VALUES
(1, 'TH01', 'Herba Tempuyung', ''),
(2, 'TH02', 'Kayu Secang', ''),
(3, 'TH03', 'Daun Kepel', ''),
(4, 'TH04', 'Rimpang Temulawak', ''),
(5, 'TH05', 'Rimpang Kunyit', ''),
(6, 'TH06', 'Meniran', ''),
(7, 'TH07', 'Seledri', ''),
(8, 'TH08', 'Pegagan', ''),
(9, 'TH09', 'Daun Kumis Kucing', ''),
(10, 'TH10', 'Daun Ungu', ''),
(11, 'TH11', 'Daun Duduk', ''),
(12, 'TH12', 'Daun Iler', ''),
(13, 'TH13', 'Biji Adas', ''),
(14, 'TH14', 'Rumput Bolong', ''),
(15, 'TH15', 'Daun Jati Cina', ''),
(16, 'TH16', 'Daun Jati Belanda', ''),
(17, 'TH17', 'Teh Hijau', ''),
(18, 'TH18', 'Herba Jombang', ''),
(19, 'TH19', 'Rimpang Jahe', ''),
(20, 'TH20', 'Daun Sembung', ''),
(21, 'TH21', 'Jinten Hitam', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
