-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2017 at 08:55 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_ad` int(11) NOT NULL,
  `ten_ad` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `pass_ad` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_ctdh` int(11) NOT NULL,
  `id_sach` int(11) NOT NULL,
  `so_luong_sach` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `id_sk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_dh` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `ngay_dt_dh` date NOT NULL,
  `ngay_gh_dh` date NOT NULL,
  `tinh_trang_dh` int(11) NOT NULL,
  `tong_tien_dh` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id_gt` int(11) NOT NULL,
  `noi_dung_gt` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gioithieu`
--

INSERT INTO `gioithieu` (`id_gt`, `noi_dung_gt`) VALUES
(1, 'Mua hàng theo hình thức truyền thống là khách hàng đến trực tiếp các shop thời trang cảm nhận sản phẩm, có thể thoải mái lựa chọn sản phẩm mong muốn. Tuy nhiên, việc này lại làm mất thời gian khách hàng và có thể khi đến nơi sản phẩm mình muốn lựa chọn không còn nữa gây bất lợi cho cửa hàng và khách hàng. Hiện nay xu hướng này ngày càng giảm, mọi người hiện nay thường ít có sở thích ra ngoài đi mua sắm, mà họ thường có xu hướng online internet nhiều hơn. Chính vì thế Book Store chúng tôi được mở ra nhằm phục vụ nhu cầu mua sách của các bạn qua internet.'),
(2, 'Mua hàng theo qua Book Store các bạn chỉ cần online trực tiếp trên website và chọn sản phẩm trực tuyến, đặt hàng và sản phẩm sẽ được giao hàng tận nơi.');

-- --------------------------------------------------------

--
-- Table structure for table `giosach`
--

CREATE TABLE `giosach` (
  `id_kh` int(11) NOT NULL,
  `id_sach` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `ten_kh` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email_kh` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `pass_kh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_kh` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi_kh` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id_kh`, `ten_kh`, `email_kh`, `pass_kh`, `sdt_kh`, `dia_chi_kh`) VALUES
(1, 'Nguyễn An Bình', 'nguyenanbinh10a13@gmail.com', 'binh10a13ngu', '01628607106', '135B-Trần Hưng Đạo');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id_lh` int(11) NOT NULL,
  `email_lh` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de_lh` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_lh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hien_thi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id_lh`, `email_lh`, `tieu_de_lh`, `noi_dung_lh`, `hien_thi`) VALUES
(1, 'motngoisao@gmail.com', 'Thể loại sách', 'Sách vẫn còn ít thể loại chưa đáp ứng đủ nhu cầu khách hàng', 1),
(2, 'chinhlaanh@gmail.com', 'Cập nhật sách', 'Cần cập nhật nhiều sách thiếu nhi hơn', 1),
(3, 'dichladich@gmail.com', 'Dịch vụ', 'Cửa hàng cần thêm dịch vụ đặt trước đối với những cuốn sách sắp phát hành', 1),
(4, 'totlatot@gmail.com', 'Chat Luong Sach', 'Sách hay và chất lượng tốt lắm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `id_loai` int(11) NOT NULL,
  `ten_loai` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`id_loai`, `ten_loai`) VALUES
(1, 'Thiếu Nhi'),
(2, 'Khoa Học'),
(3, 'Giáo Khoa'),
(4, 'Giới Tính'),
(5, 'Ẩm Thực'),
(6, 'Truyện'),
(7, 'Các Loại Sách Khác');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `id_sach` int(11) NOT NULL,
  `ten_sach` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `gia_sach` double NOT NULL,
  `mo_ta_sach` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai_sach` int(11) NOT NULL,
  `gioi_thieu_sach` int(11) NOT NULL,
  `nxb_sach` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh_sach` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `tac_gia_sach` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `id_loai` int(11) NOT NULL,
  `trang_chu_sach` int(11) NOT NULL,
  `ngay_xuat_ban` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`id_sach`, `ten_sach`, `gia_sach`, `mo_ta_sach`, `trang_thai_sach`, `gioi_thieu_sach`, `nxb_sach`, `hinh_anh_sach`, `tac_gia_sach`, `id_loai`, `trang_chu_sach`, `ngay_xuat_ban`) VALUES
(1, 'LARVA', 200000, 'Cuộc sống đường phố của 2 nhân vật sâu', 1, 1, 'NXB Nước Ngoài', '/images/shop/product7.jpg', 'Nhóm Larva', 1, 1, '2016-11-23 00:00:00'),
(3, 'Giải Tích', 20000, 'Các phương pháp giải tích nhanh', 1, 1, 'NXB Giáo Dục', '/images/shop/product8.jpg', 'Nguyễn Văn Thìn', 3, 0, NULL),
(4, 'Gõ Cửa Tương Lai', 150000, 'Tìm hiểu về giới tính', 1, 1, 'NXB Tổng Hợp', '/images/shop/product9.jpg', 'Nhiều tác giả', 4, 0, NULL),
(5, 'Món Ngon Dễ Làm', 25000, 'Cung cấp các nấu 155 món ngon', 1, 1, 'NXB Kim Đồng', '/images/shop/product10.jpg', 'Vân Anh', 5, 0, NULL),
(6, 'Harry Potter', 120000, 'Đang giữa mùa hè, nhưng có một màn sương giá trái mùa bám đầy lên những ô kính cửa sổ', 1, 1, 'NXB Nước Ngoài', '/images/shop/product11.jpg', ' J. K. Rowling ', 6, 0, NULL),
(7, 'Thời Gian Và Lý Trí', 40000, 'Thời gian. Thứ ta đang có mỗi ngày những đâu ai biết thời gian đang trồi dần đi ..', 1, 0, 'NXB Nước Ngoài', '/images/shop/product12.jpg', 'Junot Díaz', 2, 0, NULL),
(8, 'Gỗ Là Tất Cả', 30000, 'Gỗ. Nguồn sống của trái đất. Con người đang phá đi chính lá phổi của họ ..', 1, 0, 'NXB Kim Đồng', 'caygo.jpg', 'Nguyễn Nhật Ánh', 7, 1, NULL),
(9, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 130000, 'Con Mận là con gái, nửa đêm tự nhiên chạy ra ngủ chung với tôi, chắc nó ngượng lắm ...', 1, 0, 'NXB Kim Đồng', 'hoavang.jpg', 'Nguyễn Nhật Ánh', 6, 0, NULL),
(10, 'Opera Và Những Giấc Mơ', 90000, 'Nơi nâng tầm âm nhạc thế giớ ...', 1, 0, 'NXB Nước Ngoài', 'opera.jpg', 'Rainbow Rowell', 7, 0, NULL),
(11, 'Lần Đầu Làm Cô Dâu', 69000, 'Sự bắt đầu của cuộc sống mới. Một sự khởi đầu mong manh ...', 1, 0, 'NXB Giáo Dục', 'landau.jpg', 'Trang Hạ', 4, 0, NULL),
(12, 'American Gods', 160000, 'Những ngày đông cuối những năm 1996 ở thành phố NewYork ...', 1, 0, 'NXB Nước Ngoài', 'american.jpg', 'Colum McCann', 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sukien`
--

CREATE TABLE `sukien` (
  `id_sk` int(11) NOT NULL,
  `ten_sk` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_sk` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_bd_sk` date NOT NULL,
  `ngay_kt_sk` date NOT NULL,
  `giam_gia_sk` float NOT NULL,
  `trang_thai_sk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sukien`
--

INSERT INTO `sukien` (`id_sk`, `ten_sk`, `noi_dung_sk`, `ngay_bd_sk`, `ngay_kt_sk`, `giam_gia_sk`, `trang_thai_sk`) VALUES
(1, 'Giảm giá năm học mới', 'Nhân dịp năm học mới ...', '2016-08-08', '2016-09-09', 0.9, 1),
(2, 'Ship tận nơi', 'Chúng tôi miễn phí ship đối với ...', '2016-08-08', '2017-05-05', 1, 1),
(3, 'Chương trình rút thăm may mắn', 'Đối với những khách hàng đã mua ...', '2016-08-08', '2016-08-09', 1, 1),
(4, 'Chương trình giảm giá khi mua nhiều sách', '...', '2016-08-08', '2016-09-09', 0.9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thongtinadmin`
--

CREATE TABLE `thongtinadmin` (
  `id_ttad` int(11) NOT NULL,
  `email_ttad` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi_ttad` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_ttad` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongtinadmin`
--

INSERT INTO `thongtinadmin` (`id_ttad`, `email_ttad`, `dia_chi_ttad`, `sdt_ttad`) VALUES
(1, 'nguyenanbinh10a13@gmail.com', '135B-Trần Hưng Đạo-Q1-TP HCM', '01628607106');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_ad`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_ctdh`),
  ADD KEY `fk_ct_dh_idx` (`id_dh`),
  ADD KEY `fk_ct_sk_idx` (`id_sk`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_dh`),
  ADD KEY `fk_donhang_khachhang_idx` (`id_kh`);

--
-- Indexes for table `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id_gt`);

--
-- Indexes for table `giosach`
--
ALTER TABLE `giosach`
  ADD PRIMARY KEY (`id_kh`,`id_sach`),
  ADD KEY `fk_giosach_sach_idx` (`id_sach`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id_lh`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id_loai`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id_sach`),
  ADD KEY `fk_sach_loai_idx` (`id_loai`);

--
-- Indexes for table `sukien`
--
ALTER TABLE `sukien`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indexes for table `thongtinadmin`
--
ALTER TABLE `thongtinadmin`
  ADD PRIMARY KEY (`id_ttad`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_ad` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_ctdh` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_dh` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id_gt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `id_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `id_sach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sukien`
--
ALTER TABLE `sukien`
  MODIFY `id_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `thongtinadmin`
--
ALTER TABLE `thongtinadmin`
  MODIFY `id_ttad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_ct_dh` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id_dh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ct_sk` FOREIGN KEY (`id_sk`) REFERENCES `sukien` (`id_sk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_khachhang` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id_kh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `giosach`
--
ALTER TABLE `giosach`
  ADD CONSTRAINT `fk_giosach_khachhang` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id_kh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_giosach_sach` FOREIGN KEY (`id_sach`) REFERENCES `sach` (`id_sach`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `fk_sach_loai` FOREIGN KEY (`id_loai`) REFERENCES `loai` (`id_loai`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
