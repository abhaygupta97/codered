-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2016 at 10:07 AM
-- Server version: 5.6.28-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codered`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `id` int(3) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `note`) VALUES
(1, 'In the problme NOLUCK, the correct explanation is ''The almost lucky numbers between 8 to 19 are 8, 9, 16, 19.''');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE IF NOT EXISTS `problems` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statement` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `accepted` int(5) NOT NULL,
  `total` int(5) NOT NULL,
  `output` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`code`, `name`, `statement`, `author`, `accepted`, `total`, `output`) VALUES
('AREA', 'Area', 'Enter Statement Here', '', 0, 1, '6\r\n26'),
('BREAK', 'Break', 'Enter Statement Here', '', 0, 0, 'Yes \r\nNo\r\nNo \r\nYes'),
('FACT', 'Fact', 'Enter Statement Here', '', 1, 1, '288\r\n16\r\n216\r\n832'),
('FIBO', 'Fibonacci Issue', 'Enter Statement Here', '', 0, 3, '1\r\n3\r\n2\r\n1\r\n5'),
('GCD', 'GCD', 'Enter Statement Here', '', 0, 0, '3\r\n1\r\n35\r\n9'),
('NOLUCK', 'No luck', 'Enter Statement Here', '', 0, 1, '0\r\n12\r\n10\r\n2\r\n1'),
('OVERW', 'Overwatch', 'Enter Statement Here', '', 0, 0, '1212\r\n264'),
('TRI', 'Triangled', 'Enter Statement Here', '', 0, 0, '48\r\n315\r\n988\r\n4303\r\n24058');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `score` int(5) NOT NULL DEFAULT '0',
  `penalty` int(20) NOT NULL DEFAULT '0',
  `AREA` int(5) NOT NULL DEFAULT '0',
  `BREAK` int(5) NOT NULL DEFAULT '0',
  `FACT` int(5) NOT NULL DEFAULT '0',
  `FIBO` int(5) NOT NULL DEFAULT '0',
  `GCD` int(5) NOT NULL DEFAULT '0',
  `NOLUCK` int(5) NOT NULL DEFAULT '0',
  `OVERW` int(5) NOT NULL DEFAULT '0',
  `TRI` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`name`, `pass`, `score`, `penalty`, `AREA`, `BREAK`, `FACT`, `FIBO`, `GCD`, `NOLUCK`, `OVERW`, `TRI`) VALUES
('Vartika - Yamini', 'VY6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Shanthanu - Kshitij', 'SK5', 80, 2147483647, 0, 0, 0, 60, 0, 20, 0, 0),
('Siddhant - Lakshya', 'SL3', 40, 1463719010, 0, 0, 0, 40, 0, 0, 0, 0),
('Ojaswi - Anjalika', 'OA9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Naman - Shubham', 'NS8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Mahek - Ishita', 'MI4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Raghav - Pradyuman', 'RP5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Shaolin - Divyanshu', 'SD6', 150, 2147483647, 50, 0, 100, 0, 0, 0, 0, 0),
('Umang - Shreyansh', 'US1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Khyati - Samarth', 'KS1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Ayush - Vasu', 'AV7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Yuvraj - Nilesh', 'YN3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
