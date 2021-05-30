-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 04:38 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `owss`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`b_id`, `b_name`, `image`) VALUES
(3, 'Rolex', 'rolexbrand.png'),
(4, 'fossil', 'fossilbrand.png'),
(5, 'titan', 'titanbrand.png'),
(6, 'fastrack', 'fastrackbrand.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`c_id`, `c_name`, `image`) VALUES
(3, 'Women', 'fossil2.jpg'),
(4, 'Men', 'titan1.jpg'),
(5, 'unisex', 'fastrack2.webp'),
(6, 'kids', 'kid4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_name`, `s_id`) VALUES
(1, 'Surat', 1),
(2, 'vadodara', 1),
(3, 'navsari', 1),
(4, 'ahemdabad', 1),
(5, 'valsad', 1),
(6, 'Mumbai', 2),
(7, 'Thane', 2),
(8, 'Navi-Mumbai', 2),
(9, 'nashik', 2),
(10, 'pune', 2),
(11, 'Jaipur', 3),
(12, 'Udaipur', 3),
(13, 'Ajmer', 3),
(14, 'Kota', 3),
(15, 'Jodhpur', 3),
(16, 'Lucknow', 4),
(17, 'varanasi', 4),
(18, 'kanpur', 4),
(19, 'Ghaziabad', 4),
(20, 'Agra', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `u_id` int(11) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`u_id`, `reply`, `rating`) VALUES
(5, ' the watch was nice', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` int(11) NOT NULL,
  `img1` varchar(500) NOT NULL,
  `img2` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `o_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`o_id`, `order_date`, `u_id`, `amount`, `status`, `pay_id`) VALUES
(17, '2021-04-28', 5, 300, 'Confirm', 6),
(18, '2021-04-28', 5, 300, 'Confirm', 7),
(19, '2021-04-29', 5, 250, 'Confirm', 9),
(20, '2021-04-29', 5, 250, 'Confirm', 12),
(21, '2021-04-29', 5, 500, 'Confirm', 13),
(22, '2021-04-29', 5, 800, 'Confirm', 14),
(23, '2021-03-29', 5, 300, 'Confirm', 15),
(24, '2021-04-30', 2, 900, 'Confirm', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `od_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`od_id`, `p_id`, `quantity`, `amount`) VALUES
(1, 24, 1, 500),
(2, 23, 1, 300),
(3, 27, 2, 699),
(4, 23, 1, 300),
(5, 24, 1, 500),
(6, 23, 1, 300),
(7, 23, 1, 300),
(8, 24, 1, 500),
(9, 26, 1, 300),
(10, 25, 1, 250),
(11, 23, 1, 300),
(12, 23, 1, 300),
(13, 23, 1, 300),
(14, 24, 1, 500),
(15, 24, 1, 500),
(16, 26, 1, 300),
(17, 26, 1, 300),
(18, 25, 1, 250),
(19, 25, 1, 250),
(20, 24, 1, 500),
(21, 23, 1, 300),
(22, 24, 1, 500),
(23, 23, 1, 300),
(24, 26, 3, 300);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `pay_id` int(11) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`pay_id`, `payment_mode`, `amount`, `u_id`) VALUES
(6, 'debit', 300, 5),
(7, 'credit', 300, 5),
(8, 'debit', 250, 5),
(9, 'credit', 250, 5),
(10, 'credit', 250, 5),
(11, '', 250, 5),
(12, 'debit', 250, 5),
(13, 'credit', 500, 5),
(14, 'debit', 800, 5),
(15, 'credit', 300, 5),
(16, 'credit', 900, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `c_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `w_id` int(11) NOT NULL,
  `pimage` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `price`, `quantity`, `description`, `c_id`, `b_id`, `w_id`, `pimage`) VALUES
(23, 'simple watch', 300, 3, 'hand watch with lather belt', 3, 4, 4, 'fossil2.jpg'),
(24, 'rolex wacth', 500, 20, 'rolex hand watch', 4, 3, 6, 'titan1.jpg'),
(25, 'girls watch', 250, 20, 'little girls barbie watch', 6, 4, 4, 'kid4.jpg'),
(26, 'boy watch', 300, 20, 'little boy watch red colour belt', 6, 3, 6, 'kid3.jpg'),
(27, 'women hand watch', 699, 20, 'golden dial watch', 3, 5, 7, 'titan4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reference_order`
--

CREATE TABLE `tbl_reference_order` (
  `ro_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reference_order`
--

INSERT INTO `tbl_reference_order` (`ro_id`, `o_id`, `od_id`) VALUES
(1, 5, 5),
(2, 7, 6),
(3, 8, 7),
(4, 9, 8),
(5, 10, 9),
(6, 11, 10),
(7, 12, 11),
(8, 13, 12),
(9, 14, 13),
(10, 15, 14),
(11, 16, 15),
(12, 17, 16),
(13, 18, 17),
(14, 19, 18),
(15, 20, 19),
(16, 21, 20),
(17, 22, 21),
(18, 22, 22),
(19, 23, 23),
(20, 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specification`
--

CREATE TABLE `tbl_specification` (
  `speci_id` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `strap_type` varchar(50) NOT NULL,
  `power_source` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `age_group` varchar(30) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_specification`
--

INSERT INTO `tbl_specification` (`speci_id`, `width`, `length`, `strap_type`, `power_source`, `color`, `age_group`, `p_id`) VALUES
(3, 15, 10, 'rouber strap', 'bettery', 'light pink', '5 to 10', 25),
(4, 10, 10, 'lather strap', 'bettery', 'pink', '15 to 50', 23),
(5, 20, 10, 'black metal strap', '12 hours', 'black', '20 to 45', 24),
(6, 5, 10, 'red rouber straps', 'bettery', 'red', '10 to 15', 26),
(7, 10, 10, 'metal strap', 'bettery', 'silver and golden', '20 to 46', 27);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `S_id` int(11) NOT NULL,
  `State_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`S_id`, `State_name`) VALUES
(1, 'Gujarat'),
(2, 'Maharastra'),
(3, 'Rajasthan'),
(4, 'Uttarpradesh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `Email_id` varchar(200) NOT NULL,
  `Contact_no` bigint(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `Name`, `Gender`, `Address`, `Pincode`, `DOB`, `Email_id`, `Contact_no`, `Username`, `Password`) VALUES
(2, 'sajan', 'M', 'vrundavan', 396445, '2021-03-28', 'psajan204@gmail.com', 9898563427, 'saju1829', '88194e0eed48b06d640b9aaddd5c87f6'),
(3, 'Anita patel', 'F', 'brahmin faliya jalalpore navsari', 396445, '2018-08-13', 'anitapatel@gmail.com', 9898814356, 'anita30', 'anitapatel'),
(4, 'krishna Patel', 'F', 'vrundavan society jalalpore', 396785, '2004-09-15', 'krishnap@gmail.com', 9878654532, 'krishu12', 'krishna123'),
(5, 'Shivani patel', 'F', 'dandi', 396456, '2021-04-05', '18bmiit007@gmail.com', 9898813245, 'shivani1414', 'da14b50821463e408f4576e1d065425e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_watch_type`
--

CREATE TABLE `tbl_watch_type` (
  `w_id` int(11) NOT NULL,
  `w_name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_watch_type`
--

INSERT INTO `tbl_watch_type` (`w_id`, `w_name`, `image`) VALUES
(4, 'pink watch', 'fossil3.jpg'),
(5, 'fitbit', 'fastrack4.jpg'),
(6, 'smartwatch', 'fossil4.jpg'),
(7, 'metal wathes', 'fastrack1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`od_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_reference_order`
--
ALTER TABLE `tbl_reference_order`
  ADD PRIMARY KEY (`ro_id`),
  ADD KEY `o_id` (`o_id`),
  ADD KEY `od_id` (`od_id`);

--
-- Indexes for table `tbl_specification`
--
ALTER TABLE `tbl_specification`
  ADD PRIMARY KEY (`speci_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_watch_type`
--
ALTER TABLE `tbl_watch_type`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `od_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_reference_order`
--
ALTER TABLE `tbl_reference_order`
  MODIFY `ro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_specification`
--
ALTER TABLE `tbl_specification`
  MODIFY `speci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_watch_type`
--
ALTER TABLE `tbl_watch_type`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD CONSTRAINT `tbl_feedback_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
