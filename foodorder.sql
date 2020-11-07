
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('atishey', 'atishay', 'atisay@gmail.com', '654321678', 'mumbai', 'qwerty'),
('avnish89', 'avnish', 'avnish@gmail.com', '7021318567', 'jaipur ', 'avnish'),
('rashi', 'rashi', 'rashi@gmail.com', '3214567890', 'mumbai', 'mumbai'),
('vibhu', 'vibhu', 'vibhu@gmail.com', '1234567890', 'delhi', 'hazard'),
('zlatan_10', 'Anamaya Vyas', 'anamayav@gmail.com', '7021318567', 'new york, central perk', 'qwerty');

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(121, 'cappuccino', 150, 'Hot coffee to make your mood even better in the morning', 9, 'cap.jpg', 'ENABLE'),
(124, 'red moose cake', 200, 'sweet cake ', 9, 'max.jpg', 'DISABLE');

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('avnish123', 'Avnish Tiwari', 'avnish@gmail.com', '7021318567', 'new york, central perk', 'qwerty'),
('Hazardous', 'vibhu kumar singh', 'vibhu@gmail.com', '876543210', 'Gaziyabad', 'vibhu1224'),
('Zlatan', 'Anamaya Vyas', 'anamayav@gmail.com', '8824969031', 'c-scheme', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(87, 104, 'laal maas', 300, 1, '2020-10-26', 'ram123', 8);

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(7, 'Gourmette salud', 'gourmettesalud@gmail.com', '9876543210', 'new york, central perk', 'avnish123'),
(8, 'Zilla Gaziayabad', 'zillagaziyabad@gmail.com', '7021318567', 'Gaziyabad', 'Hazardous'),
(9, 'Lion\'s Cafetaria', 'lions@gmail.com', '8824969031', 'c-scheme', 'Zlatan');

ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;