-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 12:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Inventory', 'inventory@gmail.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(20, 'Applied Nutrition', 10),
(19, 'Applied Nutrition', 9),
(15, 'Rogue', 9),
(16, 'Echelon', 9),
(17, 'Life Fitness', 9),
(18, 'Yahya Sports', 9),
(21, 'Scitec', 10),
(22, 'Dymatize', 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(9, 'Accessories', 0),
(10, 'Supplements', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'Ultimate Store', 'Online Shopping Project for Mobiles, Clothes, Electronics and many more....', '1676446570front-logo.png', 'We provide different types of fitness equipment, Protein Shakes, and fitness accessories.', 'Copyright 2022', 'Rs.', '+92 332 0923967', 'ultmatefitness78@gmail.com', 'Near PIA Building, Saddar Bazar\r\nPeshawar, Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_id`, `product_id`, `product_qty`, `total_amount`, `product_user`, `order_date`, `pay_req_id`, `confirm`, `delivery`) VALUES
(19, '12', '1', '299', 2, '2020-11-17', 'd7a5b179cd07480782fc2d21edec7031', 1, 1),
(18, '12', '1', '299', 2, '2020-11-17', '4e2738d7eade4f57b5fd32434239d35f', 1, 0),
(17, '11', '1', '759', 2, '2020-11-12', 'd388939cdaca4087acca75574a34b035', 1, 0),
(20, '12', '1', '299', 2, '2020-11-17', 'a0f61b1acd6b444ba5856cc4387e7710', 0, 0),
(21, '12', '2', '598', 2, '2020-11-17', '0e2fdf1541994d338c676201097d2481', 1, 0),
(22, '12', '1', '299', 2, '2020-11-17', '8b0791e3eb764e45b497b0f0c401d9d6', 1, 0),
(23, '12', '1', '299', 2, '2020-11-17', '92c9c474ae864d01b81f7e2f4d3a098e', 1, 0),
(27, '11', '1', '759', 2, '2020-11-17', '6863fbdf68be45d5a77aa01774a80885', 1, 0),
(28, '11', '1', '759', 2, '2020-11-17', 'ee7d6cea937c4f06b6e5e1fffe47b778', 1, 1),
(29, '12', '1', '299', 2, '2020-11-17', 'f7ce91d5964c462fa3972f6cb5373d4a', 0, 1),
(30, '11', '2', '1518', 2, '2020-11-30', '939d866425ef479c84e276e664ce5a31', 0, 0),
(38, '11,12,', '1,1,', '1058', 2, '2020-12-01', '2c648ec714914c18b447309d691b7eef', 0, 1),
(37, '4,12,', '2,1,', '94279', 4, '2020-12-01', 'd19818d2ba3543ffa03a79a7eb64901b', 0, 1),
(36, '10,11,12,', '1,1,1,', '1342', 4, '2020-12-01', 'df952fa6bacd4f389de80b1080ed3871', 0, 1),
(39, '11,12,', '1,1,', '1058', 2, '2020-12-01', '700bf310ca4a4697b59184f61309275a', 0, 1),
(40, '11,12,', '1,1,', '1058', 2, '2020-12-01', '639ccfba60cd41eeba02ba5ff1849249', 0, 1),
(41, '11,12,', '1,1,', '1058', 2, '2020-12-01', '792c6616026948e48a2fcc07eb35c158', 0, 1),
(42, '11,12,', '1,1,', '1058', 2, '2020-12-02', '153427404661463f83a5e8bd080a95e9', 0, 1),
(43, '11,12,', '1,1,', '1058', 2, '2020-12-02', '37473185580340ab8c54d102204c7bf9', 0, 1),
(44, '11,12,', '1,1,', '1058', 2, '2020-12-02', '2bb8d2ccf3544d0089d211abf4d55e36', 0, 1),
(45, '12,13,', '1,1,', '1532', 2, '2020-12-02', '63148f0e7b7043f5a5e470a9ac1d3dde', 0, 1),
(46, '12,', '1,', '299', 2, '2020-12-04', '3c209af45445486c8aefb6cfb55dcbb7', 0, 1),
(47, '24,25,', '1,1,', '13300', 15, '2023-02-19', '2227185104cb42058e5c6b3e7e4a10a2', 0, 0),
(48, '24,25,', '1,1,', '13300', 15, '2023-02-19', '940cf9419d0b4bfdb202de60bdd11831', 0, 0),
(49, '24,25,', '1,1,', '13300', 15, '2023-02-19', '02d6078017ee4033985e16f7bfb9b4fc', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `txn_id` varchar(50) NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(5, '11', 'd388939cdaca4087acca75574a34b035', 759.00, '', 'credit'),
(6, '12', '4e2738d7eade4f57b5fd32434239d35f', 299.00, '', 'credit'),
(7, '12', 'd7a5b179cd07480782fc2d21edec7031', 299.00, '', 'credit'),
(8, '12', 'a0f61b1acd6b444ba5856cc4387e7710', 299.00, '', 'pending'),
(9, '12', '0e2fdf1541994d338c676201097d2481', 598.00, '', 'credit'),
(10, '12', '8b0791e3eb764e45b497b0f0c401d9d6', 299.00, '', 'credit'),
(11, '12', '92c9c474ae864d01b81f7e2f4d3a098e', 299.00, '', 'credit'),
(20, '11', '6863fbdf68be45d5a77aa01774a80885', 759.00, '', 'credit'),
(21, '11', 'ee7d6cea937c4f06b6e5e1fffe47b778', 759.00, '', 'credit'),
(22, '12', 'f7ce91d5964c462fa3972f6cb5373d4a', 299.00, '', 'credit'),
(23, '11', '939d866425ef479c84e276e664ce5a31', 1518.00, '', 'credit'),
(29, '10,11,12,', 'df952fa6bacd4f389de80b1080ed3871', 1342.00, '', 'credit'),
(30, '4,12,', 'd19818d2ba3543ffa03a79a7eb64901b', 94279.00, '', 'credit'),
(31, '11,12,', '2c648ec714914c18b447309d691b7eef', 1058.00, '', 'credit'),
(32, '11,12,', '700bf310ca4a4697b59184f61309275a', 1058.00, '', 'credit'),
(33, '11,12,', '639ccfba60cd41eeba02ba5ff1849249', 1058.00, '', 'credit'),
(34, '11,12,', '792c6616026948e48a2fcc07eb35c158', 1058.00, '', 'credit'),
(35, '11,12,', '153427404661463f83a5e8bd080a95e9', 1058.00, '', 'credit'),
(36, '11,12,', '37473185580340ab8c54d102204c7bf9', 1058.00, '', 'credit'),
(37, '11,12,', '2bb8d2ccf3544d0089d211abf4d55e36', 1058.00, '', 'credit'),
(38, '12,13,', '63148f0e7b7043f5a5e470a9ac1d3dde', 1532.00, '', 'credit'),
(39, '12,', '3c209af45445486c8aefb6cfb55dcbb7', 299.00, '', 'credit'),
(40, '24,25,', '2227185104cb42058e5c6b3e7e4a10a2', 13300.00, '', 'credit'),
(41, '24,25,', '940cf9419d0b4bfdb202de60bdd11831', 13300.00, '', 'credit'),
(42, '24,25,', '02d6078017ee4033985e16f7bfb9b4fc', 13300.00, '', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(15, '63eb06540f92d', 9, 20, 19, 'STEEL SHAKER', '2000', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;The new Applied Nutrition stainless steel shaker. Strong and reliable shaker for your protein shakes which can withstand prolonged usage. A great alternative to your plastic shaker cup!&lt;/span&gt;', '1676346964Applied-shaker-Blue-Cap-min.jpg', 50, NULL, 0, 1),
(16, '63ec500254f68', 10, 26, 20, 'CRITICAL WHEY PROTEIN 2KG', '14000', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Critical Whey Protein has been developed using a unique blend of Whey Protein Concentrate, Whey Protein Isolate &amp;amp; Hydrolysed Whey Protein. Whey Protein Concentrate is produced by Ultra-Filtration Technology containing high levels of Protein and Branched Chain Amino Acids (BCAAs).&lt;/span&gt;', '1676431362Critical-Whey--Funky-Flavours--2kg---Choco-Bueno-600x600(1).jpg', 15, NULL, 0, 1),
(17, '63ec50e035ab4', 10, 26, 20, 'CRITICAL WHEY SACHET 30G', '750', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Critical Whey Protein has been developed using a unique blend of Whey Protein Concentrate, Whey Protein Isolate &amp;amp; Hydrolysed Whey Protein. Whey Protein Concentrate is produced by Ultra-Filtration Technology containing high levels of Protein and Branched Chain Amino Acids (BCAAs).&lt;/span&gt;', '1676431584CriticalWhey30gSachet-StrawberryMilkshake-1000x1000.jpg', 30, NULL, 0, 1),
(18, '63ec5152d3c89', 9, 20, 15, 'ABE JUG WATER BOTTLE 2.5 LITRE', '2000', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Ensure optimal hydration throughout the day with the ABE Matte black 2.5 liter / 88 oz water jug&lt;/span&gt;', '1676431698ABEwaterjug2.5L-1000x1000.jpg', 35, NULL, 0, 1),
(19, '63ec51b40e84a', 10, 26, 20, 'FLAVOURED CREATINE MONOHYDRATE 250G', '8000', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Creatine Monohydrate is suitable for anyone partaking in prolonged or high-intensity exercise, looking to improve physical performance. Applied Nutrition’s Creatine provides the purest, most readily absorbed Creatine Monohydrate available. Studies report that the increase of creatine levels will help delay the onset of fatigue, increase energy metabolism in the muscle cells and enhance the body\'s overall training capability.&lt;/span&gt;', '1676431796Flavoured-Creatine-Monohydrate-250g---Strawberry---Raspberry-1000x1000.jpg', 10, NULL, 0, 1),
(20, '63ec526f5ea38', 10, 21, 20, 'CREATINE MONOHYDRATE', '8500', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Creatine Monohydrate is suitable for anyone partaking in prolonged or high-intensity exercise, and looking to improve physical performance.&lt;/span&gt;', '1676431983Creatine-Monohydrate-250g-1000x1000.jpg', 10, NULL, 0, 1),
(21, '63ec52c3c343f', 10, 21, 20, 'CREATINE 3000', '8000', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Micronized Creatine Monohydrate has been proven to increase physical performance in successive bursts of short-term, high intensity exercise. Each serving provides 3000mg (3g) of Creatine Monohydrate.&lt;/span&gt;', '1676432067Creatine-3000-1000x1000.jpg', 8, NULL, 0, 1),
(22, '63ec54468da77', 10, 29, 21, 'BCAA + GLUTAMINE XPRESS (600 GR.)', '7500', '5 GRAMS OF 2:1:1 BCAA PER SERVING&lt;br&gt;&lt;ul&gt;&lt;li&gt;5 GRAMS OF GLUTAMINE PER SERVING&lt;/li&gt;&lt;li&gt;FORTIFIED WITH TAURINE&lt;/li&gt;&lt;/ul&gt;SUGAR-FREE&lt;br&gt;&lt;ul&gt;&lt;li&gt;GLUTEN-FREE&lt;/li&gt;&lt;/ul&gt;', '167643245413026-168f3163b83a.jpg', 6, NULL, 0, 1),
(23, '63ec55bfb65bd', 10, 26, 22, 'Dymatize ISO 100 Whey Protein Powder', '22500', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: medium;&quot;&gt;The first component is hydrolyzed whey protein isolate, followed by whey protein isolate (so it’s not 100 percent hydrolyzed protein), chocolate powder, salt, soy lecithin (for mixability), natural and artificial flavors, potassium chloride, and sucralose, often known as Splenda.&lt;/span&gt;&lt;br&gt;', '1676432831Untitled-design-2022-03-14T135259.264.jpg', 5, NULL, 0, 1),
(24, '63ec56955c517', 10, 29, 20, 'ABE - ENERGY + PERFORMANCE CANS (6 PACK)', '4300', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Introducing the all new ABE Carbonated Beverage with Zero Sugar, 200mg Caffeine, Citrulline, Beta-Alanine, Taurine and added B-Vitamins. This magnificent Energy &amp;amp; Performance drink provides all of the performance of the UK\'s number 1 selling pre-workout in an accessible canned drink.&lt;/span&gt;', '1676433045UK---ABE-Energy---Performance-Can-330ml---Energy-Flavour-2-1000x1000.jpg', 10, NULL, 0, 1),
(25, '63ec571093c15', 10, 29, 20, 'PUMP 3G PRE-WORKOUT 375G (CAFFEINE FREE)', '9000', '&lt;span style=&quot;color: rgb(33, 37, 41); font-family: Oswald; font-size: 16px;&quot;&gt;Pump 3G Zero is the Stimulant Free version of our Pump 3G, now more concentrated than ever, stacked with a host of the most popular and researched ingredients to help improve pump, focus and performance.&lt;/span&gt;', '1676433168Pump-3G-Zero---Fruit-Burst-78c5cb70-d344-4c8b-91cb-cd0dc6ab4b02-1000x1000.jpg', 8, NULL, 0, 1),
(26, '63ec57f5cca16', 9, 20, 17, 'Shaker Bottle - Black', '850', '&lt;li style=&quot;color: rgb(114, 114, 114); font-family: &amp;quot;Work Sans&amp;quot;, sans-serif; font-size: 18px;&quot;&gt;750ml capacity&lt;/li&gt;&lt;li style=&quot;color: rgb(114, 114, 114); font-family: &amp;quot;Work Sans&amp;quot;, sans-serif; font-size: 18px;&quot;&gt;Unique blending ball for smooth supplement shakes&lt;/li&gt;&lt;li style=&quot;color: rgb(114, 114, 114); font-family: &amp;quot;Work Sans&amp;quot;, sans-serif; font-size: 18px;&quot;&gt;Ideal substitute for an electric blender&lt;/li&gt;&lt;li style=&quot;color: rgb(114, 114, 114); font-family: &amp;quot;Work Sans&amp;quot;, sans-serif; font-size: 18px;&quot;&gt;Screw-tight, leak-free lid&lt;/li&gt;&lt;li style=&quot;color: rgb(114, 114, 114); font-family: &amp;quot;Work Sans&amp;quot;, sans-serif; font-size: 18px;&quot;&gt;100% dishwasher friendly&amp;nbsp;&lt;/li&gt;', '1676433397image-8fc256a2-b55e-4d5f-8f09-0ede413a9fb2-5000x.jpg', 10, NULL, 0, 1),
(27, '63ec598d54656', 9, 19, 16, 'Echelon Dumbbells - 2 lb. Weight Set, Black (ECHDB-2) M', '3000', '&lt;ul style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Source Sans Pro&amp;quot;, sans-serif; font-size: medium;&quot;&gt;&lt;li&gt;Brand: Echelon&lt;/li&gt;&lt;li&gt;Color: Black&lt;/li&gt;&lt;li&gt;Item Weight: 2 Pounds&lt;/li&gt;&lt;li&gt;Material: Neoprene&lt;/li&gt;&lt;li&gt;Product Dimensions: 8&quot;L x 2&quot;W&lt;/li&gt;&lt;li&gt;Style: 2 pound&lt;/li&gt;&lt;li&gt;Handle Material: Iron&lt;/li&gt;&lt;li&gt;Number of Pieces: 2&lt;/li&gt;&lt;li&gt;Item Package Dimensions L x W x H: 7.01 x 5.16 x 2.44 inches&lt;/li&gt;&lt;li&gt;Package Weight: 1.89 Kilograms&lt;/li&gt;&lt;li&gt;Item Dimensions LxWxH: 8 x 2 x 2 inches&lt;/li&gt;&lt;li&gt;Brand Name: Echelon&lt;/li&gt;&lt;li&gt;Model Name: 2lb Dumbbells&lt;/li&gt;&lt;li&gt;Suggested Users: Unisex-Adult&lt;/li&gt;&lt;li&gt;Manufacturer: Echelon&lt;/li&gt;&lt;li&gt;Part Number: ECHDB-2&lt;/li&gt;&lt;li&gt;Included Components: 2lb Dumbbells&lt;/li&gt;&lt;li&gt;Size: M&lt;/li&gt;&lt;li&gt;Brand: Echelon&lt;/li&gt;&lt;li&gt;Color: Black&lt;/li&gt;&lt;li&gt;Item Weight: 2 Pounds&lt;/li&gt;&lt;li&gt;Material: Neoprene&lt;/li&gt;&lt;li&gt;Product Dimensions: 8&quot;L x 2&quot;W&lt;/li&gt;&lt;/ul&gt;', '1676433805s-l500.jpg', 6, NULL, 0, 1),
(28, '63ec5ae4ae2fc', 9, 18, 17, 'Six Pack Care', '15000', '&lt;span style=&quot;color: rgb(119, 119, 119); font-family: Lato, Arial, Helvetica, sans-serif;&quot;&gt;Full Abdominal, crunch and Sit-Up Exerciser – Lean Body Maximizer.&lt;/span&gt;&lt;br style=&quot;color: rgb(119, 119, 119); font-family: Lato, Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(119, 119, 119); font-family: Lato, Arial, Helvetica, sans-serif;&quot;&gt;Arm Straps and Head Rest Included – 2 Resistance Straps + 6 Resistance Springs&lt;/span&gt;&lt;br style=&quot;color: rgb(119, 119, 119); font-family: Lato, Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(119, 119, 119); font-family: Lato, Arial, Helvetica, sans-serif;&quot;&gt;Adjustable in length between 45? to 54?&lt;/span&gt;&lt;br style=&quot;color: rgb(119, 119, 119); font-family: Lato, Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(119, 119, 119); font-family: Lato, Arial, Helvetica, sans-serif;&quot;&gt;Easy to store – Made of light steel&lt;/span&gt;', '1676434148six-pack-care.jpg', 5, NULL, 0, 1),
(29, '63ec5c971364c', 9, 18, 17, 'Back Support Belts Posture Corrector', '500', '&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-mini&quot; style=&quot;margin-left: 18px; color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;color: rgb(15, 17, 17);&quot;&gt;? IMPROVE CONFIDENCE :ZSZBACE back brace Posture Corrector holds your back in place, prevent and reduce scoliosis and back pain as well as correct slouching hunchback and spinal curvature for better postures.Back brace posture corrector will let you look more confident!&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;color: rgb(15, 17, 17);&quot;&gt;? EASY TO USE:ZSZBACE back brace Posture Corrector Great for work, home, or light exercise; start improving your posture today?It only takes about three weeks of wearing our back brace posture correction for 1-2 hours a day to quickly develop muscle memory in your back.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;color: rgb(15, 17, 17);&quot;&gt;?COMFORTABLE?ZSZBACE back brace Posture Corrector is made of breathable, soft, washable materials, for long-lasting back support. the shoulder strap stays right into place without slipping forward putting unnecessary pressure on your neck or digging into your armpits. Made with breathable and soft cotton lining, the back support provides added comfort during extended use sessions that can be worn at work or during leisure activities.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;color: rgb(15, 17, 17);&quot;&gt;?STRONG SUPPORT?ZSZBACE back brace Posture Corrector Crafted with two metal stays and straps that wrap over your shoulders and around your back for added support, this posture brace provides 3-in-1 support for your upper back, lower back and abdomen to relieve back, neck and shoulder pain caused by poor postures.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', '167643458361CFOfqvVmL.-SX522-.jpg', 18, NULL, 1, 1),
(30, '63ec73549f91d', 9, 19, 17, 'Dumbbell Rubber', '1400', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, sans-serif; white-space: pre-wrap;&quot;&gt;Made from solid cast iron with a roll design and encased in rubber. The easy-grip handle measures 25mm in diameter. Most movements that can be done with a barbell become much more difficult when performed with a Rubber dumbbell. This is engineered to perform in commercial and vertical market environments. It is easy to maintain and attractive. All for a great value. The chrome handles resist chipping, flaking, peeling, and corrosion. It is available at a reasonable price. Place an online order now at daraz.pk and get it delivered to your doors.&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, sans-serif; white-space: pre-wrap;&quot;&gt;6kg....(3+3)&lt;/span&gt;', '1676440404rd1.jpg', 16, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(19, 'Dumbles', 9, 2, 1, 0),
(21, 'Fat Burner', 10, 2, 1, 1),
(20, 'Bottles', 9, 3, 1, 0),
(18, 'Machines', 9, 2, 1, 1),
(22, 'Kitchen', 12, 0, 1, 0),
(23, 'Tableware', 12, 0, 0, 1),
(24, 'Living Room', 12, 0, 0, 1),
(25, 'Beds', 12, 0, 1, 1),
(26, 'Weight Gainer', 10, 4, 1, 1),
(27, 'Kurti\'s', 11, 0, 1, 1),
(28, 'Sarees', 11, 0, 0, 1),
(29, 'Pre-Workout', 10, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `username`, `email`, `password`, `mobile`, `address`, `city`, `user_role`) VALUES
(2, 'user12', 'user', 'user@gmail.com', '', '24c9e15e52afc47c225b757e7bee1f9d', '9856231042', '#1234', 'delhi', 1),
(3, 'user2', 'user last', 'user2@gmail.com', '', '7e58d63b60197ceb55a1c487989a3720', '9999999999', '#kdjfg s gfd gdfjgkdsf gsdfkgjk', 'Delhi', 1),
(4, 'user3', 'user last', 'user3@gmail.com', '', '92877af70a45fd6a2ed7fe81e1236b78', '9999999999', '#hsd sdfsd fs df asdf', 'dsf asdf a', 1),
(5, 'user testing', 'user last', 'user4@gmail.com', '', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '999999999', '#dsjg sdf sd f', 'dskfs f aslkf', 1),
(6, 'sadsadsa', 'sdsadsa', 'hh@gmail.com', '', '5e36941b3d856737e81516acd45edc50', '999999999', 'dsfsd fs', 'sdf a', 1),
(7, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user5@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(8, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(9, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51s@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(10, 'sfnsdfbsd', 'sdfasdfsa', 'useryusdfnds@gmail.com', '', 'ba407c68e2448c005ee7459f89dd3e63', '9999999999', '#d dsfh', 'dsfdsf', 1),
(11, 's ds ad', 'sad sad', 'rti@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(12, 's ds ad', 'sad sad', 'rtis@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(13, 's ds ad', 'sad sad', 'rtisf@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(14, 'final user', 'user last', 'userf@gmail.com', '', 'add5092c13fbcc5cceaf1fdb98411871', '9999999999', 'lcnsd', 'dsfs df', 1),
(15, 'ali', 'khan', 'ali@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b', '03568479', 'Pesh', 'Pesh', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
