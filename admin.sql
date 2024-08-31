-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 06:58 PM
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
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(20) NOT NULL,
  `name` varchar(11) NOT NULL,
  `bookingtype` varchar(20) NOT NULL,
  `details` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `bookingtype`, `details`, `date`, `price`) VALUES
(1003, 'Poroma', 'Flight', 'Sayman,Coxs Bazar', '2024-05-01', 2000),
(1002, 'Poroma', 'Flight', 'DHK to CHG', '2024-05-24', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `confirmbooking`
--

CREATE TABLE `confirmbooking` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `bookingtype` varchar(20) NOT NULL,
  `details` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confirmbooking`
--

INSERT INTO `confirmbooking` (`id`, `name`, `bookingtype`, `details`, `date`, `price`) VALUES
(1004, 'Rajib', 'Hotel', 'Hilton, NYC	', '2024-05-10', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `customersupport`
--

CREATE TABLE `customersupport` (
  `id` int(20) NOT NULL,
  `Problem` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Reply` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customersupport`
--

INSERT INTO `customersupport` (`id`, `Problem`, `Description`, `Reply`) VALUES
(101, 'Unable to book a flight using a discount code', 'Customer tried to book a flight from New York to Los Angeles and apply a discount code \"SUMMER20\". However, the code does not seem to be working, and the customer is unable to complete the booking at ', 'a'),
(102, 'Booking confirmation not received', 'Customer booked a hotel room at the Grand Plaza Hotel for the dates June 15-20 but has not received a confirmation email. They checked their spam folder but still cannot find the confirmation.', 'Thank you for bringing this issue to our attention'),
(103, 'Payment declined multiple times', 'Customer attempted to pay for a hotel booking in Paris using their credit card, but the payment was declined multiple times despite having sufficient funds. They are concerned about securing their boo', 'Thank you ');

-- --------------------------------------------------------

--
-- Table structure for table `email_temp`
--

CREATE TABLE `email_temp` (
  `name` varchar(10) NOT NULL,
  `format` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exer`
--

CREATE TABLE `exer` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exer`
--

INSERT INTO `exer` (`id`, `role`, `name`, `email`, `pass`) VALUES
(1, 'admin', 'sohan', 'sohan@gmail.com', 'ss123'),
(0, 'agent', 'Kowmi', 'kowmi@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `code` varchar(20) NOT NULL,
  `Discount` int(20) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `limits` int(20) NOT NULL,
  `services` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`code`, `Discount`, `startdate`, `enddate`, `limits`, `services`) VALUES
('JUNESALE', 30, '2024-05-24', '2024-05-01', 2, 'flights'),
('SPRINGSALE', 10, '2024-05-02', '2024-05-04', 1, 'flights');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
