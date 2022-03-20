-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2022 lúc 04:01 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `MaDMSP` int(10) UNSIGNED NOT NULL,
  `TenDMSP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`MaDMSP`, `TenDMSP`) VALUES
(1, 'DELL Latitude'),
(2, 'LapTop Asus'),
(3, 'LapTop MSI'),
(4, 'LapTop HP'),
(5, 'LapTop Leveno');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuctintuc`
--

CREATE TABLE `danhmuctintuc` (
  `MaDMTT` int(10) UNSIGNED NOT NULL,
  `TenDMTT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuctintuc`
--

INSERT INTO `danhmuctintuc` (`MaDMTT`, `TenDMTT`) VALUES
(1, 'Sự Kiện'),
(2, 'ád');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `information`
--

INSERT INTO `information` (`id`, `name`, `password`) VALUES
(9, 'admin', 'b0baee9d279d34fa1dfd71aadb908c3f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(10) UNSIGNED NOT NULL,
  `TenKH` varchar(255) NOT NULL,
  `SinhNgay` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `SinhNgay`, `DiaChi`, `SDT`, `Email`) VALUES
(1, 'Ngô Thi Huệ', '13/12/2000', 'Hà Nam', '01235864578', 'HueNaBi@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(10) UNSIGNED NOT NULL,
  `AnhNV` varchar(255) NOT NULL,
  `TenNV` varchar(255) NOT NULL,
  `NgaySinh` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `Check` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `AnhNV`, `TenNV`, `NgaySinh`, `DiaChi`, `SDT`, `TaiKhoan`, `Check`) VALUES
(1, 'image17.jpg', 'Nguyễn Văn Nam', '10/12/2000', 'Bắc Ninh', '0398727881', 'NguyenVanNam', '1'),
(2, 'image5.jpg', 'Hà Quý Đức', '21/12/2000', 'Bắc Ninh', '0375869464', 'DucHaQuy', '0'),
(3, 'image14.jpg', 'Nguyễn Hà Hội', '01/09/2000', 'Ninh Bình', '01694678463', 'KhiemChanh', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(10) UNSIGNED NOT NULL,
  `MaDMSP` int(10) NOT NULL,
  `AnhSP` varchar(255) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `Gia` float NOT NULL,
  `Sale` int(10) NOT NULL,
  `Hot` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaDMSP`, `AnhSP`, `TenSP`, `MoTa`, `Gia`, `Sale`, `Hot`) VALUES
(1, 1, 'Dell_Latutide_e7480.jpg', 'Laptop Cũ Dell Latitude e7480', 'Laptop Cũ Dell Latitude e7480/ i5*6300U/ Ram 8G/ Ổ SSD 256GB/ Màn14.0 Full HD/ Card On', 10, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(10) UNSIGNED NOT NULL,
  `MaDMTT` int(10) NOT NULL,
  `AnhTinTuc` varchar(255) NOT NULL,
  `TenTinTuc` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `ChiTiet` text NOT NULL,
  `TinTucNong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`MaTinTuc`, `MaDMTT`, `AnhTinTuc`, `TenTinTuc`, `MoTa`, `ChiTiet`, `TinTucNong`) VALUES
(1, 1, 'image1.jpg', 'Chương trình khuyến mại tháng 6 - An Phát Computer', 'Chương trình khuyến mại đặc biết cứ là \"Sinh Viên\" nhận quà vô biên', 'Để bắt đầu cho các chương trìnhh khuến mại từng bừng mùa hè. An Phát Computer xin gửi tặng quý vị những phần quà hết sức thú vị', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`MaDMSP`);

--
-- Chỉ mục cho bảng `danhmuctintuc`
--
ALTER TABLE `danhmuctintuc`
  ADD PRIMARY KEY (`MaDMTT`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `MaDMSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `danhmuctintuc`
--
ALTER TABLE `danhmuctintuc`
  MODIFY `MaDMTT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `information`
--
ALTER TABLE `information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
