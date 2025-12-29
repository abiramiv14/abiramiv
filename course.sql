-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2025 at 03:21 PM
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
-- Database: `course`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', 'admin123', '2025-12-27 15:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `department`, `semester`, `credits`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ECE101', 'Control Systems', 'ECE', 4, 8, 'Active', '2025-12-27 10:28:10', '2025-12-27 10:28:24', '2025-12-27 10:28:24'),
(2, 'ECE102', 'control systems', 'ECE', 5, 9, 'Active', '2025-12-27 10:29:03', '2025-12-27 12:03:59', NULL),
(3, 'ECE103', 'Space Science', 'ECE', 6, 9, 'Active', '2025-12-27 10:29:39', '2025-12-27 12:31:20', '2025-12-27 12:31:20'),
(4, 'CSE101', 'DBMS', 'CSE', 2, 8, 'Active', '2025-12-27 10:32:01', '2025-12-29 03:41:09', NULL),
(5, 'EEE101', 'Electrical Signals', 'EEE', 2, 8, 'Inactive', '2025-12-27 10:32:58', '2025-12-29 04:47:46', NULL),
(6, 'CIV101', 'construction', 'CIVIL', 2, 9, 'Inactive', '2025-12-27 11:07:44', '2025-12-27 11:07:44', NULL),
(7, 'MEC101', 'Mechantronics', 'MECH', 3, 6, 'Inactive', '2025-12-27 11:34:30', '2025-12-29 09:30:07', NULL),
(8, 'MEC102', 'piping', 'MECH', 4, 3, 'Inactive', '2025-12-27 12:04:41', '2025-12-29 13:36:16', NULL),
(9, 'CIV103', 'Civils', 'CIVIL', 2, 8, 'Active', '2025-12-27 12:23:41', '2025-12-29 13:32:21', NULL),
(10, 'ECE104', 'digital electronics', 'ECE', 3, 9, 'Active', '2025-12-29 03:42:41', '2025-12-29 03:45:04', '2025-12-29 03:45:04'),
(11, 'MEC103', 'Thermodynamics', 'MECH', 4, 7, 'Active', '2025-12-29 04:11:09', '2025-12-29 12:46:21', '2025-12-29 12:46:21'),
(12, 'EEE102', 'dc circuits', 'EEE', 3, 4, 'Inactive', '2025-12-29 04:48:36', '2025-12-29 12:53:12', '2025-12-29 12:53:12'),
(13, 'CSE102', 'operating sytems', 'CSE', 4, 7, 'Active', '2025-12-29 04:59:15', '2025-12-29 04:59:43', '2025-12-29 04:59:43'),
(14, 'CIV1036456', 'electronics', 'EEE', 8, 10, 'Active', '2025-12-29 08:12:34', '2025-12-29 12:39:15', '2025-12-29 12:39:15'),
(15, 'CIV105', 'eng', 'CIVIL', 6, 3, 'Active', '2025-12-29 12:30:45', '2025-12-29 12:31:04', '2025-12-29 12:31:04'),
(16, 'CIV106', 'civil course', 'CIVIL', 5, 5, 'Active', '2025-12-29 12:38:14', '2025-12-29 12:39:06', '2025-12-29 12:39:06'),
(17, 'ece106', 'digital electronics', 'ECE', 5, 4, 'Inactive', '2025-12-29 12:44:45', '2025-12-29 12:46:07', '2025-12-29 12:46:07'),
(18, 'ECE107', 'radar', 'ECE', 3, 3, 'Active', '2025-12-29 12:47:12', '2025-12-29 12:53:00', '2025-12-29 12:53:00'),
(19, 'mec104', 'mechanical course', 'MECH', 5, 3, 'Active', '2025-12-29 13:04:24', '2025-12-29 13:36:03', NULL),
(20, 'cse105', 'data', 'CSE', 1, 4, 'Active', '2025-12-29 13:22:48', '2025-12-29 13:32:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
