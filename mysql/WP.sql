CREATE TABLE `Admin` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `dob` date,
  `username` varchar(255),
  `fullname` varchar(255),
  `email` varchar(255),
  `phone_num` varchar(255),
  `address` varchar(255),
  `password` varchar(255)
);

CREATE TABLE `User` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `dob` date,
  `username` varchar(255),
  `fullname` varchar(255),
  `email` varchar(255),
  `phone_num` varchar(255),
  `address` varchar(255),
  `password` varchar(255),
  `deleted` int
);

CREATE TABLE `Avatar` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `path` varchar(255)
);

CREATE TABLE `Category` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `Product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_id` int,
  `title` varchar(255),
  `price` int,
  `color` varchar(255),
  `discount` int,
  `desciprtion` longtext,
  `amount` int,
  `created_at` datetime,
  `updated_at` datetime,
  `thumbnail` varchar(255),
  `deleted` int
);

CREATE TABLE `Gallery` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `product_id` int,
  `thumbnail` varchar(255)
);

CREATE TABLE `Feedback` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `note` varchar(255),
  `product_id` int
);

CREATE TABLE `Order` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `note` varchar(255),
  `order_date` datetime,
  `total` int
);

CREATE TABLE `OrderDetails` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `order_id` int,
  `product_id` int,
  `price` int,
  `amount` int,
  `total` int
);

CREATE TABLE `ProductAttribute` (
  `product_id` int,
  `size` int,
  `amount` int
);

CREATE TABLE `ProductTag` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `product_id` int,
  `tag_id` int
);

CREATE TABLE `Tag` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255)
);

CREATE TABLE `Transaction` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `order_id` int,
  `status` int,
  `code` varchar(255),
  `type` varchar(255),
  `mode` varchar(255),
  `content` varchar(255),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Promotion` (
  `id` int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE `Voucher` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `promotion_id` int,
  `code` varchar(255),
  `discount` int,
  `amount` int
);

CREATE TABLE `VoucherVip` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `promotion_id` int,
  `user_id` int,
  `code` varchar(255),
  `discount` int
);

CREATE TABLE `Post` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `content` longtext,
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `PostComment` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `post_id` int,
  `user_id` int,
  `content` longtext,
  `created_at` datetime
);

CREATE TABLE `Size` (
  `id` int,
  `size` varchar(255),
  `amount` int,
  PRIMARY KEY (`id`, `size`)
);


-- Insert
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220001,'2001-02-26','sheezy0','Hồ Hữu An','hha2602@gmail.com',0908113114,'108 Đường số 1,Cư xá Phú Lâm C mở rộng, Phường An Lạc A, Quận Bình Tân, Thành phố Hồ Chí Minh','hha123');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220002,'1994-08-15','DavdBurnett','Đỗ Thành Công','dtc1508@gmail.com',0907153154,'106 Huỳnh Văn Trí, Tổ 12, Ấp 4, Xã Bình Chánh, Huyện Bình Chánh, Thành phố Hồ Chí Minh','dtc16892');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220003,'2002-01-12','lwtprettylaugh','Đinh Tấn Dũng','dtd1201@gmail.com',0902615482,'123 Bạch Đằng, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh','d0@nx3mp@w0rd');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220004,'1997-04-26','douggarland','Trần Mai Thi','tmt2604@gmail.com',0908154134,'389/22 Lê Văn Qưới, Phường Bình Trị Đông, Quận Bình Tân, Thành phố Hồ Chí Minh','tmt12344');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220005,'2002-08-30','WilfordGemma','Huỳnh Thiên Kim','htk3008@gmail.com',0906451248,'224 Phan Anh, Phường Tân Thới Hoà, Quận Tân Phú, Thành phố Hồ Chí Minh','htk120384');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220006,'2000-06-19','monroevicious','Lê Tuấn Tú','ltt1906@gmail.com',0908154875,'343/18K Tô Hiến Thành, Phường 12, Quận 10, Thành phố Hồ Chí Minh','zcnu2494');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220007,'1998-01-21','Shutterstock','Nguyễn Văn Hùng','nvh2101@gmail.com',0908131484,'764/23 Phạm Văn Chiêu, Phường 13, Quận Gò Vấp, Thành phố Hồ Chí Minh','nvhung1289');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220008,'2002-08-09','RobinMeske','Nguyễn Phương Mai','npm0908@gmail.com',0909484134,'132A Thân Nhân Trung, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh','npmireact');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220009,'2003-12-15','pigzilla','Hồ Danh Giá','hdg1512@gmail.com',0907485618,'54 Phạm Ngọc Thạch, Phường Võ Thị Sáu, Quận 3, Thành phố Hồ Chí Minh','hdg210421');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220010,'1994-10-14','GabrieleNeher','Trần Việt Sang','tvs1410@gmail.com',0948151488,'225 Nguyễn Xí, Phường 5, Quận Bình Thạnh, Thành phố Hồ Chí Minh','tvs8910');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220011,'1997-12-25','BlissfulEats','Phạm Thiên An','kathleen97@gmail.com',0982561254,'207/18 Bạch Đằng, Phường 15, Quận Bình Thạnh, Thành phố Hồ Chí Minh','avas1312');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220012,'2004-08-03','eliseotecleo','Trần Ngọc Bảo','baobaosyd@gmail.com',0905123345,'256/26/11A Phan Huy Ích, Phường 12, Quận Gò Vấp, Thành phố Hồ Chí Minh','sdny24214');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220013,'2000-10-04','kaylanabrewer_','Nguyễn Thanh Danh','danh.nthaha@gmai.com',0907070705,'911/7/25 B Tỉnh Lộ 43, Khu phố 2, Phường Bình Chiểu, Thành phố Thủ Đức, Thành phố Hồ Chí Minh','@jkfasb21');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220014,'2001-12-12','americacredit','Nguyễn Trần Quốc Duy','aramurf@gmail.com',0984134875,'Số 40, Đường 3C, Khu Dân Cư 13C Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Thành phố Hồ Chí Minh','nabjf@ba');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220015,'2001-11-27','cheyflan','Nguyễn Vũ Anh Thư','vuanhthu.ng2711@gmail.com',0912487536,'266/8/5 Phú Thọ Hòa, Phường Phú Thọ Hoà, Quận Tân Phú, Thành phố Hồ Chí Minh','fnafi147542');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220016,'1998-02-14','Ayu7sith4','Nguyễn Tiến Khoa','ntkhoa1402@gmail.com',0987654321,'125 Đường D4, Xã Phước Lộc, Huyện Nhà Bè, Thành phố Hồ Chí Minh','12rwqaf12');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220017,'1996-04-12','Toucaan_Samm','Huỳnh Xuân Tín','tinbestyasuo@gmail.com',0905219413,'10 Đường G, Khu phố Mỹ Phú 2, Phường Tân Phú, Quận 7, Thành phố Hồ Chí Minh','fg1124fasf');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220018,'1999-08-31','SSmyth2010','Vũ Trung Kiên','kienrankbac@gmail.com',0986547135,'116 Nguyễn Văn Thủ, Phường Đa Kao, Quận 1, Thành phố Hồ Chí Minh','agsg212@');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220019,'1996-01-20','DarkToonsGaming','Trần Kiên Hưng','tkhung2001@gmail.com',0978451874,'54 đường 475, Phường Phước Long B, Thành phố Thủ Đức, Thành phố Hồ Chí Minh','Gbs@nk214');
INSERT INTO user(id,dob,username,fullname,email,phone_num,address,password) VALUES (220020,'2002-11-21','GourlayLynn','Đặng Huyền Trân','tranhyoga@gmail.com',0965104584,'164/27 Đường số 20, Phường 5, Quận Gò Vấp, Thành phố Hồ Chí Minh','124@mkafE');



ALTER TABLE `Product` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Feedback` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

ALTER TABLE `Avatar` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

ALTER TABLE `Feedback` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Order` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

ALTER TABLE `OrderDetails` ADD FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`);

ALTER TABLE `OrderDetails` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Gallery` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `ProductAttribute` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `ProductTag` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `ProductTag` ADD FOREIGN KEY (`tag_id`) REFERENCES `Tag` (`id`);

ALTER TABLE `Size` ADD FOREIGN KEY (`id`) REFERENCES `Product` (`id`);

ALTER TABLE `Transaction` ADD FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`);

ALTER TABLE `Transaction` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

ALTER TABLE `Voucher` ADD FOREIGN KEY (`promotion_id`) REFERENCES `Promotion` (`id`);

ALTER TABLE `VoucherVip` ADD FOREIGN KEY (`promotion_id`) REFERENCES `Promotion` (`id`);

ALTER TABLE `VoucherVip` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

ALTER TABLE `PostComment` ADD FOREIGN KEY (`post_id`) REFERENCES `Post` (`id`);

ALTER TABLE `PostComment` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);
