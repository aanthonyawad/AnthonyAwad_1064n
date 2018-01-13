-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2018 at 11:28 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projet_web3`
--

-- --------------------------------------------------------

--
-- Table structure for table `are_friends`
--

CREATE TABLE IF NOT EXISTS `are_friends` (
  `user_ID` int(11) NOT NULL COMMENT 'the logged in pers id',
  `Friend_ID` int(11) NOT NULL COMMENT 'the friend id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `are_friends`
--

INSERT INTO `are_friends` (`user_ID`, `Friend_ID`) VALUES
(1, 2),
(1, 5),
(1, 4),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
  `Chat_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `Class_ID` int(11) NOT NULL,
  `chat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `User_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Pic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Chat_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`Chat_ID`, `User_ID`, `Class_ID`, `chat`, `date`, `User_Name`, `User_Pic`) VALUES
(26, 2, 1, 'hi anthony', '2017-05-17', 'Diana Kanaan', 'shisoura.jpg'),
(27, 1, 1, 'hiiiiiiiii', '2017-05-17', 'Anthony Awad', 'anthony_1.jpg'),
(28, 1, 2, 'anthony 7eke', '2017-05-17', 'Anthony Awad', 'anthony_1.jpg'),
(29, 1, 2, 'anthony 123', '2017-05-17', 'Anthony Awad', 'anthony_1.jpg'),
(30, 1, 2, 'hiiii', '2017-05-18', 'Anthony Awad', 'anthony_1.jpg'),
(31, 1, 1, 'hello', '2017-05-18', 'Anthony Awad', 'anthony_1.jpg'),
(32, 1, 1, 'hi rima kifik', '2017-05-18', 'Anthony Awad', 'anthony_1.jpg'),
(33, 2, 1, 'ana mniha enta kif bro', '2017-05-18', 'Diana Kanaan', 'shisoura.jpg'),
(34, 1, 1, 'hey bro', '2017-05-19', 'Anthony Awad', ''),
(35, 1, 1, 'anthhony', '2017-05-19', 'Anthony Awad', 'anthony_1.jpg'),
(36, 1, 2, 'anthnyo', '2017-05-19', 'Anthony Awad', 'anthony_1.jpg'),
(37, 1, 1, 'adlsfkhdslfhdslgkdshglsdhalhfdsjkghasfhasfkjdhslkjasskjlhgjkdsfhdsjkfdshfds', '2017-05-20', 'Anthony Awad', 'anthony_1.jpg'),
(38, 1, 1, 'fbdskwldskjfbdsfjksfjdskfbdsjbdsfjdsbjhbdshfbdsfjadbfgjhasf sjdf vsjdbfbdsfsfvdsjfgdsjfdsfjdsgjdsgfjsdgjdcgdfjsfgdsjdsbfjsdfgjdbdshjsdfdsjvbdsjhdsfsdbfdhgfhgfhdffdardsghdfdfgsdfsddfdgsggffgdsd', '2017-05-20', 'Anthony Awad', 'anthony_1.jpg'),
(39, 1, 1, 'wqdqwkreksgkdfbgksdfbdskfdsbfksdbfdskfbdskfbdsfkdsbfkdsbfkds', '2017-05-20', 'Anthony Awad', 'anthony_1.jpg'),
(40, 1, 1, 'sdfbdsfksfbdskbsdksdbfkdsfbdskfsfsbfkdfskb     sdfkdsbfkdsbfsdk', '2017-05-20', 'Anthony Awad', 'anthony_1.jpg'),
(41, 2, 1, 'dasfassd', '2017-06-01', 'Diana Kanaan', 'shisoura.jpg'),
(42, 1, 1, 'sdfds', '2017-06-01', 'Anthony Awad', 'anthony_1.jpg'),
(43, 1, 1, 'asaddfsds', '2017-06-06', 'Anthony Awad', 'anthony_1.jpg'),
(44, 1, 2, 'asdsdas', '2017-06-06', 'Anthony Awad', 'anthony_1.jpg'),
(45, 1, 2, 'joe el nigga', '2017-06-06', 'Anthony Awad', 'anthony_1.jpg'),
(46, 1, 2, 'anthony asda', '2017-11-06', 'Anthony Awad', 'anthony_1.jpg'),
(47, 1, 2, 'dasdsa', '2017-11-06', 'Anthony Awad', 'anthony_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_ID` int(11) NOT NULL AUTO_INCREMENT,
  `class_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_Type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_Created` date NOT NULL,
  `class_Teacher_ID` int(11) NOT NULL,
  PRIMARY KEY (`class_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_ID`, `class_Name`, `class_Type`, `date_Created`, `class_Teacher_ID`) VALUES
(1, 'java', 'class', '2000-01-24', 5),
(2, 'web', 'class', '2017-05-14', 4),
(3, 'asda', 'asda', '2017-10-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `domaine`
--

CREATE TABLE IF NOT EXISTS `domaine` (
  `Domaine_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Domaine_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Domaine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `is_in_class`
--

CREATE TABLE IF NOT EXISTS `is_in_class` (
  `Stud_ID` int(11) DEFAULT NULL COMMENT 'student id from user type must be 0 ',
  `Class_Id` int(11) NOT NULL COMMENT 'the class of the student '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `is_in_class`
--

INSERT INTO `is_in_class` (`Stud_ID`, `Class_Id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(3, 2),
(8, 1),
(9, 1),
(13, 3),
(12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `problems_bugs`
--

CREATE TABLE IF NOT EXISTS `problems_bugs` (
  `User_ID` int(11) NOT NULL COMMENT 'from users ',
  `Problem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Problem_Type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solved` int(11) NOT NULL DEFAULT '0' COMMENT '0 if not solved 1 if solved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `problems_bugs`
--

INSERT INTO `problems_bugs` (`User_ID`, `Problem`, `Problem_Type`, `solved`) VALUES
(1, 'test1', '', 0),
(1, 'test1', '', 0),
(1, 'test1', '', 0),
(1, 'test2', 'test2', 0),
(2, 'dianatest', 'dianatest655', 0),
(2, 'test3', 'test3', 0),
(2, 'test3', 'test3', 0),
(2, 'test3', 'test3', 0),
(2, 'test3', 'test3', 0),
(2, 'test44`', 'tesst44', 0),
(2, 'test5', 'tesst5', 0),
(2, 'test5', 'tesst5', 0),
(2, 'test5', 'tesst5', 0),
(2, 'test5', 'tesst5', 0),
(2, 'test5', 'tesst5', 0),
(2, 'jhonny ileh', 'el ilehh jhonny', 0),
(1, 'anthonytest1', 'anthonytest1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'false if inactive true if active',
  `User_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Last` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Pic` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'the extension of the folder in the users/images folder',
  `User_Type` int(1) NOT NULL DEFAULT '0' COMMENT '0 if student 1 if teacher 2 if admin',
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_Mail` (`User_Mail`),
  KEY `User_ID` (`User_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Active`, `User_ID`, `User_Name`, `User_Last`, `User_Mail`, `User_Pass`, `User_Pic`, `User_Type`) VALUES
(1, 1, 'Anthony', 'Awad', 'anthony.awad@isae.edu.lb', 'anthony123', 'anthony_1.jpg', 2),
(1, 2, 'Diana', 'Kanaan', 'diana.kanaan@isae.edu.lb', 'drpascal', 'admin.png', 0),
(1, 3, 'test3', 'test3', 'test3', 'test3', '3.png', 1),
(1, 4, 'test4', 'test4', 'test4', 'test4', '4.png', 1),
(1, 5, 'test5', 'test5', 'test5', 'test5', '4.png', 1),
(1, 6, 'Jad ', 'Najm', 'jad.najm@isae.edu.lb', 'jad123', '', 1),
(1, 7, 'a', 'a', 'a', 'a', '', 1),
(0, 8, 'a', 'a', 'ab', 'a', '', 0),
(0, 9, 'a', 'a', 'aa', 'a', '', 0),
(0, 10, 'a', 'a', 'saa', 'a', '', 0),
(0, 11, 'a', 'a', 'asda', 'a', '', 0),
(1, 12, 'a', 'a', '1231@hotmail.com', 'a', '', 0),
(1, 13, 'anthony', 'awad', 'aanthony.awad@isae.edu.lb', '12345ww', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
