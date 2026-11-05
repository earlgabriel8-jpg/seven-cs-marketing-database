-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2026 at 02:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seven_cs_marketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `audit_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `record_id` int(11) DEFAULT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`audit_id`, `user_id`, `action`, `table_name`, `record_id`, `old_values`, `new_values`, `ip_address`, `created_at`) VALUES
(1, 1, 'DEMO_UPDATE', 'sales', 1, NULL, '{\"demo_record\": 1}', '192.168.1.11', '2026-06-01 02:00:00'),
(2, 2, 'DEMO_VIEW', 'users', 2, NULL, '{\"demo_record\": 2}', '192.168.1.12', '2026-06-02 02:00:00'),
(3, 3, 'DEMO_DELETE', 'deliveries', 3, NULL, '{\"demo_record\": 3}', '192.168.1.13', '2026-06-03 02:00:00'),
(4, 4, 'DEMO_LOGIN', 'purchase_orders', 4, NULL, '{\"demo_record\": 4}', '192.168.1.14', '2026-06-04 02:00:00'),
(5, 5, 'DEMO_INSERT', 'products', 5, NULL, '{\"demo_record\": 5}', '192.168.1.15', '2026-06-05 02:00:00'),
(6, 6, 'DEMO_UPDATE', 'sales', 6, NULL, '{\"demo_record\": 6}', '192.168.1.16', '2026-06-06 02:00:00'),
(7, 7, 'DEMO_VIEW', 'users', 7, NULL, '{\"demo_record\": 7}', '192.168.1.17', '2026-06-07 02:00:00'),
(8, 8, 'DEMO_DELETE', 'deliveries', 8, NULL, '{\"demo_record\": 8}', '192.168.1.18', '2026-06-08 02:00:00'),
(9, 9, 'DEMO_LOGIN', 'purchase_orders', 9, NULL, '{\"demo_record\": 9}', '192.168.1.19', '2026-06-09 02:00:00'),
(10, 10, 'DEMO_INSERT', 'products', 10, NULL, '{\"demo_record\": 10}', '192.168.1.20', '2026-06-10 02:00:00'),
(11, 11, 'DEMO_UPDATE', 'sales', 11, NULL, '{\"demo_record\": 11}', '192.168.1.21', '2026-06-11 02:00:00'),
(12, 12, 'DEMO_VIEW', 'users', 12, NULL, '{\"demo_record\": 12}', '192.168.1.22', '2026-06-12 02:00:00'),
(13, 13, 'DEMO_DELETE', 'deliveries', 13, NULL, '{\"demo_record\": 13}', '192.168.1.23', '2026-06-13 02:00:00'),
(14, 14, 'DEMO_LOGIN', 'purchase_orders', 14, NULL, '{\"demo_record\": 14}', '192.168.1.24', '2026-06-14 02:00:00'),
(15, 15, 'DEMO_INSERT', 'products', 15, NULL, '{\"demo_record\": 15}', '192.168.1.25', '2026-06-15 02:00:00'),
(16, 16, 'DEMO_UPDATE', 'sales', 16, NULL, '{\"demo_record\": 16}', '192.168.1.26', '2026-06-16 02:00:00'),
(17, 17, 'DEMO_VIEW', 'users', 17, NULL, '{\"demo_record\": 17}', '192.168.1.27', '2026-06-17 02:00:00'),
(18, 18, 'DEMO_DELETE', 'deliveries', 18, NULL, '{\"demo_record\": 18}', '192.168.1.28', '2026-06-18 02:00:00'),
(19, 19, 'DEMO_LOGIN', 'purchase_orders', 19, NULL, '{\"demo_record\": 19}', '192.168.1.29', '2026-06-19 02:00:00'),
(20, 20, 'DEMO_INSERT', 'products', 20, NULL, '{\"demo_record\": 20}', '192.168.1.30', '2026-06-20 02:00:00'),
(21, 21, 'DEMO_UPDATE', 'sales', 21, NULL, '{\"demo_record\": 21}', '192.168.1.31', '2026-06-21 02:00:00'),
(22, 22, 'DEMO_VIEW', 'users', 22, NULL, '{\"demo_record\": 22}', '192.168.1.32', '2026-06-22 02:00:00'),
(23, 23, 'DEMO_DELETE', 'deliveries', 23, NULL, '{\"demo_record\": 23}', '192.168.1.33', '2026-06-23 02:00:00'),
(24, 24, 'DEMO_LOGIN', 'purchase_orders', 24, NULL, '{\"demo_record\": 24}', '192.168.1.34', '2026-06-24 02:00:00'),
(25, 25, 'DEMO_INSERT', 'products', 25, NULL, '{\"demo_record\": 25}', '192.168.1.35', '2026-06-25 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`, `status`) VALUES
(1, 'Refrigerators', 'Appliance category: Refrigerators', 'Active'),
(2, 'Washing Machines', 'Appliance category: Washing Machines', 'Active'),
(3, 'Air Conditioners', 'Appliance category: Air Conditioners', 'Active'),
(4, 'Televisions', 'Appliance category: Televisions', 'Active'),
(5, 'Electric Fans', 'Appliance category: Electric Fans', 'Active'),
(6, 'Rice Cookers', 'Appliance category: Rice Cookers', 'Active'),
(7, 'Microwaves', 'Appliance category: Microwaves', 'Active'),
(8, 'Water Dispensers', 'Appliance category: Water Dispensers', 'Active'),
(9, 'blenders', 'Appliance category: blenders', 'Active'),
(10, 'Vacuum Cleaners', 'Appliance category: Vacuum Cleaners', 'Active'),
(11, 'Freezers', 'Appliance category: Freezers', 'Active'),
(12, 'Induction Cookers', 'Appliance category: Induction Cookers', 'Active'),
(13, 'Toasters', 'Appliance category: Toasters', 'Active'),
(14, 'Ovens', 'Appliance category: Ovens', 'Active'),
(15, 'Coffee Makers', 'Appliance category: Coffee Makers', 'Active'),
(16, 'Air Purifiers', 'Appliance category: Air Purifiers', 'Active'),
(17, 'Dehumidifiers', 'Appliance category: Dehumidifiers', 'Active'),
(18, 'Electric Kettles', 'Appliance category: Electric Kettles', 'Active'),
(19, 'Irons', 'Appliance category: Irons', 'Active'),
(20, 'Dishwashers', 'Appliance category: Dishwashers', 'Active'),
(21, 'Food Processors', 'Appliance category: Food Processors', 'Active'),
(22, 'Juicers', 'Appliance category: Juicers', 'Active'),
(23, 'Range Hoods', 'Appliance category: Range Hoods', 'Active'),
(24, 'Water Heaters', 'Appliance category: Water Heaters', 'Active'),
(25, 'Small Appliances', 'Appliance category: Small Appliances', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `contact_no`, `email`, `address`, `created_at`) VALUES
(1, 'Casey Bautista', '09180000001', 'customer01@example.com', '1 Demo Street, Cagayan de Oro City', '2026-02-01'),
(2, 'Riley Villanueva', '09180000002', 'customer02@example.com', '2 Demo Street, Cagayan de Oro City', '2026-02-02'),
(3, 'Avery Gonzales', '09180000003', 'customer03@example.com', '3 Demo Street, Cagayan de Oro City', '2026-02-03'),
(4, 'Cameron Aquino', '09180000004', 'customer04@example.com', '4 Demo Street, Cagayan de Oro City', '2026-02-04'),
(5, 'Drew Castillo', '09180000005', 'customer05@example.com', '5 Demo Street, Cagayan de Oro City', '2026-02-05'),
(6, 'Sam Navarro', '09180000006', 'customer06@example.com', '6 Demo Street, Cagayan de Oro City', '2026-02-06'),
(7, 'Robin Torres', '09180000007', 'customer07@example.com', '7 Demo Street, Cagayan de Oro City', '2026-02-07'),
(8, 'Skyler Perez', '09180000008', 'customer08@example.com', '8 Demo Street, Cagayan de Oro City', '2026-02-08'),
(9, 'Parker Rivera', '09180000009', 'customer09@example.com', '9 Demo Street, Cagayan de Oro City', '2026-02-09'),
(10, 'Quinn Lim', '09180000010', 'customer10@example.com', '10 Demo Street, Cagayan de Oro City', '2026-02-10'),
(11, 'Reese Tan', '09180000011', 'customer11@example.com', '11 Demo Street, Cagayan de Oro City', '2026-02-11'),
(12, 'Hayden Ocampo', '09180000012', 'customer12@example.com', '12 Demo Street, Cagayan de Oro City', '2026-02-12'),
(13, 'Rowan Diaz', '09180000013', 'customer13@example.com', '13 Demo Street, Cagayan de Oro City', '2026-02-13'),
(14, 'Emerson Lopez', '09180000014', 'customer14@example.com', '14 Demo Street, Cagayan de Oro City', '2026-02-14'),
(15, 'Finley Fernandez', '09180000015', 'customer15@example.com', '15 Demo Street, Cagayan de Oro City', '2026-02-15'),
(16, 'Kendall Mercado', '09180000016', 'customer16@example.com', '16 Demo Street, Cagayan de Oro City', '2026-02-16'),
(17, 'Blake Viador', '09180000017', 'customer17@example.com', '17 Demo Street, Cagayan de Oro City', '2026-02-17'),
(18, 'Payton Santos', '09180000018', 'customer18@example.com', '18 Demo Street, Cagayan de Oro City', '2026-02-18'),
(19, 'Dakota Reyes', '09180000019', 'customer19@example.com', '19 Demo Street, Cagayan de Oro City', '2026-02-19'),
(20, 'Charlie Cruz', '09180000020', 'customer20@example.com', '20 Demo Street, Cagayan de Oro City', '2026-02-20'),
(21, 'Alex Garcia', '09180000021', 'customer21@example.com', '21 Demo Street, Cagayan de Oro City', '2026-02-21'),
(22, 'Jamie Mendoza', '09180000022', 'customer22@example.com', '22 Demo Street, Cagayan de Oro City', '2026-02-22'),
(23, 'Taylor Dela Cruz', '09180000023', 'customer23@example.com', '23 Demo Street, Cagayan de Oro City', '2026-02-23'),
(24, 'Morgan Ramos', '09180000024', 'customer24@example.com', '24 Demo Street, Cagayan de Oro City', '2026-02-24'),
(25, 'Jordan Flores', '09180000025', 'customer25@example.com', '25 Demo Street, Cagayan de Oro City', '2026-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `delivery_address` text NOT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `sale_id`, `delivery_address`, `contact_no`, `delivery_date`, `delivery_status_id`, `remarks`, `created_at`) VALUES
(1, 1, '1 Customer Road, Cagayan de Oro City', '09180000001', '2026-05-01', 1, 'Demo delivery record', '2026-04-01'),
(2, 2, '2 Customer Road, Cagayan de Oro City', '09180000002', '2026-05-02', 2, 'Demo delivery record', '2026-04-02'),
(3, 3, '3 Customer Road, Cagayan de Oro City', '09180000003', '2026-05-03', 3, 'Demo delivery record', '2026-04-03'),
(4, 4, '4 Customer Road, Cagayan de Oro City', '09180000004', '2026-05-04', 4, 'Demo delivery record', '2026-04-04'),
(5, 5, '5 Customer Road, Cagayan de Oro City', '09180000005', '2026-05-05', 5, 'Demo delivery record', '2026-04-05'),
(6, 6, '6 Customer Road, Cagayan de Oro City', '09180000006', '2026-05-06', 1, 'Demo delivery record', '2026-04-06'),
(7, 7, '7 Customer Road, Cagayan de Oro City', '09180000007', '2026-05-07', 2, 'Demo delivery record', '2026-04-07'),
(8, 8, '8 Customer Road, Cagayan de Oro City', '09180000008', '2026-05-08', 3, 'Demo delivery record', '2026-04-08'),
(9, 9, '9 Customer Road, Cagayan de Oro City', '09180000009', '2026-05-09', 4, 'Demo delivery record', '2026-04-09'),
(10, 10, '10 Customer Road, Cagayan de Oro City', '09180000010', '2026-05-10', 5, 'Demo delivery record', '2026-04-10'),
(11, 11, '11 Customer Road, Cagayan de Oro City', '09180000011', '2026-05-11', 1, 'Demo delivery record', '2026-04-11'),
(12, 12, '12 Customer Road, Cagayan de Oro City', '09180000012', '2026-05-12', 2, 'Demo delivery record', '2026-04-12'),
(13, 13, '13 Customer Road, Cagayan de Oro City', '09180000013', '2026-05-13', 3, 'Demo delivery record', '2026-04-13'),
(14, 14, '14 Customer Road, Cagayan de Oro City', '09180000014', '2026-05-14', 4, 'Demo delivery record', '2026-04-14'),
(15, 15, '15 Customer Road, Cagayan de Oro City', '09180000015', '2026-05-15', 5, 'Demo delivery record', '2026-04-15'),
(16, 16, '16 Customer Road, Cagayan de Oro City', '09180000016', '2026-05-16', 1, 'Demo delivery record', '2026-04-16'),
(17, 17, '17 Customer Road, Cagayan de Oro City', '09180000017', '2026-05-17', 2, 'Demo delivery record', '2026-04-17'),
(18, 18, '18 Customer Road, Cagayan de Oro City', '09180000018', '2026-05-18', 3, 'Demo delivery record', '2026-04-18'),
(19, 19, '19 Customer Road, Cagayan de Oro City', '09180000019', '2026-05-19', 4, 'Demo delivery record', '2026-04-19'),
(20, 20, '20 Customer Road, Cagayan de Oro City', '09180000020', '2026-05-20', 5, 'Demo delivery record', '2026-04-20'),
(21, 21, '21 Customer Road, Cagayan de Oro City', '09180000021', '2026-05-21', 1, 'Demo delivery record', '2026-04-21'),
(22, 22, '22 Customer Road, Cagayan de Oro City', '09180000022', '2026-05-22', 2, 'Demo delivery record', '2026-04-22'),
(23, 23, '23 Customer Road, Cagayan de Oro City', '09180000023', '2026-05-23', 3, 'Demo delivery record', '2026-04-23'),
(24, 24, '24 Customer Road, Cagayan de Oro City', '09180000024', '2026-05-24', 4, 'Demo delivery record', '2026-04-24'),
(25, 25, '25 Customer Road, Cagayan de Oro City', '09180000025', '2026-05-25', 5, 'Demo delivery record', '2026-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_statuses`
--

CREATE TABLE `delivery_statuses` (
  `delivery_status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_statuses`
--

INSERT INTO `delivery_statuses` (`delivery_status_id`, `status_name`) VALUES
(5, 'Cancelled'),
(4, 'Delivered'),
(6, 'Demo Delivery Status 06'),
(7, 'Demo Delivery Status 07'),
(8, 'Demo Delivery Status 08'),
(9, 'Demo Delivery Status 09'),
(10, 'Demo Delivery Status 10'),
(11, 'Demo Delivery Status 11'),
(12, 'Demo Delivery Status 12'),
(13, 'Demo Delivery Status 13'),
(14, 'Demo Delivery Status 14'),
(15, 'Demo Delivery Status 15'),
(16, 'Demo Delivery Status 16'),
(17, 'Demo Delivery Status 17'),
(18, 'Demo Delivery Status 18'),
(19, 'Demo Delivery Status 19'),
(20, 'Demo Delivery Status 20'),
(21, 'Demo Delivery Status 21'),
(22, 'Demo Delivery Status 22'),
(23, 'Demo Delivery Status 23'),
(24, 'Demo Delivery Status 24'),
(25, 'Demo Delivery Status 25'),
(3, 'In Transit'),
(1, 'Pending'),
(2, 'Preparing');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_tracking`
--

CREATE TABLE `delivery_tracking` (
  `tracking_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_date` date DEFAULT curdate(),
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_tracking`
--

INSERT INTO `delivery_tracking` (`tracking_id`, `delivery_id`, `delivery_status_id`, `user_id`, `tracking_date`, `remarks`) VALUES
(1, 1, 1, 1, '2026-05-01', 'Tracking update 1'),
(2, 2, 2, 2, '2026-05-02', 'Tracking update 2'),
(3, 3, 3, 3, '2026-05-03', 'Tracking update 3'),
(4, 4, 4, 4, '2026-05-04', 'Tracking update 4'),
(5, 5, 5, 5, '2026-05-05', 'Tracking update 5'),
(6, 6, 1, 6, '2026-05-06', 'Tracking update 6'),
(7, 7, 2, 7, '2026-05-07', 'Tracking update 7'),
(8, 8, 3, 8, '2026-05-08', 'Tracking update 8'),
(9, 9, 4, 9, '2026-05-09', 'Tracking update 9'),
(10, 10, 5, 10, '2026-05-10', 'Tracking update 10'),
(11, 11, 1, 11, '2026-05-11', 'Tracking update 11'),
(12, 12, 2, 12, '2026-05-12', 'Tracking update 12'),
(13, 13, 3, 13, '2026-05-13', 'Tracking update 13'),
(14, 14, 4, 14, '2026-05-14', 'Tracking update 14'),
(15, 15, 5, 15, '2026-05-15', 'Tracking update 15'),
(16, 16, 1, 16, '2026-05-16', 'Tracking update 16'),
(17, 17, 2, 17, '2026-05-17', 'Tracking update 17'),
(18, 18, 3, 18, '2026-05-18', 'Tracking update 18'),
(19, 19, 4, 19, '2026-05-19', 'Tracking update 19'),
(20, 20, 5, 20, '2026-05-20', 'Tracking update 20'),
(21, 21, 1, 21, '2026-05-21', 'Tracking update 21'),
(22, 22, 2, 22, '2026-05-22', 'Tracking update 22'),
(23, 23, 3, 23, '2026-05-23', 'Tracking update 23'),
(24, 24, 4, 24, '2026-05-24', 'Tracking update 24'),
(25, 25, 5, 25, '2026-05-25', 'Tracking update 25');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(100) NOT NULL,
  `discount_type` varchar(20) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `discount_name`, `discount_type`, `discount_value`, `start_date`, `end_date`, `status`) VALUES
(1, 'Demo Discount 01', 'Percentage', 6, '2026-01-01', '2026-12-31', 'Active'),
(2, 'Demo Discount 02', 'Fixed', 7, '2026-01-01', '2026-12-31', 'Active'),
(3, 'Demo Discount 03', 'Percentage', 8, '2026-01-01', '2026-12-31', 'Active'),
(4, 'Demo Discount 04', 'Fixed', 9, '2026-01-01', '2026-12-31', 'Inactive'),
(5, 'Demo Discount 05', 'Percentage', 10, '2026-01-01', '2026-12-31', 'Active'),
(6, 'Demo Discount 06', 'Fixed', 11, '2026-01-01', '2026-12-31', 'Active'),
(7, 'Demo Discount 07', 'Percentage', 12, '2026-01-01', '2026-12-31', 'Active'),
(8, 'Demo Discount 08', 'Fixed', 13, '2026-01-01', '2026-12-31', 'Inactive'),
(9, 'Demo Discount 09', 'Percentage', 14, '2026-01-01', '2026-12-31', 'Active'),
(10, 'Demo Discount 10', 'Fixed', 15, '2026-01-01', '2026-12-31', 'Active'),
(11, 'Demo Discount 11', 'Percentage', 16, '2026-01-01', '2026-12-31', 'Active'),
(12, 'Demo Discount 12', 'Fixed', 17, '2026-01-01', '2026-12-31', 'Inactive'),
(13, 'Demo Discount 13', 'Percentage', 18, '2026-01-01', '2026-12-31', 'Active'),
(14, 'Demo Discount 14', 'Fixed', 19, '2026-01-01', '2026-12-31', 'Active'),
(15, 'Demo Discount 15', 'Percentage', 20, '2026-01-01', '2026-12-31', 'Active'),
(16, 'Demo Discount 16', 'Fixed', 21, '2026-01-01', '2026-12-31', 'Inactive'),
(17, 'Demo Discount 17', 'Percentage', 22, '2026-01-01', '2026-12-31', 'Active'),
(18, 'Demo Discount 18', 'Fixed', 23, '2026-01-01', '2026-12-31', 'Active'),
(19, 'Demo Discount 19', 'Percentage', 24, '2026-01-01', '2026-12-31', 'Active'),
(20, 'Demo Discount 20', 'Fixed', 25, '2026-01-01', '2026-12-31', 'Inactive'),
(21, 'Demo Discount 21', 'Percentage', 26, '2026-01-01', '2026-12-31', 'Active'),
(22, 'Demo Discount 22', 'Fixed', 27, '2026-01-01', '2026-12-31', 'Active'),
(23, 'Demo Discount 23', 'Percentage', 28, '2026-01-01', '2026-12-31', 'Active'),
(24, 'Demo Discount 24', 'Fixed', 29, '2026-01-01', '2026-12-31', 'Inactive'),
(25, 'Demo Discount 25', 'Percentage', 30, '2026-01-01', '2026-12-31', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `payment_date` date DEFAULT curdate(),
  `reference_no` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `sale_id`, `payment_method_id`, `amount_paid`, `payment_date`, `reference_no`, `status`) VALUES
(1, 1, 1, 3350, '2026-04-01', 'REF-DEMO-0001', 'Completed'),
(2, 2, 2, 4200, '2026-04-02', 'REF-DEMO-0002', 'Completed'),
(3, 3, 3, 5050, '2026-04-03', 'REF-DEMO-0003', 'Completed'),
(4, 4, 4, 5900, '2026-04-04', 'REF-DEMO-0004', 'Completed'),
(5, 5, 1, 6750, '2026-04-05', 'REF-DEMO-0005', 'Completed'),
(6, 6, 2, 7600, '2026-04-06', 'REF-DEMO-0006', 'Completed'),
(7, 7, 3, 8450, '2026-04-07', 'REF-DEMO-0007', 'Completed'),
(8, 8, 4, 9300, '2026-04-08', 'REF-DEMO-0008', 'Completed'),
(9, 9, 1, 10150, '2026-04-09', 'REF-DEMO-0009', 'Completed'),
(10, 10, 2, 11000, '2026-04-10', 'REF-DEMO-0010', 'Completed'),
(11, 11, 3, 11850, '2026-04-11', 'REF-DEMO-0011', 'Completed'),
(12, 12, 4, 12700, '2026-04-12', 'REF-DEMO-0012', 'Completed'),
(13, 13, 1, 13550, '2026-04-13', 'REF-DEMO-0013', 'Completed'),
(14, 14, 2, 14400, '2026-04-14', 'REF-DEMO-0014', 'Completed'),
(15, 15, 3, 15250, '2026-04-15', 'REF-DEMO-0015', 'Completed'),
(16, 16, 4, 16100, '2026-04-16', 'REF-DEMO-0016', 'Completed'),
(17, 17, 1, 16950, '2026-04-17', 'REF-DEMO-0017', 'Completed'),
(18, 18, 2, 17800, '2026-04-18', 'REF-DEMO-0018', 'Completed'),
(19, 19, 3, 18650, '2026-04-19', 'REF-DEMO-0019', 'Completed'),
(20, 20, 4, 19500, '2026-04-20', 'REF-DEMO-0020', 'Completed'),
(21, 21, 1, 20350, '2026-04-21', 'REF-DEMO-0021', 'Completed'),
(22, 22, 2, 21200, '2026-04-22', 'REF-DEMO-0022', 'Completed'),
(23, 23, 3, 22050, '2026-04-23', 'REF-DEMO-0023', 'Completed'),
(24, 24, 4, 22900, '2026-04-24', 'REF-DEMO-0024', 'Completed'),
(25, 25, 1, 23750, '2026-04-25', 'REF-DEMO-0025', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `payment_method_name`) VALUES
(3, 'Bank Transfer'),
(4, 'Card'),
(1, 'Cash'),
(5, 'Demo Payment Method 05'),
(6, 'Demo Payment Method 06'),
(7, 'Demo Payment Method 07'),
(8, 'Demo Payment Method 08'),
(9, 'Demo Payment Method 09'),
(10, 'Demo Payment Method 10'),
(11, 'Demo Payment Method 11'),
(12, 'Demo Payment Method 12'),
(13, 'Demo Payment Method 13'),
(14, 'Demo Payment Method 14'),
(15, 'Demo Payment Method 15'),
(16, 'Demo Payment Method 16'),
(17, 'Demo Payment Method 17'),
(18, 'Demo Payment Method 18'),
(19, 'Demo Payment Method 19'),
(20, 'Demo Payment Method 20'),
(21, 'Demo Payment Method 21'),
(22, 'Demo Payment Method 22'),
(23, 'Demo Payment Method 23'),
(24, 'Demo Payment Method 24'),
(25, 'Demo Payment Method 25'),
(2, 'GCash');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock_quantity` int(11) DEFAULT 0,
  `reorder_level` int(11) DEFAULT 5,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `created_at` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `supplier_id`, `brand_id`, `product_code`, `product_name`, `description`, `model`, `price`, `stock_quantity`, `reorder_level`, `image`, `status`, `created_at`) VALUES
(1, 1, 1, 1, 'APP-0001', 'Samsung Refrigerators 01', 'Demo appliance product 1', 'MODEL-001', 3350, 8, 5, 'images/product_01.jpg', 'Active', '2026-03-01'),
(2, 2, 2, 2, 'APP-0002', 'LG Washing Machines 02', 'Demo appliance product 2', 'MODEL-002', 4200, 11, 5, 'images/product_02.jpg', 'Active', '2026-03-02'),
(3, 3, 3, 3, 'APP-0003', 'Panasonic Air Conditioners 03', 'Demo appliance product 3', 'MODEL-003', 5050, 14, 5, 'images/product_03.jpg', 'Active', '2026-03-03'),
(4, 4, 4, 4, 'APP-0004', 'Sharp Televisions 04', 'Demo appliance product 4', 'MODEL-004', 5900, 17, 5, 'images/product_04.jpg', 'Active', '2026-03-04'),
(5, 5, 5, 5, 'APP-0005', 'Toshiba Electric Fans 05', 'Demo appliance product 5', 'MODEL-005', 6750, 20, 5, 'images/product_05.jpg', 'Active', '2026-03-05'),
(6, 6, 6, 6, 'APP-0006', 'Sony Rice Cookers 06', 'Demo appliance product 6', 'MODEL-006', 7600, 23, 5, 'images/product_06.jpg', 'Active', '2026-03-06'),
(7, 7, 7, 7, 'APP-0007', 'Haier Microwaves 07', 'Demo appliance product 7', 'MODEL-007', 8450, 26, 5, 'images/product_07.jpg', 'Active', '2026-03-07'),
(8, 8, 8, 8, 'APP-0008', 'Whirlpool Water Dispensers 08', 'Demo appliance product 8', 'MODEL-008', 9300, 29, 5, 'images/product_08.jpg', 'Active', '2026-03-08'),
(9, 9, 9, 9, 'APP-0009', 'Electrolux blenders 09', 'Demo appliance product 9', 'MODEL-009', 10150, 32, 5, 'images/product_09.jpg', 'Active', '2026-03-09'),
(10, 10, 10, 10, 'APP-0010', 'Philips Vacuum Cleaners 10', 'Demo appliance product 10', 'MODEL-010', 11000, 35, 5, 'images/product_10.jpg', 'Active', '2026-03-10'),
(11, 11, 11, 11, 'APP-0011', 'Hisense Freezers 11', 'Demo appliance product 11', 'MODEL-011', 11850, 38, 5, 'images/product_11.jpg', 'Active', '2026-03-11'),
(12, 12, 12, 12, 'APP-0012', 'Midea Induction Cookers 12', 'Demo appliance product 12', 'MODEL-012', 12700, 41, 5, 'images/product_12.jpg', 'Active', '2026-03-12'),
(13, 13, 13, 13, 'APP-0013', 'Fujidenzo Toasters 13', 'Demo appliance product 13', 'MODEL-013', 13550, 44, 5, 'images/product_13.jpg', 'Active', '2026-03-13'),
(14, 14, 14, 14, 'APP-0014', 'Condura Ovens 14', 'Demo appliance product 14', 'MODEL-014', 14400, 7, 5, 'images/product_14.jpg', 'Active', '2026-03-14'),
(15, 15, 15, 15, 'APP-0015', 'American Home Coffee Makers 15', 'Demo appliance product 15', 'MODEL-015', 15250, 10, 5, 'images/product_15.jpg', 'Active', '2026-03-15'),
(16, 16, 16, 16, 'APP-0016', 'Dowell Air Purifiers 16', 'Demo appliance product 16', 'MODEL-016', 16100, 13, 5, 'images/product_16.jpg', 'Active', '2026-03-16'),
(17, 17, 17, 17, 'APP-0017', 'Imarflex Dehumidifiers 17', 'Demo appliance product 17', 'MODEL-017', 16950, 16, 5, 'images/product_17.jpg', 'Active', '2026-03-17'),
(18, 18, 18, 18, 'APP-0018', 'Hanabishi Electric Kettles 18', 'Demo appliance product 18', 'MODEL-018', 17800, 19, 5, 'images/product_18.jpg', 'Active', '2026-03-18'),
(19, 19, 19, 19, 'APP-0019', 'Kyowa Irons 19', 'Demo appliance product 19', 'MODEL-019', 18650, 22, 5, 'images/product_19.jpg', 'Active', '2026-03-19'),
(20, 20, 20, 20, 'APP-0020', 'Camel Dishwashers 20', 'Demo appliance product 20', 'MODEL-020', 19500, 25, 5, 'images/product_20.jpg', 'Active', '2026-03-20'),
(21, 21, 21, 21, 'APP-0021', 'Union Food Processors 21', 'Demo appliance product 21', 'MODEL-021', 20350, 28, 5, 'images/product_21.jpg', 'Active', '2026-03-21'),
(22, 22, 22, 22, 'APP-0022', 'Kolin Juicers 22', 'Demo appliance product 22', 'MODEL-022', 21200, 31, 5, 'images/product_22.jpg', 'Active', '2026-03-22'),
(23, 23, 23, 23, 'APP-0023', 'Carrier Range Hoods 23', 'Demo appliance product 23', 'MODEL-023', 22050, 34, 5, 'images/product_23.jpg', 'Active', '2026-03-23'),
(24, 24, 24, 24, 'APP-0024', 'Daikin Water Heaters 24', 'Demo appliance product 24', 'MODEL-024', 22900, 37, 5, 'images/product_24.jpg', 'Active', '2026-03-24'),
(25, 25, 25, 25, 'APP-0025', 'Hitachi Small Appliances 25', 'Demo appliance product 25', 'MODEL-025', 23750, 40, 5, 'images/product_25.jpg', 'Active', '2026-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `product_brands`
--

CREATE TABLE `product_brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_brands`
--

INSERT INTO `product_brands` (`brand_id`, `brand_name`, `description`, `status`) VALUES
(1, 'Samsung', 'Samsung home appliance brand', 'Active'),
(2, 'LG', 'LG home appliance brand', 'Active'),
(3, 'Panasonic', 'Panasonic home appliance brand', 'Active'),
(4, 'Sharp', 'Sharp home appliance brand', 'Active'),
(5, 'Toshiba', 'Toshiba home appliance brand', 'Active'),
(6, 'Sony', 'Sony home appliance brand', 'Active'),
(7, 'Haier', 'Haier home appliance brand', 'Active'),
(8, 'Whirlpool', 'Whirlpool home appliance brand', 'Active'),
(9, 'Electrolux', 'Electrolux home appliance brand', 'Active'),
(10, 'Philips', 'Philips home appliance brand', 'Active'),
(11, 'Hisense', 'Hisense home appliance brand', 'Active'),
(12, 'Midea', 'Midea home appliance brand', 'Active'),
(13, 'Fujidenzo', 'Fujidenzo home appliance brand', 'Active'),
(14, 'Condura', 'Condura home appliance brand', 'Active'),
(15, 'American Home', 'American Home home appliance brand', 'Active'),
(16, 'Dowell', 'Dowell home appliance brand', 'Active'),
(17, 'Imarflex', 'Imarflex home appliance brand', 'Active'),
(18, 'Hanabishi', 'Hanabishi home appliance brand', 'Active'),
(19, 'Kyowa', 'Kyowa home appliance brand', 'Active'),
(20, 'Camel', 'Camel home appliance brand', 'Active'),
(21, 'Union', 'Union home appliance brand', 'Active'),
(22, 'Kolin', 'Kolin home appliance brand', 'Active'),
(23, 'Carrier', 'Carrier home appliance brand', 'Active'),
(24, 'Daikin', 'Daikin home appliance brand', 'Active'),
(25, 'Hitachi', 'Hitachi home appliance brand', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `is_primary` varchar(5) DEFAULT 'No',
  `created_at` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `product_id`, `image_path`, `is_primary`, `created_at`) VALUES
(1, 1, 'images/product_01_detail.jpg', 'Yes', '2026-03-01'),
(2, 2, 'images/product_02_detail.jpg', 'No', '2026-03-02'),
(3, 3, 'images/product_03_detail.jpg', 'Yes', '2026-03-03'),
(4, 4, 'images/product_04_detail.jpg', 'No', '2026-03-04'),
(5, 5, 'images/product_05_detail.jpg', 'Yes', '2026-03-05'),
(6, 6, 'images/product_06_detail.jpg', 'No', '2026-03-06'),
(7, 7, 'images/product_07_detail.jpg', 'Yes', '2026-03-07'),
(8, 8, 'images/product_08_detail.jpg', 'No', '2026-03-08'),
(9, 9, 'images/product_09_detail.jpg', 'Yes', '2026-03-09'),
(10, 10, 'images/product_10_detail.jpg', 'No', '2026-03-10'),
(11, 11, 'images/product_11_detail.jpg', 'Yes', '2026-03-11'),
(12, 12, 'images/product_12_detail.jpg', 'No', '2026-03-12'),
(13, 13, 'images/product_13_detail.jpg', 'Yes', '2026-03-13'),
(14, 14, 'images/product_14_detail.jpg', 'No', '2026-03-14'),
(15, 15, 'images/product_15_detail.jpg', 'Yes', '2026-03-15'),
(16, 16, 'images/product_16_detail.jpg', 'No', '2026-03-16'),
(17, 17, 'images/product_17_detail.jpg', 'Yes', '2026-03-17'),
(18, 18, 'images/product_18_detail.jpg', 'No', '2026-03-18'),
(19, 19, 'images/product_19_detail.jpg', 'Yes', '2026-03-19'),
(20, 20, 'images/product_20_detail.jpg', 'No', '2026-03-20'),
(21, 21, 'images/product_21_detail.jpg', 'Yes', '2026-03-21'),
(22, 22, 'images/product_22_detail.jpg', 'No', '2026-03-22'),
(23, 23, 'images/product_23_detail.jpg', 'Yes', '2026-03-23'),
(24, 24, 'images/product_24_detail.jpg', 'No', '2026-03-24'),
(25, 25, 'images/product_25_detail.jpg', 'Yes', '2026-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `po_item_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`po_item_id`, `po_id`, `product_id`, `quantity`, `unit_cost`) VALUES
(1, 1, 1, 3, 1900),
(2, 2, 2, 4, 2300),
(3, 3, 3, 5, 2700),
(4, 4, 4, 6, 3100),
(5, 5, 5, 7, 3500),
(6, 6, 6, 8, 3900),
(7, 7, 7, 9, 4300),
(8, 8, 8, 2, 4700),
(9, 9, 9, 3, 5100),
(10, 10, 10, 4, 5500),
(11, 11, 11, 5, 5900),
(12, 12, 12, 6, 6300),
(13, 13, 13, 7, 6700),
(14, 14, 14, 8, 7100),
(15, 15, 15, 9, 7500),
(16, 16, 16, 2, 7900),
(17, 17, 17, 3, 8300),
(18, 18, 18, 4, 8700),
(19, 19, 19, 5, 9100),
(20, 20, 20, 6, 9500),
(21, 21, 21, 7, 9900),
(22, 22, 22, 8, 10300),
(23, 23, 23, 9, 10700),
(24, 24, 24, 2, 11100),
(25, 25, 25, 3, 11500);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `po_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `po_date` date DEFAULT curdate(),
  `expected_date` date DEFAULT NULL,
  `po_status_id` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`po_id`, `supplier_id`, `user_id`, `po_date`, `expected_date`, `po_status_id`, `remarks`) VALUES
(1, 1, 1, '2026-02-01', '2026-03-01', 1, 'Demo purchase order 1'),
(2, 2, 2, '2026-02-02', '2026-03-02', 2, 'Demo purchase order 2'),
(3, 3, 3, '2026-02-03', '2026-03-03', 3, 'Demo purchase order 3'),
(4, 4, 4, '2026-02-04', '2026-03-04', 4, 'Demo purchase order 4'),
(5, 5, 5, '2026-02-05', '2026-03-05', 5, 'Demo purchase order 5'),
(6, 6, 6, '2026-02-06', '2026-03-06', 1, 'Demo purchase order 6'),
(7, 7, 7, '2026-02-07', '2026-03-07', 2, 'Demo purchase order 7'),
(8, 8, 8, '2026-02-08', '2026-03-08', 3, 'Demo purchase order 8'),
(9, 9, 9, '2026-02-09', '2026-03-09', 4, 'Demo purchase order 9'),
(10, 10, 10, '2026-02-10', '2026-03-10', 5, 'Demo purchase order 10'),
(11, 11, 11, '2026-02-11', '2026-03-11', 1, 'Demo purchase order 11'),
(12, 12, 12, '2026-02-12', '2026-03-12', 2, 'Demo purchase order 12'),
(13, 13, 13, '2026-02-13', '2026-03-13', 3, 'Demo purchase order 13'),
(14, 14, 14, '2026-02-14', '2026-03-14', 4, 'Demo purchase order 14'),
(15, 15, 15, '2026-02-15', '2026-03-15', 5, 'Demo purchase order 15'),
(16, 16, 16, '2026-02-16', '2026-03-16', 1, 'Demo purchase order 16'),
(17, 17, 17, '2026-02-17', '2026-03-17', 2, 'Demo purchase order 17'),
(18, 18, 18, '2026-02-18', '2026-03-18', 3, 'Demo purchase order 18'),
(19, 19, 19, '2026-02-19', '2026-03-19', 4, 'Demo purchase order 19'),
(20, 20, 20, '2026-02-20', '2026-03-20', 5, 'Demo purchase order 20'),
(21, 21, 21, '2026-02-21', '2026-03-21', 1, 'Demo purchase order 21'),
(22, 22, 22, '2026-02-22', '2026-03-22', 2, 'Demo purchase order 22'),
(23, 23, 23, '2026-02-23', '2026-03-23', 3, 'Demo purchase order 23'),
(24, 24, 24, '2026-02-24', '2026-03-24', 4, 'Demo purchase order 24'),
(25, 25, 25, '2026-02-25', '2026-03-25', 5, 'Demo purchase order 25');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_statuses`
--

CREATE TABLE `purchase_order_statuses` (
  `po_status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_statuses`
--

INSERT INTO `purchase_order_statuses` (`po_status_id`, `status_name`) VALUES
(3, 'Approved'),
(5, 'Cancelled'),
(6, 'Demo Purchase Status 06'),
(7, 'Demo Purchase Status 07'),
(8, 'Demo Purchase Status 08'),
(9, 'Demo Purchase Status 09'),
(10, 'Demo Purchase Status 10'),
(11, 'Demo Purchase Status 11'),
(12, 'Demo Purchase Status 12'),
(13, 'Demo Purchase Status 13'),
(14, 'Demo Purchase Status 14'),
(15, 'Demo Purchase Status 15'),
(16, 'Demo Purchase Status 16'),
(17, 'Demo Purchase Status 17'),
(18, 'Demo Purchase Status 18'),
(19, 'Demo Purchase Status 19'),
(20, 'Demo Purchase Status 20'),
(21, 'Demo Purchase Status 21'),
(22, 'Demo Purchase Status 22'),
(23, 'Demo Purchase Status 23'),
(24, 'Demo Purchase Status 24'),
(25, 'Demo Purchase Status 25'),
(1, 'Draft'),
(2, 'Pending'),
(4, 'Received');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(9, 'Auditor'),
(2, 'Cashier'),
(3, 'Customer'),
(5, 'Delivery Staff'),
(11, 'Demo Role 011'),
(12, 'Demo Role 012'),
(13, 'Demo Role 013'),
(14, 'Demo Role 014'),
(15, 'Demo Role 015'),
(16, 'Demo Role 016'),
(17, 'Demo Role 017'),
(18, 'Demo Role 018'),
(19, 'Demo Role 019'),
(20, 'Demo Role 020'),
(21, 'Demo Role 021'),
(22, 'Demo Role 022'),
(23, 'Demo Role 023'),
(24, 'Demo Role 024'),
(25, 'Demo Role 025'),
(26, 'Demo Role 026'),
(27, 'Demo Role 027'),
(28, 'Demo Role 028'),
(29, 'Demo Role 029'),
(30, 'Demo Role 030'),
(31, 'Demo Role 031'),
(32, 'Demo Role 032'),
(33, 'Demo Role 033'),
(34, 'Demo Role 034'),
(35, 'Demo Role 035'),
(36, 'Demo Role 036'),
(37, 'Demo Role 037'),
(38, 'Demo Role 038'),
(39, 'Demo Role 039'),
(40, 'Demo Role 040'),
(41, 'Demo Role 041'),
(42, 'Demo Role 042'),
(43, 'Demo Role 043'),
(44, 'Demo Role 044'),
(45, 'Demo Role 045'),
(46, 'Demo Role 046'),
(47, 'Demo Role 047'),
(48, 'Demo Role 048'),
(49, 'Demo Role 049'),
(50, 'Demo Role 050'),
(51, 'Demo Role 051'),
(52, 'Demo Role 052'),
(53, 'Demo Role 053'),
(54, 'Demo Role 054'),
(55, 'Demo Role 055'),
(56, 'Demo Role 056'),
(57, 'Demo Role 057'),
(58, 'Demo Role 058'),
(59, 'Demo Role 059'),
(60, 'Demo Role 060'),
(61, 'Demo Role 061'),
(62, 'Demo Role 062'),
(63, 'Demo Role 063'),
(64, 'Demo Role 064'),
(65, 'Demo Role 065'),
(66, 'Demo Role 066'),
(67, 'Demo Role 067'),
(68, 'Demo Role 068'),
(69, 'Demo Role 069'),
(70, 'Demo Role 070'),
(71, 'Demo Role 071'),
(72, 'Demo Role 072'),
(73, 'Demo Role 073'),
(74, 'Demo Role 074'),
(75, 'Demo Role 075'),
(76, 'Demo Role 076'),
(77, 'Demo Role 077'),
(78, 'Demo Role 078'),
(79, 'Demo Role 079'),
(80, 'Demo Role 080'),
(81, 'Demo Role 081'),
(82, 'Demo Role 082'),
(83, 'Demo Role 083'),
(84, 'Demo Role 084'),
(85, 'Demo Role 085'),
(86, 'Demo Role 086'),
(87, 'Demo Role 087'),
(88, 'Demo Role 088'),
(89, 'Demo Role 089'),
(90, 'Demo Role 090'),
(91, 'Demo Role 091'),
(92, 'Demo Role 092'),
(93, 'Demo Role 093'),
(94, 'Demo Role 094'),
(95, 'Demo Role 095'),
(96, 'Demo Role 096'),
(97, 'Demo Role 097'),
(98, 'Demo Role 098'),
(99, 'Demo Role 099'),
(100, 'Demo Role 100'),
(4, 'Inventory Manager'),
(6, 'Purchasing Officer'),
(7, 'Sales Manager'),
(10, 'System Support'),
(8, 'Warehouse Staff');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `sale_status_id` int(11) NOT NULL,
  `sale_date` date DEFAULT curdate(),
  `amount_tendered` int(11) DEFAULT NULL,
  `change_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `customer_id`, `user_id`, `payment_method_id`, `sale_status_id`, `sale_date`, `amount_tendered`, `change_amount`) VALUES
(1, 1, 1, 1, 1, '2026-04-01', 10500, 110),
(2, 2, 2, 2, 2, '2026-04-02', 11000, 120),
(3, 3, 3, 3, 3, '2026-04-03', 11500, 130),
(4, 4, 4, 4, 4, '2026-04-04', 12000, 140),
(5, 5, 5, 1, 1, '2026-04-05', 12500, 150),
(6, 6, 6, 2, 2, '2026-04-06', 13000, 160),
(7, 7, 7, 3, 3, '2026-04-07', 13500, 170),
(8, 8, 8, 4, 4, '2026-04-08', 14000, 180),
(9, 9, 9, 1, 1, '2026-04-09', 14500, 190),
(10, 10, 10, 2, 2, '2026-04-10', 15000, 200),
(11, 11, 11, 3, 3, '2026-04-11', 15500, 210),
(12, 12, 12, 4, 4, '2026-04-12', 16000, 220),
(13, 13, 13, 1, 1, '2026-04-13', 16500, 230),
(14, 14, 14, 2, 2, '2026-04-14', 17000, 240),
(15, 15, 15, 3, 3, '2026-04-15', 17500, 250),
(16, 16, 16, 4, 4, '2026-04-16', 18000, 260),
(17, 17, 17, 1, 1, '2026-04-17', 18500, 270),
(18, 18, 18, 2, 2, '2026-04-18', 19000, 280),
(19, 19, 19, 3, 3, '2026-04-19', 19500, 290),
(20, 20, 20, 4, 4, '2026-04-20', 20000, 300),
(21, 21, 21, 1, 1, '2026-04-21', 20500, 310),
(22, 22, 22, 2, 2, '2026-04-22', 21000, 320),
(23, 23, 23, 3, 3, '2026-04-23', 21500, 330),
(24, 24, 24, 4, 4, '2026-04-24', 22000, 340),
(25, 25, 25, 1, 1, '2026-04-25', 22500, 350);

-- --------------------------------------------------------

--
-- Table structure for table `sale_discounts`
--

CREATE TABLE `sale_discounts` (
  `sale_discount_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `discount_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_discounts`
--

INSERT INTO `sale_discounts` (`sale_discount_id`, `sale_id`, `discount_id`, `discount_amount`) VALUES
(1, 1, 1, 110),
(2, 2, 2, 120),
(3, 3, 3, 130),
(4, 4, 4, 140),
(5, 5, 5, 150),
(6, 6, 6, 160),
(7, 7, 7, 170),
(8, 8, 8, 180),
(9, 9, 9, 190),
(10, 10, 10, 200),
(11, 11, 11, 210),
(12, 12, 12, 220),
(13, 13, 13, 230),
(14, 14, 14, 240),
(15, 15, 15, 250),
(16, 16, 16, 260),
(17, 17, 17, 270),
(18, 18, 18, 280),
(19, 19, 19, 290),
(20, 20, 20, 300),
(21, 21, 21, 310),
(22, 22, 22, 320),
(23, 23, 23, 330),
(24, 24, 24, 340),
(25, 25, 25, 350);

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`sale_item_id`, `sale_id`, `product_id`, `quantity`, `unit_price`) VALUES
(1, 1, 1, 2, 3350),
(2, 2, 2, 3, 4200),
(3, 3, 3, 1, 5050),
(4, 4, 4, 2, 5900),
(5, 5, 5, 3, 6750),
(6, 6, 6, 1, 7600),
(7, 7, 7, 2, 8450),
(8, 8, 8, 3, 9300),
(9, 9, 9, 1, 10150),
(10, 10, 10, 2, 11000),
(11, 11, 11, 3, 11850),
(12, 12, 12, 1, 12700),
(13, 13, 13, 2, 13550),
(14, 14, 14, 3, 14400),
(15, 15, 15, 1, 15250),
(16, 16, 16, 2, 16100),
(17, 17, 17, 3, 16950),
(18, 18, 18, 1, 17800),
(19, 19, 19, 2, 18650),
(20, 20, 20, 3, 19500),
(21, 21, 21, 1, 20350),
(22, 22, 22, 2, 21200),
(23, 23, 23, 3, 22050),
(24, 24, 24, 1, 22900),
(25, 25, 25, 2, 23750);

-- --------------------------------------------------------

--
-- Table structure for table `sale_statuses`
--

CREATE TABLE `sale_statuses` (
  `sale_status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_statuses`
--

INSERT INTO `sale_statuses` (`sale_status_id`, `status_name`) VALUES
(3, 'Cancelled'),
(2, 'Completed'),
(5, 'Demo Sale Status 05'),
(6, 'Demo Sale Status 06'),
(7, 'Demo Sale Status 07'),
(8, 'Demo Sale Status 08'),
(9, 'Demo Sale Status 09'),
(10, 'Demo Sale Status 10'),
(11, 'Demo Sale Status 11'),
(12, 'Demo Sale Status 12'),
(13, 'Demo Sale Status 13'),
(14, 'Demo Sale Status 14'),
(15, 'Demo Sale Status 15'),
(16, 'Demo Sale Status 16'),
(17, 'Demo Sale Status 17'),
(18, 'Demo Sale Status 18'),
(19, 'Demo Sale Status 19'),
(20, 'Demo Sale Status 20'),
(21, 'Demo Sale Status 21'),
(22, 'Demo Sale Status 22'),
(23, 'Demo Sale Status 23'),
(24, 'Demo Sale Status 24'),
(25, 'Demo Sale Status 25'),
(1, 'Pending'),
(4, 'Refunded');

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `log_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_type_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`log_id`, `product_id`, `user_id`, `transaction_type_id`, `quantity`, `remarks`, `created_at`) VALUES
(1, 1, 1, 1, 6, 'Demo stock movement 1', '2026-03-01'),
(2, 2, 2, 2, 7, 'Demo stock movement 2', '2026-03-02'),
(3, 3, 3, 3, 8, 'Demo stock movement 3', '2026-03-03'),
(4, 4, 4, 4, 9, 'Demo stock movement 4', '2026-03-04'),
(5, 5, 5, 1, 10, 'Demo stock movement 5', '2026-03-05'),
(6, 6, 6, 2, 11, 'Demo stock movement 6', '2026-03-06'),
(7, 7, 7, 3, 12, 'Demo stock movement 7', '2026-03-07'),
(8, 8, 8, 4, 13, 'Demo stock movement 8', '2026-03-08'),
(9, 9, 9, 1, 14, 'Demo stock movement 9', '2026-03-09'),
(10, 10, 10, 2, 15, 'Demo stock movement 10', '2026-03-10'),
(11, 11, 11, 3, 16, 'Demo stock movement 11', '2026-03-11'),
(12, 12, 12, 4, 17, 'Demo stock movement 12', '2026-03-12'),
(13, 13, 13, 1, 18, 'Demo stock movement 13', '2026-03-13'),
(14, 14, 14, 2, 19, 'Demo stock movement 14', '2026-03-14'),
(15, 15, 15, 3, 20, 'Demo stock movement 15', '2026-03-15'),
(16, 16, 16, 4, 21, 'Demo stock movement 16', '2026-03-16'),
(17, 17, 17, 1, 22, 'Demo stock movement 17', '2026-03-17'),
(18, 18, 18, 2, 23, 'Demo stock movement 18', '2026-03-18'),
(19, 19, 19, 3, 24, 'Demo stock movement 19', '2026-03-19'),
(20, 20, 20, 4, 25, 'Demo stock movement 20', '2026-03-20'),
(21, 21, 21, 1, 26, 'Demo stock movement 21', '2026-03-21'),
(22, 22, 22, 2, 27, 'Demo stock movement 22', '2026-03-22'),
(23, 23, 23, 3, 28, 'Demo stock movement 23', '2026-03-23'),
(24, 24, 24, 4, 29, 'Demo stock movement 24', '2026-03-24'),
(25, 25, 25, 1, 30, 'Demo stock movement 25', '2026-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transaction_types`
--

CREATE TABLE `stock_transaction_types` (
  `transaction_type_id` int(11) NOT NULL,
  `transaction_type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_transaction_types`
--

INSERT INTO `stock_transaction_types` (`transaction_type_id`, `transaction_type_name`) VALUES
(3, 'Adjustment'),
(5, 'Demo Stock Transaction 05'),
(6, 'Demo Stock Transaction 06'),
(7, 'Demo Stock Transaction 07'),
(8, 'Demo Stock Transaction 08'),
(9, 'Demo Stock Transaction 09'),
(10, 'Demo Stock Transaction 10'),
(11, 'Demo Stock Transaction 11'),
(12, 'Demo Stock Transaction 12'),
(13, 'Demo Stock Transaction 13'),
(14, 'Demo Stock Transaction 14'),
(15, 'Demo Stock Transaction 15'),
(16, 'Demo Stock Transaction 16'),
(17, 'Demo Stock Transaction 17'),
(18, 'Demo Stock Transaction 18'),
(19, 'Demo Stock Transaction 19'),
(20, 'Demo Stock Transaction 20'),
(21, 'Demo Stock Transaction 21'),
(22, 'Demo Stock Transaction 22'),
(23, 'Demo Stock Transaction 23'),
(24, 'Demo Stock Transaction 24'),
(25, 'Demo Stock Transaction 25'),
(4, 'Return'),
(1, 'Stock In'),
(2, 'Stock Out');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `contact_person`, `contact_no`, `email`, `address`, `created_at`) VALUES
(1, 'Appliance Supplier 01', 'Alex Garcia', '09190000001', 'supplier01@example.com', '1 Supplier Avenue, Cagayan de Oro City', '2026-01-01'),
(2, 'Appliance Supplier 02', 'Jamie Mendoza', '09190000002', 'supplier02@example.com', '2 Supplier Avenue, Cagayan de Oro City', '2026-01-02'),
(3, 'Appliance Supplier 03', 'Taylor Dela Cruz', '09190000003', 'supplier03@example.com', '3 Supplier Avenue, Cagayan de Oro City', '2026-01-03'),
(4, 'Appliance Supplier 04', 'Morgan Ramos', '09190000004', 'supplier04@example.com', '4 Supplier Avenue, Cagayan de Oro City', '2026-01-04'),
(5, 'Appliance Supplier 05', 'Jordan Flores', '09190000005', 'supplier05@example.com', '5 Supplier Avenue, Cagayan de Oro City', '2026-01-05'),
(6, 'Appliance Supplier 06', 'Casey Bautista', '09190000006', 'supplier06@example.com', '6 Supplier Avenue, Cagayan de Oro City', '2026-01-06'),
(7, 'Appliance Supplier 07', 'Riley Villanueva', '09190000007', 'supplier07@example.com', '7 Supplier Avenue, Cagayan de Oro City', '2026-01-07'),
(8, 'Appliance Supplier 08', 'Avery Gonzales', '09190000008', 'supplier08@example.com', '8 Supplier Avenue, Cagayan de Oro City', '2026-01-08'),
(9, 'Appliance Supplier 09', 'Cameron Aquino', '09190000009', 'supplier09@example.com', '9 Supplier Avenue, Cagayan de Oro City', '2026-01-09'),
(10, 'Appliance Supplier 10', 'Drew Castillo', '09190000010', 'supplier10@example.com', '10 Supplier Avenue, Cagayan de Oro City', '2026-01-10'),
(11, 'Appliance Supplier 11', 'Sam Navarro', '09190000011', 'supplier11@example.com', '11 Supplier Avenue, Cagayan de Oro City', '2026-01-11'),
(12, 'Appliance Supplier 12', 'Robin Torres', '09190000012', 'supplier12@example.com', '12 Supplier Avenue, Cagayan de Oro City', '2026-01-12'),
(13, 'Appliance Supplier 13', 'Skyler Perez', '09190000013', 'supplier13@example.com', '13 Supplier Avenue, Cagayan de Oro City', '2026-01-13'),
(14, 'Appliance Supplier 14', 'Parker Rivera', '09190000014', 'supplier14@example.com', '14 Supplier Avenue, Cagayan de Oro City', '2026-01-14'),
(15, 'Appliance Supplier 15', 'Quinn Lim', '09190000015', 'supplier15@example.com', '15 Supplier Avenue, Cagayan de Oro City', '2026-01-15'),
(16, 'Appliance Supplier 16', 'Reese Tan', '09190000016', 'supplier16@example.com', '16 Supplier Avenue, Cagayan de Oro City', '2026-01-16'),
(17, 'Appliance Supplier 17', 'Hayden Ocampo', '09190000017', 'supplier17@example.com', '17 Supplier Avenue, Cagayan de Oro City', '2026-01-17'),
(18, 'Appliance Supplier 18', 'Rowan Diaz', '09190000018', 'supplier18@example.com', '18 Supplier Avenue, Cagayan de Oro City', '2026-01-18'),
(19, 'Appliance Supplier 19', 'Emerson Lopez', '09190000019', 'supplier19@example.com', '19 Supplier Avenue, Cagayan de Oro City', '2026-01-19'),
(20, 'Appliance Supplier 20', 'Finley Fernandez', '09190000020', 'supplier20@example.com', '20 Supplier Avenue, Cagayan de Oro City', '2026-01-20'),
(21, 'Appliance Supplier 21', 'Kendall Mercado', '09190000021', 'supplier21@example.com', '21 Supplier Avenue, Cagayan de Oro City', '2026-01-21'),
(22, 'Appliance Supplier 22', 'Blake Viador', '09190000022', 'supplier22@example.com', '22 Supplier Avenue, Cagayan de Oro City', '2026-01-22'),
(23, 'Appliance Supplier 23', 'Payton Santos', '09190000023', 'supplier23@example.com', '23 Supplier Avenue, Cagayan de Oro City', '2026-01-23'),
(24, 'Appliance Supplier 24', 'Dakota Reyes', '09190000024', 'supplier24@example.com', '24 Supplier Avenue, Cagayan de Oro City', '2026-01-24'),
(25, 'Appliance Supplier 25', 'Charlie Cruz', '09190000025', 'supplier25@example.com', '25 Supplier Avenue, Cagayan de Oro City', '2026-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `created_at` date DEFAULT curdate(),
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role_id`, `username`, `password`, `email`, `contact_no`, `status`, `created_at`, `first_name`, `last_name`) VALUES
(1, 1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user001@example.com', '09100000001', 'Active', '2025-01-01', NULL, NULL),
(2, 2, 'cashier01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user002@example.com', '09100000002', 'Active', '2025-01-02', NULL, NULL),
(3, 2, 'cashier02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user003@example.com', '09100000003', 'Active', '2025-01-03', NULL, NULL),
(4, 2, 'cashier03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user004@example.com', '09100000004', 'Active', '2025-01-04', NULL, NULL),
(5, 2, 'cashier04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user005@example.com', '09100000005', 'Active', '2025-01-05', NULL, NULL),
(6, 2, 'cashier05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user006@example.com', '09100000006', 'Active', '2025-01-06', NULL, NULL),
(7, 2, 'cashier06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user007@example.com', '09100000007', 'Active', '2025-01-07', NULL, NULL),
(8, 2, 'cashier07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user008@example.com', '09100000008', 'Active', '2025-01-08', NULL, NULL),
(9, 2, 'cashier08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user009@example.com', '09100000009', 'Active', '2025-01-09', NULL, NULL),
(10, 2, 'cashier09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user010@example.com', '09100000010', 'Inactive', '2025-01-10', NULL, NULL),
(11, 2, 'cashier10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user011@example.com', '09100000011', 'Active', '2025-01-11', NULL, NULL),
(12, 2, 'cashier11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user012@example.com', '09100000012', 'Active', '2025-01-12', NULL, NULL),
(13, 2, 'cashier12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user013@example.com', '09100000013', 'Active', '2025-01-13', NULL, NULL),
(14, 2, 'cashier13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user014@example.com', '09100000014', 'Active', '2025-01-14', NULL, NULL),
(15, 2, 'cashier14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user015@example.com', '09100000015', 'Active', '2025-01-15', NULL, NULL),
(16, 2, 'cashier15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user016@example.com', '09100000016', 'Active', '2025-01-16', NULL, NULL),
(17, 2, 'cashier16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user017@example.com', '09100000017', 'Active', '2025-01-17', NULL, NULL),
(18, 2, 'cashier17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user018@example.com', '09100000018', 'Active', '2025-01-18', NULL, NULL),
(19, 2, 'cashier18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user019@example.com', '09100000019', 'Active', '2025-01-19', NULL, NULL),
(20, 2, 'cashier19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user020@example.com', '09100000020', 'Inactive', '2025-01-20', NULL, NULL),
(21, 3, 'customer001', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user021@example.com', '09100000021', 'Active', '2025-01-21', NULL, NULL),
(22, 3, 'customer002', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user022@example.com', '09100000022', 'Active', '2025-01-22', NULL, NULL),
(23, 3, 'customer003', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user023@example.com', '09100000023', 'Active', '2025-01-23', NULL, NULL),
(24, 3, 'customer004', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user024@example.com', '09100000024', 'Active', '2025-01-24', NULL, NULL),
(25, 3, 'customer005', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user025@example.com', '09100000025', 'Active', '2025-01-25', NULL, NULL),
(26, 3, 'customer006', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user026@example.com', '09100000026', 'Active', '2025-01-26', NULL, NULL),
(27, 3, 'customer007', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user027@example.com', '09100000027', 'Active', '2025-01-27', NULL, NULL),
(28, 3, 'customer008', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user028@example.com', '09100000028', 'Active', '2025-01-28', NULL, NULL),
(29, 3, 'customer009', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user029@example.com', '09100000029', 'Active', '2025-01-29', NULL, NULL),
(30, 3, 'customer010', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user030@example.com', '09100000030', 'Inactive', '2025-01-30', NULL, NULL),
(31, 3, 'customer011', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user031@example.com', '09100000031', 'Active', '2025-01-31', NULL, NULL),
(32, 3, 'customer012', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user032@example.com', '09100000032', 'Active', '2025-02-01', NULL, NULL),
(33, 3, 'customer013', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user033@example.com', '09100000033', 'Active', '2025-02-02', NULL, NULL),
(34, 3, 'customer014', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user034@example.com', '09100000034', 'Active', '2025-02-03', NULL, NULL),
(35, 3, 'customer015', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user035@example.com', '09100000035', 'Active', '2025-02-04', NULL, NULL),
(36, 3, 'customer016', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user036@example.com', '09100000036', 'Active', '2025-02-05', NULL, NULL),
(37, 3, 'customer017', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user037@example.com', '09100000037', 'Active', '2025-02-06', NULL, NULL),
(38, 3, 'customer018', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user038@example.com', '09100000038', 'Active', '2025-02-07', NULL, NULL),
(39, 3, 'customer019', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user039@example.com', '09100000039', 'Active', '2025-02-08', NULL, NULL),
(40, 3, 'customer020', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user040@example.com', '09100000040', 'Inactive', '2025-02-09', NULL, NULL),
(41, 3, 'customer021', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user041@example.com', '09100000041', 'Active', '2025-02-10', NULL, NULL),
(42, 3, 'customer022', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user042@example.com', '09100000042', 'Active', '2025-02-11', NULL, NULL),
(43, 3, 'customer023', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user043@example.com', '09100000043', 'Active', '2025-02-12', NULL, NULL),
(44, 3, 'customer024', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user044@example.com', '09100000044', 'Active', '2025-02-13', NULL, NULL),
(45, 3, 'customer025', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user045@example.com', '09100000045', 'Active', '2025-02-14', NULL, NULL),
(46, 3, 'customer026', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user046@example.com', '09100000046', 'Active', '2025-02-15', NULL, NULL),
(47, 3, 'customer027', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user047@example.com', '09100000047', 'Active', '2025-02-16', NULL, NULL),
(48, 3, 'customer028', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user048@example.com', '09100000048', 'Active', '2025-02-17', NULL, NULL),
(49, 3, 'customer029', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user049@example.com', '09100000049', 'Active', '2025-02-18', NULL, NULL),
(50, 3, 'customer030', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user050@example.com', '09100000050', 'Inactive', '2025-02-19', NULL, NULL),
(51, 3, 'customer031', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user051@example.com', '09100000051', 'Active', '2025-02-20', NULL, NULL),
(52, 3, 'customer032', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user052@example.com', '09100000052', 'Active', '2025-02-21', NULL, NULL),
(53, 3, 'customer033', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user053@example.com', '09100000053', 'Active', '2025-02-22', NULL, NULL),
(54, 3, 'customer034', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user054@example.com', '09100000054', 'Active', '2025-02-23', NULL, NULL),
(55, 3, 'customer035', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user055@example.com', '09100000055', 'Active', '2025-02-24', NULL, NULL),
(56, 3, 'customer036', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user056@example.com', '09100000056', 'Active', '2025-02-25', NULL, NULL),
(57, 3, 'customer037', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user057@example.com', '09100000057', 'Active', '2025-02-26', NULL, NULL),
(58, 3, 'customer038', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user058@example.com', '09100000058', 'Active', '2025-02-27', NULL, NULL),
(59, 3, 'customer039', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user059@example.com', '09100000059', 'Active', '2025-02-28', NULL, NULL),
(60, 3, 'customer040', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user060@example.com', '09100000060', 'Inactive', '2025-03-01', NULL, NULL),
(61, 3, 'customer041', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user061@example.com', '09100000061', 'Active', '2025-03-02', NULL, NULL),
(62, 3, 'customer042', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user062@example.com', '09100000062', 'Active', '2025-03-03', NULL, NULL),
(63, 3, 'customer043', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user063@example.com', '09100000063', 'Active', '2025-03-04', NULL, NULL),
(64, 3, 'customer044', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user064@example.com', '09100000064', 'Active', '2025-03-05', NULL, NULL),
(65, 3, 'customer045', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user065@example.com', '09100000065', 'Active', '2025-03-06', NULL, NULL),
(66, 3, 'customer046', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user066@example.com', '09100000066', 'Active', '2025-03-07', NULL, NULL),
(67, 3, 'customer047', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user067@example.com', '09100000067', 'Active', '2025-03-08', NULL, NULL),
(68, 3, 'customer048', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user068@example.com', '09100000068', 'Active', '2025-03-09', NULL, NULL),
(69, 3, 'customer049', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user069@example.com', '09100000069', 'Active', '2025-03-10', NULL, NULL),
(70, 3, 'customer050', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user070@example.com', '09100000070', 'Inactive', '2025-03-11', NULL, NULL),
(71, 3, 'customer051', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user071@example.com', '09100000071', 'Active', '2025-03-12', NULL, NULL),
(72, 3, 'customer052', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user072@example.com', '09100000072', 'Active', '2025-03-13', NULL, NULL),
(73, 3, 'customer053', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user073@example.com', '09100000073', 'Active', '2025-03-14', NULL, NULL),
(74, 3, 'customer054', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user074@example.com', '09100000074', 'Active', '2025-03-15', NULL, NULL),
(75, 3, 'customer055', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user075@example.com', '09100000075', 'Active', '2025-03-16', NULL, NULL),
(76, 3, 'customer056', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user076@example.com', '09100000076', 'Active', '2025-03-17', NULL, NULL),
(77, 3, 'customer057', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user077@example.com', '09100000077', 'Active', '2025-03-18', NULL, NULL),
(78, 3, 'customer058', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user078@example.com', '09100000078', 'Active', '2025-03-19', NULL, NULL),
(79, 3, 'customer059', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user079@example.com', '09100000079', 'Active', '2025-03-20', NULL, NULL),
(80, 3, 'customer060', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user080@example.com', '09100000080', 'Inactive', '2025-03-21', NULL, NULL),
(81, 4, 'staff001', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user081@example.com', '09100000081', 'Active', '2025-03-22', NULL, NULL),
(82, 5, 'staff002', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user082@example.com', '09100000082', 'Active', '2025-03-23', NULL, NULL),
(83, 6, 'staff003', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user083@example.com', '09100000083', 'Active', '2025-03-24', NULL, NULL),
(84, 7, 'staff004', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user084@example.com', '09100000084', 'Active', '2025-03-25', NULL, NULL),
(85, 8, 'staff005', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user085@example.com', '09100000085', 'Active', '2025-03-26', NULL, NULL),
(86, 9, 'staff006', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user086@example.com', '09100000086', 'Active', '2025-03-27', NULL, NULL),
(87, 10, 'staff007', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user087@example.com', '09100000087', 'Active', '2025-03-28', NULL, NULL),
(88, 4, 'staff008', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user088@example.com', '09100000088', 'Active', '2025-03-29', NULL, NULL),
(89, 5, 'staff009', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user089@example.com', '09100000089', 'Active', '2025-03-30', NULL, NULL),
(90, 6, 'staff010', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user090@example.com', '09100000090', 'Inactive', '2025-03-31', NULL, NULL),
(91, 7, 'staff011', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user091@example.com', '09100000091', 'Active', '2025-04-01', NULL, NULL),
(92, 8, 'staff012', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user092@example.com', '09100000092', 'Active', '2025-04-02', NULL, NULL),
(93, 9, 'staff013', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user093@example.com', '09100000093', 'Active', '2025-04-03', NULL, NULL),
(94, 10, 'staff014', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user094@example.com', '09100000094', 'Active', '2025-04-04', NULL, NULL),
(95, 4, 'staff015', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user095@example.com', '09100000095', 'Active', '2025-04-05', NULL, NULL),
(96, 5, 'staff016', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user096@example.com', '09100000096', 'Active', '2025-04-06', NULL, NULL),
(97, 6, 'staff017', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user097@example.com', '09100000097', 'Active', '2025-04-07', NULL, NULL),
(98, 7, 'staff018', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user098@example.com', '09100000098', 'Active', '2025-04-08', NULL, NULL),
(99, 8, 'staff019', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user099@example.com', '09100000099', 'Active', '2025-04-09', NULL, NULL),
(100, 9, 'staff020', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user100@example.com', '09100000100', 'Inactive', '2025-04-10', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`audit_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `delivery_status_id` (`delivery_status_id`);

--
-- Indexes for table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  ADD PRIMARY KEY (`delivery_status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `delivery_tracking`
--
ALTER TABLE `delivery_tracking`
  ADD PRIMARY KEY (`tracking_id`),
  ADD KEY `delivery_id` (`delivery_id`),
  ADD KEY `delivery_status_id` (`delivery_status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD UNIQUE KEY `payment_method_name` (`payment_method_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_code` (`product_code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `product_brands`
--
ALTER TABLE `product_brands`
  ADD PRIMARY KEY (`brand_id`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`po_item_id`),
  ADD KEY `po_id` (`po_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `po_status_id` (`po_status_id`);

--
-- Indexes for table `purchase_order_statuses`
--
ALTER TABLE `purchase_order_statuses`
  ADD PRIMARY KEY (`po_status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `sale_status_id` (`sale_status_id`);

--
-- Indexes for table `sale_discounts`
--
ALTER TABLE `sale_discounts`
  ADD PRIMARY KEY (`sale_discount_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`sale_item_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sale_statuses`
--
ALTER TABLE `sale_statuses`
  ADD PRIMARY KEY (`sale_status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `transaction_type_id` (`transaction_type_id`);

--
-- Indexes for table `stock_transaction_types`
--
ALTER TABLE `stock_transaction_types`
  ADD PRIMARY KEY (`transaction_type_id`),
  ADD UNIQUE KEY `transaction_type_name` (`transaction_type_name`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `delivery_statuses`
--
ALTER TABLE `delivery_statuses`
  MODIFY `delivery_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `delivery_tracking`
--
ALTER TABLE `delivery_tracking`
  MODIFY `tracking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `po_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `purchase_order_statuses`
--
ALTER TABLE `purchase_order_statuses`
  MODIFY `po_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sale_discounts`
--
ALTER TABLE `sale_discounts`
  MODIFY `sale_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sale_statuses`
--
ALTER TABLE `sale_statuses`
  MODIFY `sale_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `stock_transaction_types`
--
ALTER TABLE `stock_transaction_types`
  MODIFY `transaction_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  ADD CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`delivery_status_id`) REFERENCES `delivery_statuses` (`delivery_status_id`);

--
-- Constraints for table `delivery_tracking`
--
ALTER TABLE `delivery_tracking`
  ADD CONSTRAINT `delivery_tracking_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`delivery_id`),
  ADD CONSTRAINT `delivery_tracking_ibfk_2` FOREIGN KEY (`delivery_status_id`) REFERENCES `delivery_statuses` (`delivery_status_id`),
  ADD CONSTRAINT `delivery_tracking_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `product_brands` (`brand_id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`),
  ADD CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `purchase_orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `purchase_orders_ibfk_3` FOREIGN KEY (`po_status_id`) REFERENCES `purchase_order_statuses` (`po_status_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`),
  ADD CONSTRAINT `sales_ibfk_4` FOREIGN KEY (`sale_status_id`) REFERENCES `sale_statuses` (`sale_status_id`);

--
-- Constraints for table `sale_discounts`
--
ALTER TABLE `sale_discounts`
  ADD CONSTRAINT `sale_discounts_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  ADD CONSTRAINT `sale_discounts_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`discount_id`);

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  ADD CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD CONSTRAINT `stock_logs_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `stock_logs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `stock_logs_ibfk_3` FOREIGN KEY (`transaction_type_id`) REFERENCES `stock_transaction_types` (`transaction_type_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
