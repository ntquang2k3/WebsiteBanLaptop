-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 03:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doanphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaDonHang` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaDonHang`, `MaSP`, `SoLuong`, `ThanhTien`) VALUES
(15, 4, 1, NULL),
(15, 20, 1, NULL),
(16, 10, 1, NULL),
(16, 11, 1, NULL),
(17, 6, 1, NULL),
(18, 12, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `TrangThai` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGianDatHang` date DEFAULT NULL,
  `TrongGioHang` int(11) NOT NULL DEFAULT 1,
  `HinhAnhDaiDien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DanhGiaTuKhachHang` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoSaoDanhGia` int(11) DEFAULT NULL,
  `TienGiamGia` int(11) DEFAULT NULL,
  `TongTienPhaiTra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `MaKhachHang`, `TongTien`, `TrangThai`, `ThoiGianDatHang`, `TrongGioHang`, `HinhAnhDaiDien`, `DanhGiaTuKhachHang`, `SoSaoDanhGia`, `TienGiamGia`, `TongTienPhaiTra`) VALUES
(15, 17, 38500000, 'Đã giao', '2024-06-05', 0, 'optiplex.jpg', 'Tài xế giao nhanh. Apple Imac xài chất lượng', 5, 0, 38500000),
(16, 15, 7600000, 'Đang giao', '2024-06-05', 0, 'dxracer.jpg', NULL, NULL, 0, 7600000),
(17, 15, 14000000, 'Đang giao', '2024-06-05', 0, 'hp.jpg', NULL, NULL, 0, 14000000),
(18, 15, 1400000, 'Đã giao', '2024-06-05', 0, 'razer.jpg', '', 0, 0, 1400000);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSP` int(11) NOT NULL,
  `TenLoaiSP` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AnhLoaiSP` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSP`, `TenLoaiSP`, `AnhLoaiSP`, `Note`) VALUES
(1, 'CPU - Bộ xử lý', 'CPU.jpg', 'CPU viết tắt của chữ Central Processing Unit (tiếng Anh), tạm dịch là Bộ xử lý trung tâm, là mạch điện tử thực hiện các câu lệnh của chương trình máy tính bằng cách thực hiện các phép tính số học, logic, so sánh và các hoạt động nhập/xuất dữ liệu (Input/Output) cơ bản từ mã lệnh được định sẵn trong một máy tính.'),
(2, 'Mainboard - Bo mạch chủ', 'MainBoard.jpg', 'Mainboard còn được gọi là bo mạch chủ, là một bảng mạch điện tử chính trong máy tính, nơi kết nối các thành phần khác lại với nhau như CPU, RAM, ổ cứng, card đồ họa, card âm thanh và các thiết bị ngoại vi. Mainboard cũng có chứa các chip điều khiển và các khe cắm mở rộng để thêm các tính năng mới cho máy tính.'),
(3, 'Case - Thùng máy', 'Case.jpg', 'Case máy tính là bộ phận quan trọng để vận hành một chiếc máy tính, bên cạnh những màn hình hay CPU, thì đây là nơi để lắp đặt những linh kiện như card đồ họa, ram, ổ đĩa, ...'),
(4, 'PC', 'PC.jpg', 'PC là viết tắt của từ gì? (Personal Computer) là một loại máy tính cá nhân với giá cả, kích thước và sự tương thích của nó khiến nó hữu dụng cho từng đối tượng cá nhân. PC được chia làm 2 loại máy tính để bàn (Desktop), máy tính xách tay (Laptop, Notebook, MacBook).'),
(5, 'SSD - HDD', 'SSD_HHD.jpg', 'Ổ cứng SSD (Solid State Drive) là ổ cứng điện tử lưu trữ dữ liệu trên bộ nhớ flash trạng thái rắn. Ổ cứng HDD (Hard Disk Drive) là ổ cứng truyền thống có tuổi thọ lâu đời'),
(6, 'Laptop', 'Laptop.jpg', 'Máy tính xách tay hay máy vi tính xách tay (Tiếng Anh: laptop computer hay laptop PC) là một chiếc máy tính cá nhân nhỏ gọn có thể mang xách được'),
(7, 'PC Văn Phòng - Làm Việc', 'PC_VanPhong.jpg', 'Nhu cầu văn phòng: Các dòng chip bình dân có thể giúp bạn đáp ứng các nhu cầu làm việc, giải trí cơ bản cùng các tác vụ đồ họa nhẹ'),
(8, 'PC Đồ Họa - Thiết Kế', 'PC_DoHoa', 'Các cấu hình máy tính đồ họa chuyên nghiệp 2023 được xây dựng từ những linh kiện mới nhất, hiệu năng cao, khả năng tương thích ổn định.'),
(9, 'Màn hình máy tính', 'ManHinh.jpg', 'Màn hình máy tính (Computer display, Visual display unit hay Monitor) là thiết bị điện tử dùng để kết nối với máy tính nhằm mục đích hiển thị và phục vụ cho quá trình giao tiếp giữa người sử dụng với máy tính.'),
(10, 'Bàn, Ghế Gaming', 'BanGheGaming.jpg', 'Đây là một combo bàn ghế gaming giá rẻ chất lượng rất thu hút game thủ trong thời gian gần đây.'),
(11, 'Bàn phím', 'BanPhim.jpg', 'Bàn phím là một thiết bị chính giúp nhập thông tin vào cho máy tính xử lý, thông tin từ bàn phím là các ký tự, con số, và các lệnh điều khiển'),
(12, 'Chuột', 'Chuot.jpg', 'Chuột máy tính – Phụ kiện không thể thiếu với máy tính của bạn.'),
(13, 'Tai Nghe', 'TaiNghe.jpg', 'Tai nghe laptop thường có thiết kế nhỏ gọn, bao gồm một đầu kết nối với máy tính qua các cổng như: USB, jack 3.5mm... đầu còn lại là một cặp loa để người dùng áp vào vào tai để nghe'),
(14, 'VGA - Card màn hình', 'VGA.jpg', 'VGA hay còn gọi là card màn hình là một bộ phận trên laptop, máy tính giúp xử lý và hiển thị hình ảnh.'),
(15, 'Bộ nhớ RAM', 'RAM.jpg', 'RAM được viết tắt từ Random Access Memory - một trong những yếu tố hết sức quan trọng bên cạnh vi xử lý.'),
(16, 'Tản nhiệt', 'TanNhiet.jpg', 'Quạt tản nhiệt cho laptop: Cơ chế tản nhiệt của laptop lại thông qua một bộ phận gọi là thanh đồng, thường được gắn trực tiếp vào CPU - bộ phận sinh nhiệt nhiều nhất trên laptop'),
(17, 'PSU - Nguồn máy tính', 'PSU.jpg', 'Bộ nguồn hoạt động trong hệ thống PC (PSU) có chức năng chuyển đổi dòng điện xoay chiều (230 V AC hoặc 115 V AC, tùy theo vùng) thành dòng điện một chiều (DC) với điện áp thấp hơn nhiều mà hệ thống máy tính yêu cầu cấp cho các thành phần bên trong nó');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLoaiSP` int(11) NOT NULL,
  `TenSP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MoTaSP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiaSP` int(11) NOT NULL,
  `KhuyenMai` int(11) NOT NULL,
  `Anh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoSaoDanhGia` double NOT NULL,
  `SoLuongDanhGia` int(11) NOT NULL,
  `SoLuongTon` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLoaiSP`, `TenSP`, `MoTaSP`, `GiaSP`, `KhuyenMai`, `Anh`, `SoSaoDanhGia`, `SoLuongDanhGia`, `SoLuongTon`) VALUES
(1, 1, 'Intel Core i9-11900K', 'CPU Intel Core i9 thế hệ thứ 11', 5000000, 4500000, 'i9.jpg', 4.8, 100, 50),
(2, 2, 'ASUS ROG STRIX Z590-E', 'Mainboard ASUS ROG STRIX Z590-E Gaming', 7000000, 6500000, 'z590.jpg', 4.7, 80, 30),
(3, 3, 'Cooler Master MasterBox Q300L', 'Case máy tính Cooler Master', 1000000, 900000, 'case.jpg', 4.4, 62, 40),
(4, 4, 'Dell OptiPlex 3080', 'PC Dell OptiPlex 3080', 10000000, 9500000, 'optiplex.jpg', 4.6, 71, 20),
(5, 5, 'Samsung 970 EVO Plus 1TB', 'Ổ cứng SSD Samsung 1TB', 3000000, 2800000, 'ssd.jpg', 4.9, 120, 100),
(6, 6, 'HP Pavilion x360', 'Laptop HP Pavilion x360', 15000000, 14000000, 'hp.jpg', 4.3, 50, 25),
(7, 7, 'Lenovo ThinkCentre M720', 'PC Văn phòng Lenovo ThinkCentre M720', 8000000, 7500000, 'thinkcentre.jpg', 4.4, 45, 35),
(8, 8, 'Acer ConceptD 300', 'PC Đồ họa Acer ConceptD 300', 20000000, 19000000, 'conceptd.jpg', 4.7, 60, 15),
(9, 9, 'LG UltraFine 5K', 'Màn hình máy tính LG UltraFine 5K', 12000000, 11500000, 'lg.jpg', 4.6, 70, 40),
(10, 10, 'DXRacer Gaming Chair', 'Bàn, Ghế Gaming DXRacer', 5000000, 4800000, 'dxracer.jpg', 4.8, 80, 30),
(11, 11, 'Logitech G Pro X', 'Bàn phím cơ Logitech G Pro X', 3000000, 2800000, 'logitech.jpg', 4.7, 65, 50),
(12, 12, 'Razer DeathAdder V2', 'Chuột Razer DeathAdder V2', 1500000, 1400000, 'razer.jpg', 4.9, 90, 70),
(13, 13, 'Sony WH-1000XM4', 'Tai nghe Sony WH-1000XM4', 6000000, 5800000, 'sony.jpg', 4.8, 85, 60),
(14, 14, 'NVIDIA GeForce RTX 3080', 'Card màn hình NVIDIA GeForce RTX 3080', 25000000, 24000000, 'rtx3080.jpg', 4.9, 100, 20),
(15, 15, 'Corsair Vengeance LPX 16GB', 'RAM Corsair Vengeance LPX 16GB', 2000000, 1800000, 'corsair.jpg', 4.7, 75, 60),
(16, 16, 'Noctua NH-D15', 'Quạt tản nhiệt Noctua NH-D15', 2000000, 1900000, 'noctua.jpg', 4.8, 60, 50),
(17, 17, 'Corsair RM750x', 'Nguồn máy tính Corsair RM750x', 3000000, 2800000, 'rm750x.jpg', 4.6, 50, 30),
(18, 1, 'AMD Ryzen 9 5900X', 'CPU AMD Ryzen 9 5900X', 12000000, 11000000, 'ryzen9.jpg', 4.9, 90, 40),
(19, 2, 'MSI MPG Z490 GAMING EDGE', 'Mainboard MSI MPG Z490', 5000000, 4800000, 'msi.jpg', 4.5, 40, 25),
(20, 4, 'Apple iMac 2021', 'PC Apple iMac 2021', 30000000, 29000000, 'imac.jpg', 4.6, 74, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `MaKhachHang` int(11) NOT NULL,
  `TenKhachHang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChiGiaoHang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `QUYEN` int(11) NOT NULL,
  `DiemTichLuy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`MaKhachHang`, `TenKhachHang`, `SoDienThoai`, `Email`, `MatKhau`, `DiaChiGiaoHang`, `QUYEN`, `DiemTichLuy`) VALUES
(14, 'Nguyễn Hải Yến', '1111', 'yenhuit@gmail.com', '$2y$10$wVeuNP67chXivmy1SAFK/.5BMXFZd0nBZsg/IzZyX3r/4MthehvaW', '123 Lê Trọng Tấn', 0, 0),
(15, 'Ngô Thành Quang', '0337449403', 'thanhquangcomedy@gmail.com', '$2y$10$t5/kPo7gJRSttmAF28qT2OwkHc1CCw0ZvDJCGwgKcbspEJ/WNGese', '72/34 Dương Đức Hiền', 0, 0),
(16, 'Bùi Phương Nam', '0123456790', 'buinam0705@gmail.com', '$2y$10$cSt0Y6eb1qUivA6RhXyH9O0oCxxvD125VNzTXG3nRnjWsRyHzkhUy', '72/34 Dương Đức Hiền', 0, 0),
(17, 'Lê Minh Đức', '0123456789', 'leminhduc5732@gmail.com', '$2y$10$B9e1CwUr01GBi5.z4ocG2uWroFig0iZWHLnFirAat6pfJi5T8QOEu', '72/34 Dương Đức Hiền', 0, 0),
(20, 'admin', 'admin', 'admin@gmail.com', '$2y$10$GMCd8zz8uR9W2OckfxnY7.pNRs2UY71AX7h63QffmLuL87v4JLG.O', 'admin', 1, 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaDonHang`,`MaSP`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`),
  ADD KEY `MaKhachHang` (`MaKhachHang`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSP`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaLoaiSP` (`MaLoaiSP`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `user` (`MaKhachHang`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoaiSP`) REFERENCES `loaisanpham` (`MaLoaiSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
