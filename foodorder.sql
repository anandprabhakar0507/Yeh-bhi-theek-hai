-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 06:39 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('atishey', 'atishay', 'atisay@gmail.com', '654321678', 'mumbai', 'qwerty'),
('avnish89', 'avnish', 'avnish@gmail.com', '7021318567', 'jaipur ', 'avnish'),
('pheebs', 'phoebe buffay', 'mike123pheebs@gmail.com', '1234567890', 'cpp', 'qwerty'),
('rashi', 'rashi', 'rashi@gmail.com', '3214567890', 'mumbai', 'mumbai'),
('vibhu', 'vibhu', 'vibhu@gmail.com', '1234567890', 'delhi', 'hazard'),
('zlatan_10', 'Anamaya Vyas', 'anamayav@gmail.com', '7021318567', 'new york, central perk', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(83, 'spring rolls', 79, 'deep fried spring rolls with veggie munchies just for your parties', 7, 'qw.jpg', 'ENABLE'),
(88, 'Red pasta', 120, 'Made with juicy red tomato sauce with peri peri garnishing', 7, 'image.jpg', 'ENABLE'),
(89, 'tandoori pasta', 175, 'made with indian and italian cuisine ingredients , a delicacy', 7, 'green.jpg', 'ENABLE'),
(90, 'lasagna', 300, 'An exquisite italian dish with creamy parmegaene chesse and pasta', 7, 'lasa.jpg', 'ENABLE'),
(91, 'honey semifreddo', 200, 'sweet as honey your tummy needs one of this after a dinner for sure', 7, 'hon.jpg', 'ENABLE'),
(93, 'ratatouille', 465, 'A french delicacy with veggies and high nutrition values and exquisite tatse', 7, 'rat.jpg', 'ENABLE'),
(94, 'Moose cake', 250, 'It melts in mouth, tastes so good that you can\'t really feel full for it', 7, 'mo.jpg', 'ENABLE'),
(95, 'White pasta', 120, 'White sauce, with creamy cheese and origeno garnishing with mushrooms', 7, 'wh.jpg', 'ENABLE'),
(97, 'Garlic Bread', 175, 'Freshly baked Garlic bread sticks, with cheesy layers on top', 7, 'garlic.jpg', 'ENABLE'),
(98, 'pizza', 500, 'hand tossed mushroom pizza with jyellepno, corn tomato and peri peri toppings', 7, 'pi.jpg', 'ENABLE'),
(99, 'chicken burger', 75, 'deep fried chicken with corriender sauce mixed with melting cheese ', 7, 'burg.jpg', 'ENABLE'),
(100, 'Punjabi  Thaali', 400, '2 gulaab jaamun, 2 Naan, 1 lachha parantha, sarson da saag, gud, chawal, daal makhni and kadhai paneer', 8, 'pun.jpg', 'ENABLE'),
(101, 'Marwari thaali', 400, 'Daal baati, tairi, kair saangri, gatte, 4 fulka, binach, masala baati, churma, mangorri ro haag', 8, 'raj.jpg', 'ENABLE'),
(102, 'cholle bhature', 175, 'deep fried bhature with spicy cholle', 8, 'ch.jpg', 'ENABLE'),
(103, 'paav bhaaji', 120, 'hot baked paav with spicy and tasty bhaaji to die for', 8, 'pav.jpg', 'ENABLE'),
(104, 'laal maas', 300, 'A rajasthani delicacy made on typical chullah and a royal dish from rajwaad', 8, 'laal.jpg', 'ENABLE'),
(105, 'iddli sambhar', 90, 'Healthy and tasty iddli sambhar with coconut chutney', 8, 'idli.jpg', 'ENABLE'),
(107, 'rawa fish', 250, 'fried with coconut oil, the occoi fish is mouth watering', 8, 'rawa.jpg', 'ENABLE'),
(108, 'Kadhaai chicken', 500, 'A extraveggenza of spices with rightly cooked chicken ', 8, 'kadhaai.jpg', 'ENABLE'),
(109, 'masala dosai', 180, 'paper thin dosaa with spice masala, coconut chutney with pudhina and sambhar', 8, 'dosa.jpg', 'ENABLE'),
(110, 'lassi', 68, 'curd centrifugated with love with honey sweetness', 8, 'lassi.jpg', 'ENABLE'),
(111, 'gulab jaamun', 190, 'A feast is not complete without a dessert and that not too without a gulaab jaamun', 8, 'gja.jpg', 'ENABLE'),
(112, 'waffle', 130, 'baked crispy waffles with honey, chocolate and mapple syrup', 9, 'waa.jpg', 'ENABLE'),
(113, 'Pan cakes', 180, 'Sweet and delicious pan cakes, easily melt in your mouth ggod when taken with chocolate syrup or honey', 9, 'pan.jpg', 'ENABLE'),
(114, 'latte expressico', 90, 'Hot coffee to make your mood even better in the morning', 9, 'latte.jpg', 'ENABLE'),
(115, 'chocolate dark mocha', 120, 'Sweet and creamy mocha is just what you need', 9, 'mocha.jpg', 'ENABLE'),
(116, 'cold coffee', 190, 'An ice chilled leathery coffee to cool you down in burning summer days', 9, 'cof.jpg', 'ENABLE'),
(117, 'iced tea', 150, 'An ice chilled tea to cool you down in burning summer days', 9, 'ice.jpg', 'ENABLE'),
(118, 'Red velvet trifle', 600, 'A sweet and sugar soft trifle made with strawberry and rasberry syrup with each layer batter than the other', 9, 'rvt.jpg', 'ENABLE'),
(119, 'chocolate smoothie', 195, 'A chocolate extravegenzza with milk and coffee complimenting each other', 9, 'sm.jpg', 'ENABLE'),
(120, 'chocolate chipped scone', 150, 'sweet scones and nice to have with a latte in one hand', 9, 'scone.jpg', 'ENABLE'),
(121, 'cappuccino', 150, 'Hot coffee to make your mood even better in the morning', 9, 'cap.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('avnish123', 'Avnish Tiwari', 'avnish@gmail.com', '7021318567', 'new york, central perk', 'qwerty'),
('Hazardous', 'vibhu kumar singh', 'vibhu@gmail.com', '876543210', 'Gaziyabad', 'vibhu1224'),
('manager', 'manager', 'manager@rediffmai.com', '1234567898', 'yotkogm', 'manager'),
('manager101', 'manman', 'man@gmail.com', '8989890000', 'mumbai india', 'qwerty'),
('Zlatan', 'Anamaya Vyas', 'anamayav@gmail.com', '8824969031', 'c-scheme', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int NOT NULL,
  `F_ID` int NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(70, 99, 'chicken burger', 75, 1, '2020-10-26', 'zlatan_10', 7),
(71, 98, 'pizza', 500, 1, '2020-10-26', 'zlatan_10', 7),
(72, 97, 'Garlic Bread', 175, 1, '2020-10-26', 'zlatan_10', 7),
(73, 99, 'chicken burger', 75, 1, '2020-10-26', 'zlatan_10', 7),
(74, 98, 'pizza', 500, 1, '2020-10-26', 'zlatan_10', 7),
(75, 97, 'Garlic Bread', 175, 1, '2020-10-26', 'zlatan_10', 7),
(76, 119, 'chocolate smoothie', 195, 1, '2020-10-26', 'zlatan_10', 9),
(77, 104, 'laal maas', 300, 1, '2020-10-26', 'zlatan_10', 8),
(78, 94, 'Moose cake', 250, 2, '2020-10-26', 'ram123', 7),
(79, 95, 'White pasta', 120, 2, '2020-10-26', 'ram123', 7),
(80, 112, 'waffle', 130, 2, '2020-10-26', 'ram123', 9),
(81, 110, 'lassi', 68, 3, '2020-10-26', 'ram123', 8),
(82, 104, 'laal maas', 300, 1, '2020-10-26', 'ram123', 8),
(83, 94, 'Moose cake', 250, 2, '2020-10-26', 'ram123', 7),
(84, 95, 'White pasta', 120, 2, '2020-10-26', 'ram123', 7),
(85, 112, 'waffle', 130, 2, '2020-10-26', 'ram123', 9),
(86, 110, 'lassi', 68, 3, '2020-10-26', 'ram123', 8),
(87, 104, 'laal maas', 300, 1, '2020-10-26', 'ram123', 8),
(88, 88, 'Red pasta', 120, 5, '2020-11-11', 'zlatan_10', 7),
(89, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(90, 88, 'Red pasta', 120, 5, '2020-11-11', 'zlatan_10', 7),
(91, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(92, 88, 'Red pasta', 120, 5, '2020-11-11', 'zlatan_10', 7),
(93, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(94, 88, 'Red pasta', 120, 5, '2020-11-11', 'zlatan_10', 7),
(95, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(96, 88, 'Red pasta', 120, 5, '2020-11-11', 'zlatan_10', 7),
(97, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(98, 88, 'Red pasta', 120, 5, '2020-11-11', 'zlatan_10', 7),
(99, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(100, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(101, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(102, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(103, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(104, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(105, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(106, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(107, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(108, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(109, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(110, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(111, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(112, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(113, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(114, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(115, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(116, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(117, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(118, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(119, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(120, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(121, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(122, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(123, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(124, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(125, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(126, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(127, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(128, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(129, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(130, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(131, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(132, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(133, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(134, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(135, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(136, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(137, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(138, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(139, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(140, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(141, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(142, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(143, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(144, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(145, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(146, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(147, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(148, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(149, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(150, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(151, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(152, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(153, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(154, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(155, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(156, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(157, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(158, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(159, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(160, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(161, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(162, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(163, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(164, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(165, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(166, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(167, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(168, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(169, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(170, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(171, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(172, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(173, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(174, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(175, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(176, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(177, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(178, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(179, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(180, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(181, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(182, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(183, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(184, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(185, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(186, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(187, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(188, 89, 'tandoori pasta', 175, 3, '2020-11-11', 'zlatan_10', 7),
(189, 90, 'lasagna', 300, 3, '2020-11-11', 'zlatan_10', 7),
(190, 89, 'tandoori pasta', 175, 2, '2020-11-11', 'zlatan_10', 7),
(191, 100, 'Punjabi  Thaali', 400, 3, '2020-11-11', 'zlatan_10', 8),
(192, 90, 'lasagna', 300, 1, '2020-11-11', 'zlatan_10', 7),
(193, 94, 'Moose cake', 250, 1, '2020-11-11', 'zlatan_10', 7),
(194, 120, 'chocolate chipped scone', 150, 1, '2020-11-11', 'zlatan_10', 9),
(195, 89, 'tandoori pasta', 175, 1, '2020-11-11', 'zlatan_10', 7),
(196, 93, 'ratatouille', 465, 1, '2020-11-11', 'zlatan_10', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(7, 'Gourmette salud', 'gourmettesalud@gmail.com', '9876543210', 'new york, central perk', 'avnish123'),
(8, 'Zilla Gaziayabad', 'zillagaziyabad@gmail.com', '7021318567', 'Gaziyabad', 'Hazardous'),
(9, 'Lion\'s Cafetaria', 'lions@gmail.com', '8824969031', 'c-scheme', 'Zlatan'),
(10, 'restaurant', 'restaurant@gmail.com', '1234554321', 'cpyolou yemen', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
