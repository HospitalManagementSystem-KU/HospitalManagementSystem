-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2015 at 07:45 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Hospital Management System`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE IF NOT EXISTS `Address` (
  `addr_id` int(5) NOT NULL,
  `street` varchar(40) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Appointment`
--

CREATE TABLE IF NOT EXISTS `Appointment` (
  `app_id` int(5) NOT NULL,
  `patient_id` int(5) NOT NULL,
  `start` datetime(5) DEFAULT NULL,
  `end` datetime(5) DEFAULT NULL,
  `room_id` int(5) NOT NULL,
  `dept_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE IF NOT EXISTS `Department` (
  `dept_ID` int(5) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `dept_description` varchar(20) NOT NULL,
  `dept_head` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE IF NOT EXISTS `Employee` (
  `emp_id` int(10) NOT NULL DEFAULT '0',
  `emp_firstname` varchar(20) DEFAULT NULL,
  `emp_lastname` varchar(20) DEFAULT NULL,
  `SSN` int(9) DEFAULT NULL,
  `dept_id` int(5) DEFAULT NULL,
  `job_id` int(5) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`emp_id`, `emp_firstname`, `emp_lastname`, `SSN`, `dept_id`, `job_id`, `salary`) VALUES
(1234, 'Nichamon', 'Han', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Insurance`
--

CREATE TABLE IF NOT EXISTS `Insurance` (
  `insur_id` int(5) NOT NULL,
  `company_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

CREATE TABLE IF NOT EXISTS `Job` (
  `job_id` int(5) NOT NULL,
  `job_title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Medication`
--

CREATE TABLE IF NOT EXISTS `Medication` (
  `med_id` int(5) NOT NULL,
  `med_name` varchar(20) NOT NULL,
  `med_brand` varchar(20) NOT NULL,
  `med_description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE IF NOT EXISTS `Patient` (
  `patient_id` int(5) NOT NULL,
  `patient_firstname` varchar(20) NOT NULL,
  `patient_lastname` varchar(20) NOT NULL,
  `SSN` int(9) NOT NULL,
  `insurance_id` int(10) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Prescription`
--

CREATE TABLE IF NOT EXISTS `Prescription` (
  `pres_id` int(5) NOT NULL,
  `patient_id` int(5) NOT NULL,
  `med_id` int(5) NOT NULL,
  `is_appoint` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--

CREATE TABLE IF NOT EXISTS `Room` (
  `room_id` int(5) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `room_floor` int(2) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Stay`
--

CREATE TABLE IF NOT EXISTS `Stay` (
  `stay_id` int(5) NOT NULL,
  `patient_id` int(5) NOT NULL,
  `room_id` int(5) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `cost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
 ADD PRIMARY KEY (`dept_ID`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
 ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `Job`
--
ALTER TABLE `Job`
 ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
 ADD PRIMARY KEY (`patient_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
