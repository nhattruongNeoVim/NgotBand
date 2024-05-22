-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 17, 2024 lúc 05:38 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ngot_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `id_album` varchar(20) NOT NULL,
  `name_album` varchar(50) NOT NULL,
  `img_album` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `sl_song` int(11) NOT NULL,
  `year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`id_album`, `name_album`, `img_album`, `author`, `sl_song`, `year`) VALUES
('3', '3 (tuyển tập nhạc Ngọt mới trẻ sôi động 2019)', '3.jpg', 'Ngọt', 14, '2019'),
('caidautien', 'Cái Đầu Tiên', 'caidautien.jpg', 'Thắng', 8, '2023'),
('cngdc', 'Cngđc', 'cngdc.jpg', 'Ngọt', 4, '2019'),
('giaytrang', 'Giấy Trắng', 'giaytrang.jpg', 'Thắng', 4, '2022'),
('gieo', 'Gieo', 'gieo.jpg', 'Ngọt', 11, '2022'),
('ngbthg', 'Ng\'bthg', 'ngbthg.jpg', 'Ngọt', 8, '2018'),
('ngot', 'Ngọt', 'ngot.jpg', 'Ngọt', 10, '2016'),
('odaitruyenhinh', 'Ở Đài Truyền Hình', 'odaitruyenhinh.jpg', 'Ngọt', 3, '2021'),
('suyt1', 'Suýt 1', 'suyt1.jpg', 'Ngọt', 4, '2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id_bill` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id_bill`, `name`, `created`) VALUES
('66474a804f072', 'Lâm Huỳnh', '2024-05-17'),
('66474baa426b6', 'Lâm Huỳnh', '2024-05-17'),
('66474bafd9bc8', 'Lâm Huỳnh', '2024-05-17'),
('66474c35aea59', 'Lâm Huỳnh', '2024-05-17'),
('66474cb910b65', 'Lâm Huỳnh', '2024-05-17'),
('66474cc555871', 'Lâm Huỳnh', '2024-05-17'),
('66474d0733c6f', 'Lâm Huỳnh', '2024-05-17'),
('66474d76e0701', 'Lâm Huỳnh', '2024-05-17'),
('664779a6219bb', 'Lâm Huỳnh', '2024-05-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_product`
--

CREATE TABLE `cart_product` (
  `id_product` varchar(20) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `img_product` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `sl` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `sl_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catolog`
--

CREATE TABLE `catolog` (
  `id_product` varchar(20) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `img_product` varchar(50) NOT NULL,
  `img_product2` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `catolog`
--

INSERT INTO `catolog` (`id_product`, `name_product`, `img_product`, `img_product2`, `price`, `sl`) VALUES
('aoden', 'KẸO CRACKED LOGO TEE - BLACK', 'aoden.webp', 'aoden2.jpg', 435, 10),
('aotrang', 'KẸO CRACKED LOGO TEE - WHITE', 'aotrang.webp', 'aotrang2.webp', 435, 10),
('muden', 'ORIGINAL NGỌT LOGO CAP', 'muden.webp', 'muden2.webp', 290, 10),
('pin', 'KẸO PIN', 'pin.webp', 'pin2.webp', 115, 10),
('pop', 'KẸO POPSOCKETS', 'pop.webp', 'pop2.webp', 115, 10),
('tattrang', 'KẸO PATTERN SOCKS', 'tattrang.webp', 'tattrang2.webp', 135, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catolog_cd`
--

CREATE TABLE `catolog_cd` (
  `id_product` varchar(20) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `img_product` varchar(50) NOT NULL,
  `img_product2` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `catolog_cd`
--

INSERT INTO `catolog_cd` (`id_product`, `name_product`, `img_product`, `img_product2`, `price`, `sl`) VALUES
('3', '3 (tuyển tập nhạc Ngọt mới trẻ sôi động 2019) CD', '3.jpg', '32.jpg', 260, 10),
('caidautien', 'Cái Đầu Tiên', 'caidautien.webp', 'caidautien2.webp', 250, 10),
('giaytrang', 'Giấy Trắng', 'giaytrang.jpg', 'giaytrang2.jpeg', 90, 10),
('gieo', 'Gieo', 'gieo.jpg', 'gieo2.jpg', 390, 10),
('ngbthg', 'Ng\'bthg 2017 CD Edition', 'ngbthg.jpg', 'ngbthg2.jpg', 200, 10),
('ngbthgnew', 'Ng\'bthg (Phiên bản 2020)', 'ngbthgnew.jpg', 'ngbthgnew2.jpg', 280, 10),
('ngot', 'Ngọt', 'ngot.jpg', 'ngot2.jpg', 100, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catolog_digital`
--

CREATE TABLE `catolog_digital` (
  `id_product` varchar(20) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `img_product` varchar(50) NOT NULL,
  `img_product2` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `catolog_digital`
--

INSERT INTO `catolog_digital` (`id_product`, `name_product`, `img_product`, `img_product2`, `price`, `sl`) VALUES
('digital1', 'Ngọt', 'digital1.jpg', 'digital12.jpg', 100, 10),
('digital2', 'Ng\'bthg', 'digital2.jpg', 'digital22.jpg', 100, 10),
('digital3', '3 (tuyển tập nhạc Ngọt mới trẻ sôi động 2019)', 'digital3.jpeg', 'digital32.jpg', 100, 10),
('digital4', 'Gieo', 'digital4.jpg', 'digital42.jpg', 100, 10),
('digital5', 'Suýt 1', 'digital5.jpg', 'digital52.jpg', 100, 10),
('digital6', 'Cái Đầu Tiên', 'digital6.jpg', 'digital62.jpg', 100, 10),
('digital7', 'Giấy Trắng', 'digital7.jpeg', 'digital72.jpeg', 100, 10),
('single1', 'Tìm Người Nhà', 'single1.jpg', 'single12.jpg', 50, 10),
('single2', 'để quên', 'single2.jpg', 'single2.jpg', 50, 10),
('single3', 'Đốt', 'single3.jpg', 'single3.jpg', 50, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `id_bill` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `id_product` varchar(20) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `sl_add` int(11) NOT NULL,
  `ship` double NOT NULL,
  `amount` double NOT NULL,
  `payment` varchar(50) NOT NULL,
  `created` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `information`
--

INSERT INTO `information` (`id_bill`, `name`, `phone`, `mail`, `address`, `province`, `district`, `ward`, `id_product`, `name_product`, `price`, `sl_add`, `ship`, `amount`, `payment`, `created`, `username`) VALUES
('66474a804f072', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('66474baa426b6', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('66474bafd9bc8', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('66474c35aea59', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('66474cb910b65', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('66474cc555871', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('66474d0733c6f', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('66474d76e0701', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user'),
('664779a6219bb', 'Lâm Huỳnh', '0935388971', 'lamhuynhgaming@gmail.com', '', '', '', '', 'example_product_id', 'Example Product', 435000, 1, 0, 435000, 'Nhận tại cửa hàng', '2024-05-17', 'example_user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('123123123', '123123123'),
('124124124124', '12124124'),
('132123', '132123'),
('a', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` varchar(20) NOT NULL,
  `name_playlist` varchar(50) NOT NULL,
  `img_playlist` varchar(50) NOT NULL,
  `id_song` varchar(20) NOT NULL,
  `name_song` varchar(50) NOT NULL,
  `img_song` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_info`
--

CREATE TABLE `product_info` (
  `id_product` varchar(20) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `info_short` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `info_long` text NOT NULL,
  `img_1` varchar(50) NOT NULL,
  `img_2` varchar(50) NOT NULL,
  `img_3` varchar(50) NOT NULL,
  `img_4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_info`
--

INSERT INTO `product_info` (`id_product`, `name_product`, `info_short`, `price`, `info_long`, `img_1`, `img_2`, `img_3`, `img_4`) VALUES
('digital1', 'KẸO CRACKED LOGO TEE - WHITE', 'Mũ Lưỡi Trai Logo Ngọt Nguyên Bản', 290, 'Mũ lưỡi trai nam/nữ chất liệu nhung tăm\r\n\r\nLogo Ngọt thêu nổi 3D\r\n\r\nKhoá kim loại điều chỉnh tăng giảm 56-60cm', 'logo.png', 'qr_code.png', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `register`
--

CREATE TABLE `register` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `register`
--

INSERT INTO `register` (`username`, `email`, `password`) VALUES
('123', 'lamhuynhgaming@gmail.com', '1243124'),
('123123', 'lamhuynhgaming@gmail.com', '123123'),
('123123123', '123123@gmail.com', '123123123'),
('123124', '', '123123'),
('123142', 'lamhuynhgaming@gmail.com', '142'),
('12412', '123123@gmail.com', '12412'),
('124124124124', 'lamhuynhgaming@gmail.com', '12124124'),
('12412512', '', '123123'),
('132123', '123123@gmail.com', '132123'),
('3123412', '', '312321'),
('a', 'lamhuynhgaming@gmail.com', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `id_song` varchar(20) NOT NULL,
  `name_song` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `id_album` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`id_song`, `name_song`, `author`, `time`, `id_album`) VALUES
('3_1', 'MÀU (đen trắng)', 'Ngọt', '00:03:36', '3'),
('3_10', '(tôi) ĐI TRÚ ĐÔNG', 'Ngọt', '00:04:05', '3'),
('3_11', '(bé)', 'Ngọt', '00:04:36', '3'),
('3_12', 'LẦN CUỐI (đi bên em xót xa người ơi)', 'Ngọt', '00:03:42', '3'),
('3_13', 'NỨT (đôi chân đôi tay đôi mắt trái tim)', 'Ngọt', '00:06:32', '3'),
('3_14', 'RU MÌNH', 'Ngọt', '00:02:06', '3'),
('3_2', 'MẾU MÁO (T.T)', 'Ngọt', '00:03:37', '3'),
('3_3', 'EM CÓ CHẮC KHÔNG (?) (bài ca rebound)', 'Ngọt', '00:04:35', '3'),
('3_4', 'GIẢ VỜ', 'Ngọt', '00:02:58', '3'),
('3_5', 'CHUÔNG BÁO THỨC (sáng rồi)', 'Ngọt', '00:04:07', '3'),
('3_6', '(sau đây là) DỰ BÁO THỜI TIẾT (cho các vùng vào ngàyy mai)', 'Ngọt', '00:03:18', '3'),
('3_7', 'CHUYỂN KÊNH (sản phẩm này không phải là thuốc)', 'Ngọt', '00:04:33', '3'),
('3_8', 'HẾT THỜI', 'Ngọt', '00:04:38', '3'),
('3_9', 'VÉ ĐI THIÊN ĐƯỜNG (một chiều)', 'Ngọt', '00:02:45', '3'),
('caidautien_1', 'Sober Song', 'Thắng', '00:02:09', 'caidautien'),
('caidautien_2', 'Trước Khi Em Tồn Tại', 'Thắng', '00:03:14', 'caidautien'),
('caidautien_3', 'Limo', 'Thắng', '00:02:34', 'caidautien'),
('caidautien_4', 'Tinkerbell', 'Thắng', '00:03:21', 'caidautien'),
('caidautien_5', 'Mất Thời Gian', 'Thắng', '00:03:20', 'caidautien'),
('caidautien_6', 'Save it for your boyfriends', 'Thắng', '00:02:27', 'caidautien'),
('caidautien_7', 'Phải Lòng', 'Thắng, Limebócx', '00:04:21', 'caidautien'),
('caidautien_8', 'Xin Lỗi', 'Thắng', '00:02:07', 'caidautien'),
('giaytrang_1', 'Giấy Trắng', 'Thắng, Thịnh Suy', '00:02:39', 'giaytrang'),
('giaytrang_2', 'Viết Nhạc Cưa Em', 'Thắng, Pixel Neko', '00:02:57', 'giaytrang'),
('giaytrang_3', 'Mưa Giữa Bài', 'Thắng, NÂN', '00:02:46', 'giaytrang'),
('giaytrang_4', 'Cố Xa Nhau', 'Thắng', '00:03:43', 'giaytrang'),
('gieo_1', 'Bạn thỏ tivi nhỏ', 'Ngọt', '00:04:28', 'gieo'),
('gieo_10', 'Gieo', 'Ngọt', '00:03:27', 'gieo'),
('gieo_11', 'Mất Tích', 'Ngọt', '00:04:31', 'gieo'),
('gieo_2', 'Mấy Khi', 'Ngọt', '00:02:57', 'gieo'),
('gieo_3', 'Em Trang Trí', 'Ngọt', '00:02:45', 'gieo'),
('gieo_4', 'Điểm Đến Cuối Cùng', 'Ngọt', '00:03:33', 'gieo'),
('gieo_5', 'Em Trong Đầu', 'Ngọt', '00:03:18', 'gieo'),
('gieo_6', 'Chào Buổi Sáng', 'Ngọt', '00:01:40', 'gieo'),
('gieo_7', 'Thấy Chưa', 'Ngọt', '00:03:52', 'gieo'),
('gieo_8', 'Đá Tan', 'Ngọt, Mạc Mai Sương', '00:03:22', 'gieo'),
('gieo_9', 'Đêm Hôm Qua', 'Ngọt', '00:03:48', 'gieo'),
('ngbthg_1', 'Xin Cho Tôi', 'Ngọt', '00:03:23', 'ngbthg'),
('ngbthg_2', 'Cho', 'Ngọt', '00:03:10', 'ngbthg'),
('ngbthg_3', 'Kho Báu', 'Ngọt', '00:03:39', 'ngbthg'),
('ngbthg_4', 'Kẻ Thù', 'Ngọt', '00:03:54', 'ngbthg'),
('ngbthg_5', 'Bartender', 'Ngọt', '00:05:18', 'ngbthg'),
('ngbthg_6', 'Mèo Hoang', 'Ngọt', '00:05:10', 'ngbthg'),
('ngbthg_7', 'Em Dạo Này', 'Ngọt', '00:03:21', 'ngbthg'),
('ngbthg_8', 'Một Ngày Không Mưa', 'Ngọt', '00:05:15', 'ngbthg'),
('ngot_1', 'Vì Ai', 'Ngọt', '00:03:37', 'ngot'),
('ngot_10', 'Drama Queen', 'Ngọt', '00:05:05', 'ngot'),
('ngot_2', 'Cho Tôi Đi Theo', 'Ngọt', '00:02:58', 'ngot'),
('ngot_3', 'Cá Hồi', 'Ngọt', '00:04:24', 'ngot'),
('ngot_4', 'Be Cool', 'Ngọt', '00:03:25', 'ngot'),
('ngot_5', 'Xanh', 'Ngọt', '00:04:54', 'ngot'),
('ngot_6', 'À Ơi', 'Ngọt', '00:03:24', 'ngot'),
('ngot_7', 'Những Chuyến Phiêu Lưu', 'Ngọt', '00:03:08', 'ngot'),
('ngot_8', 'Khắp Xung Quanh', 'Ngọt', '00:04:03', 'ngot'),
('ngot_9', 'Không Làm Gì', 'Ngọt', '00:04:04', 'ngot'),
('suyt1_1', '01 Chuyện Dở Dang', 'Ngọt', '00:03:31', 'suyt1'),
('suyt1_2', '02 Mơ Làm Ma', 'Ngọt, Thỏ Trauma', '00:03:57', 'suyt1'),
('suyt1_3', '03 Hay Là', 'Ngọt', '00:03:22', 'suyt1'),
('suyt1_4', '04 Thắp Hương 05 Hoá Vàng', 'Ngọt, Quyền Thiện Đắc', '00:03:48', 'suyt1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`);

--
-- Chỉ mục cho bảng `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id_product`,`username`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `catolog`
--
ALTER TABLE `catolog`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `catolog_cd`
--
ALTER TABLE `catolog_cd`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `catolog_digital`
--
ALTER TABLE `catolog_digital`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id_bill`,`id_product`,`username`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`,`id_song`,`username`),
  ADD KEY `id_song` (`id_song`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id_song`,`id_album`),
  ADD KEY `id_album` (`id_album`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `information` (`id_bill`);

--
-- Các ràng buộc cho bảng `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `catolog` (`id_product`),
  ADD CONSTRAINT `cart_product_ibfk_2` FOREIGN KEY (`username`) REFERENCES `login` (`username`);

--
-- Các ràng buộc cho bảng `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`username`) REFERENCES `register` (`username`);

--
-- Các ràng buộc cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`id_song`) REFERENCES `song` (`id_song`),
  ADD CONSTRAINT `playlist_ibfk_2` FOREIGN KEY (`username`) REFERENCES `login` (`username`);

--
-- Các ràng buộc cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD CONSTRAINT `product_info_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `catolog_digital` (`id_product`);

--
-- Các ràng buộc cho bảng `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
