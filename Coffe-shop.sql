

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `Coffe-Shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app_roles`
--

CREATE TABLE `app_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `app_roles`
--

INSERT INTO `app_roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `cart_id` bigint(20) NOT NULL,
  `amount` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`cart_id`, `amount`, `user_id`, `address`, `phone`) VALUES
(1, 0, 2, 'số 129 Đà Thành, Xã Đồng Bài, Huyện Cát Hải, Thành phố Hải Phòng', '0866499519'),
(2, 0, 3, 'Quảng Trị', '0823222123'),
(3, 0, 4, 'Hồng Lĩnh, Hà Tĩnh', '0823233223'),
(4, 0, 5, NULL, NULL),
(5, 0, 6, NULL, NULL),
(6, 0, 7, '81 Nguyễn Sinh Sắc, Đà Nẵng', '0916823721'),
(8, 0, 9, 'Gửi đến nhà mình nhé.', '0832329519'),
(9, 0, 10, 'Đà Nẵng', '0912321232'),
(10, 0, 11, 'Đà Nẵng', '0866222111'),
(11, 0, 12, 'Da Nang', '0872122122'),
(12, 0, 13, 'Hà Nội', '0987654321'),
(14, 0, 15, 'Gửi qua nhà tôi, số 8 hà văn tính, Đà Nẵng', '0982323212'),
(15, 0, 16, 'số 100 Nguyễn Tất Thành, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', '0982232412'),
(16, 0, 17, 'Hà Nội', '0987654321'),
(17, 0, 18, 'số 100 Nguyễn Tất Thành, Xã Đình Chu, Huyện Lập Thạch, Tỉnh Vĩnh Phúc', '0982221321');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_detail_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart_details`
--

INSERT INTO `cart_details` (`cart_detail_id`, `quantity`, `product_id`, `cart_id`, `price`) VALUES
(123, 1, 18, 11, 20000),
(124, 2, 19, 11, 14000),
(125, 1, 17, 10, 39600),
(126, 1, 19, 10, 7000),
(127, 2, 43, 10, 60000),
(128, 1, 6, 10, 9900),
(241, 1, 6, 1, 9900),
(242, 1, 7, 1, 20000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Rau sạch'),
(2, 'Củ quả'),
(3, 'Trái cây'),
(5, 'Lúa mỳ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`favorite_id`, `product_id`, `user_id`) VALUES
(42, 7, 4),
(44, 5, 4),
(46, 8, 4),
(48, 8, 3),
(56, 19, 7),
(57, 6, 7),
(64, 39, 9),
(69, 19, 11),
(72, 19, 12),
(73, 17, 12),
(75, 17, 15),
(76, 19, 15),
(77, 6, 15),
(81, 19, 16),
(85, 5, 16),
(86, 6, 16),
(87, 8, 16),
(88, 17, 2),
(90, 17, 18),
(91, 15, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`id`, `message`, `status`, `time`) VALUES
(1, 'Thanh Lam đã đặt một đơn hàng!', b'1', '2021-11-06 17:32:50'),
(2, 'Nguyễn Thanh Lam đã đặt một đơn hàng', b'1', '2021-11-06 17:33:16'),
(8, 'Nguyễn Thanh Lam đã đặt một đơn hàng', b'1', '2021-11-06 23:53:42'),
(9, 'Nguyễn Thanh Lam đã đặt một đơn hàng', b'1', '2021-11-07 00:48:43'),
(10, 'Nguyễn Thanh Lam đã đặt một đơn hàng', b'1', '2021-11-07 00:50:14'),
(11, 'Nguyễn Thanh Lam đã đặt một đơn hàng', b'1', '2021-11-07 00:53:12'),
(12, 'Đại Đạt gay đã đặt một đơn hàng', b'1', '2021-11-07 00:59:36'),
(13, 'Đại Đạt gay đã đặt một đơn hàng', b'1', '2021-11-07 01:00:04'),
(14, 'Đại Đạt gay đã đặt một đơn hàng (52)', b'1', '2021-11-07 09:43:17'),
(15, 'Đại Đạt gay đã huỷ một đơn hàng (51)', b'1', '2021-11-07 09:43:38'),
(16, 'Đại Đạt gay đã huỷ một đơn hàng (52)', b'1', '2021-11-07 09:44:44'),
(17, 'Đại Đạt gay đã đặt một đơn hàng (53)', b'1', '2021-11-07 09:45:33'),
(18, 'Đại Đạt gay đã huỷ một đơn hàng (53)', b'1', '2021-11-07 09:45:51'),
(19, 'Đại Đạt gay đã đặt một đơn hàng (54)', b'1', '2021-11-07 10:32:21'),
(20, 'Đại Đạt gay đã huỷ một đơn hàng (54)', b'1', '2021-11-07 10:32:35'),
(21, 'Đại Đạt gay đã đặt một đơn hàng (55)', b'1', '2021-11-07 10:34:57'),
(22, 'Đại Đạt gay đã huỷ một đơn hàng (55)', b'1', '2021-11-07 10:35:10'),
(23, 'Đại Đạt gay đã đặt một đơn hàng (56)', b'1', '2021-11-07 10:36:28'),
(24, 'Đại Đạt gay đã huỷ một đơn hàng (56)', b'1', '2021-11-07 10:37:54'),
(25, 'Đại Đạt gay đã đặt một đơn hàng (57)', b'1', '2021-11-07 10:39:39'),
(26, 'Đại Đạt gay đã huỷ một đơn hàng (57)', b'1', '2021-11-07 10:41:55'),
(27, 'Đại Đạt gay đã đặt một đơn hàng (58)', b'1', '2021-11-07 10:42:30'),
(28, 'Đại Đạt gay đã huỷ một đơn hàng (58)', b'1', '2021-11-07 10:43:33'),
(29, 'Đại Đạt gay đã đặt một đơn hàng (59)', b'1', '2021-11-07 10:44:25'),
(30, 'Đại Đạt gay đã đặt một đơn hàng (60)', b'1', '2021-11-07 10:45:04'),
(31, 'Đại Đạt gay đã huỷ một đơn hàng (60)', b'1', '2021-11-07 10:45:18'),
(32, 'Nguyễn Thanh Lam đã đặt một đơn hàng (61)', b'1', '2021-11-07 10:55:53'),
(33, 'Nguyễn Thanh Lam đã đặt một đơn hàng (62)', b'1', '2021-11-08 18:13:17'),
(34, 'Nguyễn Thanh Lam đã huỷ một đơn hàng (62)', b'1', '2021-11-08 18:13:34'),
(35, 'Nguyễn Thanh Lam đã đặt một đơn hàng (63)', b'1', '2021-11-22 10:23:38'),
(36, 'Nguyễn Thanh Lam đã huỷ một đơn hàng (63)', b'1', '2021-11-22 10:23:47'),
(37, 'Nguyễn Thanh Lam đã huỷ một đơn hàng (61)', b'1', '2021-11-22 10:23:52'),
(38, 'Nguyễn Thanh Lam đã đặt và thanh toán một đơn hàng (64)', b'1', '2021-11-25 20:52:06'),
(39, 'Nguyễn Thanh Lam đã đặt và thanh toán một đơn hàng (65)', b'1', '2021-11-25 21:08:48'),
(40, 'Nguyễn Thanh Lam đã đặt và thanh toán một đơn hàng (66)', b'1', '2021-11-25 21:10:22'),
(41, 'Nguyễn Thanh Lam đã đặt một đơn hàng (67)', b'1', '2021-11-25 21:10:39'),
(42, 'Nguyễn Thanh Lam đã huỷ một đơn hàng (67)', b'1', '2021-11-25 21:11:17'),
(43, 'Nguyễn Thanh Lam đã đặt một đơn hàng (68)', b'1', '2021-11-25 21:11:51'),
(44, 'Nguyễn Thanh Lam đã huỷ một đơn hàng (68)', b'1', '2021-11-25 21:12:21'),
(45, 'Nguyễn Thanh Lam đã đặt một đơn hàng (69)', b'1', '2021-11-25 21:13:40'),
(46, 'Nguyễn Thanh Lam đã đặt và thanh toán một đơn hàng (70)', b'1', '2021-11-25 21:14:09'),
(47, 'Nguyễn Thanh Lam đã đặt xác nhận đơn hàng đã giao thành công! (70)', b'1', '2021-11-25 21:27:16'),
(48, 'Nguyễn Thanh Lam đã đặt một đơn hàng (71)', b'1', '2021-11-25 21:30:34'),
(49, 'Nguyễn Thanh Lam đã đặt một đơn hàng (72)', b'1', '2021-11-25 21:36:17'),
(50, 'Nguyễn Thanh Lam đã đặt một đơn hàng (73)', b'1', '2021-11-25 21:40:48'),
(51, 'Nguyễn Thanh Lam đã đặt và thanh toán một đơn hàng (74)', b'1', '2021-11-25 21:42:14'),
(52, 'Nguyễn Thanh Lam đã đặt một đơn hàng (75)', b'1', '2021-11-25 21:43:26'),
(53, 'Nguyễn Thanh Lam đã đặt một đơn hàng (76)', b'1', '2021-11-25 21:43:40'),
(54, 'Nguyễn Thanh Lam đã đặt một đơn hàng (77)', b'1', '2021-11-25 21:44:39'),
(55, 'Nguyễn Thanh Lam đã đặt một đơn hàng (78)', b'1', '2021-11-25 21:45:25'),
(56, 'Nguyễn Thanh Lam đã đặt một đơn hàng (79)', b'1', '2021-11-25 21:46:32'),
(57, 'Nguyễn Thanh Lam đã đặt một đơn hàng (80)', b'1', '2021-11-25 21:50:26'),
(58, 'Nguyễn Thanh Lam đã đặt một đơn hàng (81)', b'1', '2021-11-27 17:01:11'),
(59, 'Nguyễn Thanh Lam đã đặt và thanh toán một đơn hàng (82)', b'0', '2021-12-03 20:00:46'),
(60, 'Nguyễn Thanh Lam đã đặt xác nhận đơn hàng đã giao thành công! (82)', b'0', '2021-12-20 19:11:57'),
(61, 'thành đạt đã đặt một đơn hàng (83)', b'0', '2021-12-21 08:31:42'),
(62, 'thành đạt đã huỷ một đơn hàng (83)', b'0', '2021-12-21 08:31:58'),
(63, 'thành đạt đã đặt và thanh toán một đơn hàng (84)', b'0', '2021-12-21 08:33:02'),
(64, 'thành đạt đã đặt một đơn hàng (85)', b'1', '2021-12-21 08:34:49'),
(65, 'thành đạtt đã đặt một đơn hàng (86)', b'0', '2021-12-21 08:55:13'),
(66, 'thành đạtt đã đặt và thanh toán một đơn hàng (87)', b'0', '2021-12-21 08:57:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`orders_id`, `address`, `amount`, `order_date`, `phone`, `status`, `user_id`) VALUES
(2, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre', 52600, '2019-10-12', '0916546820', 2, 2),
(3, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre', 217000, '2021-09-12', '0916546820', 3, 2),
(4, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre', 69200, '2021-08-12', '0866499519', 2, 2),
(5, 'Hồng Lĩnh, Hà Tĩnh', 79200, '2021-04-13', '0823233223', 2, 4),
(6, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 106700, '2021-10-13', '0866499519', 3, 2),
(7, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 98300, '2021-10-13', '0866499519', 3, 2),
(8, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 58000, '2021-10-13', '0866499519', 2, 2),
(9, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 60000, '2021-05-13', '0866499519', 2, 2),
(10, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 68460, '2021-06-13', '0866499519', 2, 2),
(11, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 70700, '2021-07-13', '0866499519', 2, 2),
(12, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 380000, '2021-08-13', '0866499519', 2, 2),
(13, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 199500, '2021-09-13', '0866499519', 2, 2),
(14, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 109900, '2021-07-13', '0866499519', 2, 2),
(15, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 79600, '2021-08-13', '0866499519', 2, 2),
(16, 'Hồng Lĩnh, Hà Tĩnh', 61460, '2021-01-13', '0823233223', 2, 4),
(17, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 132600, '2021-02-13', '0866499519', 2, 2),
(18, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 40000, '2021-03-13', '0866499519', 2, 2),
(19, 'Cụm 3 tổ dân phố 2, Thị Trấn Khe Tre, Huyện Nam Đông', 230000, '2020-10-14', '0866499519', 2, 2),
(20, 'Số 8 Hà Văn Tính, Đà Nẵng', 440000, '2021-10-14', '0866499519', 2, 2),
(21, '100 Nguyễn Tất Thành, Đà Nẵng', 74750, '2021-10-14', '0916823721', 2, 7),
(22, '100 Nguyễn Tất Thành, Đà Nẵng', 50000, '2021-10-14', '0916823721', 2, 7),
(23, '100 Nguyễn Tất Thành, Đà Nẵng', 56700, '2021-10-14', '0916823721', 2, 7),
(24, '100 Nguyễn Tất Thành, Đà Nẵng', 79200, '2021-10-14', '0916823721', 2, 7),
(25, '100 Nguyễn Tất Thành, Đà Nẵng', 11760, '2021-10-14', '0916823721', 2, 7),
(26, '81 Nguyễn Sinh Sắc, Đà Nẵng', 67760, '2021-10-14', '0916823721', 2, 7),
(27, 'Số 8 Hà Văn Tính, Đà Nẵng', 23760, '2021-10-14', '0866499519', 3, 2),
(28, 'Cứ gửi đến hồ tây là mình nhận <3', 59800, '2021-10-14', '0832329519', 0, 9),
(29, 'Cứ gửi đến hồ tây là mình nhận <3', 56600, '2021-10-14', '0832329519', 3, 9),
(30, 'Gửi đến nhà mình nhé.', 49700, '2021-10-14', '0832329519', 1, 9),
(31, 'Gửi đến nhà mình nhé.', 149600, '2021-10-15', '0832329519', 2, 9),
(32, 'Cư ship toi nha toi nhe', 149500, '2021-10-15', '0866499519', 2, 2),
(33, 'Đà Nẵng', 56600, '2021-10-24', '0912321232', 2, 10),
(34, 'Đà Nẵng', 31900, '2021-10-24', '0866222111', 3, 11),
(35, 'Đà Nẵng', 285400, '2021-10-24', '0866222111', 3, 11),
(36, 'Da Nang', 106100, '2021-10-24', '0872122122', 3, 12),
(37, 'Gửi qua nhà tôi, số 8 hà văn tính, Đà Nẵng', 73400, '2021-10-31', '0982323212', 3, 15),
(38, 'Gửi qua nhà tôi, số 8 hà văn tính, Đà Nẵng', 41780, '2021-10-31', '0982323212', 0, 15),
(39, '8 hà văn tính, Đà Nẵng', 76300, '2021-10-31', '0982232412', 3, 16),
(40, '8 hà văn tính, Đà Nẵng', 51000, '2021-10-31', '0982232412', 2, 16),
(41, 'số 100 Nguyễn Tất Thành, Xã Thung Nai, Huyện Cao Phong, Tỉnh Hoà Bình', 28780, '2021-11-05', '0866499519', 2, 2),
(42, 'số 129 Đà Thành, Xã Tr\'Hy, Huyện Tây Giang, Tỉnh Quảng Nam', 102960, '2021-11-06', '0866499519', 0, 2),
(43, 'số 129 Đà Thành, Xã Thượng Hà, Huyện Bảo Lạc, Tỉnh Cao Bằng', 86200, '2021-11-06', '0866499519', 2, 2),
(44, 'cụm 3 tổ dân phố 2, Xã Đức Quang, Huyện Hạ Lang, Tỉnh Cao Bằng', 109200, '2021-11-06', '0866499519', 0, 2),
(45, 'cụm 3 tổ dân phố 2, Thị trấn Vĩnh Lộc, Huyện Chiêm Hóa, Tỉnh Tuyên Quang', 69600, '2021-11-06', '0866499519', 0, 2),
(46, 'số 100 Nguyễn Tất Thành, Xã Bản Liền, Huyện Bắc Hà, Tỉnh Lào Cai', 109200, '2021-11-06', '0866499519', 0, 2),
(47, 'cụm 3 tổ dân phố 2, Xã Mã Ba, Huyện Hà Quảng, Tỉnh Cao Bằng', 71480, '2021-11-07', '0866499519', 0, 2),
(48, 'cụm 3 tổ dân phố 2, Xã Thượng Giáp, Huyện Na Hang, Tỉnh Tuyên Quang', 26880, '2021-11-07', '0866499519', 0, 2),
(49, 'cụm 3 tổ dân phố 2, Xã Hố Quáng Phìn, Huyện Đồng Văn, Tỉnh Hà Giang', 22000, '2021-11-07', '0866499519', 1, 2),
(50, 'cụm 3 tổ dân phố 2, Xã Lũng Thầu, Huyện Đồng Văn, Tỉnh Hà Giang', 121380, '2021-11-07', '0982232412', 2, 16),
(51, 'số 100 Nguyễn Tất Thành, Xã Vần Chải, Huyện Đồng Văn, Tỉnh Hà Giang', 49500, '2021-11-07', '0982232412', 3, 16),
(52, 'số 129 Đà Thành, Thị trấn Đồng Văn, Huyện Đồng Văn, Tỉnh Hà Giang', 118800, '2021-11-07', '0982232412', 3, 16),
(53, 'cụm 3 tổ dân phố 2, Thị trấn Phó Bảng, Huyện Đồng Văn, Tỉnh Hà Giang', 66600, '2021-11-07', '0982232412', 3, 16),
(54, 'cụm 3 tổ dân phố 2, Xã Lũng Phìn, Huyện Đồng Văn, Tỉnh Hà Giang', 69100, '2021-11-07', '0982232412', 3, 16),
(55, 'cụm 3 tổ dân phố 2, Thị trấn Bảo Lạc, Huyện Bảo Lạc, Tỉnh Cao Bằng', 21780, '2021-11-07', '0982232412', 3, 16),
(56, 'số 100 Nguyễn Tất Thành, Phường Hợp Giang, Thành phố Cao Bằng, Tỉnh Cao Bằng', 41780, '2021-11-07', '0982232412', 3, 16),
(57, 'cụm 3 tổ dân phố 2, Phường Giang Biên, Quận Long Biên, Thành phố Hà Nội', 28780, '2021-11-07', '0982232412', 3, 16),
(58, 'cụm 3 tổ dân phố 2, Phường Quang Trung, Thành phố Hà Giang, Tỉnh Hà Giang', 21780, '2021-11-07', '0982232412', 3, 16),
(59, 'số 100 Nguyễn Tất Thành, Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang', 31680, '2021-11-07', '0982232412', 2, 16),
(60, 'số 100 Nguyễn Tất Thành, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', 21780, '2021-11-07', '0982232412', 3, 16),
(61, 'cụm 3 tổ dân phố 2, Xã Cần Nông, Huyện Hà Quảng, Tỉnh Cao Bằng', 69600, '2021-11-07', '0866499519', 3, 2),
(62, 'cụm 3 tổ dân phố 2, Xã Má Lé, Huyện Đồng Văn, Tỉnh Hà Giang', 151080, '2021-11-08', '0866499519', 3, 2),
(63, 'cụm 3 tổ dân phố 2, Xã Tiền Tiến, Thành phố Hải Dương, Tỉnh Hải Dương', 69600, '2021-11-22', '0866499519', 3, 2),
(64, 'cụm 3 tổ dân phố 2, Phường Hàng Mã, Quận Hoàn Kiếm, Thành phố Hà Nội', 69600, '2021-11-25', '0866499519', 2, 2),
(65, 'số 100 Nguyễn Tất Thành, Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang', 39600, '2021-11-25', '0866499519', 4, 2),
(66, 'số 100 Nguyễn Tất Thành, Xã Cao Mã Pờ, Huyện Quản Bạ, Tỉnh Hà Giang', 69600, '2021-11-25', '0866499519', 4, 2),
(67, 'số 100 Nguyễn Tất Thành, Xã Thượng Hà, Huyện Bảo Lạc, Tỉnh Cao Bằng', 69600, '2021-11-25', '0866499519', 3, 2),
(68, 'cụm 3 tổ dân phố 2, Xã Cao Mã Pờ, Huyện Quản Bạ, Tỉnh Hà Giang', 46600, '2021-11-25', '0866499519', 3, 2),
(69, 'số 100 Nguyễn Tất Thành, Xã Cô Ba, Huyện Bảo Lạc, Tỉnh Cao Bằng', 54600, '2021-11-25', '0866499519', 2, 2),
(70, 'số 100 Nguyễn Tất Thành, Xã Sủng Tráng, Huyện Yên Minh, Tỉnh Hà Giang', 61600, '2021-11-25', '0866499519', 2, 2),
(71, 'số 100 Nguyễn Tất Thành, Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang', 69600, '2021-11-25', '0866499519', 2, 2),
(72, 'số 100 Nguyễn Tất Thành, Xã Đồng Lạc, Huyện Nam Sách, Tỉnh Hải Dương', 71500, '2021-11-25', '0866499519', 2, 2),
(73, 'cụm 3 tổ dân phố 2, Xã Yên Lâm, Huyện Hàm Yên, Tỉnh Tuyên Quang', 69600, '2021-11-25', '0866499519', 2, 2),
(74, 'số 100 Nguyễn Tất Thành, Xã Cần Yên, Huyện Hà Quảng, Tỉnh Cao Bằng', 69600, '2021-11-25', '0866499519', 4, 2),
(75, 'số 100 Nguyễn Tất Thành, Xã Hà Hiệu, Huyện Ba Bể, Tỉnh Bắc Kạn', 69600, '2021-11-25', '0866499519', 0, 2),
(76, 'số 100 Nguyễn Tất Thành, Xã Hồng Phúc, Huyện Ninh Giang, Tỉnh Hải Dương', 109200, '2021-11-25', '0866499519', 0, 2),
(77, 'số 100 Nguyễn Tất Thành, Xã Xín Cái, Huyện Mèo Vạc, Tỉnh Hà Giang', 99600, '2021-11-25', '0866499519', 0, 2),
(78, 'số 100 Nguyễn Tất Thành, Xã Thượng Phùng, Huyện Mèo Vạc, Tỉnh Hà Giang', 99600, '2021-11-25', '0866499519', 0, 2),
(79, 'số 100 Nguyễn Tất Thành, Xã Quang Hán, Huyện Trùng Khánh, Tỉnh Cao Bằng', 139200, '2021-11-25', '0866499519', 0, 2),
(80, 'số 100 Nguyễn Tất Thành, Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang', 69600, '2021-11-25', '0866499519', 3, 2),
(81, 'cụm 3 tổ dân phố 2, Xã Đức Hạnh, Huyện Bảo Lâm, Tỉnh Cao Bằng', 109200, '2021-11-27', '0866499519', 0, 2),
(82, 'số 129 Đà Thành, Xã Đồng Bài, Huyện Cát Hải, Thành phố Hải Phòng', 59500, '2021-12-03', '0866499519', 2, 2),
(83, 'số 100 Nguyễn Tất Thành, Phường Hòa Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 187900, '2021-12-21', '0982221321', 3, 18),
(84, 'số 129 Đà Thành, Thị trấn Pác Miầu, Huyện Bảo Lâm, Tỉnh Cao Bằng', 94200, '2021-12-21', '0982221321', 2, 18),
(85, '62 Nguyen Sinh Sac, Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang', 56800, '2021-12-21', '0982221321', 2, 18),
(86, 'số 100 Nguyễn Tất Thành, Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang', 10000, '2021-12-21', '0982221321', 2, 18),
(87, 'số 100 Nguyễn Tất Thành, Xã Đình Chu, Huyện Lập Thạch, Tỉnh Vĩnh Phúc', 69600, '2021-12-21', '0982221321', 4, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(4, 3000, 1, 2, 38),
(5, 39600, 1, 2, 17),
(6, 10000, 1, 2, 12),
(7, 130000, 1, 3, 29),
(8, 7000, 1, 3, 19),
(9, 80000, 4, 3, 7),
(10, 39200, 1, 4, 8),
(11, 30000, 2, 4, 15),
(12, 40000, 2, 5, 7),
(13, 39200, 1, 5, 8),
(14, 60000, 3, 6, 40),
(15, 17000, 1, 6, 41),
(16, 29700, 1, 6, 16),
(17, 9000, 3, 7, 35),
(18, 20000, 1, 7, 40),
(19, 29700, 3, 7, 6),
(20, 39600, 1, 7, 17),
(21, 3000, 1, 8, 35),
(22, 15000, 1, 8, 15),
(23, 40000, 2, 8, 42),
(24, 10000, 1, 9, 39),
(25, 10000, 1, 9, 13),
(26, 40000, 2, 9, 7),
(27, 29700, 1, 10, 16),
(28, 20000, 1, 10, 18),
(29, 7000, 1, 10, 19),
(30, 11760, 1, 10, 5),
(31, 29700, 1, 11, 16),
(32, 20000, 1, 11, 18),
(33, 21000, 3, 11, 19),
(34, 130000, 1, 12, 29),
(35, 20000, 2, 12, 10),
(36, 230000, 1, 12, 31),
(37, 130000, 1, 13, 29),
(38, 49500, 2, 13, 11),
(39, 20000, 1, 13, 14),
(40, 30000, 1, 14, 43),
(41, 10000, 1, 14, 10),
(42, 60000, 3, 14, 7),
(43, 9900, 1, 14, 6),
(44, 20000, 1, 15, 14),
(45, 39600, 1, 15, 17),
(46, 20000, 2, 15, 39),
(47, 20000, 1, 16, 7),
(48, 11760, 1, 16, 5),
(49, 29700, 3, 16, 6),
(50, 117600, 3, 17, 8),
(51, 15000, 1, 17, 15),
(52, 10000, 1, 18, 12),
(53, 30000, 2, 18, 15),
(54, 230000, 23, 19, 39),
(55, 40000, 2, 20, 7),
(56, 400000, 2, 20, 30),
(57, 40000, 2, 21, 7),
(58, 10000, 1, 21, 10),
(59, 24750, 1, 21, 11),
(60, 40000, 2, 22, 7),
(61, 10000, 1, 22, 10),
(62, 20000, 1, 23, 7),
(63, 7000, 1, 23, 19),
(64, 29700, 1, 23, 16),
(65, 79200, 2, 24, 17),
(66, 11760, 1, 25, 5),
(67, 23760, 2, 26, 5),
(68, 30000, 3, 26, 39),
(69, 14000, 2, 26, 19),
(70, 23760, 2, 27, 5),
(71, 20000, 1, 28, 7),
(72, 19800, 2, 28, 6),
(73, 20000, 2, 28, 39),
(74, 39600, 1, 29, 17),
(75, 7000, 1, 29, 19),
(76, 10000, 1, 29, 39),
(77, 20000, 2, 30, 39),
(78, 29700, 3, 30, 6),
(79, 39600, 1, 31, 17),
(80, 60000, 2, 31, 43),
(81, 50000, 5, 31, 39),
(82, 39600, 1, 32, 17),
(83, 10000, 1, 32, 39),
(84, 20000, 1, 32, 7),
(85, 9900, 1, 32, 6),
(86, 10000, 1, 32, 12),
(87, 60000, 1, 32, 20),
(88, 39600, 1, 33, 17),
(89, 7000, 1, 33, 19),
(90, 10000, 1, 33, 39),
(91, 7000, 1, 34, 19),
(92, 15000, 1, 34, 15),
(93, 9900, 1, 34, 6),
(94, 7000, 1, 35, 19),
(95, 200000, 1, 35, 30),
(96, 78400, 2, 35, 8),
(97, 10000, 1, 36, 39),
(98, 79200, 2, 36, 17),
(99, 7000, 1, 36, 19),
(100, 9900, 1, 36, 6),
(101, 19800, 2, 37, 6),
(102, 14000, 2, 37, 19),
(103, 39600, 1, 37, 17),
(104, 20000, 1, 38, 7),
(105, 9900, 1, 38, 6),
(106, 11880, 1, 38, 5),
(107, 29700, 1, 39, 16),
(108, 39600, 1, 39, 17),
(109, 7000, 1, 39, 19),
(110, 30000, 1, 40, 43),
(111, 21000, 3, 40, 19),
(112, 7000, 1, 41, 19),
(113, 11880, 1, 41, 5),
(114, 9900, 1, 41, 6),
(115, 79200, 2, 42, 17),
(116, 23760, 2, 42, 5),
(117, 7000, 1, 43, 19),
(118, 79200, 2, 43, 17),
(119, 79200, 2, 44, 17),
(120, 30000, 1, 44, 24),
(121, 39600, 1, 45, 17),
(122, 30000, 1, 45, 24),
(123, 79200, 2, 46, 17),
(124, 30000, 1, 46, 24),
(125, 39600, 1, 47, 17),
(126, 11880, 1, 47, 5),
(127, 20000, 1, 47, 7),
(128, 11880, 1, 48, 5),
(129, 15000, 1, 48, 15),
(130, 7000, 1, 49, 19),
(131, 15000, 1, 49, 15),
(132, 39600, 1, 50, 17),
(133, 11880, 1, 50, 5),
(134, 9900, 1, 50, 6),
(135, 30000, 1, 50, 43),
(136, 30000, 2, 50, 15),
(137, 39600, 1, 51, 17),
(138, 9900, 1, 51, 6),
(139, 118800, 3, 52, 17),
(140, 7000, 1, 53, 19),
(141, 39600, 1, 53, 17),
(142, 20000, 1, 53, 7),
(143, 9900, 1, 54, 6),
(144, 20000, 1, 54, 7),
(145, 39200, 1, 54, 8),
(146, 11880, 1, 55, 5),
(147, 9900, 1, 55, 6),
(148, 11880, 1, 56, 5),
(149, 9900, 1, 56, 6),
(150, 20000, 1, 56, 7),
(151, 7000, 1, 57, 19),
(152, 11880, 1, 57, 5),
(153, 9900, 1, 57, 6),
(154, 9900, 1, 58, 6),
(155, 11880, 1, 58, 5),
(156, 11880, 1, 59, 5),
(157, 19800, 2, 59, 6),
(158, 11880, 1, 60, 5),
(159, 9900, 1, 60, 6),
(160, 30000, 1, 61, 24),
(161, 39600, 1, 61, 17),
(162, 79200, 2, 62, 17),
(163, 30000, 1, 62, 24),
(164, 11880, 1, 62, 5),
(165, 30000, 1, 62, 43),
(166, 39600, 1, 63, 17),
(167, 30000, 1, 63, 24),
(168, 30000, 1, 64, 24),
(169, 39600, 1, 64, 17),
(170, 39600, 1, 65, 17),
(171, 39600, 1, 66, 17),
(172, 30000, 1, 66, 24),
(173, 30000, 1, 67, 24),
(174, 39600, 1, 67, 17),
(175, 39600, 1, 68, 17),
(176, 7000, 1, 68, 19),
(177, 15000, 1, 69, 15),
(178, 39600, 1, 69, 17),
(179, 39600, 1, 70, 17),
(180, 7000, 1, 70, 19),
(181, 15000, 1, 70, 15),
(182, 30000, 1, 71, 24),
(183, 39600, 1, 71, 17),
(184, 7000, 1, 72, 19),
(185, 39600, 1, 72, 17),
(186, 9900, 1, 72, 6),
(187, 15000, 1, 72, 15),
(188, 39600, 1, 73, 17),
(189, 30000, 1, 73, 24),
(190, 39600, 1, 74, 17),
(191, 30000, 1, 74, 24),
(192, 39600, 1, 75, 17),
(193, 30000, 1, 75, 24),
(194, 79200, 2, 76, 17),
(195, 30000, 1, 76, 24),
(196, 39600, 1, 77, 17),
(197, 60000, 2, 77, 24),
(198, 39600, 1, 78, 17),
(199, 60000, 2, 78, 24),
(200, 79200, 2, 79, 17),
(201, 60000, 2, 79, 24),
(202, 39600, 1, 80, 17),
(203, 30000, 1, 80, 24),
(204, 79200, 2, 81, 17),
(205, 30000, 1, 81, 24),
(206, 39600, 1, 82, 17),
(207, 9900, 1, 82, 6),
(208, 10000, 1, 82, 10),
(209, 118800, 3, 83, 17),
(210, 20000, 1, 83, 7),
(211, 39200, 1, 83, 8),
(212, 9900, 1, 83, 6),
(213, 79200, 2, 84, 17),
(214, 15000, 1, 84, 15),
(215, 7000, 1, 85, 19),
(216, 30000, 2, 85, 15),
(217, 19800, 2, 85, 6),
(218, 10000, 1, 86, 45),
(219, 39600, 1, 87, 17),
(220, 30000, 2, 87, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `description`, `discount`, `entered_date`, `image`, `name`, `price`, `quantity`, `status`, `category_id`, `sold`) VALUES
(5, 'Hiện nay có một loại thực phẩm rau củ cao cấp giòn và ngọt được rất nhiều người yêu thích đó là carot baby. Nguồn thức ăn chứa dồi dào các dinh dưỡng và vitamin có lợi cho sức khỏe con người. Bạn có thể ăn sống trực tiếp hoặc nấu chín, chế biến thành sinh tố…\nGiống cà rốt nhỏ xinh xắn này rất giàu dinh dưỡng và được người dân thành thị rất ưa chuộng trồng trong những chậu cây cảnh để trang trí tuyệt đẹp. Nó vừa làm đẹp cho không gian sống của gia đình bạn, vừa là nguyên liệu tươi sạch cung cấp mọi dinh dưỡng cần thiết cho sức khỏe, được chế biến thành nhiều món ăn vô cùng ngon miệng trong các bữa ăn hàng ngày.', 1, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633439753/products/l9tr4snbhbnbgrph1lc0.jpg', 'Cà rốt', '12000.0', 97, b'1', 2, 6),
(6, 'Đã quá quen thuộc với mỗi chúng ta. Loại củ này được xuất hiện thường xuyên trên mâm cơm này có rất nhiều công dụng hữu ích. Nó không chỉ tốt cho sức khỏe, làm đẹp hiệu quả mà còn có rất nhiều tác dụng bổ ích khác. Khoai tây có thể chế biến thành canh, súp, hoặc chiên đều rất ngon.\nKhoai tây thuộc họ cà, là một loại củ đa năng có hàm lượng chất dinh dưỡng cao, vì vậy nhiều hộ gia đình tại Việt Nam đã lựa chọn khoai tây như một món ăn chính trong các bữa ăn hàng ngày. Sở hữu nguồn vitamin và khoáng chất phong phú, khoai tây mang lại nhiều lợi ích cho sức khỏe như kháng viêm, giảm đau, tăng cường hệ miễn dịch, kích thích tiêu hóa,...', 1, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441148/products/esuf8jqp6nwikqtkzbe8.png', 'Khoai tây', '10000.0', 91, b'1', 2, 20),
(7, 'Cam không còn xa lạ gì với cuộc sống của chúng ta, đó là một loại trái cây đa năng được dùng rất nhiều trong gia đình như nấu ăn, làm bánh, thức uống, làm đẹp, vị thuốc,....\nCam vàng tươi cung cấp nhiều dưỡng chất cho cơ thể như: vitamin C, glucose.. và hàm lượng chất xơ dồi dào. Cam vàng là một trong những loại quả tốt nhất hỗ trợ thúc đẩy sức khỏe tối ưu.\nCam tự hào là một loại trái cây giàu chất xơ có tác dụng tuyệt vời hỗ trợ cho đường tiêu hóa, ngăn ngừa tình trạng viêm loét dạ dày, ngăn ngừa tình trạng táo bón, giúp cho đường ruột hấp thụ dinh dưỡng tốt hơn.\nSử dụng nước cam mỗi ngày sẽ bảo vệ bạn khỏi bị nhiễm virus, ngoài ra cam còn có tác dụng trong chống viêm, chống dị ứng, bồi bổ thể lực một cách tối đa.\n', 0, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441254/products/czllwfpmmqlkfjdtahcy.jpg', 'Cam siêu ngon', '20000.0', 90, b'1', 3, 2),
(8, 'Từ những vùng trồng thanh long nổi tiếng cả nước. Thanh long trắng có bề ngoài bóng bẩy đẹp mắt, thịt quả dày, tươi ngon, vị ngọt thanh hấp dẫn. Trong thanh long có chứa hàm lượng lớn vitamin C giúp tăng cường sức đề kháng cho cở thể khỏe mạnh.\nThanh long có nhiều loại như: thanh long ruột trắng, ruột đỏ, ruột tím hồng,... Không chỉ là 1 loại trái cây nội địa giàu dinh dưỡng, đặc biệt là hàm lượng vitamin C. Mà tác dụng của thanh long vô cùng hữu ích, giúp tăng cường sức đề kháng, giảm nguy cơ mắc các bệnh viêm nhiễm, phòng tránh được các bệnh thường gặp như: viêm đường hô hấp, cảm cúm, tình trạng chảy máu cam...', 2, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441368/products/xrsdagvobfpjd7w8iivv.jpg', 'Thanh long', '40000.0', 97, b'1', 3, 0),
(9, 'Bắp su tím là dạng bắp cải cùng với bắp su xanh nhưng có màu tím. Đây cũng là loại rau phổ biến vì những giá trị dinh dưỡng mang lại cho chúng ta rất nhiều.\nLà loại rau chứa nhiều những hoạt chất, những chất dinh dưỡng như vitamin và khoáng chất là thiamin, folate, canxi, magiê, mangan, riboflavin, sắt, kali, vitamin A, vitamin E, vitamin C, vitamin K và vitamin B và chất xơ.\nTrong bắp cải tím chứa nhiều dưỡng chất như magiê, mangan, canxi, các khoáng chất và vitamin cần thiết khác như vitamin K. Đây là những dưỡng chất giúp cho xương bạn chắc khỏe. Hỗ trợ và ngăn ngừa các bệnh về xương như loãng xương, viêm khớp.\nBắp sú tím còn có các lợi ích như: Tăng cường miễn dịch, ngăn ngừa ung thư, giảm cân,...\n', 1, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441406/products/gvoctzuoeqc89yko5e6x.jpg', 'Bắp su tím', '25000', 100, b'1', 1, 0),
(10, 'Xà lách xoắn (hay Xà lách lolo xanh) có vị ngọt đắng, tính mát và thơm nhẹ, kết cấu lá giòn. Là loại rau chứa nhiều vitamin, khoáng chất, rất tốt cho sức khỏe, được nhiều chị em lựa chọn trong thực đơn bữa ăn gia đình. Có tác dụng giải nhiệt, lọc máu, kích thích tiêu hóa, giảm đau, trị bệnh mất ngủ, chống ho. Loại rau xà lách lolo này thích hợp ăn sống và làm các món salad trộn: xà lách trộn dầu giấm, trộn thịt bò, trứng,.', 0, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441482/products/airtu8nv7bsxavg63fnv.jpg', 'Rau xà lách xoắn', '10000.0', 194, b'1', 1, 3),
(11, 'Bông cải trắng có phần bông màu trắng gắn khít vào nhau, xốp và hơi dai mềm, bên ngoài có lớp lá bao bọc xung quanh, phiến lá cứng và dày. \nMột cup bông cải có 3g chất xơ, chiếm 10% nhu cầu hằng ngày . Chất xơ giúp nuôi các vi khuẩn khỏe mạnh trong ruột, giúp giảm viêm và tăng cường sức khỏe tiêu hóa.\nChất chống oxy hóa trong bông cải bảo vệ các tế bào của bạn khỏi các gốc tự do có hại gây viêm.\nChất Choline trong súp lơ trắng giúp duy trì màng tế bào, tổng hợp ADN và hỗ trợ trao đổi chất, ngăn ngừa cholesterol tích tụ trong gan.\nCó thể được sử dụng để thay thế các loại ngũ cốc và đậu trong chế độ ăn giảm cân.', 1, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441529/products/w5seto7fuela8idbowvi.jpg', 'Súp lơ trắng', '25000.0', 97, b'1', 1, 1),
(12, 'Hành lá hay gọi là hành hoa, hành hương, hành ta. Hành lá có mùi thơm, vị ngọt và cay the nhè nhẹ khi ăn sống, do đó chúng hay được sử dụng với vai trò là gia vị cho các món ăn. Ngoài ra, hành lá cũng xuất hiện trong một số bài thuốc đông y nhằm phòng hoặc chữa một vài căn bệnh nào như: giải quyết dứt điểm triệu chứng cảm sốt, nhức đầu, ăn uống không tiêu, ngăn ngừa tiểu đường, tốt cho mắt, nâng cao hoạt động hệ tim mạch,...', 0, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441562/products/nbbeayxckejplgwbvfyb.jpg', 'Hành lá', '10000.0', 299, b'1', 1, 33),
(13, 'Rau thơm các loại gói 200g (hay gọi là rau gia vị) gồm rau kinh giới, rau húng trắng, rau diếp cá. Kết hợp ăn rau khác nhau tương ứng với từng món ăn khác nhau làm gia tăng hương vị cho món ăn. Hoặc được sử dụng như một phương pháp điều trị bệnh: mụn nhọt, sưng tuyến vú, điều trị cảm mạo, ho, dị ứng, rôm sẩy ở trẻ nhỏ, cầm máu, điều trị các bệnh phát ban, tốt cho tim mạch...', 0, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441625/products/v6xmhanvtetkgrvsfbkw.jpg', 'Rau thơm', '10000', 200, b'1', 1, 5),
(14, 'Cải thìa hay cải bẹ trắng còn có tên là bạch giới tử thuộc họ cải cùng họ với cải thảo, cải bẹ xanh. Đây là loại rau chứa nhiều thành phần dinh dưỡng dễ chế biến, ăn ngon miệng. Vị cải giòn, ngọt, mát và chứa nhiều chất xơ, hàm lượng dinh dưỡng cao nên thường được dùng để chế biến các món rau xào hoặc luộc. Ngoài ra, rau cải thìa cũng mang đến nhiều lợi cho sức khỏe. Đặc biệt, rất tốt cho phụ nữ mang thai, phòng ngừa bệnh đục nhân mắt, ngăn ngừa ung thư,...', 0, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441663/products/i9ters0epnau5myeq6p8.jpg', 'Cải thìa', '20000.0', 98, b'1', 1, 1),
(15, 'Rau dền là một trong những loại rau chứa nhiều khoáng chất và vitamin nhất, trong 100g rau dền có chứa 0.32mg vitamin B2, 80mg vitamin C, 267mg canxi, 1.3g chất xơ, 3.9mg chất sắt, 3.5g protein, 411 mg kali và 2.6g khoáng chất.\nRau dền là một loại rau xanh có 3 loại phổ biến: Rau đền đỏ, rau dền gai, rau dền cơm. Được các bà nội trợ bổ sung trong thực đơn mỗi ngày. Ngoài vị ngọt mát và thành phần dinh dưỡng cao, rau dền xanh còn được xem là một vị thuốc dân gian chữa được nhiều bệnh với lợi ích như: Chống táo bón, điều trị tăng huyết áp, tốt cho bệnh nhân tiểu đường, ngừa ung thư...', 0, '2021-10-05', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633441707/products/gg2zprfhwellqyt5ngft.jpg', 'Rau dền', '15000.0', 87, b'1', 1, 12),
(16, 'Còn gọi là bí đỏ hạt đậu, đây là giống bí có ruột rất đặc, ít hả ăn dẻo và ngọt. Bí hồ lô chứa nhiều chất dinh dưỡng và mang lại nhiều lợi ích cho sức khoẻ. Bí hồ lô có thể chế biến thành nhiều món ăn ngon như: sữa bí, canh bí, súp bí,... món nào cũng đều thơm ngon.\nBí đỏ là loại củ chứa lượng calo tương đối thấp, do 94% bí đỏ là nước. Bí đỏ cũng chứa nhiều beta-caroten, một loại carotenoid mà cơ thể tổng hợp thành vitamin A. Hơn thế nữa, hạt bí đỏ cũng có thể được sử dụng bởi chúng chứa nhiều chất dinh dưỡng và mang lại nhiều lợi ích cho sức khoẻ.\nBí đỏ hồ lô cùng họ nhà bí đỏ nhưng có hình dạng giống như hồ lô. Về mặt dinh dưỡng, bí đỏ hay bí đỏ hồ lô đều giống nhau. Bí đỏ hồ lô sẽ tăng thêm một sự lựa chọn cho những người nội trợ với nhu cầu trang trí món ăn thêm phần bắt mắt. ', 1, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694329/products/zwq0gfydtgdydlbra1fj.jpg', 'Bí đỏ hồ lô', '30000.0', 198, b'1', 2, 1),
(17, 'Giống như hầu hết các loại trái cây và rau quả có màu cam / đỏ, gấc chứa hàm lượng cao beta-carotene và lycopene. Và hầu hết các lợi ích sức khỏe đã được khẳng định của quả gấc đều bắt nguồn từ hàm lượng beta-carotene và lycopene cao này. Trên thực tế, mỗi gam gấc có nhiều beta - carotene hơn cà rốt hoặc khoai lang (vốn đã có hàm lượng khá cao).\nPhần cùi gấc thường được trộn với gạo nếp để tạo thành món ăn Việt Nam gọi là xôi gấc, nghe qua có vẻ giống như một loại gạo vàng tự nhiên có thể giúp ngăn ngừa sự thiếu hụt vitamin A (beta-caroten được chuyển hóa thành vitamin A trong cơ thể). Gấc cũng chứa nhiều lycopene, một loại carotenoid thường được tìm thấy trong cà chua có liên quan đến nhiều lợi ích sức khỏe bao gồm giảm nguy cơ đột quỵ.\nVà để làm cho quả gấc tốt cho sức khỏe hơn nữa, một nghiên cứu năm 2005 đã phát hiện ra rằng quả gấc có chứa một loại protein có tác dụng ức chế được sự phát triển của khối u ở chuột.', 1, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694421/products/ikxyc4dpda5d2xe4ro39.jpg', 'Quả gất', '40000.0', 275, b'1', 2, 28),
(18, 'Là một loại củ được nhiều chị em nội trợ chọn mua để chế biến thành các món ăn ngon cho gia đình. Quả su su có tính mát, lành tính, chứa nhiều chất dinh dưỡng có lợi cho sức khỏe như nước, protid, glucid, vitamin C,... Su su có thể chế biến thành nhiều món ăn ngon như: xào, súp, canh,...\nSu su (hay còn gọi là su le) là một loại thực phẩm thuộc lớp củ, quả thuộc họ Bầu, bí, cùng với dưa hấu, dưa chuột và bí. Cây su su thân leo có rễ phình thành củ. Lá to, bóng, hình chân vịt, có 5 thuỳ, tua cuốn chia 3-5 nhánh. Hoa nhỏ, đơn tính, cùng gốc, màu trắng vàng. Quả thịt hình quả lê có cạnh lồi dọc và sần sùi, to bằng nắm tay, chứa một hạt lớn hình cầu. Quả su su có tính mát, lành tính, chứa nhiều chất dinh dưỡng có lợi cho sức khỏe như nước, protid, glucid, vitamin C. Trong quả và hạt su su giàu axit amino như axit aspartic axit glutamic, alanine, arginine, cysteine, phenylalanine, glycine, histidine, isoleucine, leucine, methionine (chỉ có ở quả), proline, serine, tyrosine, threonine và valine.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694473/products/ec8bdafmoogbqkd9ii3f.jpg', 'Quả su su', '20000.0', 299, b'1', 2, 1),
(19, 'Khế tươi là loại quả phổ biến và được sử dụng thường xuyên trong các bữa ăn, không chỉ để tạo mùi vị mà quả khế còn có nhiều tác dụng tốt với sức khỏe. Quả khế có màu vàng hoặc màu xanh, 5 múi và khi cắt ngang trái khế cho những lát khế hình ngôi sao rất đẹp mắt. Khế giòn, có vị chua ngọt, giống với vị của quả lê dứa. Phần hạt bên trong nhỏ và có màu nâu.\nKhế có 2 giống: khế chua và khế ngọt. Khế ngọt khi chín thường xuất hiện màu vàng hoặc màu xanh nhưng trông rất mọng nước, còn khế chua khi chín thì thường có màu vàng hơn.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694520/products/qdcghn9gavlmd81yvhat.jpg', 'Quả khế', '7000.0', 384, b'1', 3, 13),
(20, 'Me hiện nay trở thành món ăn khoái khẩu của nhiều người mỗi khi đến vụ. Không chỉ thơm và ngọt, loại trái cây này còn có nhiều công dụng bồi bổ sức khỏe và chữa bệnh khá hiệu quả. Trước đây khi nhắc đến quả me người ta thường chỉ nghĩ đây là một loại gia vị dùng để nấu canh vì vị của chúng quá chua không thích hợp ăn. Từ khi giống cây me Lan du nhập vào nước ta quan niệm đó đã thay đổi hoàn toàn. Loại quả nhập khẩu này trở thành một loại quả được nhiều người ưa thích vì không còn vị chua thay vào đó là hương vị ngọt và bùi khá ngon.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694564/products/qniz2ysi6nuk2hcrrz2t.jpg', 'Quả me', '60000.0', 299, b'1', 3, 51),
(21, 'Quả bầu là loại quả thuộc dạng cây leo, có nhiều hình dạng tùy theo giống như hình hồ lô, dài thẳng hoặc bầu tròn, kèm với lớp vỏ màu xanh (có thể xuất hiện đốm trắng). Ruột màu trắng và có nhiều hạt bầu dài, dẹt. Bầu có vị ngọt, lành tính, hỗ trợ giải nhiệt, thông tiểu, trừ ngứa, giải độc. Ngoài ra, lá bầu tính bình, vị ngọt giúp giải nhiệt độc. Nếu ăn quả lúc còn non, thì hạt sẽ nhỏ kèm với lớp vỏ mềm. Tuy nhiên, khi ăn quả lúc già, thì bạn sẽ cảm nhận được vị chua nhẹ và có xơ.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694594/products/xzmvmozqgj9b8cmv4hkn.jpg', 'Quả bầu', '23000', 200, b'1', 3, 0),
(22, 'Là loại rau củ được nhiều chị em nội trợ chọn mua để chế biến thành các món ăn ngon cho gia đình. Mướp hương cũng chứa nhiều nước, Protid, Lipid, Glucid, Canxi, Photpho, Sắt, B1, B6, B2, C rất tốt cho cơ thể. Mướp có thể chế biến thành các món xào, món canh, hấp đều rất ngon.\nMướp hương hay có tên gọi khác là: mướp gối, cây mướp, mướp ta,... đây là một loại rau củ quá đỗi quen thuộc với các bà nội trợ. Mướp hương sau khi chín thường sẽ có màu xanh đậm hoặc xanh nhạt, có chiều dài khoảng 25 - 30cm, vỏ thô ráp.\nMướp hương có mùi thơm ngát đặc trưng khi còn tươi cũng như khi đã chế biến thành nhiều món ăn khác nhau. Khi chế biến thì mướp hương có độ mềm, thơm ngon.\nMướp hương chứa nhiều nước, Protid, Lipid, Glucid, Canxi, Photpho, Sắt, B1, B6, B2, C…có tác dụng chống viêm, chống nếp nhăn và hỗ trợ điều trị các chứng ho, đau họng, đau răng, đau lưng, đau bụng kinh hoặc viêm bàng quang.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694626/products/jcbbgx15tlz111rsafmr.jpg', 'Quả mướp ngọt', '15000', 200, b'1', 3, 0),
(23, 'Củ cải trắng là một loại rau củ vừa có thể dùng để làm thực phẩm, vừa có thể sử dụng để làm dầu hạt cải. Loại rau củ này chứa rất nhiều vitamin và khoáng chất, rất tốt cho cơ thể. Một vài công dụng của củ cải trắng có thể kể đến như: hỗ trợ giảm cân, hỗ trợ hệ tiêu hoá, tăng cường miễn dịch,...\nCủ cải trắng hay còn được gọi là củ cải mùa đông, có nguồn gốc từ Trung Quốc và Nhật Bản. Đây là một loại rau củ được trồng để làm thực phẩm và dầu hạt. Củ cải trắng có ngoại hình giống với cà rốt nhưng có màu trắng, mùi vị thì hơi ngọt và cay.\nCủ cải trắng chứa rất nhiều chất dinh dưỡng tốt và cần thiết cho cơ thể. Một vài tác dụng của củ cải trắng có thể kể đến như: Hỗ trợ giảm cân, ngăn ngừa ung thư, cải thiện hệ tiêu hoá, giải độc cơ thể, tăng cường hệ miễn dịch,...', 1, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694668/products/xldwi67qvdc4qw9h7j55.jpg', 'Củ cải trắng', '10000', 200, b'1', 1, 0),
(24, 'Là loại nguyên liệu mà nhà nhà đều phải có trong gian bếp của mình. Ngoài là nguyên liệu cho các món ăn, chanh còn rất nhiều tác dụng không ngờ khác như: Làm đẹp, cải thiện sức khỏe, vệ sinh nhà cửa,... Trong chanh có rất nhiều loại vitamin và khoáng chất rất tốt cho cơ thể nữa.\nBên cạnh các loại hành, tỏi, rau nêm thì chanh là một nguyên liệu không thể thiếu giúp tăng thêm hương vị cho nhiều món ăn . Từ lâu chanh trở thành người \"bạn nhà bếp\" của mỗi người, người ta thích chanh không chỉ vì vị chua thanh tự nhiên mà còn nhờ hương thơm đặc trưng. ', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694709/products/rph1o2xnx2jdjjbksdqr.jpg', 'Quả chanh', '30000.0', 394, b'1', 3, 16),
(25, 'Vị ngọt thanh, hạt nhỏ, vỏ mỏng, là một trong những loại trái cây nhiệt đới đặc trưng của ngày hè, chôm chôm được nuôi trồng theo những tiêu chuẩn an  toàn và chất lượng. Có thể sử dụng là món tráng miệng sau mỗi bữa ăn hoặc làm trái cây dầm.\nChôm chôm là một loại trái cây vùng nhiệt đới, được trồng nhiều ở vùng đồng bằng sông Cửu Long, đặc biệt là Bến Tre. Đây là loại quả quen thuộc trong đời sống, quả khi chín có vỏ màu đỏ tươi. Khi thưởng thức sẽ cảm nhận phần thịt mọng nước, vị ngọt thanh và độ giòn dai. \nKhông những hấp dẫn về mùi vị, chôm chôm còn chứa nhiều chất dinh dưỡng như: vitamin C, đồng, mangan, kali, canxi, sắt, phospho, chất xơ,… Vì thế, đây là loại quả rất tốt cho sức khỏe, có khả năng làm đẹp đối với phụ nữ.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694754/products/hx40pxvweoy94qwhmzot.jpg', 'Chôm chôm', '50000', 300, b'1', 3, 0),
(26, 'Là một trong những loại trái cây đặc sản của Việt Nam. Vú sữa bơ hồng căng mọng có vị ngọt hương thơm bơ sữa hấp dẫn, quyến rũ. Đặc biệt trong cú sữa có chứa các dưỡng chất như canxi, phốt pho, sắt và magiê rất tốt cho sức khỏe phụ nữa mang thai và thai nhi. Cam kết đúng khối lượng, chất lượng và an toàn.\nVú sữa bơ hồng là một trong những loại trái cây cung cấp dinh dưỡng và sức khoẻ cho người tiêu dùng.Phần thịt có màu sữa trắng, vị ngọt thanh, thơm mùi bơ sữa, có các hạt dẹt màu nâu nhạt. Lợi ích từ vú sửa như sau:\nTrong 100gram thịt vú sữa cung cấp chứa 67 kcal, chứa nhiều loại vitamin A, B1, B2, B3, C… nhất là glucid, canxi, sắt, chất xơ, protein và lipid.\nHấp thụ 100 – 200g vú sữa mỗi ngày sẽ giúp phòng ngừa hiện tượng thiếu máu, còi xương ở trẻ.\nVú sữa còn chứa nhiều nước, hàm lượng chất xơ cao giúp cho người dùng có cảm giác no bụng, kiểm soát cân nặng hiệu quả\nLượng calcium không những giúp xương chắc khỏe mà còn ngừa được lượng mỡ thừa trong cơ thể', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694792/products/qpjwu0uf7jqibpqgqe8i.jpg', 'Quả vú sữa', '70000', 200, b'1', 3, 0),
(27, 'Vải thiều là loại trái cây được nhiều người yêu thích, trái vải chín đỏ, mọng nước và thơm ngọt. Ngoài ăn trực tiếp thì vải còn chế biến thành nhiều món ngon như trà vải, vải sấy khô, siro vải, rau câu vải,.... Tuy nhiên mỗi ngày chỉ nên ăn 6-7 trái, nếu ăn nhiều quá có thể dẫn đến nóng trong người.\nCứ đến khoảng tháng 6, tháng 7 là mùa rộ thu hoạch vải thiều ở các tỉnh phía Bắc. Những quả vải thiều chín đỏ, căng mọng và thơm ngọt là món trái cây ưa thích của nhiều gia đình trong mùa hè bởi giá thành không quá cao. Trái vải được lấy từ nhiều nơi khác nhau như vải thiều Thanh Hà, vải thiều Lục Ngạn. Dù vậy, chất lượng vẫn luôn được cam kết, đảm bảo an toàn và tươi ngon.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694826/products/v5cuvma3w6teqfj0ehhv.jpg', 'Vải thiều', '70000', 300, b'1', 3, 55),
(28, 'Loại trái cây có vỏ màu nâu vàng, trơn nhẵn, không có lông xù xì như kiwi xanh, thịt quả có màu xanh tươi mát nhìn rất đẹp mắt và hấp dẫn, ăn vào có vị ngọt mát rất đặc trưng. Chứa hàm lượng vitamin C giúp tăng cường đề kháng cho cơ thể khỏe mạnh. Cam kết giao đúng khối lượng, chất lượng và vệ sinh\nQuả kiwi không được mấy ấn tượng với lớp lông xù xì và có màu nâu xám bên ngoài nhưng đây được xem là loại trái cây có nhiều lợi ích cho sức khỏe người dùng. Kiwi vàng Zespri là loại trái cây nhập khẩu được nhiều bà nội trợ yêu thích và tin dùng. \nKiwi vàng có thịt quả màu vàng trong rất đẹp mắt, với nhiều hạt đen tạo thành một vòng tròn xung quanh trục dọc của quả và vị ngọt mát rất đặc trưng. Đây là loại quả ngon số 1 thế giới, với quy trình từ trồng, chăm bón đến thu, hái, vận chuyển được chính phủ New Zealand kiểm soát rất chặt chẽ để đảm bảo quả kiwi luôn đồng đều và tiêu chuẩn.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633694871/products/rb96iswumiy1pdwvnvwe.jpg', 'Quả kiwi', '100000', 100, b'1', 3, 0),
(29, 'Lựu được xem là một trong những loại trái cây nhiệt đới tốt nhất cho sức khỏe. Trong quả lựu chứa một loạt các hợp chất từ thực vật có lợi mà nhiều loại thực phẩm khác không thể so sánh được. Các nghiên cứu đã cho thấy rằng chúng có nhiều lợi ích và làm giảm nguy cơ mắc nhiều bệnh khác nhau. Với hương vị thơm ngon đặc trưng và giá trị dinh dưỡng đối với sức khỏe, lựu đang được rất nhiều chị em ưa chuộng. Trong quả lựu có chứa nhiều chất oxy hóa, vitamin C và nhiều dưỡng chất khác có tác dụng làm đẹp, tăng cường hệ miễn dịch và bảo vệ sức khỏe.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695017/products/zclpfokuu60dmc3ey9px.jpg', 'Quả lựu', '130000.0', 98, b'1', 3, 1),
(30, 'Táo nữ hoàng Queen nhập khẩu 100% từ New Zealand (có giấy chứng nhận xuất xứ). Đạt tiêu chuẩn xuất khẩu toàn cầu. Bảo quản tươi ngon đến tận tay khách hàng. Quả tròn, vỏ mỏng có màu sắc đỏ thẫm đẹp mắt. Thịt táo vàng, lõi nhỏ, vị ngọt nhẹ và mùi thơm đậm\nLoại táo này được lai giữa giữa táo Gala và táo Splendour, táo nữ hoàng có dáng tròn, vỏ mỏng màu đỏ thẫm đẹp mắt, vị ngọt thanh và mùi thơm đậm đặc trưng, thịt táo chắc nhưng không quá cứng, được xem là loại trái cây rất thích hợp cho mọi người.\nTáo là nguồn cung cấp vitamin C tuyệt vời, có tác dụng tăng cường hệ thống miễn dịch. Mỗi quả táo chứa khoảng 8mg vitamin này, vì thế chúng sẽ cung cấp khoảng 14% nhu cầu vitamin C hàng ngày của cơ thể.\nCũng giống như lê và việt quất, táo có mối liên hệ với việc giảm thiểu nguy cơ mắc bệnh tiểu đường type 2 nhờ chất chống oxy hóa Anthocyanins. Hơn nữa trong táo có chất Triterpenoids có khả năng chống lại các bệnh ung thư gan, ruột kết và ung thư vú.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695058/products/ltykelrovobmxsdrr6rw.jpg', 'Quả táo', '200000.0', 98, b'1', 3, 2),
(31, 'Từ vùng trồng nho nổi tiếng cả nước. Nho xanh quả to, tươi ngon, màu sắc đẹp, chứa nhiều vitamin và chất dinh dưỡng có thể ăn trực tiếp hoặc pha chế các loại đồ uống đều ngon. Sản phẩm cam kết bán đúng khối lượng, chất lượng và an toàn tuyệt đối. Bao bì kín đáo, sạch sẽ và hợp vệ ...\nNho xanh là loại trái cây nội địa của Việt Nam. Sản phẩm có thịt quả dày và trong, vị ngọt dịu không gắt, chua nhẹ rất hấp dẫn nên được đông đảo người tiêu dùng yêu thích và lựa chọn sử dụng. Nho rất giàu chất dinh dưỡng, lại có rất nhiều lợi ích đối với sức khỏe con người. Chúng ta có thể ăn nho trực tiếp nhưng cũng có thể làm nước ép nho để uống hay chế biến nhiều cách khác nhau. ', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695108/products/icqowscjylhyebypxuwq.jpg', 'Quả nho xanh', '230000.0', 99, b'1', 3, 1),
(32, 'Chuối chuyển màu từ xanh đậm sang vàng khi chín, phần thịt trắng ngà hoặc vàng, mềm, nhiều tinh bột khi chin. Chuối vàng là khi chuối chín. Khi chín chuối sẽ có hương vị rất ngon, ăn mềm , dẻo và ngọt, giàu chất xơ, vitamin C, vitamin B6. Chất béo bão hòa, cholesterol và natri trong chuối thấp. Bên cạnh đó, vỏ chuối còn có nhiều công dụng làm đẹp được nhiều chị em phụ nữ áp dụng. Ngoài ra, chuối còn có rất nhiều lợi ích khác.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695137/products/dtgumkunxku5myxsxmtf.jpg', 'Quả chuối', '30000', 300, b'1', 3, 0),
(33, 'Rau mồng tơi là một trong những loại rau được ưa chuộng trong nhiều gia đình bởi tính hàn và dễ chế biến thành nhiều món ăn.\nRau mồng tơi có  hàm lượng calo và chất béo thấp, nhưng lại chứa lượng lớn Vitamin, khoáng chất thiết yếu và các hợp chất chống oxy hóa giúp cho quá trình tiêu hóa diễn ra hiệu quả hơn và ngăn ngừa các vấn đề về đường ruột. Thực phẩm vàng cho phụ nữ mang thai và trẻ em.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695549/products/opjpf7clgd7trvmkgtso.jpg', 'Rau mùng tơi', '5000', 200, b'1', 1, 0),
(34, 'Chứa nhiều chất xơ, ngoài ra còn có đạm, tinh bột, nước và các khoáng chất cần thiết như Canxi, Kali, Sắt, Natri và Vitamin C giúp tạo ra collagen giữ cho làn da luôn tươi trẻ, săn chắc, căng đầy sức sống.\nNhiều người sử dụng khoai lang mà bỏ qua rau lang, rau lang theo nhiều nghiên cứu lại chính là loại rau chứa nhiều chất dinh dưỡng cần thiết có thể sánh ngang với cải bó xôi. Trong rau lang chứa nhiều chất xơ, ngoài ra còn có đạm, tinh bột, nước và các khoáng chất cần thiết như Canxi, Kali, Sắt, Phốt pho, Natri. Trong 100g rau lang có chứa 11mg Vitamin C giúp tạo ra collagen giữ cho làn da luôn tươi trẻ, săn chắc, căng đầy sức sống.\nRau lang có nhiều tác dụng cho sức khỏe như ngăn ngừa bệnh tim, giảm nguy cơ loãng xương, giúp đông máu và giảm đau bụng kinh, hỗ trợ trong việc điều trị ung thư và còn nhiều tác dụng không ngờ khác.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695596/products/stjhjg9wm91k0lgwxmit.jpg', 'Rau khoai', '3000', 300, b'1', 1, 0),
(35, 'Diếp cá hay còn với cái tên khác là ngư tinh thảo, cây lá giấp. Là loại cây ưa ẩm mọc khắp nước ta. Rau diếp cá thường làm rau sống ăn kèm với nước sốt cá, thịt thì rất ngon. Cùng với húng quế, húng cây kèm xà lách là những loại rau ăn kèm không thể thiếu trong nhiều món chiên, nước, nhất là đối với món cá chiên.\nNgoài làm thực phẩm thì diếp cá còn là một vị thuốc đông y cực tốt để chữ trị một số bệnh nhẹ như táo bón, trĩ, hạ sốt,... Đặc biệt, diếp cá còn có thể giúp làm đẹp hiệu quả như: trị mụn, đẹp da,..', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695658/products/yx8ngk8ieuhrw6y0lljp.jpg', 'Rau diếp cá', '3000', 300, b'1', 1, 0),
(36, 'Rau má là loại rau mang đến nhiều công dụng cho sức khỏe của gia đình bạn như: giải độc gan, điều trị táo bón, bệnh tim mạch, làm đẹp da và tăng cường sức đề kháng cho sức khỏe,… rau má có thể dùng làm sinh tố uống giải nhiệt mùa hè, đồng thời cũng dùng để chế biến thành nhiều món ăn ngon hấp dẫn. Ngoài ra, rau má còn có các công dụng sau:\nCải thiện hệ thống miễn dịch, chất lượng giấc ngủ\nPhục hồi tóc dễ gãy rụng, làm đẹp da (rau má để làm mặt nạ trị mụn)\nGiúp tăng cường chức năng nhận thức.\nGiảm đáng kể nguy cơ mắc các bệnh như Alzheimer và chứng mất trí,...', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695687/products/lcifktgeo44qolga2shv.jpg', 'Rau má', '3000', 200, b'1', 1, 0),
(37, 'Đây là loại rau thường gặp trong các món canh chua, canh khoai mỡ,... nếu các món canh này mà thiếu đi loại rau này thì sẽ giảm mất độ ngon đi khá nhiều. Ngoài làm gia vị cho các món ăn, thì 2 loại rau này còn có thể giúp điều trị một số loại bệnh một cách hiệu quá.\nNgò gai, rau om là một cặp rau thơm thường đi kèm với nhau trong các món ăn của người Việt Nam, giúp làm tăng độ thơm ngon và kích thích vị giác người dùng. Không những vậy, hai loại rau này còn có nhiều công dụng chữa bệnh hiệu quả như chữa đầy hơi, bí tiểu, điều trị sỏi thận, chữa ban đỏ, cảm, ho,...', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695741/products/vrfqizyrforn1sdtzmfr.jpg', 'Rau ngò gai', '3000', 200, b'1', 1, 0),
(38, 'Ngò rí không chỉ là một loại rau giúp tạo ra hương vị thơm ngon hấp dẫn cho món ăn mà còn có nhiều công dụng tuyệt vời cho sức khỏe. Thường xuyên ăn thực phẩm này giúp bảo vệ tim mạch, hạ huyết áp, làm giảm đường huyết, giúp xương khớp chắc khỏe.Dưới đây là những công dụng của ngò rí mà ắt hẳn khi nghe tới nhiều người sẽ vô cùng ngạc nhiên.\nGiảm cholesterol, bảo vệ tim mạch, hạ huyết áp, ngăn ngừa ung thư, ngăn ngừa thiếu máu và giảm nguy cơ dị tật ống thần kinh cho thai nhi, giúp hạ đường huyết, chống viêm, ngăn ngừa bệnh viêm khớp dạng thấp, bảo vệ thần kinh và não bộ, tăng cường trí nhớ, giảm lo âu, căng thẳng, tăng khả năng miễn dịch, tốt cho người bị sỏi thận, nhiễm trùng đường tiết niệu,...', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633695798/products/vj5yvhzb3v2cogrhbau5.jpg', 'Rau ngò rí', '3000', 200, b'1', 1, 0),
(39, 'Được nhiều chị em nội trợ chọn mua để chế biến thành các món ăn ngon cho gia đình. Ngoài làm thực phẩm, bí xanh còn có thể dùng trong đông y, có tác dụng lợi tiểu, mát gan, giải độc, làm đẹp da và giảm cân. Bầu có thể chế biến thành các món ăn như: luộc, xào, nấu canh đều rất ngon.\nBí xanh hay còn gọi là bí đao, bí phấn, bí dài, bí chanh, bí đá, bí gối, bù rợ, đông qua… là một loại củ dùng để làm nấu ăn và đặc biệt hơn là có thể làm mứt. Bí xanh là một dạng dây leo, khi già trái sẽ dài và xuất hiện lớp phấn và lông cứng bao quanh. \nTrong thành phần của bí xanh phần lớn là nước, không chứa lipid, với hàm lượng natri rất thấp. Ngoài ra, bí xanh có chứa nhiều khoáng chất như protid, glucid, canxi, photpho, sắt và nhiều loại vitamin như: Caroten, B1, B2, B3, C… do đó bí xanh có rất nhiều công dụng tốt cho sức khoẻ như giải độc gan, thanh nhiệt cơ thể, tốt cho tim mạch, phát triển chiều cao, tăng cường hệ miễn dịch,..', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633696042/products/gwzknu5knn5ngg2siahb.jpg', 'Quả bí đao', '10000.0', 188, b'1', 2, 12),
(40, 'Là loại rau củ rất tốt cho sức khoẻ của người sử dụng, loại rau củ này không những giúp bổ sung chất dinh dưỡng cần thiết cho cơ thể mà chúng có giúp làm đẹp da cho phái nữ. Cà chua có thể ăn sống hoặc chế biến các món ăn cũng rất ngon.\nCà chua được xem là một loại thực phẩm thiết yếu bởi chúng rất quen thuộc để tạo ra nhiều món ăn ngon hàng ngày cho gia đình. Đây cũng được xem là một loại củ rất bổ dưỡng và lành mạnh, có tác dụng tăng cường sức đề kháng của cơ thể, ngăn ngừa và điều trị bệnh suy nhược, chống chống nhiễm trùng. Không những thế, cà chua còn chứa hàm lượng vitamin A cao, mang đến nhiều lợi ích cho sức khoẻ. \nCà chua còn giúp làm trắng sáng da ở phụ nữ bằng nhiều cách như nước ép cà chua, mặt nạ cà chua,...', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633696071/products/nftaiv62dcsup3ogwogz.jpg', 'Quả cà chua', '20000', 300, b'1', 2, 0),
(41, 'Hay còn được gọi là cà dái dê, đây là một loại rau củ chế biến được thành rất nhiều món ăn thơm ngon như: hấp, xào, nướng, ăn sống,... mỗi dạng đều mang lại hương vị rất ngon. Trong cà tím Nhật chứa hàm lượng chất xơ vô cùng cao và giàu sắt rất tốt cho cơ thể.\nCà tím Nhật là giống cà tím (có tên gọi khác là cà dái dê) có nguồn gốc từ Nhật Bản, có họ hàng với cà chua, khoai tây, cà pháo. Loại củ, quả này sử dụng trong chế biến dưới dạng thức ăn hầm, xào, nướng. Cà tím Nhật có phần vỏ ngoài màu tím đen, bắt mắt, không những vậy chứa hàm lượng chất xơ vô cùng cao và giàu sắt, giúp giảm nguy cơ mắc các bệnh ung thư như ung thư ruột kết, trực tràng, tim mạch, chữa chứng hay quên,... Đây được xem là \"thần dược\" của người Nhật.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633696125/products/ydpyo7p5q9lesa2rvjs0.jpg', 'Quả cà tím', '17000', 200, b'1', 2, 0),
(42, 'Chanh vàng Mỹ hay còn gọi là chanh tây, là loại hoa quả nhập khẩu từ Mỹ, có màu vàng, hình bầu dục, có vị chua nhẹ và mùi thơm rất đặc trưng. Chanh vàng vị chua dịu nhưng lại thơm hơn rất nhiều so với chanh ta. Do vậy, khi sử dụng chanh vàng làm nước uống, làm bánh sẽ ngon hơn rất nhiều, giảm được vị gắt, chát của chanh ta.\nChanh vàng có chứa nhiều vitamin, đặc biệt là vitamin C - là chất chống oxy hóa mạnh, giúp ngăn ngừa ung thư và nhiều căn bệnh nguy hiểm khác. Ngoài ra, còn chứa nhiều chất khoáng như kali, magiê, natri, canxi, mangan và các hợp chất đặc biệt tốt cho gan, thận khác.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633696151/products/uqxcdocu0ylfkcdpjqom.jpg', 'Quả chanh vàng', '20000', 200, b'1', 2, 0),
(43, 'Hay còn gọi là mướp đắng, là món ăn cực quen thuộc trong thực đơn hàng tuần của các bà nội trợ. Trong khổ qua rừng chứa rất nhiều vitamin và khoáng chất tốt cho cơ thể, giúp nâng cao chức năng miễn dịch, thanh nhiệt giải độc. Khổ qua có thể chế biến thành canh hoặc các món xào đều rất ngon.\nKhổ qua còn được gọi là mướp đắng, là loại cây ăn quả có vị đắng, tính hàn, được sử dụng như một loại rau củ dùng trong chế biến món ăn. Khổ qua có nhiều công dụng tuyệt vời như thanh nhiệt, giải độc, giải sốt, giải cảm, tăng cường sức đề kháng. Mặc dù có vị đắng khó ăn nhưng khổ qua vẫn được nhiều người ưa chuộng trong việc chế biến món ăn hằng ngày. \n', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633696193/products/bzumb9ywo1j9sanfpwyt.jpg', 'Khổ qua Đà Lạt', '30000.0', 196, b'1', 2, 4),
(44, 'Bên cạnh những tác dụng giảm viêm và chống oxy hóa, một số hợp chất trong bông cải xanh có thể giúp giảm tổn thương mãn tính của một số mô trong cơ thể. Ngoài giàu dưỡng chất và vitamin, bông cải xanh là loại rau xanh được nghiên cứu cho thấy tác dụng giảm nguy cơ ung thư ở một số cơ quan như ung thư vú, tuyến tiền liệt, dạ dày, thận, bàng quang.', 0, '2021-10-08', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633696279/products/vgovm1znyq4qujaaqmnh.jpg', 'Súp lơ xanh', '23000', 200, b'1', 1, 0),
(45, 'ngu coc bo duong', 0, '2021-12-21', 'https://res.cloudinary.com/veggie-shop/image/upload/v1640050680/products/e7u3lbs41cwa2bmjwf6n.jpg', 'ngũ cốc', '10000.0', 99, b'1', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` date DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rates`
--

INSERT INTO `rates` (`id`, `comment`, `rate_date`, `rating`, `order_detail_id`, `product_id`, `user_id`) VALUES
(1, 'đắng như tình đầu', '2021-10-13', 4, 40, 43, 2),
(2, 'rau dền ngon quá trời', '2021-10-13', 4, 51, 15, 2),
(3, 'cũng được', '2021-10-13', 2, 50, 8, 2),
(4, 'khoai khá ngọt, mọi người không nên mua nhé <3', '2021-10-13', 3, 43, 6, 2),
(5, 'cam ngọt, 10 điểm :v\n', '2021-10-13', 5, 47, 7, 4),
(6, 'cà rốt ngon lắm', '2021-10-13', 5, 48, 5, 4),
(7, 'Khoai ngon lắm nhé mn ơi.', '2021-10-13', 5, 49, 6, 4),
(8, 'tạm được, cũng ko ngon cho lắm', '2021-10-14', 2, 42, 7, 2),
(9, 'quá nhiều sâu', '2021-10-14', 3, 41, 10, 2),
(10, 'cà rốt ko giống hình, lừa đảo', '2021-10-14', 3, 30, 5, 2),
(11, NULL, '2021-10-14', 5, 45, 17, 2),
(13, 'cam lần này ngon nên cho 4 sao.', '2021-10-14', 4, 55, 7, 2),
(14, 'Táo quá đắt, dở mà đắt', '2021-10-14', 2, 56, 30, 2),
(15, 'cam rất ngọt', '2021-10-14', 5, 62, 7, 7),
(16, 'Khê quá là chua', '2021-10-14', 5, 63, 19, 7),
(17, 'Cam quá ngon, nhưng hơi đắt', '2021-10-14', 4, 60, 7, 7),
(18, 'Cam này quá tệ, mua ăn cho vui thì được.', '2021-10-14', 4, 57, 7, 7),
(19, 'cà rốt fake', '2021-10-14', 3, 66, 5, 7),
(20, 'cà rốt này cũng được đấy', '2021-10-14', 5, 67, 5, 7),
(21, 'gat rat la ngot', '2021-10-15', 5, 82, 17, 2),
(22, 'quá đắng cho 3 sao', '2021-10-31', 3, 110, 43, 16),
(24, 'gất chua', '2021-12-20', 4, 206, 17, 2),
(25, 'san pham te', '2021-12-21', 2, 213, 17, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `address`, `email`, `gender`, `image`, `name`, `password`, `phone`, `register_date`, `status`, `token`) VALUES
(1, 'Thừa Thiên Huế', 'lam03022001@gmail.com', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1634216274/users/w09uqtcxfv2zzha7sztm.png', 'Thanh Lam', '$2a$10$3LYi0PDS9niD58e3oeIucuAhoItbyIirZRT9qBF54LGizERpmN8dW', '0866499519', '2021-10-10', b'1', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsYW0wMzAyMjAwMUBnbWFpbC5jb20iLCJpYXQiOjE2MzU2OTU0NDcsImV4cCI6MTYzNTc4MTg0N30.4mjXs96-vqmIN39E4M9I0cWWxK2z8WQ1ys2xS8xo0mLV-fK8kDpV0xp-eh9as3QIcbVBFTxXRZ31MXeEjTxQ1w'),
(2, 'Thừa Thiên Huế', 'lamnhtpd03789@fpt.edu.vn', b'0', 'https://res.cloudinary.com/veggie-shop/image/upload/v1634054178/users/ek7uwzcr6rzlmbptnrts.png', 'Nguyễn Thanh Lam', '$2a$10$cyX/zXBY2SvXxTGN8oCfbOAeIhTxvEZJ/r9DO6WBcug9iLT5wGhOC', '0866499519', '2021-10-10', b'1', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsYW1uaHRwZDAzNzg5QGZwdC5lZHUudm4iLCJpYXQiOjE2MzU2OTY4MTUsImV4cCI6MTYzNTc4MzIxNX0.ngYEJs1vhpmjl2pU7_ocxxjjpIdNtv0Vzp8bt07YBSA_smJW5GoNn_9nxOVh4sniA1MGG1cZwGLyDuD4zuqpug'),
(3, 'Quảng Trị', 'dat@gmail.com', b'0', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633853906/users/s9w3qx0kny2o5elzbgh6.jpg', 'Nguyễn Thành Đạt', '$2a$10$ApRnQTWTfJJdLOGGLgtapel5uPG0dzvxIJL1e04HZ23d7mFLsvHme', '0823222123', '2021-10-10', b'1', NULL),
(4, 'Đà Nẵng', 'huudong297@gmail.com', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1634142708/users/yailqigreuxus1blzayb.jpg', 'Đại Đồng', '$2a$10$ApRnQTWTfJJdLOGGLgtapel5uPG0dzvxIJL1e04HZ23d7mFLsvHme', '0987651232', '2021-10-10', b'1', NULL),
(5, 'Quảng Nam', 'kientv@gmail.com', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633854134/users/giohfqopimgxyj54s0ld.jpg', 'Trương Văn Kiên', '$2a$10$ApRnQTWTfJJdLOGGLgtapel5uPG0dzvxIJL1e04HZ23d7mFLsvHme', '0866423412', '2021-10-10', b'1', NULL),
(6, 'Hà Nội', 'toan@gmail.com', b'0', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png', 'Hữu Toàn', '$2a$10$ApRnQTWTfJJdLOGGLgtapel5uPG0dzvxIJL1e04HZ23d7mFLsvHme', '0865299519', '2021-10-11', b'1', NULL),
(7, 'Đà Nẵng', 'lamnht020301@gmail.commm', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1634228543/users/bfmhmyqmxt62x0tigaez.png', 'Thanh Lam', '$2a$10$ApRnQTWTfJJdLOGGLgtapel5uPG0dzvxIJL1e04HZ23d7mFLsvHme', '0916823721', '2021-10-14', b'1', NULL),
(9, 'Đà Nẵng', 'thuongbthpd03828@fpt.edu.vn', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1634229781/users/opaiftd5umaplc5mcp8f.jpg', 'Thanh Tùng', '$2a$10$ApRnQTWTfJJdLOGGLgtapel5uPG0dzvxIJL1e04HZ23d7mFLsvHme', '0832329519', '2021-10-14', b'1', NULL),
(10, 'Đà Nẵng', 'lam02032002@gmail.com', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1635089080/users/vb6vl52u3zoldjvwlsff.png', 'Thanh Lam FAke', '$2a$10$ApRnQTWTfJJdLOGGLgtapel5uPG0dzvxIJL1e04HZ23d7mFLsvHme', '0912321232', '2021-10-24', b'1', NULL),
(11, 'Đà Nẵng', 'lam02032003@gmail.com', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1635093445/users/yf61v46dkpjn1bjhzmdo.png', 'Thanh Lam', '$2a$10$tiauYQicjzF2ddBsTsTjnOfndzRg7lY/CSFprSWAj4EdQn0mC1BZy', '0866222111', '2021-10-24', b'1', NULL),
(12, 'Da Nang', 'ductmpd03710@fpt.edu.vn', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png', 'duc duc', '$2a$10$qpwkCaGgVBYNPw7N.rvWNOVJOfGoJLQ50.PQRTw38HjE5QzNrEQeC', '0872122122', '2021-10-24', b'1', NULL),
(13, 'Hà Nội', 'gmail@gmail.com', b'0', 'https://res.cloudinary.com/veggie-shop/image/upload/v1635098073/users/dzi6gnhuyz8w58nauowi.jpg', 'không thể đùa được', '$2a$10$qfsVO7jnQ4Hkyicn81Bcxe/2DEBHPbe0DlXlXPaUNy0xtQKm51Yaa', '0987654321', '2021-10-24', b'1', '21321dsadsa'),
(15, 'Ha TInh~', 'lam02032001@gmail.com', b'0', 'https://res.cloudinary.com/veggie-shop/image/upload/v1635697669/users/gugsuzab1k6eaffab7gt.jpg', 'Thành Đồng', '$2a$10$E8QCN/wlrqjPc/0aZvHcy.55xve8HCRzDG9HyKGIqCfzfO8divLme', '0982323212', '2021-10-31', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJsYW0wMjAzMjAwMUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTYzNTY5NzYwNiwiZXhwIjoxNjM1NzE1NjA2fQ.FP07Nin3lbitu9SdeTlCsNiSjGkkG3kwFEk13oukfy8'),
(16, 'Quảng Trị', 'lamnht02031101@gmail.com', b'0', 'https://res.cloudinary.com/veggie-shop/image/upload/v1635698230/users/blfp4jpjsp2ddcgm2yts.jpg', 'Đại Đạt gay', '$2a$12$hJ7MeJlt.f72pN25n7s35u/h6JIaGSg08j6ZCXMaHtQv7zVVqP45q', '0982232412', '2021-10-31', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJsYW1uaHQwMjAzMDFAZ21haWwuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE2MzU2OTgxNDYsImV4cCI6MTYzNTcxNjE0Nn0.WwgHqK2AHUjQz5MYBy9GzISSBFJWYgZJEmCVcRBFUlU'),
(17, 'Đà Nẵng', 'datgayy@gmail.com', b'1', 'https://res.cloudinary.com/veggie-shop/image/upload/v1635698656/users/overgrodrf64arxjwdmw.jpg', 'dat khong gay', '$2a$10$2GQQSM01/dnqQnwFGGyt3.kyqeAtxZOqPpqVCDWiofnqYtluKN8YS', '0987654321', '2021-10-31', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJkYXRnYXl5QGdtYWlsLmNvbSIsInNjb3BlcyI6W3siYXV0aG9yaXR5IjoiUk9MRV9BRE1JTiJ9XSwiaXNzIjoiaHR0cDovL2RldmdsYW4uY29tIiwiaWF0IjoxNjM1Njk4NjM1LCJleHAiOjE2MzU3MTY2MzV9.xypYr6c3rc09G8lTjyoB01pQIhCtUV2a41kf8ZbOvoY'),
(18, 'Đà Nẵng', 'ngthanhdatpd03522@gmail.com', b'0', 'https://res.cloudinary.com/veggie-shop/image/upload/v1640050546/users/oqxqbpxtpqg3ody1ob5t.png', 'thành đạtt', '$2a$10$LpEM9C2Bht7wi4ciMFCWheG1tPUSCa7AW9n/pIlxuTDWUfNNLxcHC', '0982221321', '2021-12-21', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ3RoYW5oZGF0cGQwMzUyMkBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0MDA1MDE0NCwiZXhwIjoxNjQwMDY4MTQ0fQ.9OHxfl3qLEKmH_isSLvPDNJlwe3ThIy89A_1Dicca0k');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `app_roles`
--
ALTER TABLE `app_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_detail_id`),
  ADD KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`),
  ADD KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  ADD KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  ADD KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  ADD KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKihg20vygk8qb8lw0s573lqsmq` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `app_roles`
--
ALTER TABLE `app_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`);

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Các ràng buộc cho bảng `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKihg20vygk8qb8lw0s573lqsmq` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
