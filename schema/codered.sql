-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2016 at 12:17 PM
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
(1, 'Try for 1, then try for 2 and then try for 3. Thou shall findeth the answ''r soon enough. (Problem: FEYNMAN)');

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
('BREAK', 'Break Up', '-', 'abc', 0, 4, 'Yes \r\nNo\r\nNo \r\nYes'),
('CUT', 'CUT', '-', '', 9, 22, '155\r\n15\r\n45\r\n5761\r\n6623'),
('FIBO', 'Fibonacci Issue', '-', '', 1, 4, '10\r\n3\r\n1\r\n2'),
('FEYNMAN', 'FEYNMAN', '-', '', 1, 3, '3311\r\n29370\r\n30\r\n140\r\n60116\r\n27434\r\n1785\r\n91\r\n1\r\n5'),
('OVERW', 'Overwatch', '-', '', 0, 0, '1212\r\n264'),
('RIGHTRI', 'The Right Triangles', '-', '', 0, 9, 'No\r\nYes\r\nNo'),
('TRI', 'Triangled', '-', '', 0, 4, '48\r\n315\r\n988\r\n4303\r\n24058'),
('HCFLCM', 'HCFLCM', '-', '', 0, 0, '700\r\n-1\r\n-1\r\n-1\r\n369');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `score` int(5) NOT NULL DEFAULT '0',
  `penalty` int(10) NOT NULL DEFAULT '0',
  `TEST` int(5) NOT NULL DEFAULT '0',
  `TES2` int(5) NOT NULL DEFAULT '0',
  `BREAK` int(5) NOT NULL DEFAULT '0',
  `CUT` int(5) NOT NULL DEFAULT '0',
  `FIBO` int(5) NOT NULL DEFAULT '0',
  `FEYNMAN` int(5) NOT NULL DEFAULT '0',
  `OVERW` int(5) NOT NULL DEFAULT '0',
  `RIGHTRI` int(5) NOT NULL DEFAULT '0',
  `TRI` int(5) NOT NULL DEFAULT '0',
  `HCFLCM` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`name`, `pass`, `score`, `penalty`, `TEST`, `TES2`, `BREAK`, `CUT`, `FIBO`, `FEYNMAN`, `OVERW`, `RIGHTRI`, `TRI`, `HCFLCM`) VALUES
('Shreyas - Siddharth', 'SS2', 150, 0, 0, 0, 0, 100, 0, 0, 0, 50, 0, 0),
('Satvik - Dhruv', 'SD1', 20, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0),
('Lakshya - Aditya Jha', 'LA5', 150, 0, 0, 0, 0, 100, 0, 0, 0, 50, 0, 0),
('Tushar - Ayushman', 'TA1', 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0),
('Pravitt - Ritesh', 'PR9', 100, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0),
('Rhythem - Arindham', 'RA5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Aditya Kumar - Shikh', 'AS8', 20, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0),
('Vasu - Archit', 'VA6', 100, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0),
('Devansh - Eesha', 'DE5', 150, 0, 0, 0, 0, 100, 0, 0, 0, 50, 0, 0),
('Vatsal - Saumya', 'VS8', 150, 0, 0, 0, 0, 100, 50, 0, 0, 0, 0, 0),
('Arihant - Ananya', 'AA8', 100, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0),
('Anshika - Pankhuri', 'AP1', 110, 0, 0, 0, 0, 100, 0, 10, 0, 0, 0, 0),
('Mariha - Jiya', 'MJ5', 100, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0),
('Aaryan - Pratyush', 'AP6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
