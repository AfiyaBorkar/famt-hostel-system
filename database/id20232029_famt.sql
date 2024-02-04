-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2023 at 01:40 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20232029_famt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `gender`, `mobile_no`, `type`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'aDMIN@123', 'male', '1234', 'admin', '2016-04-04 20:31:45', '2023-03-27'),
(2, 'murli', 'murlimohan@gmail.com', 'Murli@123', 'male', '1234', 'warden', '2023-03-14 07:36:35', '2023-03-27'),
(6, 'girl', 'girl@gmail.com', 'Girl@123', 'female', '1234', 'warden', '2023-03-26 05:44:44', '2023-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(7, '1', 'Bachelor of Engineering', 'IT', '2016-04-11 19:35:19'),
(9, '2', 'Bachelor of Engineering', 'ELEC', '2023-03-17 14:26:30'),
(10, '3', 'Bachelor of Engineering', 'CHEM', '2023-03-17 14:27:20'),
(11, '4', 'Bachelor of Engineering', 'MCA', '2023-03-17 14:31:53'),
(12, '5', 'Bachelor of Engineering', 'EXTC', '2023-03-17 14:32:28'),
(13, '6', 'Bachelor of Engineering', 'Computer Science Engineering', '2023-03-17 14:32:54'),
(14, '7', 'Bachelor of Engineering', 'MECH', '2023-03-17 14:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `Building` varchar(100) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `fpm` varchar(100) NOT NULL,
  `frn` varchar(100) NOT NULL DEFAULT '',
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `regno` varchar(100) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL DEFAULT ' ',
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL,
  `leaveapplication` varchar(255) DEFAULT NULL,
  `leaveapplicationstatus` varchar(255) DEFAULT '',
  `complaint` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `Building`, `seater`, `feespm`, `fpm`, `frn`, `foodstatus`, `stayfrom`, `duration`, `course`, `semester`, `branch`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `password`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`, `leaveapplication`, `leaveapplicationstatus`, `complaint`) VALUES
(131, 54, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'EXTC ', '6', 'TE', 'X-20-0068', 'Vaibhavi', 'uday', 'Deshpande', 'female', 9075065285, 'gaurideshpande21112002@gmail.com', '9075065285', 9075065285, NULL, NULL, 9307269805, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:28:17', '22-03-2023 12:50:27', NULL, 'pending', 'Testing'),
(132, 52, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'CSE', 'First', 'FE', 'R-22-0269', 'Esha', '', 'Chikhale', 'female', 9075096986, 'eshagchikhale@gmail.com', '9075096986', 9075096986, NULL, NULL, 8888900702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:28:17', NULL, NULL, 'pending', ''),
(133, 54, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT ', '4', 'SE', 'T-21-0215', 'Baseema', 'Irfan', 'Kazi', 'female', 7517517367, 'kazibaseema04@gmail.com', '7517517367', 7517517367, NULL, NULL, 7517517367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:28:17', NULL, NULL, 'pending', ''),
(134, 53, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'EXTC', '6', 'TE', 'X-20-0059', 'Ekata', 'Dattaprasad', 'Khanolkar', 'female', 9370382373, 'khanolkared24@gmail.com', '9370382373', 9370382373, NULL, NULL, 9422964184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:28:17', NULL, NULL, 'pending', ''),
(135, 43, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', '1', 'FE', 'T-22-0107', 'Komal', 'Suryakant', 'Amberkar', 'female', 9405642427, 'amberkarkomal177@gmail.com', '9405642427', 9405642427, NULL, NULL, 9405642480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:28:17', NULL, NULL, 'pending', ''),
(136, 45, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'MCA', '1', 'FY', 'A-22-0499', 'Preeti', 'Dadaso', 'Kadam', 'female', 9172794814, 'preetikadam703@gmail.com', '9172794814', 9172794814, NULL, NULL, 9527980618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:05', NULL, NULL, 'pending', ''),
(137, 52, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', 'Frst', 'FE', 'T-22-0461', 'Aditi', '', 'Dhakne', 'female', 8799891013, 'aditidhakne16@gmail.com', '8799891013', 8799891013, NULL, NULL, 8055802948, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:05', NULL, NULL, 'pending', ''),
(138, 43, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'EXTC', 'First', 'FE', 'X-22-0083', 'Shrawani', 'Madhav', 'Joshi', 'female', 8793264130, 'joshishrawani86@gmail.com', '8793264130', 8793264130, NULL, NULL, 9421228058, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:05', NULL, NULL, 'pending', ''),
(139, 41, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'EE', 'Sixth', 'TE', 'ED-21-0396', 'Pooja', 'Ajay', 'Acharekar', 'female', 7066933531, 'poojaacharekar5@gmail.com', '7066933531', 7066933531, NULL, NULL, 8408089740, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:05', NULL, NULL, 'pending', ''),
(140, 39, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'MECH', '1', 'FE', 'M-22-0450', 'Sanjana', '', 'kocharekar', 'female', 9421031862, 'kocharekarsanjana29@gmail.com', '9421031862', 9421031862, NULL, NULL, 9421261908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:05', NULL, NULL, 'pending', ''),
(141, 39, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'C S (AI & ML)', '1', 'FE', 'R-22-0544', 'Shravita', 'Pravin', 'Kelkar', 'female', 9403390530, 'shravitakelkar@gmail.com', '9403390530', 9403390530, NULL, NULL, 9421146353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:05', NULL, NULL, 'pending', ''),
(142, 51, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'chemical', '1', 'FY', 'C-22-0088', 'puja', '', 'Bhatkar', 'female', 7378413296, 'bhatkarpooja596@gmail.com', '7378413296', 7378413296, NULL, NULL, 7030535492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(143, 41, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'IT', 'IV', 'SE', 'T-21-0488', 'Sanika', 'Ashok', 'Tambe', 'female', 9373560157, 'sanikatambe225@gmail.com', '9373560157', 9373560157, NULL, NULL, 9623713605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(144, 52, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'ExTc', '1', 'FE', 'X-22-0437', 'Pranjali', '', 'Palav', 'female', 9322364924, 'pranjalipalav@gmail.com', '9322364924', 9322364924, NULL, NULL, 9422584556, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(145, 52, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'ENTC', '1', 'FE', 'X-22-0298', 'Shreya', 'Rahul', 'saitavadekar', 'female', 9657163569, 'saitavadekarshreya@gmail.com', '9657163569', 9657163569, NULL, NULL, 9145727680, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(146, 43, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', '3', 'DSE', 'TD-22-0352 ', 'Trupti', 'Ashok', 'Kadam', 'female', 9324392208, 'kadamtrupti005@gmail.com', '9324392208', 9324392208, NULL, NULL, 9867134556, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(147, 45, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', 'VI', 'TE', 'T-20-0359', 'Sejal', 'Sunil', 'Nikam', 'female', 9665180257, 'sejalsnikam1909@gmail.com', '9665180257', 9665180257, NULL, NULL, 9921450010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(148, 45, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'CSE', '3', 'DSE', 'RD-22-0570', 'Vidyatai', 'Subhash', 'Khavare', 'female', 8637702378, 'vidyakhavare3005@gmail.com', '8637702378', 8637702378, NULL, NULL, 8007540637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(149, 45, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'ENTC', '8', 'BE', 'X-19-0164', 'Ashwini', 'Namdev', 'Rane', 'female', 9579049963, 'raneashwini397@gmail.com', '9579049963', 9579049963, NULL, NULL, 7588450301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(150, 53, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'EXTC', '8', 'BE', 'X-19-0015', 'Pragati', 'Madhusudan', 'Prabhukhanolkar', 'female', 9960126647, 'pragatiprabhu06@gmail.com', '9960126647', 9960126647, NULL, NULL, 7447656902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(151, 45, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT ', '4', 'SE', 'T-21-0400', 'Siddhi', 'Babaso', 'Shinde', 'female', 7218506187, 'shindesiddhi398@gmail.com', '7218506187', 7218506187, NULL, NULL, 7821921069, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:29:43', NULL, NULL, 'pending', ''),
(152, 43, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'MCA', '1', 'FY', 'A-22-0182', 'Sneha', 'Krishnadas', 'Dike', 'female', 9021944811, 'snehadike2000@gmail.com', '9021944811', 9021944811, NULL, NULL, 9923060633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(153, 42, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'MCA ', 'I', 'FY', 'A-22-0587', 'Sakshi', 'Prakash', 'Nayak', 'female', 9834646219, 'sakshinayak876@gmail.com', '9834646219', 9834646219, NULL, NULL, 9552593319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(154, 42, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'MCa', '1st', '', 'A-22-0190', 'Pratibha', 'Pandharinath', 'Parab', 'female', 8767714595, 'pratibhaparab3110@gmail.com', '8767714595', 8767714595, NULL, NULL, 9075178582, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(155, 53, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'C S (AI & ML)', '3', 'SE', 'RD-22-0626', 'Samruddhi', 'Shamrao', 'Charapale', 'female', 9307714633, 'samruddhicharapale@gmail.com', '9307714633', 9307714633, NULL, NULL, 9370373037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(156, 54, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'Chem', '6', 'TE', 'C-20-0257', 'Samiya', 'Mainuddin', 'Shivkar', 'female', 9730977814, 'samiya.shivkar786@gmail.com', '9730977814', 9730977814, NULL, NULL, 9960302632, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(157, 39, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'IT', '4', 'SE', 'T-21-0301', 'Sejal', 'Vikas', 'Sawant', 'female', 9370530639, 'sejalsawant58@gmail.com', '9370530639', 9370530639, NULL, NULL, 9420399005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(158, 42, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'IT', '1', 'FE', 'T-22-0527', 'Sabiha', 'Shabbir', 'Chikte', 'female', 8007472855, 'sabihachikte04@gmail.com', '8007472855', 8007472855, NULL, NULL, 96551142556, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(159, 51, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'ELCT', 'I', 'FE', 'E-22-0080', 'Mugdha', 'Vinayak', 'Natekar', 'female', 7276708212, 'mugdhanatekar262@gmail.com', '7276708212', 7276708212, NULL, NULL, 9881420538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(160, 51, 'Jqigad', 2, 2000, '0', '0', 0, NULL, 12, 'MECH', 'l', 'FE', 'M-22-0448', 'Samidha', 'Rajendra', 'Patil', 'female', 8180067917, 'samidhapatil005@gmail.com', '8180067917', 8180067917, NULL, NULL, 9271869716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:30:15', NULL, NULL, 'pending', ''),
(161, 51, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', '1', 'FE', 'T-22-0255', 'Sejal', 'Premanand', 'Jadhav', 'female', 8956717271, 'sejaljadhav457@gmail.com', '8956717271', 8956717271, NULL, NULL, 9405399130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:31:17', NULL, NULL, 'pending', ''),
(162, 51, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'Elect. ', 'First', 'FE', 'E-22-0286', 'Sneha', 'Pappu', 'Yadav', 'female', 8237983545, 'snehayadav2162005@gmail.com', '8237983545', 8237983545, NULL, NULL, 9822230493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:31:17', NULL, NULL, 'pending', ''),
(163, 51, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', '1', 'FE', 'T-22-0085', 'Prachi', 'Pradip', 'Dabholkar', 'female', 9764778836, 'prachipdabholkar11@gmail.com', '9764778836', 9764778836, NULL, NULL, 9421189568, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:31:17', NULL, 'not good', 'approved', ''),
(164, 54, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', 'VI', 'TE', 'T-20-0128', 'Shrutika', 'Shashikant', 'Mhabdi', 'female', 8010930254, 'mhabdishrutika@gmail.com', '8010930254', 8010930254, NULL, NULL, 9373574698, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:31:17', NULL, NULL, 'pending', ''),
(165, 41, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'CHEMICAL', '4th ', 'SE', 'C-21-0279', 'Shrawani', 'Suhas', 'Madake', 'female', 8468995156, 'shravanimadake5156@gmail.com', '8468995156', 8468995156, NULL, NULL, 7057998877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:31:17', NULL, NULL, 'pending', ''),
(166, 53, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'MECH', '8th ', 'BE', 'M-19-0092', 'Mrunmayee', 'Rajendra', 'Raorane', 'female', 9923805244, 'mrunmayeeraorane30082001@gmail.com', '99238 05244 ', 9923805244, NULL, NULL, 7378840333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:31:17', NULL, NULL, 'pending', ''),
(167, 42, 'Jangira', 2, 2000, '0', '0', 0, NULL, 12, 'MCA', '1', '', 'A-22-0580', 'Shreya', 'Anand', 'Sawant', 'female', 7208306241, 'sawantshreya7348@gmail.com', '7208306241', 7208306241, NULL, NULL, 8291126083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:35:46', NULL, NULL, 'pending', ''),
(168, 53, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'IT', 'VIII', 'BE', 'TD-20-0232', 'Prajakta', 'Dattaram', 'Jadhav', 'female', 7499561368, 'jadhavprajakta667@gmail.com', '7499561368', 7499561368, NULL, NULL, 9272279641, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:36:08', NULL, NULL, 'pending', ''),
(169, 45, 'Raigad', 2, 2000, '0', '0', 0, NULL, 12, 'MCA', '1', 'FE', 'A-22-0499', 'Preeti', 'Dadaso', 'Kadam', 'female', 9172794814, 'preetikadam703@gmail.com', '9172794814', 9172794814, NULL, NULL, 9527980618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:36:42', NULL, NULL, 'pending', ''),
(170, 54, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'EXTC', '6', 'TE', 'X-20-0240', 'Krutika', 'Dayanand', 'Gawas', 'female', 7972895517, 'krutikagawas052@gmail.com', '7972895517', 7972895517, NULL, NULL, 9356477686, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:37:19', NULL, NULL, 'pending', ''),
(171, 41, 'Janjira', 2, 2000, '0', '0', 0, NULL, 12, 'C S (AI & ML)', '4th', 'SE', 'R-21-0472', 'Purva', 'sanjay', 'chavan', 'female', 8830753769, 'chavanpurva57@gmail.com', '8830753769', 8830753769, NULL, NULL, 8830753769, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:37:37', NULL, NULL, 'pending', ''),
(172, 52, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'EXTC', '1', 'FE', 'X-22-0116', 'Sanika', '', 'Dongare', 'female', 9322657621, 'dongaresanika4@gmail.com', '9322657621', 9322657621, NULL, NULL, 8605224044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:37:37', NULL, NULL, 'pending', ''),
(173, 52, 'Jaigad', 2, 2000, '0', '0', 0, NULL, 12, 'C S (AI & ML)', '1st', 'FE', 'R-22-0246', 'Kumud', '', 'patkar', 'female', 8010524548, 'kumudpatkar6@gmail.com', '8010524548', 8010524548, NULL, NULL, 8766856688, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:37:37', NULL, NULL, 'pending', ''),
(174, 56, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-23', 12, 'IT', 'V', 'TE', 'T-20-0336', 'RITESH', '', 'KELASKAR', 'male', 8530255747, NULL, '8530255747', 8530255747, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(175, 56, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-23', 12, 'IT', 'V', 'TE', 'TD-21-0079', 'MAYUR', '', 'PAWAR', 'male', 9370708492, NULL, '9370708492', 9370708492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(176, 56, 'Sindhu', 2, 2000, '12000', '0', 0, '2022-11-24', 12, 'MCA', 'I', 'MCA', 'A-22-0313', 'SAHIL ', 'PRASHANT', 'DARGE', 'male', 8657622013, NULL, '8657622013', 8657622013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(177, 56, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-12-11', 12, 'MCA', 'I', 'MCA', 'A-22-0577', 'SHREYASH ', 'ARVIND', 'WARANG', 'male', 7977728131, NULL, '7977728131', 7977728131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(178, 57, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-23', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0600', 'FAISAL', '', 'SAKWARE', 'male', 9552620954, NULL, '9552620954', 9552620954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(179, 57, 'Sindhu', 2, 2000, '9000', '0', 0, '2022-11-23', 12, 'EXTC', 'III', 'SE', 'XD-22-0596', 'BHAVESH', '', 'CHOUGULE', 'male', 9623210739, NULL, '9623210739', 9623210739, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(180, 57, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-22', 12, 'Mechanical', 'III', 'SE', 'MD-22-0550', 'SUPRABHAT', '', 'RAWOOL', 'male', 8625048701, NULL, '8625048701', 8625048701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(181, 57, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-22', 12, 'Mechanical', 'III', 'SE', 'MD-22-0557', 'VISHAL', '', 'GHADI', 'male', 8551981140, NULL, '8551981140', 8551981140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(182, 57, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-25', 12, 'Mechanical', 'I', 'FE', 'M-22-0602', 'HARESH', '', 'KARLE', 'male', 9130935910, NULL, '9130935910', 9130935910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(183, 57, 'Sindhu', 2, 2000, '0', '0', 0, '2022-11-30', 12, 'Electrical', 'III', 'SE', 'ED-22-0618', 'ADITYA', 'AMAR', 'GAIKWAD', 'male', 9730866655, NULL, '9730866655', 9730866655, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(184, 59, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-07-10', 12, 'Electrical', 'V', 'TE', 'ED-21-0031', 'SURAJ', '', 'GAWADE', 'male', 9136174854, NULL, '9136174854', 9136174854, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(185, 59, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-07-11', 12, 'Chemical', 'V', 'TE', 'C-20-0149', 'VIJAY', '', 'SAWANT', 'male', 7264926508, NULL, '7264926508', 7264926508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(186, 59, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-19', 12, 'IT', 'VII', 'BE', 'TD-20-0212', 'SOURABH', '', 'KORAVI', 'male', 9689433147, NULL, '9689433147', 9689433147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(187, 59, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-18', 12, 'IT', 'VII', 'BE', 'TD-20-0367', 'RUSHIKESH', '', 'KADAM', 'male', 8626036133, NULL, '8626036133', 8626036133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(188, 60, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-13', 12, 'Electrical', 'V', 'TE', 'E-20-0181', 'PRATHAM', '', 'NAKHAWA', 'male', 9321598721, NULL, '9321598721', 9321598721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(189, 60, 'Sindhu', 2, 2000, '8000', '0', 0, '2022-09-06', 12, 'Electrical', 'V', 'TE', 'E-200310', 'YASHAWARDHAN', '', 'JITKAR', 'male', 8275830511, NULL, '8275830511', 8275830511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(190, 60, 'Sindhu', 2, 2000, '10000', '0', 0, '2022-09-06', 12, 'C S (AI & ML)', 'V', 'TE', 'R-20-0441', 'OMKAR', '', 'KHADE', 'male', 7028421099, NULL, '7028421099', 7028421099, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(191, 60, 'Krishna', 2, 2000, '0', '0', 0, '2022-07-29', 12, 'EXTC', 'III', 'SE', 'X-21-0193', 'SUMEDH', '', 'SONAWANE', 'male', 7218075591, NULL, '7218075591', 7218075591, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(192, 61, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-11', 12, 'IT', 'VII', 'BE', 'T-19-0064', 'PRATHAMESH', '', 'PARANJAPE', 'male', 9561903219, NULL, '9561903219', 9561903219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(193, 61, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-11', 12, 'Mechanical', 'VII', 'BE', 'M-19-0109', 'MAYURESH', '', 'BHOSALE', 'male', 7499972796, NULL, '7499972796', 7499972796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(194, 61, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-07-11', 12, 'Mechanical', 'VII', 'BE', 'M-19-0218', 'OMKAR', '', 'ZADEKAR', 'male', 9764775778, NULL, '9764775778', 9764775778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(195, 61, 'Sindhu', 2, 2000, '2000', '0', 0, '2022-11-30', 12, 'C S (AI & ML)', 'I', 'FE', 'XD-20-0208', 'YASH', '', 'PAWAR', 'male', 9511228468, NULL, '9511228468', 9511228468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(196, 62, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-11-19', 12, 'EXTC', 'I', 'FE', 'X-22-0435', 'KARAN', '', 'SHINDE', 'male', 7410797129, NULL, '7410797129', 7410797129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(197, 62, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-12', 12, 'IT', 'I', 'FE', 'T-22-0442', 'KARAN', '', 'DHANE', 'male', 8421852232, NULL, '8421852232', 8421852232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(198, 62, 'Sindhu', 2, 2000, '10000', '0', 0, '2022-11-20', 12, 'EXTC', 'I', 'FE', 'X-22-0318', 'ATHARVA', '', 'CHAVAN', 'male', 9028711123, NULL, '9028711123', 9028711123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(199, 62, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-23', 12, 'Mechanical', 'III', 'SE', 'MD-22-0350', 'JAYESH', '', 'PARTE', 'male', 9403368648, NULL, '9403368648', 9403368648, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(200, 62, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-11-21', 12, 'Mechanical', 'III', 'SE', 'MD-22-0395', 'PRAFULLA', '', 'RASAL', 'male', 727257171, NULL, '727257171', 727257171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(201, 62, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-27', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0501', 'RAUNAK', '', 'WETE', 'male', 9928474280, NULL, '9928474280', 9928474280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(202, 63, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-12', 12, 'Electrical', 'VII', 'BE', 'ED-20-0372', 'GANESH', '', 'WARAK', 'male', 9404889539, NULL, '9404889539', 9404889539, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(203, 63, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-12', 12, 'Electrical', 'VII', 'BE', 'E-19-0341', 'HARICHANDRA', '', 'CHANGAN', 'male', 8530943720, NULL, '8530943720', 8530943720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(204, 63, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-11', 12, 'Mechanical', 'VII', 'BE', 'M-19-0264', 'RAJENDRA', '', 'SARAK', 'male', 9637880290, NULL, '9637880290', 9637880290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(205, 63, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-11', 12, 'Chemical', 'VII', 'BE', 'C-19-0330', 'DIPAK', '', 'BHALEKAR', 'male', 9373324372, NULL, '9373324372', 9373324372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(206, 64, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-11-20', 12, 'EXTC', 'I', 'FE', 'X-22-0511', 'DEWANG', '', 'KORGAONKAR', 'male', 7796736107, NULL, '7796736107', 7796736107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(207, 64, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-24', 12, 'EXTC', 'III', 'SE', 'XD-22-0379', 'ANIKET', '', 'CHAVAN', 'male', 7447466179, NULL, '7447466179', 7447466179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(208, 64, 'Sindhu', 2, 2000, '12000', '0', 0, '2022-11-22', 12, 'IT', 'I', 'FE', 'T-22-0459', 'DARSHAN', '', 'AYARE', 'male', 9004594976, NULL, '9004594976', 9004594976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(209, 64, 'Sindhu', 2, 2000, '0', '0', 0, '2022-11-25', 12, 'MCA', 'I', 'MCA', 'A-22-0585', 'VIVEK', '', 'MAURYA', 'male', 7977317343, NULL, '7977317343', 7977317343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(210, 64, 'Sindhu', 2, 2000, '5000', '0', 0, '2022-11-25', 12, 'MCA', 'I', 'MCA', 'A-22-0604', 'KUMAR', '', 'NARENDAR', 'male', 9137364564, NULL, '9137364564', 9137364564, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(211, 64, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-11-21', 12, 'Mechanical', 'I', 'FE', 'M-22-0599', 'HARSH', '', 'SARANGALE', 'male', 9834148948, NULL, '9834148948', 9834148948, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(212, 65, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-11', 12, 'IT', 'VII', 'BE', 'T-19-0340', 'AMOGH', '', 'ANERAO', 'male', 7498350571, NULL, '7498350571', 7498350571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(213, 65, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-16', 12, 'IT', 'VII', 'BE', 'T-20-0153', 'VED', '', 'SHIRGAONKAR', 'male', 9623091799, NULL, '9623091799', 9623091799, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', '28-03-2023 11:00:32', NULL, '', 'just a suggestion'),
(214, 65, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-11', 12, 'Mechanical', 'VII', 'BE', 'MD-20-0235', 'SHREYAS', '', 'SHIVTARKAR', 'male', 9673965037, NULL, '9673965037', 9673965037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(215, 65, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-07-11', 12, 'Mechanical', 'VII', 'BE', 'MD-20-0226', 'PIYUSH', '', 'SHIRKE', 'male', 9370230613, NULL, '9370230613', 9370230613, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(216, 66, 'Sindhu', 2, 2000, '24000', '0', 0, '2022-07-17', 12, 'Mechanical', 'VII', 'BE', 'M-19-0095', 'ADVAIT', '', 'RANE', 'male', 7559424123, NULL, '7559424123', 7559424123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(217, 66, 'Sindhu', 2, 2000, '0', '0', 0, '2022-07-17', 12, 'Mechanical', 'VII', 'BE', 'M-19-0114', 'HARSHVARDHAN', '', 'PATIL', 'male', 8605737281, NULL, '8605737281', 8605737281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(218, 66, 'Sindhu', 2, 2000, '12000', '0', 0, '2022-07-18', 12, 'Mechanical', 'VII', 'BE', 'M-18-0147', 'MURAD', '', 'SATVILKAR', 'male', 7720824931, NULL, '7720824931', 7720824931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(219, 83, 'Krishna', 2, 2000, '2000', '0', 0, '2022-11-06', 12, 'EXTC', 'I', 'FE', 'X-22-0275', 'SIDDHARTH', '', 'DESAI', 'male', 8830896154, NULL, '8830896154', 8830896154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(220, 83, 'Krishna', 2, 2000, '5000', '0', 0, '2022-11-06', 12, 'IT', 'I', 'FE', 'T-22-0256', 'ASHISH', '', 'GHADIGAONKAR', 'male', 8010371285, NULL, '8010371285', 8010371285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(221, 83, 'Krishna', 2, 2000, '5000', '0', 0, '2022-11-07', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0156', 'SAI', '', 'GAIKAR', 'male', 7841985520, NULL, '7841985520', 7841985520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(222, 83, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-07', 12, 'IT', 'I', 'FE', 'T-22-0272', 'ADITYA', '', 'PARSHARAM', 'male', 9322090198, NULL, '9322090198', 9322090198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(223, 83, 'Krishna', 2, 2000, '24000', '0', 0, '2022-11-12', 12, 'IT', 'I', 'FE', 'T-22-0247', 'MAYUR', '', 'GARJE', 'male', 9529953972, NULL, '9529953972', 9529953972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(224, 83, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-21', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0543', 'SHUBHAM', '', 'BALDE', 'male', 8010504795, NULL, '8010504795', 8010504795, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(225, 84, 'Krishna', 2, 2000, '0', '0', 0, '2022-08-01', 12, 'C S (AI & ML)', 'I', 'SE', 'R-21-0231', 'SHREYAS', '', 'CHAVAN', 'male', 9112925804, NULL, '9112925804', 9112925804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(226, 84, 'Krishna', 2, 2000, '0', '0', 0, '2022-08-01', 12, 'Chemical', 'III', 'SE', 'C-21-0232', 'PRANAV', '', 'DATE', 'male', 9358757022, NULL, '9358757022', 9358757022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(227, 84, 'Krishna', 2, 2000, '0', '0', 0, '2022-07-31', 12, 'Chemical', 'III', 'SE', 'C-21-0237', 'ADITYA', '', 'DATE', 'male', 8767979592, NULL, '8767979592', 8767979592, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(228, 84, 'Krishna', 2, 2000, '0', '0', 0, '2022-08-01', 12, 'Chemical', 'III', 'SE', 'C-21-0235', 'SOHAM', '', 'DATE', 'male', 9096935587, NULL, '9096935587', 9096935587, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(229, 84, 'Krishna', 2, 2000, '12000', '0', 0, '2022-07-25', 12, 'Mechanical', 'III', 'SE', 'M-21-0159', 'PRATHAMESH', '', 'CHAVAN', 'male', 7758963153, NULL, '7758963153', 7758963153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(230, 84, 'Krishna', 2, 2000, '5000', '0', 0, '2023-01-12', 12, 'IT', 'IV', 'SE', 'T-21-0441', 'SHARDUL', '', 'SALVI', 'male', 8767790840, NULL, '8767790840', 8767790840, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(231, 85, 'Krishna', 2, 2000, '0', '0', 0, '2022-08-01', 12, 'Electrical', 'III', 'SE', 'E-21-0130', 'SAHIL', '', 'PAKATE', 'male', 7666423367, NULL, '7666423367', 7666423367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(232, 85, 'Krishna', 2, 2000, '0', '0', 0, '2022-07-25', 12, 'Electrical', 'III', 'SE', 'E-21-0202', 'PRITHVIRAJ', '', 'PATIL', 'male', 9420360609, NULL, '9420360609', 9420360609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(233, 85, 'Krishna', 2, 2000, '5000', '0', 0, '2022-07-01', 12, 'EXTC', 'III', 'SE', 'X-21-0187', 'AKSHAY', '', 'BHAND', 'male', 7767093255, NULL, '7767093255', 7767093255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(234, 85, 'Krishna', 2, 2000, '12000', '0', 0, '2022-07-27', 12, 'Chemical', 'III', 'SE', 'C-21-0492', 'SAMARTH', '', 'PASILKAR', 'male', 8530971199, NULL, '8530971199', 8530971199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(235, 85, 'Krishna', 2, 2000, '5000', '0', 0, '2022-07-29', 12, 'Electrical', 'III', 'SE', 'E-21-0268', 'ADITYA', '', 'BENDKHALE', 'male', 9022706199, NULL, '9022706199', 9022706199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(236, 85, 'Krishna', 2, 2000, '24000', '0', 0, '2022-07-28', 12, 'EXTC', 'III', 'SE', 'X-21-0002', 'OJAS', '', 'JIRAGE', 'male', 9403604250, NULL, '9403604250', 9403604250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(237, 86, 'Krishna', 2, 2000, '12000', '0', 0, '2022-07-31', 12, 'Electrical', 'III', 'SE', 'E-21-0239', 'SAGAR', '', 'CHAVAN', 'male', 7775015147, NULL, '7775015147', 7775015147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(238, 86, 'Krishna', 2, 2000, '24000', '0', 0, '2022-07-31', 12, 'IT', 'III', 'SE', 'T-21-0126', 'ROHIT', '', 'NANDGAVKAR', 'male', 8421513242, NULL, '8421513242', 8421513242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(239, 86, 'Krishna', 2, 2000, '12000', '0', 0, '2022-07-24', 12, 'Mechanical', 'III', 'SE', 'M-21-0163', 'GANESH', '', 'PARAB', 'male', 8956031853, NULL, '8956031853', 8956031853, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(240, 86, 'Krishna', 2, 2000, '0', '0', 0, '2022-08-01', 12, 'Mechanical', 'III', 'SE', 'M-21-0480', 'SUYASH', '', 'TRIBHUVANE', 'male', 9421784613, NULL, '9421784613', 9421784613, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(241, 86, 'Krishna', 2, 2000, '0', '0', 0, '2022-07-24', 12, 'IT', 'III', 'SE', 'T-21-0143', 'YASH', '', 'GOSAVI', 'male', 8805308852, NULL, '8805308852', 8805308852, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(242, 86, 'Krishna', 2, 2000, '0', '0', 0, '2022-08-01', 12, 'EXTC', 'III', 'SE', 'X-21-0418', 'ASEEM', '', 'MOMIN', 'male', 7058228689, NULL, '7058228689', 7058228689, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(243, 88, 'Krishna', 2, 2000, '2000', '0', 0, '2022-10-31', 12, 'Chemical', 'I', 'FE', 'C-22-0122', 'PARAS', '', 'JADHAV', 'male', 9689743797, NULL, '9689743797', 9689743797, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(244, 88, 'Krishna', 2, 2000, '12000', '0', 0, '2022-11-08', 12, 'Electrical', 'I', 'FE', 'E-22-0160', 'VEDANG', '', 'TELANG', 'male', 9404318245, NULL, '9404318245', 9404318245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(245, 88, 'Krishna', 2, 2000, '5000', '0', 0, '2022-11-06', 12, 'IT', 'I', 'FE', 'T-22-0144', 'PRATHAMESH', '', 'ARLEKAR', 'male', 9373927243, NULL, '9373927243', 9373927243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(246, 88, 'Krishna', 2, 2000, '5000', '0', 0, '2022-11-06', 12, 'EXTC', 'I', 'FE', 'X-22-0265', 'SUYASH', '', 'MORYE', 'male', 8010659210, NULL, '8010659210', 8010659210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(247, 88, 'Krishna', 2, 2000, '24000', '0', 0, '2022-11-12', 12, 'EXTC', 'I', 'FE', 'X-22-0152', 'YASH', '', 'GHUME', 'male', 9503064405, NULL, '9503064405', 9503064405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(248, 88, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-13', 12, 'Mechanical', 'I', 'FE', 'M-22-0099', 'SANVED', '', 'ZAGADE', 'male', 8856015153, NULL, '8856015153', 8856015153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(249, 89, 'Krishna', 2, 2000, '24000', '0', 0, '2022-11-06', 12, 'Electrical', 'I', 'FE', 'E-22-0051', 'RUPESH', '', 'GAJBAR', 'male', 9405378438, NULL, '9405378438', 9405378438, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(250, 89, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-06', 12, 'Electrical', 'I', 'FE', 'E-22-0086', 'AYUSH', '', 'KAMBLE', 'male', 7448297632, NULL, '7448297632', 7448297632, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(251, 89, 'Krishna', 2, 2000, '12000', '0', 0, '2022-11-06', 12, 'Electrical', 'I', 'FE', 'E-22-0094', 'SUJAL', '', 'MORE', 'male', 7498726828, NULL, '7498726828', 7498726828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(252, 89, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-06', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0131', 'AAYUSH', '', 'GADEKAR', 'male', 9975398320, NULL, '9975398320', 9975398320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(253, 89, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-06', 12, 'Mechanical', 'I', 'FE', 'M-22-0090', 'YUVRAJ', '', 'GAWADE', 'male', 9405495833, NULL, '9405495833', 9405495833, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(254, 89, 'Krishna', 2, 2000, '5000', '0', 0, '2022-11-07', 12, 'IT', 'I', 'FE', 'T-22-0126', 'SUJAL', '', 'KHEDEKAR', 'male', 9359742537, NULL, '9359742537', 9359742537, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(255, 90, 'Krishna', 2, 2000, '12000', '0', 0, '2022-11-06', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0251', 'ADITYA', '', 'NAIK', 'male', 9420469295, NULL, '9420469295', 9420469295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(256, 90, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-06', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0161', 'ATHARV', '', 'BANDEKAR', 'male', 7249511027, NULL, '7249511027', 7249511027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(257, 90, 'Krishna', 2, 2000, '12000', '0', 0, '2022-11-06', 12, 'EXTC', 'I', 'FE', 'X-22-0250', 'PAVAN', '', 'CHITARI', 'male', 7796836377, NULL, '7796836377', 7796836377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(258, 90, 'Krishna', 2, 2000, '12000', '0', 0, '2022-11-06', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0249', 'TEJAS', '', 'KAVATHANKAR', 'male', 8767448477, NULL, '8767448477', 8767448477, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(259, 90, 'Krishna', 2, 2000, '12000', '0', 0, '2022-11-06', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0242', 'PRANAV', '', 'CHILE', 'male', 7588111513, NULL, '7588111513', 7588111513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', ''),
(260, 90, 'Krishna', 2, 2000, '0', '0', 0, '2022-11-06', 12, 'C S (AI & ML)', 'I', 'FE', 'R-22-0168', 'PRATHMESH', '', 'SINGHAN', 'male', 8767380269, NULL, '8767380269', 8767380269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:42:42', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `Building` varchar(100) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `Building`, `room_no`, `fees`, `posting_date`) VALUES
(9, 2, 'Krishna', 60, 24000, '2023-03-15 11:16:50'),
(10, 2, 'Krishna', 83, 24000, '2023-03-15 11:16:50'),
(11, 2, 'Krishna', 84, 24000, '2023-03-15 11:16:50'),
(12, 2, 'Krishna', 85, 24000, '2023-03-15 11:16:50'),
(13, 2, 'Krishna', 86, 24000, '2023-03-15 11:16:50'),
(14, 2, 'Krishna', 88, 24000, '2023-03-15 11:16:50'),
(15, 2, 'Krishna', 89, 24000, '2023-03-15 11:16:50'),
(16, 2, 'Sindhu', 56, 24000, '2023-03-15 11:16:50'),
(17, 2, 'Sindhu', 57, 24000, '2023-03-15 11:16:50'),
(18, 2, 'Sindhu', 59, 24000, '2023-03-15 11:16:50'),
(19, 2, 'Sindhu', 60, 24000, '2023-03-15 11:16:50'),
(20, 2, 'Sindhu', 61, 24000, '2023-03-15 11:16:50'),
(21, 2, 'Sindhu', 62, 24000, '2023-03-15 11:16:50'),
(22, 2, 'Sindhu', 63, 24000, '2023-03-15 11:16:50'),
(23, 2, 'Sindhu', 64, 24000, '2023-03-15 11:16:50'),
(24, 2, 'Sindhu', 65, 24000, '2023-03-15 11:16:50'),
(25, 2, 'Sindhu', 66, 24000, '2023-03-15 11:16:50'),
(26, 2, 'Krishna', 90, 24000, '2023-03-17 15:54:44'),
(27, 2, 'Janjira', 39, 24000, '2023-03-17 15:54:44'),
(28, 2, 'Janjira', 41, 24000, '2023-03-17 15:54:44'),
(29, 2, 'Janjira', 42, 24000, '2023-03-17 15:54:44'),
(30, 2, 'Raigad', 43, 24000, '2023-03-17 15:54:44'),
(31, 2, 'Raigad', 45, 24000, '2023-03-17 15:54:44'),
(32, 2, 'Jaigad', 51, 24000, '2023-03-17 15:54:44'),
(33, 2, 'Jaigad', 52, 24000, '2023-03-17 15:54:44'),
(34, 2, 'Jaigad', 53, 24000, '2023-03-17 15:54:44'),
(35, 2, 'Jaigad', 54, 24000, '2023-03-17 15:54:44'),
(37, 2, 'Saifalibld', 80, 24000, '2023-03-26 05:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `shortleaveapplication`
--

CREATE TABLE `shortleaveapplication` (
  `cid` int(255) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `building` varchar(255) CHARACTER SET latin1 NOT NULL,
  `regno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `year` varchar(100) CHARACTER SET latin1 NOT NULL,
  `semester` varchar(50) CHARACTER SET latin1 NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `applicationdate` date NOT NULL DEFAULT current_timestamp(),
  `shortleave` varchar(500) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `shortleavestatus` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shortleaveapplication`
--

INSERT INTO `shortleaveapplication` (`cid`, `id`, `name`, `building`, `regno`, `year`, `semester`, `contactno`, `roomno`, `applicationdate`, `shortleave`, `shortleavestatus`) VALUES
(1, 213, 'VED  SHIRGAONKAR', 'Sindhu', 'T-20-0153', 'BE', 'VII', 9623091799, 65, '2023-03-28', 'JUST LEAVING FOR A WHILE', ' pending');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userregno` varchar(255) NOT NULL,
  `userIp` varbinary(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userregno`, `userIp`, `city`, `country`, `loginTime`) VALUES
(36, 186, 'TD-20-0212', 0x323430313a343930303a316338653a393538313a316330333a6537393a343435613a35613231, '', '', '2023-03-17 15:59:04'),
(37, 213, 'T-20-0153', 0x323430313a343930303a316338653a393538313a356334333a623761323a353332323a61396564, '', '', '2023-03-18 11:21:06'),
(38, 131, 'X-20-0068', 0x323430313a343930303a353139333a3730373a323736643a363132653a663633313a38313834, '', '', '2023-03-20 11:19:17'),
(39, 131, 'X-20-0068', 0x323430313a343930303a353139333a3730373a323736643a363132653a663633313a38313834, '', '', '2023-03-20 11:54:44'),
(40, 131, 'X-20-0068', 0x323430313a343930303a353139333a3730373a323736643a363132653a663633313a38313834, '', '', '2023-03-20 11:54:51'),
(41, 131, 'X-20-0068', 0x323430313a343930303a353266353a313765353a383161653a663839303a373737653a36393666, '', '', '2023-03-22 06:59:47'),
(42, 252, 'R-22-0131', 0x323430313a343930303a316338663a316535373a653434633a326563663a623339613a66393633, '', '', '2023-03-26 07:21:22'),
(43, 262, 'T-19-0130', 0x323430313a343930303a316338663a316535373a653434633a326563663a623339613a66393633, '', '', '2023-03-26 10:42:47'),
(44, 266, 'X-19-0011', 0x3138332e38372e3231312e3535, '', '', '2023-03-26 10:56:05'),
(45, 261, 'TD-20-01600', 0x323430313a343930303a316338663a316535373a653434633a326563663a623339613a66393633, '', '', '2023-03-26 11:03:54'),
(46, 266, 'X-19-0011', 0x3138332e38372e3231312e3535, '', '', '2023-03-26 11:30:53'),
(47, 266, 'X-19-0011', 0x323430313a343930303a353330303a383739643a333830323a636135343a323834623a31383862, '', '', '2023-03-26 11:54:07'),
(48, 266, 'X-19-0011', 0x323430313a343930303a316338663a316535373a653434633a326563663a623339613a66393633, '', '', '2023-03-26 12:03:48'),
(49, 266, 'X-19-0011', 0x3138332e38372e3231312e3535, '', '', '2023-03-26 12:42:01'),
(50, 266, 'X-19-0011', 0x3138332e38372e3231312e3535, '', '', '2023-03-26 12:42:08'),
(51, 266, 'X-19-0011', 0x3138332e38372e3231312e3535, '', '', '2023-03-26 12:45:42'),
(52, 266, 'X-19-0011', 0x3131372e3230392e39342e313535, '', '', '2023-03-26 17:25:40'),
(53, 266, 'X-19-0011', 0x3131372e3230392e39342e313535, '', '', '2023-03-26 18:01:45'),
(54, 266, 'X-19-0011', 0x3131372e3230392e39342e313535, '', '', '2023-03-26 18:01:53'),
(55, 266, 'X-19-0011', 0x3131372e3230392e39342e313535, '', '', '2023-03-26 18:39:50'),
(56, 266, 'X-19-0011', 0x3131372e3230392e39342e313535, '', '', '2023-03-26 18:39:57'),
(57, 266, 'X-19-0011', 0x323430313a343930303a316238303a616664353a366361343a353633363a613638323a366231, '', '', '2023-03-27 05:12:25'),
(58, 266, 'X-19-0011', 0x323430313a343930303a316238303a616664353a366361343a353633363a613638323a366231, '', '', '2023-03-27 05:13:57'),
(59, 136, 'A-22-0499', 0x323430313a343930303a313930313a666231613a643565653a396231373a326530353a34363531, '', '', '2023-03-27 06:39:17'),
(60, 149, 'X-19-0164', 0x323430313a343930303a313930313a666231613a643565653a396231373a326530353a34363531, '', '', '2023-03-27 06:49:08'),
(61, 149, 'X-19-0164', 0x323430313a343930303a353266313a656665383a643164623a313030393a61343a36356132, '', '', '2023-03-27 09:29:51'),
(62, 149, 'X-19-0164', 0x323430313a343930303a353266313a656665383a643164623a313030393a61343a36356132, '', '', '2023-03-27 10:53:08'),
(63, 266, 'X-19-0011', 0x323430313a343930303a373937373a636235633a626361363a373232613a653530313a36633932, '', '', '2023-03-28 11:28:27'),
(64, 213, 'T-20-0153', 0x323430313a343930303a316332643a356366393a663030653a313536393a663031363a65393235, '', '', '2023-03-28 16:52:27'),
(65, 213, 'T-20-0153', 0x323430313a343930303a316332643a356366393a663030653a313536393a663031363a65393235, '', '', '2023-03-28 16:52:42'),
(66, 213, 'T-20-0153', 0x323430313a343930303a316332643a356366393a663030653a313536393a663031363a65393235, '', '', '2023-03-28 17:04:00'),
(67, 213, 'T-20-0153', 0x323430313a343930303a353465373a636134613a376362623a653135383a333832323a39613336, '', '', '2023-03-28 17:39:38'),
(68, 149, 'X-19-0164', 0x3138332e38372e3231312e3939, '', '', '2023-03-29 13:56:15'),
(69, 149, 'X-19-0164', 0x3138332e38372e3231312e3939, '', '', '2023-03-29 13:58:55'),
(70, 213, 'T-20-0153', 0x323430313a343930303a316339613a353839643a373866353a333837363a323262653a37616638, '', '', '2023-03-30 14:48:26'),
(71, 133, 'T-21-0215', 0x323430393a343034323a326330643a383230633a623934393a3834653a626363353a38613334, '', '', '2023-03-30 16:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shortleaveapplication`
--
ALTER TABLE `shortleaveapplication`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `shortleaveapplication`
--
ALTER TABLE `shortleaveapplication`
  MODIFY `cid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
