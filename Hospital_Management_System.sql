-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2015 at 09:01 AM
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
  `addr_id` int(5) NOT NULL DEFAULT '0',
  `house_number` int(10) NOT NULL DEFAULT '0',
  `building` varchar(50) NOT NULL DEFAULT 'undefined',
  `street` varchar(50) NOT NULL DEFAULT 'undefined',
  `city` varchar(50) NOT NULL DEFAULT 'undefined',
  `state` varchar(50) NOT NULL DEFAULT 'undefined',
  `postal_code` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`addr_id`, `house_number`, `building`, `street`, `city`, `state`, `postal_code`) VALUES
(123456789, 0, '0', 'saphankhwai', 'bkk', 'thailand', 10400),
(987654321, 0, '0', 'idontknow', 'canada', 'us', 10500);

-- --------------------------------------------------------

--
-- Table structure for table `Appointment`
--

CREATE TABLE IF NOT EXISTS `Appointment` (
  `app_id` int(5) NOT NULL,
  `patient_id` int(5) NOT NULL DEFAULT '0',
  `doctor_id` int(5) NOT NULL DEFAULT '0',
  `date` datetime(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Bill`
--

CREATE TABLE IF NOT EXISTS `Bill` (
  `bill_id` int(5) NOT NULL DEFAULT '0',
  `patient_id` int(5) NOT NULL DEFAULT '0',
  `room_charges` int(10) NOT NULL DEFAULT '0',
  `docter_charges` int(10) NOT NULL DEFAULT '0',
  `total_amount` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE IF NOT EXISTS `Department` (
  `dept_id` int(5) NOT NULL DEFAULT '0',
  `dept_name` varchar(50) NOT NULL DEFAULT 'undefined'
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
-- Table structure for table `Employee`
--

CREATE TABLE IF NOT EXISTS `Employee` (
  `emp_id` int(5) NOT NULL DEFAULT '0',
  `emp_firstname` varchar(50) NOT NULL DEFAULT 'undefined',
  `emp_lastname` varchar(50) NOT NULL DEFAULT 'undefined',
  `SSN` int(9) NOT NULL DEFAULT '0',
  `dept_id` int(5) NOT NULL DEFAULT '0',
  `job_id` int(5) NOT NULL DEFAULT '0',
  `salary` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'undefined',
  `specialist` varchar(50) NOT NULL DEFAULT 'undefined'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Employee_Address`
--

CREATE TABLE IF NOT EXISTS `Employee_Address` (
  `emp_id` int(5) NOT NULL DEFAULT '0',
  `addr_id` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Medication`
--

CREATE TABLE IF NOT EXISTS `Medication` (
  `med_id` int(5) NOT NULL DEFAULT '0',
  `med_name` varchar(50) NOT NULL DEFAULT 'undefined',
  `med_brand` varchar(50) NOT NULL DEFAULT 'undefined',
  `med_description` varchar(50) NOT NULL DEFAULT 'undefined'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Medication_LineItem`
--

CREATE TABLE IF NOT EXISTS `Medication_LineItem` (
  `pres_id` int(5) NOT NULL DEFAULT '0',
  `med_id` int(5) NOT NULL DEFAULT '0',
  `dose` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE IF NOT EXISTS `Patient` (
  `patient_id` int(5) NOT NULL,
  `patient_firstname` varchar(50) NOT NULL DEFAULT 'undefined',
  `patient_lastname` varchar(50) NOT NULL DEFAULT 'undefined',
  `SSN` int(9) NOT NULL DEFAULT '0',
  `phone` int(10) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `date_of_birth` date NOT NULL,
  `gender` varchar(50) NOT NULL DEFAULT 'undefined',
  `type` varchar(50) NOT NULL DEFAULT 'undefined'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Patient_Address`
--

CREATE TABLE IF NOT EXISTS `Patient_Address` (
  `pat_id` int(5) NOT NULL DEFAULT '0',
  `addr_id` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Prescription`
--

CREATE TABLE IF NOT EXISTS `Prescription` (
  `pres_id` int(5) NOT NULL DEFAULT '0',
  `patient_id` int(5) NOT NULL DEFAULT '0',
  `doctor_id` int(5) NOT NULL DEFAULT '0',
  `admission_date` date NOT NULL,
  `medical_condition` varchar(50) NOT NULL DEFAULT 'undefined'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--

CREATE TABLE IF NOT EXISTS `Room` (
  `room_id` int(5) NOT NULL DEFAULT '0',
  `room_type` varchar(50) NOT NULL DEFAULT 'undefined'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Stay`
--

CREATE TABLE IF NOT EXISTS `Stay` (
  `stay_id` int(5) NOT NULL DEFAULT '0',
  `patient_id` int(5) NOT NULL DEFAULT '0',
  `room_id` int(5) NOT NULL DEFAULT '0',
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
 ADD PRIMARY KEY (`addr_id`);

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
