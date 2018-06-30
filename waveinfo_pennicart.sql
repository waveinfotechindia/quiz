-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2018 at 06:10 AM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waveinfo_pennicart`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `country` varchar(222) NOT NULL,
  `script` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `advertise_position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_commission`
--

CREATE TABLE `affiliate_commission` (
  `id` int(11) NOT NULL,
  `network` varchar(255) NOT NULL DEFAULT 'Vcommission',
  `txnt_id` varchar(255) NOT NULL,
  `payoutid` varchar(255) NOT NULL,
  `offer_id` varchar(255) NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offerurl` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `payout` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliate_commission`
--

INSERT INTO `affiliate_commission` (`id`, `network`, `txnt_id`, `payoutid`, `offer_id`, `offer_name`, `offerurl`, `userId`, `payout`, `datetime`, `status`, `ip_address`) VALUES
(40, 'Vcommission', '1028e43f4959fa2778306fd5f3427a', '', '2796', 'eBay.in CPS - India (New)', '', '', '0', '2017-01-23 03:50:28', 'approved', '47.30.229.164'),
(41, 'Vcommission', '102c8d1cb92fb59fa92df99fb14711', '', '412', 'Flipkart.com CPS - India', '', '', '2.6656', '2016-10-17 08:19:32', 'approved', '111.118.214.5'),
(42, 'Vcommission', '1029e10f6478fda38f673546943aa4', '', '412', 'Flipkart.com CPS - India', '', '', '5.5328', '2017-04-19 09:44:07', 'approved', '108.179.198.222'),
(43, 'Vcommission', '10203b5b56fd69600d532dd16886e8', '', '412', 'Flipkart.com CPS - India', '', '', '0.76993', '2017-01-23 12:08:08', 'approved', '108.179.198.222'),
(44, 'Vcommission', '1020b1153a6f103a56c70627a672dc', '', '412', 'Flipkart.com CPS - India', '', '', '7.693', '2017-04-19 19:28:01', 'approved', '108.179.198.222'),
(45, 'Vcommission', '', '', '1622', 'FreeCharge.in CPS - India', '', '', '0.525', '2016-12-03 00:00:00', 'approved', NULL),
(46, 'Vcommission', '102d1793e2bf9d15efaf512e07f353', '', '1480', 'Healthkart.com CPS - India', '', '', '6.972', '2017-01-14 09:08:33', 'approved', '47.30.176.147'),
(47, 'Vcommission', '102a153e6d2f03a81bbf714f42e516', '', '126', 'Jabong.com CPS - India', '', 'guest', '11.988', '2016-12-03 13:30:40', 'approved', '42.111.110.198'),
(48, 'Vcommission', '1028e67425b9e18563880428d85bef', '', '300', 'Khojdeal.com CPD - India', '', '', '1', '2016-10-17 07:26:58', 'approved', '116.75.223.88'),
(49, 'Vcommission', '1023843b7b740b3d40b8d345890449', '', '2239', 'Zotezo.com CPS - India', '', '', '13.6395', '2017-04-14 08:46:39', 'approved', '47.30.125.134');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `cate` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `cate`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(2, 'Apple', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(3, 'Allen Solly', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(4, 'Air India', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(5, 'Arrow', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(6, 'Blackberry', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(7, 'Bajaj', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(8, 'Biba', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(9, 'Bata', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(10, 'Bombay Dyeing', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(11, 'Bluestone', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(12, 'Canon', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(13, 'Clovia', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(14, 'Dell', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(15, 'Fossil', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(16, 'Flying Machine', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(17, 'Fila', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(18, 'Fabindia', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(19, 'Godrej', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(20, 'GAS', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(21, 'HP', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(22, 'HTC', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(23, 'Hidesign', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(24, 'Indigo', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(25, 'Jockey', '2017-01-10 12:49:10', '0000-00-00 00:00:00'),
(26, 'Jet Airways', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(27, 'LG', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(28, 'Lakme', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(29, 'Lenovo', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(30, 'Levi\'s', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(31, 'Lee Cooper', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(32, 'Micromax', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(33, 'Monte Carlo', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(34, 'Nike', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(35, 'Philips', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(36, 'Prestige', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(37, 'Pigeon', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(38, 'Pepe Jeans', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(39, 'Provogue', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(40, 'Panasonic', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(41, 'Puma', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(42, 'Patanjali', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(43, 'Ray Ban', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(44, 'Reebok', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(45, 'Roadster', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(46, 'Samsung', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(47, 'Spicejet', '2017-01-10 12:52:05', '0000-00-00 00:00:00'),
(48, 'Sony', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(49, 'Sparx', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(50, 'Titan', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(51, 'Tanishq', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(52, 'Ustraa', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(53, 'United Colors of Benetton', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(54, 'Vogue', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(55, 'Vincent Chase', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(56, 'Woodland', '2017-01-10 12:53:16', '0000-00-00 00:00:00'),
(57, 'Wildcraft', '2017-01-10 12:53:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `category_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `popular` int(1) NOT NULL,
  `featured_listing` int(1) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_id`, `cat_parent`, `category_icon`, `category_name`, `category_slug`, `popular`, `featured_listing`, `image`, `status`) VALUES
(1, 101, 0, 'fa-camera', 'Electronics', 'electronics', 0, 0, '', 0),
(2, 102, 101, '', 'Cameras & Accessories', 'cameras-and-accessories', 0, 0, '', 0),
(3, 103, 101, '', 'Audio, Video & Home Entertainment', 'audio-video-and-home-entertainment', 0, 0, '', 0),
(4, 104, 101, '', 'Computer Accessories', 'computer-accessories', 0, 0, '', 0),
(5, 105, 101, '', 'Laptops and  Desktops', 'laptops-and-desktops', 0, 0, '', 0),
(6, 106, 101, '', 'Mobile & Tablets', 'mobile-and-tablets', 0, 0, '', 0),
(7, 107, 101, '', 'Mobiles & Tablet Accessories', 'mobiles-and-tablet-accessories', 0, 0, '', 0),
(8, 108, 101, '', 'Televisions', 'televisions', 0, 0, '', 0),
(9, 109, 0, 'fa-female', 'Fashion', 'fashion', 0, 0, '', 0),
(10, 110, 109, '', 'Fashion Accessories', 'fashion-accessories', 0, 0, '', 0),
(11, 111, 109, '', 'Clothing', 'clothing', 0, 0, '', 0),
(12, 112, 109, '', 'Jewellery', 'jewellery', 0, 0, '', 0),
(13, 113, 109, '', 'Nightwear & Lingerie', 'nightwear-and-lingerie', 0, 0, '', 0),
(14, 114, 109, '', 'Sunglasses & Contact Lens', 'sunglasses-and-contact-lens', 0, 0, '', 0),
(15, 115, 109, '', 'Watches', 'watches', 0, 0, '', 0),
(16, 116, 109, '', 'Footwear', 'footwear', 0, 0, '', 0),
(17, 117, 109, '', 'Luggage & Bags', 'luggage-and-bags', 0, 0, '', 0),
(18, 118, 0, 'fa-adjust', 'Baby & Kids', 'baby-and-kids', 0, 0, '', 0),
(19, 119, 118, '', 'Baby Footwear', 'baby-footwear', 0, 0, '', 0),
(20, 120, 118, '', 'Baby Care', 'baby-care', 0, 0, '', 0),
(21, 121, 118, '', 'Baby & Kids Clothing', 'baby-and-kids-clothing', 0, 0, 'baby-and-kids-clothing_1487411782-s.jpg', 0),
(22, 122, 118, '', 'Diapering', 'diapering', 0, 0, '', 0),
(23, 123, 118, '', 'Baby & Kids Fashion Accessories', 'baby-and-kids-fashion-accessories', 0, 0, '', 0),
(24, 124, 118, '', 'Toys', 'toys', 0, 0, '', 0),
(25, 125, 0, 'fa-home', 'Home & Kitchen', 'home-and-kitchen', 0, 0, '', 0),
(26, 126, 125, '', 'Furniture', 'furniture', 0, 0, '', 0),
(27, 127, 125, '', 'Home Decor & Furnishing', 'home-decor-and-furnishing', 0, 0, '', 0),
(28, 128, 125, '', 'Home Appliances', 'home-appliances', 0, 0, '', 0),
(29, 129, 125, '', 'Kitchen Appliances', 'kitchen-appliances', 0, 0, '', 0),
(30, 130, 125, '', 'Kitchenware & Dinnerware', 'kitchenware-and-dinnerware', 0, 0, '', 0),
(31, 131, 0, 'fa-tachometer', 'Beauty, Personal & Health Care', 'beauty-personal-and-health-care', 0, 0, '', 0),
(32, 132, 131, '', 'Beauty & Personal Care', 'beauty-and-personal-care', 0, 0, '', 0),
(33, 133, 131, '', 'Perfumes & Deodorants', 'perfumes-and-deodorants', 0, 0, '', 0),
(34, 134, 131, '', 'Personal Grooming Appliances', 'personal-grooming-appliances', 0, 0, '', 0),
(35, 135, 131, '', 'Sports & Fitness Equipment', 'sports-and-fitness-equipment', 0, 0, '', 0),
(36, 136, 131, '', 'Medicine & Health Supplement', 'medicine-and-health-supplement', 0, 0, '', 0),
(37, 137, 131, '', 'Health Care Devices', 'health-care-devices', 0, 0, '', 0),
(38, 138, 0, 'fa-money', 'Recharge & Bill Payment', 'recharge-and-bill-payment', 0, 0, '', 0),
(39, 139, 138, '', 'Mobile, DTH Recharge', 'mobile-dth-recharge', 0, 0, '', 0),
(40, 140, 138, '', 'Bill Payment', 'bill-payment', 0, 0, '', 0),
(41, 141, 0, 'fa-plane', 'Travel', 'travel', 0, 0, '', 0),
(42, 142, 141, '', 'Bus', 'bus', 0, 0, '', 0),
(43, 143, 141, '', 'Flights', 'flights', 0, 0, '', 0),
(44, 144, 141, '', 'Holiday Packages', 'holiday-packages', 0, 0, '', 0),
(45, 145, 141, '', 'Hotels', 'hotels', 0, 0, '', 0),
(46, 146, 141, '', 'Cab & Auto', 'cab-and-auto', 0, 0, '', 0),
(47, 147, 0, 'fa-barcode', 'Grocery, Food & Beverages', 'grocery-food-and-beverages', 0, 0, '', 0),
(48, 148, 147, '', 'Food & Beverages', 'food-and-beverages', 0, 0, '', 0),
(49, 149, 147, '', 'Chocolates, Cakes & Sweets', 'chocolates-cakes-and-sweets', 0, 0, '', 0),
(50, 150, 147, '', 'Restaurants', 'restaurants', 0, 0, '', 0),
(51, 151, 147, '', 'Grocery', 'grocery', 0, 0, '', 0),
(52, 152, 0, 'fa-suitcase', 'Office Supplies & Stationaries', 'office-supplies-and-stationaries', 0, 0, '', 0),
(53, 153, 152, '', 'Education And Stationaries', 'education-and-stationaries', 0, 0, '', 0),
(54, 154, 152, '', 'Books', 'books', 0, 0, '', 0),
(55, 155, 152, '', 'Office Supplies', 'office-supplies', 0, 0, '', 0),
(56, 156, 152, '', 'Custom Products', 'custom-products', 0, 0, '', 0),
(57, 157, 0, 'fa-stack-exchange', 'Entertainment, Media & Software', 'entertainment-media-and-software', 0, 0, '', 0),
(58, 158, 157, '', 'Music, Movies and Ticket Booking', 'music-movies-and-ticket-booking', 0, 0, '', 0),
(59, 159, 157, '', 'Web Hosting & Domains', 'web-hosting-and-domains', 0, 0, '', 0),
(60, 160, 157, '', 'Software', 'software', 0, 0, '', 0),
(61, 161, 157, '', 'Games & Entertainment', 'games-and-entertainment', 0, 0, '', 0),
(62, 162, 0, 'fa-gift', 'Flowers & Gift Cards', 'flowers-and-gift-cards', 0, 0, '', 0),
(63, 163, 162, '', 'Gifts & Flowers', 'gifts-and-flowers', 0, 0, '', 0),
(64, 164, 162, '', 'Gift Cards', 'gift-cards', 0, 0, '', 0),
(65, 165, 0, 'fa-fire', 'Others', 'others', 0, 0, '', 0),
(66, 166, 165, '', 'Automotive', 'automotive', 0, 0, '', 0),
(67, 167, 165, '', 'Business', 'business', 0, 0, '', 0),
(68, 168, 165, '', 'Wallet & Payment Gateways', 'wallet-and-payment-gateways', 0, 0, '', 0),
(69, 169, 165, '', 'Gardening Products', 'gardening-products', 0, 0, '', 0),
(70, 170, 165, '', 'General Services', 'general-services', 0, 0, '', 0),
(71, 171, 165, '', 'Industrial Supplies', 'industrial-supplies', 0, 0, '', 0),
(72, 172, 165, '', 'Animals & Pet Supplies', 'animals-and-pet-supplies', 0, 0, '', 0),
(73, 173, 0, 'fa-credit-card', 'Bank Specific Offers', 'bank-specific-offers', 0, 0, '', 0),
(74, 174, 173, '', 'HDFC Bank', 'hdfc-bank', 0, 0, '', 0),
(75, 175, 173, '', 'ICICI Bank', 'icici-bank', 0, 0, '', 0),
(76, 176, 173, '', 'SBI Card', 'sbi-card', 0, 0, '', 0),
(77, 177, 173, '', 'AXIS Bank', 'axis-bank', 0, 0, '', 0),
(78, 178, 173, '', 'Citibank', 'citibank', 0, 0, '', 0),
(79, 179, 173, '', 'Kotak Bank', 'kotak-bank', 0, 0, '', 0),
(80, 180, 173, '', 'American Express Bank', 'american-express-bank', 0, 0, '', 0),
(81, 181, 173, '', 'Deutsche Bank', 'deutsche-bank', 0, 0, '', 0),
(82, 182, 173, '', 'IndusInd Bank', 'indusind-bank', 0, 0, '', 0),
(83, 183, 173, '', 'Standard Chartered', 'standard-chartered', 0, 0, '', 0),
(84, 184, 173, '', ' Yes Bank', 'yes-bank', 0, 0, '', 0),
(95, 85, 118, '', 'Dresses 1-2', 'dresses', 0, 0, '', 0),
(96, 96, 141, '', 'aventra', 'aventra', 0, 0, '', 0),
(97, 0, 0, '', 'Apparel and Accessories', 'apparel-and-accessories', 0, 0, '', 0),
(98, 0, 0, '', 'Home and Decor', 'home-and-decor', 0, 0, '', 0),
(99, 0, 0, '', 'Beauty and Personal Care', 'beauty-and-personal-care', 0, 0, '', 0),
(100, 0, 0, '', 'Travel and Tours', 'travel-and-tours', 0, 0, '', 0),
(101, 0, 0, '', 'Other', 'other', 0, 0, '', 0),
(102, 0, 0, '', 'Health', 'health', 0, 0, '', 0),
(103, 0, 0, '', 'Food and Beverages', 'food-and-beverages', 0, 0, '', 0),
(104, 0, 0, '', 'Mobiles and Tablets', 'mobiles-and-tablets', 0, 0, '', 0),
(105, 0, 0, '', 'Innerwear and Swimwear', 'innerwear-and-swimwear', 0, 0, '', 0),
(106, 0, 0, '', 'Flowers and Gifts', 'flowers-and-gifts', 0, 0, '', 0),
(107, 0, 0, '', 'Mobile Recharge and Bill Payment', 'mobile-recharge-and-bill-payment', 0, 0, '', 0),
(108, 0, 0, '', 'Entertainment', 'entertainment', 0, 0, '', 0),
(109, 0, 0, '', 'Miscellaneous', 'miscellaneous', 0, 0, '', 0),
(110, 0, 0, '', 'Deals Of The Day', 'deals_of_the_day', 0, 0, '', 0),
(111, 0, 0, '', 'Deals Of The Day', 'deals_of_the_day', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `on_post` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'INDIA'),
(2, 'UK'),
(3, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `cupowallet`
--

CREATE TABLE `cupowallet` (
  `id` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ListingId` int(11) NOT NULL,
  `store` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(11) NOT NULL,
  `listingType` varchar(100) NOT NULL,
  `featured_listing` int(11) NOT NULL,
  `listing_slug` varchar(255) NOT NULL,
  `cm_cid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `coupon` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `smartLink` varchar(255) NOT NULL,
  `validity_unix` varchar(255) NOT NULL,
  `validity_date` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `final_cat_list` varchar(255) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `terms_conditions` longtext NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `maximum_cashback` varchar(255) NOT NULL,
  `minimum_transaction` varchar(255) NOT NULL,
  `cashbackamnt` varchar(255) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listings_cate`
--

CREATE TABLE `listings_cate` (
  `id` int(10) UNSIGNED NOT NULL,
  `productId` int(11) NOT NULL,
  `sub_cate_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `listings_reviews`
--

CREATE TABLE `listings_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `reviews_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings_voting`
--

CREATE TABLE `listings_voting` (
  `id` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `UserId` int(11) NOT NULL,
  `store` varchar(255) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `lmd_id` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listings_w`
--

CREATE TABLE `listings_w` (
  `id` int(11) NOT NULL,
  `featured_listing` int(11) NOT NULL,
  `listing_slug` varchar(255) NOT NULL,
  `cm_cid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `listingType` varchar(222) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `smartLink` varchar(255) NOT NULL,
  `validity_unix` varchar(255) NOT NULL,
  `validity_date` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `final_cat_list` varchar(255) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listing_gallery`
--

CREATE TABLE `listing_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `local_coupons`
--

CREATE TABLE `local_coupons` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `description` varchar(222) NOT NULL,
  `category` varchar(222) NOT NULL,
  `sub_category` varchar(222) NOT NULL,
  `image` varchar(222) NOT NULL,
  `image1` varchar(222) NOT NULL,
  `image2` varchar(222) NOT NULL,
  `image3` varchar(222) NOT NULL,
  `location` varchar(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `featured` varchar(111) NOT NULL,
  `terms_condition` varchar(222) NOT NULL,
  `how_to_redeem` varchar(222) NOT NULL,
  `price` varchar(222) NOT NULL,
  `discount_price` varchar(222) NOT NULL,
  `end_date` varchar(222) NOT NULL,
  `lat` varchar(222) NOT NULL,
  `lon` varchar(222) NOT NULL,
  `status` varchar(111) NOT NULL DEFAULT 'active',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_coupons`
--

INSERT INTO `local_coupons` (`id`, `user_id`, `title`, `description`, `category`, `sub_category`, `image`, `image1`, `image2`, `image3`, `location`, `address`, `featured`, `terms_condition`, `how_to_redeem`, `price`, `discount_price`, `end_date`, `lat`, `lon`, `status`, `created_on`, `updated_on`) VALUES
(2, 1, 'haircut', 'discount', 'beauty', '112', 'image_1496748498-b.jpg', '', '', '', 'Chandigarh', 'sdfsdfsd', '1', 'haircut', 'fsdfsdfsd', '1200', '40% on all type of hair cut', '2017-10-10', '', '', 'active', '2017-08-16 06:25:53', '0000-00-00 00:00:00'),
(3, 1, 'car', 'discount', 'beauty', '112', 'image_1496748498-b.jpg', '', '', '', 'Chandigarh', 'Ooty, Tamil Nadu, India', '1', 'fsdfsd', 'fsdfsdfsd', '1223', 'fsdfsd', 'sdfsd', '11.4064138', '76.6932438', 'active', '2017-08-17 06:02:48', '0000-00-00 00:00:00'),
(4, 1, 'car', 'discount', 'kids', '112', 'image_1496748498-b.jpg', '', '', '', 'Chandigarh', 'sdfsdfsd', '1', 'fsdfsd', 'fsdfsdfsd', '1223', 'fsdfsd', 'sdfsd', '', '', 'active', '2017-06-19 12:08:45', '0000-00-00 00:00:00'),
(5, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:33:03', '0000-00-00 00:00:00'),
(6, 1, 'fdemo', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:35:50', '0000-00-00 00:00:00'),
(7, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:36:02', '0000-00-00 00:00:00'),
(8, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:36:08', '0000-00-00 00:00:00'),
(9, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:36:15', '0000-00-00 00:00:00'),
(10, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:36:21', '0000-00-00 00:00:00'),
(11, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:36:25', '0000-00-00 00:00:00'),
(12, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:36:29', '0000-00-00 00:00:00'),
(13, 1, 'ffsdf', 'sdfsdf', '125', '127', 'image_1496748498-b.jpg', 'image1_1496989456-b.jpg', 'image2_1496989456-b.jpg', 'image3_1496989456-b.jpg', 'Chandigarh', 'fgdfgf', '1', 'sdfsfd', 'sdfsdfd', '333123', '2312312', '123123123', '', '', 'active', '2017-06-14 10:36:32', '0000-00-00 00:00:00'),
(14, 1, 'Banks', 'all banks', 'Bank Specific Offers', '', 'image_1498298445-b.jpg', 'image1_1498298445-b.jpg', 'image2_1498298445-b.jpg', 'image3_1498298445-b.jpg', 'Chandigarh', 'baus ', '', 'cheap home rates<br>', 'cheap home rates', '120', '50%', '2222-11-11', '', '', 'active', '2017-06-24 10:00:45', '0000-00-00 00:00:00'),
(15, 1, 'Online Food', 'food', 'Grocery, Food & Beverages', '', 'image_1498298716-b.jpg', 'image1_1498298716-b.jpg', 'image2_1498298716-b.jpg', 'image3_1498298717-b.jpg', 'Chandigarh', 'ssecf', '', 'food', 'not', '200', '40% on all items', '2222-10-10', '', '', 'active', '2017-06-24 10:05:17', '0000-00-00 00:00:00'),
(16, 1, 'Mobile recharge in one touch', 'easy mobile recharge', 'Recharge & Bill Payment', '', 'image_1498299055-b.jpg', 'image1_1498299055-b.jpg', 'image2_1498299055-b.jpg', 'image3_1498299055-b.jpg', 'Chandigarh', 'charminar', '', 'non refundable<br>', 'non refundable', '555', '10% discount', '2019-19-05', '', '', 'active', '2017-06-24 10:10:55', '0000-00-00 00:00:00'),
(17, 1, 'Flowers', 'beautifull flowers', 'Flowers & Gift Cards', '', 'image_1498299334-b.jpg', 'image1_1498299334-b.jpg', 'image2_1498299335-b.jpg', 'image3_1498299335-b.jpg', 'Chandigarh', 'kutuminar', '', 'flowers are soul<br>', 'love for flowers<br>', '754', '5% discount', '2019-11-11', '', '', 'active', '2017-06-24 10:15:35', '0000-00-00 00:00:00'),
(18, 1, 'Fashion world', 'fashion and life', 'Fashion', '', 'image_1498299484-b.jpg', 'image1_1498299484-b.jpg', 'image2_1498299485-b.jpg', 'image3_1498299485-b.jpg', 'Chandigarh', 'shivaji', '', 'fahion makes happy everyone<br>', 'you can direct get from stores<br>', '6555', 'flat 60%', '2019-11-12', '', '', 'active', '2017-06-24 10:18:05', '0000-00-00 00:00:00'),
(25, 109, 'nitin', 'nitin coupon', 'Fashion', '', 'image_1528458410-b.jpg', 'image1_1528458410-b.jpg', 'image2_1528458410-b.jpg', 'image3_1528458410-b.jpg', 'Chandigarh', '# 786', '', 'not term or condition', 'don\'t redeem', '1,00,000', 'not discount', '2018-15-12', '', '', 'active', '2018-06-08 12:50:35', '0000-00-00 00:00:00'),
(26, 109, 'fdsfdsf', 'dsfdsfdsfdsfdsf', 'kids', '', 'image_1528459726-b.jpg', 'image1_1528459726-b.jpg', 'image2_1528459726-b.jpg', 'image3_1528459726-b.jpg', 'Chandigarh', '# 1234343', '', 'dsfdsfdsfdsfdsf', 'dsfdsfdsf', '10', 'freeaaa', '2018-10-10', '', '', 'active', '2018-06-08 12:50:39', '0000-00-00 00:00:00'),
(27, 109, 'gdfgfd', 'fgfdgdfg', 'Recharge & Bill Payment', '', 'image_1528460334-b.jpg', '', '', '', 'Chandigarh', '# 1234564', '', 'fgfdgdfgfdgdfg', 'gfdgdfg', '1,00,000.00000', 'not details', '2018-12-10', '', '', 'active', '2018-06-08 12:50:43', '0000-00-00 00:00:00'),
(29, 109, 'change', 'thgfhgf', 'Grocery, Food & Beverages', '', 'image_1528463801-b.jpg', '', '', '', 'Chandigarh', 'hgfhgfh', '', 'hgfhgfhgfh', 'hgfhgfh', 'hgfhgfh', 'gfhgfh', 'gfhgfhgfhgfh', '', '', 'active', '2018-06-08 13:16:41', '0000-00-00 00:00:00'),
(30, 109, 'new', 'thtghhh', 'Grocery, Food & Beverages', '', 'image_1528463959-b.jpg', '', '', '', 'Chandigarh', '# 1234675564567', '', 'jhggfjgfjgfj', 'jhgfjgfj', '1,00,000.00000', 'free', '2018-03-05', '', '', 'active', '2018-06-08 13:22:44', '0000-00-00 00:00:00'),
(31, 109, 'new coupon', 'fghfghf', 'Grocery, Food & Beverages', '', 'image_1528464097-b.jpg', '', '', '', 'Chandigarh', '# 1234', '', 'hdfhdfh', 'hdfhdfh', '1,00,000.00000', 'not details', '2018-15-12', '', '', 'active', '2018-06-08 13:21:37', '0000-00-00 00:00:00'),
(32, 109, 'jtgbsasasas', 'hjjjh', 'Recharge & Bill Payment', '', 'image_1528952462-b.jpg', '', '', '', 'Chandigarh', '# 1234', '', 'ghgjugyt', 'hgjhkmhkjhk', '1,00,000', 'not details', '2018-12-10', '', '', 'active', '2018-06-11 06:13:22', '0000-00-00 00:00:00'),
(34, 109, 'dasdasdasd', 'asdas', 'Flowers & Gift Cards', '', 'image_1528971385-b.jpg', '', '', '', 'Chandigarh', '55353', '', 'dasdasdasd', 'asdasdsad', '45345343', '54%', '12-09-19', '', '', 'active', '2018-06-14 10:16:27', '0000-00-00 00:00:00'),
(36, 1, 'bmbmnb', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed est gravida, pretium purus nec, posuere nulla. Ut at cursus neque, in eleifend tortor. Aenean venenatis fringilla urna, id pellentesque odio pharetra sit', 'Bank Specific Offers', '', 'image_1528975766-b.jpg', 'image1_1530190183-b.jpg', 'image2_1530190206-b.jpg', 'image3_1530190297-b.jpg', 'Chandigarh', 'vcbvcb', '', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed est \r\ngravida, pretium purus nec, posuere nulla. Ut at cursus neque, in \r\neleifend tortor. Aenean venenatis fringilla urna, id pellentesque odio \r\nph', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed est \r\ngravida, pretium purus nec, posuere nulla. Ut at cursus neque, in \r\neleifend tortor. Aenean venenatis fringilla urna, id pellentesque odio \r\nph', '45345343', '54%', '12-09-19', '', '', 'active', '2018-06-14 11:29:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `local_coupon_category`
--

CREATE TABLE `local_coupon_category` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_coupon_category`
--

INSERT INTO `local_coupon_category` (`id`, `name`, `created_on`) VALUES
(0, 'beauty', '2017-06-19 12:06:23'),
(0, 'kids', '2017-06-19 12:06:39'),
(0, 'Bank Specific Offers', '2017-06-24 09:56:05'),
(0, 'Grocery, Food & Beverages', '2017-06-24 09:56:19'),
(0, 'Recharge & Bill Payment', '2017-06-24 09:56:38'),
(0, 'Flowers & Gift Cards', '2017-06-24 09:56:50'),
(0, 'Fashion', '2017-06-24 09:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `local_coupon_location`
--

CREATE TABLE `local_coupon_location` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_coupon_location`
--

INSERT INTO `local_coupon_location` (`id`, `name`, `created_on`) VALUES
(1, 'Chandigarh', '2018-06-14 10:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `location_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `parent_id`, `location_name`, `location_slug`, `status`) VALUES
(1, 0, 'Chandigarh', 'chandigarh', 0),
(2, 0, 'Delhi', 'delhi', 0),
(3, 0, 'Mumbai', 'mumbai', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_18_094331_create_settings_table', 1),
('2016_05_11_101945_create_categories_table', 1),
('2016_05_11_102900_create_listings_table', 1),
('2016_05_11_102933_create_listings_reviews_table', 1),
('2016_05_11_102956_create_listing_gallery_table', 1),
('2016_05_11_103038_create_location_table', 1),
('2016_05_11_103103_create_sub_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `missing_cashback`
--

CREATE TABLE `missing_cashback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_transaction` varchar(250) NOT NULL,
  `merchant_name` varchar(250) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `total_amount_paid` varchar(255) NOT NULL,
  `coupon_code_used` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `FromUserId` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offers_advs`
--

CREATE TABLE `offers_advs` (
  `id` int(11) NOT NULL,
  `network` varchar(100) NOT NULL,
  `display` int(1) NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `require_approval` int(5) DEFAULT NULL,
  `terms_and_conditions` varchar(255) DEFAULT NULL,
  `merchant_name` varchar(255) DEFAULT NULL,
  `cookie_duration` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `offer_url` varchar(255) NOT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `default_payout` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `payout_type` varchar(100) DEFAULT NULL,
  `image_icon` varchar(255) DEFAULT NULL,
  `percent_payout` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `conversion_cap` varchar(255) DEFAULT NULL,
  `email_instructions_from` varchar(255) DEFAULT NULL,
  `email_instructions_subject` varchar(255) DEFAULT NULL,
  `default_goal_name` varchar(255) DEFAULT NULL,
  `approval_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sorting` int(10) NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `sorting`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(15, 2, 1, 'Terms and Condition', '<div class=\"container privacy\">\r\n             <h1>TERMS AND CONDITIONS</h1>\r\n             <p>(\"Pennicart\") provides its service to you (\"Consignor\") \r\nsubject to the terms and conditions (\"T&amp;C\") set out as under. By \r\nconfirming and / or placing an or', 'terms-and-condition', 1, '2017-02-08 13:25:17', '2017-08-10 03:19:54');
INSERT INTO `pages` (`id`, `sorting`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(16, 3, 1, 'Privacy Policy', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><i><span lang=\"EN-US\" style=\"font-size:13.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br></span></i></b></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><i><span lang=\"EN-US\" style=\"font-size:13.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Pennicart.com identified</span></i></b></span><span style=\"color: rgb(8, 82, 148);\"><b><i><span lang=\"EN-US\" style=\"font-size:13.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">&nbsp;as (“website”, “our website”, “site”) is operated by&nbsp;Aventra\r\nTechpro OPC Pvt Ltd addressed further as (“We”, “Our”, “Company”).</span></i></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">&nbsp;</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">&nbsp;</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><i><span lang=\"EN-US\" style=\"font-size:13.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Privacy Disclosures</span></i></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Information Collection &amp; Use</span></b><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Simply stated:</span></b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\">&nbsp;We don\'t know who you are, and we don\'t track your personal\r\ninformation or your financial information except the one required for us to\r\ngive cashback which you can redeem for purchases or ask for transfer to your\r\naccount .</span><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Registration:</span></b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\">&nbsp;Visitors do not need to register or disclose any personally\r\nidentifiable information at this web site.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">What all\r\ninformation we store: &nbsp;</span></b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">We, in the\r\nprocess of conducting regular business, collect information from you when you\r\nsubscribe to our newsletter.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\nIn the process of your registration with us, the only personal information we\r\nask you, is your email address and your name. We shall &nbsp;never display your\r\nemail address on this site, or on any other, or pass on personal information to\r\na third party without your explicit permission.<br>\r\n<br>\r\nWe may request further personal information from you if, in order for us to\r\nprovide our customer services when asked for by you. All this data is stored\r\nsecurely and we will never pass any of this information on to third parties,\r\nunless you specifically ask us to or as required by law.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span style=\"font-size:13.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">The use of Cookies on our website and related Cookie Policies</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Cookies\r\nand&nbsp;</span></b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><a href=\"http://www.pennicart.com/\" target=\"_blank\"><b>www.pennicart.com</b></a></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><a href=\"http://www.pennicart.com/\" target=\"_blank\"><b><br>\r\n</b></a><br>\r\n<b>What is a Cookie?</b></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\nAn&nbsp;<b>HTTP cookie</b>&nbsp;(also called&nbsp;<b>web cookie</b>,&nbsp;<b>Internet\r\ncookie</b>,&nbsp;<b>browser cookie</b>, or simply&nbsp;<b>cookie</b>) is a\r\nsmall piece of data sent from a website and stored on the user\'s computer by\r\nthe user\'s&nbsp;web browser while the user is browsing. Cookies were designed\r\nto be a reliable mechanism for websites to remember&nbsp;information (such as\r\nitems added in the shopping cart in an online store) or to record the user\'s\r\nbrowsing activity (including clicking particular buttons,&nbsp;logging in, or\r\nrecording which pages were visited in the past). They can also be used to\r\nremember arbitrary pieces of information that the user previously entered into\r\nform fields such as names, addresses, passwords, and credit card numbers.</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">A cookie will typically\r\ncontain the name of the domain (internet location) from which the cookie has\r\ncome, the \"lifetime\" of the cookie (i.e. when does it expire), and a\r\nvalue, usually a randomly generated unique number.<br>\r\n<br>\r\nTwo types of cookies are used on this website:</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Session\r\ncookies</b>&nbsp;which are temporary cookies that remain in the cookie file of\r\nyour browser until you leave the site.</span><span style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;background:#f7f7f7;mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">b. &nbsp; &nbsp;\r\n&nbsp;&nbsp;<b>Persistent cookies</b>&nbsp;which remain in the cookie file of\r\nyour browser for much longer (though how long will depend on the lifetime of\r\nthe specific cookie).</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">Cookies can help websites to arrange content to match your preferred\r\ninterests more quickly and are used by many major websites.</span><span lang=\"EN-US\" style=\"font-size:12.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Cookies\r\non&nbsp;</span></b><b><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\"><a href=\"http://www.pennicart.com/\" target=\"_blank\">www.pennicart.com</a></span></b><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;mso-fareast-language:en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">How we use\r\ncookies on our site and what information we collect</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:12.0pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Session cookies</span></b><span lang=\"EN-US\" style=\"font-size:12.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">We use session cookies:</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To\r\nallow you to carry information across pages of our site and avoid having to\r\nre-enter information.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To\r\ncompile statistics that allow us to understand how users use our site and to\r\nhelp us improve the structure of our website.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:12.0pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Persistent cookies</span></b><span lang=\"EN-US\" style=\"font-size:12.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">We use persistent cookies:</span><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To\r\ndisplay your name and cashback balance each time you access our site (using the\r\n\"Remember me\" cookie).</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We\r\nmay use other persistent cookies from time to time to help us recognize you as\r\na unique visitor when you return to our website and to monitor your use of our\r\nwebsite. This will allow us to tailor the content of certain areas of our site\r\nand offer you promotions that match your preferred interests.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Please note that the use of\r\nany information we collect through the use of session cookies and persistent\r\ncookies shall be subject to our Privacy Policy.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">More About\r\nCookies</span></b><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">A cookie is a small text file that is stored on a\r\nuser’s computer for record-keeping purposes. This site does not place or\r\nretrieve tracking cookies. However, as noted above, when some third-party\r\nadvertisements are displayed at this site and when you click on external web\r\nlinks, persistent cookies are used by those third-party sites (and some\r\naggregate data made possible by use of those persistent cookies is used by this\r\nowner of this web site.) You can configure your web browser to block any\r\n\"third-party cookies,\" or to block all cookies (but by doing so, you\r\nwill likely be unable to use certain features on other web sites). You can\r\nremove persistent cookies by using utility software or by following directions\r\nprovided in your Internet browser’s “help” file. Third-party web sites may also\r\ntrack and cross-match your cookie and \"clickstream\" data with other\r\ndata you disclose to those third party web sites (for example,&nbsp;<a href=\"http://amazon.com/\">Amazon.com</a>&nbsp;stores\r\ninformation about the pages you view and the products you buy, to suggest other\r\nrelated merchandise which may interest you).</span><span style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-fareast-language:en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">Server Technology, Cookies, and Log Files:</span></b><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:en-in\"=\"\">&nbsp;</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\nWhen you shop through our website, a persistent cookie is placed on your\r\ncomputer.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">This enables us to track any purchases you make with our participating\r\nretailers and award cashback / points to you. If you do not have such\r\npersistent cookies enabled on your computer you will not be able to earn\r\ncashback / points on your online shopping via our website. This web site does not\r\nuse tracking \"cookies.\" which would collect your personal data or\r\ntrack your personal financial transactions.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">However, like all web sites, each time you click to request a web page\r\nfrom this server (and each time a web page loads a graphic image), information\r\nabout that \"request\" is stored in a \"log file\" (logged data\r\nincludes the date, time, IP address, page requested, browser and OS\r\ninformation, and the referring URL). The log-file information does not identify\r\nindividual users. We use this log-file information, to analyse trends, to\r\nadminister the site, and to gather information about the interests and\r\npreferences of our audience.<span style=\"background:#F7F7F7\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Disabling/enabling\r\ncookies</span></b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">&nbsp;You have the ability to accept or decline\r\ncookies by modifying the settings in your browser. However, you may not be able\r\nto use all the interactive features of our site if cookies are disabled.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\nPlease note: if you disable the cookies in your browser which are used to track\r\nyour purchases via our website, you will not be able to earn cashback / point\r\nwhen you shop our website.<br>\r\n<br>\r\nThere are a number of ways to manage cookies. If you use different computers in\r\ndifferent locations you will need to ensure that each browser is adjusted to\r\nsuit your cookie preferences.<br>\r\n<br>\r\nYou can easily delete any cookies that have been installed in the cookie folder\r\nof your browser. For example, if you are using Microsoft Windows Explorer:</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:=\"\" en-in\"=\"\">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Open \'Windows Explorer\'</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-indent: -18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:\r\n10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp;b.&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Click on the \'Search\' button on\r\nthe tool bar</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type\r\n\"cookie\" into the search box for \'Folders and Files\'</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select\r\n\'My Computer\' in the \'Look In\' box</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">e.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click\r\n\'Search Now\'</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Double\r\nclick on the folders that are found</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">g.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\'Select\'\r\nany cookie file</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">h.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hit\r\nthe \'Delete\' button on your keyboard</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\nIf you are not using Microsoft Windows Explorer, then you should select\r\n\"cookies\" in the \"Help\" function for information on where\r\nto find your cookie folder.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Third Parties&nbsp;activities</span></b><span lang=\"EN-US\" style=\"font-size:12.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Google\'s use of the\r\nDoubleClick cookie enables it and its partners to serve ads to your users based\r\non their visit to your sites and/or other sites on the Internet.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Users may opt out of the\r\nuse of the DoubleClick cookie for interest-based advertising by visiting&nbsp;<a href=\"http://www.google.com/ads/preferences/\" target=\"_blank\">Ads Settings.</a>&nbsp;(Alternatively, you can\r\ndirect users to opt out of a third-party vendor\'s use of cookies for interest\r\nbased advertising by visiting&nbsp;<a href=\"http://www.aboutads.info/\" target=\"_blank\">aboutads.info.</a>)</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Third Party Collection of Data:&nbsp;</span></b><span style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-fareast-language:en-in\"=\"\">We have contract\r\nwith third parties to serve ads on our behalf across the Internet and sometimes\r\non this site. They may collect information about your visits to our website,\r\nand your interaction with our products and services. They may also use\r\ninformation about your visits to this and other websites to target\r\nadvertisements for goods and services. This information is collected through\r\nthe use of a pixel tag, which is industry standard technology used by most\r\nmajor websites. Such third parties are not permitted to sell or share your\r\npersonally identifiable information as part of this process.</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\">&nbsp;</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Hence, this site\'s web pages display some content\r\nand/or advertising which is directly served or delivered by third parties, such\r\nas&nbsp;<a href=\"http://amazon.com/\">Amazon.com</a>&nbsp;and&nbsp;Google.com.\r\nThese advertisements are delivered through script code in this site\'s HTML web\r\npages, which cause your computer to request the advertising information from\r\nthe third party\'s server. These third parties usually deliver a cookie to your\r\ncomputer, and log your request activity in their log files.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Third Party Web Site Destinations:</span></b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\">&nbsp;This web site includes thousands of \"web links\" to other\r\nweb sites operated by many other individuals, companies, and organizations.\r\nAlmost all of those sites use cookies and log files to track your activity, and\r\nsome may also utilize other strategies to track and monitor your use of their\r\nweb sites. Some of the links to external web sites pass through intermediaries\r\nsuch as VCommission,&nbsp;ShareASale.com&nbsp;and Commission Junction, which\r\nalso track your click, store a cookie, and transfer your request to another web\r\nserver. These intermediaries (and their cookies) are later checked if you make\r\na purchase at the third party destination web site, and if so, the intermediary\r\nstores information about that transaction so that the third parties can account\r\nand pay us an advertising fee in exchange for directing customers to their web\r\nsites. Some merchants share aggregate purchase information with us; for\r\nexample,&nbsp;<a href=\"http://amazon.com/\">Amazon.com</a>&nbsp;reports\r\nthe specific items that were purchased by consumers that were referred from\r\nthis web site; we use this information when updating this web site\'s content\r\nand advertising. However, these third-party merchants do not share any personal\r\nidentifying information with us.</span><span lang=\"EN-US\" style=\"font-size:10.0pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Information Sharing and Disclosure</span></b><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">This web site does not collect or share any\r\npersonally identifiable information with third parties. The only information\r\n\"sharing\" occurs in the manner specified in the preceding paragraph.\r\nWe do not link aggregate user data with personally identifiable information.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span lang=\"EN-US\" style=\"font-size: 10.5pt; color: rgb(8, 82, 148);\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">Choice/Opt-out<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\">You may choose to block the collection of some\r\ninformation by our advertisers, by configuring your web browser to refuse to\r\naccept or return \"cookies,\" or by utilizing third-party\r\n\"Internet Security\" software which may block some third-party\r\nadvertising and some trackable links to third-party web sites. If you use this\r\ntechnology, you will not see some relevant content seen by other visitors to\r\nthis web site, because your software will edit, delete, or alter the content as\r\nit is loaded into your computer.<o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Clear Gifs (Web Beacons/Web\r\nBugs)</span></b><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">This site does not directly\r\nutilize (but advertisers may utilize) a software technology called clear gifs\r\n(sometimes called \"web beacons\" or \"web bugs\"). Clear gifs\r\nare tiny graphics with a unique identifier, similar in function to cookies, and\r\nare used to track the online movements of Web users. In contrast to cookies,\r\nwhich are stored on a user’s computer hard drive (where users can view them,\r\nthough not easily), clear gifs are embedded invisibly on Web pages and are\r\nsmaller than the size of the period at the end of this sentence. Advertisers\r\nmay tie the information gathered by clear gifs to any personally identifiable\r\ninformation which they have obtained. You may be able to block this technology\r\nby using third-party \"Internet Security\" software.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><b><span lang=\"EN-US\" style=\"font-size:10.5pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;background:#f7f7f7;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\">Email Notifications</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif; color: rgb(8, 82, 148);\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 13.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" background:#f7f7f7;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">In order\r\nto keep you informed of your activities on&nbsp;<a href=\"http://www.pennicart.com/\" target=\"_blank\">www.pennicart.com</a>&nbsp;we\r\noccasionally send you emails. These include your transaction emails to show how\r\nmuch you have earned, referral emails that show you how much you have earned\r\nfrom referrals, payment confirmations for payments to you and, important\r\nadministrative emails and emails to confirm your activities on the website.\r\nThese emails are not shared with anyone else apart from you</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 13.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\r\n\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;=\"\" background:#f7f7f7;mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\nYou may receive weekly newsletter that features some of our best ideas to help\r\nyou save more. You may choose to opt out from receiving newsletters from\r\nwww.pennicart.com by informing us at any time.<br>\r\n<br>\r\nSpamming by our members is strictly prohibited and the same is explicitly\r\nincorporated &nbsp;in our Terms &amp; Conditions. If you would like to report\r\nan incident of spamming, please contact us so we can investigate and take\r\nsuitable action.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(8, 82, 148);\"><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Legal Disclaimers</span></b><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">We reserve the right to\r\ndisclose any information in our \"log files,\" as required by law and\r\nwhen we believe that disclosure is necessary to protect our rights and/or to\r\ncomply with a judicial proceeding, court order, or legal process served on our\r\nWeb site.(Since we don\'t gather any personal identifying information about you,\r\nwe can\'t inform you if this occurs.)</span><span lang=\"EN-US\" style=\"font-size:\r\n10.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;background:#f7f7f7;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">We follow generally\r\naccepted industry standards to protect the information submitted to us.\r\nHowever, no method of transmission over the Internet, or method of electronic\r\nstorage, is 100% secure, however. Therefore, while we strive to use\r\ncommercially acceptable means to protect any information gathered in our\r\n\"log files,\" we cannot guarantee its absolute security.</span><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">In the event that this web\r\nsite goes through a business transition, such as a merger, acquisition by\r\nanother company, or sale of all or a portion of its assets, the information\r\ncollected by this web site will likely be among the assets transferred.</span><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Changes in this Privacy\r\nStatement</span></b><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">If this site decides to\r\nchange its privacy policy, those changes will be posted to this privacy\r\nstatement and other places we deem appropriate so that you are aware of what\r\ninformation we collect, how we use it, and under what circumstances, if any, we\r\ndisclose it. We reserve the right to modify this privacy statement at any time,\r\nso please review it frequently.</span><span lang=\"EN-US\" style=\"font-size:10.0pt;\r\nfont-family:\" arial\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#085294;background:#f7f7f7;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-in\"=\"\"><br>\r\n<br>\r\n</span><b><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">Contact</span></b><span lang=\"EN-US\" style=\"font-size:10.0pt;font-family:\" arial\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;mso-ansi-language:en-us;=\"\" mso-fareast-language:en-in\"=\"\"><br>\r\n<br>\r\n</span><span lang=\"EN-US\" style=\"font-size:10.5pt;font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#085294;background:#f7f7f7;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-in\"=\"\">You can contact on\r\n9953182907 &nbsp;from 9 am to 5 pm on all working days.</span><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 1.2; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><o:p style=\"color: rgb(8, 82, 148);\">&nbsp;</o:p></p>', 'privacy-policy', 1, '2017-02-08 13:25:35', '2017-08-14 02:18:33');
INSERT INTO `pages` (`id`, `sorting`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(17, 4, 1, 'Help', '<h1><a name=\"_Toc467446636\" style=\"background-color: rgb(255, 255, 255);\">Frequently Asked Questions</a><br></h1>\n\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\n40.5pt;mso-outline-level:2\"><a name=\"_Toc467446637\"><b><', 'help', 1, '2017-02-08 13:25:57', '2017-02-27 03:23:52'),
(18, 6, 1, 'Cookies Policy', '<h1>Cookies Policy</h1>\r\n<p>(\"Cashbenzo\") provides its service to you (\"Consignor\") subject to \r\nthe terms and conditions (\"T&amp;C\") set out as under. By confirming and\r\n / or placing an order, the Consignor acknowledges that the Consignor \r\nhas carefull', 'cookies-policy', 1, '2017-02-08 13:26:14', '2017-02-08 13:26:14'),
(22, 5, 1, 'How it works', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'how-to-earn', 1, '2017-02-17 15:21:15', '2017-06-22 03:02:26'),
(23, 0, 1, 'About Pennicart', '<p class=\"MsoNormal\" style=\"text-align: left; margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initi', 'about-pennicart', 1, '2017-06-21 23:43:10', '2017-06-30 18:09:23'),
(24, 0, 1, 'Anti Spam Policy', '&lt;p&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae es', 'anti-spam-policy', 1, '2017-06-21 23:44:33', '2017-06-21 23:44:33'),
(25, 0, 1, 'Why Pennicart', '&lt;p&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae es', 'why-pennicart', 1, '2017-06-21 23:45:06', '2017-06-21 23:45:06'),
(26, 0, 1, 'FAQ', '<h3 style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Frequently Asked Questions</h3><p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font class=\"top_head\" style=\"color: rgb(193, ', 'faq', 0, '2017-06-21 23:45:55', '2017-08-10 05:47:18'),
(27, 0, 1, 'Cashback Terms & Condition', '&lt;p&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae es', 'cashback-terms-condition', 1, '2017-06-21 23:46:16', '2017-06-21 23:46:16'),
(28, 0, 1, 'Coupon Terms & Condition', '&lt;p&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae es', 'coupon-terms-condition', 1, '2017-06-21 23:46:36', '2017-06-21 23:46:36'),
(29, 0, 1, 'Missing Cashback Claim', '&lt;p&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae es', 'missing-cashback-claim', 1, '2017-06-21 23:46:56', '2017-06-21 23:46:56'),
(30, 0, 1, 'Sitemap', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'sitmap', 1, '2017-06-21 23:47:13', '2017-06-30 18:10:34'),
(31, 0, 1, 'Blog', '&lt;p&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae es', 'blog', 1, '2017-06-21 23:47:34', '2017-06-21 23:47:34'),
(32, 0, 1, 'Customer Reviews & Testimonial', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'customer-reviews-testimonial', 1, '2017-06-21 23:47:51', '2017-06-22 02:39:46'),
(33, 0, 1, 'Contact US', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'contact-us', 1, '2017-06-21 23:48:25', '2017-06-22 02:39:27'),
(34, 0, 1, 'Become our Partner', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'become-our-partner', 1, '2017-06-21 23:48:41', '2017-06-22 02:39:06'),
(35, 0, 1, 'Incentives Terms & Condition', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'incentives-terms-condition', 1, '2017-06-21 23:48:58', '2017-06-22 02:38:49'),
(37, 0, 1, 'Promotion', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'promotion', 1, '2017-06-21 23:49:27', '2017-06-22 02:37:58'),
(38, 0, 1, 'Pennicart Ambassador', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'pennicart-ambassador', 1, '2017-06-21 23:49:45', '2017-06-22 03:00:43'),
(39, 0, 1, 'Pennicart Campus', '<p><span style=\"font-size: 24px; font-weight: bold;\">Pennicart Campus</span></p><p><br></p><p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit a', 'pennicart-campus', 1, '2017-06-21 23:50:01', '2017-06-26 05:14:38'),
(40, 0, 1, 'Teens Program', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mau', 'teens-program', 1, '2017-06-21 23:50:17', '2017-06-22 02:37:26'),
(41, 0, 1, 'How It Work', '<p><span style=\"font-weight: bold; font-family: &quot;Arial Black&quot;; font-size: 24px;\">How it works?</span></p><p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultr', 'how-it-work', 1, '2017-06-21 23:50:44', '2017-06-26 05:13:14'),
(42, 0, 1, 'Teen Toon', '<p><span style=\"font-weight: bold; font-family: \">Teen\'s Toon<br></span></p><p>Pellentesque\r\n habitant morbi tristique senectus et netus et malesuada fames ac turpis\r\n egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor \r\nsit amet, ante', 'teens-toon', 1, '2017-06-28 21:45:40', '2017-06-28 21:47:35'),
(43, 0, 1, 'Tackotoo Bargains', '<p><span style=\"font-weight: bold; font-family: \">Tackotoo Bargains<br></span></p><p>Pellentesque\r\n habitant morbi tristique senectus et netus et malesuada fames ac turpis\r\n egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor \r\nsit amet', 'tackotoo-bargains', 1, '2017-06-28 21:46:17', '2017-06-28 21:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `item_number` varchar(222) NOT NULL,
  `transaction_id` varchar(222) NOT NULL,
  `currency_code` varchar(222) NOT NULL,
  `payment_status` varchar(222) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `Account_holder` varchar(255) NOT NULL,
  `Bank_name` varchar(255) NOT NULL,
  `Bank_branch_name` varchar(255) NOT NULL,
  `Account_number` varchar(255) NOT NULL,
  `Ifsc_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_log`
--

CREATE TABLE `paypal_log` (
  `id` int(10) NOT NULL,
  `txn_id` varchar(600) NOT NULL,
  `log` text NOT NULL,
  `posted_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payu_payments`
--

CREATE TABLE `payu_payments` (
  `id` int(10) NOT NULL,
  `account` varchar(255) NOT NULL,
  `payable_id` int(10) DEFAULT NULL,
  `payable_type` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) NOT NULL,
  `mihpayid` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL,
  `net_amount_debit` double NOT NULL,
  `data` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `unmappedstatus` varchar(255) NOT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `bank_ref_num` varchar(255) DEFAULT NULL,
  `bankcode` varchar(255) DEFAULT NULL,
  `cardnum` varchar(255) DEFAULT NULL,
  `name_on_card` varchar(255) DEFAULT NULL,
  `issuing_bank` varchar(255) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL,
  `couponid` varchar(11) NOT NULL,
  `item_number` varchar(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `product_price` varchar(222) NOT NULL,
  `totalprice` varchar(222) NOT NULL,
  `user_name` varchar(222) NOT NULL,
  `user_email` varchar(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `location` varchar(222) NOT NULL,
  `end_date` varchar(222) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `store` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_coupons`
--

CREATE TABLE `recommended_coupons` (
  `id` int(11) NOT NULL,
  `date` varchar(200) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ListingId` int(11) NOT NULL,
  `store` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `redeem_requests`
--

CREATE TABLE `redeem_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `payment_mode` varchar(250) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_keyword` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `under_maintenane` int(1) NOT NULL,
  `signup_bonus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referral_cashback` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minimum_withdraw` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cashback_on_coupons` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_map_api` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_header_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_footer_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addthis_share_code` text COLLATE utf8_unicode_ci NOT NULL,
  `disqus_comment_code` text COLLATE utf8_unicode_ci NOT NULL,
  `facebook_comment_code` text COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_image1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_text` text COLLATE utf8_unicode_ci NOT NULL,
  `page_bg_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `works_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `works_description` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_address` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_long` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gplus_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_url` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `today_deal` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_email`, `site_logo`, `site_favicon`, `site_description`, `site_keyword`, `under_maintenane`, `signup_bonus`, `referral_cashback`, `minimum_withdraw`, `cashback_on_coupons`, `google_map_api`, `facebook_app_id`, `google_secret_key`, `facebook_secret_key`, `google_app_id`, `site_header_code`, `site_footer_code`, `site_copyright`, `addthis_share_code`, `disqus_comment_code`, `facebook_comment_code`, `home_slide_image1`, `home_slide_image2`, `home_slide_image3`, `home_slide_title`, `home_slide_text`, `page_bg_image`, `works_title`, `works_description`, `contact_title`, `contact_address`, `contact_email`, `contact_number`, `contact_lat`, `contact_long`, `facebook_url`, `twitter_url`, `gplus_url`, `linkedin_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `today_deal`) VALUES
(1, 'Pennicart shop and save', 'info@pennicart.com', 'logo.png', 'favicon.png', 'Aventra: Coupons, Coupon Codes, Offers, Promo Codes & Deals for Online Shopping 2017', 'Coupons, Coupon Codes, Offers,big offer', 0, '100', '200', '50', '90', '', '408548812815575', '1JAXWjdVuCDRrBMec8C6t_Nw', '89f63d9dff2ee061110ed72922f75213', '856696880423-njfa319gotg3v5p8439ic4asojrbmirb.apps.googleusercontent.com', '', 'Pennicart.com is run by Aventra Techpro OPC Private Limited and is headquartered in New Delhi. We list coupons and deals from reputed merchants.', 'Copyright © 2018 My Deal My offer', '', '', '', 'home_slide_image1.png', 'home_slide_image2.png', 'home_slide_image3.png', 'banner', '', 'page_bg_image.png', 'How it works', '', 'Contact Us', '	 			 <div class=\"clearfix\">					<h3><br></h3>                                                      </div>', 'info@pennicart.com', '+91-9953182907', '', '', 'https://www.facebook.com/', 'https://twitter.com/login', 'https://plus.google.com', 'https://www.linkedin.com/uas/login', 'https://www.instagram.com/?hl=en', 'https://youtube.com/', '', 'www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `country` varchar(222) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `smallimg1` varchar(255) NOT NULL,
  `smallurl1` varchar(255) NOT NULL,
  `smallimg2` varchar(255) NOT NULL,
  `smallurl2` varchar(255) NOT NULL,
  `smallimg3` varchar(255) NOT NULL,
  `smallurl3` varchar(255) NOT NULL,
  `icon` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `cashback_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cashback_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `retailer_of_week` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `get_this_offer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms_conditions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sidebar_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sidebar_image_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_image_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `store_id`, `store_name`, `store_slug`, `store_link`, `store_cat`, `store_logo`, `description`, `meta_keywords`, `meta_description`, `status`, `cashback_type`, `cashback_amount`, `featured`, `retailer_of_week`, `get_this_offer`, `terms_conditions`, `sidebar_image`, `sidebar_image_link`, `banner_image`, `banner_image_link`, `created_at`, `updated_at`) VALUES
(335, 109, 'Nitin Store', 'nitin-store', 'http://www.nitinstore.com', 'WEB SERVICES', 'http://www.pennicart.waveinfotech.biz/site_assets/banner/nitin-store_1529651092-s.jpg', 'we provide web services', 'nitinstore', 'this is nitin store', 0, 'percentage', '100%', 'yes', '', 'wait', 'no terms conditions', 'http://www.pennicart.waveinfotech.biz/site_assets/banner/nitin-storesd_1529651092-s.jpg', 'http://www.nitinstoresidebar.com', 'http://www.pennicart.waveinfotech.biz/site_assets/banner/nitin-storebn_1529651092-s.jpg', 'http://www.nitinstorebanner.com', '2018-06-22 12:04:52', '2018-06-22 12:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `stores_w`
--

CREATE TABLE `stores_w` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Others',
  `store_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `popular` int(1) NOT NULL,
  `featured_listing` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `token_no` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `login_with` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userrole` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `image_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'dummy.jpg',
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dribbble_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ucode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `subcategories` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `blog` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pages` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `slider` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `advertisement` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `listings` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `users` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `subadmins` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `subscribers` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `contacts` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `retailers` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `settings` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `allcoupon` varchar(111) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `customlocation` varchar(111) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `couponsettings` varchar(111) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `customcatlist` varchar(111) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country`, `login_with`, `usertype`, `userrole`, `first_name`, `last_name`, `email`, `password`, `gender`, `dob`, `image_icon`, `status`, `mobile`, `contact_email`, `state`, `city`, `website`, `address`, `facebook_url`, `twitter_url`, `linkedin_url`, `dribbble_url`, `instagram_url`, `facebook_id`, `google_id`, `remember_token`, `ucode`, `pcode`, `categories`, `subcategories`, `blog`, `pages`, `slider`, `advertisement`, `listings`, `users`, `subadmins`, `subscribers`, `contacts`, `retailers`, `settings`, `allcoupon`, `customlocation`, `couponsettings`, `customcatlist`, `created_at`, `updated_at`) VALUES
(1, '', '', 'Admin', '', 'Admin', 'pennicart', 'aventratechpro@zoho.com', '$2y$10$1t4IHfyAX.eaCymelNFYW.b7WCnOW3tzxZZYSOhMf/n0aJjkam8sK', '', '', 'dummy.jpg', 'Active', '', '', '', '', '', '', '', '', '', '', '', '', '', 'PmEuLkJxj4leUQBTsM10ReJUzEu6rtqWf5DkfGq3Dpn4o2KYlMSbeqSvFWbb', '3221474479d3a8834a4afd1242eca7cdd752ff548', '', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '2017-03-11 02:53:06', '2018-06-08 07:56:52'),
(109, '', 'Facebook', 'Retailer', '', 'Nitin', 'Wave', 'nitinwaveinfotech@gmail.com', '$2y$10$xrfk/DBxRW3/9MqfSXz29uz1pCNkxWSLSHfKdkEC1k6Mq8MXTh77O', 'Male', '', 'https://graph.facebook.com/v3.0/107669326803217/picture?type=normal', 'Active', '1234567890', '', 'hr', 'pkl', '', '# 1234', '', '', '', '', '', '107669326803217', '103072722622513677804', 'F50NeegUmozqwe2XvAScwGiRKHfjYxlKud2UlIP8DkZLKbLU0Fy2T1XbEyoY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'on', 'on', 'on', 'on', '2018-06-22 11:18:14', '2018-06-29 16:04:15'),
(110, '', 'Facebook', 'User', '', 'Ravinder Puri', '', 'ravinderpuri.waveinfotech.biz@gmail.com', '', '', '', 'https://graph.facebook.com/v3.0/132801647617391/picture?type=normal', '', '', '', '', '', '', '', '', '', '', '', '', '132801647617391', '', '05mSsSFIk7gBgS7H9ej1D8pjLAmrtZPluQkRJw3tdK4nu4MUoI2qkPfjuJkn', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'on', 'on', 'on', 'on', '2018-06-27 12:31:48', '2018-06-27 12:31:58'),
(100, 'INDIA', '', 'User', '', 'ravinder', 'puri', 'ravinder@wave.com', '$2y$10$zy0MAbx0Okz7J/ZyAUgEjOJzI2kyQB/dqpXykJbRBP9FjZahP1nzu', '', '', 'dummy.jpg', 'Active', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SIF9u73ufXHDWWVKjfieu90VXT8apQxjiSqsZbKtVRtWck9FSPKWrDO9956s', '82424a320318babf515e73ba16b999be2428', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'on', 'on', 'on', 'on', '2018-06-08 02:23:50', '2018-06-08 04:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_ecashback`
--

CREATE TABLE `users_ecashback` (
  `pay_id` int(11) NOT NULL,
  `pay_userid` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) NOT NULL,
  `pay_refid` int(11) DEFAULT NULL,
  `pay_plan` varchar(50) DEFAULT NULL,
  `pay_disc` varchar(800) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `pay_status` enum('Success','Pending','Failure') DEFAULT 'Pending',
  `pay_date` bigint(22) DEFAULT NULL,
  `pay_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_ewallet`
--

CREATE TABLE `users_ewallet` (
  `pay_id` int(11) NOT NULL,
  `pay_userid` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) NOT NULL,
  `pay_refid` int(11) DEFAULT NULL,
  `pay_plan` varchar(50) DEFAULT NULL,
  `pay_disc` varchar(800) NOT NULL,
  `debit` decimal(10,4) NOT NULL,
  `credit` decimal(10,4) NOT NULL,
  `net_amount` decimal(10,4) NOT NULL,
  `pay_drcr` enum('Dr','Cr') DEFAULT NULL,
  `pay_status` enum('Success','Pending','Failure') DEFAULT 'Pending',
  `pay_date` bigint(22) DEFAULT NULL,
  `pay_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `dataKey` varchar(255) NOT NULL,
  `dataValue` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(70) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_commission`
--
ALTER TABLE `affiliate_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_on_post_foreign` (`on_post`),
  ADD KEY `comments_from_user_foreign` (`from_user`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupowallet`
--
ALTER TABLE `cupowallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings_cate`
--
ALTER TABLE `listings_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings_reviews`
--
ALTER TABLE `listings_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings_voting`
--
ALTER TABLE `listings_voting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings_w`
--
ALTER TABLE `listings_w`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_gallery`
--
ALTER TABLE `listing_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_coupons`
--
ALTER TABLE `local_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_coupon_location`
--
ALTER TABLE `local_coupon_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missing_cashback`
--
ALTER TABLE `missing_cashback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_advs`
--
ALTER TABLE `offers_advs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_log`
--
ALTER TABLE `paypal_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payu_payments`
--
ALTER TABLE `payu_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommended_coupons`
--
ALTER TABLE `recommended_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem_requests`
--
ALTER TABLE `redeem_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores_w`
--
ALTER TABLE `stores_w`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_ecashback`
--
ALTER TABLE `users_ecashback`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `pay_userid` (`pay_userid`);

--
-- Indexes for table `users_ewallet`
--
ALTER TABLE `users_ewallet`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `pay_userid` (`pay_userid`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `affiliate_commission`
--
ALTER TABLE `affiliate_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cupowallet`
--
ALTER TABLE `cupowallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings_cate`
--
ALTER TABLE `listings_cate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings_reviews`
--
ALTER TABLE `listings_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `listings_voting`
--
ALTER TABLE `listings_voting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `listings_w`
--
ALTER TABLE `listings_w`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3673;

--
-- AUTO_INCREMENT for table `listing_gallery`
--
ALTER TABLE `listing_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local_coupons`
--
ALTER TABLE `local_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `local_coupon_location`
--
ALTER TABLE `local_coupon_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `missing_cashback`
--
ALTER TABLE `missing_cashback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `offers_advs`
--
ALTER TABLE `offers_advs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paypal_log`
--
ALTER TABLE `paypal_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payu_payments`
--
ALTER TABLE `payu_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `recommended_coupons`
--
ALTER TABLE `recommended_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `redeem_requests`
--
ALTER TABLE `redeem_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `stores_w`
--
ALTER TABLE `stores_w`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `users_ecashback`
--
ALTER TABLE `users_ecashback`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT for table `users_ewallet`
--
ALTER TABLE `users_ewallet`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
