-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- 생성 시간: 19-07-12 01:10
-- 서버 버전: 8.0.15
-- PHP 버전: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- 데이터베이스: `liquorlibrary`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `brandID` int(20) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brandID`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `brand`
--

INSERT INTO `brand` (`brandID`, `brandName`, `img`) VALUES
(1, 'ASAHI', NULL),
(2, 'Sawmill', NULL),
(3, 'Heineken', NULL),
(4, 'auckland', NULL),
(5, 'auckland', NULL),
(6, 'auckland', NULL),
(7, 'auckland', NULL),
(8, 'auckland', NULL),
(9, 'auckland', NULL),
(10, 'buckland', NULL),
(11, 'buckland', NULL),
(12, 'buckland', NULL),
(13, 'buckland', NULL),
(14, 'buckland', NULL),
(15, 'cuckland', NULL),
(16, 'cuckland', NULL),
(17, 'cuckland', NULL),
(18, 'euckland', NULL),
(19, 'euckland', NULL),
(20, 'fuckland', NULL),
(21, 'fuckland', NULL),
(22, 'fuckland', NULL),
(23, 'fuckland', NULL),
(24, 'guckland', NULL),
(25, 'huckland', NULL),
(26, 'iuckland', NULL),
(27, 'juckland', NULL),
(28, 'ckland', NULL),
(29, 'luckland', NULL),
(30, 'muckland', NULL),
(31, 'nuckland', NULL),
(32, 'ouckland', NULL),
(33, 'puckland', NULL),
(34, 'Quckland', NULL),
(35, 'Ruckland', NULL),
(36, 'suckland', NULL),
(37, 'Tuckland', NULL),
(38, 'Uuckland', NULL),
(39, 'vuckland', NULL),
(40, 'wuckland', NULL),
(41, 'xuckland', NULL),
(42, 'xuckland', NULL),
(43, 'xuckland', NULL),
(44, 'yuckland', NULL),
(45, 'ydfduckland', NULL),
(46, 'zdfdfuckland', NULL),
(47, 'auckland', NULL),
(48, 'auckland', NULL),
(49, 'auckland', NULL),
(50, 'suckland', NULL),
(51, 'Tuckland', NULL),
(52, 'Uuckland', NULL),
(53, 'vuckland', NULL),
(54, 'wuckland', NULL),
(55, 'xuckland', NULL),
(56, 'xuckland', NULL),
(57, 'xuckland', NULL),
(58, 'yuckland', NULL),
(59, 'ydfduckland', NULL),
(60, 'zdfdfuckland', NULL),
(61, 'auckland', NULL),
(62, 'auckland', NULL),
(63, 'auckland', NULL),
(64, 'ouckland', NULL),
(65, 'puckland', NULL),
(66, 'Quckland', NULL),
(67, 'Ruckland', NULL),
(68, 'suckland', NULL),
(69, 'Tuckland', NULL),
(70, 'Uuckland', NULL),
(71, 'vuckland', NULL),
(72, 'wuckland', NULL),
(73, 'xuckland', NULL),
(74, 'xuckland', NULL),
(75, 'xuckland', NULL),
(76, 'ouckland', NULL),
(77, 'puckland', NULL),
(78, 'Quckland', NULL),
(79, 'Ruckland', NULL),
(80, 'suckland', NULL),
(81, 'Tuckland', NULL),
(82, 'Uuckland', NULL),
(83, 'vuckland', NULL),
(84, 'wuckland', NULL),
(85, 'xuckland', NULL),
(86, 'xuckland', NULL),
(87, 'xuckland', NULL),
(88, 'ouckland', NULL),
(89, 'cuckland', NULL),
(90, 'Quckland', NULL),
(91, 'Ruckland', NULL),
(92, 'duckland', NULL),
(93, 'Tuckland', NULL),
(94, 'duckland', NULL),
(95, 'vuckland', NULL),
(96, 'euckland', NULL),
(97, 'eland', NULL),
(98, 'xuckland', NULL),
(99, 'cckland', NULL),
(100, 'gkland', NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` int(20) NOT NULL AUTO_INCREMENT,
  `parentCategoryID` int(20) DEFAULT NULL,
  `categoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `category`
--

INSERT INTO `category` (`categoryID`, `parentCategoryID`, `categoryName`) VALUES
(1, NULL, 'beer'),
(2, 1, 'IPA'),
(3, 1, 'APA'),
(4, 1, 'Pale Ale'),
(5, NULL, 'Cider'),
(6, NULL, 'Wine'),
(7, 6, 'Red'),
(8, 6, 'White'),
(9, 6, 'Sparkling'),
(10, 6, 'Champagne'),
(11, NULL, 'Spirits'),
(12, 11, 'Gin'),
(13, 11, 'Vodka'),
(14, 11, 'Rum'),
(15, 11, 'Tequila'),
(16, 11, 'Bourbon'),
(17, 11, 'Brandy'),
(18, 11, 'Others'),
(19, NULL, 'Others');

-- --------------------------------------------------------

--
-- 테이블 구조 `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `itemID` int(20) NOT NULL,
  `orderID` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `totalprice` double DEFAULT NULL,
  PRIMARY KEY (`itemID`,`orderID`),
  KEY `orderID` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `orderitems`
--

INSERT INTO `orderitems` (`itemID`, `orderID`, `quantity`, `totalprice`) VALUES
(10004, 1, 1, 7.5),
(10009, 1, 1, 9.5),
(10003, 1, 1, 9.5),
(10021, 1, 2, 170),
(10016, 1, 1, 6.5),
(10004, 7, 3, 22.5),
(10009, 7, 2, 19),
(10005, 7, 2, 13),
(10021, 8, 1, 85),
(10018, 8, 1, 19.5),
(10020, 8, 1, 22),
(10004, 9, 2, 15),
(10009, 9, 2, 19),
(10009, 10, 2, 19),
(10004, 10, 2, 15),
(10009, 11, 4, 38),
(10009, 12, 4, 38),
(10009, 13, 3, 28.5),
(10022, 13, 1, 0),
(10004, 0, 5, 37),
(10009, 0, 3, 28),
(10004, 15, 2, 15),
(10009, 15, 6, 57),
(10004, 16, 2, 15),
(10009, 16, 1, 9.5),
(10006, 16, 1, 9.5),
(10012, 15, 1, 9.5),
(10004, 18, 1, 7.5),
(10009, 18, 1, 9.5),
(10009, 19, 1, 9.5),
(10004, 19, 1, 7.5),
(10005, 20, 1, 6.5),
(10009, 21, 1, 9.5),
(10004, 22, 1, 7.5),
(10009, 23, 1, 9.5),
(10004, 24, 1, 7.5),
(10009, 25, 1, 9.5),
(10004, 26, 1, 7.5),
(10009, 27, 1, 9.5),
(10009, 28, 1, 9.5),
(10009, 29, 1, 9.5),
(10009, 30, 1, 9.5),
(10009, 31, 2, 19),
(10009, 32, 1, 9.5),
(10009, 33, 1, 9.5),
(10009, 14, 1, 9.5),
(10009, 35, 1, 9.5),
(10004, 35, 1, 7.5),
(10009, 36, 1, 9.5),
(10004, 37, 3, 22.5),
(10009, 38, 3, 28.5),
(10009, 39, 1, 9.5),
(10004, 40, 1, 7.5),
(10009, 41, 1, 9.5),
(10009, 42, 1, 9.5),
(10009, 43, 1, 9.5),
(10009, 44, 1, 9.5),
(10009, 45, 1, 9.5),
(10009, 46, 1, 9.5),
(10009, 47, 1, 9.5),
(10009, 48, 1, 9.5),
(10009, 49, 1, 9.5),
(10009, 50, 1, 9.5),
(10009, 51, 1, 9.5),
(10009, 52, 1, 9.5),
(10009, 53, 1, 9.5),
(10004, 54, 1, 7.5),
(10009, 54, 1, 9.5),
(10004, 55, 1, 7.5),
(10009, 55, 1, 9.5),
(10004, 56, 1, 7.5),
(10009, 56, 1, 9.5),
(10009, 57, 1, 9.5),
(10004, 57, 1, 7.5),
(10017, 57, 1, 18),
(10018, 57, 1, 19.5),
(10020, 57, 1, 22),
(10009, 58, 2, 19),
(10012, 92, 1, 9.5),
(10017, 92, 1, 18),
(10004, 72, 4, 30),
(10017, 72, 4, 72),
(10012, 72, 4, 38),
(10016, 72, 7, 45),
(10018, 92, 1, 19.5),
(10019, 92, 1, 18),
(10020, 92, 1, 22),
(10020, 96, 1, 22),
(10004, 96, 1, 7.5),
(10004, 95, 1, 7.5),
(10017, 96, 1, 18),
(10019, 96, 3, 54),
(10003, 97, 1, 9.5),
(10022, 97, 3, 90),
(10009, 98, 1, 9.5),
(10004, 98, 1, 7.5),
(10020, 98, 1, 22),
(10017, 98, 2, 36),
(10019, 98, 1, 18),
(10022, 99, 1, 30),
(10018, 99, 5, 97),
(10004, 100, 4, 30),
(10009, 100, 1, 9.5),
(10022, 101, 4, 120),
(10009, 102, 4, 38),
(10003, 103, 1, 9.5),
(10018, 103, 1, 19.5),
(10007, 104, 1, 10.5),
(10013, 104, 1, 10.5),
(10007, 105, 1, 10.5),
(10009, 105, 1, 9.5),
(10010, 105, 5, 37),
(10004, 106, 1, 7.5),
(10009, 106, 1, 9.5),
(10009, 107, 1, 9.5),
(10017, 108, 1, 18),
(10018, 108, 1, 19.5),
(10019, 108, 3, 54),
(10007, 109, 1, 10.5),
(10017, 110, 1, 18),
(10018, 110, 1, 19.5),
(10019, 110, 1, 18),
(10004, 111, 1, 7.5),
(10017, 111, 1, 18),
(10018, 111, 1, 19.5),
(10016, 112, 1, 6.5),
(10016, 113, 1, 6.5),
(10009, 94, 2, 19),
(10009, 113, 1, 9.5),
(10017, 113, 1, 18),
(10021, 113, 1, 85),
(10021, 94, 2, 170),
(10009, 114, 3, 28),
(10007, 114, 6, 63),
(10018, 116, 1, 19.5),
(10020, 116, 4, 88),
(10009, 117, 1, 9.5),
(10005, 117, 3, 19),
(10020, 118, 1, 22),
(10018, 118, 1, 19.5),
(10010, 116, 3, 22),
(10017, 116, 1, 18),
(10004, 93, 10, 75),
(10022, 119, 1, 30),
(10017, 119, 1, 18),
(10018, 119, 1, 19.5),
(10009, 131, 1, 9.5),
(10009, 115, 3, 28),
(10004, 115, 5, 37),
(10016, 128, 4, 26),
(10019, 128, 3, 54),
(10009, 136, 3, 28),
(10009, 125, 3, 28),
(10004, 125, 5, 37),
(10004, 136, 5, 37);

-- --------------------------------------------------------

--
-- 테이블 구조 `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(20) NOT NULL AUTO_INCREMENT,
  `buyerID` int(20) NOT NULL,
  `whID` int(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `note` text,
  `cost` int(11) NOT NULL,
  `transactionID` varchar(50) DEFAULT NULL,
  `paymentmethod` varchar(100) DEFAULT NULL,
  `deliverymethod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `buyerID` (`buyerID`),
  KEY `whID` (`whID`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `orders`
--

INSERT INTO `orders` (`orderID`, `buyerID`, `whID`, `date`, `status`, `note`, `cost`, `transactionID`, `paymentmethod`, `deliverymethod`) VALUES
(43, 5, 0, '2019-06-14 02:23:05', 1, 'card_invoice value checking', 0, 'ch_1El54HDxXQI5tIHycf9VFwud', 'card', ''),
(42, 5, 0, '2019-06-14 02:15:32', 3, 'set test', 100, NULL, 'cash', 'pickup'),
(13, 2, 0, '2019-06-07 05:25:31', 1, '', 0, NULL, NULL, NULL),
(14, 2, 9, '2019-06-14 01:52:59', 5, '', 0, NULL, '2', 'pickup'),
(15, 6, 1, '2019-04-12 11:27:55', 3, 'ttt', 250, NULL, 'card', 'pickup'),
(16, 5, 10, '2019-06-14 01:54:38', 1, '', 0, NULL, '2', 'pickup'),
(128, 5, 0, '2019-07-11 23:11:17', 1, '', 80, 'ch_1EvBPsDxXQI5tIHysvqV8zSX', 'card', 'delivery'),
(125, 5, 0, '2019-07-10 23:42:20', 0, NULL, 0, NULL, NULL, NULL),
(119, 5, 0, '2019-07-08 08:27:22', 6, '', 68, NULL, 'cash', 'pickup'),
(120, 5, 0, '2019-07-10 23:40:17', 0, NULL, 0, NULL, NULL, NULL),
(121, 5, 0, '2019-07-10 23:40:17', 0, NULL, 0, NULL, NULL, NULL),
(122, 5, 0, '2019-07-10 23:41:09', 0, NULL, 0, NULL, NULL, NULL),
(33, 6, 1, '2019-05-14 02:16:02', 1, '', 500, NULL, 'cash', 'pickup'),
(35, 5, 9, '2019-06-14 01:57:21', 1, 'Cash emailsending testing', 0, NULL, '2', 'pickup'),
(36, 5, 1, '2019-01-14 02:02:48', 4, '', 10, NULL, 'cash', 'pickup'),
(45, 5, 0, '2019-07-14 02:33:50', 4, 'delivery check', 0, 'ch_1El5EaDxXQI5tIHygMX0sqWE', 'card', 'delivery'),
(46, 5, 0, '2019-06-14 02:37:32', 4, 'loader test', 75, 'ch_1El5I9DxXQI5tIHym3Q1r2YY', 'card', 'delivery'),
(47, 5, 0, '2019-06-14 02:39:08', 1, '', 0, 'ch_1El5JgDxXQI5tIHyMQuMSk4x', 'null', 'null'),
(48, 5, 0, '2019-06-14 02:41:09', 1, 'loader10 tst', 0, 'ch_1El5LeDxXQI5tIHyYMR35n02', 'null', 'null'),
(49, 5, 0, '2019-06-14 02:49:14', 5, '', 0, 'ch_1El5TTDxXQI5tIHyvtMBqftk', 'card', 'delivery'),
(50, 6, 0, '2019-06-14 02:56:51', 5, 'Branch test', 0, NULL, 'null', 'null'),
(51, 5, 1, '2019-04-14 02:58:27', 3, 'pickup> cash test', 774, NULL, 'cash', 'pickup'),
(52, 5, 0, '2019-06-14 02:59:27', 7, 'card> delivery', 0, 'ch_1El5dMDxXQI5tIHy9Ry6INFO', 'card', 'delivery'),
(53, 6, 1, '2019-06-17 05:10:37', 3, '', 55, NULL, 'cash', 'pickup'),
(54, 7, 0, '2019-06-17 05:18:29', 1, 'price update test', 17, NULL, 'null', 'null'),
(55, 8, 0, '2019-06-18 05:19:51', 4, '', 17, NULL, 'null', 'null'),
(56, 5, 1, '2019-03-18 08:55:44', 4, '', 17, NULL, 'card', 'pickup'),
(57, 5, 1, '2019-02-18 08:56:15', 4, '', 77, NULL, 'cash', 'pickup'),
(58, 6, 0, '2019-06-20 02:51:21', 4, 'test', 19, NULL, 'null', 'null'),
(106, 9, 1, '2019-06-26 10:07:37', 1, '', 17, 'ch_1EpY2JDxXQI5tIHycNLILJAX', 'card', 'pickup'),
(124, 5, 0, '2019-07-10 23:42:14', 0, NULL, 0, NULL, NULL, NULL),
(123, 5, 0, '2019-07-10 23:42:14', 0, NULL, 0, NULL, NULL, NULL),
(118, 8, 0, '2019-07-03 12:04:03', 7, 'method insert test warehouse backorder', 42, NULL, 'null', 'null'),
(117, 8, 0, '2019-07-03 09:47:58', 7, '', 29, NULL, 'null', 'null'),
(116, 5, 0, '2019-06-04 02:15:01', 4, '', 148, 'ch_1EsKTHDxXQI5tIHyIkZ1cnOd', 'null', 'pickup'),
(115, 0, 0, '2019-07-03 09:05:38', 0, NULL, 0, NULL, NULL, NULL),
(114, 8, 0, '2019-07-03 03:13:12', 4, '', 91, NULL, 'null', 'null'),
(72, 5, 0, '2019-06-20 03:49:49', 7, 'please leave the package at the front door', 185, 'ch_1EnHHKDxXQI5tIHyrilyoO1B', 'card', 'delivery'),
(113, 5, 1, '2019-07-03 03:11:15', 4, '', 119, NULL, 'cash', 'pickup'),
(112, 9, 1, '2018-07-26 22:28:09', 1, '', 7, NULL, 'cash', 'pickup'),
(111, 5, 1, '2019-04-26 21:54:52', 4, '', 45, NULL, 'cash', 'pickup'),
(110, 9, 1, '2018-07-26 10:09:17', 3, '', 56, NULL, 'cash', 'pickup'),
(109, 9, 1, '2019-06-26 10:08:47', 4, '', 0, NULL, 'cash', 'pickup'),
(108, 9, 1, '2019-06-26 10:08:25', 4, '', 92, NULL, 'cash', 'pickup'),
(107, 9, 1, '2019-06-26 10:07:56', 4, '', 10, NULL, 'cash', 'pickup'),
(105, 9, 1, '2018-08-26 09:48:18', 4, '', 100, NULL, 'cash', 'pickup'),
(104, 9, 1, '2018-07-26 09:47:53', 5, '', 21, NULL, 'cash', 'pickup'),
(103, 9, 1, '2019-01-26 09:47:30', 5, '', 29, NULL, 'cash', 'pickup'),
(102, 9, 1, '2018-10-26 09:47:02', 4, '', 38, NULL, 'cash', 'pickup'),
(101, 9, 1, '2018-09-26 09:46:41', 4, '', 120, NULL, 'cash', 'pickup'),
(100, 9, 1, '2018-12-26 09:46:13', 4, '', 40, NULL, 'cash', 'pickup'),
(99, 9, 1, '2018-11-26 09:45:49', 4, '', 127, NULL, 'cash', 'pickup'),
(127, 5, 0, '2019-07-10 23:42:26', 0, NULL, 0, NULL, NULL, NULL),
(126, 5, 0, '2019-07-10 23:42:20', 0, NULL, 0, NULL, NULL, NULL),
(93, 6, 0, '2019-07-04 03:41:15', 4, '', 75, NULL, 'null', 'null'),
(94, 8, 0, '2019-07-03 03:12:47', 5, '', 189, NULL, 'null', 'null'),
(95, 5, 1, '2019-06-24 02:04:02', 1, '', 8, NULL, 'cash', 'pickup'),
(96, 5, 1, '2019-06-26 03:28:18', 4, 'Updating status testing', 102, NULL, 'cash', 'pickup'),
(97, 5, 1, '2019-06-26 03:28:57', 3, 'Updating testing 2', 100, NULL, 'cash', 'pickup'),
(98, 5, 1, '2019-06-26 03:29:46', 6, 'Hi!! can I pay card at the store?', 93, NULL, 'cash', 'pickup'),
(129, 0, 0, '2019-07-11 01:50:32', 0, NULL, 0, NULL, NULL, NULL),
(130, 5, 0, '2019-07-11 01:50:44', 0, NULL, 0, NULL, NULL, NULL),
(131, 5, 0, '2019-07-11 01:50:59', 0, NULL, 0, NULL, NULL, NULL),
(132, 5, 0, '2019-07-11 01:51:49', 0, NULL, 0, NULL, NULL, NULL),
(133, 0, 0, '2019-07-11 03:33:29', 0, NULL, 0, NULL, NULL, NULL),
(134, 0, 0, '2019-07-11 03:33:57', 0, NULL, 0, NULL, NULL, NULL),
(135, 0, 0, '2019-07-11 03:35:02', 0, NULL, 0, NULL, NULL, NULL),
(136, 8, 0, '2019-07-11 23:16:47', 1, '', 65, NULL, 'null', 'null');

-- --------------------------------------------------------

--
-- 테이블 구조 `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productID` int(20) NOT NULL AUTO_INCREMENT,
  `productName` varchar(45) NOT NULL,
  `price` double DEFAULT NULL,
  `discountprice` double DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `categoryID` int(20) NOT NULL,
  `brandID` int(20) NOT NULL,
  PRIMARY KEY (`productID`),
  KEY `categoryID` (`categoryID`),
  KEY `brandID` (`brandID`)
) ENGINE=InnoDB AUTO_INCREMENT=10023 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `product`
--

INSERT INTO `product` (`productID`, `productName`, `price`, `discountprice`, `img`, `categoryID`, `brandID`) VALUES
(10003, 'Sawmill Signiture', 12.5, 9.5, 'coolslight.png', 3, 2),
(10004, 'Asahi light', 8.5, 7.5, 'asahi.png', 2, 1),
(10005, 'Asahi can', 8, 6.5, 'asahican.png', 3, 2),
(10006, 'Blanche Classic', 13, 9.5, 'blanche.png', 1, 3),
(10007, 'Tranditional Blond', 13, 10.5, 'traditionalblond.png', 1, 3),
(10009, 'Sawmill Signiture', 12.5, 9.5, 'coolslight.png', 2, 2),
(10010, 'Asahi light', 8.5, 7.5, 'asahi.png', 1, 1),
(10011, 'Asahi can', 8, 6.5, 'asahican.png', 1, 2),
(10012, 'Blanche Classic', 13, 9.5, 'blanche.png', 3, 3),
(10013, 'Tranditional Blond', 13, 10.5, 'traditionalblond.png', 1, 3),
(10014, 'IPA Ca,den Classic', 9, 8.5, 'camden.png', 1, 3),
(10015, 'punky brew Classic', 7, 6.5, 'punk.png', 1, 3),
(10016, 'punky brew Classic', 7, 6.5, 'punk.png', 3, 2),
(10017, 'Mollys Cradle', 25, 18, 'MollysCradle.png', 7, 1),
(10018, 'Mollys shiraz', 25, 19.5, 'CradleShiraz.png', 7, 1),
(10019, 'Mollys Cradle', 25, 18, 'MathieClaudine.png', 7, 1),
(10020, 'Mollys Merlot', 27, 22, 'MollysMerlot.png', 7, 1),
(10021, 'Mollys bundle', 95, 85, 'ChineseNewyearbundle.png', 7, 2),
(10022, 'Nonsale Product', 30, NULL, 'Hungary.png', 8, 2);

--
-- 트리거 `product`
--
DROP TRIGGER IF EXISTS `after_product_inserted`;
DELIMITER $$
CREATE TRIGGER `after_product_inserted` AFTER INSERT ON `product` FOR EACH ROW begin
			insert into stocklist (productID, whID)
            values (new.productID, 1), (new.productID, 2), (new.productID, 3), (new.productID, 4), (new.productID, 5), (new.productID, 6), (new.productID, 7), (new.productID, 8), (new.productID, 9), (new.productID, 10), (new.productID, 11);
		end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 테이블 구조 `specials`
--

DROP TABLE IF EXISTS `specials`;
CREATE TABLE IF NOT EXISTS `specials` (
  `specialId` int(20) NOT NULL AUTO_INCREMENT,
  `specialName` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `specialType` tinyint(4) NOT NULL,
  `specialPrice` double DEFAULT NULL,
  `specialInfo` text NOT NULL,
  `specialImg` varchar(20) NOT NULL,
  `startTime` varchar(20) DEFAULT NULL,
  `finishTime` varchar(20) DEFAULT NULL,
  `productID` int(20) DEFAULT NULL,
  PRIMARY KEY (`specialId`),
  KEY `productID` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `specials`
--

INSERT INTO `specials` (`specialId`, `specialName`, `specialType`, `specialPrice`, `specialInfo`, `specialImg`, `startTime`, `finishTime`, `productID`) VALUES
(1, NULL, 1, 30, 'Meet your massive deals here', 'liquor17.jpg', NULL, NULL, NULL),
(3, NULL, 1, 13, '2+1 Event! get you authentic liquor', 'liquor1.jpg', NULL, NULL, NULL),
(61, 'Mollys Merlot', 2, 22, 'KK special', 'MollysMerlot.png', NULL, NULL, 10020),
(59, 'Alaa Special', 1, 50, '', 'banner4.jpg', NULL, NULL, NULL),
(60, 'Mollys Merlot', 2, 22, 'Test Specials', 'MollysMerlot.png', NULL, NULL, 10020),
(56, 'Mollys Merlot', 2, 22, 'JAMES GOOD JOB', 'MollysMerlot.png', NULL, NULL, 10020),
(36, 'Sawmill Signiture', 2, 9.5, '2+1= Event! check your cart', 'coolslight.png', NULL, NULL, 10003),
(47, 'Tranditional Blond', 2, 10.5, 'Traditional house beer with no 20% off', 'traditionalblond.png', NULL, NULL, 10013),
(38, 'Asahi light', 2, 7.5, 'text input', 'asahi.png', NULL, NULL, 10004),
(53, 'punky brew Classic', 2, 6.5, 'James Damn!!', 'punk.png', NULL, NULL, 10015),
(41, 'Asahi can', 2, 6.5, 'Authentic Japanese beer Event\r\nfine more now!', 'asahican.png', NULL, NULL, 10005);

-- --------------------------------------------------------

--
-- 테이블 구조 `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `index` int(20) NOT NULL AUTO_INCREMENT,
  `whID` int(20) NOT NULL,
  `userID` int(20) NOT NULL,
  PRIMARY KEY (`index`),
  KEY `whID` (`whID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `staff`
--

INSERT INTO `staff` (`index`, `whID`, `userID`) VALUES
(1, 1, 6),
(2, 1, 8),
(3, 2, 10);

-- --------------------------------------------------------

--
-- 테이블 구조 `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `statusID` int(20) NOT NULL,
  `statusName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `status`
--

INSERT INTO `status` (`statusID`, `statusName`) VALUES
(0, 'unpaid'),
(1, 'paid'),
(2, 'processing'),
(3, 'ready to pickup'),
(4, 'completed'),
(5, 'cancelled'),
(6, 'pay by cash'),
(7, 'shipping');

-- --------------------------------------------------------

--
-- 테이블 구조 `stocklist`
--

DROP TABLE IF EXISTS `stocklist`;
CREATE TABLE IF NOT EXISTS `stocklist` (
  `listIndex` int(20) NOT NULL AUTO_INCREMENT,
  `productID` int(20) NOT NULL,
  `quantity` int(20) DEFAULT NULL,
  `whID` int(20) NOT NULL,
  PRIMARY KEY (`listIndex`),
  KEY `productID` (`productID`),
  KEY `whID` (`whID`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `stocklist`
--

INSERT INTO `stocklist` (`listIndex`, `productID`, `quantity`, `whID`) VALUES
(1, 10003, NULL, 1),
(2, 10003, NULL, 2),
(3, 10003, NULL, 3),
(4, 10003, NULL, 4),
(5, 10003, NULL, 5),
(6, 10003, NULL, 6),
(7, 10003, NULL, 7),
(8, 10003, NULL, 8),
(9, 10003, NULL, 9),
(10, 10003, NULL, 10),
(11, 10003, NULL, 11),
(12, 10004, NULL, 1),
(13, 10004, NULL, 2),
(14, 10004, NULL, 3),
(15, 10004, NULL, 4),
(16, 10004, NULL, 5),
(17, 10004, NULL, 6),
(18, 10004, NULL, 7),
(19, 10004, NULL, 8),
(20, 10004, NULL, 9),
(21, 10004, NULL, 10),
(22, 10004, NULL, 11),
(23, 10005, NULL, 1),
(24, 10005, NULL, 2),
(25, 10005, NULL, 3),
(26, 10005, NULL, 4),
(27, 10005, NULL, 5),
(28, 10005, NULL, 6),
(29, 10005, NULL, 7),
(30, 10005, NULL, 8),
(31, 10005, NULL, 9),
(32, 10005, NULL, 10),
(33, 10005, NULL, 11),
(34, 10006, NULL, 1),
(35, 10006, NULL, 2),
(36, 10006, NULL, 3),
(37, 10006, NULL, 4),
(38, 10006, NULL, 5),
(39, 10006, NULL, 6),
(40, 10006, NULL, 7),
(41, 10006, NULL, 8),
(42, 10006, NULL, 9),
(43, 10006, NULL, 10),
(44, 10006, NULL, 11),
(45, 10007, NULL, 1),
(46, 10007, NULL, 2),
(47, 10007, NULL, 3),
(48, 10007, NULL, 4),
(49, 10007, NULL, 5),
(50, 10007, NULL, 6),
(51, 10007, NULL, 7),
(52, 10007, NULL, 8),
(53, 10007, NULL, 9),
(54, 10007, NULL, 10),
(55, 10007, NULL, 11),
(56, 10009, NULL, 1),
(57, 10009, NULL, 2),
(58, 10009, NULL, 3),
(59, 10009, NULL, 4),
(60, 10009, NULL, 5),
(61, 10009, NULL, 6),
(62, 10009, NULL, 7),
(63, 10009, NULL, 8),
(64, 10009, NULL, 9),
(65, 10009, NULL, 10),
(66, 10009, NULL, 11),
(67, 10010, NULL, 1),
(68, 10010, NULL, 2),
(69, 10010, NULL, 3),
(70, 10010, NULL, 4),
(71, 10010, NULL, 5),
(72, 10010, NULL, 6),
(73, 10010, NULL, 7),
(74, 10010, NULL, 8),
(75, 10010, NULL, 9),
(76, 10010, NULL, 10),
(77, 10010, NULL, 11),
(78, 10011, NULL, 1),
(79, 10011, NULL, 2),
(80, 10011, NULL, 3),
(81, 10011, NULL, 4),
(82, 10011, NULL, 5),
(83, 10011, NULL, 6),
(84, 10011, NULL, 7),
(85, 10011, NULL, 8),
(86, 10011, NULL, 9),
(87, 10011, NULL, 10),
(88, 10011, NULL, 11),
(89, 10012, NULL, 1),
(90, 10012, NULL, 2),
(91, 10012, NULL, 3),
(92, 10012, NULL, 4),
(93, 10012, NULL, 5),
(94, 10012, NULL, 6),
(95, 10012, NULL, 7),
(96, 10012, NULL, 8),
(97, 10012, NULL, 9),
(98, 10012, NULL, 10),
(99, 10012, NULL, 11),
(100, 10013, NULL, 1),
(101, 10013, NULL, 2),
(102, 10013, NULL, 3),
(103, 10013, NULL, 4),
(104, 10013, NULL, 5),
(105, 10013, NULL, 6),
(106, 10013, NULL, 7),
(107, 10013, NULL, 8),
(108, 10013, NULL, 9),
(109, 10013, NULL, 10),
(110, 10013, NULL, 11),
(111, 10014, NULL, 1),
(112, 10014, NULL, 2),
(113, 10014, NULL, 3),
(114, 10014, NULL, 4),
(115, 10014, NULL, 5),
(116, 10014, NULL, 6),
(117, 10014, NULL, 7),
(118, 10014, NULL, 8),
(119, 10014, NULL, 9),
(120, 10014, NULL, 10),
(121, 10014, NULL, 11),
(122, 10015, NULL, 1),
(123, 10015, NULL, 2),
(124, 10015, NULL, 3),
(125, 10015, NULL, 4),
(126, 10015, NULL, 5),
(127, 10015, NULL, 6),
(128, 10015, NULL, 7),
(129, 10015, NULL, 8),
(130, 10015, NULL, 9),
(131, 10015, NULL, 10),
(132, 10015, NULL, 11),
(133, 10003, NULL, 1),
(134, 10003, NULL, 2),
(135, 10003, NULL, 3),
(136, 10003, NULL, 4),
(137, 10003, NULL, 5),
(138, 10003, NULL, 6),
(139, 10003, NULL, 7),
(140, 10003, NULL, 8),
(141, 10003, NULL, 9),
(142, 10003, NULL, 10),
(143, 10003, NULL, 11),
(144, 10004, NULL, 1),
(145, 10004, NULL, 2),
(146, 10004, NULL, 3),
(147, 10004, NULL, 4),
(148, 10004, NULL, 5),
(149, 10004, NULL, 6),
(150, 10004, NULL, 7),
(151, 10004, NULL, 8),
(152, 10004, NULL, 9),
(153, 10004, NULL, 10),
(154, 10004, NULL, 11),
(155, 10005, NULL, 1),
(156, 10005, NULL, 2),
(157, 10005, NULL, 3),
(158, 10005, NULL, 4),
(159, 10005, NULL, 5),
(160, 10005, NULL, 6),
(161, 10005, NULL, 7),
(162, 10005, NULL, 8),
(163, 10005, NULL, 9),
(164, 10005, NULL, 10),
(165, 10005, NULL, 11),
(166, 10006, NULL, 1),
(167, 10006, NULL, 2),
(168, 10006, NULL, 3),
(169, 10006, NULL, 4),
(170, 10006, NULL, 5),
(171, 10006, NULL, 6),
(172, 10006, NULL, 7),
(173, 10006, NULL, 8),
(174, 10006, NULL, 9),
(175, 10006, NULL, 10),
(176, 10006, NULL, 11),
(177, 10007, NULL, 1),
(178, 10007, NULL, 2),
(179, 10007, NULL, 3),
(180, 10007, NULL, 4),
(181, 10007, NULL, 5),
(182, 10007, NULL, 6),
(183, 10007, NULL, 7),
(184, 10007, NULL, 8),
(185, 10007, NULL, 9),
(186, 10007, NULL, 10),
(187, 10007, NULL, 11),
(188, 10009, NULL, 1),
(189, 10009, NULL, 2),
(190, 10009, NULL, 3),
(191, 10009, NULL, 4),
(192, 10009, NULL, 5),
(193, 10009, NULL, 6),
(194, 10009, NULL, 7),
(195, 10009, NULL, 8),
(196, 10009, NULL, 9),
(197, 10009, NULL, 10),
(198, 10009, NULL, 11),
(199, 10010, NULL, 1),
(200, 10010, NULL, 2),
(201, 10010, NULL, 3),
(202, 10010, NULL, 4),
(203, 10010, NULL, 5),
(204, 10010, NULL, 6),
(205, 10010, NULL, 7),
(206, 10010, NULL, 8),
(207, 10010, NULL, 9),
(208, 10010, NULL, 10),
(209, 10010, NULL, 11),
(210, 10011, NULL, 1),
(211, 10011, NULL, 2),
(212, 10011, NULL, 3),
(213, 10011, NULL, 4),
(214, 10011, NULL, 5),
(215, 10011, NULL, 6),
(216, 10011, NULL, 7),
(217, 10011, NULL, 8),
(218, 10011, NULL, 9),
(219, 10011, NULL, 10),
(220, 10011, NULL, 11),
(221, 10012, NULL, 1),
(222, 10012, NULL, 2),
(223, 10012, NULL, 3),
(224, 10012, NULL, 4),
(225, 10012, NULL, 5),
(226, 10012, NULL, 6),
(227, 10012, NULL, 7),
(228, 10012, NULL, 8),
(229, 10012, NULL, 9),
(230, 10012, NULL, 10),
(231, 10012, NULL, 11),
(232, 10013, NULL, 1),
(233, 10013, NULL, 2),
(234, 10013, NULL, 3),
(235, 10013, NULL, 4),
(236, 10013, NULL, 5),
(237, 10013, NULL, 6),
(238, 10013, NULL, 7),
(239, 10013, NULL, 8),
(240, 10013, NULL, 9),
(241, 10013, NULL, 10),
(242, 10013, NULL, 11),
(243, 10014, NULL, 1),
(244, 10014, NULL, 2),
(245, 10014, NULL, 3),
(246, 10014, NULL, 4),
(247, 10014, NULL, 5),
(248, 10014, NULL, 6),
(249, 10014, NULL, 7),
(250, 10014, NULL, 8),
(251, 10014, NULL, 9),
(252, 10014, NULL, 10),
(253, 10014, NULL, 11),
(254, 10015, NULL, 1),
(255, 10015, NULL, 2),
(256, 10015, NULL, 3),
(257, 10015, NULL, 4),
(258, 10015, NULL, 5),
(259, 10015, NULL, 6),
(260, 10015, NULL, 7),
(261, 10015, NULL, 8),
(262, 10015, NULL, 9),
(263, 10015, NULL, 10),
(264, 10015, NULL, 11),
(265, 10016, NULL, 1),
(266, 10016, NULL, 2),
(267, 10016, NULL, 3),
(268, 10016, NULL, 4),
(269, 10016, NULL, 5),
(270, 10016, NULL, 6),
(271, 10016, NULL, 7),
(272, 10016, NULL, 8),
(273, 10016, NULL, 9),
(274, 10016, NULL, 10),
(275, 10016, NULL, 11),
(276, 10017, NULL, 1),
(277, 10017, NULL, 2),
(278, 10017, NULL, 3),
(279, 10017, NULL, 4),
(280, 10017, NULL, 5),
(281, 10017, NULL, 6),
(282, 10017, NULL, 7),
(283, 10017, NULL, 8),
(284, 10017, NULL, 9),
(285, 10017, NULL, 10),
(286, 10017, NULL, 11),
(287, 10018, NULL, 1),
(288, 10018, NULL, 2),
(289, 10018, NULL, 3),
(290, 10018, NULL, 4),
(291, 10018, NULL, 5),
(292, 10018, NULL, 6),
(293, 10018, NULL, 7),
(294, 10018, NULL, 8),
(295, 10018, NULL, 9),
(296, 10018, NULL, 10),
(297, 10018, NULL, 11),
(298, 10019, NULL, 1),
(299, 10019, NULL, 2),
(300, 10019, NULL, 3),
(301, 10019, NULL, 4),
(302, 10019, NULL, 5),
(303, 10019, NULL, 6),
(304, 10019, NULL, 7),
(305, 10019, NULL, 8),
(306, 10019, NULL, 9),
(307, 10019, NULL, 10),
(308, 10019, NULL, 11),
(309, 10020, NULL, 1),
(310, 10020, NULL, 2),
(311, 10020, NULL, 3),
(312, 10020, NULL, 4),
(313, 10020, NULL, 5),
(314, 10020, NULL, 6),
(315, 10020, NULL, 7),
(316, 10020, NULL, 8),
(317, 10020, NULL, 9),
(318, 10020, NULL, 10),
(319, 10020, NULL, 11),
(320, 10021, NULL, 1),
(321, 10021, NULL, 2),
(322, 10021, NULL, 3),
(323, 10021, NULL, 4),
(324, 10021, NULL, 5),
(325, 10021, NULL, 6),
(326, 10021, NULL, 7),
(327, 10021, NULL, 8),
(328, 10021, NULL, 9),
(329, 10021, NULL, 10),
(330, 10021, NULL, 11),
(331, 10022, NULL, 1),
(332, 10022, NULL, 2),
(333, 10022, NULL, 3),
(334, 10022, NULL, 4),
(335, 10022, NULL, 5),
(336, 10022, NULL, 6),
(337, 10022, NULL, 7),
(338, 10022, NULL, 8),
(339, 10022, NULL, 9),
(340, 10022, NULL, 10),
(341, 10022, NULL, 11);

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(20) NOT NULL AUTO_INCREMENT,
  `typeID` int(20) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `companyName` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `resettoken` char(255) DEFAULT NULL,
  `resettime` date DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `typeID` (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `users`
--

INSERT INTO `users` (`userID`, `typeID`, `firstName`, `lastName`, `companyName`, `password`, `email`, `phone`, `address`) VALUES
(2, 2, 'Emma', 'Ham', '', '1234', 'ham8821@gmail.com', 21021021, '6bowman road, Forrest Hill, Auckland 0620'),
(6, 1, 'Emma', 'Ham', 'Aspire2 international', '1234', 'ham38538821@gmail.com', 1234, '6bowman road, Forrest Hill, Auckland 0620'),
(5, 3, 'Junbo', 'Zhang', 'Aspire2 international', '1234', 'junboz598@gmail.com', 1234124, '6bowman road, Forrest Hill, Auckland 0620'),
(0, 0, 'admin', '', 'liquor library', '1234', 'admin@gmail.com', 123412341234, 'liquor library address'),
(8, 1, 'warehouse', 'admin', 'branch1', '1234', 'branch1@gmail.com', 12341234, 'address'),
(9, 3, 'Diego', 'H', 'Datacom', '1234', 'test@gmail.com', 12341234, NULL),
(10, 1, 'admin', 'branch2', 'branch2', '1234', 'branch2@gmail.com', 12345654, '184 Archers Rd');

-- --------------------------------------------------------

--
-- 테이블 구조 `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `typeID` int(20) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `usertype`
--

INSERT INTO `usertype` (`typeID`, `typeName`) VALUES
(1, 'Branch warehouse'),
(2, 'Business partner'),
(3, 'Individual'),
(0, 'admin');

-- --------------------------------------------------------

--
-- 테이블 구조 `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE IF NOT EXISTS `warehouse` (
  `whID` int(20) NOT NULL AUTO_INCREMENT,
  `typeID` int(20) DEFAULT NULL,
  `whName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`whID`),
  KEY `typeID` (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `warehouse`
--

INSERT INTO `warehouse` (`whID`, `typeID`, `whName`, `address`, `phone`, `email`) VALUES
(1, 1, 'Auckland CBD', '6hobson', 0, 'hamfd@gmail.com'),
(2, 1, '4575abd', '1234567', 252144, 'abd@gmail.com'),
(3, 1, 'Newmarket', '7symonds', 252144, 'abd@gmail.com'),
(4, 1, 'Takapuna', 'bowman456', 252144, 'abd@gmail.com'),
(5, 1, 'Albany', '185 archers', 252144, 'abd@gmail.com'),
(6, 1, 'branch6', '2 asdf', 12341234, 'asdf@asdf.com'),
(7, 1, '7777', '45 Asdsdf', 1234567234, '23sdff@asdf.com'),
(8, 1, '8888', '75 wert', 12456734, '2435asdf@asdf.com'),
(9, 1, '9999', '67 zxcv', 12345234, '34534@asdf.com'),
(10, 1, '1010', '23 asdf', 15878834, '234sdf@asdf.com'),
(11, 1, '1010', '23 fdfddf', 2108216229, 'ham@asdf.com'),
(0, 0, 'main warehouse', 'main warehouse address', 0, 'admin@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
