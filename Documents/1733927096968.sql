-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 05:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwaunoda_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter_offer`
--

CREATE TABLE `counter_offer` (
  `counter_offer_id` int(11) NOT NULL,
  `customerid` varchar(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `date_time` date NOT NULL,
  `offer_value` decimal(20,0) NOT NULL,
  `counter_offer_value` decimal(10,0) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter_offer`
--

INSERT INTO `counter_offer` (`counter_offer_id`, `customerid`, `driver_id`, `trip_id`, `date_time`, `offer_value`, `counter_offer_value`, `status`) VALUES
(1, '3', 1, 1, '2024-08-17', 5, 6, 'Availabl'),
(2, '1', 2, 2, '2024-08-17', 7, 6, 'Availabl'),
(3, '1', 2, 2, '2024-08-17', 7, 6, 'Availabl');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `customerid` int(11) NOT NULL,
  `ecnumber` varchar(10) DEFAULT NULL,
  `account_type` varchar(10) DEFAULT 'Customer',
  `account_category` varchar(10) DEFAULT NULL,
  `signed_on` date DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(25) DEFAULT NULL,
  `idnumber` varchar(20) NOT NULL,
  `sex` text DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `house_number_and_street_name` varchar(20) DEFAULT NULL,
  `surbub` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `lat_cordinates` varchar(20) DEFAULT NULL,
  `long_cordinates` varchar(20) DEFAULT NULL,
  `phone` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `employer` varchar(20) DEFAULT NULL,
  `workindustry` varchar(30) DEFAULT NULL,
  `workaddress` varchar(50) DEFAULT NULL,
  `workphone` varchar(20) DEFAULT NULL,
  `workphone2` varchar(20) DEFAULT NULL,
  `nok1name` varchar(30) DEFAULT NULL,
  `nok1surname` varchar(20) DEFAULT NULL,
  `nok1relationship` varchar(10) DEFAULT NULL,
  `nok1phone` varchar(20) DEFAULT NULL,
  `nok2name` varchar(30) DEFAULT NULL,
  `nok2surname` varchar(20) DEFAULT NULL,
  `nok2relationship` varchar(10) DEFAULT NULL,
  `nok2phone` varchar(20) DEFAULT NULL,
  `creditstanding` varchar(15) DEFAULT 'Unavailable',
  `credit_bar_rule_exception` varchar(3) DEFAULT 'NO',
  `membershipstatus` varchar(20) DEFAULT 'Active',
  `defaultsubs` varchar(15) DEFAULT '100',
  `sendmail` varchar(5) DEFAULT 'No',
  `sendsms` varchar(5) DEFAULT 'No',
  `product_code` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `payment_style` varchar(10) DEFAULT 'CASH',
  `bp_number` varchar(20) DEFAULT NULL,
  `vat_number` varchar(20) DEFAULT NULL,
  `profilePic` varchar(10000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customerid`, `ecnumber`, `account_type`, `account_category`, `signed_on`, `name`, `surname`, `idnumber`, `sex`, `dob`, `address`, `house_number_and_street_name`, `surbub`, `city`, `country`, `lat_cordinates`, `long_cordinates`, `phone`, `username`, `email`, `password`, `employer`, `workindustry`, `workaddress`, `workphone`, `workphone2`, `nok1name`, `nok1surname`, `nok1relationship`, `nok1phone`, `nok2name`, `nok2surname`, `nok2relationship`, `nok2phone`, `creditstanding`, `credit_bar_rule_exception`, `membershipstatus`, `defaultsubs`, `sendmail`, `sendsms`, `product_code`, `cost_price`, `selling_price`, `payment_style`, `bp_number`, `vat_number`, `profilePic`) VALUES
(1, '1', 'Standard', '', '2024-08-17', 'Unknown', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Unavailable', 'NO', 'Active', '100', 'No', 'No', NULL, NULL, NULL, 'CASH', '', '', NULL),
(3, '3', 'customer', 'Standard', '2024-08-18', 'Munaxe', 'Mudoti', '', '', '07-11-2002', '15662 Unit P', '', '', '', '', '', '', 0, '', 'arrowboy047@gmail.com', 'muna12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'NO', 'Unknown', '', '', '', 0, 0.00, 0.00, '', '', '', NULL),
(4, NULL, NULL, NULL, NULL, 'Muna', 'Mudoti', '091234567808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, 'Monday', 'Lamar', '0899089909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, 'Happy', 'Zhanda', '234571962', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', NULL, '', '2024-09-20', 'Mugo', 'Wedu', '1234ACC', '', '', '', '', '', '', '', '', '', 777494960, 'homeBoy', 'arrow047@gmail.com', 'munaXe123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'NO', '', '', '', '', 0, 0.00, 0.00, '', '', '', NULL),
(8, '', NULL, '', '2024-09-23', 'wadza', 'machiva', '2349802Q80', '', '', '', '', '', '', '', '', '', 787499445, 'wawie', 'machiva.wadza10@gmail.com', 'Wadzanai@12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'NO', '', '', '', '', 0, 0.00, 0.00, '', '', '', NULL),
(9, '', NULL, '', '2024-09-23', 'wadza', 'machiva', '2349802Q80', '', '', '', '', '', '', '', '', '', 787499445, 'wawie', 'machiva.wadza10@gmail.com', 'Wadzanai@12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'NO', '', '', '', '', 0, 0.00, 0.00, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_details`
--

CREATE TABLE `driver_details` (
  `driver_id` int(11) NOT NULL,
  `ecnumber` varchar(10) DEFAULT NULL,
  `account_type` varchar(10) NOT NULL DEFAULT 'Standard',
  `signed_on` date DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(25) DEFAULT NULL,
  `idnumber` varchar(20) NOT NULL,
  `sex` text DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `house_number_and_street_name` varchar(20) DEFAULT NULL,
  `surbub` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `lat_cordinates` varchar(20) DEFAULT NULL,
  `long_cordinates` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `plate` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `employer` varchar(20) DEFAULT NULL,
  `workindustry` varchar(30) DEFAULT NULL,
  `workaddress` varchar(50) DEFAULT NULL,
  `workphone` varchar(20) DEFAULT NULL,
  `workphone2` varchar(20) DEFAULT NULL,
  `nok1name` varchar(30) DEFAULT NULL,
  `nok1surname` varchar(20) DEFAULT NULL,
  `nok1relationship` varchar(10) DEFAULT NULL,
  `nok1phone` varchar(20) DEFAULT NULL,
  `nok2name` varchar(30) DEFAULT NULL,
  `nok2surname` varchar(20) DEFAULT NULL,
  `nok2relationship` varchar(10) DEFAULT NULL,
  `nok2phone` varchar(20) DEFAULT NULL,
  `rating` varchar(15) DEFAULT 'Unavailable',
  `credit_bar_rule_exception` varchar(3) DEFAULT 'NO',
  `membershipstatus` varchar(20) DEFAULT 'Active',
  `defaultsubs` varchar(15) DEFAULT '100',
  `sendmail` varchar(5) DEFAULT 'No',
  `sendsms` varchar(5) DEFAULT 'No',
  `product_code` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `payment_style` varchar(10) DEFAULT 'CASH',
  `profilePic` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `driver_details`
--

INSERT INTO `driver_details` (`driver_id`, `ecnumber`, `account_type`, `signed_on`, `username`, `name`, `surname`, `idnumber`, `sex`, `dob`, `address`, `house_number_and_street_name`, `surbub`, `city`, `country`, `lat_cordinates`, `long_cordinates`, `phone`, `plate`, `email`, `password`, `employer`, `workindustry`, `workaddress`, `workphone`, `workphone2`, `nok1name`, `nok1surname`, `nok1relationship`, `nok1phone`, `nok2name`, `nok2surname`, `nok2relationship`, `nok2phone`, `rating`, `credit_bar_rule_exception`, `membershipstatus`, `defaultsubs`, `sendmail`, `sendsms`, `product_code`, `cost_price`, `selling_price`, `payment_style`, `profilePic`) VALUES
(1, '1', 'Standard', '2024-08-17', '', 'Unknown', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Unavailable', 'NO', 'Active', '100', 'No', 'No', NULL, NULL, NULL, 'CASH', '0'),
(2, '', 'driver', '0000-00-00', 'munaXe', 'Munashe', 'Mudoti', '0712345689', 'male', '', '', '', '', '', '', '', '', '0712485520', '1234AAC', 'munaxe12@gmail.com', 'password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0.00, 0.00, '', ''),
(3, '', 'driver', '2024-09-20', 'lowkeyman', 'Mike', 'James', '08247674N90', '', '', '', '', '', '', '', '', '', '0712485520', '1234 AAD', 'lowkeyman', 'qwertY1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0.00, 0.00, '', ''),
(4, '', 'driver', '2024-09-20', 'MABARA', 'Wadza', 'NewSign', '98764321P09', '', '', '', '', '', '', '', '', '', '0712345689', '1234ACC', '21savage@gmail.com', 'qwerty1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0.00, 0.00, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payid` int(11) NOT NULL,
  `propertyid` varchar(30) NOT NULL,
  `project` varchar(30) NOT NULL,
  `daterec` date NOT NULL,
  `timerec` time NOT NULL,
  `datefor` date NOT NULL,
  `description` varchar(40) NOT NULL,
  `quantity` decimal(20,3) NOT NULL,
  `combined_receipt_total_quantity` decimal(20,2) DEFAULT 0.00,
  `amntrec` decimal(30,2) NOT NULL,
  `amntrec_credit` double(30,2) NOT NULL,
  `interest` decimal(20,0) NOT NULL,
  `principal` decimal(20,0) NOT NULL,
  `deposit` varchar(20) NOT NULL,
  `balance` decimal(20,0) NOT NULL,
  `receipt_ref_dispatch_locked` varchar(3) NOT NULL DEFAULT 'NO',
  `feesdue` float NOT NULL,
  `username` varchar(20) NOT NULL,
  `confirmed_by` varchar(20) NOT NULL,
  `authorized_by` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `dispatch_status` varchar(3) NOT NULL DEFAULT 'NO',
  `dispatch_by` varchar(30) DEFAULT NULL,
  `dispatch_date` date DEFAULT NULL,
  `dispatch_time` time DEFAULT NULL,
  `dispatched_quantity` double(20,2) DEFAULT NULL,
  `undispatched_quantity_remaining` double(20,2) DEFAULT NULL,
  `undispatched_inventory_release_date` date DEFAULT NULL,
  `dispatch_sales_shift_id` int(11) DEFAULT NULL,
  `sales_shifts_id` int(11) DEFAULT NULL,
  `folio` varchar(5) NOT NULL,
  `pmode` text NOT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `usd_price` decimal(10,3) DEFAULT NULL,
  `usd_cost_per_unit` decimal(20,2) NOT NULL DEFAULT 0.00,
  `credit_repayment_currency_price` decimal(20,2) DEFAULT NULL,
  `ref` varchar(20) NOT NULL,
  `vat_rate_charged` decimal(10,3) DEFAULT NULL,
  `vat_invoice_no` int(11) DEFAULT NULL,
  `discount_requisition_id` int(11) DEFAULT NULL,
  `discount_amount` decimal(20,2) DEFAULT 0.00,
  `discount_cost` decimal(20,2) DEFAULT 0.00,
  `monthsbehind` int(11) NOT NULL,
  `movementafterpayment` varchar(2) NOT NULL,
  `suspencebal` decimal(20,0) NOT NULL,
  `suspencedr` decimal(20,2) DEFAULT NULL,
  `suspencecr` decimal(10,0) NOT NULL,
  `suspencenarration` varchar(20) DEFAULT NULL,
  `marketing_media_sale_origin` int(11) NOT NULL,
  `marketing_loyalty_structure_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `sync_status` varchar(15) DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payid`, `propertyid`, `project`, `daterec`, `timerec`, `datefor`, `description`, `quantity`, `combined_receipt_total_quantity`, `amntrec`, `amntrec_credit`, `interest`, `principal`, `deposit`, `balance`, `receipt_ref_dispatch_locked`, `feesdue`, `username`, `confirmed_by`, `authorized_by`, `branch`, `dispatch_status`, `dispatch_by`, `dispatch_date`, `dispatch_time`, `dispatched_quantity`, `undispatched_quantity_remaining`, `undispatched_inventory_release_date`, `dispatch_sales_shift_id`, `sales_shifts_id`, `folio`, `pmode`, `currency`, `price`, `usd_price`, `usd_cost_per_unit`, `credit_repayment_currency_price`, `ref`, `vat_rate_charged`, `vat_invoice_no`, `discount_requisition_id`, `discount_amount`, `discount_cost`, `monthsbehind`, `movementafterpayment`, `suspencebal`, `suspencedr`, `suspencecr`, `suspencenarration`, `marketing_media_sale_origin`, `marketing_loyalty_structure_id`, `customerid`, `comment`, `sync_status`) VALUES
(1, '', '', '2024-08-01', '16:43:51', '2024-08-01', 'LP Gas Sale Wholesale', 287.600, 0.00, 431.38, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-01', '16:44:22', 287.60, 0.00, NULL, NULL, 2, 'INL', 'USD', NULL, 1.50, 1.500, 1.50, 1.50, '1.16', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(2, '', '', '2024-08-02', '10:25:56', '2024-08-02', 'LP Gas Sale Wholesale', 219.100, 0.00, 284.85, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-02', '10:31:49', 219.10, 0.00, NULL, NULL, 4, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '2.10', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(3, '', '', '2024-08-03', '10:53:29', '2024-08-03', 'LP Gas Sale Wholesale', 1647.100, 0.00, 2141.26, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-03', '10:55:02', 1647.10, 0.00, NULL, NULL, 5, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '3.10', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(4, '', '', '2024-08-04', '11:03:16', '2024-08-04', 'LP Gas Sale Wholesale', 1471.700, 0.00, 1913.22, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-04', '11:05:20', 1471.70, 0.00, NULL, NULL, 6, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '4.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(5, '', '', '2024-08-05', '11:27:30', '2024-08-05', 'LP Gas Sale Wholesale', 2310.800, 0.00, 3004.04, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-05', '11:28:33', 2310.80, 0.00, NULL, NULL, 7, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '5.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(6, '', '', '2024-08-06', '11:30:23', '2024-08-06', 'LP Gas Sale Wholesale', 1531.500, 0.00, 1990.90, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-06', '11:31:42', 1531.50, 0.00, NULL, NULL, 8, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '6.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(7, '', '', '2024-08-07', '11:34:09', '2024-08-07', 'LP Gas Sale Wholesale', 754.900, 0.00, 981.33, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-07', '11:35:03', 754.90, 0.00, NULL, NULL, 9, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '7.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(8, '', '', '2024-08-08', '11:41:28', '2024-08-08', 'LP Gas Sale Wholesale', 3206.100, 0.00, 4167.95, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-08', '11:42:01', 3206.10, 0.00, NULL, NULL, 10, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '8.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(9, '', '', '2024-08-09', '11:44:20', '2024-08-09', 'LP Gas Sale Wholesale', 1050.600, 0.00, 1365.83, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-09', '11:44:54', 1050.60, 0.00, NULL, NULL, 11, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '9.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(11, '', '', '2024-08-11', '11:51:05', '2024-08-11', 'LP Gas Sale Wholesale', 910.900, 0.00, 1184.22, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-11', '11:52:24', 910.90, 0.00, NULL, NULL, 13, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '11.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(12, '', '', '2024-08-12', '11:59:43', '2024-08-12', 'LP Gas Sale Wholesale', 871.000, 0.00, 1132.29, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-12', '12:00:37', 871.00, 0.00, NULL, NULL, 14, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '12.11', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(13, '', '', '2024-08-13', '12:03:09', '2024-08-13', 'LP Gas Sale Wholesale', 874.400, 0.00, 1136.73, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-13', '12:03:59', 874.40, 0.00, NULL, NULL, 15, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '13.12', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(14, '', '', '2024-08-14', '12:08:24', '2024-08-14', 'LP Gas Sale Wholesale', 1672.900, 0.00, 2174.77, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-14', '12:09:45', 1672.90, 0.00, NULL, NULL, 16, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '14.12', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(15, '', '', '2024-08-15', '12:15:44', '2024-08-15', 'LP Gas Sale Wholesale', 1972.700, 0.00, 2564.55, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-15', '12:17:32', 1972.70, 0.00, NULL, NULL, 17, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '15.12', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(16, '', '', '2024-08-16', '12:22:17', '2024-08-16', 'LP Gas Sale Wholesale', 4856.900, 0.00, 6314.02, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-16', '12:23:16', 4856.90, 0.00, NULL, NULL, 18, 'INL', 'USD', NULL, 1.30, 1.300, 1.30, 1.30, '16.12', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(17, '', '', '2024-08-17', '12:28:11', '2024-08-17', 'LP Gas Sale Wholesale', 1034.100, 0.00, 1447.70, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-17', '12:28:54', 1034.10, 0.00, NULL, NULL, 19, 'INL', 'USD', NULL, 1.40, 1.400, 1.40, 1.40, '17.12', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(18, '', '', '2024-08-24', '12:30:00', '2024-08-24', 'LP Gas Sale Wholesale', 71.400, 0.00, 100.00, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-24', '12:59:53', 21.40, 0.00, NULL, NULL, 20, 'INL', 'USD', NULL, 1.40, 1.400, 0.00, 1.40, '18.12', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending'),
(19, '', '', '2024-08-24', '12:38:22', '2024-08-24', 'LP Gas Sale Retail', 3.100, 0.00, 5.00, 0.00, 0, 0, '0', 0, 'NO', 0, 'RHODA2024', '', '', 'TILCO', 'YES', 'RHODA2024', '2024-08-24', '12:56:31', 3.10, 0.00, NULL, NULL, 20, 'INL', 'USD', NULL, 1.60, 1.600, 0.00, 1.60, '19.12', NULL, NULL, 0, 0.00, 0.00, 0, '0', 0, 0.00, 0, '', 0, 1, 1, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `driver_id` varchar(20) DEFAULT NULL,
  `cust_id` varchar(20) NOT NULL,
  `order_start_time` date NOT NULL DEFAULT current_timestamp(),
  `start_date_time` date DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Pending',
  `deliveray_details` varchar(200) NOT NULL,
  `weight` decimal(10,0) DEFAULT 0,
  `delivery_contact_details` varchar(200) NOT NULL,
  `dest_location` varchar(50) NOT NULL,
  `origin_location` varchar(50) NOT NULL,
  `origin_location_lat` decimal(50,0) NOT NULL,
  `origin_location_long` decimal(50,0) NOT NULL,
  `destination_lat` decimal(50,0) NOT NULL,
  `destination_long` decimal(50,0) NOT NULL,
  `distance` decimal(50,0) NOT NULL,
  `delivery_cost_proposed` decimal(20,0) NOT NULL,
  `accepted_cost` decimal(20,0) NOT NULL,
  `payment_type` varchar(20) NOT NULL DEFAULT 'cash',
  `currency_id` varchar(1) DEFAULT '$',
  `currency_code` varchar(10) DEFAULT 'USD',
  `usd_rate` decimal(10,0) DEFAULT 1,
  `customer_comment` varchar(200) NOT NULL,
  `driver_comment` varchar(200) NOT NULL,
  `driver_stars` int(5) DEFAULT NULL,
  `customer_stars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `driver_id`, `cust_id`, `order_start_time`, `start_date_time`, `status`, `deliveray_details`, `weight`, `delivery_contact_details`, `dest_location`, `origin_location`, `origin_location_lat`, `origin_location_long`, `destination_lat`, `destination_long`, `distance`, `delivery_cost_proposed`, `accepted_cost`, `payment_type`, `currency_id`, `currency_code`, `usd_rate`, `customer_comment`, `driver_comment`, `driver_stars`, `customer_stars`) VALUES
(2, NULL, '', '0000-00-00', NULL, NULL, '', NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, '', NULL, NULL, NULL, '', '', NULL, NULL),
(3, '4', '13', '2024-09-19', '2024-08-17', 'In Transit', 'Pending', 0, '0777494960', 'Harare', 'Bulawayo', 263, 0, 0, 0, 150, 16, 12, 'cash', '$', 'USD', 1, 'good', 'notbad', NULL, NULL),
(4, '4', '13', '2024-09-19', '2024-08-17', 'In Transit', '2 Bicycles with a refridgerator', 0, '0777494960', 'Harare', 'Bulawayo', 263, 0, 0, 0, 150, 16, 12, 'cash', '$', 'USD', 1, 'good', 'notbad', NULL, NULL),
(5, 'your_driver_id', 'your_customer_id', '2024-09-19', '2024-09-17', 'Pending', 'SATCHEL', 0, '0712345670', 'harare', 'wedza', 0, 0, 0, 0, 0, 12223, 0, 'cash', '$', 'USD', 1, '', '', 0, NULL),
(6, 'your_driver_id', 'your_customer_id', '2024-09-19', '2024-09-18', 'Pending', 'satchel', 0, '0712345670', 'wedza', 'harare', 0, 0, 0, 0, 0, 12, 0, 'cash', '$', 'USD', 1, '', '', 0, NULL),
(7, 'your_driver_id', 'your_customer_id', '2024-09-19', '2024-09-18', 'Pending', 'satchel', 0, '0712345670', 'wedza', 'harare', 0, 0, 0, 0, 0, 12, 0, 'cash', '$', 'USD', 1, '', '', 0, NULL),
(8, 'your_driver_id', 'your_customer_id', '2024-09-19', '2024-09-18', 'Pending', 'waw', 0, '0712345670', 'sss', 'waw', 0, 0, 0, 0, 0, 123, 0, 'cash', '$', 'USD', 1, '', '', 0, NULL),
(9, '', '16', '2024-09-19', '0000-00-00', 'Pending', 'Bags', 89, '0712485520', 'Chitungwiza', 'Harare ', 0, 0, 0, 0, 0, 20, 0, 'Cash', '$', NULL, NULL, '', '', 0, NULL),
(10, '', '16', '2024-09-19', '0000-00-00', 'Pending', 'Fruits', 70, '0777494960', 'Kadoma', 'Gweru', 0, 0, 0, 0, 0, 5000, 0, 'Ecocash', '$', NULL, NULL, '', '', 0, NULL),
(11, '', '16', '2024-09-19', '0000-00-00', 'Pending', 'Kiwi', 98, '0712485520', 'Harare', 'Avondale', 0, 0, 0, 0, 0, 25, 0, 'Cash', '$', NULL, NULL, '', '', 0, NULL),
(12, '', '16', '2024-09-19', '0000-00-00', 'Pending', 'Guava', 40, '0712485520', 'Norton', 'Harare', 0, 0, 0, 0, 0, 700, 0, 'Cash', '$', NULL, NULL, '', '', 0, NULL),
(13, '', '16', '2024-09-19', '0000-00-00', 'Pending', 'Towels', 289, '43', 'Harare', 'Mbare', 0, 0, 0, 0, 0, 4500, 0, 'Cash', '$', NULL, NULL, '', '', 0, NULL),
(14, '', '16', '2024-09-19', '0000-00-00', 'Pending', 'kj', 78, '76890897654', 'k', 'kl', 0, 0, 0, 0, 0, 89, 0, 'Cash', '', NULL, NULL, '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` varchar(35) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` varchar(5) NOT NULL DEFAULT 'Yes',
  `activesession` datetime DEFAULT NULL,
  `addproperty` varchar(3) NOT NULL DEFAULT 'No',
  `editproperty` varchar(3) NOT NULL DEFAULT 'No',
  `approverequests` varchar(3) NOT NULL DEFAULT 'No',
  `delivery` varchar(5) NOT NULL DEFAULT 'No',
  `status` varchar(15) NOT NULL DEFAULT 'Active',
  `employee_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `sync_status` varchar(15) DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `role`, `email`, `notify`, `activesession`, `addproperty`, `editproperty`, `approverequests`, `delivery`, `status`, `employee_id`, `company_id`, `branch_id`, `sync_status`) VALUES
(1, '', 'ef27441193fecbfc6e489cbedad2142a', 'Admin', 'machiva.wadza10@gmail.com', 'Yes', NULL, 'No', 'No', 'No', 'No', 'Active', 1, 5, 13, NULL),
(2, '', '58023e1bb93b74d5877478836684666d', 'Operator', '', 'Yes', NULL, 'No', 'No', 'No', 'No', 'Active', 1, 5, 13, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counter_offer`
--
ALTER TABLE `counter_offer`
  ADD PRIMARY KEY (`counter_offer_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `driver_details`
--
ALTER TABLE `driver_details`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `payid` (`payid`),
  ADD KEY `propertyid` (`propertyid`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counter_offer`
--
ALTER TABLE `counter_offer`
  MODIFY `counter_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `driver_details`
--
ALTER TABLE `driver_details`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
