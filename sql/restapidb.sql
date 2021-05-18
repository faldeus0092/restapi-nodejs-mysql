-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 09:07 PM
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
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`) VALUES
(1, 'Administrative Senior'),
(2, 'Product Analyst'),
(3, 'Technical Animator'),
(4, 'Senior VFX Artist'),
(5, 'Animator'),
(6, 'Cinematic Animator'),
(7, 'Lead UI/UX Designer'),
(8, 'Senior Concept Artist'),
(9, 'VFX Artist'),
(10, 'Environment Artist'),
(11, 'Matte Painter - Environment Artist'),
(12, 'Senior Sound Designer'),
(13, 'Technical Sound Designer'),
(14, 'Product Manager'),
(15, 'Lead Development General'),
(16, 'Senior Technical Game Designer'),
(17, 'Senior Combat Designer'),
(18, 'Live Ops Technical Designer'),
(19, 'Technical Hardware Management'),
(20, 'Social Media Manager'),
(21, 'Lead Operations'),
(22, 'Lead Producer'),
(23, 'Technical Producer'),
(24, 'Associate Producer'),
(25, 'Software Engineer - C++'),
(26, 'Senior Software Engineer - C++'),
(27, 'Quality Designer'),
(28, 'Development Manager'),
(29, 'Live Development Director'),
(30, 'Development Tester'),
(31, 'Game Security Analyst'),
(32, 'Senior Platform Integrations - C++'),
(33, 'Senior Animation Software Engineer - C++'),
(34, 'AI Software Engineer - C++'),
(35, 'System Engineer - C++'),
(36, 'Senior Recruiter'),
(37, 'Senior Sourcing Partner'),
(38, 'Lead User Research'),
(39, 'Senior Live Services Software Engineer - C++'),
(40, 'Network Software Engineer - C++');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `salary_id` int(11) DEFAULT NULL,
  `cc_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `gender`, `dept_id`, `designation_id`, `hire_date`, `salary_id`, `cc_number`) VALUES
(1, 'Pepegas', 'm', 1, 1, '2018-08-15', 7, '44992039128'),
(2, 'Rick Dias', 'm', 3, 4, '2020-06-18', 14, '4364897752818'),
(3, 'Yuagg Gogg', 'm', 3, 8, '2020-09-21', 16, '4946543621940'),
(4, 'Yuri Katoki', 'f', 12, 27, '2019-10-14', 17, '374052739556057'),
(5, 'Geara Doga', 'm', 14, 40, '2020-10-20', 10, '5226125373692856'),
(6, 'Char Aznable', 'm', 16, 38, '2019-11-20', 9, '6011085425823536'),
(7, 'Sayla Mass', 'f', 9, 20, '2019-07-08', 15, '5146924920028441'),
(8, 'Helmi Fachry Adamy', 'm', 14, 34, '2021-05-18', 11, '4051423629897'),
(9, 'Ramdani Lucko', 'm', 4, 12, '2021-01-12', 13, '5459244334921706'),
(10, 'Akari Shinohara', 'f', 13, 31, '2020-04-13', 8, '4560641337083'),
(11, 'Zoltan Akkanen', 'm', 15, 36, '2020-12-14', 18, '352979400425699'),
(12, 'Minerva Lao Zabi', 'm', 1, 1, '2018-03-12', 12, '5168949848572959');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `salary_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`salary_id`, `emp_id`, `salary`, `from_date`, `to_date`) VALUES
(7, 1, 1250, '2021-02-16', '2021-10-08'),
(8, 10, 4000, '2020-04-13', '2022-03-11'),
(9, 6, 3200, '2019-11-20', '2022-04-13'),
(10, 5, 4500, '2020-10-20', '2022-10-20'),
(11, 8, 9000, '2021-05-08', '2023-05-08'),
(12, 12, 3000, '2018-03-12', '2023-03-12'),
(13, 9, 7900, '2021-01-12', '2023-01-12'),
(14, 2, 12450, '2020-06-18', '2023-06-18'),
(15, 7, 4550, '2019-07-08', '2024-07-08'),
(16, 3, 8760, '2020-09-21', '2021-09-21'),
(17, 4, 2450, '2019-10-14', '2023-10-14'),
(18, 11, 9000, '2020-12-14', '2023-12-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `employee_ibfk_1` (`dept_id`),
  ADD KEY `employee_ibfk_2` (`designation_id`),
  ADD KEY `employee_ibfk_3` (`salary_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`salary_id`),
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
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`designation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`salary_id`) REFERENCES `salaries` (`salary_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
