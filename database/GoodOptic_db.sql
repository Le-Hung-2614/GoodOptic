SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------
-- Bảng Người Dùng
-- --------------------------------------------------------
CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name`
-- --------------------------------------------------------
-- Bảng Khách Hàng
-- --------------------------------------------------------
CREATE TABLE `Danh_Sach_Khach_Hang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(50) NOT NULL,
  `sodienthoai` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------
-- Bảng Sản Phẩm
-- --------------------------------------------------------
CREATE TABLE `San_Pham` (
  `maSanPham`      VARCHAR(50)   PRIMARY KEY,
  `tenSanPham`     VARCHAR(255)  NOT NULL,
  `thongTin`       TEXT          NULL,
  `gia`            DOUBLE        NOT NULL,
  `phantramgiam`   DOUBLE        NOT NULL DEFAULT 0,    -- Ví dụ: phần trăm giảm 10% thì lưu là 10.0
  `giaDaGiam`      DOUBLE        AS ( gia * (1 - phanTramGiam / 100 ) ) STORED,
  `chatLieu`       VARCHAR(100)  NULL
);

