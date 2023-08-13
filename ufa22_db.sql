-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 05:08 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ub88_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `phone` longtext NOT NULL,
  `alert` int(11) NOT NULL,
  `ipaddress` varchar(200) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `category`, `phone`, `alert`, `ipaddress`, `status`) VALUES
(1, 'adminub88', 'ub882021', 'ผู้ดูแลADMIN,สมาชิกUFA,ลูกค้าแจ้งถอน,ตั้งค่าระบบฝาก,ตั้งค่าเว็บไซต์,สถานะของระบบ,รายการฝากเงิน,รายการถอนเงิน,รายการฝากไม่สำเร็จ,ตั้งค่าโปรโมชั่น,', 'd', 0, '', 1),
(12, 'sack', '1234', 'ผู้ดูแลADMIN,สมาชิกUFA,รายการถอนเงิน,ลูกค้าแจ้งถอน,รายการฝากไม่สำเร็จ,รายการฝากเงิน,วิธีใช้งาน,', '1', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bankkma_info`
--

CREATE TABLE `bankkma_info` (
  `id` int(11) NOT NULL,
  `logo_scb` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `m_deposit` varchar(200) NOT NULL,
  `m_withdraw` varchar(200) NOT NULL,
  `maximum_withdraw` varchar(200) NOT NULL,
  `total_withdraw` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bankkma_info`
--

INSERT INTO `bankkma_info` (`id`, `logo_scb`, `number`, `name`, `fname`, `lname`, `m_deposit`, `m_withdraw`, `maximum_withdraw`, `total_withdraw`, `status`) VALUES
(1, 'https://www.img.in.th/images/746578cd45620b5132048ac0e4012273.png', '5292678651', 'ไทยพาณิชย์', 'นัฐฌานนท์', 'อันสุข', '1', '300', '5000000', '999999999999999', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bankktb_info`
--

CREATE TABLE `bankktb_info` (
  `id` int(11) NOT NULL,
  `logo_ktb` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `m_deposit` varchar(200) NOT NULL,
  `m_withdraw` varchar(200) NOT NULL,
  `maximum_withdraw` varchar(200) NOT NULL,
  `total_withdraw` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bankktb_info`
--

INSERT INTO `bankktb_info` (`id`, `logo_ktb`, `number`, `name`, `fname`, `lname`, `m_deposit`, `m_withdraw`, `maximum_withdraw`, `total_withdraw`, `status`) VALUES
(1, 'https://img.kapook.com/u/2015/klangjai/July/week4/KTB_2.jpg', '145574465456', '1', '1', '1', '1', '1', '10', '555', 0);

-- --------------------------------------------------------

--
-- Table structure for table `check_otp`
--

CREATE TABLE `check_otp` (
  `id` int(11) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `server_otp` varchar(200) NOT NULL,
  `time_start` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `check_otp`
--

INSERT INTO `check_otp` (`id`, `phone`, `server_otp`, `time_start`) VALUES
(16276, '0643935844', '567074', '31-08-2021 22:15:21');


-- --------------------------------------------------------

--
-- Table structure for table `history_promotion`
--

CREATE TABLE `history_promotion` (
  `id` int(11) NOT NULL,
  `date_time` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `promotion` varchar(200) NOT NULL,
  `credit` varchar(200) NOT NULL,
  `turnover` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history_promotion`
--

INSERT INTO `history_promotion` (`id`, `date_time`, `phone`, `promotion`, `credit`, `turnover`, `status`) VALUES
(8900, '29/08/2021', '0937232055', 'ไม่รับโปรโมชั่น', '0', '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `history_refill`
--

CREATE TABLE `history_refill` (
  `id` int(11) NOT NULL,
  `deposit` varchar(200) NOT NULL,
  `date_check` varchar(200) NOT NULL,
  `time_check` varchar(200) NOT NULL,
  `fromAccount` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `way` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL DEFAULT 'unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history_refill`
--

INSERT INTO `history_refill` (`id`, `deposit`, `date_check`, `time_check`, `fromAccount`, `info`, `way`, `phone`) VALUES
(2827, '30', '28/08/2021', '22:10:37', '368867', 'กสิกรไทย', '', 'unknown');


-- --------------------------------------------------------

--
-- Table structure for table `img_promotion`
--

CREATE TABLE `img_promotion` (
  `id` int(11) NOT NULL,
  `url_img` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `img_promotion`
--

INSERT INTO `img_promotion` (`id`, `url_img`) VALUES
(1, 'https://www.img.in.th/images/84b7c8774d62538bcc7069d3247478be.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `line_notify`
--

CREATE TABLE `line_notify` (
  `id` int(11) NOT NULL,
  `member_withdraw` varchar(200) NOT NULL,
  `member_deposit` varchar(200) NOT NULL,
  `member_register` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `line_notify`
--

INSERT INTO `line_notify` (`id`, `member_withdraw`, `member_deposit`, `member_register`) VALUES
(1, 'z5MV4kj2tzHK31MQ6XHua38GoVHq7i9TFXyxK4zFC8X', 'z5MV4kj2tzHK31MQ6XHua38GoVHq7i9TFXyxK4zFC8X', 'z5MV4kj2tzHK31MQ6XHua38GoVHq7i9TFXyxK4zFC8X');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `date_check` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `password_ufa` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `bank_number` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `credit` varchar(200) NOT NULL DEFAULT '0',
  `turnover` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `status_promotion` int(11) NOT NULL,
  `ref` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `date_check`, `username`, `password`, `password_ufa`, `fname`, `bank_number`, `bank_name`, `phone`, `credit`, `turnover`, `status`, `status_promotion`, `ref`) VALUES
(4902, '29/08/2021', 'WYOK8n', 'Aa123456', 'aa26196997', 'นายธวัชชัย บุญโสม', '9083135160', 'กรุงไทย', '0937232055', '0.00', '0', 2, 1, '');


-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_deposit` varchar(200) NOT NULL,
  `p_credit` varchar(200) NOT NULL,
  `turnover` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `s_time` varchar(200) NOT NULL,
  `s_date` varchar(200) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `s_status` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`s_id`, `s_name`, `s_time`, `s_date`, `balance`, `s_status`) VALUES
(1, 'SCB', '11:25:03', '04/09/2020', '25407.49', '1'),
(2, 'ufa_agent', '', '', '109715.2', '1'),
(3, 'ktb_balanace', '', '', '898.50', '1'),
(5, 'thsms_credit', '', '', '1032', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tranfer_security`
--

CREATE TABLE `tranfer_security` (
  `id` int(11) NOT NULL,
  `alert` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tranfer_security`
--

INSERT INTO `tranfer_security` (`id`, `alert`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `line_id` varchar(200) NOT NULL,
  `agent_username` varchar(200) NOT NULL,
  `user_thsms` varchar(200) NOT NULL,
  `pass_thsms` varchar(200) NOT NULL,
  `commission` varchar(200) NOT NULL,
  `cookie_ufa` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `logo`, `title`, `keyword`, `name`, `line_id`, `agent_username`, `user_thsms`, `pass_thsms`, `commission`, `cookie_ufa`) VALUES
(1, 'https://www.img.in.th/images/7278a320644878c22474ba02aaba5651.png', 'UB88 ระบบอัตโนมัติ บาคาร่า สล็อต หวย คาสิโน pg xo 918 pussy', 'บาคาร่า,เสือมังกร,คาสิโนออนไลน์,ได้เงินจริง,แอพบาคาร่า,ป็อกเด้ง,สล็อต,เกมส์,', 'ub88', '@ub88v1', 'uf9099', 'touchin1994', '8b5ecc', '1%', 'cookie: __cfduid=d932fb481acc3261844d482e6ed01ee4e1607882843; ASP.NET_SessionId=kayjfty2ru1erfpw5om5zoe2; _ws868admweb_v6_ufqd1d01=; .ASPXAUTH=61CBEC639D753B337F8FCCCBF2E3C8559A796438FC12D99CA5F93E0F863268C0B94A963B670655554E39DC37D8B9879648B3FF7B0E0C5C1B01199F44EE4EA58E0C853CA3C031C09B543C75294B2D46EC66D23D7121FA7DFD9A2951D6F592D3AF57B8409E33A165E9574348CA4D9BD48333C6EAEA');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `time_withdraw` varchar(200) NOT NULL,
  `date_withdraw` varchar(200) NOT NULL,
  `credit` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT '1',
  `bank_number` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `phone`, `time_withdraw`, `date_withdraw`, `credit`, `status`, `bank_number`, `bank_name`, `description`) VALUES
(518, '0929696926', '20:52:42', '29/08/2021', '1', '0', '0961175119', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankkma_info`
--
ALTER TABLE `bankkma_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankktb_info`
--
ALTER TABLE `bankktb_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_otp`
--
ALTER TABLE `check_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_promotion`
--
ALTER TABLE `history_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_refill`
--
ALTER TABLE `history_refill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_promotion`
--
ALTER TABLE `img_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line_notify`
--
ALTER TABLE `line_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bankkma_info`
--
ALTER TABLE `bankkma_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bankktb_info`
--
ALTER TABLE `bankktb_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `check_otp`
--
ALTER TABLE `check_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16757;

--
-- AUTO_INCREMENT for table `history_promotion`
--
ALTER TABLE `history_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9161;

--
-- AUTO_INCREMENT for table `history_refill`
--
ALTER TABLE `history_refill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3900;

--
-- AUTO_INCREMENT for table `img_promotion`
--
ALTER TABLE `img_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `line_notify`
--
ALTER TABLE `line_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5166;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=769;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
