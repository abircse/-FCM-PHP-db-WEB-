-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2018 at 06:39 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fcm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fcm_info`
--

CREATE TABLE `fcm_info` (
  `fcm_token` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fcm_info`
--

INSERT INTO `fcm_info` (`fcm_token`) VALUES
('fN07mwkP464:APA91bGHxQxN8_posFOlV-cT1V7hZxwPFRn4lznl_aGNkz3XyG5Jwg3rzFlheecpnXbkqvKGdwqweK6hZFqh54dApF9EvBYVPzm53J6h9lFVUqPc_EozqcgLOgrQBhmD2nDdAAMyQJXZALVSM_bSFEp7Ixbon-2-ow');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
