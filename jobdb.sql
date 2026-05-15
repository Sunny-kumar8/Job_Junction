-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 08:41 AM
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
-- Database: `jobdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `MNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `SEX` varchar(11) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CONTACTNO` varchar(90) NOT NULL,
  `DEGREE` text NOT NULL,
  `APPLICANTPHOTO` varchar(255) NOT NULL,
  `NATIONALID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblapplicants`
--

INSERT INTO `tblapplicants` (`APPLICANTID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`, `CONTACTNO`, `DEGREE`, `APPLICANTPHOTO`, `NATIONALID`) VALUES
(2018013, 'Kim', 'Domingo', 'Enoe', 'Kab City', 'Female', 'none', '1991-01-01', 'Kab Citys', 27, 'kim', 'a6312121e15caec74845b7ba5af23330d52d4ac0', 'kim@y.com', '5415456', 'BSAC', 'photos/RobloxScreenShot20180406_203758793.png', ''),
(2018014, 'Jake', 'Zyrus', 'Ilmba', 'Kab City', 'Female', 'none', '1993-01-16', 'Kab City', 25, 'jake', 'c8d99c2f7cd5f432c163abcd422672b9f77550bb', 'jake@y.com', '14655623123123', 'BSIT', '', ''),
(2018015, 'Janry', 'Tan', 'Lim', 'brgy 1 Kab City', 'Female', 'Single', '1992-01-30', 'Kab City', 26, 'janry', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'jan@gmail.com', '0234234', 'BSIT', '', ''),
(2024016, 'Narendra', 'Vaishnav', '', 'Bhagat Ki Kothi near railway station', 'Male', 'Single', '2002-10-25', 'Jodhpur', 21, 'narendra001', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'gfhjh@gmail.com', '9119150741', 'diploma', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblattachmentfile`
--

CREATE TABLE `tblattachmentfile` (
  `ID` int(11) NOT NULL,
  `FILEID` varchar(30) DEFAULT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(90) NOT NULL,
  `FILE_LOCATION` varchar(255) NOT NULL,
  `USERATTACHMENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattachmentfile`
--

INSERT INTO `tblattachmentfile` (`ID`, `FILEID`, `JOBID`, `FILE_NAME`, `FILE_LOCATION`, `USERATTACHMENTID`) VALUES
(2, '2147483647', 2, 'Resume', 'photos/27052018124027PLATENO FE95483.docx', 2018013),
(3, '20246912529', 7, 'Resume', 'photos/16052024113218bg-image.png', 2024016);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(2, '000', 78, 1, 'employeeid'),
(3, '0', 17, 1, 'APPLICANT'),
(4, '69125', 30, 1, 'FILEID');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATEGORY`) VALUES
(29, 'WOODEN HANDICRAFT'),
(30, 'STEEL'),
(33, 'IT COMPANY'),
(36, 'TEXTILES');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL,
  `COMPANYNAME` varchar(90) NOT NULL,
  `COMPANYADDRESS` varchar(90) NOT NULL,
  `COMPANYCONTACTNO` varchar(30) NOT NULL,
  `COMPANYSTATUS` varchar(90) NOT NULL,
  `COMPANYMISSION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`COMPANYID`, `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`, `COMPANYSTATUS`, `COMPANYMISSION`) VALUES
(20, 'VANSH ART ', 'Khasra no.246, plot no.7th, Tanawara-salavas road, bharmi petrol pump, jodhpur(342001)', '7737677620', '', ''),
(21, 'A.K.ART', 'Block no. 7, Khasra no.246, salavas road, bharmi petrol pump, jodhpur(342001)', '9782121035', '', ''),
(22, 'METAL WORLD', 'Khasra no.205, plot no.7th, Tanawara-salavas road, bharmi petrol pump, jodhpur(342001)', '7229817660', '', ''),
(23, 'Rajasthan steels', 'Pal sangria bye pass, Pal Gaon, Jodhpur, Rajasthan 342001', '9799092333', '', ''),
(25, 'RAM TEXTILE', 'Plot no. 1 New Nakoda Industrial Area, MIA 2nd Phase, Basni, Jodhpur, Rajasthan 342005', '7737882997', '', ''),
(27, 'LUCID OUTSOURCING SOLOUTIONS PVT. LTD.', 'Manohar, 5th Floor, CYB -6, RIICO  Industrial Area Phase II, Basni, Jodhpur, Rajasthan', '9521214848', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) NOT NULL,
  `CELLNO` varchar(30) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `WORKSTATS` varchar(90) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`FEEDBACKID`, `APPLICANTID`, `REGISTRATIONID`, `FEEDBACK`) VALUES
(2, 2024016, 3, 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL,
  `OCCUPATIONTITLE` varchar(90) NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` double NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` text NOT NULL,
  `JOBDESCRIPTION` text NOT NULL,
  `PREFEREDSEX` varchar(30) NOT NULL,
  `SECTOR_VACANCY` text NOT NULL,
  `JOBSTATUS` varchar(90) NOT NULL,
  `DATEPOSTED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`JOBID`, `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`, `DATEPOSTED`) VALUES
(1, 2, 'Technology', 'ISD', 6, 15000, 'jan 30', 'Two year Experience', 'We are looking for bachelor of science in information technology.\r\nasdasdasd', 'Male/Female', 'yes', '', '2018-05-20 00:00:00'),
(2, 2, 'Technology', 'Accounting', 1, 15000, 'may 20', 'Two years Experience', 'We are looking for bachelor of science in Acountancy', 'Female', 'yes', '', '2018-05-20 02:33:00'),
(3, 20, 'WOODEN HANDICRAFT', 'Accounting', 3, 22000, '1year', '10+12th passed /graduate/ITI/1 year experience', 'accounting management', 'Male/Female', 'account ', '', '2024-05-16 09:58:00'),
(4, 20, 'WOODEN HANDICRAFT', 'Helper', 15, 12000, '6 month', '10th passed', 'Contractor helper', 'Male', 'helper', '', '2024-05-16 10:17:00'),
(5, 20, 'WOODEN HANDICRAFT', 'Security Guard', 3, 10000, '6 month', '10th passed', 'Guarding high-traffic areas and monitoring all visitors. Checking the identification or passes of visitors or issuing them passes', 'Male', 'Security ', '', '2024-05-16 10:21:00'),
(6, 20, 'WOODEN HANDICRAFT', 'supervisor', 3, 15000, '6 month', 'Graduated/ITI/Diploma', ' To communicate organizational needs, oversee employees\\\' performance, provide guidance, support, identify development needs, and manage the reciprocal relationship between staff', 'Male/Female', 'supervisor', '', '2024-05-16 10:33:00'),
(7, 21, 'WOODEN HANDICRAFT', 'Accounting', 3, 23000, '1year', '10+12th passed /graduate/ITI/1 year experience', 'accounting management', 'Male/Female', ' account', '', '2024-05-16 10:51:00'),
(8, 21, 'WOODEN HANDICRAFT', 'Helper', 5, 11000, '6 month', '10+12th passed', 'Contractor helper', 'Male', 'helper', '', '2024-05-19 08:12:00'),
(9, 21, 'WOODEN HANDICRAFT', 'Security Guard', 2, 11500, '1year', '10/12th passed', 'Guarding high-traffic areas and monitoring all visitors. Checking the identification or passes of visitors or issuing them passes', 'Male', 'Security', '', '2024-05-19 08:14:00'),
(10, 21, 'WOODEN HANDICRAFT', 'supervisor', 4, 17000, '6 month', 'Graduated/ITI/Diploma', 'To communicate organizational needs, oversee employees\\\' performance, provide guidance, support, identify development needs, and manage the reciprocal relationship between staff', 'Male', 'Supervisor', '', '2024-05-19 08:17:00'),
(11, 22, 'STEEL', 'Accounting', 3, 18000, '6 month', 'Graduation/Tally GST/Working  experience Certificate', 'Accounting management', 'Male/Female', 'Accounting', '', '2024-05-19 08:24:00'),
(12, 22, 'STEEL', 'Security Guard', 4, 15000, '6 month', '10/12th passed', 'Guarding high-traffic areas and monitoring all visitors. Checking the identification or passes of visitors or issuing them passes', 'Male', 'Security Guard', '', '2024-05-19 08:26:00'),
(13, 22, 'STEEL', 'Supervisor', 5, 18000, '1year', 'Graduated/ITI/Diploma /6month experience', 'To communicate organizational needs, oversee employees\\\' performance, provide guidance, support, identify development needs, and manage the reciprocal relationship between staff', 'Male/Female', 'supervisor', '', '2024-05-19 08:29:00'),
(14, 22, 'STEEL', 'Helper', 10, 12000, '6 month', '10/12th passed', 'Contractor helper', 'Male', 'helper', '', '2024-05-19 08:33:00'),
(15, 23, 'STEEL', 'Accounting', 5, 20000, '1year', 'Graduation/Tally GST/Working experience Certificate', 'Accounting management', 'Male/Female', 'Accounting', '', '2024-05-19 08:42:00'),
(16, 23, 'STEEL', 'supervisor', 4, 18000, '6 month', 'Graduated/ITI/Diploma /6month experience', 'To communicate organizational needs, oversee employees\\\' performance, provide guidance, support, identify development needs, and manage the reciprocal relationship between staff', 'Male/Female', 'Supervisor', '', '2024-05-19 08:43:00'),
(17, 23, 'STEEL', 'Security Guard', 5, 12000, '6 month', '10/12th passed', 'Guarding high-traffic areas and monitoring all visitors. Checking the identification or passes of visitors or issuing them passes', 'Male', ' Security Guard', '', '2024-05-19 08:45:00'),
(18, 24, 'TEXTILES', 'Production Manager', 2, 25000, '1year', 'Textile Degree /2year experience', 'Production Management', 'Male/Female', 'Production Manager', '', '2024-05-20 16:29:00'),
(19, 24, 'TEXTILES', 'supervisor', 4, 18000, '6 month', 'Bachelor degree in textile or other/6month experience', 'To communicate organizational needs, oversee employees\\\' performance, provide guidance, support, identify development needs, and manage the reciprocal relationship between staff', 'Male/Female', 'supervisor', '', '2024-05-20 16:38:00'),
(20, 24, 'TEXTILES', 'Helper', 8, 12000, '6 month', '10/12th passed', 'Contractor helper', 'Male', 'Helper', '', '2024-05-20 16:39:00'),
(21, 24, 'TEXTILES', 'Security Guard', 5, 15000, '6 month', '10/12th passed', 'Guarding high-traffic areas and monitoring all visitors. Checking the identification or passes of visitors or issuing them passes', 'Male', 'Security Guard', '', '2024-05-20 16:40:00'),
(22, 25, 'TEXTILES', 'Production Manager', 3, 22000, '6 month', 'Textile Degree /2year experience', 'Production Management', 'Male/Female', 'Production Manager', '', '2024-05-20 17:56:00'),
(23, 25, 'TEXTILES', 'Security Guard', 2, 12000, '6 month', '10/12th passed', 'Guarding high-traffic areas and monitoring all visitors. Checking the identification or passes of visitors or issuing them passes', 'Male', 'Security Guard', '', '2024-05-20 17:58:00'),
(24, 25, 'TEXTILES', 'Helper', 6, 10000, '6 month', '10/12th passed', 'Contractor helper', 'Male', 'Helper', '', '2024-05-20 18:00:00'),
(25, 25, 'TEXTILES', 'supervisor', 3, 20000, '1year', 'Bachelor degree in textile or other/6month experience', 'To communicate organizational needs, oversee employees\\\' performance, provide guidance, support, identify development needs, and manage the reciprocal relationship between staff', 'Male/Female', 'supervisor', '', '2024-05-20 18:01:00'),
(26, 23, 'STEEL', 'Helper', 5, 12000, '6 month', '10/12th passed', 'Contractor helper', 'Male', 'helper', '', '2024-05-20 18:04:00'),
(27, 26, 'IT COMPANY', 'Project Manager', 2, 40000, '6 month', 'Bachelor\\\'s (Preferred)/2year experience', 'Work as a Business Analyst in core and non-core system support, issue investigation, resolution or escalation to technical team', 'Male/Female', 'Project Manager', '', '2024-05-20 18:30:00'),
(28, 26, 'IT COMPANY', 'Database Analyst', 3, 45000, '6 month', 'UG: B.Tech/B.E. in Any Specialization/PG: Any Postgraduate', 'DBA / Data warehousing', 'Male/Female', 'Database Analyst', '', '2024-05-20 18:43:00'),
(29, 26, 'IT COMPANY', 'Full-stack Developer', 2, 35000, '6 month', 'UG: B.Tech/B.E./PG: Any Postgraduate', 'Software Development', 'Male/Female', 'Back End Developer', '', '2024-05-20 18:49:00'),
(30, 26, 'IT COMPANY', 'Network (Support) Engineer', 2, 38000, '6 month', 'UG: B.Tech/B.E. in Any Specialization, BCA in Any Specialization, Diploma in Any Specialization', 'IT Network', 'Male/Female', 'Network (Support) Engineer', '', '2024-05-20 18:53:00'),
(31, 27, 'IT COMPANY', 'Database Analyst', 2, 40000, '6 month', 'UG: B.Tech/B.E. in Any Specialization/PG: Any Postgraduate', 'DBA / Data warehousing', 'Male/Female', 'Database Analyst', '', '2024-05-20 19:26:00'),
(32, 27, 'IT COMPANY', 'Full-stack Developer', 3, 32000, '6 month', 'UG: B.Tech/B.E./PG: Any Postgraduate', 'Software Development', 'Male/Female', 'Full-stack Developer', '', '2024-05-20 19:27:00'),
(33, 27, 'IT COMPANY', 'Network (Support) Engineer', 3, 30000, '6 month', 'UG: B.Tech/B.E. in Any Specialization, BCA in Any Specialization, Diploma in Any Specialization ', 'IT Network', 'Male/Female', 'Network (Support) Engineer', '', '2024-05-20 19:34:00'),
(34, 27, 'IT COMPANY', 'Project Manager', 2, 45000, '', 'Bachelor\\\'s (Preferred)/2year experience', 'Work as a Business Analyst in core and non-core system support, issue investigation, resolution or escalation to technical team', 'Male/Female', 'Project Manager', '', '2024-05-20 19:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobregistration`
--

CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) NOT NULL DEFAULT 'Pending',
  `FILEID` varchar(30) DEFAULT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT 1,
  `HVIEW` tinyint(1) NOT NULL DEFAULT 1,
  `DATETIMEAPPROVED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobregistration`
--

INSERT INTO `tbljobregistration` (`REGISTRATIONID`, `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`, `HVIEW`, `DATETIMEAPPROVED`) VALUES
(1, 2, 2, 2018013, 'Kim Domingo', '2018-05-27', 'Ive seen your work and its really interesting', '2147483647', 0, 1, '2018-05-26 16:13:01'),
(2, 2, 2, 2018015, 'Janry Tan', '2018-05-26', 'aasd', '2147483647', 0, 0, '2018-05-28 14:14:45'),
(3, 21, 7, 2024016, 'Narendra Vaishnav', '2024-05-16', 'approve', '20246912529', 0, 0, '2024-05-21 12:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(40) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PICLOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `FULLNAME`, `USERNAME`, `PASS`, `ROLE`, `PICLOCATION`) VALUES
('00018', 'JOB JUNCTION', 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator', 'photos/job.png'),
('029837', 'nandu', 'nandu123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Staff', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`APPLICANTID`);

--
-- Indexes for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`COMPANYID`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`JOBID`);

--
-- Indexes for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  ADD PRIMARY KEY (`REGISTRATIONID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2024017;

--
-- AUTO_INCREMENT for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
