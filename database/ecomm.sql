-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2019 at 01:30 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+03:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 10, 1),
(2, 9, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Jeans', 'jeans'),
(2, 'Undergarments', 'under-garments'),
(3, 'Tops', 'tops'),
(4, 'Hoodies', 'hoodies'),
(5, 'Suits', 'suits');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 4, 'Bape hoodie', '<p>limited version of the latest Bape hoodie collection. at sh1200, it qualifies to be the bargain of the year! /.</p>\r\n', 'heavy winter hoodie', 1200, 'bape_hoodie.jpg', '2018-07-09', 4),
(2, 4, 'Purple Princess', '<p>Cold winters? get the purple princess by bape for that special lady in your life at only 1350! only at our stores.</p>', 'purple-princess', 1350, 'bathing_ape.jpeg', '2019-03-18', 3),
(3, 3, '\r\nGiovanni queens', '<p>Stay simple with this cool giovanni top...</p>', 'black-top', 150, 'black_top.jpg', '2018-05-12', 6),
(4, 1, 'Black unisex jeans', '<p>Rock your casual with some clean jeans!</p>', 'black-unisex', 1800, 'black_unisex.jpeg', '2018-05-10', 13),
(5, 1, 'bulk sale', '<p>The more the orders, the better our discounts. for every five trousers, get 20% discount. welcome!</p>\r\n', 'bulk-jeans', 8100, 'bulk_jeans_sale.jpeg', '2018-07-09', 32),
(6, 5, 'casual_suits', '<p>get some casual suits for your weddings and dinner dates. Get them looking with this new levi\'s edition </p>\r\n', 'dell-inspiron-15-5000-15', 3000, 'casual_suits.jpeg', '2019-03-18', 1),
(7, 3, 'crop top', '<p>Rock some sexy crop tops while chilling at home, to your gym or outs with your girlfriends. Literary fits for all events</p>', 'dark-gray-crop', 200, 'crop_1.jpeg', '2019-03-18', 1),
(8, 1, 'cuffed jeans', '<p>Enhance your casual look with some cuffed jeans at unbelievable prices.</p>', 'cuffed_jeans', 1500, 'CUFFED-JEANS_for_couples.jpeg', '2018-12-28', 11),
(9, 4, 'custom print hoodie', 'customed hoodie', 'custom graphic print', 599.99, 'custom_print.jpeg', '0000-00-00', 0),
(10, 4, 'custom wolf', 'customed wolf printed hoodie', 'wolf hoodie', 599.99, 'custom_wolf.jpg', '2019-03-18', 1),
(11, 4, 'denim jacket', 'denim blue jacket no zip', 'denim blue jacket', 489.98, 'denim_jacket_kids.jpeg', '2018-05-12', 1),
(12, 1, 'high waist', 'denim high waist jeans', 'high waist blue jeans', 999.99, 'fiiting denimjeans.jpg', '2018-05-12', 3),
(13, 5, 'formal suit', 'formal 3 piece black suite\r\n', 'black 3-piece suite', 2799, 'formal_suit.jpeg', '2019-03-18', 1),
(14, 2, 'gucci undergarments', '\r\ngucci grey-green undergarments ', 'gucci bra', 899.99, 'gucci_bra.jpg', '2018-05-10', 13),
(15, 4, 'couples hood', 'couple hodies', 'couple hoodies', 999.99, 'hood_couples.jpg', '2019-03-18', 1),
(16, 1, 'male denim prada jeans', '\r\nmale denim blue trouser', 'blue prada denim', 649.99, 'male_denim_prada.jpeg', '2018-05-10', 2),
(17, 3, 'givenchy T-shirt', '\r\nmen givenchy t-shirts', '', 499, 'men_givenchy.jpeg', '2018-05-12', 1),
(18, 1, 'mummy jeans', 'non_stretch mummy jeans', 'non stretch jeans', 999.99, 'non_stretch_mom.jpeg', '2018-05-12', 2),
(19, 4, 'over size denim jacket', '\r\nover sized unisex denim jacket', 'oversized unisex denim jacket', 1499.99, 'oversize.jpeg', '2018-05-10', 1),
(20, 2, 'sports bra', 'female sports bra\r\n', 'female sports bra', 339, 'sports_bra1.jpg', '2018-05-12', 1),
(27, 3, 'summer vest', 'men summer vest\r\n', 'men summer vest', 999.99, 'summer_vest.jpg', '2018-07-09', 9),
(28, 5, 'tuxedo suit', 'tuxedo suit\r\n', 'tuxedo suit', 4999.99, 'tuxedo_suit.jpeg', '2018-12-28', 0),
(29, 5, 'vintage suit', 'vintage suit\r\n', 'new design vintage suits ', 6999.99, 'vintage_suit.jpeg', '2018-07-09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
