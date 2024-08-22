-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 03, 2015 at 10:39 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `training`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `date` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(5) NOT NULL,
  `fno` varchar(10) NOT NULL,
  `bn` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `en` varchar(20) NOT NULL,
  `cno` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hfno` varchar(10) NOT NULL,
  `hbn` varchar(20) NOT NULL,
  `hcity` varchar(20) NOT NULL,
  `hstate` varchar(20) NOT NULL,
  `hpin` varchar(10) NOT NULL,
  `hen` varchar(20) NOT NULL,
  `hcno` varchar(10) NOT NULL,
  `hemail` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `cname`, `usn`, `pwd`, `date`, `month`, `year`, `fno`, `bn`, `city`, `state`, `pin`, `en`, `cno`, `email`, `hfno`, `hbn`, `hcity`, `hstate`, `hpin`, `hen`, `hcno`, `hemail`) VALUES
(1, 'OR Technology', 'vijit', 'vij123', '1', '1', '1960', '7', 'Om Tower', 'varanasi', 'UP', '226004', 'Aishwariya', '1234567899', 'aish@gmail.com', '1', 'Shakti Tower', 'Nanital', 'Uttrakhand', '123450', 'Vijit Gupta', '7607991234', 'vijitgupta10@gmail.com'),
(7, 'Amazon', 'amazon', 'ama123', '23', '3', '1960', '4', 'Red Cliff', 'Delhi', 'Delhi', '213456', 'Mr.Raj Singh', '9876543210', 'raj@gmail.com', '8', 'Amazon Head', 'Gorakhpur', 'UP', '273005', 'Mr.viraj singh', '5643217890', 'viraj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE IF NOT EXISTS `criteria` (
  `cid` varchar(3) NOT NULL,
  `p10` varchar(6) NOT NULL,
  `p12` varchar(6) NOT NULL,
  `pbt` varchar(6) NOT NULL,
  `vl` varchar(20) NOT NULL,
  `cl` varchar(20) NOT NULL,
  `cs` varchar(4) NOT NULL,
  `it` varchar(4) NOT NULL,
  `ec` varchar(4) NOT NULL,
  `en` varchar(4) NOT NULL,
  `me` varchar(4) NOT NULL,
  `ce` varchar(4) NOT NULL,
  `bt` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`cid`, `p10`, `p12`, `pbt`, `vl`, `cl`, `cs`, `it`, `ec`, `en`, `me`, `ce`, `bt`) VALUES
('1', '60', '60', '70', 'English', 'C,C++,Java', 'CS', 'IT', 'EC', 'null', 'null', 'null', 'null'),
('7', '', '', '', '', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('12', '', '', '', '', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('12', '', '', '', '', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('', '', '', '', '', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('', '', '', '', '', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE IF NOT EXISTS `cv` (
  `sid` varchar(2) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `obj` varchar(50) NOT NULL,
  `pl` varchar(15) NOT NULL,
  `os` varchar(20) NOT NULL,
  `eca` varchar(80) NOT NULL,
  `tai` varchar(50) NOT NULL,
  `pro` varchar(50) NOT NULL,
  `aoi` varchar(50) NOT NULL,
  `hob` varchar(50) NOT NULL,
  `sth` varchar(50) NOT NULL,
  `tum` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`sid`, `fname`, `lname`, `roll_no`, `obj`, `pl`, `os`, `eca`, `tai`, `pro`, `aoi`, `hob`, `sth`, `tum`) VALUES
('1', 'Aishwarya', 'Pandey', '1214313053', 'Good technical,logical and development skills', 'C\r\nC++\r\njava', 'HTML\r\nMS Office\r\nCSS', 'Student Coordinator in college fest\r\nStudent Coordinator in CDC department.', 'java from Cranium Web Technology', 'Placement Cell', 'web design', 'Singing\r\nBasketball', 'punctual\r\ngood team work quality', 'that ');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE IF NOT EXISTS `emp` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `date` varchar(2) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `hno` varchar(5) NOT NULL,
  `bn` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `cno` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `qual` varchar(10) NOT NULL,
  `exp` varchar(2) NOT NULL,
  `des` varchar(16) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`eid`, `fname`, `lname`, `usn`, `pwd`, `date`, `month`, `year`, `gender`, `hno`, `bn`, `city`, `state`, `pin`, `cno`, `email`, `qual`, `exp`, `des`) VALUES
(1, 'Pankhudi', 'Swaroop', 'pankhudi', 'pank123', '19', '1', '1994', 'female', '48', 'Turkamanpur', 'Gorakhpur', 'UP', '273006', '7503970732', 'pankhudi@gmail.com', 'Btech', '5', 'Head'),
(3, 'Vijit', 'Gupta', 'vijit', 'vij123', '5', '5', '1991', 'male', '420', 'unknown road', 'Lucknow', 'UP', '273001', '9876543210', 'vijit@gmail.com', 'Btech', '3', 'Manager'),
(4, 'abc', 'sdf', 'iop', '123456', '1', '1', '1961', 'female', '', 'egf', 'erg', 'eg', '35', '9876543210', 'abc@ha.vom', 'nm', '2', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `usn` varchar(15) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sno`, `usn`, `pwd`, `status`, `type`) VALUES
(1, 'pankhudi', 'pank123', 'A', 'F'),
(2, 'vijit', 'vij123', 'A', 'C'),
(3, 'aishwarya', 'aish123', 'A', 'S'),
(4, 'amazon', 'ama123', 'A', 'C'),
(5, 'iop', '123456', 'P', 'F'),
(6, 'knk', 'mnbvcx', 'P', 'C'),
(7, 'amazon', 'ama123', 'P', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(5) NOT NULL,
  `concern` varchar(5) NOT NULL,
  `sub` varchar(200) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`nid`, `type`, `concern`, `sub`) VALUES
(1, 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `place_day_basic_details`
--

CREATE TABLE IF NOT EXISTS `place_day_basic_details` (
  `cid` varchar(5) NOT NULL,
  `date` varchar(10) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `blockn` varchar(20) NOT NULL,
  `buildn` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` varchar(7) NOT NULL,
  `fid` varchar(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `rtime` varchar(10) NOT NULL,
  `duration` varchar(5) NOT NULL,
  `tentd` varchar(10) NOT NULL,
  `link` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place_day_basic_details`
--

INSERT INTO `place_day_basic_details` (`cid`, `date`, `month`, `year`, `blockn`, `buildn`, `city`, `state`, `pin`, `fid`, `fname`, `rtime`, `duration`, `tentd`, `link`) VALUES
('1', '11', '9', '2015', 'C block', 'IMS Enggineering College', 'Ghaziabad', 'UP', '273009', '210', 'Mr. NU Khan', '10 AM', '5hrs', '10-05-13', 'www.tcs.com'),
('7', '1', '1', '2017', '', '', '', '', '', '', '', '', '', '', ''),
('12', '1', '1', '1981', '', '', '', '', '', '', '', '', '', '', ''),
('', '1', '1', '1984', '', '', '', '', '', '', '', '', '', '', ''),
('', '1', '1', '1981', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `cid` varchar(3) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `fdate` varchar(2) NOT NULL,
  `fmonth` varchar(2) NOT NULL,
  `fyear` varchar(4) NOT NULL,
  `link` varchar(20) NOT NULL,
  `hbn` varchar(10) NOT NULL,
  `hcity` varchar(10) NOT NULL,
  `hstate` varchar(10) NOT NULL,
  `hpin` varchar(6) NOT NULL,
  `hempn` varchar(20) NOT NULL,
  `hmob` varchar(10) NOT NULL,
  `hemid` varchar(20) NOT NULL,
  `bbn` varchar(10) NOT NULL,
  `bcity` varchar(10) NOT NULL,
  `bstate` varchar(10) NOT NULL,
  `bpin` varchar(6) NOT NULL,
  `bempn` varchar(20) NOT NULL,
  `bmob` varchar(10) NOT NULL,
  `bemid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`cid`, `cname`, `fdate`, `fmonth`, `fyear`, `link`, `hbn`, `hcity`, `hstate`, `hpin`, `hempn`, `hmob`, `hemid`, `bbn`, `bcity`, `bstate`, `bpin`, `bempn`, `bmob`, `bemid`) VALUES
('1', 'TCS Consultancies', '4', '3', '1989', '', 'Twin Tower', 'Mumbai', 'Maharashtr', '273910', 'Mr.Ajay Mishra', '9876543210', 'ajay@tcs.com', 'Gosh Tower', 'Delhi', 'Delhi', '290189', 'Mr.Vijay Rana', '908765433', 'vijay@tcs.com');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(5) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `date` varchar(2) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(5) NOT NULL,
  `cr` varchar(30) NOT NULL,
  `nos` varchar(3) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`sno`, `cid`, `cname`, `date`, `month`, `year`, `cr`, `nos`) VALUES
(2, '12', 'TCS Consultancies', '3', '1', '1981', 'etrg', '3'),
(3, '1', 'Amazon', '18', '10', '2012', 'Mr.Shyam Murti', '2'),
(4, '11', '', '1', '1', '2013', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `rounds`
--

CREATE TABLE IF NOT EXISTS `rounds` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(3) NOT NULL,
  `tot_r` varchar(2) NOT NULL,
  `det1` varchar(200) NOT NULL,
  `dur1` varchar(11) NOT NULL,
  `det2` varchar(200) NOT NULL,
  `dur2` varchar(11) NOT NULL,
  `det3` varchar(200) NOT NULL,
  `dur3` varchar(11) NOT NULL,
  `det4` varchar(200) NOT NULL,
  `dur4` varchar(11) NOT NULL,
  `det5` varchar(200) NOT NULL,
  `dur5` varchar(11) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rounds`
--

INSERT INTO `rounds` (`sno`, `cid`, `tot_r`, `det1`, `dur1`, `det2`, `dur2`, `det3`, `dur3`, `det4`, `dur4`, `det5`, `dur5`) VALUES
(3, '1', '3', 'Aptitude Round', '1', 'PI round.', '4', 'GD', '2', 'null', 'null', 'null', 'null'),
(4, '7', '2', '', '', '', '', 'null', 'null', 'null', 'null', 'null', 'null'),
(5, '12', '4', '', '', '', '', '', '', '', '', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `round_rep`
--

CREATE TABLE IF NOT EXISTS `round_rep` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(3) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `rname` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `date` varchar(12) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(5) NOT NULL,
  `ns` varchar(3) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `round_rep`
--

INSERT INTO `round_rep` (`sno`, `cid`, `cname`, `rname`, `category`, `date`, `month`, `year`, `ns`) VALUES
(1, '12', 'TCS Consultancies', 'abc', 'Coding', '1', '1', '1983', '5'),
(2, '12', 'TCS Consultancies', 'xyz', 'Written', '1', '1', '1983', '3'),
(3, '12', 'TCS Consultancies', 'abc', 'Written', '1', '1', '1983', '2'),
(4, '1', 'Amazon', 'MR', 'Interview', '12', '9', '2012', '67'),
(5, '1', 'Amazon', 'HR', 'Interview', '12', '9', '2012', '56'),
(6, '11', '', 'abc', 'Interview', '1', '1', '1980', '3'),
(7, '11', '', 'xyz', 'Coding', '1', '1', '2013', '2');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `faname` varchar(40) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `date` varchar(2) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(5) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `hno` varchar(7) NOT NULL,
  `bn` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `cno` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `fname`, `lname`, `faname`, `rollno`, `date`, `month`, `year`, `gender`, `hno`, `bn`, `city`, `state`, `pin`, `cno`, `email`, `usn`, `pwd`) VALUES
(1, 'Aishwarya', 'Pandey', 'Mr.Rajesh Pandey', '1214331010', '30', '4', '1994', 'female', '34', 'Rail Vihar', 'Gorakhpur', 'UP', 'null', '9876543211', 'aish@gmail.com', 'aishwarya', 'aish123');

-- --------------------------------------------------------

--
-- Table structure for table `stu_academic`
--

CREATE TABLE IF NOT EXISTS `stu_academic` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(6) NOT NULL,
  `branch` varchar(2) NOT NULL,
  `year` varchar(1) NOT NULL,
  `p10` varchar(5) NOT NULL,
  `p12` varchar(5) NOT NULL,
  `pbtech` varchar(5) NOT NULL,
  `b1` varchar(1) NOT NULL,
  `b2` varchar(1) NOT NULL,
  `b3` varchar(1) NOT NULL,
  `b4` varchar(1) NOT NULL,
  `b5` varchar(1) NOT NULL,
  `b6` varchar(1) NOT NULL,
  `b7` varchar(1) NOT NULL,
  `b8` varchar(1) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stu_academic`
--

INSERT INTO `stu_academic` (`sid`, `course`, `branch`, `year`, `p10`, `p12`, `pbtech`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `b7`, `b8`) VALUES
(1, 'BTech', 'EC', '4', '91', '88', '75', '0', '0', '0', '0', '0', '0', '0', '0'),
(2, 'MTech', 'EC', '2', '78', '56', '67', '0', '0', '0', '0', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
