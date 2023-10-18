-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2023 at 02:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superior_fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
                        `id` int(11) NOT NULL,
                        `product_id` int(11) NOT NULL,
                        `quantity` int(11) NOT NULL,
                        `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                        `cart_id` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
                             `id` int(11) NOT NULL,
                             `name` varchar(255) NOT NULL,
                             `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `image_url`) VALUES
                                                        (2, '12', '12'),
                                                        (5, '13', '13'),
                                                        (6, '13', '13'),
                                                        (7, '13', '13'),
                                                        (8, '13', '13'),
                                                        (9, '13', '13'),
                                                        (10, '13', '13'),
                                                        (11, '13', '13'),
                                                        (12, '13', '31'),
                                                        (13, '31', '31'),
                                                        (17, 'dddddd', 'https://pic2.zhimg.com/80/v2-d1836f66f021a10678099cedfa4d404d_720w.webp');

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
                                 `id` int(11) NOT NULL,
                                 `name` varchar(255) DEFAULT NULL,
                                 `email` varchar(255) NOT NULL,
                                 `phone` varchar(255) NOT NULL,
                                 `address` varchar(255) NOT NULL,
                                 `requirement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `name`, `email`, `phone`, `address`, `requirement`) VALUES
                                                                                           (1, 'da', '7620777@QQ.COM', '29809', 'sas', 'da'),
                                                                                           (2, 'adad', '7620777@QQ.COM', '29809', 'sas', 'dada'),
                                                                                           (3, 'weq', 'zlii0155@student.monash.edu', '115651', 'adad', 'jhihiuhiuhuih'),
                                                                                           (4, 'dada', 'lzy0311lzy@gmail.com', '1111', '11111', '11111'),
                                                                                           (5, 'da', '7620777@qq.com', '11', 'da', 'dasd'),
                                                                                           (6, '111', '7620777@qq.com', '222', 'asd', 'dasd'),
                                                                                           (9, 'sdfsdf', 'sdfsdf@qq.com', '13713747145', 'sdfsdfsdf', 'sdfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `content_blocks`
--

CREATE TABLE `content_blocks` (
                                  `id` int(11) NOT NULL,
                                  `parent` varchar(32) DEFAULT NULL,
                                  `hint` varchar(32) NOT NULL,
                                  `content_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `content_blocks`
--

INSERT INTO `content_blocks` (`id`, `parent`, `hint`, `content_value`) VALUES
                                                                           (1, 'site', 'logo', '/uploads/1b6c4998efbc1045452e47dc9e15dd99.jpg'),
                                                                           (2, 'site', 'name', 'Superior Fitness '),
                                                                           (3, 'contact', 'contact_email', 'Damien@monash.com'),
                                                                           (4, 'contact', 'contact_address', 'Monash clayton'),
                                                                           (5, 'contact', 'contact_phone', '+1 5589 55488 56'),
                                                                           (6, 'contact', 'contact_mobile', '+1 5589 55488 55'),
                                                                           (7, 'about', 'about_content', ' lovely');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_services`
--

CREATE TABLE `maintenance_services` (
                                        `id` int(11) NOT NULL,
                                        `user_id` int(11) DEFAULT NULL,
                                        `product_id` int(11) DEFAULT NULL,
                                        `date` date DEFAULT NULL,
                                        `email` varchar(255) DEFAULT NULL,
                                        `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
                          `id` int(11) NOT NULL,
                          `user_id` int(11) DEFAULT NULL,
                          `order_date` datetime NOT NULL DEFAULT current_timestamp(),
                          `order_amount` decimal(6,2) NOT NULL,
                          `order_status` enum('Processing','Processed','Shipped') NOT NULL,
                          `order_no` varchar(20) DEFAULT NULL,
                          `installation_services` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_amount`, `order_status`, `order_no`, `installation_services`) VALUES
                                                                                                                              (37, 12, '2023-10-03 19:27:40', 1111.00, 'Processing', '2023100343762', 1),
                                                                                                                              (38, 12, '2023-10-03 20:06:17', 1111.00, 'Processing', '2023100357752', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
                                 `id` int(11) NOT NULL,
                                 `order_id` int(11) DEFAULT NULL,
                                 `product_id` int(11) DEFAULT NULL,
                                 `num` int(11) DEFAULT NULL,
                                 `prod_name` varchar(255) DEFAULT NULL,
                                 `prod_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `num`, `prod_name`, `prod_price`) VALUES
                                                                                                   (46, 37, 18, 1, 'test', 1111.00),
                                                                                                   (47, 38, 18, 1, 'test', 1111.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
                            `id` int(11) NOT NULL,
                            `name` varchar(255) NOT NULL,
                            `price` decimal(10,0) NOT NULL,
                            `image_url` varchar(255) NOT NULL,
                            `category_id` int(11) NOT NULL,
                            `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image_url`, `category_id`, `quantity`) VALUES
    (18, 'test', 1111, '/uploads/364be8860e8d72b4358b5e88099a935a.png', 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `id` int(11) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `nonce` varchar(255) DEFAULT NULL,
                         `nonce_expiry` datetime DEFAULT NULL,
                         `created` datetime DEFAULT NULL,
                         `role` int(11) DEFAULT 2,
                         `first_name` varchar(255) DEFAULT NULL,
                         `last_name` varchar(255) DEFAULT NULL,
                         `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nonce`, `nonce_expiry`, `created`, `role`, `first_name`, `last_name`, `address`) VALUES
                                                                                                                                      (3, 'yjf020102@gmail.com', '$2y$10$VEmSt6ECrp4m75gz0ABwbem0sxwssBQnLbQoYBN.h2HOzdT30qlDi', NULL, NULL, '2023-09-04 07:51:55', NULL, NULL, NULL, ''),
                                                                                                                                      (4, 'selinaluo.au@gmail.com', '$2y$10$XfcN494HTFfrDXcee3CmqeA3pbOdLACuBxnGShbVv8IGgOIApHdE6', NULL, NULL, '2023-09-04 10:35:03', NULL, NULL, NULL, ''),
                                                                                                                                      (5, '111111@gmail.com', '$2y$10$sV9fRF870yx.YGTCqT3wEewp7NHcrw02JPldePwY1kjN43WjNVT5C', NULL, NULL, '2023-09-04 11:18:08', NULL, NULL, NULL, ''),
                                                                                                                                      (6, '1111111111111@gmail.com', '1111', NULL, NULL, '2023-09-05 08:24:31', NULL, NULL, NULL, ''),
                                                                                                                                      (7, '123@qq.com', '$2y$10$MW6Ldj2r1TeXmE4YNSA1mOMVuo22YSejL9XjFTIDiyiGR4taaTIdC', NULL, NULL, '2023-09-05 08:26:01', NULL, NULL, NULL, ''),
                                                                                                                                      (9, 'test@example.com', '$2y$10$v6svwpP94O0i4VXtJyRTF.t8xyoX23M3AYOEhkL/.tw46Cm51Q6zq', NULL, NULL, '2023-09-12 00:52:13', 1, 'cao', 'hui', ''),
                                                                                                                                      (11, '1234@qq.com', '$2y$10$keEj5qNBjLJG0ih7ywVhgeIMNFv.DBn3/QYyhSWJ6gC97Vik8UGqi', NULL, NULL, '2023-09-16 05:03:01', 2, '123', '123', ''),
                                                                                                                                      (12, 'admin@local.com', '$2y$10$F6jMgz/H.zF86sVEN4w7DOhMeg9Jl27FCVE91TVWMbE9E/kH29K9W', NULL, NULL, '2023-09-16 10:00:18', 1, 'damien', 'damien', '2daly'),
                                                                                                                                      (13, 'qq@qq.com', '$2y$10$X7LAUc792Gyt6KKYbwGKcOtCeZRZQO7ytQbTVvJXjvgrTORggxNDi', NULL, NULL, '2023-09-16 10:12:34', 2, 'zeyuan', 'li', ''),
                                                                                                                                      (14, 'fit2104@qq.com', '$2y$10$uvBhYhFn1KKybIHmcafXD.yCIMOMLnasGcKDfmmQV3Tv9t/syIbSK', NULL, NULL, '2023-09-16 11:26:39', 2, 'zeyuan', 'li', 'asasas'),
                                                                                                                                      (15, '1212@gmail.com', '$2y$10$dAM35oqQcJhQmJNqF6LWm.hqKARM7NvIun3EZ9uP5H1LCCLjBBDhC', NULL, NULL, '2023-09-16 12:09:47', 2, 'zeyuan', 'li', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
    ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
    ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `content_blocks`
--
ALTER TABLE `content_blocks`
    ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `maintenance_services`
--
ALTER TABLE `maintenance_services`
    ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users` (`user_id`) USING BTREE,
  ADD KEY `product` (`product_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user` (`user_id`) USING BTREE;

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
    ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_order_product_orders` (`order_id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
    ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cate` (`category_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `content_blocks`
--
ALTER TABLE `content_blocks`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `maintenance_services`
--
ALTER TABLE `maintenance_services`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenance_services`
--
ALTER TABLE `maintenance_services`
    ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
    ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
    ADD CONSTRAINT `FK_order_product_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
    ADD CONSTRAINT `cate` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
