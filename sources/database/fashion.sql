-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 04:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

SET CHARACTER SET utf8mb4;

ALTER DATABASE
    `fashion`
    CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `main_pic` varchar(1000)  NULL,
  `type` int(11) NOT NULL,
  `title` text NOT NULL,
  `date` date DEFAULT NULL,
  `para1` text NOT NULL,
  `sub_pic` varchar(100)  NULL,
  `para2` text NOT NULL,
  `sub_pic_quote` varchar(1000)  NULL,
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `blog` (`main_pic`, `type`, `title`, `date`, `para1`, `sub_pic`, `para2`, `sub_pic_quote`, `id`, `status`, `slug`) VALUES
('./resources/posts-resource/images/pic1.jpg', 1, 'We Eat and Drink All Night', '0000-00-00', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen.\r\n\r\nShe packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.', './resources/posts-resource/images/sub_pic_1.jpg', 'She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.', 'This is a sweet image caption. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia', 880, 1, ''),
('beef-steak-at-guatian-restaurant-881main_pic.png', 1, 'Beef Steak at Guatian Restaurant', '2022-11-29', 'Nh&agrave; h&agrave;ng l&agrave; nơi duy nhất ở TP.HCM tự thực hiện qu&aacute; tr&igrave;nh dry-aged kh&eacute;p k&iacute;n v&agrave; nướng thịt trực tiếp tr&ecirc;n l&ograve; than. Với kỹ thuật n&agrave;y, miếng b&ograve; sẽ giữ trọn vẹn hương vị tinh t&uacute;y, mang chất lượng tuyệt hảo nhất. Đ&acirc;y cũng trở th&agrave;nh một trong những l&yacute; do khiến đĩa steak ở đ&acirc;y c&oacute; gi&aacute; th&agrave;nh đắt đỏ bởi qu&aacute; tr&igrave;nh chế biến k&igrave; c&ocirc;ng. Kh&ocirc;ng chỉ tập chung v&agrave;o chất lượng m&oacute;n ăn, nh&agrave; h&agrave;ng c&ograve;n ch&uacute; trọng đến kh&ocirc;ng gian, phong c&aacute;ch phục vụ để thực kh&aacute;ch cảm thấy xứng đ&aacute;ng với số tiền m&igrave;nh đ&atilde; bỏ ra.', 'beef-steak-at-guatian-restaurant-881sub_pic.png', 'Nh&agrave; h&agrave;ng l&agrave; nơi duy nhất ở TP.HCM tự thực hiện qu&aacute; tr&igrave;nh dry-aged kh&eacute;p k&iacute;n v&agrave; nướng thịt trực tiếp tr&ecirc;n l&ograve; than. Với kỹ thuật n&agrave;y, miếng b&ograve; sẽ giữ trọn vẹn hương vị tinh t&uacute;y, mang chất lượng tuyệt hảo nhất. Đ&acirc;y cũng trở th&agrave;nh một trong những l&yacute; do khiến đĩa steak ở đ&acirc;y c&oacute; gi&aacute; th&agrave;nh đắt đỏ bởi qu&aacute; tr&igrave;nh chế biến k&igrave; c&ocirc;ng. Kh&ocirc;ng chỉ tập chung v&agrave;o chất lượng m&oacute;n ăn, nh&agrave; h&agrave;ng c&ograve;n ch&uacute; trọng đến kh&ocirc;ng gian, phong c&aacute;ch phục vụ để thực kh&aacute;ch cảm thấy xứng đ&aacute;ng với số tiền m&igrave;nh đ&atilde; bỏ ra.', 'Cách chế biến bò đúng chuẩn theo yêu cầu và nêm nếm gia vị vừa ăn, side dishes cũng rất ngon, tuy nhiên sốt của rocket salad hơi đậm', 881, 1, 'beef-steak-at-guatian-restaurant'),
('an-overlooking-river-at-the-east-cost-882main_pic.jpg', 2, 'An Overlooking River at the East Cost', '2022-11-29', '<h2 style=\"font-style:italic;\">L&ecirc; Phương T&ugrave;ng, 21 tuổi, du kh&aacute;ch tới suối Ti&ecirc;n chơi, cho biết đ&acirc;y l&agrave; một địa điểm đẹp, lượng kh&aacute;ch tham quan chưa nhiều v&agrave; ồ ạt như nơi kh&aacute;c n&ecirc;n giữ được vẻ hoang sơ. Điều khiến ch&agrave;ng trai người Huế ấn tượng l&agrave; địa điểm n&agrave;y t&iacute;ch hợp được nhiều thứ để trải nghiệm trong ng&agrave;y, như đi thuyền, tắm suối, ăn uống b&ecirc;n n&uacute;i rừng.&nbsp;</h2>\r\n\r\n<h1>&nbsp;</h1>\r\n', 'an-overlooking-river-at-the-east-cost-882sub_pic.png', 'D&ograve;ng nước ở đ&acirc;y xanh m&aacute;t chảy từ thượng nguồn. Người d&acirc;n địa phương cho rằng ng&agrave;y xưa, c&oacute; một lo&agrave;i hoa rừng mọc b&ecirc;n bờ suối, đến m&ugrave;a hoa nở trải d&agrave;i tr&ecirc;n triền đ&aacute; nh&igrave;n như l&agrave;n t&oacute;c ti&ecirc;n nữ n&ecirc;n mọi người từ đ&oacute; quen gọi l&agrave; suối Ti&ecirc;n. Giữa c&aacute;c n&oacute;ng gay gắt của m&ugrave;a h&egrave; tr&ecirc;n dải đất miền Trung, suối Ti&ecirc;n l&agrave; nơi ph&ugrave; hợp cho những du kh&aacute;ch muốn thư gi&atilde;n giữa kh&ocirc;ng kh&iacute; trong l&agrave;nh, tắm nước m&aacute;t lạnh.', 'Du lịchTư vấnĐi đâuThứ ba, 13/7/2021, 20:48 (GMT+7)Dòng suối mát ẩn mình dưới chân núi Bạch MãTHỪA THIÊN - HUẾSuối Tiên được ví như \'nàng tiên giữa núi rừng\', hút khách vào mùa hè nhờ dòng nước mát lạnh.Suối Tiên nằm dưới chân dãy Bạch Mã, nổi tiếng với dòng nước mát lạnh, thích hợp để tắm và tham quan vào mùa hè. Đây là một hệ thống tập hợp nhiều hồ, suối, thuộc xã Lộc Thủy, huyện Phú Lộc. Địa điểm du lịch này được đánh giá là vẫn còn hoang sơ do ẩn sâu trong hồ Thủy Yên, du khách muốn đến tham quan phải đi thuyền băng qua hồ để đến.Suối Tiên nằm dưới chân núi Bạch Mã hùng vỹ. Khách sẽ được chở bằng thuyền để tới suối với giá vé là 30.000 đồng/khách/khứ hồi. Ảnh: Lê Phương TùngSuối Tiên nằm dưới chân núi Bạch Mã hùng vỹ. Khách sẽ được chở bằng thuyền để tới suối với giá vé là 30.000 đồng/khách/khứ hồi.', 882, 2, 'an-overlooking-river-at-the-east-cost'),
('./resources/posts-resource/images/pic5.jpg', 3, 'We Took A Photo', '0000-00-00', 'Boasting some 2,000 miles of coastline plus a handful of renowned island destinations, Vietnam naturally has no shortage of beautiful beaches. Sure, you could just stick to cities, what with the colonial architecture and history of Hanoi, the imperial charms of Hue, and the bustling nightlife of Saigon. But you\'d be remiss to plan a Vietnamese vacation without hitting the water at least once—plus, most cities are just a day-trip from the coast, if not on the coast already.', './resources/posts-resource/images/sub_pic_5.jpg', 'To help you decide, we\'ve put together a guide to the most notable beach destinations in Vietnam. From the shores of the UNESCO-designated Ha Long Bay to the rolling dunes of Mui Ne and the island getaways of Con Dao and Phu Quoc, here are the best places to enjoy Vietnam\'s surf, sun, and sand.', 'A one-time French colonial port on the central coast, Vietnam\'s third-largest city is also home to some of the country\'s best beaches.', 884, 2, ''),
('', 0, '', '2022-11-29', '', '', '', '', 885, 0, ''),
('', 0, '', '2022-11-29', '', '', '', '', 886, 0, ''),
('what-is-lorem-ipsum-887main_pic.png', 2, 'What is Lorem Ipsum', '2022-11-29', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desk', 'what-is-lorem-ipsum?-887sub_pic.png', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem&', 'Hello', 887, 2, 'what-is-lorem-ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `blog_types`
--

CREATE TABLE `blog_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(45) NOT NULL,
  `slug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_types`
--

INSERT INTO `blog_types` (`id`, `type_name`, `slug`) VALUES
(1, 'Truyền thống', 'truyen-thong'),
(2, 'Tin tức', 'tin-tuc'),
(3, 'Thời trang', 'thoi-trang'),
(4, 'Hiện đại', 'hien-dai'),
(5, 'Cổ trang', 'co-trang');

-- --------------------------------------------------------

--
-- Table structure for table `cart_user`
--

CREATE TABLE `cart_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_user`
--

INSERT INTO `cart_user` (`id`, `user_id`, `product_id`, `number`) VALUES
(25, 2, 8, 6),
(8, 3, 7, 3),
(10, 3, 4, 2),
(23, 3, 28, 1);

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
(1, 'Nam', 1, 1, 'nam'),
(2, 'Nữ', 1, 2, 'nu'),
(3, 'Trẻ em', 1, 3, 'tre-em');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'author-comment.png',
  `editTime` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT 0,
  `post_id` int(11) DEFAULT 0,
  `page_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_comment_id`, `user_id`, `content`, `createDate`, `author`, `email`, `status`, `link_image`, `editTime`, `product_id`, `post_id`, `page_id`) VALUES
(1, 0, 0, 'Trà sữa ngon lắm bạn', '2020-03-27 00:00:00', 'Tân', 'tan12357@gmail.com', 0, 'author-comment.png', NULL, 4, 0, 0),
(4, 0, 0, 'Tr&agrave; sữa ngon lắm ạ, đ&acirc;y l&agrave; vị tr&agrave; mk th&iacute;ch nhất lu&ocirc;n. Mong lần tới vẫn được nhiều thạch trong ly ạ. Cảm ơn chủ qu&aacute;n nh&eacute;!!', '2020-03-27 02:18:17', 'Trung AV', 'trungtin@gmail.com', 0, 'author-comment.png', '2020-04-10 15:55:11', 2, 0, 0),
(7, 0, 2, 'régrest', '2020-04-01 13:12:20', 'Tân Hồng IT', 'phuongtan12357nguyen@gmail.com ?> ', 2, 'avatar-user1011-tanhongit.jpg', NULL, 2, 0, 0),
(8, 0, 2, 'régrest', '2020-04-01 13:15:09', 'Tân Hồng IT', 'phuongtan12357nguyen@gmail.com', 3, 'avatar-user1011-tanhongit.jpg', NULL, 2, 0, 0),
(9, 0, 2, 'Cảm ơn shop nhiều ạ', '2020-04-10 19:27:57', 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 2, 'avatar-user1011-tanhongit.jpg', NULL, 22, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `link_Logo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_Contact` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Facebook` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zalo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_footer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `link_Logo`, `contact_name`, `address`, `country`, `phone`, `phone_2`, `email`, `link_Contact`, `link_Facebook`, `link_Twitter`, `link_linkedin`, `zalo`, `link_about`, `about_footer`, `favicon`) VALUES
(1, 'logo-chikoiquan-tan-hong-it.png', 'Tân Hồng IT', '410, đường Hùng Vương, TT GIA RAY, Xuân Lộc, Đồng Nai', 'Việt Nam', '0339908569', '0941838069', 'test@gmail.com', 'javascript:void(0);', 'https://www.facebook.com/tanhongit', 'https://twitter.com/tanhongit', 'http://www.linkedin.com/in/tanhongit', '0363220339', 'page/1-about', 'Website bán đồ ăn thức uống cũng như một số các mỹ phẩm tiện dụng. Xây dựng bởi Tân Hồng IT', 'favicon-chikoiquan-tan-hong-it.png');

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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `media_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `media_name`, `slug`, `createDate`) VALUES
(9, 'Logo Tân Hồng IT', 'logo-tan-hong-it.jpg', '2020-03-24 21:18:30'),
(8, 'Khoá học lập trình php căn bản (Gốc)', 'lap-trinh-php-can-ban.png', '2020-03-24 21:14:02'),
(10, 'logo old youtube', 'logo-old-youtube.png', '2020-03-24 23:19:14'),
(11, 'mùa corona virut ', 'mua-corona-virut.jpg', '2020-03-29 08:38:01'),
(13, 'vị cha đẻ của máy vi tính', 'cha-de-cua-may-vi-tinh.jpg', '2020-04-02 01:48:11'),
(14, 'logo chikoi quan', 'logo-chikoi-quan.png', '2020-04-04 20:53:10'),
(15, 'favicon chi koi quan', 'favicon-chi-koi-quan.png', '2020-04-04 20:53:41'),
(16, 'loại trừ thời gian truy cập ip', 'loai-tru-thoi-gian-truy-cap-ip.jpg', '2020-04-11 17:33:42'),
(9, 'Logo Tân Hồng IT', 'logo-tan-hong-it.jpg', '2020-03-24 21:18:30'),
(8, 'Khoá học lập trình php căn bản (Gốc)', 'lap-trinh-php-can-ban.png', '2020-03-24 21:14:02'),
(10, 'logo old youtube', 'logo-old-youtube.png', '2020-03-24 23:19:14'),
(11, 'mùa corona virut ', 'mua-corona-virut.jpg', '2020-03-29 08:38:01'),
(13, 'vị cha đẻ của máy vi tính', 'cha-de-cua-may-vi-tinh.jpg', '2020-04-02 01:48:11'),
(14, 'logo chikoi quan', 'logo-chikoi-quan.png', '2020-04-04 20:53:10'),
(15, 'favicon chi koi quan', 'favicon-chi-koi-quan.png', '2020-04-04 20:53:41'),
(16, 'loại trừ thời gian truy cập ip', 'loai-tru-thoi-gian-truy-cap-ip.jpg', '2020-04-11 17:33:42'),
(9, 'Logo Tân Hồng IT', 'logo-tan-hong-it.jpg', '2020-03-24 21:18:30'),
(8, 'Khoá học lập trình php căn bản (Gốc)', 'lap-trinh-php-can-ban.png', '2020-03-24 21:14:02'),
(10, 'logo old youtube', 'logo-old-youtube.png', '2020-03-24 23:19:14'),
(11, 'mùa corona virut ', 'mua-corona-virut.jpg', '2020-03-29 08:38:01'),
(13, 'vị cha đẻ của máy vi tính', 'cha-de-cua-may-vi-tinh.jpg', '2020-04-02 01:48:11'),
(14, 'logo chikoi quan', 'logo-chikoi-quan.png', '2020-04-04 20:53:10'),
(15, 'favicon chi koi quan', 'favicon-chi-koi-quan.png', '2020-04-04 20:53:41'),
(16, 'loại trừ thời gian truy cập ip', 'loai-tru-thoi-gian-truy-cap-ip.jpg', '2020-04-11 17:33:42'),
(9, 'Logo Tân Hồng IT', 'logo-tan-hong-it.jpg', '2020-03-24 21:18:30'),
(8, 'Khoá học lập trình php căn bản (Gốc)', 'lap-trinh-php-can-ban.png', '2020-03-24 21:14:02'),
(10, 'logo old youtube', 'logo-old-youtube.png', '2020-03-24 23:19:14'),
(11, 'mùa corona virut ', 'mua-corona-virut.jpg', '2020-03-29 08:38:01'),
(13, 'vị cha đẻ của máy vi tính', 'cha-de-cua-may-vi-tinh.jpg', '2020-04-02 01:48:11'),
(14, 'logo chikoi quan', 'logo-chikoi-quan.png', '2020-04-04 20:53:10'),
(15, 'favicon chi koi quan', 'favicon-chi-koi-quan.png', '2020-04-04 20:53:41'),
(16, 'loại trừ thời gian truy cập ip', 'loai-tru-thoi-gian-truy-cap-ip.jpg', '2020-04-11 17:33:42'),
(9, 'Logo Tân Hồng IT', 'logo-tan-hong-it.jpg', '2020-03-24 21:18:30'),
(8, 'Khoá học lập trình php căn bản (Gốc)', 'lap-trinh-php-can-ban.png', '2020-03-24 21:14:02'),
(10, 'logo old youtube', 'logo-old-youtube.png', '2020-03-24 23:19:14'),
(11, 'mùa corona virut ', 'mua-corona-virut.jpg', '2020-03-29 08:38:01'),
(13, 'vị cha đẻ của máy vi tính', 'cha-de-cua-may-vi-tinh.jpg', '2020-04-02 01:48:11'),
(14, 'logo chikoi quan', 'logo-chikoi-quan.png', '2020-04-04 20:53:10'),
(15, 'favicon chi koi quan', 'favicon-chi-koi-quan.png', '2020-04-04 20:53:41'),
(16, 'loại trừ thời gian truy cập ip', 'loai-tru-thoi-gian-truy-cap-ip.jpg', '2020-04-11 17:33:42');

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_total` double NOT NULL,
  `createtime` datetime NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer`, `province`, `address`, `phone`, `cart_total`, `createtime`, `message`, `status`, `user_id`, `editTime`) VALUES
(10, 'Tân Hồng IT', 'Đồng Nai', 'xuan lộc, đồng nai, việt nam', '0363220339', 1050000, '2020-04-17 10:38:09', 'hé nô át', 2, 0, NULL),
(5, 'drt', '-', 'xuan lộc, đồng nai, việt nam', '0363220339', 80, '2020-03-25 16:21:38', '', 2, 1, NULL),
(6, 'Nguyen Phuong Tan', 'Dong Nai', 'khu 2, thi tran gia ray, xuan loc, dong nai, vn', '0363220339', 10000, '2020-03-29 20:24:33', 'fgh', 2, 1, NULL),
(7, 'Nguyen Phuong Tan', 'Dong Nai', 'khu 2, thi tran gia ray, xuan loc, dong nai, vn', '0363220339', 10000, '2020-03-29 20:25:46', 'fgh', 2, 0, NULL),
(1, 'Nguyen Phuong Tan', 'Dong Nai', 'khu 2, thi tran gia ray, xuan loc, dong nai, vn', '0363220339', 165000, '2020-03-21 10:19:59', '', 2, 0, NULL),
(9, 'Tân Hồng ', 'yth', 'xuân lộc, đồng nai, việt nam', '363220339', 10000, '2020-04-10 22:06:29', '', 1, 2, '2020-04-10 22:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 4, 1, 15000),
(2, 1, 11, 10, 15000),
(3, 2, 14, 1, 10000),
(4, 3, 4, 1, 15000),
(5, 3, 12, 1, 15000),
(6, 4, 6, 1, 15000),
(7, 4, 2, 4, 15000),
(8, 4, 4, 2, 15000),
(10, 6, 28, 1, 10000),
(13, 7, 5, 6, 15000),
(14, 9, 8, 1, 10000),
(15, 10, 28, 8, 10000),
(16, 10, 4, 5, 15000),
(17, 10, 2, 11, 15000),
(18, 10, 1, 64, 10000),
(19, 10, 8, 9, 10000);

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
(2, 'Quần hàng hiệu', 1, 1, 1, ' Trà  sữa Thái (Trà xanh Thái Lan) là một loại thức uống quen thuộc không chỉ được xem là thần dược chống lão hóa...', 15000, 'Xanh lá', 'Trà thái xanh, sữa béo, thạch , pudding, chân châu,...', 'Vừa - 15k, Lớn - 20k', 'Tr&agrave; sữa Th&aacute;i (Tr&agrave; xanh Th&aacute;i Lan) l&agrave; một loại thức uống quen thuộc kh&ocirc;ng chỉ được xem l&agrave; thần dược chống l&atilde;o h&oacute;a, với c&ocirc;ng dụng l&agrave;m đẹp tuyệt vời, tr&agrave; xanh c&ograve;n gi&uacute;p bạn giải kh&aacute;t, tỉnh t&aacute;o trong những ng&agrave;y h&egrave; n&oacute;ng nực mệt mỏi. Tr&agrave; xanh Th&aacute;i Lan với khối lượng 200g được sản xuất tại Th&aacute;i Lan theo ti&ecirc;u chuẩn c&ocirc;ng nghệ cao ti&ecirc;n tiến, được sản xuất từ những b&uacute;p tr&agrave; xanh tươi, nguy&ecirc;n chất qua những kh&acirc;u chọn lựa cẩn thận.<br />\n<br />\nTr&agrave; sữa th&aacute;i xanh thơm vị tr&agrave;, vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\n<br />\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\n<br />\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\n<br />\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\n<br />\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\n<br />\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\n<br />\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute; <img alt=\"heart\" src=\"http://localhost/new-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />)', '', '2020-05-06', 'sheezy01', '2022-11-28 15:30:40', 115, 1, 12, 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img1.png', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img2.png', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img3.png', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img4.png', 'quan-hang-hieu'),
(3, 'Trà Sữa Truyền Thống (Chân Châu, Pudding) 15k, 20k', 3, 1, 1, 'Trà sữa thuyền thống thơm vị trà, vị sữa beo béo..kèm thạch giòn giòn, pudding, chân châu nhai mềm dai hấp dẫn.', 15000, 'Xám nâu', 'Trà, sữa béo, thạch ,pudding, chân châu', 'Vừa - 15k, Lớn - 20k', 'Tr&agrave; sữa l&agrave; thức uống giải kh&aacute;t đ&atilde; được Việt Nam du nhập khoảng 10 năm về trước, từ b&eacute; ch&uacute;ng ta đ&atilde; quen với một ly tr&agrave; sữa thạch tr&aacute;i c&acirc;y với đủ loại m&agrave;u sắc hoặc l&agrave; đủ m&ugrave;i vị.&nbsp;<br />\r\n<br />\r\nTr&agrave; sữa thuyền thống thơm vị tr&agrave;, vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\r\n<br />\r\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n<br />\r\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n<br />\r\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n<br />\r\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n<br />\r\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n<br />\r\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-18', 'sheezy01', '2022-11-28 20:36:24', 33, 1, 0, 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img1.png', 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img2.png', '', '', 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k'),
(4, 'Trà Sữa Vị Dâu (Chân Châu, Pudding) 15k, 20k', 1, 1, 1, 'Trà Sữa Vị Dâu (Chân Châu, Pudding)  loại thức uống quen thuộc ngon đậm đà...', 15000, 'Hồng', 'Vị dâu , sữa béo, thạch ,pudding, chân châu...', 'Vừa - 15k, Lớn - 20k', 'Với sự ngọt ng&agrave;o được chiết xuất từ những tr&aacute;i&nbsp;<strong>d&acirc;u t&acirc;y</strong>&nbsp;thơm ngon đ&atilde; cho ra đời một loại<strong>&nbsp;tr&agrave; sữa</strong>&nbsp;hấp dẫn với trẻ nhỏ bởi m&agrave;u sắc được h&ograve;a quyện một c&aacute;ch dễ chịu. M&agrave;u hồng v&agrave; vị ngọt lu&ocirc;n l&agrave; những điểm ưu ti&ecirc;n h&agrave;ng đầu m&agrave; mọi người th&iacute;ch nhất, cộng v&agrave;o đ&oacute; l&agrave; hương thơm của loại quả kỳ diệu n&agrave;y đ&atilde; l&agrave;m m&ecirc; mẩn kh&ocirc;ng chỉ ri&ecirc;ng với c&aacute;c em nhỏ m&agrave; ngay đối với người lớn cũng bị ảnh hưởng theo.<br />\r\n<br />\r\nTr&agrave; sữa vị d&acirc;u thơm vị tr&agrave;, vị sữa beo b&eacute;o..k&egrave;m thạch gi&ograve;n gi&ograve;n, pudding, ch&acirc;n ch&acirc;u nhai mềm dai hấp dẫn.<br />\r\n<br />\r\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n<br />\r\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n<br />\r\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />\r\n<br />\r\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n<br />\r\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n<br />\r\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch hoặc nhiều ch&acirc;n ch&acirc;u( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-19', 'sheezy01', '2022-11-28 15:55:06', 212, 1, 7, 'tra-sua-vi-dau-chan-chau-pudding-15k-20k-4img1.jpg', 'tra-sua-vi-dau-chan-chau-pudding-15k-20k-4img2.jpg', 'tra-sua-vi-dau-chan-chau-pudding-15k-20k-4img3.jpg', '', 'tra-sua-vi-dau-chan-chau-pudding-15k-20k'),
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
(27, 'Pudding thạch nhiều loại khác nhau ngon mát', 2, 1, 0, 'Pudding uống với trà sữa là 1 món tráng miệng cực kì ngon và rất hấp dẫn, được rất nhiều người ưa thích đặc biết nhất là giới trẻ.', 4000, 'Nhiều màu lựa chọn', 'Nước, đường, Gelatine, Siro,....', 'Hũ đựng', '<u><strong>Th&ocirc;ng tin</strong></u>:<br />\r\n\nPudding l&agrave; một loại b&aacute;nh tr&aacute;ng miệng c&oacute; nguồn gốc từ nước Ph&aacute;p. Đ<em>ược du nhập v&agrave;o Việt Nam c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u.</em><br />\r\n\n<br />\r\n\nNg&agrave;y nay, m&oacute;n b&aacute;nh pudding được biến tấu với nhiều c&ocirc;ng thức, nguy&ecirc;n liệu kh&aacute;c nhau gi&uacute;p ch&uacute;ng ta c&oacute; th&ecirc;m nhiều lựa chọn cho m&oacute;n tr&aacute;ng miệng hấp dẫn n&agrave;y. T&ugrave;y v&agrave;o nguy&ecirc;n liệu sử dụng m&agrave; b&aacute;nh pudding c&oacute; những m&agrave;u sắc kh&aacute;c nhau. M&agrave;u xanh từ tr&agrave; xanh, m&agrave;u v&agrave;ng từ trứng hoặc xo&agrave;i ch&iacute;n, m&agrave;u n&acirc;u từ s&ocirc; c&ocirc; la,&hellip;<br />\r\n\n<br />\r\n\nB&ecirc;n cạnh việc sử dụng như một m&oacute;n tr&aacute;ng miệng, b&aacute;nh pudding c&ograve;n được sử dụng l&agrave;m topping cho một số m&oacute;n. Phổ biến nhất l&agrave; cho v&agrave;o tr&agrave; sữa, d&ugrave;ng c&ugrave;ng c&aacute;c loại thạch hoặc ăn k&egrave;m với tr&aacute;i c&acirc;y,&hellip;<br />\r\n\n<br />\r\n\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />\r\n\n<br />\r\n\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />\r\n\n<br />\r\n\n<u><strong>HDSD</strong></u>: D&ugrave;ng ngay<br />\r\n\n<br />\r\n\n<u><strong>Bảo quản</strong></u>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\n\n<br />\r\n\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />\r\n\n<br />\r\n\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều thạch, k&iacute;ch cỡ v&agrave; gi&aacute; kh&aacute;c nhau khi đặt h&agrave;ng n&egrave;( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)', '', '2020-03-27', 'Tân Hồng ', '2020-04-11 21:35:34', 57, 0, 0, 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img1.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img2.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img3.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat-27img4.jpg', 'pudding-thach-nhieu-loai-khac-nhau-ngon-mat');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL,
  `supply_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `supply_name`, `logo`) VALUES
(1, 'Việt Nam', ''),
(1, 'Việt Nam', ''),
(1, 'Việt Nam', ''),
(1, 'Việt Nam', ''),
(1, 'Việt Nam', '');

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
  `createDate` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `banned` date DEFAULT NULL,
  `editTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `dob`, `createDate`, `username`, `fullname`, `email`, `phone_num`, `address`, `password`, `avatar`, `role`, `banned`, `editTime`) VALUES
(220001, NULL, '2022-11-26', 'sheezy01', 'Hồ Hữu An', 'hha2602@gmail.com', '908113114', '108 Đường số 1,Cư xá Phú Lâm C mở rộng, Phường An Lạc A, Quận Bình Tân, Thành phố Hồ Chí Minh', 'hha123', 'avatar-user220001-sheezy01.jpg', 1, '2022-11-24', '2022-11-29 20:29:57'),
(220003, NULL, '2022-11-26', 'lwtprettylaugh', 'Đinh Tấn Dũng Nè', 'dtd1201@gmail.com', '9026154822222', '123 Bạch Đằng, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh', 'd0@nx3mp@w0rd', 'avatar-user220003-lwtprettylaugh.png', 0, '0000-00-00', '2022-11-28 20:27:13'),
(220006, '2000-06-19', '2022-11-26', 'monroevicious', 'Lê Tuấn Tú', 'ltt1906@gmail.com', '908154875', '343/18K Tô Hiến Thành, Phường 12, Quận 10, Thành phố Hồ Chí Minh', 'zcnu2494', 'avatar-user220006-monroevicious.png', 0, '2023-01-07', '2022-11-28 20:28:02'),
(220008, '2002-08-09', '2022-11-26', 'RobinMeske', 'Nguyễn Phương Mai', 'npm0908@gmail.com', '909484134', '132A Thân Nhân Trung, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh', 'npmireact', NULL, 0, '0000-00-00', '2022-11-27 21:45:23'),
(220011, '1997-12-25', '2022-11-26', 'BlissfulEats', 'Phạm Thiên An', 'kathleen97@gmail.com', '982561254', '207/18 Bạch Đằng, Phường 15, Quận Bình Thạnh, Thành phố Hồ Chí Minh', 'avas1312', NULL, 0, '2022-12-10', '2022-11-29 20:33:49'),
(220012, '2004-08-03', '2022-11-26', 'eliseotecleo', 'Trần Ngọc Bảo', 'baobaosyd@gmail.com', '905123345', '256/26/11A Phan Huy Ích, Phường 12, Quận Gò Vấp, Thành phố Hồ Chí Minh', 'sdny24214', NULL, 0, NULL, '0000-00-00 00:00:00'),
(220013, '2000-10-04', '2022-11-26', 'kaylanabrewer_', 'Nguyễn Thanh Danh', 'danh.nthaha@gmai.com', '907070705', '911/7/25 B Tỉnh Lộ 43, Khu phố 2, Phường Bình Chiểu, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', '@jkfasb21', NULL, 0, NULL, '0000-00-00 00:00:00'),
(220014, '2001-12-12', '2022-11-26', 'americacredit', 'Nguyễn Trần Quốc Duy', 'aramurf@gmail.com', '984134875', 'Số 40, Đường 3C, Khu Dân Cư 13C Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Thành phố Hồ Chí Minh', 'nabjf@ba', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_types`
--
ALTER TABLE `blog_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_user`
--
ALTER TABLE `cart_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`user_id`),
  ADD KEY `fk_id_product` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supply_id` (`supply_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_product` (`product_id`),
  ADD KEY `fk_id_user` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `fk_order_id` (`order_id`);

--
-- Indexes for table `menu_footers`
--
ALTER TABLE `menu_footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`user_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_id` (`order_id`),
  ADD KEY `fk_id_product` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `fk_supply_id` (`supply_id`),
  ADD KEY `fk_type_id` (`type_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=888;

--
-- AUTO_INCREMENT for table `blog_types`
--
ALTER TABLE `blog_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `menu_footers`
--
ALTER TABLE `menu_footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
-- Constraints for dumped tables
--

--
-- Constraints for table `postcomment`
--
ALTER TABLE `postcomment`
  ADD CONSTRAINT `postcomment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `postcomment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
