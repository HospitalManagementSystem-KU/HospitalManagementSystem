-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2015 at 10:24 AM
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
  `SSN` int(11) NOT NULL,
  `street` varchar(40) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`SSN`, `street`, `city`, `state`, `zip code`) VALUES
(123456789, 'saphankhwai', 'bkk', 'thailand', 10400),
(987654321, 'idontknow', 'canada', 'us', 10500);

-- --------------------------------------------------------

--
-- Table structure for table `Appointment`
--

CREATE TABLE IF NOT EXISTS `Appointment` (
  `app_id` int(5) NOT NULL,
  `patient_id` int(5) NOT NULL,
  `dept_id` int(5) NOT NULL,
  `physician_id` int(11) NOT NULL,
  `start` datetime(5) DEFAULT NULL,
  `end` datetime(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE IF NOT EXISTS `Department` (
  `dept_id` int(5) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`dept_id`, `dept_name`) VALUES
(1, 'Quality Pregnancy Center'),
(2, 'Wellness Center'),
(3, 'Heart Center'),
(4, 'Fertility Center'),
(5, 'Mental Health Clinic'),
(6, 'Comprehensive Neurology Center'),
(7, 'Gynecologic Cancer Treatment Center'),
(8, 'Gastrointestinal System and Liver Clinic'),
(9, 'Gynecologic Laparoscopic Surgery Center'),
(10, 'Urinary Tract Center'),
(11, 'Breast Cancer Center'),
(12, 'Diagnostic Digital Imaging Center'),
(13, 'Skin and Cosmetic Surgery Center'),
(14, 'Respiratory Center'),
(15, 'Diabetes Center'),
(16, 'Minimally Invasive Surgery Center'),
(17, 'Dental Center'),
(18, 'Children & Teen Center'),
(19, 'Orthopaedic Center'),
(20, 'Operations Department'),
(21, 'Laboratory Department'),
(22, 'Nutrition Department'),
(23, 'Hemodialysis Department'),
(24, 'Emergency Department'),
(25, 'Physical Therapy Department'),
(26, 'ICU and CCU Department'),
(27, 'Eye, Ear, Nose and Throat Clinic'),
(28, 'Stroke and Cardiovascular Emergency Center'),
(29, 'Advanced Laparoscope Surgery Center'),
(30, 'General Medicine Clinic');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE IF NOT EXISTS `Doctor` (
  `physician_id` int(11) NOT NULL,
  `specialist` int(11) NOT NULL
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
  `salary` int(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`emp_id`, `emp_firstname`, `emp_lastname`, `SSN`, `dept_id`, `job_id`, `salary`, `type`) VALUES
(1234, 'Nichamon', 'Han', 123456789, NULL, NULL, NULL, NULL);

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
-- Table structure for table `Nurse`
--

CREATE TABLE IF NOT EXISTS `Nurse` (
  `emp_id` int(11) NOT NULL,
  `ward` int(11) NOT NULL
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
  `phone` int(10) NOT NULL,
  `type` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`patient_id`, `patient_firstname`, `patient_lastname`, `SSN`, `insurance_id`, `phone`, `type`) VALUES
(1, 'Spa', 'Vasupol', 987654321, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE IF NOT EXISTS `Payment` (
  `pay_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `pres_id` int(11) NOT NULL,
  `stay_id` int(11) NOT NULL,
  `total cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Prescription`
--

CREATE TABLE IF NOT EXISTS `Prescription` (
  `pres_id` int(5) NOT NULL,
  `patient_id` int(5) NOT NULL,
  `med_id` int(5) NOT NULL,
  `disease` int(11) NOT NULL,
  `physician_id` int(11) NOT NULL
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
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
 ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
 ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
 ADD PRIMARY KEY (`patient_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
