-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2025 at 02:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(20) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `year`) VALUES
(1, 'CS101', 'Intro to Programming', 1),
(2, 'CS102', 'Mathematics I', 1),
(3, 'CS201', 'Data Structures', 2),
(4, 'CS202', 'Computer Networks', 2),
(5, 'CS301', 'Operating Systems', 3),
(6, 'CS302', 'Database Systems', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_allocations`
--

CREATE TABLE `course_allocations` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `academic_year` varchar(20) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allocations`
--

INSERT INTO `course_allocations` (`id`, `course_id`, `faculty_id`, `academic_year`, `semester`, `created_by`, `created_at`) VALUES
(1, 1, 2, '2025-2028', 1, 1, '2025-12-27 01:40:27'),
(2, 2, 3, '2025-2028', 1, 1, '2025-12-27 01:40:27'),
(3, 3, 4, '2025-2028', 3, 1, '2025-12-27 01:40:27'),
(4, 4, 2, '2024-2027', 3, 1, '2025-12-27 01:40:27'),
(5, 5, 3, '2024-2027', 5, 1, '2025-12-27 01:40:27'),
(6, 6, 4, '2023-2026', 5, 1, '2025-12-27 01:40:27'),
(7, 1, 3, '2025-2028', 1, 1, '2025-12-27 01:44:26'),
(8, 1, 3, '2025-2028', 1, 1, '2025-12-27 01:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','faculty') NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `role`, `department`, `created_at`) VALUES
(1, 'Admin User', 'admin@college.com', '0192023a7bbd73250516f069df18b500', 'admin', 'Computer Science', '2025-12-27 01:38:12'),
(2, 'Faculty One', 'faculty1@college.com', '85b954cf9565b9c54add85f09281a50b', 'faculty', 'Computer Science', '2025-12-27 01:38:12'),
(3, 'Faculty Two', 'faculty2@college.com', '85b954cf9565b9c54add85f09281a50b', 'faculty', 'Computer Science', '2025-12-27 01:38:12'),
(4, 'Faculty Three', 'faculty3@college.com', '85b954cf9565b9c54add85f09281a50b', 'faculty', 'Computer Science', '2025-12-27 01:38:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_allocations`
--
ALTER TABLE `course_allocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_allocations`
--
ALTER TABLE `course_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_allocations`
--
ALTER TABLE `course_allocations`
  ADD CONSTRAINT `course_allocations_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_allocations_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `login` (`id`),
  ADD CONSTRAINT `course_allocations_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
