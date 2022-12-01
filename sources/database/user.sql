-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 03:23 PM
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
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `dob` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `banned` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `dob`, `username`, `fullname`, `email`, `phone_num`, `address`, `password`, `avatar`, `role`, `banned`) VALUES
(220001, '2001-02-26', 'sheezy0', 'Há»“ Há»¯u An', 'hha2602@gmail.com', '908113114', '108 ÄÆ°á»ng sá»‘ 1,CÆ° xÃ¡ PhÃº LÃ¢m C má»Ÿ rá»™ng, PhÆ°á»ng An Láº¡c A, Quáº­n BÃ¬nh TÃ¢n, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'hha123', 'admin.jpg', NULL, NULL),
(220002, '1994-08-15', 'DavdBurnett', 'Äá»— ThÃ nh CÃ´ng', 'dtc1508@gmail.com', '907153154', '106 Huá»³nh VÄƒn TrÃ­, Tá»• 12, áº¤p 4, XÃ£ BÃ¬nh ChÃ¡nh, Huyá»‡n BÃ¬nh ChÃ¡nh, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'dtc16892', NULL, NULL, NULL),
(220003, '2002-01-12', 'lwtprettylaugh', 'Äinh Táº¥n DÅ©ng', 'dtd1201@gmail.com', '902615482', '123 Báº¡ch Äáº±ng, PhÆ°á»ng 2, Quáº­n TÃ¢n BÃ¬nh, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'd0@nx3mp@w0rd', NULL, NULL, NULL),
(220004, '1997-04-26', 'douggarland', 'Tráº§n Mai Thi', 'tmt2604@gmail.com', '908154134', '389/22 LÃª VÄƒn QÆ°á»›i, PhÆ°á»ng BÃ¬nh Trá»‹ ÄÃ´ng, Quáº­n BÃ¬nh TÃ¢n, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'tmt12344', NULL, NULL, NULL),
(220005, '2002-08-30', 'WilfordGemma', 'Huá»³nh ThiÃªn Kim', 'htk3008@gmail.com', '906451248', '224 Phan Anh, PhÆ°á»ng TÃ¢n Thá»›i HoÃ , Quáº­n TÃ¢n PhÃº, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'htk120384', NULL, NULL, NULL),
(220006, '2000-06-19', 'monroevicious', 'LÃª Tuáº¥n TÃº', 'ltt1906@gmail.com', '908154875', '343/18K TÃ´ Hiáº¿n ThÃ nh, PhÆ°á»ng 12, Quáº­n 10, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'zcnu2494', NULL, NULL, NULL),
(220007, '1998-01-21', 'Shutterstock', 'Nguyá»…n VÄƒn HÃ¹ng', 'nvh2101@gmail.com', '908131484', '764/23 Pháº¡m VÄƒn ChiÃªu, PhÆ°á»ng 13, Quáº­n GÃ² Váº¥p, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'nvhung1289', NULL, NULL, NULL),
(220008, '2002-08-09', 'RobinMeske', 'Nguyá»…n PhÆ°Æ¡ng Mai', 'npm0908@gmail.com', '909484134', '132A ThÃ¢n NhÃ¢n Trung, PhÆ°á»ng 13, Quáº­n TÃ¢n BÃ¬nh, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'npmireact', NULL, NULL, NULL),
(220009, '2003-12-15', 'pigzilla', 'Há»“ Danh GiÃ¡', 'hdg1512@gmail.com', '907485618', '54 Pháº¡m Ngá»c Tháº¡ch, PhÆ°á»ng VÃµ Thá»‹ SÃ¡u, Quáº­n 3, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'hdg210421', NULL, NULL, NULL),
(220010, '1994-10-14', 'GabrieleNeher', 'Tráº§n Viá»‡t Sang', 'tvs1410@gmail.com', '948151488', '225 Nguyá»…n XÃ­, PhÆ°á»ng 5, Quáº­n BÃ¬nh Tháº¡nh, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'tvs8910', NULL, NULL, NULL),
(220011, '1997-12-25', 'BlissfulEats', 'PhaÌ£m ThiÃªn An', 'kathleen97@gmail.com', '982561254', '207/18 Báº¡ch Äáº±ng, PhÆ°á»ng 15, Quáº­n BÃ¬nh Tháº¡nh, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'avas1312', NULL, NULL, NULL),
(220012, '2004-08-03', 'eliseotecleo', 'Tráº§n Ngá»c Báº£o', 'baobaosyd@gmail.com', '905123345', '256/26/11A Phan Huy Ãch, PhÆ°á»ng 12, Quáº­n GÃ² Váº¥p, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'sdny24214', NULL, NULL, NULL),
(220013, '2000-10-04', 'kaylanabrewer_', 'Nguyá»…n Thanh Danh', 'danh.nthaha@gmai.com', '907070705', '911/7/25 B Tá»‰nh Lá»™ 43, Khu phá»‘ 2, PhÆ°á»ng BÃ¬nh Chiá»ƒu, ThÃ nh phá»‘ Thá»§ Äá»©c, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', '@jkfasb21', NULL, NULL, NULL),
(220014, '2001-12-12', 'americacredit', 'Nguyá»…n Tráº§n Quá»‘c Duy', 'aramurf@gmail.com', '984134875', 'Sá»‘ 40, ÄÆ°á»ng 3C, Khu DÃ¢n CÆ° 13C Nguyá»…n VÄƒn Linh, XÃ£ Phong PhÃº, Huyá»‡n BÃ¬nh ChÃ¡nh, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'nabjf@ba', NULL, NULL, NULL),
(220015, '2001-11-27', 'cheyflan', 'Nguyá»…n VÅ© Anh ThÆ°', 'vuanhthu.ng2711@gmail.com', '912487536', '266/8/5 PhÃº Thá» HÃ²a, PhÆ°á»ng PhÃº Thá» HoÃ , Quáº­n TÃ¢n PhÃº, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'fnafi147542', NULL, NULL, NULL),
(220016, '1998-02-14', 'Ayu7sith4', 'Nguyá»…n Tiáº¿n Khoa', 'ntkhoa1402@gmail.com', '987654321', '125 ÄÆ°á»ng D4, XÃ£ PhÆ°á»›c Lá»™c, Huyá»‡n NhÃ  BÃ¨, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', '12rwqaf12', NULL, NULL, NULL),
(220017, '1996-04-12', 'Toucaan_Samm', 'Huá»³nh XuÃ¢n TÃ­n', 'tinbestyasuo@gmail.com', '905219413', '10 ÄÆ°Æ¡Ì€ng G, Khu phÃ´Ì MyÌƒ PhuÌ 2, PhÆ°á»ng TÃ¢n PhÃº, Quáº­n 7, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'fg1124fasf', NULL, NULL, NULL),
(220018, '1999-08-31', 'SSmyth2010', 'VÅ© Trung KiÃªn', 'kienrankbac@gmail.com', '986547135', '116 Nguyá»…n VÄƒn Thá»§, PhÆ°á»ng Äa Kao, Quáº­n 1, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'agsg212@', NULL, NULL, NULL),
(220019, '1996-01-20', 'DarkToonsGaming', 'Tráº§n KiÃªn HÆ°ng', 'tkhung2001@gmail.com', '978451874', '54 Ä‘Æ°á»ng 475, PhÆ°á»ng PhÆ°á»›c Long B, ThÃ nh phá»‘ Thá»§ Äá»©c, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', 'Gbs@nk214', NULL, NULL, NULL),
(220020, '2002-11-21', 'GourlayLynn', 'Äáº·ng Huyá»n TrÃ¢n', 'tranhyoga@gmail.com', '965104584', '164/27 ÄÆ°á»ng sá»‘ 20, PhÆ°á»ng 5, Quáº­n GÃ² Váº¥p, ThÃ nh phá»‘ Há»“ ChÃ­ Minh', '124@mkafE', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220021;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
