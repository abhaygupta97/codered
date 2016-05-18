-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2016 at 09:01 AM
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
(1, 'test announcement'),
(2, 'test announcement 2');

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
('TEST', 'Life Universe and Everything', 'All submissions for this problem are available.\r\n\r\nFor help on this problem, please check out our tutorial Input and Output (I/O)\r\n\r\nYour program is to use the brute-force approach in order to find the Answer to Life, the Universe, and Everything. More precisely... rewrite small numbers from input to output. Stop processing input after reading in the number 42. All numbers at input are integers of one or two digits.\r\nExample\r\n\r\n\r\nInput:\r\n1\r\n2\r\n88\r\n42\r\n99\r\n\r\nOutput:\r\n1\r\n2\r\n88', 'Ketan Gupta', 3, 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `name` varchar(20) NOT NULL,
  `key` varchar(10) NOT NULL,
  `score` int(5) NOT NULL,
  `penalty` int(10) NOT NULL,
  `a` int(5) NOT NULL,
  `b` int(5) NOT NULL,
  `c` int(5) NOT NULL,
  `d` int(5) NOT NULL,
  `e` int(5) NOT NULL,
  `f` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
