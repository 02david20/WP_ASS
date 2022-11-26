-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 03:51 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--
CREATE DATABASE IF NOT EXISTS `fashion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fashion`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `category_position` int(4) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `supply_id`, `category_position`, `slug`) VALUES
(1, 'Ăn Uống', 1, 1, 'an-uong'),
(2, 'Làm Đẹp', 1, 2, 'lam-dep'),
(3, 'Mỹ Phẩm', 1, 3, 'my-pham');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` int(20) DEFAULT NULL,
  `subject` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `phone`, `subject`, `createTime`, `user_id`, `order_id`, `product_id`, `status`, `editTime`) VALUES
(1, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'abc', '2020-04-05 16:58:23', 2, 0, 2, 1, NULL),
(2, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'abc dè', '2020-04-05 16:59:35', 2, 0, 2, 0, NULL),
(3, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'abc dè', '2020-04-05 17:01:52', 2, 0, 2, 1, NULL),
(4, 'Nguyen Tan', 'test@gmail.com', 1663220339, 'srdxtfcghjooi', '2020-04-05 17:06:46', 1, 0, 28, 1, '2020-04-09 16:48:56'),
(5, 'Nguyen Tan', 'test@gmail.com', 1663220339, 'Ahihi nớp diu', '2020-04-05 17:07:36', 1, 0, 0, 1, NULL),
(6, 'Alibaba', 'alibaba@gmail.com', 1234567890, 'aladin', '2020-04-05 17:12:32', 0, 0, 0, 1, '2020-04-10 23:26:58'),
(7, 'aladin', 'aladin@gmail', 363220339, 'reywsrewyre', '2020-04-05 17:13:23', 0, 0, 8, 0, '2020-04-10 23:26:49'),
(8, 'y54wy54wy', 'ewt43wt54w@gmail.com', 432542543, 'regresg', '2020-04-05 17:23:09', 0, 4, 0, 0, NULL),
(9, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 12345678, 'Toi hong mún mua đơn hàng này nữa , bạn nàm giề được tôi', '2020-04-06 14:48:32', 2, 3, 0, 1, '2020-04-11 19:08:07'),
(11, 'url', '', 339908569, 'ỷdyr', '2020-04-09 00:00:00', 0, 0, 0, 1, NULL),
(12, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'drtrdurdytuyt', '2020-04-11 05:45:38', 2, 0, 0, 0, NULL),
(13, 'Tân Hồng IT', 'phuongtan12357@gmail.com', 363220339, 'dyrdturdtrdytdrtr ', '2020-04-11 05:46:01', 0, 0, 0, 0, NULL),
(14, 'Huỳnh Vinh', 'davidhuynh0222@gmail.com', 347866679, 'asdasd', '2022-11-26 14:06:44', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu_footers`
--

CREATE TABLE `menu_footers` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_footers`
--

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`) VALUES
(1, 'Not available', 'javascript:void(0);', '', 0),
(2, 'Not available', 'javascript:void(0);', '', 0),
(3, 'Not available', 'javascript:void(0);', '', 0),
(4, 'Not available', 'javascript:void(0);', '', 0),
(5, 'Not available', 'javascript:void(0);', '', 0),
(6, 'Not available', 'javascript:void(0);', '', 0),
(7, 'Not available', 'javascript:void(0);', '', 0),
(8, 'Not available', 'javascript:void(0);', '', 0),
(9, 'Not available', 'javascript:void(0);', '', 0),
(10, 'Sản phẩm nổi bật', 'type/1-san-pham-hot', 'Sản phẩm nổi bật', 0),
(11, 'Sản phẩm mới', 'type/2-san-pham-moi', 'Sản phẩm mới', 0),
(12, 'Đang giảm giá', 'type/3-san-pham-dang-giam-gia', 'Sản phẩn đang giảm giá', 0),
(18, 'Text Link', 'javascript:void(0);', '', 1),
(19, 'Social', 'javascript:void(0);', 'Các liên kết trang mạng xã hội', 1),
(20, 'Blog', 'javascript:void(0);', '', 1),
(21, 'Loại sản phẩm', 'javascript:void(0);', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `note`, `order_date`, `total`) VALUES
(1, 220014, 'Gọi cho tôi khi đến', '2022-11-16 16:35:02', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postcomment`
--

CREATE TABLE `postcomment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `post_author` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `post_modified` datetime NOT NULL,
  `post_type` int(11) NOT NULL DEFAULT 1,
  `post_modified_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalView` int(11) NOT NULL DEFAULT 0,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_avatar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_modified`, `post_type`, `post_modified_user`, `totalView`, `post_slug`, `post_avatar`) VALUES
(1, 2, '2020-04-08 05:57:42', '', 'About', 'Publiced', '2020-04-08 06:31:51', 2, 'Tân Hồng ', 48, 'about', 'about-1page.png'),
(9, 3, '2020-04-12 13:20:20', '', 'Web developmwnt', 'Publiced', '0000-00-00 00:00:00', 2, '', 1, 'fewrfewrew', ''),
(8, 2, '2020-04-08 23:13:53', '', 'Điều khoản sử dụng', 'Publiced', '0000-00-00 00:00:00', 2, '', 2, 'terms-of-use-page', ''),
(6, 2, '2020-04-08 11:47:48', '', 'Dmca Luật bản quyền', 'Trash', '2020-04-08 10:25:58', 1, 'Tân Hồng ', 5, 'dmca-luat-ban', ''),
(5, 2, '2020-04-09 14:03:15', 'Phim việt chất lượng cao<br />\n\n<img alt=\"\" src=\"/php-mvc-shop/public/upload/ckeditorimages/about-1page.png\" style=\"height:271px; width:482px\" />', 'Phim việt', 'Publiced', '2020-04-08 10:13:10', 1, 'Tân Hồng ', 5, 'phim-viet', 'phim-viet-5post.png'),
(4, 2, '2022-11-26 13:52:15', 'ouhiuh<br />\r\n\naad<br />\r\n\n<img alt=\"\" src=\"/php-mvc-shop/public/upload/ckeditorimages/tenor.gif\" style=\"height:498px; width:498px\" /><br />\r\n\n<br />\r\n\nfhgtfrdhtrd<br />\r\n\nỵytrj', 'Privacy Policy', 'Publiced', '2020-04-08 06:05:46', 2, 'Tân Hồng ', 7, 'privacy-policy', 'privacy-policy-4page.jpg'),
(3, 2, '2020-04-08 06:17:37', 'Luật bản quyền dựa tr&ecirc;n luật to&agrave;n cầu<br />\r\n\n<img alt=\"\" src=\"/php-mvc-shop/public/upload/ckeditorimages/dmca-luat-ban-quyen-2page.jpg\" style=\"height:304px; width:650px\" />', 'Dmca Luật bản quyền', 'Publiced', '2020-04-07 23:52:43', 2, '', 1, 'dmca-luat-ban-quyen', '');

-- --------------------------------------------------------

--
-- Table structure for table `productattribute`
--

CREATE TABLE `productattribute` (
  `product_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `editBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editDate` datetime DEFAULT NULL,
  `totalView` int(11) DEFAULT 0,
  `saleoff` tinyint(11) DEFAULT 0,
  `percentoff` int(11) DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type_id`, `category_id`, `supply_id`, `description`, `price`, `color`, `material`, `size`, `detail`, `createBy`, `createDate`, `editBy`, `editDate`, `totalView`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`) VALUES
(2, 'Trà Sữa Thái Xanh (Chân Châu, Pudding) 15k, 20k', 2, 1, 1, ' Trà  sữa Thái (Trà xanh Thái Lan) là một loại thức uống quen thuộc không chỉ được xem là thần dược chống lão hóa...', 15000, 'Xanh lá', 'Trà thái xanh, sữa béo, thạch , pudding, chân châu,...', 'Vừa - 15k, Lớn - 20k', 'Tr&agrave; sữa Th&aacute;i (Tr&agrave; xanh Th&aacute;i Lan) l&agrave; một loại thức uống quen thuộc kh&ocirc;ng chỉ được xem l&agrave; thần dược chống l&atilde;o h&oacute;a, với c&ocirc;ng dụng l&agrave;m đẹp tuyệt vời, tr&agrave; xanh c&ograve;n gi&uacute;p bạn giải kh&aacute;t, tỉnh t&aacute;o trong những ng&agrave;y h&egrave; n&oacute;ng nực mệt mỏi. Tr&agrave; xanh Th&aacute;i Lan với khối lượng 200g được sản xuất tại Th&aacute;i Lan theo ti&ecirc;u chuẩn c&ocirc;ng nghệ cao ti&ecirc;n tiến, được sản xuất từ những b&uacute;p tr&agrave; xanh tươi, nguy&ecirc;n chất qua những kh&acirc;u chọn lựa cẩn thận.<br />\r\n\n<br />\r\n\nTr&agrave; sữa th&aacute;i xanh thơm vị tr&agrave;, vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute; <img alt=\"heart\" src=\"http://localhost/new-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />)', '', '2020-03-18', 'Tân Hồng ', '2020-04-18 17:49:59', 115, 0, 0, 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img1.jpg', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img2.jpg', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img3.jpg', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img4.jpg', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k'),
(3, 'Trà Sữa Truyền Thống (Chân Châu, Pudding) 15k, 20k', 2, 1, 1, 'Trà sữa thuyền thống thơm vị trà, vị sữa beo béo..kèm thạch giòn giòn, pudding, chân châu nhai mềm dai hấp dẫn.', 15000, 'Xám nâu', 'Trà, sữa béo, thạch ,pudding, chân châu', 'Vừa - 15k, Lớn - 20k', 'Tr&agrave; sữa l&agrave; thức uống giải kh&aacute;t đ&atilde; được Việt Nam du nhập khoảng 10 năm về trước, từ b&eacute; ch&uacute;ng ta đ&atilde; quen với một ly tr&agrave; sữa thạch tr&aacute;i c&acirc;y với đủ loại m&agrave;u sắc hoặc l&agrave; đủ m&ugrave;i vị.&nbsp;<br />\r\n\n<br />\r\n\nTr&agrave; sữa thuyền thống thơm vị tr&agrave;, vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-18', 'Tân Hồng ', '2020-04-11 12:35:05', 33, 0, 0, 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img1.jpg', 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img2.jpg', '', '', 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k'),
(4, 'Trà Sữa Vị Dâu (Chân Châu, Pudding) 15k, 20k', 2, 1, 1, 'Trà Sữa Vị Dâu (Chân Châu, Pudding)  loại thức uống quen thuộc ngon đậm đà...', 15000, 'Hồng', 'Vị dâu , sữa béo, thạch ,pudding, chân châu...', 'Vừa - 15k, Lớn - 20k', 'Với sự ngọt ng&agrave;o được chiết xuất từ những tr&aacute;i&nbsp;<strong>d&acirc;u t&acirc;y</strong>&nbsp;thơm ngon đ&atilde; cho ra đời một loại<strong>&nbsp;tr&agrave; sữa</strong>&nbsp;hấp dẫn với trẻ nhỏ bởi m&agrave;u sắc được h&ograve;a quyện một c&aacute;ch dễ chịu. M&agrave;u hồng v&agrave; vị ngọt lu&ocirc;n l&agrave; những điểm ưu ti&ecirc;n h&agrave;ng đầu m&agrave; mọi người th&iacute;ch nhất, cộng v&agrave;o đ&oacute; l&agrave; hương thơm của loại quả kỳ diệu n&agrave;y đ&atilde; l&agrave;m m&ecirc; mẩn kh&ocirc;ng chỉ ri&ecirc;ng với c&aacute;c em nhỏ m&agrave; ngay đối với người lớn cũng bị ảnh hưởng theo.<br />\r\n\n<br />\r\n\nTr&agrave; sữa vị d&acirc;u thơm vị tr&agrave;, vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-19', 'Tân Hồng ', '2020-04-11 12:34:00', 212, 0, 0, 'tra-sua-vi-dau-1.jpg', 'tra-sua-vi-dau-chan-chau-pudding-15k-20k-4img2.jpg', 'tra-sua-vi-dau-chan-chau-pudding-15k-20k-4img3.jpg', '', 'tra-sua-vi-dau-chan-chau-pudding-15k-20k'),
(5, 'Trà Sữa Vị Socola (Chân Châu, Pudding) 15k, 20k', 2, 1, 1, 'Với công thức pha sẵn tạo nên hương vị mới cho trà sữa chocolate Trà sữa chân châu Socola thơm vị trà, vị socola , vị sữa beo...', 15000, 'Nâu', 'Socola , sữa béo, thạch ,pudding, chân châu...', 'Vừa - 15k, Lớn - 20k', 'TR&Agrave; SỮA CHOCOLATE . Cũng như tr&agrave; xanh matcha hay hồng tr&agrave; sữa.<br />\r\n\n<br />\r\n\nVới c&ocirc;ng thức pha sẵn tạo n&ecirc;n hương vị mới cho tr&agrave; sữa chocolate Tr&agrave; sữa ch&acirc;n ch&acirc;u Socola thơm vị tr&agrave;, vị socola , vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-19', 'Tân Hồng ', '2020-04-11 15:03:52', 124, 0, 0, 'tra-sua-vi-socola-chan-chau-pudding-15k-20k-5img1.jpg', '', '', '', 'tra-sua-vi-socola-chan-chau-pudding-15k-20k'),
(6, 'Trà Sữa Vị Đào (Chân Châu, Pudding) 15k, 20k', 2, 1, 1, 'Trà sữa vị đào thơm vị trà đào, vị sữa beo béo..kèm thạch giòn giòn, pudding, chân châu nhai mềm dai hấp dẫn.', 15000, 'Hồng nâu', 'Vị đào, sữa béo, thạch ,pudding, chân châu...', 'Vừa - 15k, Lớn - 20k', '<em>Với hương vị thơm ngon, dễ uống tr&agrave; sữa vẫn lu&ocirc;n l&agrave; một thức uống chưa bao giờ &ldquo;hạ nhiệt&rdquo; nhất l&agrave; đối với giới trẻ. Một đặc điểm nữa khiến tr&agrave; sữa lu&ocirc;n được y&ecirc;u th&iacute;ch đến vậy ch&iacute;nh l&agrave; n&oacute; c&oacute; thể kết hợp với nhiều tr&aacute;i c&acirc;y, nhiều loại thạch để tạo n&ecirc;n những hương vị hấp dẫn, đặc trưng v&agrave; đ&aacute;p ứng được sở th&iacute;ch của nhiều người.&nbsp;</em><br />\r\n\n<br />\r\n\nTr&agrave; sữa vị đ&agrave;o thơm vị tr&agrave; đ&agrave;o, vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay.<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-19', 'Tân Hồng ', '2020-04-11 12:37:50', 49, 0, 0, 'tra-sua-vi-dao-chan-chau-pudding-15k-20k-6img1.jpg', 'tra-sua-vi-dao-chan-chau-pudding-15k-20k-6img2.jpg', '', '', 'tra-sua-vi-dao-chan-chau-pudding-15k-20k'),
(7, 'Trà bí đao - Giải khát, thanh lọc cơ thể', 2, 1, 1, 'Trà bí đao là loại trà được nấu từ quả bí đao cùng với đường phèn khả năng giải nhiệt rất tốt...', 10000, 'Nâu đen', 'Quả bí đao, đường phèn', 'Ly vừa, có thể Setup ly to hơn', 'Tr&agrave; b&iacute; đao l&agrave; loại tr&agrave; được nấu từ quả b&iacute; đao c&ugrave;ng với đường ph&egrave;n. Đ&acirc;y l&agrave; thức uống rất được ưa chuộng ở nhiều nước. Đặc biệt l&agrave; Trung Quốc, Đ&agrave;i Loan v&agrave; Việt Nam. Tr&agrave; b&iacute; đao được tin l&agrave; thức uống c&oacute; khả năng giải nhiệt rất tốt. V&agrave; loại tr&agrave; n&agrave;y c&ograve;n được cho l&agrave; c&oacute; khả năng giảm c&acirc;n nữa.<br />\r\n\n&nbsp;\r\n\n<h3><strong>T&aacute;c dụng của tr&agrave; b&iacute; đao</strong></h3>\r\n\n\r\n\n<p style=\"margin-left:40px\">1. Tr&agrave; b&iacute; đao gi&uacute;p giảm c&acirc;n</p>\r\n\n\r\n\n<p style=\"margin-left:40px\">2. Tr&agrave; b&iacute; đao gi&uacute;p đẹp da</p>\r\n\n\r\n\n<p style=\"margin-left:40px\">3. Tr&agrave; b&iacute; đao gi&uacute;p thải độc detox</p>\r\n\n\r\n\n<p style=\"margin-left:40px\">4. Tr&agrave; b&iacute; đao gi&uacute;p giải nhiệt</p>\r\n\n\r\n\n<p style=\"margin-left:40px\">5. Tr&agrave; b&iacute; đao tốt cho hệ ti&ecirc;u ho&aacute;</p>\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn k&iacute;ch cỡ v&agrave; gi&aacute; kh&aacute;c nhau khi đặt h&agrave;ng n&egrave;.( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-19', 'Tân Hồng ', '2020-04-11 14:10:55', 54, 0, 0, 'tra-bi-dao-giai-khat-thanh-loc-co-the-7img1.jpg', 'tra-bi-dao-giai-khat-thanh-loc-co-the-7img2.jpg', 'tra-bi-dao-giai-khat-thanh-loc-co-the-7img3.jpg', '', 'tra-bi-dao-giai-khat-thanh-loc-co-the'),
(8, 'Sương Sáo nhà tự làm ngon bổ dưỡng', 2, 1, 1, 'Sương sáo nhà mình tự làm an toàn về sinh, mọi người nãy đặt hàng và mua về ăn vào thời tiết nóng...', 10000, 'Đen', 'lá cây suong sáo', 'Tùy chọn', '<p><strong>Sương s&aacute;o nh&agrave; m&igrave;nh tự l&agrave;m an to&agrave;n vệ&nbsp;sinh, mọi người n&atilde;y đặt h&agrave;ng v&agrave; mua về ăn v&agrave;o thời tiết n&oacute;ng như thế n&agrave;y cho m&aacute;t gan m&aacute;t ruột nh&eacute;! Kết hợp th&ecirc;m một ly tr&agrave; sữa tự chọn nữa l&agrave; qu&aacute; tuyệt vời.</strong></p>\r\n\n\r\n\n<h4><br />\r\n\n<strong>SƯƠNG SÁO T&Ocirc;́T RA SAO</strong></h4>\r\n\n<strong>Sương s&aacute;o</strong>&nbsp;<em>(phương ngữ miền Nam)</em>&nbsp;được l&ograve;ng rất nhiều người v&agrave;o m&ugrave;a nắng n&oacute;ng v&agrave; lại tốt cho sức khỏe&nbsp;nhất l&agrave; với phụ nữ v&agrave; c&aacute;c em nhỏ. Ngo&agrave;i ra, sương s&aacute;o gi&uacute;p giảm huyết &aacute;p, hỗ trợ trong điều trị đ&aacute;i th&aacute;o đường, m&aacute;t gan, trị cảm mạo do nắng n&oacute;ng, đau cơ, vi&ecirc;m khớp&hellip;\r\n\n\r\n\n<p>Sương s&aacute;o kh&ocirc;ng chỉ l&agrave; thứ giải kh&aacute;t th&ocirc;ng thường m&agrave; c&ograve;n l&agrave; một t&acirc;n dược.<strong><em>&nbsp;</em></strong>Theo Đ&ocirc;ng y, l&aacute; sương s&aacute;o c&oacute; vị ngọt, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng giải nhiệt, gi&uacute;p c&aacute;c qu&aacute; tr&igrave;nh chuyển h&oacute;a trong cơ thể diễn ra dễ d&agrave;ng&hellip; n&ecirc;n thường được sử dụng để nấu v&agrave; chế biến th&agrave;nh m&oacute;n thạch sương s&aacute;o giải nhiệt trong những ng&agrave;y h&egrave; oi bức, n&oacute;ng nực.&nbsp;Hiện nay, ở nhiều nước ch&acirc;u &Aacute;&nbsp;người ta cho rằng, bột th&acirc;n l&aacute; c&acirc;y sương s&aacute;o c&oacute; t&aacute;c dụng lợi tiểu.</p>\r\n\n\r\n\n<hr />\r\n\n<p>Đặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều phần gi&aacute; kh&aacute;c nhau( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)</p>\r\n\n', '', '2020-03-19', 'Tân Hồng ', '2020-04-11 14:38:56', 34, 0, 0, 'suong-sao-nha-tu-lam-ngon-bo-duong-8img1.jpg', '', '', '', 'suong-sao-nha-tu-lam-ngon-bo-duong'),
(9, 'Cá viên chiên (có thể đặt theo phần tùy chọn giá)', 2, 1, 1, 'Cá viên chiên giòn ngon cùng với dưa leo và kết hợp cùng ly trà sữa tuyệt vời.', 20000, 'Nâu vàng', 'Cá viên, dưa leo, tương ớt,...', 'Vừa - 15k, Lớn - 20k, Setup tùy chọn giá', 'C&aacute; vi&ecirc;n chi&ecirc;n gi&ograve;n ngon c&ugrave;ng với dưa leo v&agrave; kết hợp c&ugrave;ng ly tr&agrave; sữa tuyệt vời.<br />\r\n\n<br />\r\n\nC&aacute;c bạn c&oacute; thể đặt setup t&ugrave;y theo phần gi&aacute; m&agrave; c&aacute;c bạn muốn.<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều phần gi&aacute; kh&aacute;c nhau( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/new-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />)', '', '2020-03-19', 'Tân Hồng ', '2020-04-19 12:31:23', 25, 0, 0, 'ca-vien-chien-9img1.jpg', 'ca-vien-chien-co-the-dat-theo-phan-tuy-chon-gia-9img2.jpg', '', '', 'ca-vien-chien-co-the-dat-theo-phan-tuy-chon-gia'),
(10, 'Tôm viên (có thể đặt theo phần tùy chọn giá)', 2, 1, 1, 'ok', 20000, 'Vàng nâu', 'Tôm viên, tương ớt, dưa leo', 'Vừa - 15k, Lớn - 20k', '<p>T&ocirc;m vi&ecirc;n chi&ecirc;n gi&ograve;n gi&ograve;n dai dai v&agrave; đậm đ&agrave;, m&igrave;nh hay l&agrave;m cho b&eacute; nh&agrave; m&igrave;nh ăn chơi v&agrave; cả nh&agrave; ăn với cơm rất thơm ngon!</p>\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/new-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />)', '', '2020-03-19', 'Tân Hồng ', '2020-04-19 12:31:42', 25, 0, 0, 'tom-vien-co-the-dat-theo-phan-tuy-chon-gia-10img1.jpg', '', '', '', 'tom-vien-co-the-dat-theo-phan-tuy-chon-gia'),
(11, 'Bò viên chiên (có thể đặt theo phần tùy chọn giá)', 2, 1, 1, 'Đặt hàng ngay quán mình hỗ trợ free ship trong bán kính 5km và hỗ trợ tận tình cũng như có nhiều ưu đãi cho các khách hàng thân thiết ạ.', 20000, 'Vàng nâu', 'Bò viên, tương ớt, dưa leo', 'Vừa - 15k, Lớn - 20k, Setup theo phần tùy giá', 'Miếng thịt b&ograve; v&agrave;ng ươm, n&oacute;ng hổi, thơm phức kết hợp với hương vị đậm đ&agrave; của nước chấm, thơm ngon kh&oacute; cưỡng, bất cứ ai cũng phải ph&aacute;t th&egrave;m. Đ&oacute; ch&iacute;nh l&agrave; b&ograve; vi&ecirc;n chi&ecirc;n.<br />\r\n\n<br />\r\n\nThịt b&ograve; vi&ecirc;n l&agrave;m bằng thịt b&ograve; m&agrave; đ&atilde; được nghiền th&agrave;nh bột mịn v&agrave; dễ d&agrave;ng ph&acirc;n biệt với thịt heo vi&ecirc;n hay c&aacute; vi&ecirc;n v&igrave; thịt b&ograve; vi&ecirc;n c&oacute; m&agrave;u đậm hơn, được ưa chuộng nhất l&agrave; loại b&ograve; vi&ecirc;n g&acirc;n, v&igrave; dai.<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn k&iacute;ch cỡ, số lượng v&agrave; gi&aacute; kh&aacute;c nhau khi đặt h&agrave;ng n&egrave;( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/new-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />)', '', '2020-03-19', 'Tân Hồng ', '2020-04-19 12:30:55', 26, 0, 0, 'bo-vien-co-the-dat-theo-phan-tuy-chon-gia-11img1.jpg', '', '', '', 'bo-vien-co-the-dat-theo-phan-tuy-chon-gia'),
(24, 'Bánh xèo chảo - To, giòn ngon, kèm rau tươi hấp dẫn (Loại ăn mặn)', 1, 1, 0, 'Bánh xèo (Loại ăn mặn) to giòn có ăn kèm rau tươi và nước mắm ngọt nhà tự làm an toàn vệ sinh...', 20000, 'Vàng', 'Bột năng, tôm, giá, thịt heo, nấm, rau tươi,...', 'To', '<h4>Giới thiệu:</h4>\r\n\n\r\n\n<p><em>C&aacute;i t&ecirc;n &ldquo;b&aacute;nh x&egrave;o&rdquo; xuất ph&aacute;t từ tiếng đổ bột v&agrave;o chảo ph&aacute;t ra tiếng &ldquo;x&egrave;o x&egrave;o&rdquo;. B&aacute;nh c&oacute; hương vị thơm ngon mang những đặc trưng của văn h&oacute;a ẩm thực d&acirc;n gian Nam Bộ.</em></p>\r\n\n\r\n\n<p><strong>B&aacute;nh x&egrave;o</strong>&nbsp;l&agrave; m&oacute;n ăn y&ecirc;u th&iacute;ch của người d&acirc;n Việt nam khắp 3 miền. T&ugrave;y theo ẩm thực của từng v&ugrave;ng miền m&agrave; nh&acirc;n b&aacute;nh c&oacute; thể l&agrave; gi&aacute;, đu đủ hoặc b&ocirc;ng đi&ecirc;n điển, thịt ba rọi, t&eacute;p, thịt g&agrave;, hoặc thịt vịt bằm nhuyễn&hellip;</p>\r\n\n\r\n\n<p>B&aacute;nh được chi&ecirc;n bằng dầu nhưng ăn kh&ocirc;ng bị ng&aacute;n do được ăn k&egrave;m với nhiều loại rau như x&agrave; l&aacute;ch, diếp c&aacute;, rau thơm, c&oacute; người c&ograve;n th&iacute;ch ăn với cải bẹ xanh, xo&agrave;i non th&aacute;i chỉ, dứa, c&agrave; rốt&hellip;</p>\r\n\n\r\n\n<hr />Đặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn ăn gi&aacute; hoặc kh&ocirc;ng ăn gi&aacute; hoặc bỏ c&aacute;c nguy&ecirc;n liệu m&agrave; bạn kh&ocirc;ng th&iacute;ch khi đặt h&agrave;ng( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-27', 'Tân Hồng ', '2020-04-11 15:20:26', 87, 0, 0, 'banh-xeo-chao-to-gion-ngon-kem-rau-rung-hap-dan-loai-an-man-24img1.jpg', 'banh-xeo-chao-to-gion-ngon-kem-rau-rung-hap-dan-loai-an-man-24img2.jpg', 'banh-xeo-chao-to-gion-ngon-kem-rau-rung-hap-dan-loai-an-man-24img3.jpg', 'banh-xeo-chao-to-gion-ngon-kem-rau-rung-hap-dan-loai-an-man-24img4.jpg', 'banh-xeo-chao-to-gion-ngon-kem-rau-rung-hap-dan-loai-an-man'),
(22, 'Bánh Plan (có thể đặt theo phần tùy chọn giá)', 3, 1, 0, 'Bánh Flan còn có tên gọi khác là Caramen. Đây là Một loại bánh vừa thơm ngon; mềm xốp; lại hấp dẫn được rất nhiều người từ nhiều lứa tuổi.', 7000, 'Vàng', 'sữa tươi, trứng, Đường làm caramel,....', 'Dạng hộp tròn', '<h4>Giới thiệu:</h4>\r\n\nB&aacute;nh flan l&agrave; một sản phẩm tr&aacute;ng miệng ngon v&agrave; bổ dưỡng, n&oacute; được chế biến lần đầu ti&ecirc;n tại Ph&aacute;p v&agrave; trở n&ecirc;n phổ biến ở hầu hết c&aacute;c nước tr&ecirc;n thế giới.<br />\r\n\n<br />\r\n\n<strong>B&aacute;nh Flan c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; Caramen. Đ&acirc;y l&agrave; Một loại b&aacute;nh vừa thơm ngon; mềm xốp; lại hấp dẫn được rất nhiều người từ nhiều lứa tuổi. B&aacute;nh được hấp ch&iacute;n từ c&aacute;c nguy&ecirc;n liệu ch&iacute;nh l&agrave; trứng v&agrave; sữa; nước caramen. Đ&acirc;y l&agrave; một loại b&aacute;nh c&oacute; lẽ xuất xứ từ nền ẩm thực ch&acirc;u &Acirc;u; tuy hiện nay đ&atilde; phổ biến tại nhiều nơi tr&ecirc;n thế giới.</strong><br />\r\n\n&nbsp;\r\n\n<hr /><br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn số lượng, k&iacute;ch cỡ, v&agrave; setup gi&aacute; tiền kh&aacute;c nhau khi đặt h&agrave;ng( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-25', 'Tân Hồng ', '2020-04-11 17:41:36', 108, 1, 28, 'banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img1.jpg', 'banh-plan-22img2.jpg', 'banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img3.jpg', 'banh-plan-22img4.jpg', 'banh-plan-co-the-dat-theo-phan-tuy-chon-gia'),
(25, 'Bánh xèo chảo - To, giòn ngon, kèm rau tươi hấp dẫn (Loại ăn chay)', 1, 1, 0, 'Bánh xèo (Loại ăn chay) to giòn có ăn kèm rau tươi và nước mắm ngọt nhà tự làm an toàn vệ sinh...', 15000, 'Vàng', 'Bột năng, đậu hũ, giá, nấm,....', 'To', '<h4>Giới thiệu:</h4>\r\n\n\r\n\n<p><em>C&aacute;i t&ecirc;n &ldquo;b&aacute;nh x&egrave;o&rdquo; xuất ph&aacute;t từ tiếng đổ bột v&agrave;o chảo ph&aacute;t ra tiếng &ldquo;x&egrave;o x&egrave;o&rdquo;. B&aacute;nh c&oacute; hương vị thơm ngon mang những đặc trưng của văn h&oacute;a ẩm thực d&acirc;n gian Nam Bộ.</em></p>\r\n\n\r\n\n<p><strong>B&aacute;nh x&egrave;o</strong>&nbsp;l&agrave; m&oacute;n ăn y&ecirc;u th&iacute;ch của người d&acirc;n Việt nam khắp 3 miền. T&ugrave;y theo ẩm thực của từng v&ugrave;ng miền m&agrave; nh&acirc;n b&aacute;nh c&oacute; thể l&agrave; gi&aacute;, đu đủ hoặc b&ocirc;ng đi&ecirc;n điển, thịt ba rọi, t&eacute;p, thịt g&agrave;, hoặc thịt vịt bằm nhuyễn&hellip;</p>\r\n\n\r\n\n<p>B&aacute;nh được chi&ecirc;n bằng dầu nhưng ăn kh&ocirc;ng bị ng&aacute;n do được ăn k&egrave;m với nhiều loại rau như x&agrave; l&aacute;ch, diếp c&aacute;, rau thơm, c&oacute; người c&ograve;n th&iacute;ch ăn với cải bẹ xanh, xo&agrave;i non th&aacute;i chỉ, dứa, c&agrave; rốt&hellip;</p>\r\n\n\r\n\n<hr />Đặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn ăn gi&aacute; hoặc kh&ocirc;ng ăn gi&aacute; hoặc bỏ c&aacute;c nguy&ecirc;n liệu m&agrave; bạn kh&ocirc;ng th&iacute;ch khi đặt h&agrave;ng( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-27', 'Tân Hồng ', '2020-04-11 21:33:43', 59, 0, 0, 'banh-xeo-chao-to-gion-ngon-kem-rau-rung-hap-dan-loai-an-chay-25img1.jpg', '', '', '', 'banh-xeo-chao-to-gion-ngon-kem-rau-rung-hap-dan-loai-an-chay'),
(26, 'Ly bánh plan 5 cái kết hợp sữa tươi và cafe', 1, 1, 0, 'Bánh Flan còn có tên gọi khác là Caramen. Đây là Một loại bánh vừa thơm ngon; mềm xốp; lại hấp dẫn được rất nhiều người từ nhiều lứa tuổi.', 25000, 'Vàng', 'cafe, sữa tươi, trứng, Đường làm caramel,....', 'To', '<h4>Giới thiệu:</h4>\r\n\nB&aacute;nh flan l&agrave; một sản phẩm tr&aacute;ng miệng ngon v&agrave; bổ dưỡng, n&oacute; được chế biến lần đầu ti&ecirc;n tại Ph&aacute;p v&agrave; trở n&ecirc;n phổ biến ở hầu hết c&aacute;c nước tr&ecirc;n thế giới.<br />\r\n\n<br />\r\n\n<strong>B&aacute;nh Flan c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; Caramen. Đ&acirc;y l&agrave; Một loại b&aacute;nh vừa thơm ngon; mềm xốp; lại hấp dẫn được rất nhiều người từ nhiều lứa tuổi. B&aacute;nh được hấp ch&iacute;n từ c&aacute;c nguy&ecirc;n liệu ch&iacute;nh l&agrave; trứng v&agrave; sữa; nước caramen. Đ&acirc;y l&agrave; một loại b&aacute;nh c&oacute; lẽ xuất xứ từ nền ẩm thực ch&acirc;u &Acirc;u; tuy hiện nay đ&atilde; phổ biến tại nhiều nơi tr&ecirc;n thế giới.</strong><br />\r\n\n&nbsp;\r\n\n<hr /><br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn số lượng, k&iacute;ch cỡ, v&agrave; setup gi&aacute; tiền kh&aacute;c nhau khi đặt h&agrave;ng( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-04-10', 'Tân Hồng ', '2020-04-11 17:40:19', 58, 0, 0, 'ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe-26img1.jpg', 'ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe-26img2.jpg', 'ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe-26img3.jpg', '', 'ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe'),
(27, 'Pudding thạch nhiều loại khác nhau ngon mát', 2, 1, 0, 'Pudding uống với trà sữa là 1 món tráng miệng cực kì ngon và rất hấp dẫn, được rất nhiều người ưa thích đặc biết nhất là giới trẻ.', 4000, 'Nhiều màu lựa chọn', 'Nước, đường, Gelatine, Siro,....', 'Hũ đựng', '<u><strong>Th&ocirc;ng tin</strong></u>:<br />\r\n\nPudding l&agrave; một loại b&aacute;nh tr&aacute;ng miệng c&oacute; nguồn gốc từ nước Ph&aacute;p. Đ<em>ược du nhập v&agrave;o Việt Nam c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u.</em><br />\r\n\n<br />\r\n\nNg&agrave;y nay, m&oacute;n b&aacute;nh pudding được biến tấu với nhiều c&ocirc;ng thức, nguy&ecirc;n liệu kh&aacute;c nhau gi&uacute;p ch&uacute;ng ta c&oacute; th&ecirc;m nhiều lựa chọn cho m&oacute;n tr&aacute;ng miệng hấp dẫn n&agrave;y. T&ugrave;y v&agrave;o nguy&ecirc;n liệu sử dụng m&agrave; b&aacute;nh pudding c&oacute; những m&agrave;u sắc kh&aacute;c nhau. M&agrave;u xanh từ tr&agrave; xanh, m&agrave;u v&agrave;ng từ trứng hoặc xo&agrave;i ch&iacute;n, m&agrave;u n&acirc;u từ s&ocirc; c&ocirc; la,&hellip;<br />\r\n\n<br />\r\n\nB&ecirc;n cạnh việc sử dụng như một m&oacute;n tr&aacute;ng miệng, b&aacute;nh pudding c&ograve;n được sử dụng l&agrave;m topping cho một số m&oacute;n. Phổ biến nhất l&agrave; cho v&agrave;o tr&agrave; sữa, d&ugrave;ng c&ugrave;ng c&aacute;c loại thạch hoặc ăn k&egrave;m với tr&aacute;i c&acirc;y,&hellip;<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<u><strong>HDSD</strong></u>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<u><strong>Bảo quản</strong></u>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch, k&iacute;ch cỡ v&agrave; gi&aacute; kh&aacute;c nhau khi đặt h&agrave;ng n&egrave;( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-27', 'Tân Hồng ', '2020-04-11 21:35:34', 57, 0, 0, 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img1.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img2.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img3.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img4.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat'),
(28, 'Mặt nạ ngủ Bioaqua viên thuốc', 2, 2, 0, 'ưertyuio', 10000, 'Xanh lá', 'lô hội', 'Dạng viên', 'Mặt nạ ngủ h&igrave;nh vi&ecirc;n thuốc của bioaqua l&agrave; sản phẩm được rất nhiều người trung quốc tin d&ugrave;ng. n&oacute; c&oacute; gi&aacute; th&agrave;nh rẻ nhưng hiệu quả dưỡng da rất tốt ph&ugrave; hợp với nhu cầu của c&aacute;c bạn học sinh sinh vi&ecirc;n chưa c&oacute; điều kiện trải nghiệm c&aacute;c sản phẩm, cao cấp của Nhật H&agrave;n\r\n\n<div style=\"margin-left: 40px;\">- mặt nạ ngủ bioaqua jelly mask chứa dưỡng chất dồi d&agrave;o mang đến l&agrave;n da căng mịn hồng h&agrave;o chỉ sau v&agrave;i lần đắp đầu ti&ecirc;n.<br />\r\n\n- mặt nạ ngủ c&oacute; chất gel đặc v&agrave; m&ugrave;i hương rất dễ chịu. đc điều chế từ h&ograve;a quả tự nhi&ecirc;n n&ecirc;n cực kỳ l&agrave;nh t&iacute;nh<br />\r\n\n- chất lượng giấc ngủ đc cải thiện sẽ gi&uacute;p tăng cường khả năng t&aacute;i sinh phục hồi l&agrave;n da 1 c&aacute;ch hiệu quả<br />\r\n\n- gi&uacute;p nu&ocirc;i dưỡng tăng cường độ ẩm l&agrave;n da mềm mại mịn m&agrave;ng<br />\r\n\n- dưỡng da trắng dần đều m&agrave;u rạng rỡ<br />\r\n\n- chăm s&oacute;c da nu&ocirc;i dưỡng nhẹ nh&agrave;ng cho mọi l&agrave;n da<br />\r\n\n- gi&uacute;p se lỗ ch&acirc;n l&ocirc;ng, ngăn ngừa mụn bọc v&agrave; điều trị c&aacute;c vấn đề vi&ecirc;m nhiễm ở da dưỡng da trị mụn hiệu quả, điều trị mụn c&aacute;m<br />\r\n\n- dưỡng da mềm mịn, tăng t&iacute;nh đ&agrave;n hồi cho da</div>\r\n\n<br />\r\n\n<u><strong>C&ocirc;ng dụng:</strong></u>\r\n\n\r\n\n<ul>\r\n\n	<li>L&ocirc; Hội: Chiết xuất từ l&ocirc; hội c&oacute; t&aacute;c dụng l&agrave;m s&aacute;ng da, dưỡng ẩm, sạch b&atilde; nhờn, đặc biệt c&oacute; khả năng kiềm dầu cao</li>\r\n\n	<li>Hoa Anh Đ&agrave;o: C&oacute; t&aacute;c dụng dưỡng ẩm, l&agrave;m mịn da, gi&uacute;p da săn chắc tăng độ đ&agrave;n hồi cho da</li>\r\n\n	<li>Việt Quất: C&oacute; t&aacute;c dụng l&agrave;m trắng, dưỡng ẩm s&acirc;u cho da lu&ocirc;n căng mịn v&agrave; tr&agrave;n đầy sức sống</li>\r\n\n</ul>\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\n( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch c&oacute; thể ghi lời nhắn lưu &yacute; của c&aacute;c bạn cho qu&aacute;n m&igrave;nh nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-27', 'Tân Hồng ', '2020-04-11 21:31:17', 125, 0, 0, 'mat-na-ngu-bioaqua-vien-thuoc-28img1.jpg', 'mat-na-ngu-bioaqua-vien-thuoc-28img2.jpg', 'mat-na-ngu-bioaqua-vien-thuoc-28img3.jpg', '', 'mat-na-ngu-bioaqua-vien-thuoc'),
(31, 'Trà tắc - Giải khát, thanh lọc cơ thể, không béo', 1, 1, 0, 'Bình thường thì không sao nhưng vào mùa nắng nóng thì lại “hot” hơn bao giờ hết vì nhu cầu giải khát tăng cao đặc biệt khả năng giải khát của nó...', 10000, 'Cam vàng', 'Trà xanh, quả tắc', ' ', 'Tr&agrave; tắc l&agrave; một loại thức uống m&aacute;t l&agrave;nh quen thuộc dĩ nhi&ecirc;n th&agrave;nh phần ch&iacute;nh của n&oacute; l&agrave; tr&agrave;, quả tắc v&agrave; đường. Ngo&agrave;i ra c&ograve;n c&oacute; th&ecirc;m chanh d&acirc;y, cam, mật ong tuỳ v&agrave;o y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.<br />\r\n\n<br />\r\n\nB&igrave;nh thường th&igrave; kh&ocirc;ng sao nhưng v&agrave;o m&ugrave;a nắng n&oacute;ng th&igrave; lại &ldquo;hot&rdquo; hơn bao giờ hết v&igrave; nhu cầu giải kh&aacute;t tăng cao đặc biệt khả năng giải kh&aacute;t của n&oacute; phải n&oacute;i rằng thuộc dạng định với m&ugrave;i vị chua ngọt m&aacute;t lạnh v&agrave; gi&aacute; rẻ.&nbsp;<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn k&iacute;ch cỡ v&agrave; gi&aacute; kh&aacute;c nhau khi đặt h&agrave;ng n&egrave;.( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />', '', '2020-04-11', 'Tân Hồng ', '2020-04-11 23:32:32', 11, 0, 0, 'tra-tac---giai-khat--thanh-loc-co-the--khong-beo-31img1.jpg', 'tra-tac---giai-khat--thanh-loc-co-the--khong-beo-31img2.jpg', '', '', 'tra-tac---giai-khat--thanh-loc-co-the--khong-beo'),
(32, 'Sữa tươi thạch ,chân châu (Giá tùy chọn 15k, 20k, 25k)', 1, 1, 0, 'Chán trà sữa rồi thì sữa tươi là lựa chọn thích hợp và không béo như trà sữa mà lại tốt cho sức khỏe nè.', 15000, 'Trắng', 'Sữa tươi, chân châu, plan, pudding,...', 'Ly', 'Ch&aacute;n tr&agrave; sữa rồi th&igrave; sữa tươi l&agrave; lựa chọn th&iacute;ch hợp v&agrave; kh&ocirc;ng b&eacute;o như tr&agrave; sữa m&agrave; lại tốt cho sức khỏe n&egrave;.<br />\r\n\n<br />\r\n\nSữa tươi tr&acirc;n ch&acirc;u H&agrave;n Quốc, hiện đang l&agrave; loại thức uống rất hot trong giới trẻ hiện nay, bởi ch&iacute;nh vị thơm b&eacute;o của sữa tươi, vị dai dai dẻo dẻo của tr&acirc;n ch&acirc;u, vị ngọt thanh của đường đen H&agrave;n Quốc.\r\n\n<hr />Đặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay.<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-04-13', 'Tân Hồng ', '2020-04-13 16:50:16', 22, 0, 0, 'sua-tuoi-thach--chan-chau-32img1.jpg', '', '', '', 'sua-tuoi-thach--chan-chau'),
(33, 'Sữa tươi milo - Cacao dầm thơm ngon 20000đ', 1, 1, 0, 'trehr', 20000, 'Trắng nâu', 'Sữa tươi, chân châu, plan, pudding milo,...', 'Ly', 'Sữa tươi milo - Cacao dầm thơm ngon 20000đ<br />\r\n\n<br />\r\n\nCh&aacute;n tr&agrave; sữa rồi th&igrave; sữa tươi dầm milo c&ugrave;ng cacao l&agrave; lựa chọn th&iacute;ch hợp v&agrave; kh&ocirc;ng b&eacute;o như tr&agrave; sữa m&agrave; lại tốt cho sức khỏe n&egrave;.\r\n\n<hr />Đặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>HDSD</strong>: D&ugrave;ng ngay.<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/new-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />)', 'Tân Hồng', '2020-04-13', 'Tân Hồng ', '2020-04-19 12:45:51', 32, 0, 0, 'sua-tuoi-milo-cacao-dam-33img1.jpg', 'sua-tuoi-milo-cacao-dam-33img2.jpg', 'sua-tuoi-milo-cacao-dam-33img3.jpg', 'sua-tuoi-milo-cacao-dam-33img4.jpg', 'sua-tuoi-milo-cacao-dam'),
(34, 'Chân gà xả tắc kèm nước xốt chấm thơm ngon', 1, 1, 0, 'Giao hành nhanh,chân gà thấm,ăn giòn giòn,chấm với xốt nhà tự làm cay cay rất ngon.', 50000, ' ', 'Chân gà, xả, tắc, ớt( tùy người dùng), nước xốt', 'Hũ to', 'Giao h&agrave;nh nhanh,ch&acirc;n g&agrave; thấm,ăn gi&ograve;n gi&ograve;n,chấm với xốt nh&agrave; tự l&agrave;m cay cay rất ngon.<br />\r\n\n<br />\r\n\nVị mặn mặn chua &iacute;t hơi the cay, m&igrave;nh th&iacute;ch ăn chua nhiều n&ecirc;n vắt th&ecirc;m tắc c&oacute; sẵn trong t&uacute;i g&agrave;. Nước chấm chua chua ngọt ngọt cay cay.<br />\r\n\n<br />\r\n\nH&igrave;nh thức: c&oacute; xanh xanh đỏ đỏ của tắc ớt sả, hũ chắc chắn.\r\n\n<hr />Đặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn k&iacute;ch cỡ lớn hơn hoặc setup theo gi&aacute; ( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', 'Tân Hồng ', '2020-04-16', 'Tân Hồng ', '2020-04-16 10:59:49', 23, 0, 0, 'chan-ga-xa-tac-kem-nuoc-xot-cham-thom-ngon-34img1.jpg', 'chan-ga-xa-tac-kem-nuoc-xot-cham-thom-ngon-34img2.jpg', '', '', 'chan-ga-xa-tac-kem-nuoc-xot-cham-thom-ngon');

-- --------------------------------------------------------

--
-- Table structure for table `producttag`
--

CREATE TABLE `producttag` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `type_description`, `slug`) VALUES
(1, 'SẢN PHẨM NỔI BẬT (HOT)', '', 'san-pham-noi-bat'),
(2, 'SẢN PHẨM MỚI', '', 'san-pham-moi'),
(3, 'SẢN PHẨM GIẢM GIÁ', '', 'san-pham-giam-gia');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `dob` date DEFAULT NULL,
  `createDate` date NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `banned` date DEFAULT NULL,
  `editTime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `dob`, `createDate`, `username`, `fullname`, `email`, `phone_num`, `address`, `password`, `avatar`, `role`, `banned`, `editTime`) VALUES
(220001, '2001-02-26', '2022-11-26', 'sheezy01', 'Hồ Hữu An', 'hha2602@gmail.com', '908113114', '108 Đường số 1,Cư xá Phú Lâm C mở rộng, Phường An Lạc A, Quận Bình Tân, Thành phố Hồ Chí Minh', 'hha123', 'avatar-user220001-sheezy01.png', 0, NULL, 2022),
(220003, '2002-01-12', '2022-11-26', 'lwtprettylaugh', 'Đinh Tấn Dũng', 'dtd1201@gmail.com', '9026154822222', '123 Bạch Đằng, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh', 'd0@nx3mp@w0rd', 'avatar-user220003-lwtprettylaugh.png', 0, NULL, 2022),
(220004, '1997-04-26', '2022-11-26', 'douggarland', 'Trần Mai Thi', 'tmt2604@gmail.com', '908154134', '389/22 Lê Văn Qưới, Phường Bình Trị Đông, Quận Bình Tân, Thành phố Hồ Chí Minh', 'tmt12344', NULL, 0, NULL, 2022),
(220006, '2000-06-19', '2022-11-26', 'monroevicious', 'Lê Tuấn Tú', 'ltt1906@gmail.com', '908154875', '343/18K Tô Hiến Thành, Phường 12, Quận 10, Thành phố Hồ Chí Minh', 'zcnu2494', NULL, 0, NULL, 2022),
(220008, '2002-08-09', '2022-11-26', 'RobinMeske', 'Nguyễn Phương Mai', 'npm0908@gmail.com', '909484134', '132A Thân Nhân Trung, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh', 'npmireact', NULL, 0, NULL, 2022),
(220009, '2003-12-15', '2022-11-26', 'pigzilla', 'Hồ Danh Giá', 'hdg1512@gmail.com', '907485618', '54 Phạm Ngọc Thạch, Phường Võ Thị Sáu, Quận 3, Thành phố Hồ Chí Minh', 'hdg210421', NULL, 0, NULL, 2022),
(220010, '1994-10-14', '2022-11-26', 'GabrieleNeher', 'Trần Việt Sang', 'tvs1410@gmail.com', '948151488', '225 Nguyễn Xí, Phường 5, Quận Bình Thạnh, Thành phố Hồ Chí Minh', 'tvs8910', NULL, 0, NULL, 2022),
(220011, '1997-12-25', '2022-11-26', 'BlissfulEats', 'Phạm Thiên An', 'kathleen97@gmail.com', '982561254', '207/18 Bạch Đằng, Phường 15, Quận Bình Thạnh, Thành phố Hồ Chí Minh', 'avas1312', NULL, 0, NULL, 2022),
(220012, '2004-08-03', '2022-11-26', 'eliseotecleo', 'Trần Ngọc Bảo', 'baobaosyd@gmail.com', '905123345', '256/26/11A Phan Huy Ích, Phường 12, Quận Gò Vấp, Thành phố Hồ Chí Minh', 'sdny24214', NULL, 0, NULL, 2022),
(220013, '2000-10-04', '2022-11-26', 'kaylanabrewer_', 'Nguyễn Thanh Danh', 'danh.nthaha@gmai.com', '907070705', '911/7/25 B Tỉnh Lộ 43, Khu phố 2, Phường Bình Chiểu, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', '@jkfasb21', NULL, 0, NULL, 2022),
(220014, '2001-12-12', '2022-11-26', 'americacredit', 'Nguyễn Trần Quốc Duy', 'aramurf@gmail.com', '984134875', 'Số 40, Đường 3C, Khu Dân Cư 13C Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Thành phố Hồ Chí Minh', 'nabjf@ba', NULL, NULL, NULL, NULL),
(220015, '2001-11-27', '2022-11-26', 'cheyflan', 'Nguyễn Vũ Anh Thư', 'vuanhthu.ng2711@gmail.com', '912487536', '266/8/5 Phú Thọ Hòa, Phường Phú Thọ Hoà, Quận Tân Phú, Thành phố Hồ Chí Minh', 'fnafi147542', NULL, NULL, NULL, NULL),
(220016, '1998-02-14', '2022-11-26', 'Ayu7sith4', 'Nguyễn Tiến Khoa', 'ntkhoa1402@gmail.com', '987654321', '125 Đường D4, Xã Phước Lộc, Huyện Nhà Bè, Thành phố Hồ Chí Minh', '12rwqaf12', NULL, NULL, NULL, NULL),
(220017, '1996-04-12', '2022-11-26', 'Toucaan_Samm', 'Huỳnh Xuân Tín', 'tinbestyasuo@gmail.com', '905219413', '10 Đường G, Khu phố Mỹ Phú 2, Phường Tân Phú, Quận 7, Thành phố Hồ Chí Minh', 'fg1124fasf', NULL, NULL, NULL, NULL),
(220018, '1999-08-31', '2022-11-26', 'SSmyth2010', 'Vũ Trung Kiên', 'kienrankbac@gmail.com', '986547135', '116 Nguyễn Văn Thủ, Phường Đa Kao, Quận 1, Thành phố Hồ Chí Minh', 'agsg212@', NULL, NULL, NULL, NULL),
(220019, '1996-01-20', '2022-11-26', 'DarkToonsGaming', 'Trần Kiên Hưng', 'tkhung2001@gmail.com', '978451874', '54 đường 475, Phường Phước Long B, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', 'Gbs@nk214', NULL, NULL, NULL, NULL),
(220020, '2002-11-21', '2022-11-26', 'GourlayLynn', 'Đặng Huyền Trân', 'tranhyoga@gmail.com', '965104584', '164/27 Đường số 20, Phường 5, Quận Gò Vấp, Thành phố Hồ Chí Minh', '124@mkafE', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supply_id` (`supply_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `fk_order_id` (`order_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `menu_footers`
--
ALTER TABLE `menu_footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `postcomment`
--
ALTER TABLE `postcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_author` (`post_author`);

--
-- Indexes for table `productattribute`
--
ALTER TABLE `productattribute`
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `fk_supply_id` (`supply_id`),
  ADD KEY `fk_type_id` (`type_id`);

--
-- Indexes for table `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_id` (`promotion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_footers`
--
ALTER TABLE `menu_footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcomment`
--
ALTER TABLE `postcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `producttag`
--
ALTER TABLE `producttag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220021;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `postcomment`
--
ALTER TABLE `postcomment`
  ADD CONSTRAINT `postcomment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `postcomment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `productattribute`
--
ALTER TABLE `productattribute`
  ADD CONSTRAINT `productattribute_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `producttag`
--
ALTER TABLE `producttag`
  ADD CONSTRAINT `producttag_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `producttag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `voucher`
--
ALTER TABLE `voucher`
  ADD CONSTRAINT `voucher_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
