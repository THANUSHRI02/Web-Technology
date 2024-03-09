create database onlinecakeshop;
use onlinecakeshop;

CREATE TABLE `cake_shop_admin_registrations` (
  `admin_id` int NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
);

CREATE TABLE `cake_shop_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
);

INSERT INTO `cake_shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Cakes', '200731042405.jpg'),
(2, 'Pastries', '200731042031.jpeg'),
(3, 'Desserts', '200731042306.jpg'),
(4, 'Cookies', '200731042457.jpg');

CREATE TABLE `cake_shop_orders` (
  `orders_id` int NOT NULL,
  `users_id` int NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
);

CREATE TABLE `cake_shop_orders_detail` (
  `orders_detail_id` int NOT NULL,
  `orders_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL
);

CREATE TABLE `cake_shop_product` (
  `product_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
);

INSERT INTO `cake_shop_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'Black choco', 1, '500', 'This is cake made of pure chocolate.', '2007310437280.jpg, 2007310437281.jpg, 2007310437282.jpg'),
(2, 'Red velvet', 1, '500', 'This cake is inspired by red velvet.', '2007310439020.jpg, 2007310439021.jpg, 2007310439022.jpg'),
(3, 'Black forest', 1, '500', 'It is a simple black forest cake.', '2007310440210.jpg, 2007310440211.jpg, 2007310440212.jpg'),
(4, 'Oreo', 1, '500', 'Made out of oreo.', '2007310441020.jpg, 2007310441021.jpg, 2007310441022.jpg'),
(5, 'Black Choco', 2, '100', 'This is a black chocolate.', '2007310442250.jpg'),
(6, 'Strawberry', 2, '100', 'This is a strawberry.', '2007310443190.jpg'),
(7, 'Butterscotch', 2, '100', 'This is a butterscotch.', '2007310444030.jpg'),
(8, 'Choco chips', 4, '050', 'This a chocolate chip cookie.', '2007310445280.jpg'),
(9, 'Chocolate', 3, '025', 'Chocolate flavoured dessert.', '2007310446340.jpg'),
(10, 'Vanilla', 3, '025', 'Vanilla flavoured dessert.', '2007310448270.jpg');

CREATE TABLE `cake_shop_users_registrations` (
  `users_id` int NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
);

ALTER TABLE `cake_shop_admin_registrations` ADD PRIMARY KEY (`admin_id`);

ALTER TABLE `cake_shop_category` ADD PRIMARY KEY (`category_id`);

ALTER TABLE `cake_shop_orders` ADD PRIMARY KEY (`orders_id`);

ALTER TABLE `cake_shop_orders_detail` ADD PRIMARY KEY (`orders_detail_id`);

ALTER TABLE `cake_shop_product` ADD PRIMARY KEY (`product_id`);

ALTER TABLE `cake_shop_users_registrations` ADD PRIMARY KEY (`users_id`);

ALTER TABLE `cake_shop_admin_registrations` MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `cake_shop_category` MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `cake_shop_orders` MODIFY `orders_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `cake_shop_orders_detail` MODIFY `orders_detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `cake_shop_product` MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `cake_shop_users_registrations` MODIFY `users_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;