-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2012 at 08:35 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `artifactdb`
--
CREATE DATABASE `artifactdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `artifactdb`;

-- --------------------------------------------------------

--
-- Table structure for table `artifactinfo`
--

CREATE TABLE IF NOT EXISTS `artifactinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `desc` varchar(200) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `artifactinfo`
--

INSERT INTO `artifactinfo` (`id`, `name`, `desc`, `isactive`) VALUES
(1, 'The Orb of Detection', 'The Orb of Detection is the archeologist quest artifact. It is lawful for wishing purposes. Its base item type is a crystal ball.', 1),
(2, 'The Heart of Ahriman', 'The Heart of Ahriman is the barbarian quest artifact. It is neutral for wishing purposes. The Heart of Ahriman is one of the weakest quest artifacts.', 1),
(3, 'The Sceptre of Might', 'The Sceptre of Might is the caveman quest artifact. It is lawful for wishing purposes. Its base item type is a mace. It is also an intelligent artifact, meaning it may blast you.', 1),
(4, 'The Staff of Aesculapius', 'The Staff of Aesculapius is the healer quest artifact. It is neutral for wishing purposes. Its base item type is a quarterstaff.', 1),
(5, 'The Magic Mirror of Merlin', 'The Magic Mirror of Merlin is the knight quest artifact. It is lawful for wishing purposes. Its base item type is a mirror.', 1),
(6, 'The Eyes of the Overworld', 'The Eyes of the Overworld is the monk quest artifact. It is neutral for wishing purposes.', 1),
(7, 'The Mitre of Holiness', 'The Mitre of Holiness is the priest quest artifact. It is lawful for wishing purposes. Its base item type is a helm of brilliance. Like the helm of brilliance, the Mitre of Holiness increases wisdom and intelligence by its enchantment number when worn.', 1),
(8, 'The Longbow of Diana', 'The Longbow of Diana is the ranger quest artifact. It is chaotic for wishing purposes. Its base item type is a bow.', 1),
(9, 'The Master Key of Thievery', 'The Master Key of Thievery is the rogue quest artifact. It is chaotic for wishing purposes. Its base item type is a skeleton key.', 1),
(10, 'The Tsurugi of Muramasa', 'The Tsurugi of Muramasa is the Samurai quest artifact. It is lawful for wishing purposes.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currentsearchparty`
--

CREATE TABLE IF NOT EXISTS `currentsearchparty` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `artifactid` int(10) unsigned NOT NULL DEFAULT '0',
  `artifactlvl` int(10) unsigned NOT NULL DEFAULT '0',
  `progress` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_currentsearchparty_1` (`userid`),
  KEY `FK_currentsearchparty_2` (`artifactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE IF NOT EXISTS `experience` (
  `globallevel` int(3) NOT NULL AUTO_INCREMENT,
  `exp` int(10) NOT NULL,
  PRIMARY KEY (`globallevel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`globallevel`, `exp`) VALUES
(1, 0),
(2, 100),
(3, 500),
(4, 1500),
(5, 2300),
(6, 3500),
(7, 4000),
(8, 4700),
(9, 5000),
(10, 6300),
(11, 7500),
(12, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `gameprofile`
--

CREATE TABLE IF NOT EXISTS `gameprofile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `globallvl` int(10) unsigned NOT NULL DEFAULT '1',
  `spylvl` int(10) unsigned NOT NULL DEFAULT '1',
  `scoutlvl` int(10) unsigned NOT NULL DEFAULT '0',
  `sharelvl` int(10) unsigned NOT NULL DEFAULT '0',
  `buylvl` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_gameprofile_1` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `gameprofile`
--

INSERT INTO `gameprofile` (`id`, `userid`, `gold`, `exp`, `globallvl`, `spylvl`, `scoutlvl`, `sharelvl`, `buylvl`) VALUES
(1, 1, 0, 0, 1, 1, 0, 0, 0),
(2, 2, 0, 0, 1, 1, 0, 0, 0),
(3, 3, 0, 0, 1, 1, 0, 0, 0),
(4, 4, 0, 0, 1, 1, 0, 0, 0),
(5, 5, 0, 0, 1, 1, 0, 0, 0),
(6, 6, 0, 0, 1, 1, 0, 0, 0),
(7, 7, 0, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gameprogress`
--

CREATE TABLE IF NOT EXISTS `gameprogress` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspid` int(10) unsigned NOT NULL DEFAULT '0',
  `friendid` int(10) unsigned DEFAULT '0',
  `progresstypeid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_gameprogress_1` (`friendid`),
  KEY `FK_gameprogress_2` (`cspid`),
  KEY `FK_gameprogress_3` (`progresstypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artifactlevel` int(10) unsigned NOT NULL DEFAULT '0',
  `artifactid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `artifactid` (`artifactid`),
  UNIQUE KEY `artifactid_2` (`artifactid`),
  UNIQUE KEY `artifactid_3` (`artifactid`),
  UNIQUE KEY `artifactid_4` (`artifactid`),
  UNIQUE KEY `artifactid_5` (`artifactid`),
  KEY `FK_inventory_1` (`userid`),
  KEY `FK_inventory_2` (`artifactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `progresstype`
--

CREATE TABLE IF NOT EXISTS `progresstype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `progresstype` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `progresstype`
--

INSERT INTO `progresstype` (`id`, `progresstype`) VALUES
(1, 'Spy'),
(2, 'Scout'),
(3, 'Buy'),
(4, 'Share');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`) VALUES
(1, 'Andy'),
(2, 'Salk'),
(3, 'Peter'),
(4, 'Jones'),
(5, 'Ramire'),
(6, 'Shan'),
(7, 'Gus');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `age` int(10) unsigned NOT NULL DEFAULT '0',
  `politicalview` varchar(45) NOT NULL DEFAULT '',
  `religion` varchar(45) NOT NULL DEFAULT '',
  `language` varchar(45) NOT NULL DEFAULT '',
  `humour` varchar(45) NOT NULL DEFAULT '',
  `country` varchar(45) NOT NULL DEFAULT '',
  `school` varchar(45) NOT NULL DEFAULT '',
  `job` varchar(45) NOT NULL DEFAULT '',
  `favgame` varchar(45) NOT NULL DEFAULT '',
  `imgurl` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userprofile_1` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 4096 kB; (`id`) REFER `artifactdb/user`(`id`)' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`id`, `userid`, `age`, `politicalview`, `religion`, `language`, `humour`, `country`, `school`, `job`, `favgame`, `imgurl`) VALUES
(1, 1, 26, 'Right', 'Christianity', 'English', 'cheeky', 'UK', 'London University', 'Consultant', 'Prince of Persia', 'artifact/resources/images/avatar/Albert-Einstein.jpg'),
(2, 2, 26, 'Neutral', 'Jewish', 'English', 'plain', 'USA', 'MIT', 'Researcher', 'World of Warcraft', 'artifact/resources/images/avatar/Angry-PC-User.gif'),
(3, 3, 27, 'Neutral', 'Agnostic', 'English', 'cheesy', 'UK', 'Leeds University', 'Software Engineer', 'Maple Story', 'artifact/resources/images/avatar/Badass-Cat.jpg'),
(4, 4, 24, 'Left', 'Agnostic', 'English', 'intelligent', 'UK', 'London University', 'Game Developer', 'Defence of the Ancients', 'artifact/resources/images/avatar/cathelmet.jpg'),
(5, 5, 27, 'Left', 'Christianity', 'English', 'intelligent', 'UK', 'Leeds University', 'Specialist', 'Ghost Recon', 'artifact/resources/images/avatar/ba-na-na.gif'),
(6, 6, 25, 'Neutral', 'Hinduism', 'English', 'slapstick', 'India', 'DAV', 'Software Developer', 'Delta Force', 'artifact/resources/images/avatar/disappointed000.gif'),
(7, 7, 26, 'Neutral', 'Christianity', 'English', 'slapstick', 'USA', 'MIT', 'Manager', 'Counter Strike', 'artifact/resources/images/avatar/yoda-dance.gif');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `currentsearchparty`
--
ALTER TABLE `currentsearchparty`
  ADD CONSTRAINT `FK_currentsearchparty_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_currentsearchparty_2` FOREIGN KEY (`artifactid`) REFERENCES `artifactinfo` (`id`);

--
-- Constraints for table `gameprofile`
--
ALTER TABLE `gameprofile`
  ADD CONSTRAINT `FK_gameprofile_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `gameprogress`
--
ALTER TABLE `gameprogress`
  ADD CONSTRAINT `FK_gameprogress_1` FOREIGN KEY (`friendid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_gameprogress_2` FOREIGN KEY (`cspid`) REFERENCES `currentsearchparty` (`id`),
  ADD CONSTRAINT `FK_gameprogress_3` FOREIGN KEY (`progresstypeid`) REFERENCES `progresstype` (`id`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `FK_inventory_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_inventory_2` FOREIGN KEY (`artifactid`) REFERENCES `artifactinfo` (`id`);

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `FK_userprofile_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
