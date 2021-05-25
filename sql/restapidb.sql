-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 07:22 AM
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
-- Table structure for table `access_token`
--

CREATE TABLE `access_token` (
  `access_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_token`
--

INSERT INTO `access_token` (`access_id`, `user_id`, `access_token`, `ip_address`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6ImJhbWJhbmciLCJlbWFpbCI6ImJhbWJhbmdAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MWRjOWJkYjUyZDA0ZGMyMDAzNmRiZDgzMTNlZDA1NSIsInJvbGUiOjEsInJlZ19kYXRlIjoiMjAyMS0wNS0xOVQxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE2MjE4Mzg3MjEsImV4cCI6MTYyMTkyNTEyMX0.NM8PuBHagPCQKfFbEWbFruEHax94GFcmdlLruA2owcE', '192.168.56.1'),
(2, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1c2VyX2lkIjoyLCJ1c2VybmFtZSI6Imx1Y2t5IiwiZW1haWwiOiJsdWNreUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjgxZGM5YmRiNTJkMDRkYzIwMDM2ZGJkODMxM2VkMDU1Iiwicm9sZSI6MSwicmVnX2RhdGUiOiIyMDIxLTA1LTIwVDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYyMTc0OTYzMCwiZXhwIjoxNjIxODM2MDMwfQ.xzlzjYFAA5_vLVRjsaLowY0S6CR-ECU23BuncVkMrzU', '192.168.56.1'),
(3, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1c2VyX2lkIjozLCJ1c2VybmFtZSI6InJhbWRhbmkiLCJlbWFpbCI6InJhbWRhbmlAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MWRjOWJkYjUyZDA0ZGMyMDAzNmRiZDgzMTNlZDA1NSIsInJvbGUiOjEsInJlZ19kYXRlIjoiMjAyMS0wNS0yMFQxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE2MjE1OTA5NTYsImV4cCI6MTYyMTY3NzM1Nn0.Bv9csRfqlgAd3Bdr10M3IV8dNlOqrF3d6Pb01BIN4B8', '192.168.56.1'),
(5, 4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1c2VyX2lkIjo0LCJ1c2VybmFtZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjhhMzBlYzY4MDdmNzFiYzY5ZDA5NmQ4ZTRkNTAxYWRlIiwicm9sZSI6MiwicmVnX2RhdGUiOiIyMDIxLTA1LTIzVDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYyMTg0MzI0NywiZXhwIjoxNjIxOTI5NjQ3fQ.P8iKfLcSH0SEJGG6sFgFu_nkogW9w3YwW0A8O1zGuHU', '192.168.56.1');

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
  `cc_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `gender`, `dept_id`, `designation_id`, `hire_date`, `cc_number`) VALUES
(1, 'Pepegas', 'm', 1, 1, '2018-08-15', '44992039128'),
(2, 'Rick Dias', 'm', 3, 4, '2020-06-18', '4364897752818'),
(3, 'Yuagg Gogg', 'm', 3, 8, '2020-09-21', '4946543621940'),
(4, 'Yuri Katoki', 'f', 12, 27, '2019-10-14', '374052739556057'),
(5, 'Geara Doga', 'm', 14, 40, '2020-10-20', '5226125373692856'),
(6, 'Bambang Sutrisno', 'm', 16, 38, '2019-11-20', '6011085425823536'),
(7, 'Sayla Mass', 'f', 9, 20, '2019-07-08', '5146924920028441'),
(8, 'Helmi Fachry Adamy', 'm', 14, 34, '2021-05-18', '4051423629897'),
(9, 'Ramdani Lucko', 'm', 4, 12, '2021-01-12', '5459244334921706'),
(10, 'Akari Shinohara', 'f', 13, 31, '2020-04-13', '4560641337083'),
(11, 'Zoltan Akkanen', 'm', 15, 36, '2020-12-14', '352979400425699'),
(12, 'Minerva Lao Zabi', 'm', 1, 1, '2018-03-12', '5168949848572959'),
(13, 'Jack Baker', 'm', 7, 17, '2021-05-19', '5589377894691674'),
(15, 'Faiz Azhar', 'm', 3, 6, '2021-05-18', '4034169651192'),
(20, 'Agra Fikri Lukmansyah', 'm', 3, 10, '2021-05-24', '21300991040129');

--
-- Triggers `employee`
--
DELIMITER $$
CREATE TRIGGER `delete_emp` AFTER DELETE ON `employee` FOR EACH ROW BEGIN
DELETE FROM salaries
    WHERE salaries.emp_id = old.emp_id;
END
$$
DELIMITER ;

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
(1, 1, 13500, '2021-02-16', '2023-02-16'),
(2, 10, 4000, '2020-04-13', '2022-03-11'),
(3, 6, 5000, '2019-11-20', '2022-04-15'),
(4, 5, 4500, '2020-10-20', '2022-10-20'),
(5, 8, 9000, '2021-05-08', '2023-05-08'),
(6, 12, 3000, '2018-03-12', '2023-03-12'),
(7, 9, 7900, '2021-01-12', '2023-01-12'),
(8, 2, 12450, '2020-06-18', '2023-06-18'),
(9, 7, 4550, '2019-07-08', '2024-07-08'),
(10, 3, 8760, '2020-09-21', '2021-09-21'),
(11, 4, 2450, '2019-10-14', '2023-10-14'),
(12, 11, 9000, '2020-12-14', '2023-12-14'),
(13, 1, 400, '2020-02-16', '2021-02-15'),
(14, 1, 200, '2015-02-16', '2020-02-15'),
(15, 6, 500, '2018-02-16', '2019-11-19'),
(17, 13, 2400, '2020-06-16', '2022-06-16'),
(18, 15, 3350, '2021-05-21', '2022-12-25'),
(19, 12, 5123123, '2014-11-20', '2017-04-15'),
(22, 20, 1400, '2021-05-24', '2022-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `role`, `reg_date`) VALUES
(1, 'bambang', 'bambang@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2021-05-20'),
(2, 'lucky', 'lucky@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2021-05-21'),
(3, 'ramdani', 'ramdani@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2021-05-21'),
(4, 'admin', 'admin@gmail.com', '8a30ec6807f71bc69d096d8e4d501ade', 2, '2021-05-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `user_id` (`user_id`);

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
  ADD KEY `employee_ibfk_2` (`designation_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_token`
--
ALTER TABLE `access_token`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_token`
--
ALTER TABLE `access_token`
  ADD CONSTRAINT `access_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`designation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
