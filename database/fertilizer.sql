-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 03:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fertilizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `pupuk`
--

CREATE TABLE `pupuk` (
  `no` int(11) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `manfaat` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pupuk`
--

INSERT INTO `pupuk` (`no`, `jenis`, `nama`, `keterangan`, `manfaat`, `gambar`) VALUES
(1, 'Organik', 'Pupuk Kandang', 'Pupuk kandang adalah salah satu jenis pupuk organik yang sering digunakan karena mudah didapatkan dan murah. Sumber pupuk ini berasal dari kotoran hewan ternak maupun unggas seperti sapi, kerbau, kambing, domba, kuda, dan ayam.Pupuk kandang memiliki dua jenis berdasarkan suhu dan proses penguraian, yaitu pupuk dingin dan pupuk panas', 'Jenis pupuk ini efektif untuk menyuburkan tanah dan tumbuhan karena mengandung banyak unsur hara atau nutrisi makro seperti fosfor, nitrogen, dan kalium, serta unsur mikro seperti magnesium, sulfur, kalsium, besi, natrium, molibdenum, dan tembaga. ', 'kandang.png'),
(2, 'Organik', 'Pupuk Hijau', 'Pupuk hijau adalah jenis pupuk organik yang berbahan dasar dari tanaman atau tumbuhan hijau. Tanaman yang dimanfaatkan sebagai pupuk hijau bisa berasal dari tanaman hasil sisa panen atau tanaman biasa yang dimanfaatkan sebagai pupuk. Jenis tanaman apapun sebenarnya bisa dijadikan sumber pupuk hijau. Namun, jenis kacangan-kacangan lebih sering digunakan karena tanaman ini memiliki kandungan nitrogen yang cendering lebih tinggi dibandingkan dengan jenis tanaman lainnya. Selain itu, kacang-kacangan juga mudah terurai sehingga penyediaan hara menjadi lebih cepat', 'Efektif untuk membantu meningkatkan kualitas dan produktivitas tanah sebagai media tanam tumbuhan', 'hijau.png'),
(3, 'Organik', 'Pupuk Kompos', 'Pupuk kompos terbentuk dari sisa bahan organik yang berasal dari tumbuhan, hewan, dan limbah organik secara alami dengan cara dekomposisi atau fermentasi. Materi yang diuraikan melalui proses biologis ini melibatkan bantuan mikroorganisme (jamur, bakteri, atau kapang) dan makroorganisme (cacing tanah)', 'Kandungan organik yang merupakan proses pengomposan di tanah juga membantu menjaga kualitas air dan tanah. Kompos memperbaiki struktur tanah dengan meningkatkan kandungan bahan organik tanah dan akan meningkatkan kemampuan tanah untuk mempertahankan kandungan air tanah', 'kompos.png'),
(4, 'Organik', 'Pupuk Humus', 'Humus adalah unsur organik yang berasal dari proses dekomposisi atau pelapukan dari daun-daunan dan ranting tanaman yang membusuk. Selain dedaunan dan ranting pohon yang berjatuhan, untuk membuat humus diperlukan bahan baku seperti limbah dari pertanian dan peternakan, makanan, kayu, atau sampah rumah tangga', 'Humus dapat membantu meningkatkan kadar air tanah, mencegah erosi, serta mempercepat proses penghancuran senyawa beracun dalam tanah.', 'humus.png'),
(7, 'Organik', 'Pupuk Serasah', 'Pupuk serasah adalah jenis pupuk alami yang memiliki senyawa berbasis karbon yang terbuat dari limbah organik nabati atau komponen tanaman yang sudah tidak lagi terpakai dan berubah warna dan bentuk, seperti jerami, sabut kelapa, dan rumput. Pupuk ini juga disebut sebagai pupuk penutup tanah karena dapat diletakkan di atas permukaan tanah', 'Selain dapat membantu menyuburkan tanah, pupuk serasah juga bermanfaat untuk menjaga kelembapan dan tekstur tanah agar tetap baik dan mencegah penyakit pada tanaman akibat air hujan.', 'serasah.png'),
(8, 'Organik', 'Pupuk Hayati', 'Pupuk hayati atau pupuk mikrobiologis (biofertilizer) adalah pupuk yang bekerja dengan memanfaatkan organisme hidup. Pupuk ini bukanlah pupuk biasa yang secara langsung meningkatkan kesuburan tanah dengan menambahkan nutrisi ke dalam tanah. Meskipun berdasarkan elemen pembentuknya tidak termasuk golongan organik, karena melalui proses rekayasa atau buatan, banyak orang menganggap pupuk ini sebagai pupuk organik', 'Fungsi dari pupuk ini antara lain untuk membantu memperbaiki struktur tanah dan memproduksi nutrisi bagi tanah dan tanaman, serta memangkas pertumbuhan parasit bagi tanaman.', 'hayati.png'),
(9, 'Organik', 'Pupuk Organik Cair', 'Larutan dari pembusukan bahan- bahan organik yang berasal dari sisa tanaman, kotoran hewan, dan manusia yang kandungan unsur haranya lebih dari satu unsur. Pupuk organik cair biasanya digunakan sebagai pelengkap dengan cara disemprotkan ke daun atau disiramkan pada permukaan tanah dekat tanaman.', 'Pupuk Organik Cair', 'cair.png'),
(10, 'Organik', 'Pupuk Guano', 'Pupuk guano adalah jenis pupuk organik yang dihasilkan dari kotoran kelelawar atau guano. Kotoran tersebut mengendap lama di dalam gua dan bercampur dengan tanah serta bakteri pengurai di sarang kelelawar', 'Memperbaiki dan memperkaya struktur tanah karena 40% pupuk ini mengandung material organik. Terkandung bakteria dan mikrobiotik flora yang bermanfaat bagi pertumbuhan tanaman dan sebagai fungisida alami', 'guano.png'),
(11, 'Non Organik', 'Pupuk NPK Mutiara', 'Pupuk NPK Mutiara ini memiliki dua unsur yang  sangat bermanfaat bagi tanaman, yaitu unsur Mikro  dan makro dan pupuk ini juga termasuk dalam  kategori pupuk majemuk.‭Pupuk ini berbentuk ‬ granul (butiran) berwarna biru langit dan mudah  larut dalam air. Pupuk NPK Mutiara dapat  digunakan pada semua jenis tanaman, seperti  tanaman sayuran, tanaman pangan maupun tanaman  perkebunan dan industri. Pupuk NPK Mutiara bisa  diaplikasikan sebagai pupuk dasar maupun pupuk  susulan. ', 'Pupuk NPK MutiaraManfaat pKualitas prill, Mengandung hara yang seimbang di setiap butiran pupuknya, Nitrogen dalam bentuk Amonium dan Nitrat, Hara-hara dengan cepat akan tersedia, Penanganan dan cara aplikasi yang mudah dan merata, Kualitasnya sudah terbukti rendah debu', 'npkmutiara.png'),
(12, 'Non Organik', 'Pupuk NPK BASF', 'Pupuk NPK BASF adalah salah satu jenis pupuk  majemuk yang mengandung sedikitnya 5 unsur hara  makro dan mikro yang sangat dibutuhkan tanaman.  Pupuk ini berbentuk butiran granul berwarna biru  pudar yang biasanya dikemas dalam kemasan  plastik. Pupuk NPK BASF dibuat menggunakan  proses Odda melalui pelarutan batuan fosfat  menggunakan asam nitrat. Pupuk ini memiliki  khasiatnya yang cukup baik bagi pertumbuhan  tanaman dengan reaksi yang cukup cepat. ', 'Penggunaan NITROPHOSKA memberikan jaminan pemberian unsur Nitrogen, phospat dan kalium yang seimbang terhadap tanaman, Kekurangan salah satu unsur, N,P dan K  akan mempengaruhi secara serius terhadap hasil produksi yang dicapai, Segera setelah diaplikasikan, NITROPHOSKA akan mudah diserap oleh tanaman. Dengan menggunakan pupuk lain, lebih dari 30% Nitrogen hilang disebabkan penguapan dan pencucian, Penggunakan pupuk NITROPHOSKA akan mengurangi hilangnya Nitrogen (N), Pemberian pupuk NITROPHOSKA akan menghemat waktu, dan merupakan pemupukan yang lebih efesien', 'npkbasf.png'),
(13, 'Non Organik', 'Pupuk NPK Phonska', 'Pupuk ini sangat mudah larut dalam air  (higroskopis ) sehingga tanaman begitu  sangat mudah untuk menyerap nutrisi  yang diberikan oleh pupuk tersebut.  Pupuk ini memiliki bentuk bulat kecil  atau  butiran (granul) dan berwarna  merah muda juga kadang berwarna  orange. ‭Pupuk NPK Phonska tidak dijual ‬ bebas dan didistribusikan secara tertutup  sehingga hanya dijual ke petani yang  tergabung dalam kelompok tani yang  telah terdaftar.‭ ‬', 'Batang tanaman akan lebih kuat sehingga tanaman tidak mudah roboh, Dapat memacu pertumbuhan generatif sekaligus vegetatif, Memperlancar proses pembentukan pati sekaligus gula, Dapat memicu tumbuhnya akar tanaman, Tanaman lebih sehat dan lebih hijau, Daya tahan tanaman pada saat musim kemarau pun semakin meningkat, Dapat memicu pembentukan buah dan bunga, Mampu memperbesar umbi, buah dan juga biji, Kandungan protein dalam tanaman semakin meningkat', 'npkphonska.png'),
(14, 'Non Organik', 'Pupuk SP36', 'Pupuk SP36 bersifat tidak higroskopis  (tidak mudah menghisap air) sehingga  dapat disimpan dalam waktu yang cukup  lama, tetapi mudah larut dalam air. Pupuk  SP36 terbuat dari fosfat alam dan sulfat.  Berbentuk butiran (granular) dan berwarna  abu-abu. Sifatnya agak sulit larut dalam air  dan bereaksi lambat sehingga sering  digunakan sebagai pupuk dasar, dapat juga  digunakan untuk pemupukan susulan.  Reaksi kimianya tergolong netral, tidak  higroskopis dan bersifat membakar. Pupuk  ini memiliki kandungan Phosphor yang  lebih rendah, dan dapat juga diaplikasikan  sebagai pupuk susulan dengan cara  ditaburkan disekeliling tanaman.  ', 'Tidak higroskopis,  Mudah larut dalam air,  Sebagai sumber unsur hara Fosfor bagi tanaman,  Memacu pertumbuhan akar dan sistim perakaran yang baik,  Memacu pembentukan bunga dan masaknya buah/biji,  Mempercepat panen,  Memperbesar prosentase terbentuknya bunga menjadi buah/biji, Menambah daya tahan tanaman terhadap gangguan hama, penyakit dan kekeringan', 'sp36.png'),
(15, 'Non Organik', 'Pupuk Urea', 'Pupuk Urea adalah pupuk kimia yang mengandung Nitrogen (N) berkadar tinggi. Unsur Nitrogen  merupakan zat hara yang sangat diperlukan  tanaman. Pupuk urea berbentuk butir-butir Kristal  atau butiran tidak berdebu berwarna putih dan  merah muda. Pupuk urea dengan rumus kimia NH2  CONH2 merupakan pupuk yang mudah larut dalam  air dan sifatnya sangat mudah menghisap air  (higroskopis), karena itu sebaiknya disimpan di  tempat yang kering dan tertutup rapat.  ', 'Membuat Daun tampak lebih segar, hijau dan rimbun, Meningkatkan jumlah anakan tanaman, Mempercepat pertumbuhan tunas dan tinggi tanaman, Mempercepat proses fotosintesis, Memacu pertumbuhan tanaman, Mempercepat pertumbuhan akar, Meningkatkan unsur Nitrogen dalam tanah, Meningkatkan hasil panen.', 'urea.png'),
(16, 'Non Organik', 'Pupuk ZA', 'Pupuk ZA adalah pupuk nitrogen berkadar rendah,  kandungan nitrogen pada pupuk ZA lebih rendah  daripada pupuk urea. Pupuk ZA mengandung 2  unsur hara, yaitu nitrogen dalam bentuk amonium  sebesar 20?n belerang sebesar 23%. Pupuk ini  berbentuk kristal dan berwarna putih atau orange.  Pupuk ZA mudah larut dalam air, tidak higroskopis  (menghisap air), senyawa kimianya stabil sehingga  tahan disimpan dalam waktu yang lama. Pupuk ZA  dapat aplikasikan pada semua jenis tanaman, baik  sebagai pupuk dasar maupun pupuk susulan.‭ ‬', 'Membantu pembentukan butir hijau daun sehingga daun menjadi lebih hijau, Menambah kandungan protein dan vitamin hasil panen, Meningakatkan jumlah anakn yang menghasilkan (pada tanaman padi), Berperan penting pada proses pembulatan zat gula, Memperbaiki warna, aroma, dan kelenturan daun tembakau ( khusus pada tembakau omprongan), Memperbaiki aroma, mengurangi penyusutan selama penyimpangan, memperbesar umbi bawang merah dan bawang putih', 'za.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pupuk`
--
ALTER TABLE `pupuk`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pupuk`
--
ALTER TABLE `pupuk`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
