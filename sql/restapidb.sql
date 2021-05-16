-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 04:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`) VALUES
(1, 'Administrative'),
(2, 'Analytics'),
(3, 'Art'),
(4, 'Audio'),
(5, 'Product Management'),
(6, 'Development General'),
(7, 'Game Design'),
(8, 'IT'),
(9, 'Marketing'),
(10, 'Operations'),
(11, 'Production'),
(12, 'Quality Assurance'),
(13, 'Security'),
(14, 'Software Development'),
(15, 'People Experience'),
(16, 'User Research');

-- --------------------------------------------------------

--
-- Table structure for table `dept_emp`
--

CREATE TABLE `dept_emp` (
  `emp_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_emp`
--

INSERT INTO `dept_emp` (`emp_id`, `dept_id`, `from_date`, `to_date`) VALUES
(24, 3, '2020-06-01', '2022-07-01'),
(22, 8, '2019-04-09', '2021-12-15'),
(1, 1, '2018-06-12', '2022-05-19'),
(7, 7, '2020-12-16', '2022-12-20'),
(14, 16, '2021-05-02', '2023-03-14'),
(21, 3, '2020-02-11', '2022-04-13'),
(18, 8, '2017-08-07', '2021-09-08'),
(15, 13, '2019-09-15', '2023-09-21'),
(24, 14, '2020-11-09', '2021-10-09'),
(22, 15, '2020-03-09', '2022-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `dept_manager`
--

CREATE TABLE `dept_manager` (
  `dept_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_manager`
--

INSERT INTO `dept_manager` (`dept_id`, `emp_id`, `from_date`, `to_date`) VALUES
(1, 21, '2021-01-05', '2022-05-27'),
(8, 1, '2020-09-21', '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `hire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `gender`, `hire_date`) VALUES
(1, 'Aran Mikazuki', 'm', '2020-11-24'),
(2, 'Prof. Jettie Russel Jr.', 'f', '2020-10-23'),
(3, 'Dena Watsica', 'f', '2020-11-21'),
(4, 'Hugh Kiehn DDS', 'm', '2020-01-14'),
(5, 'Eli Block', 'm', '2020-07-06'),
(6, 'Dr. Fredrick Reinger Jr.', 'm', '2020-03-14'),
(7, 'Mr. Agustin Morar DVM', 'f', '2020-04-09'),
(8, 'Dimitri Christiansen', 'f', '2021-01-29'),
(9, 'Tyrel Schumm', 'm', '2020-06-08'),
(10, 'Mrs. Oma Rippin Jr.', 'f', '2019-10-09'),
(11, 'Arielle Price', 'f', '2021-04-29'),
(12, 'Prof. Lia Rippin', 'f', '2021-04-04'),
(13, 'Rose Lesch', 'm', '2019-05-12'),
(14, 'Serena Casper', 'm', '2020-10-25'),
(15, 'Prof. Dwight Quitzon', 'm', '2020-10-20'),
(16, 'Isabell Klocko', 'f', '2020-01-24'),
(17, 'Dr. Loyce Nader I', 'm', '2021-01-30'),
(18, 'Kayden Ebert', 'm', '2020-04-23'),
(19, 'Kaci Morissette', 'f', '2021-04-28'),
(20, 'Jude VonRueden', 'f', '2019-09-12'),
(21, 'Pepe Gas', 'm', '2021-05-02'),
(22, 'Jack Marston', 'm', '2019-02-02'),
(23, 'Rip Van Winkle', 'm', '2019-10-10'),
(24, 'Amane Kanata', 'f', '2019-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `emp_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`emp_id`, `salary`, `from_date`, `to_date`) VALUES
(24, 1250, '2020-06-30', '2021-05-01'),
(22, 4000, '2020-04-13', '2022-04-13'),
(1, 2000, '2019-11-14', '2021-05-20'),
(1, 4000, '2021-05-21', '2022-05-19'),
(7, 1450, '2020-12-16', '2021-11-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD KEY `emp_id` (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
