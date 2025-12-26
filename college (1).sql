-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2025 at 03:52 AM
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
  `course_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`) VALUES
(1, 'CSE101', 'Intro to Programming'),
(2, 'CSE102', 'Data Structures'),
(3, 'CSE103', 'Algorithms'),
(4, 'CSE104', 'Computer Networks'),
(5, 'CSE105', 'Database Systems'),
(6, 'CSE106', 'Operating Systems'),
(7, 'CSE107', 'Software Engineering'),
(8, 'CSE108', 'Web Development'),
(9, 'CSE109', 'Machine Learning'),
(10, 'CSE110', 'Artificial Intelligence'),
(11, 'CSE111', 'Embedded Systems'),
(12, 'CSE112', 'Compiler Design'),
(13, 'CSE113', 'Data Mining'),
(14, 'CSE114', 'Cyber Security'),
(15, 'CSE115', 'Cloud Computing');

-- --------------------------------------------------------

--
-- Table structure for table `course_allocations`
--

CREATE TABLE `course_allocations` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `academic_year` varchar(9) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allocations`
--

INSERT INTO `course_allocations` (`id`, `course_id`, `faculty_id`, `academic_year`, `semester`, `created_by`, `updated_at`) VALUES
(1, 1, 2, '2025-2028', 1, 1, NULL),
(2, 2, 2, '2025-2028', 1, 1, NULL),
(3, 3, 2, '2025-2028', 2, 1, NULL),
(4, 4, 2, '2025-2028', 2, 1, NULL),
(5, 5, 2, '2025-2028', 1, 1, NULL),
(6, 6, 2, '2025-2028', 2, 1, NULL),
(7, 7, 2, '2025-2028', 1, 1, NULL),
(8, 8, 2, '2025-2028', 2, 1, NULL),
(9, 9, 2, '2025-2028', 1, 1, NULL),
(10, 10, 2, '2025-2028', 2, 1, NULL),
(11, 11, 2, '2025-2028', 1, 1, NULL),
(12, 12, 2, '2025-2028', 2, 1, NULL),
(13, 13, 2, '2025-2028', 1, 1, NULL),
(14, 14, 2, '2025-2028', 2, 1, NULL),
(15, 15, 2, '2025-2028', 1, 1, NULL),
(16, 1, 3, '2024-2027', 1, 1, NULL),
(17, 2, 3, '2024-2027', 1, 1, NULL),
(18, 3, 3, '2024-2027', 2, 1, NULL),
(19, 4, 3, '2024-2027', 2, 1, NULL),
(20, 5, 3, '2024-2027', 1, 1, NULL),
(21, 6, 3, '2024-2027', 2, 1, NULL),
(22, 7, 3, '2024-2027', 1, 1, NULL),
(23, 8, 3, '2024-2027', 2, 1, NULL),
(24, 9, 3, '2024-2027', 1, 1, NULL),
(25, 10, 3, '2024-2027', 2, 1, NULL),
(26, 11, 3, '2024-2027', 1, 1, NULL),
(27, 12, 3, '2024-2027', 2, 1, NULL),
(28, 13, 3, '2024-2027', 1, 1, NULL),
(29, 14, 3, '2024-2027', 2, 1, NULL),
(30, 15, 3, '2024-2027', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `department`) VALUES
(1, 2, 'CSE'),
(2, 3, 'MECH'),
(3, 4, 'ECE');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `role` enum('admin','faculty') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin User', 'admin@example.com', '123', 'admin'),
(2, 'John Doe', 'john@example.com', '123', 'faculty'),
(3, 'Jane Smith', 'jane@example.com', '123', 'faculty'),
(4, 'Alice Brown', 'alice@example.com', '123', 'faculty');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `register_no` varchar(20) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `register_no`, `department`) VALUES
(1, 2, 'ECE2023', 'ECE'),
(2, 2, 'REG001', 'ECE');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `fee_amount` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `due_amount` int(11) DEFAULT NULL,
  `payment_mode` enum('Cash','UPI','Bank') DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `receipt_no` varchar(30) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_fees`
--

INSERT INTO `student_fees` (`id`, `student_id`, `semester`, `fee_amount`, `paid_amount`, `due_amount`, `payment_mode`, `payment_date`, `receipt_no`, `created_by`) VALUES
(1, 1, 5, 5000, 5000, 0, 'UPI', '2025-12-25', 'REC-2025-0001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` enum('admin','student') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '1234', 'admin'),
(2, 'Abirami', 'abirami@gmail.com', '1234', 'student'),
(3, 'Admin User', 'admin@example.com', '123', 'admin'),
(4, 'John Doe', 'john@example.com', '123', ''),
(5, 'Jane Smith', 'jane@example.com', '123', '');

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
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `course_allocations`
--
ALTER TABLE `course_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_allocations`
--
ALTER TABLE `course_allocations`
  ADD CONSTRAINT `course_allocations_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_allocations_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `course_allocations_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `login` (`id`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD CONSTRAINT `student_fees_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
