-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 04:18 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `main_pic` varchar(1000) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `para1` varchar(1000) NOT NULL,
  `sub_pic` varchar(1000) NOT NULL,
  `para2` varchar(1000) NOT NULL,
  `sub_pic_quote` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`main_pic`, `type`, `title`, `date`, `para1`, `sub_pic`, `para2`, `sub_pic_quote`, `id`, `publish`) VALUES
('ờm', 0, '', '0000-00-00', '', '', '', '', 0, 0),
('./resources/posts-resource/images/pic1.jpg', 1, 'We Eat and Drink All Night', '0000-00-00', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen.\r\n\r\nShe packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.', './resources/posts-resource/images/sub_pic_1.jpg', 'She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.', 'This is a sweet image caption. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia', 880, 1),
('./resources/posts-resource/images/pic2.jpg', 1, 'Beef Steak at Guatian Restaurant', '0000-00-00', 'Nhà hàng là nơi duy nhất ở TP.HCM tự thực hiện quá trình dry-aged khép kín và nướng thịt trực tiếp trên lò than. Với kỹ thuật này, miếng bò sẽ giữ trọn vẹn hương vị tinh túy, mang chất lượng tuyệt hảo nhất. Đây cũng trở thành một trong những lý do khiến đĩa steak ở đây có giá thành đắt đỏ bởi quá trình chế biến kì công. Không chỉ tập chung vào chất lượng món ăn, nhà hàng còn chú trọng đến không gian, phong cách phục vụ để thực khách cảm thấy xứng đáng với số tiền mình đã bỏ ra.', './resources/posts-resource/images/sub_pic_2.jpg', 'Nhà hàng là nơi duy nhất ở TP.HCM tự thực hiện quá trình dry-aged khép kín và nướng thịt trực tiếp trên lò than. Với kỹ thuật này, miếng bò sẽ giữ trọn vẹn hương vị tinh túy, mang chất lượng tuyệt hảo nhất. Đây cũng trở thành một trong những lý do khiến đĩa steak ở đây có giá thành đắt đỏ bởi quá trình chế biến kì công. Không chỉ tập chung vào chất lượng món ăn, nhà hàng còn chú trọng đến không gian, phong cách phục vụ để thực khách cảm thấy xứng đáng với số tiền mình đã bỏ ra.', 'Cách chế biến bò đúng chuẩn theo yêu cầu và nêm nếm gia vị vừa ăn, side dishes cũng rất ngon, tuy nhiên sốt của rocket salad hơi đậm', 881, 1),
('./resources/posts-resource/images/pic3.jpg', 2, 'An Overlooking River at the East Cost', '0000-00-00', 'Lê Phương Tùng, 21 tuổi, du khách tới suối Tiên chơi, cho biết đây là một địa điểm đẹp, lượng khách tham quan chưa nhiều và ồ ạt như nơi khác nên giữ được vẻ hoang sơ. Điều khiến chàng trai người Huế ấn tượng là địa điểm này tích hợp được nhiều thứ để trải nghiệm trong ngày, như đi thuyền, tắm suối, ăn uống bên núi rừng. Anh cho biết, suối khá sâu, ước tính hơn 2 m nên cần lưu ý lúc tắm. Tại đây có dịch vụ cho thuê áo phao. \"Nước suối rất trong và mát. Khu vực tắm được rào lại nên rất an toàn. Cảnh thiên nhiên đồi núi rất đẹp và hùng vĩ nên lên ngồi ngắm cảnh thôi cũng hết ngày được\", Tùng chia sẻ.', './resources/posts-resource/images/sub_pic_3.jpg', 'Dòng nước ở đây xanh mát chảy từ thượng nguồn. Người dân địa phương cho rằng ngày xưa, có một loài hoa rừng mọc bên bờ suối, đến mùa hoa nở trải dài trên triền đá nhìn như làn tóc tiên nữ nên mọi người từ đó quen gọi là suối Tiên. Giữa các nóng gay gắt của mùa hè trên dải đất miền Trung, suối Tiên là nơi phù hợp cho những du khách muốn thư giãn giữa không khí trong lành, tắm nước mát lạnh.', '\r\nDu lịchTư vấnĐi đâuThứ ba, 13/7/2021, 20:48 (GMT+7)\r\nDòng suối mát ẩn mình dưới chân núi Bạch Mã\r\nTHỪA THIÊN - HUẾSuối Tiên được ví như \'nàng tiên giữa núi rừng\', hút khách vào mùa hè nhờ dòng nước mát lạnh.\r\n\r\nSuối Tiên nằm dưới chân dãy Bạch Mã, nổi tiếng với dòng nước mát lạnh, thích hợp để tắm và tham quan vào mùa hè. Đây là một hệ thống tập hợp nhiều hồ, suối, thuộc xã Lộc Thủy, huyện Phú Lộc. Địa điểm du lịch này được đánh giá là vẫn còn hoang sơ do ẩn sâu trong hồ Thủy Yên, du khách muốn đến tham quan phải đi thuyền băng qua hồ để đến.\r\n\r\nSuối Tiên nằm dưới chân núi Bạch Mã hùng vỹ. Khách sẽ được chở bằng thuyền để tới suối với giá vé là 30.000 đồng/khách/khứ hồi. Ảnh: Lê Phương Tùng\r\nSuối Tiên nằm dưới chân núi Bạch Mã hùng vỹ. Khách sẽ được chở bằng thuyền để tới suối với giá vé là 30.000 đồng/khách/khứ hồi.', 882, 1),
('./resources/posts-resource/images/pic4.jpg', 2, 'A Wildlife In The Mountain of India', '0000-00-00', 'The wildlife in the western part of India is rich and diverse. Western India is teeming with flora and fauna and boasts of a number of spectacular wildlife sanctuaries and national parks that abound in Asiatic Lions, Blackbucks, Indian Wild Ass, Olive Ridley Turtles, Eels, Wolves and Desert Cats. Western India also has marine wildlife sanctuaries that are actively involved in the conservation of endangered Ridley turtles, shrimps, sponges, green sea urchins and dolphins.\r\n\r\nSome of the important wildlife sanctuaries and national parks in the Western part of the country are Gir National Park in Gujarat, Ranthambore National Park in Rajasthan, Bondla Wildlife Sanctuary in Goa, Bhagwan Mahavir Wildlife Sanctuary in Goa etc.', './resources/posts-resource/images/sub_pic_4.jpg', 'The wildlife in the western part of India is rich and diverse. Western India is teeming with flora and fauna and boasts of a number of spectacular wildlife sanctuaries and national parks that abound in Asiatic Lions, Blackbucks, Indian Wild Ass, Olive Ridley Turtles, Eels, Wolves and Desert Cats. Western India also has marine wildlife sanctuaries that are actively involved in the conservation of endangered Ridley turtles, shrimps, sponges, green sea urchins and dolphins.\r\n\r\nSome of the important wildlife sanctuaries and national parks in the Western part of the country are Gir National Park in Gujarat, Ranthambore National Park in Rajasthan, Bondla Wildlife Sanctuary in Goa, Bhagwan Mahavir Wildlife Sanctuary in Goa etc.', 'Disclaimer: This post may contain affiliate links. All hosted affiliate links follow our editorial policies.', 883, 1),
('./resources/posts-resource/images/pic5.jpg', 3, 'We Took A Photo', '0000-00-00', 'Boasting some 2,000 miles of coastline plus a handful of renowned island destinations, Vietnam naturally has no shortage of beautiful beaches. Sure, you could just stick to cities, what with the colonial architecture and history of Hanoi, the imperial charms of Hue, and the bustling nightlife of Saigon. But you\'d be remiss to plan a Vietnamese vacation without hitting the water at least once—plus, most cities are just a day-trip from the coast, if not on the coast already.', './resources/posts-resource/images/sub_pic_5.jpg', 'To help you decide, we\'ve put together a guide to the most notable beach destinations in Vietnam. From the shores of the UNESCO-designated Ha Long Bay to the rolling dunes of Mui Ne and the island getaways of Con Dao and Phu Quoc, here are the best places to enjoy Vietnam\'s surf, sun, and sand.', 'A one-time French colonial port on the central coast, Vietnam\'s third-largest city is also home to some of the country\'s best beaches.', 884, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
