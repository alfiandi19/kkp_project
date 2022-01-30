-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2022 pada 00.26
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Muhamad Ihsan', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1352025327_avatar.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
(8, 'Ipan Akbar', 'gamehd74@gmail.com', '085778440343', 'Jl. Utama Selatan 7 No.21 RT.007/04 Cengkareng Barat, Cengkareng, Jakarta Barat 11730', 'c66b39bb880c18414475186365700f5e'),
(9, 'Samuel', 'samuel123@gmail.com', '08577899944', 'Jl. Pegadungan Utara No.11', 'e6fb448feb2fa877aab63b3713027775');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_alamat` text NOT NULL,
  `invoice_provinsi` varchar(255) NOT NULL,
  `invoice_kabupaten` varchar(255) NOT NULL,
  `invoice_kurir` varchar(255) NOT NULL,
  `invoice_berat` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_total_bayar` int(11) NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_resi` varchar(255) NOT NULL,
  `invoice_bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Tidak Berkategori'),
(10, 'Handphone dan Tablet'),
(11, 'Elektronik'),
(12, 'Rumah Tangga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_kategori` int(11) NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_jumlah` int(11) NOT NULL,
  `produk_berat` int(11) NOT NULL,
  `produk_foto1` varchar(255) DEFAULT NULL,
  `produk_foto2` varchar(255) DEFAULT NULL,
  `produk_foto3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_nama`, `produk_kategori`, `produk_harga`, `produk_keterangan`, `produk_jumlah`, `produk_berat`, `produk_foto1`, `produk_foto2`, `produk_foto3`) VALUES
(14, 'Ringlight RGB 26CM Tripod 2,1M Paket Komplit TikTok Live Blog', 10, 109900, '<p>\r\n\r\nSpesifikasi:Ringlight RGBW LED SMD 5050 RGBW<br>Warna lampu: RGB + White +Cool<br>Mode kontrol<br>Sertifikasi:ROHS<br><br>RING LIGHT SUDAH INCLUDE PHONE HOLDER<br><br>Paket termasuk:<br>1x Ringlight LED RGB SET<br>1x Tripod 2.1 METER\r\n\r\n<br></p>', 200, 1000, '764399996_20211103_1635928160.png', '', ''),
(15, 'SmartWatch Anti Air Support Android IOS Original 100%', 10, 89000, '<p>\r\n\r\nSmart Watch Anti Air Support Android IOS Original 100%<br><br>fitur :<br>Step Count<br>Calories<br>Mileage/Moving distance<br>Heart Rate Monitor<br>Blood Pressure monitoring<br>Blood Oxygen monitoring<br>Motor pattern<br>sms reminder<br>Sleep monitoring<br>Remote Photography<br>Looking for bracelets<br>Sedentary remind<br>Smart alarm clock<br>Raise hand bright screen<br>call reminder<br>WhatsAPP notif<br>find my phone<br>social APP messages<br>WeatherDial Push<br><br>Spesifikasi:<br><br>-Baru Gelang metode pengisian cepat-rilis dilepas gelang desain dapat diisi dengan mencolokkan USB antarmuka menghilangkan kesulitan membawa kabel pengisian dan pengisian berdiri.<br>-Smart Asisten : Tangan dapat memantau langkah, kalori, detak jantung, jarak, kualitas tidur. dari hari ke hari.<br>Pada saat yang sama, dapat terhubung ke ponsel pintar untuk melihat informasi dari jarak jauh mengambil gambar,<br>mengambil ponsel dan lain bijaksana dan fungsi yang nyaman untuk membuat hidup Anda lebih nyaman.<br>-Praktis : Terus mengikuti Anda intensitas latihan dan kondisi fisik untuk menyesuaikan rencana kebugaran di waktu yang tepat.<br>-Mode OLahraga : Ponsel ini memiliki berbagai olahraga mode dibangun di, tidak perlu menambahkan di telepon, memakai gelang ini diatas untuk berolahraga, gelang dapat merekam semua data olahraga anda.<br>Bahan ramah kulit<br>Gelang gelang terbuat dari ringan ramah kulit lembut TPU, yang mengadopsi desain ringan, tidak ada perasaan dipakai.<br>Pemantauan denyut jantung<br>Dilengkapi dengan pergelangan tangan optical sensor detak jantung, masukkan tes denyut jantung antarmuka untuk beberapa detik, tampilan saat ini denyut jantung hasil pengukuran.<br><br>Nama Item: Jam Tangan Pintar<br>Bahan: TPU<br>Kapasitas Baterai: 150mAh (Termasuk)<br>Fitur: Tahan aus, Monitor Tidur, Jam<br>Ukuran Layar: 4.15cm x 3.63cm/1.63\" x 1.43\" (Perkiraan)<br><br>Catatan:<br>Karena perbedaan pengaturan layar dan cahaya, warna item mungkin sedikit berbeda dari gambar.<br>Perkenankan sedikit perbedaan dimensi karena pengukuran manual yang berbeda.<br><br>Paket termasuk:<br>1 x Smartwatch<br>1 x Manual\r\n\r\n<br></p>', 500, 500, '1819182066_20211102_1635836483.png', '', ''),
(16, 'Kamera Cctv V16A Ip Wifi Hd 1080p Panoramic 360 Derajat Bentuk Lampu Bohlam', 11, 269000, '<p>\r\n\r\n\r\n\r\nKamera Cctv Ip Wifi Hd 1080p Panoramic 360 Derajat Bentuk Lampu Bohlam Dengan Night Vision<br><br>IP CAMERA WIFI BENTUK LAMPU,INSTALASI TANPA ADAPTOR<br><br>✓ APLIKASI V380,V380 pro<br>✓ AUDIO 2 ARAH JELAS<br><br>LAMPU BISA MENYALA SEPERTI LAMPU PADA UMUMNYA<br><br>FULL HD 2MP<br><br>Panoramic camera bulb cam CCTV spy camera / kamera bohlam pengintai<br><br>Amankan Rumah, Toko, Kantor, Pabrik, Gudang, dll, 24jam setiap hari.<br>Selama Smartphone anda ada internet, semua dapat di pantau setiap saat.<br><br>Fitur menarik dibanding camera lainya :<br>1. Komunikasi dua arah.<br>2. Pemasangan Super Mudah - hanya perlu soket bohlam<br>3. Nyala kan Motion Detector dan dapatkan notifikasi-nya<br>4. Tidak perlu decoder. Data tersimpan langsung di Kamera<br>dengan Mengunakan MicroSD card (not included)<br>5. 360 derajat Fish-eye view yang tampak dari atas<br>6. Pengaturan lampu on/off jarak jauh<br><br>Untuk memulai mengunakan hanya perlu :<br>1. Soket Bohlam<br>2. Wi-Fi yang jangkauannya mencapai titik posisi camera yang dipasang<br>3. Install apps-nya Android atau ios<br><br>Spesifikasi Lengkap:<br>- 360 degree vision, fish-eye view<br>- Resolution 1080P / 2mp<br>- Audio: Two way intercom<br>- Motion Detection Function<br>- Up to Six (6) users simultaneous viewing<br>- Support HD resolution on Smartphone and Tablet (iOS and Android)<br>- Support up to 64 GB Micro SD Card (not included)<br>- Total wireless installation (tidak perlu kabel sama sekali)<br><br>Aplikasi V380 / V380 pro Mudah untuk menyandingkan ke Smartphone anda\r\n\r\n\r\n\r\n<br></p>', 100, 1000, '1516032712_20210928_1632800708.png', '', ''),
(17, 'Hopestar T5 Mini Premium Wireless Portable Bluetooth Speaker Water Resist Original New', 11, 79000, '<p>\r\n\r\n</p><p>Hopestar T5 Mini Premium Wireless Speaker Bluetooth Original New</p><p>Produk bergaransi Original, Jika tidak Original, Dana akan dikembalikan dan Produk akan kami berikan kepada Customer secara gratis.<br>Garansi 6 bulan (Non-human error)</p><p>Kelebihan :<br>- Connect 2 Speakers Wirelessly (TWS)<br>- Handsfree Call, Talk Through The Speaker<br>- Mini Design</p><p>Spesifikasi :<br>Merek: HOPESTAR<br>Model: T5 Mini<br>Bahan: plastik dan logam<br>Version: 4.2<br>Voltage: DC 5 V<br>Output: 3 W<br>Battery: 500 mAh<br>Frequency Range: 90Hz-20KHz<br>Music Play Time: 2.5-3 Hours<br>Dimensions: 92 x 66 x 86 mm<br>Function: TF/SDCard/USB/FM</p><p>Paket sudah termasuk :<br>1 x Hopestar T5 Mini<br>1 x Charging Cable<br>1 x AUX Cable<br>1 x Manual</p>\r\n\r\n<br><p></p>', 50, 1000, '1197118881_4120_20201012_1602515408.jpg', '', ''),
(18, 'Lampu Taman 100 LED Solar Tenaga Surya Dengan Sensor Gerak', 11, 34900, '<p>\r\n\r\n0 LED Solar Outdoor Lamp Specification :<br><br>Product model: W-100LED<br>LED Specification: 100SMD2835 0.2W/PCS<br>Material: PC+ABS<br>Solar Panel Spec: Monocrystalline Silicone 5.5V 1.43W<br>Battery: 18650 Lithium Battery 3.7V 2200mAh with Charge and Discharge protection<br>Output Power: 3.2V / 7W<br>Charging Time: Under Sunlight 6 Hours<br>PIR Induction Angle: 120 Degrees<br>Sensing Distance: 8-10 Meters<br>Product Size: 13x9.5x5 cm<br>Packing Size: 13.5x9.5x8 cm<br>Product Weight: 200Grams<br><br>Features<br>- 3 Lighting Mode<br>- Proximity Sensing Sensor<br>- 100LED 4 Angle Wide Lamp<br>- Waterproof Design<br>- High Capacity Battery ( Last 12 Hours )<br><br>Lampu ini dilengkapi dengan baterai 2200mah<br>- Lampu akan mengecas secara otomatis menggunakan sinar matahari, jadi tidak perlu dicas atau diganti baterainya<br>- Lampu akan menyala secara otomatis saat gelap ( jika tidak mendeteksi cahaya ) dan akan mati ketika terang ( ada cahaya matahari ) dan mengecas sendiri<br>- Daya tahan baterai pada lampu dapat menyala semalaman non stop sampai pagi , kemudian akan mengecas dengan cahaya matahari<br>- Lampu ini juga dilengkapi dengan sensor pendeteksi gerakan, Bisa gunakan mode pendeteksi gerakan agar lampu menyala terang jika mendeteksi gerakan, cocok untuk digunakan juga sebagai sistem keamanan rumah.<br>- Tanpa perlu dilakukan instalasi kabel atau apapun, hanya perlu tempelkan lampu ke dinding, dan biarkan lampunya mengecas dan menyala sendiri secara otomatis<br>- Menghemat penggunaan listrik dirumah<br>Lampu ini dilengkapi dengan 3 Mode<br>- Mode 1 : Lampu OFF ( Tidak menyala ) , hanya akan menyala jika mendapati gerakan orang ( Akan menyala selama 15 detik ) kemudian kembali ke mode OFF<br>- Mode 2 : Lampu ON ( Menyala dengan tingkat keterangan kecil ) semalaman, Jika mendapati gerakan, lampu akan menyala full terang selama 15 detik, kemudian kembali ke mode awal<br>- Mode 3 : Lampu menyala dengan tingkat keterangan sedang semalaman, Mode deteksi gerakan tidak aktif\r\n\r\n<br></p>', 100, 500, '738746369_20210929_1632903349.png', '', ''),
(19, 'Alat penggiling bumbu Daging food chopper Grinder dengan 2 mode giling', 12, 149000, '<p>\r\n\r\nAlat penggiling bumbu Daging food chopper dengan 2 mode giling<br><br>Membuat masakan menjadi lebih mudah Stainless steel blade<br>Multifungsi bisa digunakan sebagai serut es, jahe grinder, whisk, smoothie dan minuman, bawang grinder, pencincang daging, pencincang sayur<br><br>1. Mesin Penggiling menggunakan mata pisau yang tajam memudahkan kita mengelolah makanan/daging lebih halus.<br>2. Dengan tenaga yang kuat dan besar kekuatan ganda<br>3. Menggiling/mencacah daging sayuran buah dan berbagai pelengkap masakan dalam hitungan menit<br>4. Kapasitas wadah 2L, sekali giling 0.5 - 1 kg<br>5. 2 mode giling, mode lambat untuk menggiling bahan masakan yang lebih lembut, dan mode cepat untuk menggiling bahan masakan yang lebih keras.<br>6. Pisau 2 tingkat pisau model S, memotong dengan sangat cepat<br><br>Spesifikasi Produk:<br>Voltage : 220V ~ 50HZ<br>Watt :250W<br>Kapasitas : 2 Liter<br>Kualitas bahan : stainless steel<br>Ukuran produk : 18x18x25cm<br>Berat Produk : 1 KG<br>4 Leaf Stainless Steel knife\r\n\r\n<br></p>', 100, 1500, '18204963_20211129_1638158599 (1).png', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_invoice` int(11) NOT NULL,
  `transaksi_produk` int(11) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_jumlah`, `transaksi_harga`) VALUES
(1, 0, 3, 1, 120000),
(2, 0, 1, 1, 1234),
(3, 0, 3, 1, 120000),
(4, 0, 1, 1, 1234),
(5, 1, 3, 1, 120000),
(6, 1, 1, 1, 1234),
(9, 3, 3, 1, 120000),
(10, 4, 4, 1, 123000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
