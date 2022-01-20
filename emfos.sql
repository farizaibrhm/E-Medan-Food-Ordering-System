-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 10:20 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emfos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cafeworker`
--

CREATE TABLE `cafeworker` (
  `CWORKID` int(12) NOT NULL,
  `CWORKSTALLNAME` varchar(50) NOT NULL,
  `CWORKPHONENO` varchar(11) NOT NULL,
  `CWORKEMAIL` varchar(30) NOT NULL,
  `CWORKPASSWORD` varchar(30) NOT NULL,
  `CWORKACCNUM` varchar(50) NOT NULL,
  `CWORKACCNAME` varchar(50) NOT NULL,
  `CWORKBANKNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CARTID` int(11) NOT NULL,
  `ORDERID` int(11) NOT NULL,
  `MENUID` int(11) NOT NULL,
  `STUDENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `FEEDBACKMESSAGE` longtext NOT NULL,
  `FEEDBACKRATING` decimal(2,1) NOT NULL,
  `FEEDBACKDATE` date NOT NULL,
  `FEEDBACKTIME` time NOT NULL,
  `STUDENTID` int(11) NOT NULL,
  `ORDERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forder`
--

CREATE TABLE `forder` (
  `ORDERID` int(11) NOT NULL,
  `ORDERQUANTITY` int(11) NOT NULL,
  `ORDERDATE` date NOT NULL,
  `ORDERTIME` time NOT NULL,
  `ORDERPRICE` decimal(10,2) NOT NULL,
  `ORDERSTATUS` varchar(20) NOT NULL,
  `STUDENTID` int(11) NOT NULL,
  `CWORKID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MENUID` int(11) NOT NULL,
  `MENUNAME` varchar(30) NOT NULL,
  `MENUIMAGE` blob NOT NULL,
  `MENUDESC` longtext NOT NULL,
  `MENUTPRICE` decimal(10,2) NOT NULL,
  `MENUTYPE` varchar(20) NOT NULL,
  `CWORKID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAYMENTID` int(11) NOT NULL,
  `PAYMENTDATE` date NOT NULL,
  `PAYMENTTIME` time NOT NULL,
  `PAYMENTRECEIPT` blob NOT NULL,
  `PAYMENTSTATUS` varchar(20) NOT NULL,
  `STUDENTID` int(11) NOT NULL,
  `ORDERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentreport`
--

CREATE TABLE `paymentreport` (
  `PAYMENTREPORTID` int(11) NOT NULL,
  `PAYMENTID` int(11) NOT NULL,
  `REPORTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `REPORTID` int(11) NOT NULL,
  `REPORTTSALES` decimal(10,2) NOT NULL,
  `REPORTDATE` date NOT NULL,
  `CWORKID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENTID` int(10) NOT NULL,
  `STUDENTNAME` varchar(50) NOT NULL,
  `STUDENTPHONENO` varchar(11) NOT NULL,
  `STUDENTEMAIL` varchar(30) NOT NULL,
  `STUDENTPASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENTID`, `STUDENTNAME`, `STUDENTPHONENO`, `STUDENTEMAIL`, `STUDENTPASSWORD`) VALUES
(2020101123, 'Danial bin Razif', '', '', ''),
(2020102321, 'Heliza binti Helmi', '', '', ''),
(2020115244, 'Danial bin Razif', '', '', ''),
(2020489771, 'Heliza binti Helmi', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cafeworker`
--
ALTER TABLE `cafeworker`
  ADD PRIMARY KEY (`CWORKID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CARTID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Indexes for table `forder`
--
ALTER TABLE `forder`
  ADD PRIMARY KEY (`ORDERID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MENUID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAYMENTID`);

--
-- Indexes for table `paymentreport`
--
ALTER TABLE `paymentreport`
  ADD PRIMARY KEY (`PAYMENTREPORTID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`REPORTID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENTID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CARTID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forder`
--
ALTER TABLE `forder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `MENUID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PAYMENTID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentreport`
--
ALTER TABLE `paymentreport`
  MODIFY `PAYMENTREPORTID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `REPORTID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
