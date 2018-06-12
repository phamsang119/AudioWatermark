-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 11:42 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audio`
--

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `song` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `multimedia`
--

INSERT INTO `multimedia` (`id`, `parentid`, `song`, `singer`, `url`, `type`, `owner`) VALUES
('10RJEFFCAjY0pv7TnvNjK5G1ni066Kktb', '10RJEFFCAjY0pv7TnvNjK5G1ni066Kktb', 'La La La', 'Sam Smith', 'https://drive.google.com/file/d/10RJEFFCAjY0pv7TnvNjK5G1ni066Kktb/view?usp=sharing', 'music', 'administrator'),
('16kiRxx3YCtINq8qVXzl_UVlxYeuqB99s', '10RJEFFCAjY0pv7TnvNjK5G1ni066Kktb', 'La La La', 'Sam Smith', 'https://drive.google.com/file/d/16kiRxx3YCtINq8qVXzl_UVlxYeuqB99s/view?usp=sharing', 'music', 'sang111'),
('1KKwnm3XXGbbRVshhaXXg2vZiZoI1f8MS', '1T8Ebyl3vblZPA3xmXoE9YV0PFInMz8qk', 'Ben ay ben nay', 'Dan Truong', 'https://drive.google.com/file/d/1KKwnm3XXGbbRVshhaXXg2vZiZoI1f8MS/view?usp=sharing', 'music', 'test001'),
('1T8Ebyl3vblZPA3xmXoE9YV0PFInMz8qk', '1T8Ebyl3vblZPA3xmXoE9YV0PFInMz8qk', 'Ben ay ben nay', 'Dan Truong', 'https://drive.google.com/file/d/1T8Ebyl3vblZPA3xmXoE9YV0PFInMz8qk/view?usp=sharing', 'music', 'administrator'),
('1thELs57oCkeScjby-Pg10jKsv0kgNaE9', '1T8Ebyl3vblZPA3xmXoE9YV0PFInMz8qk', 'Ben ay ben nay', 'Dan Truong', 'https://drive.google.com/file/d/1thELs57oCkeScjby-Pg10jKsv0kgNaE9/view?usp=sharing', 'music', 'sang123'),
('1ytfQKTfANu4AcAtosN-vxsd9VU-OXD0l', '1ytfQKTfANu4AcAtosN-vxsd9VU-OXD0l', 'demo wav music', 'sang pham', 'https://drive.google.com/file/d/1ytfQKTfANu4AcAtosN-vxsd9VU-OXD0l/view?usp=sharing', 'music', 'administrator'),
('logo', 'logo', NULL, NULL, 'http://localhost:81/audio/picture/logo.png', 'picture', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `multimediatype`
--

CREATE TABLE `multimediatype` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `multimediatype`
--

INSERT INTO `multimediatype` (`id`) VALUES
('music'),
('picture'),
('video');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`) VALUES
('admin'),
('user');

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE `siteinfo` (
  `companyname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seokeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seodescription` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `copyright_ln2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siteinfo`
--

INSERT INTO `siteinfo` (`companyname`, `slogan`, `seokeywords`, `seodescription`, `facebook`, `logo`, `copyright`, `copyright_ln2`) VALUES
('Audio Watermark Demo', 'Pham Ba Sang', 'audio, watermark, demo', 'Audio Watermark Demo', 'https://www.facebook.com/phambasang119', 'logo', '{companyname} © 2018', 'From Ho Chi Minh city with <span id=\"heart\">❤</span>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `permission`) VALUES
('administrator', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'admin'),
('sang1', '104b9debd961c901985838f4d4533e9f64891279', 'user'),
('sang111', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'user'),
('sang123', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'user'),
('test001', '929d3ba22d02b494dd0971784a3700c3dbf1d89f', 'user'),
('test123', 'c6922b6ba9e0939583f973bc1682493351ad4fe8', 'user'),
('tester', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `multimediatype`
--
ALTER TABLE `multimediatype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`companyname`),
  ADD KEY `logo` (`logo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission` (`permission`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`type`) REFERENCES `multimediatype` (`id`),
  ADD CONSTRAINT `multimedia_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `user` (`id`);

--
-- Constraints for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD CONSTRAINT `siteinfo_ibfk_1` FOREIGN KEY (`logo`) REFERENCES `multimedia` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`permission`) REFERENCES `permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
