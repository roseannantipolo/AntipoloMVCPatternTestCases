-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 01:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifeplanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentID` int(20) NOT NULL,
  `ListOfAppointments` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`AppointmentID`, `ListOfAppointments`, `Status`) VALUES
(51, '<strike>Meeting with my team</strike>', 'Completed'),
(52, 'Virtual Meeting', 'Not Completed'),
(53, '<strike>Conference Meeting</strike>', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `errands`
--

CREATE TABLE `errands` (
  `ErrandsID` int(20) NOT NULL,
  `ListOfErrands` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errands`
--

INSERT INTO `errands` (`ErrandsID`, `ListOfErrands`, `Status`) VALUES
(24, '<strike>Grocery with the fam</strike>', 'Completed'),
(25, 'Exercise', 'Not Completed'),
(27, '<strike>Watch movie</strike>', 'Completed'),
(28, '<strike>To do the household chores</strike>', 'Completed'),
(29, 'Gala with friends', 'Not Completed');

-- --------------------------------------------------------

--
-- Table structure for table `goalsplans`
--

CREATE TABLE `goalsplans` (
  `GoalsPlanID` int(20) NOT NULL,
  `ListOfGoalsPlans` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goalsplans`
--

INSERT INTO `goalsplans` (`GoalsPlanID`, `ListOfGoalsPlans`, `Status`) VALUES
(31, 'To have an improvements', 'Not Completed'),
(33, 'To Finish Study', 'Not Completed'),
(34, 'To make my family proud', 'Not Completed'),
(35, 'To have stable work', 'Not Completed'),
(37, 'To help my family', 'Not Completed'),
(38, 'To help people in need', 'Not Completed');

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

CREATE TABLE `todolist` (
  `TodolistID` int(20) NOT NULL,
  `Task` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Not Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todolist`
--

INSERT INTO `todolist` (`TodolistID`, `Task`, `Status`) VALUES
(71, 'M2 -  Quiz', 'Completed'),
(74, 'ass', 'Not Completed'),
(75, 'ass', 'Not Completed'),
(76, 'a', 'Not Completed'),
(77, 'aa', 'Not Completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`AppointmentID`);

--
-- Indexes for table `errands`
--
ALTER TABLE `errands`
  ADD PRIMARY KEY (`ErrandsID`);

--
-- Indexes for table `goalsplans`
--
ALTER TABLE `goalsplans`
  ADD PRIMARY KEY (`GoalsPlanID`);

--
-- Indexes for table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`TodolistID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `AppointmentID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `errands`
--
ALTER TABLE `errands`
  MODIFY `ErrandsID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `goalsplans`
--
ALTER TABLE `goalsplans`
  MODIFY `GoalsPlanID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `TodolistID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
