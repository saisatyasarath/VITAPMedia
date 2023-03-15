-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 07:45 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendedquiz`
--

CREATE TABLE `attendedquiz` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendedquiz`
--

INSERT INTO `attendedquiz` (`id`, `uid`, `quizid`, `score`) VALUES
(2, 8, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `chat_login_details`
--

CREATE TABLE `chat_login_details` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_typing` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_login_details`
--

INSERT INTO `chat_login_details` (`id`, `userid`, `last_activity`, `is_typing`) VALUES
(1, 8, '2021-06-03 06:41:48', 'yes'),
(2, 11, '2021-06-04 16:58:50', 'no'),
(3, 8, '2021-06-05 17:47:35', 'yes'),
(4, 11, '2021-06-05 17:48:46', 'no'),
(5, 11, '2021-06-06 06:07:48', 'yes'),
(6, 21, '2021-06-09 11:48:48', 'no'),
(7, 21, '2021-06-09 15:41:50', 'no'),
(8, 8, '2021-06-11 07:41:56', 'no'),
(9, 21, '2021-06-11 07:47:10', 'no'),
(10, 8, '2021-06-11 07:48:35', 'no'),
(11, 21, '2021-06-11 09:31:23', 'no'),
(12, 8, '2021-06-11 11:02:52', 'no'),
(13, 21, '2021-06-12 06:16:48', 'no'),
(14, 8, '2021-06-12 13:18:47', 'no'),
(15, 11, '2021-06-15 14:02:04', 'no'),
(16, 8, '2021-06-15 14:03:20', 'no'),
(17, 8, '2021-06-15 18:42:13', 'no'),
(18, 11, '2021-06-16 04:08:50', 'no'),
(19, 8, '2021-06-16 10:21:42', 'no'),
(20, 21, '2021-06-16 10:25:09', 'no'),
(21, 11, '2021-06-16 11:08:40', 'no'),
(22, 21, '2021-06-16 11:23:49', 'no'),
(23, 11, '2021-06-16 12:48:28', 'no'),
(24, 21, '2021-06-16 13:13:37', 'no'),
(25, 8, '2021-06-18 16:55:33', 'no'),
(26, 8, '2021-06-19 07:19:43', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `clubadmins`
--

CREATE TABLE `clubadmins` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubadmins`
--

INSERT INTO `clubadmins` (`id`, `clid`, `uid`) VALUES
(11, 2, 8),
(12, 3, 8),
(13, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `clubhead`
--

CREATE TABLE `clubhead` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clubmembers`
--

CREATE TABLE `clubmembers` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubmembers`
--

INSERT INTO `clubmembers` (`id`, `clid`, `uid`) VALUES
(2, 2, 8),
(3, 2, 11),
(4, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `clubposts`
--

CREATE TABLE `clubposts` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubposts`
--

INSERT INTO `clubposts` (`id`, `clid`, `description`, `image`, `created_at`) VALUES
(1, 2, 'First Post For Android', 'upload/2021_06_15 16_59_01pm 8 Android-app-development.jpg', '1623769141');

-- --------------------------------------------------------

--
-- Table structure for table `clubquiz`
--

CREATE TABLE `clubquiz` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `qdes` varchar(100) NOT NULL,
  `noq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubquiz`
--

INSERT INTO `clubquiz` (`id`, `clid`, `qdes`, `noq`) VALUES
(1, 2, 'First Quiz', 2),
(2, 2, 'Testing', 2);

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `clname` varchar(50) NOT NULL,
  `cldes` varchar(50) NOT NULL,
  `profile_picture` varchar(500) NOT NULL,
  `cover_picture` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `clname`, `cldes`, `profile_picture`, `cover_picture`) VALUES
(2, 'Android Club', 'Regarding Android Projects', 'upload/2021_06_15 06_52_30am 21pAndroid-app-development.jpg', 'upload/2021_06_15 06_52_30am 21cAndroid-app-development.jpg'),
(3, 'Null chapter', 'Security', 'upload/2021_06_15 09_09_33am 21pnull.png', 'upload/2021_06_15 09_09_33am 21cnull.png'),
(4, 'Google Developers', 'Regarding google events', 'upload/2021_06_16 12_49_46pm 21pdownload (4).jfif', 'upload/2021_06_16 12_49_46pm 21cdownload.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentid`, `uid`, `pid`, `description`) VALUES
(1, 8, 14, 'Hey'),
(2, 8, 14, 'This is sarath'),
(3, 12, 14, 'heyy this is meghana'),
(4, 8, 14, 'woww'),
(5, 8, 14, 'Checking'),
(6, 8, 14, 'checking'),
(7, 8, 13, 'Haha'),
(8, 8, 13, 'What?'),
(9, 8, 13, ''),
(10, 8, 12, 'Hey hey'),
(11, 12, 12, 'Hii chintu annayya'),
(12, 8, 14, 'Haha'),
(13, 12, 14, 'Don\'t laugh'),
(14, 8, 14, 'OK OK'),
(15, 12, 14, 'Yup'),
(16, 8, 15, 'Haha'),
(17, 8, 12, 'haha'),
(18, 8, 27, 'Hii everyone'),
(19, 20, 27, 'Hii'),
(20, 11, 26, 'man i love this!!'),
(21, 8, 24, 'WOWW man'),
(22, 8, 24, 'Heerooo'),
(23, 8, 24, 'Superr satyaNarayana'),
(24, 8, 24, 'ahaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `commentsclub`
--

CREATE TABLE `commentsclub` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentsclub`
--

INSERT INTO `commentsclub` (`id`, `pid`, `uid`, `description`) VALUES
(1, 1, 8, 'Yup!!');

-- --------------------------------------------------------

--
-- Table structure for table `commentsevent`
--

CREATE TABLE `commentsevent` (
  `ecid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentsevent`
--

INSERT INTO `commentsevent` (`ecid`, `eid`, `uid`, `description`) VALUES
(3, 9, 8, 'haha');

-- --------------------------------------------------------

--
-- Table structure for table `commentsfound`
--

CREATE TABLE `commentsfound` (
  `commentid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentsfound`
--

INSERT INTO `commentsfound` (`commentid`, `uid`, `pid`, `description`) VALUES
(0, 12, 1, 'Testing'),
(0, 8, 6, 'Its mine');

-- --------------------------------------------------------

--
-- Table structure for table `commentslost`
--

CREATE TABLE `commentslost` (
  `commentid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentslost`
--

INSERT INTO `commentslost` (`commentid`, `uid`, `pid`, `description`) VALUES
(0, 8, 7, 'I havent found it yet!!'),
(0, 8, 7, 'Anyone respond'),
(0, 12, 10, 'I found it!!'),
(0, 11, 11, 'I saw a bag near steps few minutes back!!'),
(0, 8, 16, 'I found this at AB1 library');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eid` int(11) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(250) NOT NULL,
  `type` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eid`, `ename`, `venue`, `time`, `image`, `type`, `amount`, `area`) VALUES
(8, 'Stand Up Comedy', 'Venue : AB1', '2021-06-12 07:09:16', 'upload/2021_06_11 12_40_26pm 21 download (3).jfif', 'paid', 5000, 'stand up comedy'),
(9, 'Guest Lecture on ML', 'AB1', '2021-06-12 07:09:37', 'upload/2021_06_11 17_22_16pm 21 download (2).jfif', 'free', 0, 'Machine Learning Technology'),
(10, 'Android Development', 'Venue : AB2', '2021-06-12 07:10:00', 'upload/2021_06_12 08_18_16am 21 Android-app-development.jpg', 'paid', 5000, 'Android Development Technology'),
(11, 'Web Technologies', 'Venue : AB3', '2021-06-12 08:11:17', 'upload/2021_06_12 09_46_50am 21 Android-app-development.jpg', 'paid', 2000, 'Web Technologies'),
(12, 'ML workshop', 'Venue : Auditorium. AB1 ', '2021-06-30 09:30:00', 'upload/2021_06_16 12_27_43pm 21 download (2).jfif', 'paid', 5000, ''),
(13, 'Guest Lecture On industry ', 'Venue : Amphie Theatre, AB2', '2021-06-28 10:30:00', 'upload/2021_06_16 12_31_09pm 21 son-black-back-androidoyunclub.png', 'free', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackreview`
--

CREATE TABLE `feedbackreview` (
  `id` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackreview`
--

INSERT INTO `feedbackreview` (`id`, `eid`, `uid`, `type`, `description`) VALUES
(2, 8, 8, 'not bad', 'well..');

-- --------------------------------------------------------

--
-- Table structure for table `found`
--

CREATE TABLE `found` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `found`
--

INSERT INTO `found` (`id`, `uid`, `name`, `description`, `image`, `created_at`) VALUES
(3, 15, 'bag', 'I found this bag. Contact me', 'upload/2021_05_26 09_41_32am 15 download.jfif', '1622014892'),
(4, 15, 'water bottle', 'If this is anyone\'s bottle..Contact me.', 'upload/2021_05_26 09_42_18am 15 download (1).jfif', '1622014938'),
(6, 8, 'anaonyous', 'I found something', 'Hello', ''),
(7, 8, 'Bag', 'I found this near AB1', 'upload/2021_06_19 09_33_05am 8 download.jfif', '1624087985');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user1`, `user2`) VALUES
(1, 8, 11),
(2, 11, 10),
(3, 11, 14),
(4, 14, 15),
(5, 11, 15),
(6, 11, 12),
(7, 14, 12),
(8, 15, 12),
(9, 11, 13),
(10, 12, 13),
(11, 14, 13),
(12, 15, 13),
(13, 12, 8),
(14, 14, 8),
(16, 15, 8),
(17, 16, 15),
(18, 16, 8),
(19, 18, 8),
(20, 12, 10),
(21, 14, 10),
(22, 15, 10),
(23, 16, 10),
(24, 10, 8),
(26, 16, 12),
(28, 20, 10),
(29, 20, 12),
(30, 20, 15),
(31, 20, 11),
(32, 20, 8);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `sender`, `receiver`) VALUES
(14, 11, 5),
(34, 16, 11),
(37, 16, 14),
(38, 16, 13),
(40, 17, 10),
(41, 17, 11),
(42, 17, 8),
(43, 17, 12),
(44, 17, 15),
(45, 17, 14),
(46, 17, 13),
(47, 17, 16),
(49, 18, 11),
(50, 18, 10),
(51, 18, 12),
(52, 18, 14),
(57, 8, 13),
(61, 20, 19);

-- --------------------------------------------------------

--
-- Table structure for table `likeclubs`
--

CREATE TABLE `likeclubs` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likeclubs`
--

INSERT INTO `likeclubs` (`id`, `pid`, `uid`) VALUES
(7, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `likeevents`
--

CREATE TABLE `likeevents` (
  `elid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likeevents`
--

INSERT INTO `likeevents` (`elid`, `eid`, `uid`) VALUES
(2, 10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `likefounds`
--

CREATE TABLE `likefounds` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likefounds`
--

INSERT INTO `likefounds` (`lid`, `pid`, `uid`) VALUES
(0, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `likelosts`
--

CREATE TABLE `likelosts` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likelosts`
--

INSERT INTO `likelosts` (`lid`, `pid`, `uid`) VALUES
(0, 9, 11),
(0, 7, 11),
(0, 10, 11),
(0, 10, 12),
(0, 9, 12),
(0, 7, 12),
(0, 11, 12),
(0, 11, 11),
(0, 11, 8),
(0, 10, 8),
(0, 9, 8),
(0, 7, 8),
(0, 9, 15),
(0, 15, 8),
(0, 9, 8),
(0, 9, 8),
(0, 9, 8),
(0, 9, 8),
(0, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `likeposts`
--

CREATE TABLE `likeposts` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likeposts`
--

INSERT INTO `likeposts` (`lid`, `pid`, `uid`) VALUES
(130, 13, 12),
(132, 16, 12),
(140, 14, 8),
(146, 12, 8),
(149, 17, 8),
(151, 18, 8),
(153, 19, 8),
(154, 13, 8),
(155, 15, 8),
(156, 20, 20),
(159, 27, 20),
(160, 13, 11),
(161, 26, 11);

-- --------------------------------------------------------

--
-- Table structure for table `lost`
--

CREATE TABLE `lost` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(600) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lost`
--

INSERT INTO `lost` (`id`, `uid`, `name`, `description`, `image`, `created_at`) VALUES
(7, 8, 'id card', 'I lost my id card.. If anyone finds it inform me', 'Hello', ''),
(10, 11, 'watch', 'I lost my watch in the ground,If anyone finds please inform me.', 'upload/2021_05_25 17_25_06pm 11 thumb.jfif', '1621956306'),
(11, 12, 'bag', 'I lost my bag. I forgot it near library.', 'Hello', ''),
(14, 15, 'ring', 'I lost this ring', 'upload/2021_05_26 09_40_25am 15 images.jfif', '1622014825'),
(15, 8, 'gold chain', 'I lost this gold Chain', 'upload/2021_05_26 12_11_13pm 8 Darcey-Gold-Chain.jpg', '1622023873'),
(16, 8, 'bag', 'I lost my bag near ground.If anyone finds it please inform', 'upload/2021_05_26 14_20_54pm 8 download.jfif', '1622031654');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(11) NOT NULL,
  `outgoing_msg_id` int(11) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `status`) VALUES
(1, 20, 8, 'Haii', 0),
(2, 18, 8, 'gorre', 0),
(3, 19, 8, 'heyy', 0),
(4, 8, 20, 'hello', 0),
(5, 18, 20, 'ehwt', 0),
(6, 20, 8, 'haha', 0),
(7, 19, 8, 'hmm', 0),
(8, 19, 8, 'haha', 0),
(9, 13, 8, 'whbdkwhe', 0),
(10, 11, 8, 'Horre', 0),
(11, 11, 8, 'huhu', 0),
(12, 8, 11, 'kyaa man', 0),
(13, 8, 11, 'ent idi', 0),
(14, 8, 11, 'done it!!!!!', 0),
(15, 11, 8, 'hower', 0),
(16, 8, 11, 'areyy', 0),
(17, 11, 8, 'kya beyy', 0),
(18, 8, 11, 'wowww', 0),
(19, 11, 8, 'huhu', 0),
(20, 11, 8, 'wow', 0),
(21, 8, 11, 'aree', 0),
(22, 8, 11, 'kyaa', 0),
(23, 8, 11, 'wah', 0),
(24, 11, 8, 'heyman', 0),
(25, 11, 8, 'check', 0),
(26, 8, 11, 'checking', 0),
(27, 11, 8, 'kya cjwfj', 0),
(28, 8, 11, 'hii', 0),
(29, 8, 11, 'wqahhh', 0),
(30, 8, 11, 'haha', 0),
(31, 11, 8, 'test', 0),
(32, 11, 8, 'test2', 0),
(33, 8, 11, 'mere', 0),
(34, 8, 11, 'hehe', 0),
(35, 8, 11, 'reyyy', 0),
(36, 12, 8, 'heyyy', 0),
(37, 12, 8, 'hii meghana', 0),
(38, 11, 8, 'h2', 0),
(39, 14, 8, 'hii keerthi', 0),
(40, 17, 8, 'hey is this you ganesh from C3', 0),
(41, 10, 8, 'Hii heyy', 0),
(42, 20, 8, 'hoo', 0),
(43, 11, 8, 'what rey??', 0),
(44, 8, 11, 'haha', 0),
(45, 8, 11, 'Had Lunch', 0),
(46, 8, 11, '??', 0),
(47, 11, 8, 'Yes u??', 0),
(48, 11, 8, 'haha', 0),
(49, 11, 8, 'hii', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`) VALUES
(12, '8', 'upload/chintu.jpg', 'She proposed me today!!!!', '1616654338'),
(13, '11', 'upload/santhan.PNG', 'Hi , I am Santhan and a topper', '1620643103'),
(14, '15', 'upload/var.PNG', 'I am god and Devil', '1620976744'),
(15, '12', 'upload/387645.jpg', 'I love nature', '1620977119'),
(16, '13', 'upload/OkeluY.jpg', 'Its raining!!!', '1620977312'),
(17, '8', 'Hello', 'Hii, I am sarath', '1621969366'),
(18, '8', 'upload/2021_05_25 21_05_02pm 8 kishore.PNG', 'Just for fun', '1621969502'),
(19, '8', 'upload/2021_05_26 06_25_10am 8 WIN_20210526_09_48_30_Pro.jpg', 'Heyyy, My new pic!!', '1622003110'),
(20, '20', 'Hello', 'Hi friends, I just joined this mediaa...', '1622013767'),
(21, '11', 'upload/2021_05_26 09_46_57am 11 OkeluY.jpg', 'Heyy, Just wanted to share that I got this..', '1622015217'),
(22, '8', 'upload/2021_05_26 10_24_07am 8 krish.PNG', 'with MOM', '1622017447'),
(24, '8', 'upload/2021_05_26 10_27_15am 8 64405508_467673843995285_3067242068280606720_n.jpg', 'Heyyyy', '1622017635'),
(25, '20', 'upload/2021_05_26 12_38_36pm 20 sarath.jpg', 'good evening', '1622025516'),
(26, '21', 'upload/2021_06_10 10_58_10am 21 google.PNG', 'google', '1623315490');

-- --------------------------------------------------------

--
-- Table structure for table `quizques`
--

CREATE TABLE `quizques` (
  `id` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  `optiona` varchar(50) NOT NULL,
  `optionb` varchar(50) NOT NULL,
  `optionc` varchar(50) NOT NULL,
  `optiond` varchar(50) NOT NULL,
  `correct` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizques`
--

INSERT INTO `quizques` (`id`, `quizid`, `question`, `optiona`, `optionb`, `optionc`, `optiond`, `correct`) VALUES
(1, 1, 'Android OS is developed by', 'google', 'optb', 'optc', 'optd', 'a'),
(2, 1, 'Is Android OS Free?', 'No', 'optb', 'optc', 'optd', 'b'),
(3, 2, 'test', 'a', 'b', 'c', 'd', 'a'),
(4, 2, 'test1', 'a1', 'b1', 'c1', 'd1', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `registerevents`
--

CREATE TABLE `registerevents` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `eid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerevents`
--

INSERT INTO `registerevents` (`id`, `uid`, `eid`) VALUES
(2, 8, 8),
(5, 8, 9),
(6, 8, 12);

-- --------------------------------------------------------

--
-- Table structure for table `saveposts`
--

CREATE TABLE `saveposts` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saveposts`
--

INSERT INTO `saveposts` (`id`, `uid`, `pid`) VALUES
(4, 8, 13),
(6, 8, 21),
(7, 11, 26);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `branch` varchar(40) NOT NULL DEFAULT 'CSE',
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `cover_picture` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Offline now',
  `current_session` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `birthday`, `gender`, `number`, `branch`, `email`, `password`, `profile_picture`, `cover_picture`, `status`, `current_session`) VALUES
(8, 'SatyaNarayana', 'Gudimetla', 'sarath143', '23/10/1999', 'Male', '8790360069', 'CSE', 'sarathchandhra365@gmail.com', '$2y$10$ft04szMy1dNSiX4TbjQt3uNNnePembCpZ2Bry5TPauiTMJZklUjHa', 'upload/2021_05_20 10_12_41am 8 IMG_20210512_154856.jpg', 'upload/  8 Screenshot (113).png', 'Active now', 11),
(10, 'banti', 'karri', 'banti', '23/10/1999', 'Male', '7903600691', 'MECH', 'banti@gmail.com', '$2y$10$O8kwJ61lSX6GRP1XxdjZRe776GavPJIaZAkJg3sF.qE1LwaDqDOyS', 'upload/OkeluY.jpg', '', 'Offline now', 0),
(11, 'Santhan', 'Edara', 'santhan', '24/03/1999', 'Male', '7674967510', 'ECE', 'edarasanthan.1999@gmail.com', '$2y$10$W2UPyzjRhFcD6tNCjJ.pduUp//M.va6QBJU5XOzrw/5UIjFJB4B7e', 'upload/santhan.PNG', 'upload/  11 andromeda-galaxy-wallpaper-hd-02.jpg', 'Active now', 8),
(12, 'Meghana', 'Karri', 'meghana', '21/10/2002', 'Female', '9585647563', 'CSE', 'meghana@gmail.com', '$2y$10$HaFCQx/SKPWcb2ErbpgmduwccEWTTRsSzaYo4fTYy7/tYw2htuW7S', 'upload/2021_05_14 09_24_49am 12 megha.PNG', 'upload/  12 387645.jpg', 'Offline now', 0),
(13, 'krishnaveni', 'gudimetla', 'krishve', '14/06/1880', 'Female', '9704503658', 'CIVIL', 'gkvreddy3658@gmail.com', '$2y$10$ab.ZsfnO1ANuLscrrqAD2uGCYbBpLoToy/5mXuLvpM.pjUBIY9h2q', 'upload/2021_05_14 09_27_42am 13 krish.PNG', 'upload/  13 OkeluY.jpg', 'Offline now', 0),
(14, 'Keerthana', 'Achalla', 'keerthi', '08/10/1999', 'Female', '8790857001', 'CSE', 'keerthicherry999@gmail.com', '$2y$10$7t7K7xRChB9f2O/w4f0AdumGfzDGjdjgbaHufM3YatnkkoK5s57gi', 'upload/2021_05_14 08_44_27am 14 keer.PNG', 'upload/  14   8 Screenshot (113).png', 'Offline now', 0),
(15, 'Varshith', 'Gummadi', 'varsit', '04/06/1999', 'Male', '4561237895', 'MECH', 'varshithgummadi10@gmail.com', '$2y$10$eg.xZ4HFFxiB1nemwtZFBehdDpmBmGULIx2KIwBQUrosr.lWaJHkS', 'upload/2021_05_14 09_18_29am 15 var.PNG', 'upload/  15 HD-Galaxy-Wallpapers-Free-Download-115.jpg', 'Offline now', 0),
(17, 'ganesh', 'perumalla', 'gannu', '04/06/1999', 'Male', '8795641235', 'MECH', 'pthushara2001@gmail.com', '$2y$10$EDgzP1yAcNWOSbIpwqokQOY4DutPmLW7RZAQpQhtgCanJfzX0AL1a', 'upload/2021_05_21 19_16_54pm 17 ganesh.PNG', 'upload/  17 HD-Galaxy-Wallpapers-Free-Download-115.jpg', 'Offline now', 0),
(19, 'thanu', 'thamanampudi', 'thanu', '04/09/2004', 'Female', '1234567890', 'CIVIL', 'thanu@gmail.com', '$2y$10$/g3U4QBC6v0ojSz6.mStR.q5i3wl/iAvdqiQy12OX..Vs9KdgDHfO', 'upload/2021_05_23 17_31_52pm 19 bg12.jpg', 'upload/  19 andromeda-galaxy-wallpaper-hd-02.jpg', 'Offline now', 0),
(20, 'Sai ', 'Reddy', 'sai', '24/10/1999', 'Male', '9542008445', 'CSE', 'scssreddy.gudimetla@vitap.ac.in', '$2y$10$Y.kxtCw60eG0v6n/sDe8neHaGff4fYshYu8Qm9mQ5MsMDzF8klJpO', 'upload/2021_05_26 09_22_23am 20 sarath.jpg', 'upload/2021_05_26 09_22_13am 20 pexels-photo-949587.jpeg', 'Active now', 0),
(21, 'admin', 'vit', 'admin', '24/03/1990', 'Male', '9550231456', 'admin', 'admin@gmail.com', '$2y$10$AzTWKSa6DzlVFyBGVvD1guuGcIby7eLWZnWGgqg.ZRWZDRUsov6fu', 'upload/2021_06_09 13_51_38pm 21 1560490484phpKCCEDD.jpeg', 'upload/2021_06_09 13_51_28pm 21 1560490484phpKCCEDD.jpeg', 'Active now', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voteclubuser`
--

CREATE TABLE `voteclubuser` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voteclubuser`
--

INSERT INTO `voteclubuser` (`id`, `clid`, `uid`, `nid`) VALUES
(1, 2, 8, 8),
(2, 2, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `votingclub`
--

CREATE TABLE `votingclub` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votingclub`
--

INSERT INTO `votingclub` (`id`, `clid`, `uid`) VALUES
(9, 2, 8),
(10, 2, 10),
(11, 4, 8),
(12, 4, 10),
(13, 4, 12),
(14, 3, 8),
(15, 3, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendedquiz`
--
ALTER TABLE `attendedquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_login_details`
--
ALTER TABLE `chat_login_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubadmins`
--
ALTER TABLE `clubadmins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubhead`
--
ALTER TABLE `clubhead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubmembers`
--
ALTER TABLE `clubmembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubposts`
--
ALTER TABLE `clubposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubquiz`
--
ALTER TABLE `clubquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `commentsclub`
--
ALTER TABLE `commentsclub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentsevent`
--
ALTER TABLE `commentsevent`
  ADD PRIMARY KEY (`ecid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `feedbackreview`
--
ALTER TABLE `feedbackreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `found`
--
ALTER TABLE `found`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likeclubs`
--
ALTER TABLE `likeclubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likeevents`
--
ALTER TABLE `likeevents`
  ADD PRIMARY KEY (`elid`);

--
-- Indexes for table `likeposts`
--
ALTER TABLE `likeposts`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `lost`
--
ALTER TABLE `lost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `quizques`
--
ALTER TABLE `quizques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerevents`
--
ALTER TABLE `registerevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saveposts`
--
ALTER TABLE `saveposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `voteclubuser`
--
ALTER TABLE `voteclubuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votingclub`
--
ALTER TABLE `votingclub`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendedquiz`
--
ALTER TABLE `attendedquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_login_details`
--
ALTER TABLE `chat_login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `clubadmins`
--
ALTER TABLE `clubadmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clubhead`
--
ALTER TABLE `clubhead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clubmembers`
--
ALTER TABLE `clubmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clubposts`
--
ALTER TABLE `clubposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clubquiz`
--
ALTER TABLE `clubquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `commentsclub`
--
ALTER TABLE `commentsclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commentsevent`
--
ALTER TABLE `commentsevent`
  MODIFY `ecid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feedbackreview`
--
ALTER TABLE `feedbackreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `found`
--
ALTER TABLE `found`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `likeclubs`
--
ALTER TABLE `likeclubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `likeevents`
--
ALTER TABLE `likeevents`
  MODIFY `elid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likeposts`
--
ALTER TABLE `likeposts`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `lost`
--
ALTER TABLE `lost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `quizques`
--
ALTER TABLE `quizques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registerevents`
--
ALTER TABLE `registerevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saveposts`
--
ALTER TABLE `saveposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `voteclubuser`
--
ALTER TABLE `voteclubuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `votingclub`
--
ALTER TABLE `votingclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
