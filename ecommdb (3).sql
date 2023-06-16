-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 03:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `size`, `qty`, `price`, `sub_total`, `date`, `timestamp`) VALUES
(1, '1', '2', 'S', '1', '20000.0', '20000.0', '2023-06-06', '2023-06-06 08:34:15'),
(2, '2', '2', 'S', '1', '20000.0', '20000.0', '2023-06-06', '2023-06-06 13:11:19'),
(3, '3', '2', 'M', '1', '20000.0', '20000.0', '2023-06-06', '2023-06-06 17:27:16'),
(4, '4', '2', 'S', '1', '20000.0', '20000.0', '2023-06-06', '2023-06-06 17:58:39'),
(5, '5', '1', 'M', '1', '10000.0', '10000.0', '2023-06-06', '2023-06-06 18:33:26'),
(6, '5', '4', 'L', '1', '15000.0', '15000.0', '2023-06-06', '2023-06-06 18:33:26'),
(7, '6', '1', 'M', '1', '10000.0', '10000.0', '2023-06-06', '2023-06-06 18:34:24'),
(8, '6', '4', 'L', '1', '15000.0', '15000.0', '2023-06-06', '2023-06-06 18:34:24'),
(9, '7', '2', 'XL', '1', '20000.0', '20000.0', '2023-06-06', '2023-06-06 18:56:49'),
(10, '8', '3', 'M', '1', '15000.0', '15000.0', '2023-06-07', '2023-06-07 07:00:35'),
(11, '8', '1', 'S', '1', '10000.0', '10000.0', '2023-06-07', '2023-06-07 07:00:35'),
(12, '9', '1', 's', '1', '3000', '3099', '2023-06-07', '2023-06-07 07:02:39'),
(13, '10', '2', 'S', '1', '20000.0', '20000.0', '2023-06-07', '2023-06-07 11:45:56'),
(14, '10', '2', 'S', '3', '20000.0', '60000.0', '2023-06-07', '2023-06-07 11:45:56'),
(15, '11', '1', 's', '1', '3000', '3099', '2023-06-07', '2023-06-07 12:44:13'),
(16, '12', '4', 'L', '6', '15000.0', '90000.0', '2023-06-07', '2023-06-07 17:22:54'),
(17, '13', '1', 's', '1', '3000', '3099', '2023-06-08', '2023-06-08 07:07:50'),
(18, '14', '1', 's', '1', '3000', '3099', '2023-06-08', '2023-06-08 08:16:35'),
(19, '15', '1', 's', '1', '3000', '3099', '2023-06-08', '2023-06-08 08:17:04'),
(20, '16', '2', 'S', '1', '20000.0', '20000.0', '2023-06-08', '2023-06-08 10:25:43'),
(21, '17', '6', 'M', '1', '11000.0', '11000.0', '2023-06-08', '2023-06-08 17:53:16'),
(22, '17', '7', 'S', '1', '1100.0', '1100.0', '2023-06-08', '2023-06-08 17:53:16'),
(23, '18', '6', 'M', '1', '11000.0', '11000.0', '2023-06-08', '2023-06-08 17:55:34'),
(24, '18', '7', 'S', '1', '1100.0', '1100.0', '2023-06-08', '2023-06-08 17:55:34'),
(25, '19', '4', 'XL', '1', '15000.0', '15000.0', '2023-06-08', '2023-06-08 17:58:22'),
(26, '20', '5', 'S', '1', '11000.0', '11000.0', '2023-06-08', '2023-06-08 18:00:39'),
(27, '21', '2', 'XL', '1', '20000.0', '20000.0', '2023-06-08', '2023-06-08 18:08:46'),
(28, '23', '2', 'S', '4', '20000.0', '80000.0', '2023-06-13', '2023-06-13 07:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sdesc` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `catname`, `image`, `sdesc`, `status`) VALUES
(1, 'Women', 'b8ff44b34939ed04188aa3afcfea13d9.jpg', 'woemenicon', 1),
(2, 'girls', 'Skirt with Simple  Top.jpg', 'vcsfgiuaw', 1),
(3, 'kids', 'red (1).jpg', ' chgeowq', 1),
(4, 'all', 'sliderpic.jpg', '', 1),
(8, 'zoha Abaya', 'red (1).jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `inviceno` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_address` text NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `order_tracking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `inviceno`, `user_name`, `useremail`, `user_phone`, `user_address`, `user_city`, `user_id`, `order_status`, `date`, `order_tracking_id`) VALUES
(1, '', 'zoha Usman ', '', '03073581051', 'people colony no I. cgit', '', 1, 'rejected', '', 0),
(2, '', 'Rooma ', '', '03462819', 'cgit', '', 1, 'accepted', '', 0),
(3, '', 'haira', '', '14589', 'lahore', '', 1, 'rejected', '', 0),
(4, '', 'Maha ', '', 'rusjvs', 'gsd', '', 1, 'accepted', '', 0),
(5, '', 'moon ', '', '030458016', 'qqhvvwko', '', 1, 'delivered', '', 0),
(6, '', 'moon ', '', '030458016', 'qqhvvwko', '', 1, 'accepted', '', 0),
(7, '', '', '', '', '', '', 1, 'accepted', '', 0),
(8, '', 'fatima', '', '123568904', 'Lahore Pakistan ', '', 1, 'delivered', '', 0),
(9, '', 'Zoha ', 'zoha1233@gmail.com', '487367239292', '123Address', 'fsd', 1, 'delivered', '', 0),
(10, '', '', '', '', '', '', 1, 'accepted', '', 0),
(11, '', 'Zoha ', 'zoha1233@gmail.com', '487367239292', '123Address', 'fsd', 1, 'delivered', '', 0),
(12, '', 'Hirà  Mubashir', 'Hira @ gemal d,ont come', '0344 7865286', 'Muhla fatha', '', 1, 'delivered', '', 0),
(13, '', 'Zoha ', 'zoha1233@gmail.com', '487367239292', '123Address', 'fsd', 1, 'delivered', '', 0),
(14, '', 'Zoha ', 'zoha1233@gmail.com', '487367239292', '123Address', 'fsd', 1, 'delivered', '', 0),
(15, '', 'Zoha ', 'zoha1233@gmail.com', '487367239292', '123Address', 'fsd', 1, 'delivered', '', 0),
(16, '', '', '', '', '', '', 3, 'rejected', '', 0),
(17, '', 'Zaina Imran ', 'zaina123@gmail.com', '1122', 'fsd pak', '', 3, 'delivered', '', 0),
(18, '', '', '', '', '', '', 1, 'rejected', '', 0),
(19, '', 'mariaB', 'b@gmail.com', '138z92590', 'czhswon', '', 1, 'accepted', '', 0),
(20, '', 'somiya', 'somiya@gmail.com', '02363901', 'karachi pk', '', 1, 'delivered', '', 0),
(21, '', 'pen ', 'pen@gmail.com', '1122334455', 'people ', '', 1, 'rejected', '', 0),
(22, '', '', '', '', '', '', 1, 'rejected', '', 0),
(23, '', 'maira ', 'zooooha18@gmail.com', '527190', 'duabskap', '', 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `catname` text NOT NULL,
  `pname` text NOT NULL,
  `pimage` text NOT NULL,
  `pdesc` text NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `quantity` text NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `catid`, `catname`, `pname`, `pimage`, `pdesc`, `price`, `status`, `stock`, `quantity`, `size`) VALUES
(1, 0, 'Women', 'Party Ware ', 'b8ff44b34939ed04188aa3afcfea13d9.jpg', 'wudfacvbsphvjnvcoev', 10000, 1, 10, '11', 's'),
(2, 0, 'girls', 'pink', 'Black and white Dress.jpg', ' cjqhf9021u9', 20000, 1, 23, '14', 'l'),
(3, 0, 'kids', 'Black Ready to wear', 'Asset-6.png', 'black ', 15000, 1, 45, '40', 'm'),
(4, 0, 'girls', 'Maria B', 'red (1).jpg', 'maora b lates artical availablre', 15000, 1, 56, '88', 's'),
(5, 0, 'kids', 'Party Ware ', 'PinkLatedAbaya.jpg', 'wertyuiodfghjkcvbnm1234567890-', 11000, 1, 60, '10', 'x'),
(6, 0, 'kids', 'Latest product ', 'Slider.jpg', 'New Trend', 11000, 1, 10, '', ''),
(7, 0, 'kids', 'Kids Wear', 'Abaya Black.jpg', 'Summer/Spring Collection of digitally printed lawn suits for women. This season, upgrade your style with these outstanding three-piece sets that have elegance and charm. Each suit has Self Digital printed designs on the front, sleeves, and back. The set includes a lovely Bamber Chiffon Dupatta, which will give a touch of grace and elegance to your look. These outfits, along with printed trousers, provide the ideal balance of comfort and a fashion-forward aesthetic. With our engaging range of digitally painted lawn suits, you can welcome the color of summer.', 1100, 1, 11, '', ''),
(8, 0, 'all', 'Part Ware', 'white.jpg', 'Kids  Nice Outfit for summer Function', 5000, 1, 5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `contact`, `address`, `city`, `user_pic`) VALUES
(1, 'saba Nabi', 'zoha@gmail.com', 'zoha', '03045789257', 'fsd 123 Near u', 'fsd', '6487ca9da7e69_6880ad36cf8594273673d6a2c97c439b.jpg'),
(2, 'zoha usman', 'zoha123456789@gmail.com', 'zoha@123usman6840346', '', 'fsd 123 Near u0qdnsai2ou3i3', 'fsd cjehfiqwj', '64788493a73edat_icon.png'),
(3, 'Naima', 'namia@gmail.com', 'naima123', '123457890', 'fsd CGIT software ', 'fsd', ''),
(4, 'not applicable', 'sir123@gmail.com', 'sir1234', '', '', '', '647b3d652bcc0_at_icon.png'),
(5, 'zoha', 'maha@gmail.com', '', '0263920167', 'aczgskwbswipq', 'fsd', ''),
(6, '123Zoha', '123Zoha@gmail.com', '123Zoha', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catname` (`catname`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
